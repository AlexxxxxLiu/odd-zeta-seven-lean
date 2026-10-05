import OddZetaMixed.H158AdaptiveMomentEnvelope
import OddZetaMixed.H158BasisNormalizationRate
import OddZetaMixed.H158Application
import OddZetaMixed.FactorialRate

/-!
# From actual adaptive modulus moments to the analytic determinant rate

The finite product retains the Leibniz factorial and the actual basis
normalization. Only their proved rates and an elementary subquadratic
polynomial prefactor are used. No logarithm of a moment or determinant is
taken, so zero moments and determinants require no exceptional convention.

The final theorems are conditional only on compact off-root phase ceilings
for rational row roots in the proved range. A fixed ceiling slack contributes
twice that slack to the quadratic rate. These theorems do not certify the cells.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Filter Finset Polynomial

/-- A finite moment-product bound retaining a fixed slack in each of the 2*n rows. -/
theorem h158AdaptiveMoment_product_le_slack (n : ℕ)
    (a : Fin (2*n) → Fin 4 → ℚ) (C : ℝ) (hC : 0 < C)
    (M : Fin (2*n) → ℝ) (slack : ℝ)
    (hmoment : ∀ i : Fin (2*n), h158BasisModulusMoment n
      ((h158AdaptiveMonic i.val (h158AdaptiveDelta n) (a i)).comp
        (Polynomial.C ((n : ℚ)⁻¹^2)*X^2)) ≤
      C*(n : ℝ)^41*Real.exp ((n : ℝ)*M i))
    (hsum : ∑ i : Fin (2*n), M i ≤ -8123483*(n : ℝ)/8000+2*(n : ℝ)*slack) :
    (∏ i : Fin (2*n), h158BasisModulusMoment n
      ((h158AdaptiveMonic i.val (h158AdaptiveDelta n) (a i)).comp
        (Polynomial.C ((n : ℚ)⁻¹^2)*X^2))) ≤
      (C*(n : ℝ)^41)^(2*n)*Real.exp ((-(8123483/8000)+2*slack)*(n : ℝ)^2) := by
  have hnR : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hexp : (n : ℝ)*(∑ i : Fin (2*n), M i) ≤
      (-(8123483/8000)+2*slack)*(n : ℝ)^2 := by
    have h := mul_le_mul_of_nonneg_left hsum hnR
    nlinarith
  calc
    _ ≤ ∏ i : Fin (2*n), C*(n : ℝ)^41*Real.exp ((n : ℝ)*M i) :=
      Finset.prod_le_prod₀ (fun i _ => h158BasisModulusMoment_nonneg n _)
        (fun i _ => hmoment i)
    _ = (C*(n : ℝ)^41)^(2*n)*Real.exp ((n : ℝ)*(∑ i : Fin (2*n), M i)) := by
      rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ,
        Fintype.card_fin, ← Real.exp_sum, ← Finset.mul_sum]
    _ ≤ _ := mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr hexp) (by positivity)

/-- The original finite product API is the zero-slack specialization. -/
theorem h158AdaptiveMoment_product_le (n : ℕ)
    (a : Fin (2*n) → Fin 4 → ℚ) (C : ℝ) (hC : 0 < C)
    (M : Fin (2*n) → ℝ)
    (hmoment : ∀ i : Fin (2*n), h158BasisModulusMoment n
      ((h158AdaptiveMonic i.val (h158AdaptiveDelta n) (a i)).comp
        (Polynomial.C ((n : ℚ)⁻¹^2)*X^2)) ≤
      C*(n : ℝ)^41*Real.exp ((n : ℝ)*M i))
    (hsum : ∑ i : Fin (2*n), M i ≤ -8123483*(n : ℝ)/8000) :
    (∏ i : Fin (2*n), h158BasisModulusMoment n
      ((h158AdaptiveMonic i.val (h158AdaptiveDelta n) (a i)).comp
        (Polynomial.C ((n : ℚ)⁻¹^2)*X^2))) ≤
      (C*(n : ℝ)^41)^(2*n)*Real.exp (-(8123483/8000)*(n : ℝ)^2) := by
  simpa only [mul_zero, add_zero] using
    h158AdaptiveMoment_product_le_slack n a C hC M 0 hmoment (by simpa using hsum)

/-- The finite determinant bound before discarding any subquadratic factors. -/
theorem h158AdaptiveMoment_det_abs_le_slack (n : ℕ) (hn : 1 ≤ n)
    (a : Fin (2*n) → Fin 4 → ℚ) (C : ℝ) (hC : 0 < C)
    (M : Fin (2*n) → ℝ) (slack : ℝ)
    (hmoment : ∀ i : Fin (2*n), h158BasisModulusMoment n
      ((h158AdaptiveMonic i.val (h158AdaptiveDelta n) (a i)).comp
        (Polynomial.C ((n : ℚ)⁻¹^2)*X^2)) ≤
      C*(n : ℝ)^41*Real.exp ((n : ℝ)*M i))
    (hsum : ∑ i : Fin (2*n), M i ≤ -8123483*(n : ℝ)/8000+2*(n : ℝ)*slack) :
    |Matrix.det (h158Functional n)| ≤
      ((2*n).factorial : ℝ)*h158BasisNormalization n*
        (C*(n : ℝ)^41)^(2*n)*Real.exp ((-(8123483/8000)+2*slack)*(n : ℝ)^2) := by
  have hnpos : 0 < n := by omega
  have hnorm := (h158BasisNormalization_pos n hnpos).le
  have hdet := h158AdaptiveMonic_det_abs_le_modulusMoments n hnpos a
  change |Matrix.det (h158Functional n)| ≤
    ((2*n).factorial : ℝ)*h158BasisNormalization n*
      (∏ i : Fin (2*n), h158BasisModulusMoment n
        ((h158AdaptiveMonic i.val (h158AdaptiveDelta n) (a i)).comp
          (Polynomial.C ((n : ℚ)⁻¹^2)*X^2))) at hdet
  calc
    _ ≤ _ := hdet
    _ ≤ ((2*n).factorial : ℝ)*h158BasisNormalization n*
        ((C*(n : ℝ)^41)^(2*n)*Real.exp ((-(8123483/8000)+2*slack)*(n : ℝ)^2)) :=
      mul_le_mul_of_nonneg_left
        (h158AdaptiveMoment_product_le_slack n a C hC M slack hmoment hsum) (by positivity)
    _ = _ := by ring

/-- The original finite determinant API is preserved without any new hypothesis. -/
theorem h158AdaptiveMoment_det_abs_le (n : ℕ) (hn : 1 ≤ n)
    (a : Fin (2*n) → Fin 4 → ℚ) (C : ℝ) (hC : 0 < C)
    (M : Fin (2*n) → ℝ)
    (hmoment : ∀ i : Fin (2*n), h158BasisModulusMoment n
      ((h158AdaptiveMonic i.val (h158AdaptiveDelta n) (a i)).comp
        (Polynomial.C ((n : ℚ)⁻¹^2)*X^2)) ≤
      C*(n : ℝ)^41*Real.exp ((n : ℝ)*M i))
    (hsum : ∑ i : Fin (2*n), M i ≤ -8123483*(n : ℝ)/8000) :
    |Matrix.det (h158Functional n)| ≤
      ((2*n).factorial : ℝ)*h158BasisNormalization n*
        (C*(n : ℝ)^41)^(2*n)*Real.exp (-(8123483/8000)*(n : ℝ)^2) := by
  simpa only [mul_zero, add_zero] using
    h158AdaptiveMoment_det_abs_le_slack n hn a C hC M 0 hmoment (by simpa using hsum)

/-- The complete fixed-constant, degree-41 row prefactor is subquadratic. -/
theorem h158Moment_prefactor_subquadratic (C : ℝ) (hC : 0 < C)
    (ε : ℝ) (hε : 0 < ε) :
    ∀ᶠ n : ℕ in atTop, (C*(n : ℝ)^41)^(2*n) ≤ Real.exp (ε*(n : ℝ)^2) := by
  have hlinear := upperQuadraticRateOn_linear Set.univ (2*Real.log C)
    (ε/2) (by positivity)
  have hlog := (Real.isLittleO_log_id_atTop.bound (show 0 < ε/164 by positivity)).filter_mono
    (tendsto_natCast_atTop_atTop (R := ℝ))
  filter_upwards [hlinear, hlog, eventually_gt_atTop (0 : ℕ)] with n hlin hlogn hn
  have hnR : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  have hlin' := hlin (Set.mem_univ n)
  have hlog' : Real.log (n : ℝ) ≤ (ε/164)*(n : ℝ) := by
    have h := (le_abs_self (Real.log (n : ℝ))).trans hlogn
    simpa only [Real.norm_eq_abs, id_eq, abs_of_pos hnR] using h
  apply (Real.log_le_iff_le_exp (pow_pos (mul_pos hC (pow_pos hnR 41)) (2*n))).mp
  rw [Real.log_pow, Real.log_mul hC.ne' (pow_ne_zero _ hnR.ne'), Real.log_pow]
  push_cast
  have hmul := mul_le_mul_of_nonneg_left hlog' (show 0 ≤ 82*(n : ℝ) by positivity)
  nlinarith

/-- Rate assembly from the same finite majorant, with the slack retained exactly. -/
theorem h158AnalyticRate_of_moment_product_majorant_slack
    (C : ℝ) (hC : 0 < C) (slack : ℝ)
    (hbound : ∀ n : ℕ, 1 ≤ n → |Matrix.det (h158Functional n)| ≤
      ((2*n).factorial : ℝ)*h158BasisNormalization n*
        (C*(n : ℝ)^41)^(2*n)*Real.exp ((-(8123483/8000)+2*slack)*(n : ℝ)^2)) :
    UpperQuadraticExpRateOn Set.univ (fun n => Matrix.det (h158Functional n))
      (-analyticExpression+2*slack) := by
  intro ε hε
  have hthird : 0 < ε/3 := by positivity
  filter_upwards [rank_two_factorial_subquadratic (ε/3) hthird,
    h158BasisNormalization_eventually_exp_bounds (ε/3) hthird,
    h158Moment_prefactor_subquadratic C hC (ε/3) hthird,
    eventually_ge_atTop (1 : ℕ)] with n hfac hnorm hpref hn
  intro _
  have hnorm0 := (h158BasisNormalization_pos n (by omega)).le
  calc
    |Matrix.det (h158Functional n)| ≤ _ := hbound n hn
    _ ≤ Real.exp ((ε/3)*(n : ℝ)^2)*
        Real.exp ((12-8*Real.log 4+ε/3)*(n : ℝ)^2)*
        Real.exp ((ε/3)*(n : ℝ)^2)*
          Real.exp ((-(8123483/8000)+2*slack)*(n : ℝ)^2) := by
      gcongr
      exact hnorm.2
    _ = Real.exp ((-analyticExpression+2*slack+ε)*(n : ℝ)^2) := by
      rw [← Real.exp_add, ← Real.exp_add, ← Real.exp_add]
      congr 1
      unfold analyticExpression
      ring

/-- The original rate API is the zero-slack specialization. -/
theorem h158AnalyticBound_of_moment_product_majorant (C : ℝ) (hC : 0 < C)
    (hbound : ∀ n : ℕ, 1 ≤ n → |Matrix.det (h158Functional n)| ≤
      ((2*n).factorial : ℝ)*h158BasisNormalization n*
        (C*(n : ℝ)^41)^(2*n)*Real.exp (-(8123483/8000)*(n : ℝ)^2)) :
    H158AnalyticBound := by
  simpa only [mul_zero, add_zero, H158AnalyticBound] using
    h158AnalyticRate_of_moment_product_majorant_slack C hC 0 (by simpa using hbound)

/-- The actual moment bounds allow a slack in the finite sum, without any
nonvanishing assumption on moments or the determinant. -/
theorem h158AnalyticRate_of_adaptive_moment_bounds_slack
    (a : (n : ℕ) → Fin (2*n) → Fin 4 → ℚ)
    (M : (n : ℕ) → Fin (2*n) → ℝ) (C : ℝ) (hC : 0 < C) (slack : ℝ)
    (hmoment : ∀ n : ℕ, 1 ≤ n → ∀ i : Fin (2*n), h158BasisModulusMoment n
      ((h158AdaptiveMonic i.val (h158AdaptiveDelta n) (a n i)).comp
        (Polynomial.C ((n : ℚ)⁻¹^2)*X^2)) ≤
      C*(n : ℝ)^41*Real.exp ((n : ℝ)*M n i))
    (hsum : ∀ n : ℕ, 1 ≤ n →
      ∑ i : Fin (2*n), M n i ≤ -8123483*(n : ℝ)/8000+2*(n : ℝ)*slack) :
    UpperQuadraticExpRateOn Set.univ (fun n => Matrix.det (h158Functional n))
      (-analyticExpression+2*slack) := by
  apply h158AnalyticRate_of_moment_product_majorant_slack C hC slack
  intro n hn
  exact h158AdaptiveMoment_det_abs_le_slack n hn (a n) C hC (M n) slack
    (hmoment n hn) (hsum n hn)

/-- Uniform bounds on the actual rows and their finite ceiling sum suffice. -/
theorem h158AnalyticBound_of_adaptive_moment_bounds
    (a : (n : ℕ) → Fin (2*n) → Fin 4 → ℚ)
    (M : (n : ℕ) → Fin (2*n) → ℝ) (C : ℝ) (hC : 0 < C)
    (hmoment : ∀ n : ℕ, 1 ≤ n → ∀ i : Fin (2*n), h158BasisModulusMoment n
      ((h158AdaptiveMonic i.val (h158AdaptiveDelta n) (a n i)).comp
        (Polynomial.C ((n : ℚ)⁻¹^2)*X^2)) ≤
      C*(n : ℝ)^41*Real.exp ((n : ℝ)*M n i))
    (hsum : ∀ n : ℕ, 1 ≤ n →
      ∑ i : Fin (2*n), M n i ≤ -8123483*(n : ℝ)/8000) :
    H158AnalyticBound := by
  simpa only [mul_zero, add_zero, H158AnalyticBound] using
    h158AnalyticRate_of_adaptive_moment_bounds_slack a M C hC 0 hmoment (by simpa using hsum)

/-- A fixed slack appears once per row in the exact finite ceiling sum. -/
theorem h158PhaseCeiling_degree_sum_fin_le_slack (n : ℕ) (hn : 0 < n) (slack : ℝ) :
    (∑ i : Fin (2*n), (h158PhaseCeiling (h158PhaseCeilingTheta n i.val)+slack)) ≤
      -8123483*(n : ℝ)/8000+2*(n : ℝ)*slack := by
  have h := add_le_add_right (h158PhaseCeiling_degree_sum_fin_le n hn)
    (2*(n : ℝ)*slack)
  simpa only [sum_add_distrib, sum_const, card_univ, Fintype.card_fin, nsmul_eq_mul,
    Nat.cast_mul, Nat.cast_ofNat, h158PhaseCeilingTheta, add_comm] using h

/-- Compact ceilings may have any fixed real slack. The actual moments,
tail and normalization are unchanged; 2*n rows contribute rate 2*slack. -/
theorem h158AnalyticRate_of_compact_phase_ceiling_slack (slack : ℝ)
    (hcompact : ∀ n : ℕ, 1 ≤ n → ∀ i : Fin (2*n), ∃ a : Fin 4 → ℚ,
      (∀ j, 0 ≤ (a j : ℝ) ∧ (a j : ℝ) ≤ 20) ∧
      ∀ s : ℝ, 0 ≤ s → s ≤ 96 →
        (∀ j, 0 < h158AdaptivePairModulus 75 (a j : ℝ) s) →
        h158PhasePotential (fun j => (a j : ℝ)) (h158PhaseCeilingTheta n i.val) s ≤
          h158PhaseCeiling (h158PhaseCeilingTheta n i.val)+slack) :
    UpperQuadraticExpRateOn Set.univ (fun n => Matrix.det (h158Functional n))
      (-analyticExpression+2*slack) := by
  apply h158AnalyticRate_of_moment_product_majorant_slack h158AdaptiveMomentConstant
    h158AdaptiveMomentConstant_pos slack
  intro n hn
  choose a ha hc using hcompact n hn
  apply h158AdaptiveMoment_det_abs_le_slack n hn a h158AdaptiveMomentConstant
    h158AdaptiveMomentConstant_pos
    (fun i => h158PhaseCeiling (h158PhaseCeilingTheta n i.val)+slack) slack
  · intro i
    exact h158AdaptiveMoment_le_of_compact n i.val hn i.isLt (a i) (ha i)
      (h158PhaseCeiling (h158PhaseCeilingTheta n i.val)+slack) (hc i)
  · exact h158PhaseCeiling_degree_sum_fin_le_slack n (by omega) slack

/-- Original compact-only API, with exactly its original hypotheses and conclusion. -/
theorem h158AnalyticBound_of_compact_phase_ceiling
    (hcompact : ∀ n : ℕ, 1 ≤ n → ∀ i : Fin (2*n), ∃ a : Fin 4 → ℚ,
      (∀ j, 0 ≤ (a j : ℝ) ∧ (a j : ℝ) ≤ 20) ∧
      ∀ s : ℝ, 0 ≤ s → s ≤ 96 →
        (∀ j, 0 < h158AdaptivePairModulus 75 (a j : ℝ) s) →
        h158PhasePotential (fun j => (a j : ℝ)) (h158PhaseCeilingTheta n i.val) s ≤
          h158PhaseCeiling (h158PhaseCeilingTheta n i.val)) :
    H158AnalyticBound := by
  simpa only [mul_zero, add_zero, H158AnalyticBound] using
    h158AnalyticRate_of_compact_phase_ceiling_slack 0 (by simpa using hcompact)

end OddZetaMixed
