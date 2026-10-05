import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.RingTheory.Binomial
import Mathlib.Tactic

/-!
# The even rational polynomials

The normalization is `E_0 = 1` and
`E_(m+1) = 2 X^2 prod_{j=1}^m (X^2 - j^2) / (2(m+1))!`.
These polynomials have degree `2i`, positive leading coefficient, and even symmetry.
For `i > 0`, the adjacent-binomial identity proves integer-valuedness on all of `ℤ`;
the constant case `i = 0` is handled separately.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

/-- The paired nonzero roots in the numerator of `E_(m+1)`. -/
def evenBasisProduct (m : ℕ) : ℚ[X] :=
  ∏ j ∈ range m, (X ^ 2 - C (((j : ℚ) + 1) ^ 2))

@[simp]
theorem evenBasisProduct_zero : evenBasisProduct 0 = 1 := by
  simp [evenBasisProduct]

theorem evenBasisProduct_succ (m : ℕ) :
    evenBasisProduct (m + 1) =
      evenBasisProduct m * (X ^ 2 - C (((m : ℚ) + 1) ^ 2)) := by
  simp [evenBasisProduct, prod_range_succ]

theorem evenBasisProduct_monic (m : ℕ) : (evenBasisProduct m).Monic := by
  apply monic_prod_of_monic
  intro j _
  exact monic_X_pow_sub_C _ (by decide)

theorem evenBasisProduct_natDegree (m : ℕ) :
    (evenBasisProduct m).natDegree = 2 * m := by
  rw [evenBasisProduct, natDegree_prod_of_monic _ _
    (fun j _ => monic_X_pow_sub_C _ (by decide : 2 ≠ 0))]
  simp_rw [natDegree_X_pow_sub_C]
  simp [Nat.mul_comm]

/-- The actual factorial-normalized even polynomial, including `E_0 = 1`. -/
def evenBasis : ℕ → ℚ[X]
  | 0 => 1
  | m + 1 => C (2 / (Nat.factorial (2 * (m + 1)) : ℚ)) *
      (X ^ 2 * evenBasisProduct m)

@[simp]
theorem evenBasis_zero : evenBasis 0 = 1 := rfl

theorem evenBasis_succ (m : ℕ) :
    evenBasis (m + 1) = C (2 / (Nat.factorial (2 * (m + 1)) : ℚ)) *
      (X ^ 2 * evenBasisProduct m) := rfl

theorem evenBasis_leadingCoeff_succ (m : ℕ) :
    (evenBasis (m + 1)).leadingCoeff = 2 / (Nat.factorial (2 * (m + 1)) : ℚ) := by
  exact ((monic_X.pow 2).mul (evenBasisProduct_monic m)).leadingCoeff_C_mul _

theorem evenBasis_leadingCoeff_pos (i : ℕ) : 0 < (evenBasis i).leadingCoeff := by
  cases i with
  | zero => simp
  | succ m =>
    rw [evenBasis_leadingCoeff_succ]
    positivity

theorem evenBasis_ne_zero (i : ℕ) : evenBasis i ≠ 0 := by
  exact leadingCoeff_ne_zero.mp (ne_of_gt (evenBasis_leadingCoeff_pos i))

theorem evenBasis_natDegree (i : ℕ) : (evenBasis i).natDegree = 2 * i := by
  cases i with
  | zero => simp
  | succ m =>
    rw [evenBasis_succ, natDegree_C_mul (by positivity),
      natDegree_mul (pow_ne_zero 2 X_ne_zero) (evenBasisProduct_monic m).ne_zero,
      natDegree_X_pow, evenBasisProduct_natDegree]
    omega

theorem evenBasis_degree (i : ℕ) : (evenBasis i).degree = (2 * i : ℕ) := by
  rw [degree_eq_natDegree (evenBasis_ne_zero i), evenBasis_natDegree]

theorem evenBasisProduct_eval_neg (m : ℕ) (x : ℚ) :
    (evenBasisProduct m).eval (-x) = (evenBasisProduct m).eval x := by
  simp [evenBasisProduct, eval_prod]

theorem evenBasis_eval_neg (i : ℕ) (x : ℚ) :
    (evenBasis i).eval (-x) = (evenBasis i).eval x := by
  cases i with
  | zero => simp
  | succ m => simp [evenBasis_succ, evenBasisProduct_eval_neg]

theorem evenBasis_comp_neg_X (i : ℕ) : (evenBasis i).comp (-X) = evenBasis i := by
  apply Polynomial.funext
  intro x
  simpa using evenBasis_eval_neg i x

private theorem centered_descPochhammer (m : ℕ) (x : ℚ) :
    (descPochhammer ℚ (2 * m + 1)).eval (x + m) =
      x * (evenBasisProduct m).eval x := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [show 2 * (m + 1) + 1 = (2 * m + 1) + 1 + 1 by omega,
      descPochhammer_succ_left, eval_mul, eval_X, eval_comp,
      eval_sub, eval_X, eval_one]
    rw [show x + (↑(m + 1) : ℚ) - 1 = x + m by push_cast; ring,
      descPochhammer_succ_eval, ih, evenBasisProduct_succ]
    simp only [eval_mul, eval_sub, eval_pow, eval_X, eval_C]
    push_cast
    ring

private theorem descPochhammer_eval_eq_factorial_mul_choose (k : ℕ) (x : ℚ) :
    (descPochhammer ℚ k).eval x = (k.factorial : ℚ) * Ring.choose x k := by
  have h := Ring.descPochhammer_eq_factorial_smul_choose x k
  rw [← aeval_eq_smeval, aeval_def, ← eval_map, descPochhammer_map] at h
  simpa only [nsmul_eq_mul] using h

/-- The adjacent-binomial identity at a positive basis index. -/
theorem evenBasis_eval_eq_choose_succ (m : ℕ) (x : ℚ) :
    (evenBasis (m + 1)).eval x =
      Ring.choose (x + (m + 1 : ℕ)) (2 * (m + 1)) +
        Ring.choose (x + m) (2 * (m + 1)) := by
  have hleft : (descPochhammer ℚ (2 * (m + 1))).eval (x + (m + 1 : ℕ)) =
      (x + (m + 1 : ℕ)) * (x * (evenBasisProduct m).eval x) := by
    rw [show 2 * (m + 1) = (2 * m + 1) + 1 by omega,
      descPochhammer_succ_left, eval_mul, eval_X, eval_comp,
      eval_sub, eval_X, eval_one,
      show x + (↑(m + 1) : ℚ) - 1 = x + m by push_cast; ring,
      centered_descPochhammer]
  have hright : (descPochhammer ℚ (2 * (m + 1))).eval (x + m) =
      (x * (evenBasisProduct m).eval x) * (x - m - 1) := by
    rw [show 2 * (m + 1) = (2 * m + 1) + 1 by omega,
      descPochhammer_succ_eval, centered_descPochhammer]
    push_cast
    ring
  rw [descPochhammer_eval_eq_factorial_mul_choose] at hleft hright
  have hfactorial : (Nat.factorial (2 * (m + 1)) : ℚ) ≠ 0 := by
    exact_mod_cast Nat.factorial_ne_zero (2 * (m + 1))
  rw [evenBasis_succ]
  simp only [eval_mul, eval_C, eval_pow, eval_X]
  apply mul_left_cancel₀ hfactorial
  rw [mul_add (Nat.factorial (2 * (m + 1)) : ℚ), hleft, hright]
  push_cast
  field_simp
  ring

/-- For `i > 0`, `E_i(x) = choose(x+i, 2i) + choose(x+i-1, 2i)`.
The hypothesis is necessary: at `i = 0` this sum is `2`, whereas `E_0 = 1`. -/
theorem evenBasis_eval_eq_choose (i : ℕ) (hi : 0 < i) (x : ℚ) :
    (evenBasis i).eval x =
      Ring.choose (x + i) (2 * i) + Ring.choose (x + i - 1) (2 * i) := by
  obtain ⟨m, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hi)
  simpa only [Nat.succ_eq_add_one, Nat.cast_add, Nat.cast_one, ← add_assoc,
    add_sub_cancel_right]
    using evenBasis_eval_eq_choose_succ m x

/-- At an integer argument, the binomial formula is an actual integer cast. -/
theorem evenBasis_eval_int_eq_choose (i : ℕ) (hi : 0 < i) (x : ℤ) :
    (evenBasis i).eval (x : ℚ) =
      ((Ring.choose (x + i) (2 * i) + Ring.choose (x + i - 1) (2 * i) : ℤ) : ℚ) := by
  rw [evenBasis_eval_eq_choose i hi]
  have hcast (z : ℤ) (k : ℕ) :
      ((Ring.choose z k : ℤ) : ℚ) = Ring.choose (z : ℚ) k :=
    Ring.map_choose (Int.castRingHom ℚ) z k
  simp only [Int.cast_add, hcast, Int.cast_sub, Int.cast_natCast, Int.cast_one]

/-- Every `E_i` is integer-valued on all of `ℤ`, including negative arguments. -/
theorem evenBasis_integer_valued (i : ℕ) (x : ℤ) :
    ∃ z : ℤ, (evenBasis i).eval (x : ℚ) = (z : ℚ) := by
  cases i with
  | zero => exact ⟨1, by simp⟩
  | succ m =>
    exact ⟨_, evenBasis_eval_int_eq_choose (m + 1) (Nat.succ_pos m) x⟩

#print axioms evenBasis_degree
#print axioms evenBasis_leadingCoeff_pos
#print axioms evenBasis_comp_neg_X
#print axioms evenBasis_eval_int_eq_choose
#print axioms evenBasis_integer_valued

end OddZetaMixed
