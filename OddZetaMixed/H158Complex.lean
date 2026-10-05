import OddZetaMixed.H158Protected
import Mathlib.Analysis.Analytic.Polynomial

/-!
# Actual complex h158 entries

The original rational-coefficient numerator, denominator, normalization, and
centered multiplier are evaluated over the complex numbers. On the open
half-plane to the right of every pole, the quotient is analytic and its actual
partial fractions follow from the cleared polynomial identity. Complex
one-variable derivatives give the divided fourth-derivative formula. Agreement
with the real fourth derivative proves the protected boundary zeros and the
convergent cutoff shift without changing either normalization.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset
open scoped Topology

/-- The actual entry, with precisely the same polynomials as `h158EntryReal`. -/
def h158EntryComplex (n i j : ℕ) (z : ℂ) : ℂ :=
  aeval z (C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j) /
    aeval z (h158Denominator n)

/-- The pole-free half-plane used for the summation and contour arguments. -/
def h158ComplexHalfPlane (n : ℕ) : Set ℂ :=
  {z | -(53 * (n : ℝ) + 1) < z.re}

theorem isOpen_h158ComplexHalfPlane (n : ℕ) : IsOpen (h158ComplexHalfPlane n) :=
  isOpen_lt continuous_const Complex.continuous_re

theorem h158_pole_translate_complex_ne_zero (n k : ℕ) (hk : k ∈ h158PoleSet n)
    (z : ℂ) (hz : -(53 * (n : ℝ) + 1) < z.re) : z + (k : ℂ) ≠ 0 := by
  have hp : 0 < (z + (k : ℂ)).re := by
    simpa using h158_pole_translate_pos n k hk z.re hz
  intro h
  simp [h] at hp

/-- The full, unreduced denominator has no zeros on the open half-plane. -/
theorem h158_denominator_complex_eval_ne_zero (n : ℕ) (z : ℂ)
    (hz : -(53 * (n : ℝ) + 1) < z.re) : aeval z (h158Denominator n) ≠ 0 := by
  rw [h158_denominator_powers]
  simp only [map_prod, map_pow, map_add, aeval_X, map_natCast]
  exact Finset.prod_ne_zero_iff.mpr fun k hk =>
    pow_ne_zero _ (h158_pole_translate_complex_ne_zero n k hk z hz)

/-- Analyticity of the actual quotient, not of an assumed decomposition. -/
theorem h158EntryComplex_analyticAt (n i j : ℕ) (z : ℂ)
    (hz : -(53 * (n : ℝ) + 1) < z.re) : AnalyticAt ℂ (h158EntryComplex n i j) z := by
  exact (analyticAt_id.aeval_polynomial
    (C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j)).div
    (analyticAt_id.aeval_polynomial (h158Denominator n))
    (h158_denominator_complex_eval_ne_zero n z hz)

theorem h158EntryComplex_analyticOnNhd (n i j : ℕ) :
    AnalyticOnNhd ℂ (h158EntryComplex n i j) (h158ComplexHalfPlane n) :=
  fun z hz => h158EntryComplex_analyticAt n i j z hz

/-- Holomorphy on the open pole-free half-plane. -/
theorem h158EntryComplex_differentiableOn (n i j : ℕ) :
    DifferentiableOn ℂ (h158EntryComplex n i j) (h158ComplexHalfPlane n) :=
  (h158EntryComplex_analyticOnNhd n i j).differentiableOn

theorem h158EntryComplex_contDiffAt (n i j r : ℕ) (z : ℂ)
    (hz : -(53 * (n : ℝ) + 1) < z.re) : ContDiffAt ℂ r (h158EntryComplex n i j) z :=
  (h158EntryComplex_analyticAt n i j z hz).contDiffAt

private theorem h158_aeval_complex_ofReal (P : ℚ[X]) (x : ℝ) :
    aeval (x : ℂ) P = ((aeval x P : ℝ) : ℂ) :=
  aeval_algHom_apply (Complex.ofRealAm.restrictScalars ℚ) x P

/-- Evaluation agrees on every real argument, including totalized division at poles. -/
theorem h158EntryComplex_ofReal (n i j : ℕ) (x : ℝ) :
    h158EntryComplex n i j (x : ℂ) = (h158EntryReal n i j x : ℂ) := by
  simp only [h158EntryComplex, h158EntryReal, h158_aeval_complex_ofReal, Complex.ofReal_div]

theorem h158PoleComplement_complex_eval (n k l : ℕ) (hk : k ∈ h158PoleSet n)
    (hl : l < h158PoleOrder n k) (z : ℂ) (hz : -(53 * (n : ℝ) + 1) < z.re) :
    aeval z (h158PoleComplement n k l) =
      aeval z (h158Denominator n) / (z + (k : ℂ)) ^ (l + 1) := by
  have h := congrArg (fun P : ℚ[X] => aeval z P) (h158PoleComplement_mul n k l hk hl)
  simp only [map_mul, map_pow, map_add, aeval_X, map_natCast] at h
  exact (eq_div_iff (pow_ne_zero _ (h158_pole_translate_complex_ne_zero n k hk z hz))).mpr
    (by simpa only [mul_comm] using h)

/-- Actual complex partial fractions, obtained by evaluating the cleared identity. -/
theorem h158EntryComplex_partial_fractions (n : ℕ) (i j : Fin (2 * n))
    (z : ℂ) (hz : -(53 * (n : ℝ) + 1) < z.re) :
    h158EntryComplex n i j z = ∑ k ∈ h158PoleSet n, ∑ l,
      (h158PrincipalCoefficients n i j k l : ℂ) / (z + (k : ℂ)) ^ (l.val + 1) := by
  unfold h158EntryComplex
  rw [h158_cleared_partial_fractions]
  simp only [map_sum, map_mul, aeval_C, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro k hk
  apply Finset.sum_congr rfl
  intro l _
  rw [h158PoleComplement_complex_eval n k l.val hk l.isLt z hz]
  have hd := h158_denominator_complex_eval_ne_zero n z hz
  have hp := pow_ne_zero (l.val + 1) (h158_pole_translate_complex_ne_zero n k hk z hz)
  field_simp
  simp

/-- The partial fractions agree on a complex neighborhood, permitting differentiation. -/
theorem h158EntryComplex_eventuallyEq_partial_fractions (n : ℕ) (i j : Fin (2 * n))
    (z : ℂ) (hz : -(53 * (n : ℝ) + 1) < z.re) :
    h158EntryComplex n i j =ᶠ[𝓝 z]
      (fun w : ℂ => ∑ k ∈ h158PoleSet n, ∑ l : Fin (h158PoleOrder n k),
        (h158PrincipalCoefficients n i j k l : ℂ) / (w + (k : ℂ)) ^ (l.val + 1)) := by
  filter_upwards [(isOpen_h158ComplexHalfPlane n).mem_nhds hz] with w hw
  exact h158EntryComplex_partial_fractions n i j w hw

private theorem complex_iteratedDeriv_shifted_zpow (r : ℕ) (m : ℤ) (z a : ℂ) :
    iteratedDeriv r (fun w : ℂ => (w + a) ^ m) z =
      (∏ s ∈ range r, ((m : ℂ) - (s : ℂ))) * (z + a) ^ (m - (r : ℤ)) := by
  rw [iteratedDeriv_comp_add_const r (fun w : ℂ => w ^ m) a, iteratedDeriv_eq_iterate]
  exact iter_deriv_zpow m (z + a) r

private theorem complex_fourthDerivative_inv_pow_add (m : ℕ) (hm : 1 ≤ m)
    (z a : ℂ) (hz : z + a ≠ 0) :
    iteratedDeriv 4 (fun w : ℂ => 1 / (w + a) ^ m) z / 24 =
      ((m + 3).choose 4 : ℂ) / (z + a) ^ (m + 4) := by
  have hfun : (fun w : ℂ => 1 / (w + a) ^ m) =
      (fun w : ℂ => (w + a) ^ (-(m : ℤ))) := by
    funext w
    simp [zpow_neg, one_div]
  rw [hfun, complex_iteratedDeriv_shifted_zpow]
  have hexp : -(m : ℤ) - (4 : ℕ) = -((m + 4 : ℕ) : ℤ) := by
    push_cast
    ring
  rw [hexp, zpow_neg, zpow_natCast]
  have hc := congrArg (fun x : ℝ => (x : ℂ)) (fourthDerivative_coefficient m hm)
  push_cast at hc
  norm_num [Finset.prod_range_succ]
  field_simp [pow_ne_zero (m + 4) hz]
  linear_combination -hc

private theorem complex_fourthDerivative_const_div_pow_add (m : ℕ) (hm : 1 ≤ m)
    (c z a : ℂ) (hz : z + a ≠ 0) :
    iteratedDeriv 4 (fun w : ℂ => c / (w + a) ^ m) z / 24 =
      c * ((m + 3).choose 4 : ℂ) / (z + a) ^ (m + 4) := by
  have hfun : (fun w : ℂ => c / (w + a) ^ m) =
      (fun w : ℂ => c * (1 / (w + a) ^ m)) := by
    funext w
    ring
  rw [hfun, iteratedDeriv_const_mul_field, mul_div_assoc,
    complex_fourthDerivative_inv_pow_add m hm z a hz]
  ring

private theorem complex_contDiffAt_const_div_pow_add (r m : ℕ) (c z a : ℂ)
    (hz : z + a ≠ 0) : ContDiffAt ℂ r (fun w : ℂ => c / (w + a) ^ m) z :=
  contDiffAt_const.div ((contDiffAt_id.add contDiffAt_const).pow m) (pow_ne_zero m hz)

/-- Pointwise fourth complex derivative of the actual quotient, divided by `4!`.
Every actual principal coefficient and pole order is retained. -/
theorem h158EntryComplex_fourthDerivative (n : ℕ) (i j : Fin (2 * n))
    (z : ℂ) (hz : -(53 * (n : ℝ) + 1) < z.re) :
    iteratedDeriv 4 (h158EntryComplex n i j) z / 24 =
      ∑ k ∈ h158PoleSet n, ∑ l : Fin (h158PoleOrder n k),
        (h158PrincipalCoefficients n i j k l : ℂ) * ((l.val + 4).choose 4 : ℂ) /
          (z + (k : ℂ)) ^ (l.val + 5) := by
  have hsmooth (k : ℕ) (hk : k ∈ h158PoleSet n) :
      ContDiffAt ℂ 4 (fun w : ℂ => ∑ l : Fin (h158PoleOrder n k),
        (h158PrincipalCoefficients n i j k l : ℂ) / (w + (k : ℂ)) ^ (l.val + 1)) z := by
    apply ContDiffAt.sum
    intro l _
    exact complex_contDiffAt_const_div_pow_add 4 (l.val + 1)
      (h158PrincipalCoefficients n i j k l : ℂ) z (k : ℂ)
      (h158_pole_translate_complex_ne_zero n k hk z hz)
  rw [Filter.EventuallyEq.iteratedDeriv_eq 4
    (h158EntryComplex_eventuallyEq_partial_fractions n i j z hz)]
  rw [iteratedDeriv_fun_sum hsmooth, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro k hk
  rw [iteratedDeriv_fun_sum (fun l _ =>
    complex_contDiffAt_const_div_pow_add 4 (l.val + 1)
      (h158PrincipalCoefficients n i j k l : ℂ) z (k : ℂ)
      (h158_pole_translate_complex_ne_zero n k hk z hz)), Finset.sum_div]
  apply Finset.sum_congr rfl
  intro l _
  simpa only [Nat.add_assoc, Nat.reduceAdd] using
    complex_fourthDerivative_const_div_pow_add (l.val + 1) (by omega)
      (h158PrincipalCoefficients n i j k l : ℂ) z (k : ℂ)
      (h158_pole_translate_complex_ne_zero n k hk z hz)

/-- Complex and real divided fourth derivatives agree on the pole-free real halfline. -/
theorem h158EntryComplex_dividedFourthDerivative_ofReal (n : ℕ) (i j : Fin (2 * n))
    (x : ℝ) (hx : -(53 * (n : ℝ) + 1) < x) :
    iteratedDeriv 4 (h158EntryComplex n i j) (x : ℂ) / 24 =
      ((iteratedDeriv 4 (h158EntryReal n i j) x / 24 : ℝ) : ℂ) := by
  rw [h158EntryComplex_fourthDerivative n i j (x : ℂ) (by simpa using hx),
    h158EntryReal_fourthDerivative n i j x hx]
  push_cast
  rfl

/-- Agreement of the unnormalized fourth derivatives on the real halfline. -/
theorem h158EntryComplex_fourthDerivative_ofReal (n : ℕ) (i j : Fin (2 * n))
    (x : ℝ) (hx : -(53 * (n : ℝ) + 1) < x) :
    iteratedDeriv 4 (h158EntryComplex n i j) (x : ℂ) =
      ((iteratedDeriv 4 (h158EntryReal n i j) x : ℝ) : ℂ) := by
  have h := h158EntryComplex_dividedFourthDerivative_ofReal n i j x hx
  push_cast at h
  exact (div_left_inj' (by norm_num : (24 : ℂ) ≠ 0)).mp h

/-- Actual complex fourth derivatives vanish at the protected boundary integers. -/
theorem h158EntryComplex_fourthDerivative_protected (n : ℕ) (i j : Fin (2 * n))
    (k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ 48 * n) :
    iteratedDeriv 4 (h158EntryComplex n i j) (-(k : ℂ)) = 0 := by
  have h := h158EntryComplex_fourthDerivative_ofReal n i j (-(k : ℝ))
    (h158_protected_in_halfline n k hkn)
  simpa only [Complex.ofReal_neg, Complex.ofReal_natCast,
    h158EntryReal_fourthDerivative_protected n i j k hk hkn, Complex.ofReal_zero] using h

theorem h158EntryComplex_dividedFourthDerivative_protected (n : ℕ)
    (i j : Fin (2 * n)) (k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ 48 * n) :
    iteratedDeriv 4 (h158EntryComplex n i j) (-(k : ℂ)) / 24 = 0 := by
  rw [h158EntryComplex_fourthDerivative_protected n i j k hk hkn, zero_div]

/-- The derivative boundary values at the original summation indices are real. -/
theorem h158EntryComplex_dividedFourthDerivative_at_index (n : ℕ)
    (i j : Fin (2 * n)) (v : ℕ) :
    iteratedDeriv 4 (h158EntryComplex n i j) ((v : ℂ) - 48 * (n : ℂ)) / 24 =
      ((iteratedDeriv 4 (h158EntryReal n i j)
        ((v : ℝ) - 48 * (n : ℝ)) / 24 : ℝ) : ℂ) := by
  simpa only [Complex.ofReal_sub, Complex.ofReal_mul, Complex.ofReal_natCast,
    Complex.ofReal_ofNat] using h158EntryComplex_dividedFourthDerivative_ofReal n i j
      ((v : ℝ) - 48 * (n : ℝ)) (h158_summation_point_in_halfline n v)

/-- The original complex derivative series sums to the embedded real functional. -/
theorem hasSum_h158EntryComplex_fourthDerivative (n : ℕ) (i j : Fin (2 * n)) :
    HasSum (fun v : ℕ =>
      iteratedDeriv 4 (h158EntryComplex n i j) ((v : ℂ) - 48 * (n : ℂ)) / 24)
      (h158Functional n i j : ℂ) := by
  have hreal : HasSum (fun v : ℕ =>
      iteratedDeriv 4 (h158EntryReal n i j) ((v : ℝ) - 48 * (n : ℝ)) / 24)
      (h158Functional n i j) :=
    (summable_h158EntryReal_fourthDerivative n i j).hasSum
  exact (Complex.hasSum_ofReal.mpr hreal).congr_fun
    (h158EntryComplex_dividedFourthDerivative_at_index n i j)

theorem summable_h158EntryComplex_fourthDerivative (n : ℕ) (i j : Fin (2 * n)) :
    Summable (fun v : ℕ =>
      iteratedDeriv 4 (h158EntryComplex n i j) ((v : ℂ) - 48 * (n : ℂ)) / 24) :=
  (hasSum_h158EntryComplex_fourthDerivative n i j).summable

/-- The complex derivative series with cutoff zero has the same actual value. -/
theorem hasSum_h158EntryComplex_fourthDerivative_nonnegative (n : ℕ)
    (i j : Fin (2 * n)) :
    HasSum (fun v : ℕ => iteratedDeriv 4 (h158EntryComplex n i j) (v : ℂ) / 24)
      (h158Functional n i j : ℂ) := by
  apply (Complex.hasSum_ofReal.mpr
    (hasSum_h158EntryReal_fourthDerivative_nonnegative n i j)).congr_fun
  intro v
  have hx : -(53 * (n : ℝ) + 1) < (v : ℝ) := by
    have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    have hv : (0 : ℝ) ≤ v := Nat.cast_nonneg v
    linarith
  simpa only [Complex.ofReal_natCast] using
    h158EntryComplex_dividedFourthDerivative_ofReal n i j (v : ℝ) hx

theorem summable_h158EntryComplex_fourthDerivative_nonnegative (n : ℕ)
    (i j : Fin (2 * n)) :
    Summable (fun v : ℕ => iteratedDeriv 4 (h158EntryComplex n i j) (v : ℂ) / 24) :=
  (hasSum_h158EntryComplex_fourthDerivative_nonnegative n i j).summable

/-- Actual boundary cutoff shift, with convergence established on both sides. -/
theorem h158EntryComplex_cutoff_shift (n : ℕ) (i j : Fin (2 * n)) :
    (∑' v : ℕ, iteratedDeriv 4 (h158EntryComplex n i j)
      ((v : ℂ) - 48 * (n : ℂ)) / 24) =
      ∑' v : ℕ, iteratedDeriv 4 (h158EntryComplex n i j) (v : ℂ) / 24 :=
  (hasSum_h158EntryComplex_fourthDerivative n i j).tsum_eq.trans
    (hasSum_h158EntryComplex_fourthDerivative_nonnegative n i j).tsum_eq.symm

end OddZetaMixed
