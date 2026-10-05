import OddZetaMixed.ExponentialRate
import Mathlib.Data.Nat.Factorial.Basic

/-! The rank factorial from a Leibniz majorant is subquadratic on the log
scale. These lemmas do not supply the required rate of the integral moments. -/

set_option autoImplicit false
namespace OddZetaMixed
open Filter

theorem rank_two_factorial_log_subquadratic (ε : ℝ) (hε : 0 < ε) :
    ∀ᶠ n : ℕ in atTop, Real.log ((2*n).factorial : ℝ) ≤ ε*(n : ℝ)^2 := by
  have ht : Tendsto (fun n : ℕ => 2*(n : ℝ)) atTop atTop :=
    Tendsto.const_mul_atTop (by norm_num) tendsto_natCast_atTop_atTop
  have hb := (Real.isLittleO_log_id_atTop.bound (show 0 < ε/4 by positivity)).filter_mono ht
  filter_upwards [hb] with n hn
  have hn0 : 0 ≤ 2*(n : ℝ) := by positivity
  have hlog : Real.log (2*(n : ℝ)) ≤ ε/4*(2*(n : ℝ)) := by
    have h := (le_abs_self (Real.log (2*(n : ℝ)))).trans hn
    simpa only [Real.norm_eq_abs, id_eq, abs_of_nonneg hn0] using h
  calc
    Real.log ((2*n).factorial : ℝ) ≤ Real.log (((2*n)^(2*n) : ℕ) : ℝ) := by
      apply Real.log_le_log
      · exact_mod_cast Nat.factorial_pos (2*n)
      · exact_mod_cast Nat.factorial_le_pow (2*n)
    _ = (2*(n : ℝ))*Real.log (2*(n : ℝ)) := by
      rw [Nat.cast_pow, Real.log_pow]
      push_cast
      rfl
    _ ≤ (2*(n : ℝ))*(ε/4*(2*(n : ℝ))) := mul_le_mul_of_nonneg_left hlog hn0
    _ = ε*(n : ℝ)^2 := by ring

theorem rank_two_factorial_subquadratic (ε : ℝ) (hε : 0 < ε) :
    ∀ᶠ n : ℕ in atTop, ((2*n).factorial : ℝ) ≤ Real.exp (ε*(n : ℝ)^2) := by
  filter_upwards [rank_two_factorial_log_subquadratic ε hε] with n hn
  exact Real.le_exp_of_log_le hn

/-- Multiplying by the actual rank factorial does not alter a quadratic
exponential rate. The conclusion is valid when f or g vanishes. -/
theorem UpperQuadraticExpRateOn.of_factorial_majorant
    {good : Set ℕ} {f g : ℕ → ℝ} {A : ℝ}
    (hg : UpperQuadraticExpRateOn good g A)
    (hbound : ∀ᶠ n in atTop, n ∈ good → |f n| ≤ ((2*n).factorial : ℝ)*|g n|) :
    UpperQuadraticExpRateOn good f A := by
  intro ε hε
  have hhalf : 0 < ε/2 := half_pos hε
  filter_upwards [hbound, hg (ε/2) hhalf,
    rank_two_factorial_subquadratic (ε/2) hhalf] with n hn hg' hf
  intro hgood
  calc
    |f n| ≤ ((2*n).factorial : ℝ)*|g n| := hn hgood
    _ ≤ Real.exp ((ε/2)*(n : ℝ)^2) * Real.exp ((A+ε/2)*(n : ℝ)^2) :=
      mul_le_mul hf (hg' hgood) (abs_nonneg _) (Real.exp_pos _).le
    _ = Real.exp ((A+ε)*(n : ℝ)^2) := by rw [← Real.exp_add]; congr 1; ring

end OddZetaMixed
