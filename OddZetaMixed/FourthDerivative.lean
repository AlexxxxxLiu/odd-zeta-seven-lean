import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas
import Mathlib.Analysis.Calculus.Deriv.ZPow
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Tactic

/-!
# Fourth derivatives of actual partial-fraction terms

The fourth derivative of `1 / (t + a)^m`, divided by `4! = 24`, has
coefficient `choose (m + 3) 4` and denominator exponent `m + 4`.
The derivative formula is proved from Mathlib's integer-power derivative
and translation theorems. No partial-fraction decomposition is assumed here.
-/

namespace OddZetaMixed

open scoped BigOperators

/-- Translation of Mathlib's iterated integer-power derivative formula. -/
theorem iteratedDeriv_shifted_zpow (r : ℕ) (m : ℤ) (x a : ℝ) :
    iteratedDeriv r (fun t : ℝ => (t + a) ^ m) x =
      (∏ j ∈ Finset.range r, ((m : ℝ) - (j : ℝ))) * (x + a) ^ (m - (r : ℤ)) := by
  rw [iteratedDeriv_comp_add_const r (fun t : ℝ => t ^ m) a,
    iteratedDeriv_eq_iterate]
  exact iter_deriv_zpow m (x + a) r

/-- The rising product of four pole-order factors is `4!` times the binomial
coefficient in the divided fourth derivative. -/
theorem fourthDerivative_coefficient (m : ℕ) (hm : 1 ≤ m) :
    (24 : ℝ) * ((m + 3).choose 4 : ℝ) =
      (m : ℝ) * ((m : ℝ) + 1) * ((m : ℝ) + 2) * ((m : ℝ) + 3) := by
  have h := Nat.ascFactorial_eq_factorial_mul_choose (m - 1) 4
  rw [Nat.sub_add_cancel hm, show m - 1 + 4 = m + 3 by omega] at h
  have hreal := congrArg (fun n : ℕ => (n : ℝ)) h
  norm_num [Nat.ascFactorial_succ, Nat.ascFactorial_zero, Nat.factorial] at hreal
  nlinarith [hreal]

/-- The divided fourth derivative of one shifted inverse power. -/
theorem fourthDerivative_inv_pow_add (m : ℕ) (hm : 1 ≤ m) (x a : ℝ)
    (hx : x + a ≠ 0) :
    iteratedDeriv 4 (fun t : ℝ => 1 / (t + a) ^ m) x / 24 =
      ((m + 3).choose 4 : ℝ) / (x + a) ^ (m + 4) := by
  have hfun : (fun t : ℝ => 1 / (t + a) ^ m) =
      (fun t : ℝ => (t + a) ^ (-(m : ℤ))) := by
    funext t
    simp [zpow_neg, one_div]
  rw [hfun, iteratedDeriv_shifted_zpow]
  have hexp : -(m : ℤ) - (4 : ℕ) = -((m + 4 : ℕ) : ℤ) := by
    push_cast
    ring
  rw [hexp, zpow_neg, zpow_natCast]
  norm_num [Finset.prod_range_succ]
  field_simp [pow_ne_zero (m + 4) hx]
  nlinarith [fourthDerivative_coefficient m hm]

/-- A real constant coefficient passes through the divided fourth derivative. -/
theorem fourthDerivative_const_div_pow_add (m : ℕ) (hm : 1 ≤ m) (c x a : ℝ)
    (hx : x + a ≠ 0) :
    iteratedDeriv 4 (fun t : ℝ => c / (t + a) ^ m) x / 24 =
      c * ((m + 3).choose 4 : ℝ) / (x + a) ^ (m + 4) := by
  have hfun : (fun t : ℝ => c / (t + a) ^ m) =
      (fun t : ℝ => c * (1 / (t + a) ^ m)) := by
    funext t
    ring
  rw [hfun, iteratedDeriv_const_mul_field, mul_div_assoc,
    fourthDerivative_inv_pow_add m hm x a hx]
  ring

/-- Pole terms are smooth to every finite order at points away from their pole. -/
theorem contDiffAt_const_div_pow_add (r m : ℕ) (c x a : ℝ) (hx : x + a ≠ 0) :
    ContDiffAt ℝ r (fun t : ℝ => c / (t + a) ^ m) x := by
  exact contDiffAt_const.div ((contDiffAt_id.add contDiffAt_const).pow m) (pow_ne_zero m hx)

/-- The divided fourth derivative of a finite partial-fraction expression.
Only the pole-order and non-pole conditions are inputs; derivative identities
and local smoothness of every summand are proved above. -/
theorem fourthDerivative_finset_sum {ι : Type*} (J : Finset ι)
    (c a : ι → ℝ) (m : ι → ℕ) (x : ℝ)
    (hm : ∀ j ∈ J, 1 ≤ m j) (hx : ∀ j ∈ J, x + a j ≠ 0) :
    iteratedDeriv 4 (fun t : ℝ => ∑ j ∈ J, c j / (t + a j) ^ m j) x / 24 =
      ∑ j ∈ J, c j * ((m j + 3).choose 4 : ℝ) / (x + a j) ^ (m j + 4) := by
  rw [iteratedDeriv_fun_sum (fun j hj =>
    contDiffAt_const_div_pow_add 4 (m j) (c j) x (a j) (hx j hj)), Finset.sum_div]
  apply Finset.sum_congr rfl
  intro j hj
  exact fourthDerivative_const_div_pow_add (m j) (hm j hj) (c j) x (a j) (hx j hj)

end OddZetaMixed
