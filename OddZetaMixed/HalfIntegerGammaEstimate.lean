import OddZetaMixed.HalfIntegerGamma
import OddZetaMixed.LogQuadraticMidpoint

/-!
# Uniform elementary half-integer Gamma estimates

Exact reflection and recurrence identities are combined with the proved
finite midpoint error. The bounds are uniform on the whole vertical line,
including height zero. No asymptotic or density bound is an input.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset Complex
open scoped ComplexConjugate

/-- The real main term for `log norm Gamma (x + 1/2 + I*y)`. -/
def halfIntegerGammaMain (x y : ℝ) : ℝ :=
  x*Real.log (x^2+y^2)/2-x-y*Real.arctan (y/x)+Real.log (2*Real.pi)/2

/-- The scale-independent part of the main term. -/
def halfIntegerGammaPhase (a s : ℝ) : ℝ :=
  a*Real.log (a^2+s^2)/2-a-s*Real.arctan (s/a)

theorem halfIntegerGammaPhase_neg (a s : ℝ) :
    halfIntegerGammaPhase a (-s) = halfIntegerGammaPhase a s := by
  simp [halfIntegerGammaPhase, neg_div, Real.arctan_neg]

theorem halfIntegerGammaMain_neg (x y : ℝ) :
    halfIntegerGammaMain x (-y) = halfIntegerGammaMain x y := by
  simp [halfIntegerGammaMain, neg_div, Real.arctan_neg]

/-- Conjugation gives even Gamma norms at every real part. -/
theorem gamma_norm_real_add_imaginary_neg (x y : ℝ) :
    ‖Complex.Gamma ((x : ℂ)+((-y : ℝ) : ℂ)*I)‖ =
      ‖Complex.Gamma ((x : ℂ)+(y : ℂ)*I)‖ := by
  have h : (x : ℂ)+((-y : ℝ) : ℂ)*I = conj ((x : ℂ)+(y : ℂ)*I) := by
    simp
  rw [h, Complex.Gamma_conj, Complex.norm_conj]

theorem norm_real_add_imaginary_neg (x y : ℝ) :
    ‖(x : ℂ)+((-y : ℝ) : ℂ)*I‖ = ‖(x : ℂ)+(y : ℂ)*I‖ := by
  have h : (x : ℂ)+((-y : ℝ) : ℂ)*I = conj ((x : ℂ)+(y : ℂ)*I) := by simp
  rw [h, Complex.norm_conj]

theorem log_gamma_half_add_nat_norm_neg (m : ℕ) (y : ℝ) :
    Real.log ‖Complex.Gamma ((m : ℂ)+1/2+((-y : ℝ) : ℂ)*I)‖ =
      Real.log ‖Complex.Gamma ((m : ℂ)+1/2+(y : ℂ)*I)‖ := by
  have h := gamma_norm_real_add_imaginary_neg ((m : ℝ)+1/2) y
  push_cast at h
  simpa only [Complex.ofReal_neg] using congrArg Real.log h

private theorem log_cosh_bounds (t : ℝ) (ht : 0 ≤ t) :
    t-Real.log 2 ≤ Real.log (Real.cosh t) ∧ Real.log (Real.cosh t) ≤ t := by
  have he := Real.exp_le_exp.mpr (show -t ≤ t by linarith)
  have hl := Real.log_le_log (show 0 < Real.exp t/2 by positivity)
    (show Real.exp t/2 ≤ Real.cosh t by
      rw [Real.cosh_eq]
      linarith [Real.exp_pos (-t)])
  have hu := Real.log_le_log (Real.cosh_pos t)
    (show Real.cosh t ≤ Real.exp t by rw [Real.cosh_eq]; linarith)
  rw [Real.log_div (Real.exp_ne_zero t) (by norm_num : (2 : ℝ) ≠ 0),
    Real.log_exp] at hl
  rw [Real.log_exp] at hu
  exact ⟨hl, hu⟩

private theorem log_cosh_correction_abs_le (t : ℝ) (ht : 0 ≤ t) :
    |(t-Real.log (Real.cosh t)-Real.log 2)/2| ≤ 1 := by
  have hb := log_cosh_bounds t ht
  have h2 := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- Exact decomposition exposing the already-proved finite midpoint error. -/
theorem log_gamma_half_add_nat_norm_eq_main_add_error
    (m : ℕ) (hm : 1 ≤ m) (y : ℝ) (hy : 0 ≤ y) :
    Real.log ‖Complex.Gamma ((m : ℂ)+1/2+(y : ℂ)*I)‖ =
      halfIntegerGammaMain m y+logQuadraticMidpointError m y+
        (Real.pi*y-Real.log (Real.cosh (Real.pi*y))-Real.log 2)/2 := by
  rw [log_gamma_half_add_nat_norm]
  unfold halfIntegerGammaMain logQuadraticMidpointError
  rw [integral_logQuadratic_eq_phase y m hy
    (by exact_mod_cast (show 0 < m by omega))]
  simp only [logQuadratic, ← sum_div]
  rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) Real.pi_ne_zero]
  ring

theorem log_gamma_half_add_nat_norm_estimate_of_nonneg
    (m : ℕ) (hm : 1 ≤ m) (y : ℝ) (hy : 0 ≤ y) :
    |Real.log ‖Complex.Gamma ((m : ℂ)+1/2+(y : ℂ)*I)‖-
      halfIntegerGammaMain m y| ≤ 2+Real.log (m : ℝ) := by
  rw [log_gamma_half_add_nat_norm_eq_main_add_error m hm y hy]
  have he := logQuadraticMidpointError_abs_le m hm y
  have hc := log_cosh_correction_abs_le (Real.pi*y) (mul_nonneg Real.pi_pos.le hy)
  have htri := abs_add_le (logQuadraticMidpointError m y)
    ((Real.pi*y-Real.log (Real.cosh (Real.pi*y))-Real.log 2)/2)
  convert! (htri.trans (add_le_add he hc)) using 1
  · congr 1
    ring
  · ring

/-- Uniform in all real heights, by conjugation on the negative half-line. -/
theorem log_gamma_half_add_nat_norm_estimate (m : ℕ) (hm : 1 ≤ m) (y : ℝ) :
    |Real.log ‖Complex.Gamma ((m : ℂ)+1/2+(y : ℂ)*I)‖-
      halfIntegerGammaMain m y| ≤ 2+Real.log (m : ℝ) := by
  by_cases hy : 0 ≤ y
  · exact log_gamma_half_add_nat_norm_estimate_of_nonneg m hm y hy
  · have h := log_gamma_half_add_nat_norm_estimate_of_nonneg m hm (-y) (by linarith)
    rwa [log_gamma_half_add_nat_norm_neg, halfIntegerGammaMain_neg] at h

theorem log_norm_real_add_imaginary (x y : ℝ) :
    Real.log ‖(x : ℂ)+(y : ℂ)*I‖ = logQuadratic y x := by
  have hsq : ‖(x : ℂ)+(y : ℂ)*I‖^2 = x^2+y^2 := by
    rw [Complex.sq_norm]
    simp [Complex.normSq_apply, pow_two]
  have h := congrArg Real.log hsq
  rw [Real.log_pow] at h
  unfold logQuadratic
  norm_num at h
  linarith

/-- A half-unit shift changes the log norm by at most one for real part at least one. -/
theorem log_norm_half_shift_bounds (x y : ℝ) (hx : 1 ≤ x) :
    0 ≤ Real.log ‖((x+1/2 : ℝ) : ℂ)+(y : ℂ)*I‖-
      Real.log ‖(x : ℂ)+(y : ℂ)*I‖ ∧
    Real.log ‖((x+1/2 : ℝ) : ℂ)+(y : ℂ)*I‖-
      Real.log ‖(x : ℂ)+(y : ℂ)*I‖ ≤ 1 := by
  rw [log_norm_real_add_imaginary, log_norm_real_add_imaginary]
  have hx0 : 0 < x := by linarith
  have hl := logQuadratic_monotoneOn y hx0
    (show 0 < x+1/2 by linarith) (show x ≤ x+1/2 by linarith)
  have hu := Real.log_le_log (show 0 < (x+1/2)^2+y^2 by positivity)
    (show (x+1/2)^2+y^2 ≤ 4*(x^2+y^2) by nlinarith [sq_nonneg y])
  rw [Real.log_mul (by norm_num : (4 : ℝ) ≠ 0) (by positivity : x^2+y^2 ≠ 0)] at hu
  have h4 : Real.log (4 : ℝ) = 2*Real.log 2 := by
    rw [show (4 : ℝ) = 2^2 by norm_num, Real.log_pow]
    norm_num
  have h2 := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
  rw [h4] at hu
  unfold logQuadratic at hl ⊢
  constructor <;> linarith

/-- Exact recurrence with the positive half-unit norm factor kept explicit. -/
theorem log_gamma_three_half_add_nat_norm (m : ℕ) (y : ℝ) :
    Real.log ‖Complex.Gamma ((m : ℂ)+3/2+(y : ℂ)*I)‖ =
      Real.log ‖Complex.Gamma ((m : ℂ)+1/2+(y : ℂ)*I)‖+
        Real.log ‖(m : ℂ)+1/2+(y : ℂ)*I‖ := by
  have hre : 0 < ((m : ℂ)+1/2+(y : ℂ)*I).re := by
    simp
    positivity
  have hz : (m : ℂ)+1/2+(y : ℂ)*I ≠ 0 := by
    intro h
    rw [h] at hre
    simp at hre
  have hg : Complex.Gamma ((m : ℂ)+1/2+(y : ℂ)*I) ≠ 0 :=
    Complex.Gamma_ne_zero_of_re_pos hre
  have harg : (m : ℂ)+3/2+(y : ℂ)*I = ((m : ℂ)+1/2+(y : ℂ)*I)+1 := by ring
  rw [harg, Complex.Gamma_add_one _ hz, norm_mul,
    Real.log_mul (norm_ne_zero_iff.mpr hz) (norm_ne_zero_iff.mpr hg)]
  ring

/-- The shifted estimate subtracts `log norm (m + I*y)`, not the half-shifted norm. -/
theorem log_gamma_three_half_add_nat_norm_estimate
    (m : ℕ) (hm : 1 ≤ m) (y : ℝ) :
    |Real.log ‖Complex.Gamma ((m : ℂ)+3/2+(y : ℂ)*I)‖-
      (halfIntegerGammaMain m y+Real.log ‖(m : ℂ)+(y : ℂ)*I‖)| ≤
        3+Real.log (m : ℝ) := by
  have he := log_gamma_half_add_nat_norm_estimate m hm y
  have hs := log_norm_half_shift_bounds m y (by exact_mod_cast hm)
  push_cast at hs
  have hsabs : |Real.log ‖(m : ℂ)+1/2+(y : ℂ)*I‖-
      Real.log ‖(m : ℂ)+(y : ℂ)*I‖| ≤ 1 :=
    abs_le.mpr ⟨by linarith [hs.1], hs.2⟩
  rw [log_gamma_three_half_add_nat_norm]
  have htri := abs_add_le
    (Real.log ‖Complex.Gamma ((m : ℂ)+1/2+(y : ℂ)*I)‖-halfIntegerGammaMain m y)
    (Real.log ‖(m : ℂ)+1/2+(y : ℂ)*I‖-Real.log ‖(m : ℂ)+(y : ℂ)*I‖)
  convert! (htri.trans (add_le_add he hsabs)) using 1
  · congr 1
    ring
  · ring

/-- Exact scaling of the real main term; no limiting process is involved. -/
theorem halfIntegerGammaMain_mul (a n s : ℝ) (ha : 0 < a) (hn : 0 < n) :
    halfIntegerGammaMain (a*n) (n*s) =
      n*(a*Real.log n+halfIntegerGammaPhase a s)+Real.log (2*Real.pi)/2 := by
  have hq : (a*n)^2+(n*s)^2 = n^2*(a^2+s^2) := by ring
  have hr : n*s/(a*n) = s/a := by field_simp
  unfold halfIntegerGammaMain halfIntegerGammaPhase
  rw [hq, hr, Real.log_mul (pow_ne_zero _ hn.ne') (by positivity : a^2+s^2 ≠ 0),
    Real.log_pow]
  ring

/-- Exact scaling of the additional norm prefactor in the three-half shift. -/
theorem log_norm_real_add_imaginary_mul (a n s : ℝ) (ha : 0 < a) (hn : 0 < n) :
    Real.log ‖((a*n : ℝ) : ℂ)+((n*s : ℝ) : ℂ)*I‖ =
      Real.log n+Real.log ‖(a : ℂ)+(s : ℂ)*I‖ := by
  have hz : (a : ℂ)+(s : ℂ)*I ≠ 0 := by
    intro h
    have hr := congrArg Complex.re h
    simp at hr
    linarith
  have harg : ((a*n : ℝ) : ℂ)+((n*s : ℝ) : ℂ)*I =
      (n : ℂ)*((a : ℂ)+(s : ℂ)*I) := by push_cast; ring
  rw [harg, norm_mul, Complex.norm_of_nonneg hn.le,
    Real.log_mul hn.ne' (norm_ne_zero_iff.mpr hz)]

/-- The half-shift estimate at `m = a*n`, uniform for every real scaled height. -/
theorem log_gamma_half_mul_norm_estimate (a n : ℕ) (ha : 1 ≤ a) (hn : 1 ≤ n)
    (s : ℝ) :
    |Real.log ‖Complex.Gamma ((a : ℂ)*(n : ℂ)+1/2+(n : ℂ)*(s : ℂ)*I)‖-
      ((n : ℝ)*((a : ℝ)*Real.log (n : ℝ)+halfIntegerGammaPhase a s)+
        Real.log (2*Real.pi)/2)| ≤ 2+Real.log (a : ℝ)+Real.log (n : ℝ) := by
  have haR : (0 : ℝ) < a := by exact_mod_cast (show 0 < a by omega)
  have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have h := log_gamma_half_add_nat_norm_estimate (a*n)
    (Nat.mul_pos (by omega) (by omega)) ((n : ℝ)*s)
  push_cast at h
  rw [halfIntegerGammaMain_mul (a : ℝ) n s haR hnR,
    Real.log_mul haR.ne' hnR.ne'] at h
  simpa only [add_assoc] using h

/-- The three-half shift includes the exact extra `log n + log norm (a + I*s)`. -/
theorem log_gamma_three_half_mul_norm_estimate
    (a n : ℕ) (ha : 1 ≤ a) (hn : 1 ≤ n) (s : ℝ) :
    |Real.log ‖Complex.Gamma ((a : ℂ)*(n : ℂ)+3/2+(n : ℂ)*(s : ℂ)*I)‖-
      ((n : ℝ)*((a : ℝ)*Real.log (n : ℝ)+halfIntegerGammaPhase a s)+
        Real.log (2*Real.pi)/2+Real.log (n : ℝ)+
          Real.log ‖(a : ℂ)+(s : ℂ)*I‖)| ≤
            3+Real.log (a : ℝ)+Real.log (n : ℝ) := by
  have haR : (0 : ℝ) < a := by exact_mod_cast (show 0 < a by omega)
  have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have h := log_gamma_three_half_add_nat_norm_estimate (a*n)
    (Nat.mul_pos (by omega) (by omega)) ((n : ℝ)*s)
  have hp := log_norm_real_add_imaginary_mul (a : ℝ) n s haR hnR
  push_cast at h hp
  rw [halfIntegerGammaMain_mul (a : ℝ) n s haR hnR, hp,
    Real.log_mul haR.ne' hnR.ne'] at h
  simpa only [add_assoc] using h

end OddZetaMixed
