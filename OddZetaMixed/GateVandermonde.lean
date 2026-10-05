import Mathlib.LinearAlgebra.Vandermonde
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Nat.Prime.Factorial
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Tactic

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

/-- At p=55n+1 the two supporting shells combine into 2n consecutive nodes.
These are the positive absolute values of the centered nodes; E_i is even. -/
def gateNode (n : ℕ) (i : Fin (2*n)) : ℕ := 24*n+1+i.val

def gateSquare (n : ℕ) (i : Fin (2*n)) : ZMod (55*n+1) := (gateNode n i : ZMod (55*n+1))^2

theorem gate_squares_injective (n : ℕ) [Fact (Nat.Prime (55*n+1))] :
    Function.Injective (gateSquare n) := by
  intro i j hij
  have hi : gateNode n i < 55*n+1 := by unfold gateNode; have := i.isLt; omega
  have hj : gateNode n j < 55*n+1 := by unfold gateNode; have := j.isLt; omega
  have hs : gateNode n i + gateNode n j < 55*n+1 := by
    unfold gateNode
    have := i.isLt
    have := j.isLt
    omega
  rcases sq_eq_sq_iff_eq_or_eq_neg.mp hij with heq | hneg
  · have hv := congrArg ZMod.val heq
    rw [ZMod.val_natCast_of_lt hi, ZMod.val_natCast_of_lt hj] at hv
    apply Fin.ext
    unfold gateNode at hv
    omega
  · have hz : ((gateNode n i + gateNode n j : ℕ) : ZMod (55*n+1)) = 0 := by
      rw [Nat.cast_add, hneg, neg_add_cancel]
    have hv := congrArg ZMod.val hz
    rw [ZMod.val_natCast_of_lt hs] at hv
    simp only [ZMod.val_zero] at hv
    unfold gateNode at hv
    omega

theorem gate_vandermonde_ne_zero (n : ℕ) [Fact (Nat.Prime (55*n+1))] :
    (Matrix.vandermonde (gateSquare n)).det ≠ 0 :=
  Matrix.det_vandermonde_ne_zero_iff.mpr (gate_squares_injective n)

/-- The monic part of E_i, as a polynomial in the squared coordinate. -/
def gateMonicBasis (K : Type*) [Field K] : ℕ → K[X]
  | 0 => 1
  | m+1 => X * ∏ j ∈ range m, (X - C (((j : K)+1)^2))

theorem gateMonicBasis_monic (K : Type*) [Field K] (i : ℕ) :
    (gateMonicBasis K i).Monic := by
  cases i with
  | zero => exact monic_one
  | succ m =>
    apply monic_X.mul
    apply monic_prod_of_monic
    intro j _
    exact monic_X_sub_C _

theorem gateMonicBasis_degree (K : Type*) [Field K] (i : ℕ) :
    (gateMonicBasis K i).natDegree = i := by
  cases i with
  | zero => simp [gateMonicBasis]
  | succ m =>
    rw [gateMonicBasis, natDegree_mul X_ne_zero
      (monic_prod_of_monic _ _ (fun j _ => monic_X_sub_C _)).ne_zero,
      natDegree_prod_of_monic _ _ (fun j _ => monic_X_sub_C _)]
    simp only [natDegree_X, natDegree_X_sub_C, Finset.sum_const, Finset.card_range,
      smul_eq_mul, mul_one]
    omega

def gateCoefficient (n : ℕ) [Fact (Nat.Prime (55*n+1))] (i : Fin (2*n)) : ZMod (55*n+1) :=
  if i.val = 0 then 1 else (2 : ZMod (55*n+1)) / (Nat.factorial (2*i.val) : ZMod (55*n+1))

theorem gateCoefficient_ne_zero (n : ℕ) [Fact (Nat.Prime (55*n+1))] (i : Fin (2*n)) :
    gateCoefficient n i ≠ 0 := by
  have hp : Nat.Prime (55*n+1) := Fact.out
  have hn : 0 < n := by have := hp.two_le; omega
  unfold gateCoefficient
  split_ifs
  · exact one_ne_zero
  · apply div_ne_zero
    · intro hz
      have hd : 55*n+1 ∣ 2 := (ZMod.natCast_eq_zero_iff 2 (55*n+1)).mp hz
      exact (Nat.not_dvd_of_pos_of_lt (by norm_num) (by omega)) hd
    · intro hz
      have hd : 55*n+1 ∣ (2*i.val).factorial :=
        (ZMod.natCast_eq_zero_iff (2*i.val).factorial (55*n+1)).mp hz
      have hle := hp.dvd_factorial.mp hd
      have := i.isLt
      omega

def gateEvenEvaluation (n : ℕ) [Fact (Nat.Prime (55*n+1))] :
    Matrix (Fin (2*n)) (Fin (2*n)) (ZMod (55*n+1)) :=
  fun i j => gateCoefficient n i * (gateMonicBasis (ZMod (55*n+1)) i.val).eval (gateSquare n j)

/-- Invertibility of the concrete factorial-normalized even-basis evaluation matrix.
This does not assert the still-missing congruence from the actual h158 matrix. -/
theorem gateEvenEvaluation_det_ne_zero (n : ℕ) [Fact (Nat.Prime (55*n+1))] :
    (gateEvenEvaluation n).det ≠ 0 := by
  let M : Matrix (Fin (2*n)) (Fin (2*n)) (ZMod (55*n+1)) :=
    fun i j => (gateMonicBasis (ZMod (55*n+1)) j.val).eval (gateSquare n i)
  have hm : M.det = (Matrix.vandermonde (gateSquare n)).det :=
    (Matrix.det_eval_matrixOfPolynomials_eq_det_vandermonde (gateSquare n)
      (fun i => gateMonicBasis (ZMod (55*n+1)) i.val)
      (fun i => gateMonicBasis_degree _ _) (fun i => gateMonicBasis_monic _ _)).symm
  have heq : gateEvenEvaluation n = Matrix.diagonal (gateCoefficient n) * M.transpose := by
    ext i j
    rw [Matrix.diagonal_mul]
    rfl
  rw [heq, Matrix.det_mul, Matrix.det_diagonal, Matrix.det_transpose, hm]
  apply mul_ne_zero _ (gate_vandermonde_ne_zero n)
  exact Finset.prod_ne_zero_iff.mpr (fun i _ => gateCoefficient_ne_zero n i)

theorem weighted_gate_det_ne_zero (n : ℕ) [Fact (Nat.Prime (55*n+1))]
    (w : Fin (2*n) → ZMod (55*n+1)) (hw : ∀ i, w i ≠ 0) :
    (gateEvenEvaluation n * Matrix.diagonal w * (gateEvenEvaluation n).transpose).det ≠ 0 := by
  rw [Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose, Matrix.det_diagonal]
  exact mul_ne_zero (mul_ne_zero (gateEvenEvaluation_det_ne_zero n)
    (Finset.prod_ne_zero_iff.mpr (fun i _ => hw i))) (gateEvenEvaluation_det_ne_zero n)

end OddZetaMixed
