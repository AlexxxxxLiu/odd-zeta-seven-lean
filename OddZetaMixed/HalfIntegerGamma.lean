import Mathlib.Analysis.SpecialFunctions.Gamma.Beta
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

/-!
# Exact half-integer Gamma norms

Reflection and recurrence reduce the complex factors on the h158 contour to
positive finite real products. These identities are exact for all heights;
they do not assume a Stirling remainder or a density bound.
-/

noncomputable section

namespace OddZetaMixed

open Finset Complex
open scoped ComplexConjugate

theorem sin_pi_half_add_imaginary (y : ℝ) :
    Complex.sin ((Real.pi : ℂ) * ((1 / 2 : ℂ) + (y : ℂ) * I)) =
      (Real.cosh (Real.pi * y) : ℂ) := by
  have h : (Real.pi : ℂ) * ((1 / 2 : ℂ) + (y : ℂ) * I) =
      (Real.pi : ℂ) / 2 + ((Real.pi * y : ℝ) : ℂ) * I := by
    push_cast
    ring
  rw [h, Complex.sin_add_mul_I, Complex.sin_pi_div_two,
    Complex.cos_pi_div_two]
  simp

theorem gamma_half_norm_sq (y : ℝ) :
    ‖Complex.Gamma ((1 / 2 : ℂ) + (y : ℂ) * I)‖ ^ 2 =
      Real.pi / Real.cosh (Real.pi * y) := by
  let z : ℂ := 1 / 2 + (y : ℂ) * I
  have hz : 1 - z = conj z := by
    dsimp [z]
    apply Complex.ext <;> norm_num
  have h := Complex.Gamma_mul_Gamma_one_sub z
  rw [hz, Complex.Gamma_conj] at h
  have hs := sin_pi_half_add_imaginary y
  change Complex.sin ((Real.pi : ℂ) * z) = _ at hs
  rw [hs] at h
  have hr := congrArg Complex.re h
  simpa only [Complex.mul_re, Complex.conj_re, Complex.conj_im, mul_neg,
    sub_neg_eq_add, ← Complex.ofReal_div, Complex.ofReal_re, Complex.sq_norm,
    Complex.normSq_apply, z] using hr

theorem half_integer_norm_sq (m : ℕ) (y : ℝ) :
    ‖(m : ℂ) + 1 / 2 + (y : ℂ) * I‖ ^ 2 =
      ((m : ℝ) + 1 / 2) ^ 2 + y ^ 2 := by
  rw [Complex.sq_norm]
  simp [Complex.normSq_apply]
  ring

theorem gamma_half_add_nat_norm_sq (m : ℕ) (y : ℝ) :
    ‖Complex.Gamma ((m : ℂ) + 1 / 2 + (y : ℂ) * I)‖ ^ 2 =
      (Real.pi / Real.cosh (Real.pi * y)) *
        ∏ j ∈ range m, (((j : ℝ) + 1 / 2) ^ 2 + y ^ 2) := by
  induction m with
  | zero => simpa using gamma_half_norm_sq y
  | succ m ih =>
    have hne : (m : ℂ) + 1 / 2 + (y : ℂ) * I ≠ 0 := by
      intro h
      have hr := congrArg Complex.re h
      simp at hr
      have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
      linarith
    have harg : ((m + 1 : ℕ) : ℂ) + 1 / 2 + (y : ℂ) * I =
        ((m : ℂ) + 1 / 2 + (y : ℂ) * I) + 1 := by
      push_cast
      ring
    rw [harg, Complex.Gamma_add_one _ hne, norm_mul, mul_pow,
      half_integer_norm_sq, ih, prod_range_succ]
    ring

theorem half_integer_quadratic_pos (j : ℕ) (y : ℝ) :
    0 < ((j : ℝ) + 1 / 2) ^ 2 + y ^ 2 := by
  have hj : (0 : ℝ) ≤ j := Nat.cast_nonneg j
  nlinarith [sq_nonneg y]

theorem log_gamma_half_add_nat_norm (m : ℕ) (y : ℝ) :
    Real.log ‖Complex.Gamma ((m : ℂ) + 1 / 2 + (y : ℂ) * I)‖ =
      (Real.log Real.pi - Real.log (Real.cosh (Real.pi * y)) +
        ∑ j ∈ range m, Real.log (((j : ℝ) + 1 / 2) ^ 2 + y ^ 2)) / 2 := by
  have hprod : (∏ j ∈ range m, (((j : ℝ) + 1 / 2) ^ 2 + y ^ 2)) ≠ 0 :=
    prod_ne_zero_iff.mpr (fun j _ => (half_integer_quadratic_pos j y).ne')
  have h := congrArg Real.log (gamma_half_add_nat_norm_sq m y)
  rw [Real.log_pow, Real.log_mul
    (div_ne_zero Real.pi_ne_zero (Real.cosh_pos _).ne') hprod,
    Real.log_div Real.pi_ne_zero (Real.cosh_pos _).ne',
    Real.log_prod (fun j _ => (half_integer_quadratic_pos j y).ne')] at h
  linarith

end OddZetaMixed
