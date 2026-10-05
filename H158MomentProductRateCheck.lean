import OddZetaMixed.H158MomentProductRate

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Filter Finset Polynomial

#check h158AdaptiveMoment_product_le
#check h158AdaptiveMoment_det_abs_le
#check h158Moment_prefactor_subquadratic
#check h158AnalyticBound_of_adaptive_moment_bounds
#check h158AnalyticBound_of_compact_phase_ceiling
#check h158AdaptiveMoment_product_le_slack
#check h158AdaptiveMoment_det_abs_le_slack
#check h158PhaseCeiling_degree_sum_fin_le_slack
#check h158AnalyticRate_of_adaptive_moment_bounds_slack
#check h158AnalyticRate_of_compact_phase_ceiling_slack

#print axioms h158AdaptiveMoment_product_le
#print axioms h158AdaptiveMoment_det_abs_le
#print axioms h158Moment_prefactor_subquadratic
#print axioms h158AnalyticBound_of_moment_product_majorant
#print axioms h158AnalyticBound_of_adaptive_moment_bounds
#print axioms h158AnalyticBound_of_compact_phase_ceiling
#print axioms h158AdaptiveMoment_product_le_slack
#print axioms h158AdaptiveMoment_det_abs_le_slack
#print axioms h158AnalyticRate_of_moment_product_majorant_slack
#print axioms h158AnalyticRate_of_adaptive_moment_bounds_slack
#print axioms h158PhaseCeiling_degree_sum_fin_le_slack
#print axioms h158AnalyticRate_of_compact_phase_ceiling_slack
#print axioms polynomialExponential_scaled_integral_bound_of_ae_le
#print axioms polynomialExponential_scaled_kernel_phase_bound_ae

-- The finite product lemma includes the empty product at n = 0.
example (a : Fin (2*0) → Fin 4 → ℚ) (M : Fin (2*0) → ℝ) :
    (∏ i : Fin (2*0), h158BasisModulusMoment 0
      ((h158AdaptiveMonic i.val (h158AdaptiveDelta 0) (a i)).comp
        (Polynomial.C ((0 : ℚ)⁻¹^2)*X^2))) ≤
      (1*(0 : ℝ)^41)^(2*0)*Real.exp (-(8123483/8000)*(0 : ℝ)^2) := by
  simpa only [Nat.cast_zero] using
    h158AdaptiveMoment_product_le 0 a 1 (by norm_num) M
      (fun i => Fin.elim0 i) (by simp)

-- A vanishing determinant is bounded without ever taking its logarithm.
example (n : ℕ) (hn : 1 ≤ n) (C : ℝ) (hC : 0 < C)
    (hzero : Matrix.det (h158Functional n) = 0) :
    |Matrix.det (h158Functional n)| ≤
      ((2*n).factorial : ℝ)*h158BasisNormalization n*
        (C*(n : ℝ)^41)^(2*n)*Real.exp (-(8123483/8000)*(n : ℝ)^2) := by
  rw [hzero, abs_zero]
  have hnorm := (h158BasisNormalization_pos n (by omega)).le
  positivity

-- Constants less than one are allowed; log C is not assumed nonnegative.
example (ε : ℝ) (hε : 0 < ε) :
    ∀ᶠ n : ℕ in atTop,
      (((1/100 : ℝ)*(n : ℝ)^41)^(2*n)) ≤ Real.exp (ε*(n : ℝ)^2) :=
  h158Moment_prefactor_subquadratic (1/100) (by norm_num) ε hε

-- An explicit row selector can be supplied without globalizing root-zero bounds.
example (a : (n : ℕ) → Fin (2*n) → Fin 4 → ℚ)
    (ha : ∀ n : ℕ, 1 ≤ n → ∀ i : Fin (2*n),
      ∀ j, 0 ≤ (a n i j : ℝ) ∧ (a n i j : ℝ) ≤ 20)
    (hc : ∀ n : ℕ, 1 ≤ n → ∀ i : Fin (2*n),
      ∀ s : ℝ, 0 ≤ s → s ≤ 96 →
        (∀ j, 0 < h158AdaptivePairModulus 75 (a n i j : ℝ) s) →
        h158PhasePotential (fun j => (a n i j : ℝ)) (h158PhaseCeilingTheta n i.val) s ≤
          h158PhaseCeiling (h158PhaseCeilingTheta n i.val)) :
    H158AnalyticBound := by
  apply h158AnalyticBound_of_compact_phase_ceiling
  intro n hn i
  exact ⟨a n i, ha n hn i, hc n hn i⟩

-- A theta-indexed table discharges the discrete row hypothesis via the proved range.
example (hc : ∀ theta : ℝ, theta ∈ Set.Ico (0 : ℝ) 2 → ∃ a : Fin 4 → ℚ,
    (∀ j, 0 ≤ (a j : ℝ) ∧ (a j : ℝ) ≤ 20) ∧
    ∀ s : ℝ, 0 ≤ s → s ≤ 96 →
      (∀ j, 0 < h158AdaptivePairModulus 75 (a j : ℝ) s) →
      h158PhasePotential (fun j => (a j : ℝ)) theta s ≤ h158PhaseCeiling theta) :
    H158AnalyticBound := by
  apply h158AnalyticBound_of_compact_phase_ceiling
  intro n hn i
  exact hc _ (h158PhaseCeilingTheta_mem n i.val (by omega) i.isLt)

private def CompactCeilingSlack (slack : ℝ) : Prop :=
  ∀ n : ℕ, 1 ≤ n → ∀ i : Fin (2*n), ∃ a : Fin 4 → ℚ,
    (∀ j, 0 ≤ (a j : ℝ) ∧ (a j : ℝ) ≤ 20) ∧
    ∀ s : ℝ, 0 ≤ s → s ≤ 96 →
      (∀ j, 0 < h158AdaptivePairModulus 75 (a j : ℝ) s) →
      h158PhasePotential (fun j => (a j : ℝ)) (h158PhaseCeilingTheta n i.val) s ≤
        h158PhaseCeiling (h158PhaseCeilingTheta n i.val)+slack

-- Zero slack has exactly the original target and uses no stronger root hypothesis.
example (hc : CompactCeilingSlack 0) : H158AnalyticBound := by
  simpa only [H158AnalyticBound, mul_zero, add_zero] using
    h158AnalyticRate_of_compact_phase_ceiling_slack 0 hc

-- The coarser compact certificate option costs exactly two in the global rate.
example (hc : CompactCeilingSlack 1) :
    UpperQuadraticExpRateOn Set.univ (fun n => Matrix.det (h158Functional n))
      (-analyticExpression+2) := by
  simpa only [mul_one] using h158AnalyticRate_of_compact_phase_ceiling_slack 1 hc

-- The interface has no unnecessary nonnegative-slack assumption.
example (hc : CompactCeilingSlack (-1)) :
    UpperQuadraticExpRateOn Set.univ (fun n => Matrix.det (h158Functional n))
      (-analyticExpression-2) := by
  simpa only [mul_neg_one, sub_eq_add_neg] using
    h158AnalyticRate_of_compact_phase_ceiling_slack (-1) hc

-- The slack multiplier is the exact number of rows, before passing to any limit.
example (n : ℕ) (slack : ℝ) :
    (∑ i : Fin (2*n), (h158PhaseCeiling (h158PhaseCeilingTheta n i.val)+slack)) -
      (∑ i : Fin (2*n), h158PhaseCeiling (h158PhaseCeilingTheta n i.val)) =
        2*(n : ℝ)*slack := by
  simp only [sum_add_distrib, sum_const, card_univ, Fintype.card_fin, nsmul_eq_mul,
    Nat.cast_mul, Nat.cast_ofNat, add_sub_cancel_left]

-- Arbitrary real slack is harmless at the empty product as well.
example (a : Fin (2*0) → Fin 4 → ℚ) (M : Fin (2*0) → ℝ) (slack : ℝ) :
    (∏ i : Fin (2*0), h158BasisModulusMoment 0
      ((h158AdaptiveMonic i.val (h158AdaptiveDelta 0) (a i)).comp
        (Polynomial.C ((0 : ℚ)⁻¹^2)*X^2))) ≤
      (1*(0 : ℝ)^41)^(2*0)*Real.exp ((-(8123483/8000)+2*slack)*(0 : ℝ)^2) := by
  simpa only [Nat.cast_zero] using
    h158AdaptiveMoment_product_le_slack 0 a 1 (by norm_num) M slack
      (fun i => Fin.elim0 i) (by simp)

-- The slack version also needs no determinant nonvanishing hypothesis.
example (n : ℕ) (hn : 1 ≤ n) (C : ℝ) (hC : 0 < C) (slack : ℝ)
    (hzero : Matrix.det (h158Functional n) = 0) :
    |Matrix.det (h158Functional n)| ≤
      ((2*n).factorial : ℝ)*h158BasisNormalization n*
        (C*(n : ℝ)^41)^(2*n)*Real.exp ((-(8123483/8000)+2*slack)*(n : ℝ)^2) := by
  rw [hzero, abs_zero]
  have hnorm := (h158BasisNormalization_pos n (by omega)).le
  positivity

end OddZetaMixed
