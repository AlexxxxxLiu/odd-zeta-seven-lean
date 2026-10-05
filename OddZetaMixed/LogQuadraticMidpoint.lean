import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv
import Mathlib.Tactic

/-!
# Uniform finite midpoint error for a quadratic logarithm

The first cell is compared with `log x`; subsequent errors are bounded by
endpoint increments, which telescope. No asymptotic or Gamma estimate is an
input, and the logarithmic singularity at height zero is treated explicitly.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset MeasureTheory

/-- The real logarithm of the modulus of `x + I*y`. -/
def logQuadratic (y x : ℝ) : ℝ := Real.log (x^2+y^2)/2

/-- The finite midpoint sum minus its integral, with unit cell width. -/
def logQuadraticMidpointError (m : ℕ) (y : ℝ) : ℝ :=
  (∑ j ∈ range m, logQuadratic y ((j : ℝ)+1/2)) -
    ∫ x : ℝ in 0..(m : ℝ), logQuadratic y x

@[simp] theorem logQuadratic_zero (x : ℝ) : logQuadratic 0 x = Real.log x := by
  simp [logQuadratic, Real.log_pow]

theorem logQuadratic_continuous (y : ℝ) (hy : y ≠ 0) :
    Continuous (logQuadratic y) := by
  unfold logQuadratic
  apply Continuous.div_const
  apply Continuous.log ((continuous_id.pow 2).add continuous_const)
  intro x
  change x^2+y^2 ≠ 0
  have hy2 : 0 < y^2 := sq_pos_of_ne_zero hy
  positivity

/-- Integrability includes height zero, where the integrand is `log x`. -/
theorem logQuadratic_intervalIntegrable (y a b : ℝ) :
    IntervalIntegrable (logQuadratic y) volume a b := by
  by_cases hy : y = 0
  · subst y
    simpa only [show logQuadratic 0 = Real.log from funext logQuadratic_zero] using
      (intervalIntegral.intervalIntegrable_log' (a := a) (b := b))
  · exact (logQuadratic_continuous y hy).intervalIntegrable a b

theorem logQuadratic_monotoneOn (y : ℝ) :
    MonotoneOn (logQuadratic y) (Set.Ioi 0) := by
  intro x hx z hz hxz
  change 0 < x at hx
  change 0 < z at hz
  unfold logQuadratic
  apply div_le_div_of_nonneg_right _ (by norm_num : (0 : ℝ) ≤ 2)
  apply Real.log_le_log (by positivity)
  nlinarith

/-- A comparison valid on the first cell, excluding only the singular endpoint. -/
theorem logQuadratic_firstCell_lower (y x : ℝ) (hx : 0 < x) (hx1 : x ≤ 1) :
    logQuadratic y 1+Real.log x ≤ logQuadratic y x := by
  have hx2 : (x : ℝ)^2 ≠ 0 := pow_ne_zero _ hx.ne'
  have hy2 : (1 : ℝ)+y^2 ≠ 0 := by positivity
  have h := Real.log_le_log (show 0 < x^2*(1+y^2) by positivity)
    (show x^2*(1+y^2) ≤ x^2+y^2 by
      have hxs : x^2 ≤ 1 := by nlinarith
      nlinarith [mul_nonneg (sub_nonneg.mpr hxs) (sq_nonneg y)])
  rw [Real.log_mul hx2 hy2, Real.log_pow] at h
  norm_num only [logQuadratic, one_pow, Nat.cast_ofNat] at h ⊢
  linarith

theorem logQuadratic_firstCell_integral_bounds (y : ℝ) :
    logQuadratic y 1-1 ≤ (∫ x : ℝ in 0..1, logQuadratic y x) ∧
      (∫ x : ℝ in 0..1, logQuadratic y x) ≤ logQuadratic y 1 := by
  have hlog : IntervalIntegrable Real.log volume (0 : ℝ) 1 :=
    intervalIntegral.intervalIntegrable_log'
  have hl := intervalIntegral.integral_mono_on_of_le_Ioo
    (by norm_num : (0 : ℝ) ≤ 1) (intervalIntegrable_const.add hlog)
    (logQuadratic_intervalIntegrable y 0 1)
    (fun x hx => logQuadratic_firstCell_lower y x hx.1 hx.2.le)
  have hu := intervalIntegral.integral_mono_on_of_le_Ioo
    (by norm_num : (0 : ℝ) ≤ 1) (logQuadratic_intervalIntegrable y 0 1)
    (intervalIntegrable_const (c := logQuadratic y 1))
    (fun x hx => logQuadratic_monotoneOn y hx.1 (by norm_num) hx.2.le)
  rw [intervalIntegral.integral_add intervalIntegrable_const hlog] at hl
  simp only [intervalIntegral.integral_const, sub_zero, one_smul,
    integral_log, Real.log_one, Real.log_zero, mul_zero, sub_self, zero_sub,
    add_zero] at hl hu
  constructor <;> linarith

theorem logQuadraticMidpointError_one (y : ℝ) :
    |logQuadraticMidpointError 1 y| ≤ 1 := by
  have hi := logQuadratic_firstCell_integral_bounds y
  have hl := logQuadratic_firstCell_lower y (1/2) (by norm_num) (by norm_num)
  have hu := logQuadratic_monotoneOn y (a := 1/2) (b := 1)
    (by norm_num) (by norm_num) (by norm_num)
  have hlog : -(1 : ℝ) ≤ Real.log (1/2) := by
    rw [Real.log_div (by norm_num : (1 : ℝ) ≠ 0) (by norm_num : (2 : ℝ) ≠ 0)]
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    norm_num at h ⊢
    linarith
  simp only [logQuadraticMidpointError, sum_range_one, Nat.cast_zero, zero_add,
    Nat.cast_one]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- Each positive unit cell costs no more than its endpoint increment. -/
theorem logQuadratic_cell_error (y a : ℝ) (ha : 0 < a) :
    |logQuadratic y (a+1/2)-(∫ x : ℝ in a..a+1, logQuadratic y x)| ≤
      logQuadratic y (a+1)-logQuadratic y a := by
  have hf := logQuadratic_intervalIntegrable y a (a+1)
  have hl := intervalIntegral.integral_mono_on (by linarith : a ≤ a+1)
    (intervalIntegrable_const (c := logQuadratic y a)) hf
    (fun x hx => logQuadratic_monotoneOn y ha
      (show 0 < x by linarith [hx.1]) hx.1)
  have hu := intervalIntegral.integral_mono_on (by linarith : a ≤ a+1) hf
    (intervalIntegrable_const (c := logQuadratic y (a+1)))
    (fun x hx => logQuadratic_monotoneOn y (show 0 < x by linarith [hx.1])
      (show 0 < a+1 by linarith) hx.2)
  simp only [intervalIntegral.integral_const, add_sub_cancel_left, one_smul] at hl hu
  have hml := logQuadratic_monotoneOn y ha (by linarith : 0 < a+1/2)
    (by linarith : a ≤ a+1/2)
  have hmu := logQuadratic_monotoneOn y (by linarith : 0 < a+1/2)
    (by linarith : 0 < a+1) (by linarith : a+1/2 ≤ a+1)
  exact abs_le.mpr ⟨by linarith, by linarith⟩

theorem logQuadraticMidpointError_succ (m : ℕ) (y : ℝ) :
    logQuadraticMidpointError (m+1) y = logQuadraticMidpointError m y +
      (logQuadratic y ((m : ℝ)+1/2)-
        ∫ x : ℝ in (m : ℝ)..(m : ℝ)+1, logQuadratic y x) := by
  unfold logQuadraticMidpointError
  rw [sum_range_succ, Nat.cast_add, Nat.cast_one,
    ← intervalIntegral.integral_add_adjacent_intervals
      (logQuadratic_intervalIntegrable y 0 m)
      (logQuadratic_intervalIntegrable y m (m+1))]
  ring

theorem logQuadraticMidpointError_le_variation (m : ℕ) (hm : 1 ≤ m) (y : ℝ) :
    |logQuadraticMidpointError m y| ≤ 1+logQuadratic y m-logQuadratic y 1 := by
  induction m, hm using Nat.le_induction with
  | base => simpa using logQuadraticMidpointError_one y
  | succ m hm ih =>
    have hmR : (0 : ℝ) < m := by exact_mod_cast (show 0 < m by omega)
    rw [logQuadraticMidpointError_succ]
    calc
      _ ≤ |logQuadraticMidpointError m y|+
          |logQuadratic y ((m : ℝ)+1/2)-
            ∫ x : ℝ in (m : ℝ)..(m : ℝ)+1, logQuadratic y x| := abs_add_le _ _
      _ ≤ (1+logQuadratic y m-logQuadratic y 1)+
          (logQuadratic y ((m : ℝ)+1)-logQuadratic y m) :=
        add_le_add ih (logQuadratic_cell_error y m hmR)
      _ = _ := by push_cast; ring

theorem logQuadratic_variation_le_log (y x : ℝ) (hx : 1 ≤ x) :
    logQuadratic y x-logQuadratic y 1 ≤ Real.log x := by
  have hx0 : 0 < x := by linarith
  have h := Real.log_le_log (show 0 < x^2+y^2 by positivity)
    (show x^2+y^2 ≤ x^2*(1+y^2) by
      have hxs : 1 ≤ x^2 := by nlinarith
      nlinarith [mul_nonneg (sub_nonneg.mpr hxs) (sq_nonneg y)])
  rw [Real.log_mul (pow_ne_zero _ hx0.ne') (by positivity : 1+y^2 ≠ 0),
    Real.log_pow] at h
  norm_num only [logQuadratic, one_pow, Nat.cast_ofNat] at h ⊢
  linarith

/-- A fully uniform finite estimate, in fact valid for every real height. -/
theorem logQuadraticMidpointError_abs_le (m : ℕ) (hm : 1 ≤ m) (y : ℝ) :
    |logQuadraticMidpointError m y| ≤ 1+Real.log (m : ℝ) := by
  have h := logQuadraticMidpointError_le_variation m hm y
  have hv := logQuadratic_variation_le_log y m (by exact_mod_cast hm)
  linarith

theorem logQuadratic_hasDerivAt (y x : ℝ) (h : x^2+y^2 ≠ 0) :
    HasDerivAt (logQuadratic y) (x/(x^2+y^2)) x := by
  have hd := ((((hasDerivAt_id x).pow 2).add_const (y^2)).log h).div_const 2
  convert! hd using 1
  simp only [Pi.pow_apply, id_eq, Nat.cast_ofNat,
    Nat.reduceSub, pow_one, mul_one]
  ring

private theorem logQuadratic_primitive_hasDerivAt (y x : ℝ) (hy : y ≠ 0) :
    HasDerivAt (fun t : ℝ => t*logQuadratic y t-t+y*Real.arctan (t/y))
      (logQuadratic y x) x := by
  have hy2 : 0 < y^2 := sq_pos_of_ne_zero hy
  have hden : x^2+y^2 ≠ 0 := by positivity
  have hd := (((hasDerivAt_id x).mul (logQuadratic_hasDerivAt y x hden)).sub
    (hasDerivAt_id x)).add (((hasDerivAt_id x).div_const y).arctan.const_mul y)
  convert! hd using 1
  simp only [id_eq, one_mul]
  field_simp
  nlinarith [sq_nonneg x]

/-- The height-zero integral is evaluated without assuming continuity at zero. -/
theorem integral_logQuadratic_zero (b : ℝ) :
    (∫ x : ℝ in 0..b, logQuadratic 0 x) = b*Real.log b-b := by
  simp only [logQuadratic_zero, integral_log, Real.log_zero, zero_mul, sub_zero,
    add_zero]

/-- Exact elementary evaluation, including height zero (and even signed heights). -/
theorem integral_logQuadratic (y b : ℝ) :
    (∫ x : ℝ in 0..b, logQuadratic y x) =
      b*logQuadratic y b-b+y*Real.arctan (b/y) := by
  by_cases hy : y = 0
  · subst y
    simp
  · have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ => logQuadratic_primitive_hasDerivAt y x hy)
      (logQuadratic_intervalIntegrable y 0 b)
    simpa using h

/-- The reciprocal-arctangent form used by the half-integer Gamma phase. -/
theorem integral_logQuadratic_eq_phase (y b : ℝ) (hy : 0 ≤ y) (hb : 0 < b) :
    (∫ x : ℝ in 0..b, logQuadratic y x) =
      b*logQuadratic y b-b-y*Real.arctan (y/b)+Real.pi*y/2 := by
  rw [integral_logQuadratic]
  rcases eq_or_lt_of_le hy with hy | hy
  · rw [← hy]
    simp
  · have h : Real.arctan (b/y) = Real.pi/2-Real.arctan (y/b) := by
      simpa only [inv_div] using Real.arctan_inv_of_pos (div_pos hy hb)
    rw [h]
    ring

/-- The uniform estimate with its elementary integral written out explicitly. -/
theorem logQuadratic_midpoint_sum_abs_le (m : ℕ) (hm : 1 ≤ m) (y : ℝ) :
    |(∑ j ∈ range m, Real.log (((j : ℝ)+1/2)^2+y^2)/2) -
      ((m : ℝ)*Real.log ((m : ℝ)^2+y^2)/2-(m : ℝ)+
        y*Real.arctan ((m : ℝ)/y))| ≤ 1+Real.log (m : ℝ) := by
  have h := logQuadraticMidpointError_abs_le m hm y
  rw [logQuadraticMidpointError, integral_logQuadratic] at h
  simpa only [logQuadratic, mul_div_assoc] using h

/-- The singular height has the same proved bound, with no limiting argument. -/
theorem log_midpoint_sum_abs_le (m : ℕ) (hm : 1 ≤ m) :
    |(∑ j ∈ range m, Real.log ((j : ℝ)+1/2)) -
      ((m : ℝ)*Real.log (m : ℝ)-(m : ℝ))| ≤ 1+Real.log (m : ℝ) := by
  have h := logQuadraticMidpointError_abs_le m hm 0
  simpa only [logQuadraticMidpointError, logQuadratic_zero,
    integral_log, Real.log_zero, zero_mul, sub_zero, add_zero] using h

theorem logQuadraticMidpointError_one_zero :
    logQuadraticMidpointError 1 0 = 1-Real.log 2 := by
  simp [logQuadraticMidpointError]
  ring

/-- The midpoint sum as the logarithm of the positive quadratic product. -/
theorem logQuadratic_midpoint_sum_eq_log_prod (m : ℕ) (y : ℝ) :
    (∑ j ∈ range m, logQuadratic y ((j : ℝ)+1/2)) =
      Real.log (∏ j ∈ range m, (((j : ℝ)+1/2)^2+y^2))/2 := by
  rw [Real.log_prod (fun j _ => by positivity)]
  simp only [logQuadratic, sum_div]

/-- A finite log-product estimate, uniform also at height zero. -/
theorem logQuadratic_log_prod_integral_abs_le (m : ℕ) (hm : 1 ≤ m) (y : ℝ) :
    |Real.log (∏ j ∈ range m, (((j : ℝ)+1/2)^2+y^2))/2 -
      (∫ x : ℝ in 0..(m : ℝ), logQuadratic y x)| ≤ 1+Real.log (m : ℝ) := by
  rw [← logQuadratic_midpoint_sum_eq_log_prod]
  exact logQuadraticMidpointError_abs_le m hm y

/-- The same log-product estimate with the exact arctangent main term. -/
theorem logQuadratic_log_prod_abs_le (m : ℕ) (hm : 1 ≤ m) (y : ℝ) :
    |Real.log (∏ j ∈ range m, (((j : ℝ)+1/2)^2+y^2))/2 -
      ((m : ℝ)*Real.log ((m : ℝ)^2+y^2)/2-(m : ℝ)+
        y*Real.arctan ((m : ℝ)/y))| ≤ 1+Real.log (m : ℝ) := by
  have h := logQuadratic_log_prod_integral_abs_le m hm y
  rw [integral_logQuadratic] at h
  simpa only [logQuadratic, mul_div_assoc] using h

/-- Uniform product error around the main term in the Gamma phase convention. -/
theorem logQuadratic_log_prod_phase_abs_le (m : ℕ) (hm : 1 ≤ m)
    (y : ℝ) (hy : 0 ≤ y) :
    |Real.log (∏ j ∈ range m, (((j : ℝ)+1/2)^2+y^2))/2 -
      ((m : ℝ)*Real.log ((m : ℝ)^2+y^2)/2-(m : ℝ)-
        y*Real.arctan (y/(m : ℝ))+Real.pi*y/2)| ≤ 1+Real.log (m : ℝ) := by
  have h := logQuadratic_log_prod_integral_abs_le m hm y
  rw [integral_logQuadratic_eq_phase y m hy (by exact_mod_cast (show 0 < m by omega))]
    at h
  simpa only [logQuadratic, mul_div_assoc] using h

end OddZetaMixed
