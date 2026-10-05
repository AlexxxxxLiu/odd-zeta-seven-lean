import OddZetaMixed.H158ContourKernel
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Analysis.SpecificLimits.Normed

/-!
# Fixed-index decay of the actual h158 contour entries

These constants are deliberately coarse and only serve the fixed-`n` closing
contours. They do not assert any uniform-in-`n` determinant rate. The numerator
coefficient bound includes the original normalization and centered multiplier;
the denominator estimate retains every unreduced pole multiplicity. Uniform
bounds for the exact fifth cotangent kernel give actual vanishing line integrals
on all three closing edges. No infinite-contour representation is assumed.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset Filter
open scoped Topology

def h158PolynomialCoefficientNorm (P : ℚ[X]) : ℝ :=
  ∑ r ∈ range (P.natDegree + 1), ‖(P.coeff r : ℂ)‖

def h158EntryCoefficientNorm (n i j : ℕ) : ℝ :=
  h158PolynomialCoefficientNorm
    (C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j)

def h158ContourDecayRadius (n : ℕ) : ℝ := 2 * (105 * (n : ℝ) + 1)

/-- A single explicit constant for all entries in the rank-`2*n` matrix. -/
def h158ContourDecayConstant (n : ℕ) : ℝ :=
  2 ^ (592 * n + 16) *
    (1 + ∑ i : Fin (2 * n), ∑ j : Fin (2 * n), h158EntryCoefficientNorm n i j)

theorem h158PolynomialCoefficientNorm_nonneg (P : ℚ[X]) :
    0 ≤ h158PolynomialCoefficientNorm P := by
  exact Finset.sum_nonneg fun r _ => norm_nonneg _

theorem h158EntryCoefficientNorm_nonneg (n i j : ℕ) :
    0 ≤ h158EntryCoefficientNorm n i j :=
  h158PolynomialCoefficientNorm_nonneg _

theorem h158ContourDecayRadius_ge_two (n : ℕ) : 2 ≤ h158ContourDecayRadius n := by
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  dsimp [h158ContourDecayRadius]
  linarith

theorem h158ContourDecayConstant_pos (n : ℕ) : 0 < h158ContourDecayConstant n := by
  unfold h158ContourDecayConstant
  apply mul_pos (by positivity)
  have h : 0 ≤ ∑ i : Fin (2 * n), ∑ j : Fin (2 * n), h158EntryCoefficientNorm n i j :=
    Finset.sum_nonneg fun i _ => Finset.sum_nonneg fun j _ =>
      h158EntryCoefficientNorm_nonneg n i j
  linarith

/-- A coefficient-by-coefficient polynomial bound outside the unit disk. -/
theorem h158_norm_aeval_le_coefficientNorm (P : ℚ[X]) (z : ℂ) (hz : 1 ≤ ‖z‖) :
    ‖aeval z P‖ ≤ h158PolynomialCoefficientNorm P * ‖z‖ ^ P.natDegree := by
  rw [aeval_eq_sum_range]
  calc
    _ ≤ ∑ r ∈ range (P.natDegree + 1), ‖(P.coeff r : ℂ)‖ * ‖z‖ ^ r := by
      simpa [Algebra.smul_def, norm_mul, norm_pow] using
        norm_sum_le (range (P.natDegree + 1)) (fun r => P.coeff r • z ^ r)
    _ ≤ ∑ r ∈ range (P.natDegree + 1), ‖(P.coeff r : ℂ)‖ * ‖z‖ ^ P.natDegree := by
      apply Finset.sum_le_sum
      intro r hr
      apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
      exact pow_le_pow_right₀ hz (by simpa only [mem_range, Nat.lt_succ_iff] using hr)
    _ = _ := by rw [← Finset.sum_mul]; rfl

/-- The sum of unreduced pole orders is exactly the denominator degree. -/
theorem h158_sum_pole_orders (n : ℕ) :
    (∑ k ∈ h158PoleSet n, h158PoleOrder n k) = 592 * n + 16 := by
  have h := congrArg Polynomial.natDegree (h158_denominator_powers n)
  rw [h158Denominator_degree,
    natDegree_prod_of_monic _ _ (fun (k : ℕ) _ =>
      (monic_X_add_C (k : ℚ)).pow (h158PoleOrder n k))] at h
  simpa only [natDegree_pow, natDegree_X_add_C, mul_one] using h.symm

/-- Every pole factor has at least half the radial norm beyond the explicit radius. -/
theorem h158_pole_factor_norm_lower (n k : ℕ) (hk : k ∈ h158PoleSet n)
    (z : ℂ) (hz : h158ContourDecayRadius n ≤ ‖z‖) :
    ‖z‖ / 2 ≤ ‖z + (k : ℂ)‖ := by
  have hk' : (k : ℝ) ≤ 105 * (n : ℝ) + 1 := by
    exact_mod_cast (h158_pole_address_bounds n k hk).2
  have ht : ‖z‖ ≤ ‖z + (k : ℂ)‖ + (k : ℝ) := by
    simpa only [add_sub_cancel_right, Complex.norm_natCast] using norm_sub_le (z + (k : ℂ)) k
  dsimp [h158ContourDecayRadius] at hz
  linarith

/-- Explicit product lower bound for the actual denominator in every complex direction. -/
theorem h158_denominator_norm_lower (n : ℕ) (z : ℂ)
    (hz : h158ContourDecayRadius n ≤ ‖z‖) :
    (‖z‖ / 2) ^ (592 * n + 16) ≤ ‖aeval z (h158Denominator n)‖ := by
  rw [h158_denominator_powers]
  simp only [map_prod, map_pow, map_add, aeval_X, map_natCast, norm_prod, norm_pow]
  rw [← h158_sum_pole_orders n, ← Finset.prod_pow_eq_pow_sum]
  apply Finset.prod_le_prod₀
  · intro k _
    exact pow_nonneg (by positivity) _
  · intro k hk
    exact pow_le_pow_left₀ (by positivity) (h158_pole_factor_norm_lower n k hk z hz) _

theorem h158_denominator_ne_zero_outside (n : ℕ) (z : ℂ)
    (hz : h158ContourDecayRadius n ≤ ‖z‖) : aeval z (h158Denominator n) ≠ 0 := by
  have hzpos : 0 < ‖z‖ := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 2)
    ((h158ContourDecayRadius_ge_two n).trans hz)
  exact norm_pos_iff.mp (lt_of_lt_of_le (pow_pos (by positivity) _)
    (h158_denominator_norm_lower n z hz))

/-- The already-proved numerator degrees give the full rank-`2*n` exponent. -/
theorem h158_entry_numerator_degree_decay (n : ℕ) (i j : Fin (2 * n)) :
    (C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j).natDegree +
      (84 * n + 19) ≤ 592 * n + 16 := by
  rw [natDegree_mul
    (mul_ne_zero (by simpa using h158Normalization_ne_zero n) (h158Numerator_monic n).ne_zero)
    (centeredMultiplier_ne_zero n i j), natDegree_C_mul (h158Normalization_ne_zero n),
    h158Numerator_degree, centeredMultiplier_degree]
  have hi := i.isLt
  have hj := j.isLt
  omega

private theorem entry_coefficient_le_total (n : ℕ) (i j : Fin (2 * n)) :
    h158EntryCoefficientNorm n i j ≤
      1 + ∑ a : Fin (2 * n), ∑ b : Fin (2 * n), h158EntryCoefficientNorm n a b := by
  have hi : h158EntryCoefficientNorm n i j ≤ ∑ b : Fin (2 * n), h158EntryCoefficientNorm n i b :=
    Finset.single_le_sum (fun (b : Fin (2 * n)) _ =>
      h158EntryCoefficientNorm_nonneg n i b) (mem_univ j)
  have hj : (∑ b : Fin (2 * n), h158EntryCoefficientNorm n i b) ≤
      ∑ a : Fin (2 * n), ∑ b : Fin (2 * n), h158EntryCoefficientNorm n a b :=
    Finset.single_le_sum (fun (a : Fin (2 * n)) _ => Finset.sum_nonneg fun (b : Fin (2 * n)) _ =>
      h158EntryCoefficientNorm_nonneg n a b) (mem_univ i)
  linarith

/-- Fixed-index, all-direction rational decay, uniform over every matrix entry.
The numerator coefficient constant includes every original normalization factor. -/
theorem h158EntryComplex_norm_le_decay (n : ℕ) (i j : Fin (2 * n)) (z : ℂ)
    (hz : h158ContourDecayRadius n ≤ ‖z‖) :
    ‖h158EntryComplex n i j z‖ ≤ h158ContourDecayConstant n / ‖z‖ ^ (84 * n + 19) := by
  let P := C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j
  let A := h158EntryCoefficientNorm n i j
  have hx : 1 ≤ ‖z‖ := le_trans (by norm_num : (1 : ℝ) ≤ 2)
    ((h158ContourDecayRadius_ge_two n).trans hz)
  have hxpos : 0 < ‖z‖ := lt_of_lt_of_le zero_lt_one hx
  have hA : 0 ≤ A := h158EntryCoefficientNorm_nonneg n i j
  have hN : ‖aeval z P‖ ≤ A * ‖z‖ ^ P.natDegree := h158_norm_aeval_le_coefficientNorm P z hx
  have hd := h158_entry_numerator_degree_decay n i j
  have hDpos : 0 < ‖aeval z (h158Denominator n)‖ :=
    norm_pos_iff.mpr (h158_denominator_ne_zero_outside n z hz)
  rw [h158EntryComplex, norm_div]
  apply (div_le_div_iff₀ hDpos (pow_pos hxpos _)).mpr
  change ‖aeval z P‖ * ‖z‖ ^ (84 * n + 19) ≤ _
  calc
    _ ≤ (A * ‖z‖ ^ P.natDegree) * ‖z‖ ^ (84 * n + 19) :=
      mul_le_mul_of_nonneg_right hN (pow_nonneg (norm_nonneg _) _)
    _ = A * ‖z‖ ^ (P.natDegree + (84 * n + 19)) := by rw [pow_add]; ring
    _ ≤ A * ‖z‖ ^ (592 * n + 16) :=
      mul_le_mul_of_nonneg_left (pow_le_pow_right₀ hx hd) hA
    _ = (2 ^ (592 * n + 16) * A) * (‖z‖ / 2) ^ (592 * n + 16) := by
      rw [div_pow]
      field_simp
    _ ≤ h158ContourDecayConstant n * (‖z‖ / 2) ^ (592 * n + 16) := by
      apply mul_le_mul_of_nonneg_right _ (pow_nonneg (by positivity) _)
      exact mul_le_mul_of_nonneg_left (entry_coefficient_le_total n i j) (by positivity)
    _ ≤ h158ContourDecayConstant n * ‖aeval z (h158Denominator n)‖ :=
      mul_le_mul_of_nonneg_left (h158_denominator_norm_lower n z hz)
        (h158ContourDecayConstant_pos n).le

/-- The equivalent negative-integer-power formulation of the precise decay exponent. -/
theorem h158EntryComplex_norm_le_decay_zpow (n : ℕ) (i j : Fin (2 * n)) (z : ℂ)
    (hz : h158ContourDecayRadius n ≤ ‖z‖) :
    ‖h158EntryComplex n i j z‖ ≤
      h158ContourDecayConstant n * ‖z‖ ^ (-84 * (n : ℤ) - 19) := by
  have he : -84 * (n : ℤ) - 19 = -((84 * n + 19 : ℕ) : ℤ) := by push_cast; ring
  simpa only [he, zpow_neg, zpow_natCast, div_eq_mul_inv] using
    h158EntryComplex_norm_le_decay n i j z hz

private theorem sin_norm_sq (w : ℂ) :
    ‖Complex.sin w‖ ^ 2 = Real.sin w.re ^ 2 + Real.sinh w.im ^ 2 := by
  have hre : (Complex.sin w).re = Real.sin w.re * Real.cosh w.im := by
    rw [Complex.sin_eq]
    simp [← Complex.ofReal_sin, ← Complex.ofReal_cos,
      ← Complex.ofReal_sinh, ← Complex.ofReal_cosh]
  have him : (Complex.sin w).im = Real.cos w.re * Real.sinh w.im := by
    rw [Complex.sin_eq]
    simp [← Complex.ofReal_sin, ← Complex.ofReal_cos,
      ← Complex.ofReal_sinh, ← Complex.ofReal_cosh]
  rw [Complex.sq_norm, Complex.normSq_apply, hre, him]
  have hh := Real.cosh_sq w.im
  have ht := Real.sin_sq_add_cos_sq w.re
  linear_combination Real.sin w.re ^ 2 * hh + Real.sinh w.im ^ 2 * ht

/-- The trigonometric denominator is uniformly separated from zero on every
half-integer vertical edge, including the prescribed left contour. -/
theorem h158_sin_norm_ge_one_half_integer (q : ℤ) (z : ℂ)
    (hz : z.re = (q : ℝ) + 1 / 2) : 1 ≤ ‖Complex.sin ((Real.pi : ℂ) * z)‖ := by
  have hre : ((Real.pi : ℂ) * z).re = (q : ℝ) * Real.pi + Real.pi / 2 := by
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero, hz]
    ring
  have hsin : Real.sin (((Real.pi : ℂ) * z).re) ^ 2 = 1 := by
    rw [hre, Real.sin_add_pi_div_two, ← sq_abs, Real.abs_cos_int_mul_pi]
    norm_num
  have h := sin_norm_sq ((Real.pi : ℂ) * z)
  rw [hsin] at h
  nlinarith [sq_nonneg (Real.sinh (((Real.pi : ℂ) * z).im)),
    norm_nonneg (Complex.sin ((Real.pi : ℂ) * z))]

/-- The horizontal edges at height at least one also have a uniform denominator bound. -/
theorem h158_sin_norm_ge_one_of_im (z : ℂ) (hz : 1 ≤ |z.im|) :
    1 ≤ ‖Complex.sin ((Real.pi : ℂ) * z)‖ := by
  have him : |((Real.pi : ℂ) * z).im| = Real.pi * |z.im| := by
    simp [Complex.mul_im, abs_mul, Real.pi_pos.le]
  have hpi : 1 ≤ Real.pi := by linarith [Real.two_le_pi]
  have hw : 1 ≤ |((Real.pi : ℂ) * z).im| := by
    rw [him]
    nlinarith
  have hs : 1 ≤ |Real.sinh (((Real.pi : ℂ) * z).im)| := by
    rw [Real.abs_sinh]
    exact hw.trans (Real.self_le_sinh_iff.mpr (abs_nonneg _))
  have h := sin_norm_sq ((Real.pi : ℂ) * z)
  have hs2 : 1 ≤ Real.sinh (((Real.pi : ℂ) * z).im) ^ 2 := by
    nlinarith [sq_abs (Real.sinh (((Real.pi : ℂ) * z).im))]
  nlinarith [sq_nonneg (Real.sin (((Real.pi : ℂ) * z).re)),
    norm_nonneg (Complex.sin ((Real.pi : ℂ) * z))]

/-- A coarse absolute bound for the exact normalized fifth cotangent kernel. -/
theorem h158ContourKernel_norm_le (z : ℂ)
    (hz : 1 ≤ ‖Complex.sin ((Real.pi : ℂ) * z)‖) :
    ‖h158ContourKernel z‖ ≤ 4 * Real.pi ^ 5 := by
  let s := ‖Complex.sin ((Real.pi : ℂ) * z)‖
  let c := ‖Complex.cos ((Real.pi : ℂ) * z)‖
  have hs : 1 ≤ s := hz
  have hc : 0 ≤ c := norm_nonneg _
  have hcs : c ≤ 2 * s := by
    have he : Complex.cos ((Real.pi : ℂ) * z) ^ 2 =
        1 - Complex.sin ((Real.pi : ℂ) * z) ^ 2 := by
      linear_combination Complex.sin_sq_add_cos_sq ((Real.pi : ℂ) * z)
    have hb : c ^ 2 ≤ 1 + s ^ 2 := by
      change ‖Complex.cos ((Real.pi : ℂ) * z)‖ ^ 2 ≤
        1 + ‖Complex.sin ((Real.pi : ℂ) * z)‖ ^ 2
      rw [← norm_pow, he]
      have h := norm_sub_le (1 : ℂ) (Complex.sin ((Real.pi : ℂ) * z) ^ 2)
      rw [norm_one, Complex.norm_pow] at h
      exact h
    nlinarith
  have hs0 : Complex.sin ((Real.pi : ℂ) * z) ≠ 0 :=
    norm_pos_iff.mp (lt_of_lt_of_le zero_lt_one hz)
  rw [h158ContourKernel_eq z hs0, norm_div, norm_mul, norm_pow]
  simp only [Complex.norm_real, Real.norm_eq_abs, abs_of_pos Real.pi_pos,
    norm_mul, norm_pow, Complex.norm_ofNat]
  have hn : ‖Complex.cos ((Real.pi : ℂ) * z) ^ 3 +
      2 * Complex.cos ((Real.pi : ℂ) * z)‖ ≤ c ^ 3 + 2 * c := by
    have h := norm_add_le (Complex.cos ((Real.pi : ℂ) * z) ^ 3)
      (2 * Complex.cos ((Real.pi : ℂ) * z))
    rw [Complex.norm_pow, norm_mul] at h
    norm_num at h
    exact h
  apply (div_le_iff₀ (show 0 < 3 * s ^ 5 by positivity)).mpr
  calc
    _ ≤ Real.pi ^ 5 * (c ^ 3 + 2 * c) := mul_le_mul_of_nonneg_left hn (by positivity)
    _ ≤ Real.pi ^ 5 * ((2 * s) ^ 3 + 2 * (2 * s)) := by gcongr
    _ ≤ Real.pi ^ 5 * (12 * s ^ 5) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      have h3 : s ^ 3 ≤ s ^ 5 := pow_le_pow_right₀ hs (by omega)
      have h1 : s ≤ s ^ 5 := by simpa using pow_le_pow_right₀ hs (show 1 ≤ 5 by omega)
      nlinarith
    _ = _ := by ring

theorem h158ContourKernel_norm_le_half_integer (q : ℤ) (z : ℂ)
    (hz : z.re = (q : ℝ) + 1 / 2) : ‖h158ContourKernel z‖ ≤ 4 * Real.pi ^ 5 :=
  h158ContourKernel_norm_le z (h158_sin_norm_ge_one_half_integer q z hz)

theorem h158ContourKernel_norm_le_of_im (z : ℂ) (hz : 1 ≤ |z.im|) :
    ‖h158ContourKernel z‖ ≤ 4 * Real.pi ^ 5 :=
  h158ContourKernel_norm_le z (h158_sin_norm_ge_one_of_im z hz)

def h158ContourIntegrandDecayConstant (n : ℕ) : ℝ :=
  4 * Real.pi ^ 5 * h158ContourDecayConstant n

theorem h158ContourIntegrandDecayConstant_pos (n : ℕ) :
    0 < h158ContourIntegrandDecayConstant n := by
  unfold h158ContourIntegrandDecayConstant
  exact mul_pos (by positivity) (h158ContourDecayConstant_pos n)

theorem h158ContourIntegrand_norm_le_decay (n : ℕ) (i j : Fin (2 * n)) (z : ℂ)
    (hz : h158ContourDecayRadius n ≤ ‖z‖)
    (hs : 1 ≤ ‖Complex.sin ((Real.pi : ℂ) * z)‖) :
    ‖h158ContourIntegrand n i j z‖ ≤
      h158ContourIntegrandDecayConstant n / ‖z‖ ^ (84 * n + 19) := by
  rw [h158ContourIntegrand, norm_mul]
  calc
    _ ≤ (h158ContourDecayConstant n / ‖z‖ ^ (84 * n + 19)) * (4 * Real.pi ^ 5) :=
      mul_le_mul (h158EntryComplex_norm_le_decay n i j z hz)
        (h158ContourKernel_norm_le z hs) (norm_nonneg _)
        (div_nonneg (h158ContourDecayConstant_pos n).le (pow_nonneg (norm_nonneg _) _))
    _ = _ := by unfold h158ContourIntegrandDecayConstant; ring

private theorem integrand_norm_le_of_radius (n : ℕ) (i j : Fin (2 * n))
    (z : ℂ) (r : ℝ) (hr : h158ContourDecayRadius n ≤ r) (hz : r ≤ ‖z‖)
    (hs : 1 ≤ ‖Complex.sin ((Real.pi : ℂ) * z)‖) :
    ‖h158ContourIntegrand n i j z‖ ≤
      h158ContourIntegrandDecayConstant n / r ^ (84 * n + 19) := by
  have hr0 : 0 < r := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 2)
    ((h158ContourDecayRadius_ge_two n).trans hr)
  exact (h158ContourIntegrand_norm_le_decay n i j z (hr.trans hz) hs).trans
    (div_le_div_of_nonneg_left (h158ContourIntegrandDecayConstant_pos n).le
      (pow_pos hr0 _) (pow_le_pow_left₀ hr0.le hz _))

/-- Horizontal line integral oriented from `M` to the half-integer right edge. -/
def h158HorizontalClosingIntegral (n i j q : ℕ) (y : ℝ) : ℂ :=
  ∫ x in h158ContourAbscissa n..((q : ℝ) + 1 / 2),
    h158ContourIntegrand n i j ((x : ℂ) + (y : ℂ) * Complex.I)

/-- Right line integral oriented upward; the factor `I` is exactly `dz/dy`. -/
def h158RightClosingIntegral (n i j q : ℕ) : ℂ :=
  ∫ y in -(q : ℝ)..(q : ℝ),
    h158ContourIntegrand n i j (((q : ℂ) + 1 / 2) + (y : ℂ) * Complex.I) * Complex.I

theorem h158HorizontalClosing_integrable (n i j q : ℕ) (y : ℝ) (hy : y ≠ 0) :
    IntervalIntegrable
      (fun x : ℝ => h158ContourIntegrand n i j ((x : ℂ) + (y : ℂ) * Complex.I))
      MeasureTheory.volume (h158ContourAbscissa n) ((q : ℝ) + 1 / 2) := by
  have hM : h158ContourAbscissa n ≤ (q : ℝ) + 1 / 2 := by
    dsimp [h158ContourAbscissa]
    linarith [Nat.cast_nonneg (α := ℝ) n, Nat.cast_nonneg (α := ℝ) q]
  apply ContinuousOn.intervalIntegrable_of_Icc hM
  intro x hx
  have ha := h158ContourIntegrand_analyticAt n i j ((x : ℂ) + (y : ℂ) * Complex.I)
    (by simpa using hx.1) (h158_sin_ne_zero_of_im_ne_zero _ (by simpa using hy))
  have hg : ContinuousAt (fun t : ℝ => (t : ℂ) + (y : ℂ) * Complex.I) x := by fun_prop
  exact (ha.continuousAt.comp (f := fun t : ℝ => (t : ℂ) + (y : ℂ) * Complex.I)
    hg).continuousWithinAt

theorem h158RightClosing_integrable (n i j q : ℕ) :
    IntervalIntegrable
      (fun y : ℝ => h158ContourIntegrand n i j
        (((q : ℂ) + 1 / 2) + (y : ℂ) * Complex.I) * Complex.I)
      MeasureTheory.volume (-(q : ℝ)) (q : ℝ) := by
  apply Continuous.intervalIntegrable
  apply continuous_iff_continuousAt.mpr
  intro y
  have hM : h158ContourAbscissa n ≤
      (((q : ℂ) + 1 / 2) + (y : ℂ) * Complex.I).re := by
    simp [h158ContourAbscissa]
    linarith [Nat.cast_nonneg (α := ℝ) n, Nat.cast_nonneg (α := ℝ) q]
  have ha := h158ContourIntegrand_analyticAt n i j _ hM
    (h158_sin_ne_zero_on_half_integer (q : ℤ) _ (by simp))
  have hg : ContinuousAt (fun t : ℝ => ((q : ℂ) + 1 / 2) + (t : ℂ) * Complex.I) y := by
    fun_prop
  exact (ha.continuousAt.comp
    (f := fun t : ℝ => ((q : ℂ) + 1 / 2) + (t : ℂ) * Complex.I) hg).mul continuousAt_const

private theorem edge_bound_simplify (n : ℕ) (r : ℝ) (hr : 0 < r) :
    h158ContourIntegrandDecayConstant n / r ^ (84 * n + 19) * (2 * r) =
      2 * h158ContourIntegrandDecayConstant n / r ^ (84 * n + 18) := by
  rw [show 84 * n + 19 = (84 * n + 18) + 1 by omega, pow_succ]
  field_simp

/-- Each horizontal closing edge has length at most `2*q` and norm tending to zero. -/
theorem h158HorizontalClosingIntegral_norm_le (n : ℕ) (i j : Fin (2 * n))
    (q : ℕ) (hq : h158ContourDecayRadius n ≤ (q : ℝ)) (y : ℝ) (hy : |y| = q) :
    ‖h158HorizontalClosingIntegral n i j q y‖ ≤
      2 * h158ContourIntegrandDecayConstant n / (q : ℝ) ^ (84 * n + 18) := by
  have hq2 : (2 : ℝ) ≤ q := (h158ContourDecayRadius_ge_two n).trans hq
  have hq0 : (0 : ℝ) < q := by linarith
  have hlen : |((q : ℝ) + 1 / 2) - h158ContourAbscissa n| ≤ 2 * (q : ℝ) := by
    dsimp [h158ContourAbscissa, h158ContourDecayRadius] at *
    rw [abs_of_nonneg (by linarith [Nat.cast_nonneg (α := ℝ) n])]
    linarith [Nat.cast_nonneg (α := ℝ) n]
  unfold h158HorizontalClosingIntegral
  calc
    _ ≤ (h158ContourIntegrandDecayConstant n / (q : ℝ) ^ (84 * n + 19)) *
        |((q : ℝ) + 1 / 2) - h158ContourAbscissa n| := by
      apply intervalIntegral.norm_integral_le_of_norm_le_const
      intro x _
      apply integrand_norm_le_of_radius n i j _ (q : ℝ) hq
      · simpa [hy] using Complex.abs_im_le_norm ((x : ℂ) + (y : ℂ) * Complex.I)
      · apply h158_sin_norm_ge_one_of_im
        simpa [hy] using (show (1 : ℝ) ≤ q by linarith)
    _ ≤ (h158ContourIntegrandDecayConstant n / (q : ℝ) ^ (84 * n + 19)) * (2 * (q : ℝ)) :=
      mul_le_mul_of_nonneg_left hlen (div_nonneg
        (h158ContourIntegrandDecayConstant_pos n).le (pow_nonneg (Nat.cast_nonneg q) _))
    _ = _ := edge_bound_simplify n q hq0

theorem h158RightClosingIntegral_norm_le (n : ℕ) (i j : Fin (2 * n))
    (q : ℕ) (hq : h158ContourDecayRadius n ≤ (q : ℝ)) :
    ‖h158RightClosingIntegral n i j q‖ ≤
      2 * h158ContourIntegrandDecayConstant n / (q : ℝ) ^ (84 * n + 18) := by
  have hq2 : (2 : ℝ) ≤ q := (h158ContourDecayRadius_ge_two n).trans hq
  have hq0 : (0 : ℝ) < q := by linarith
  unfold h158RightClosingIntegral
  calc
    _ ≤ (h158ContourIntegrandDecayConstant n / (q : ℝ) ^ (84 * n + 19)) *
        |(q : ℝ) - -(q : ℝ)| := by
      apply intervalIntegral.norm_integral_le_of_norm_le_const
      intro y _
      rw [norm_mul, Complex.norm_I, mul_one]
      apply integrand_norm_le_of_radius n i j _ (q : ℝ) hq
      · have h : (q : ℝ) + 1 / 2 ≤
            ‖((q : ℂ) + 1 / 2) + (y : ℂ) * Complex.I‖ := by
          simpa using Complex.re_le_norm (((q : ℂ) + 1 / 2) + (y : ℂ) * Complex.I)
        linarith
      · exact h158_sin_norm_ge_one_half_integer (q : ℤ) _ (by simp)
    _ = _ := by
      rw [show |(q : ℝ) - -(q : ℝ)| = 2 * (q : ℝ) by
        rw [sub_neg_eq_add, abs_of_nonneg (by positivity)]; ring]
      exact edge_bound_simplify n q hq0

theorem h158HorizontalClosingIntegral_tendsto_zero (n : ℕ) (i j : Fin (2 * n))
    (y : ℕ → ℝ) (hy : ∀ q, |y q| = q) :
    Tendsto (fun q => h158HorizontalClosingIntegral n i j q (y q)) atTop (𝓝 0) := by
  apply squeeze_zero_norm' (a := fun q : ℕ =>
    2 * h158ContourIntegrandDecayConstant n / (q : ℝ) ^ (84 * n + 18))
  · filter_upwards [tendsto_natCast_atTop_atTop.eventually
      (eventually_ge_atTop (h158ContourDecayRadius n))] with q hq
    exact h158HorizontalClosingIntegral_norm_le n i j q hq (y q) (hy q)
  · exact tendsto_const_div_pow _ _ (by omega)

theorem h158RightClosingIntegral_tendsto_zero (n : ℕ) (i j : Fin (2 * n)) :
    Tendsto (h158RightClosingIntegral n i j) atTop (𝓝 0) := by
  apply squeeze_zero_norm' (a := fun q : ℕ =>
    2 * h158ContourIntegrandDecayConstant n / (q : ℝ) ^ (84 * n + 18))
  · filter_upwards [tendsto_natCast_atTop_atTop.eventually
      (eventually_ge_atTop (h158ContourDecayRadius n))] with q hq
    exact h158RightClosingIntegral_norm_le n i j q hq
  · exact tendsto_const_div_pow _ _ (by omega)

/-- The actual three closing edges of the clockwise rectangles vanish. This is
only a closing-edge limit, not an assumption or proof of the contour representation. -/
theorem h158ClosingEdges_tendsto_zero (n : ℕ) (i j : Fin (2 * n)) :
    Tendsto (fun q : ℕ => h158HorizontalClosingIntegral n i j q (q : ℝ) -
      h158RightClosingIntegral n i j q -
      h158HorizontalClosingIntegral n i j q (-(q : ℝ))) atTop (𝓝 0) := by
  have hu := h158HorizontalClosingIntegral_tendsto_zero n i j
    (fun q : ℕ => (q : ℝ)) (by intro q; simp)
  have hl := h158HorizontalClosingIntegral_tendsto_zero n i j
    (fun q : ℕ => -(q : ℝ)) (by intro q; simp)
  simpa only [sub_zero] using (hu.sub (h158RightClosingIntegral_tendsto_zero n i j)).sub hl

end OddZetaMixed
