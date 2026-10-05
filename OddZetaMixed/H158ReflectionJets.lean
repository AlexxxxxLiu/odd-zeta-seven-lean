import OddZetaMixed.H158ScaledFactorization

/-!
# Exact parity relations for full evaluation jets

The reflected anchor is -158*n-2-a in the original t coordinate. These
identities are algebraic ingredients for folding, not a complete quotient
of the residue classes or a valuation claim about folded moments.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed
open Polynomial

theorem polynomial_coeff_comp_neg_X (P : ℚ[X]) (q : ℕ) :
    (P.comp (-X)).coeff q = P.coeff q * (-1 : ℚ)^q := by
  simpa only [map_neg, map_one, neg_one_mul] using
    (Polynomial.comp_C_mul_X_coeff (p := P) (r := (-1 : ℚ)) (n := q))

theorem h158CenteredBasis_reflected_taylor (n : ℕ) (i : Fin (2*n)) (a : ℚ) :
    taylor (-(158*(n : ℚ)+2)-a) (h158CenteredBasis n i) =
      (taylor a (h158CenteredBasis n i)).comp (-X) := by
  apply Polynomial.funext
  intro x
  simp only [taylor_apply, h158CenteredBasis, eval_comp, eval_add,
    eval_X, eval_C, eval_neg]
  rw [show x + (-(158*(n : ℚ)+2)-a) + (79*(n : ℚ)+1) =
    -(-x+a+(79*(n : ℚ)+1)) by ring]
  exact evenBasis_eval_neg i.val _

theorem h158CenteredBasis_reflected_coeff (n : ℕ) (i : Fin (2*n)) (a : ℚ) (q : ℕ) :
    (taylor (-(158*(n : ℚ)+2)-a) (h158CenteredBasis n i)).coeff q =
      (taylor a (h158CenteredBasis n i)).coeff q * (-1 : ℚ)^q := by
  rw [h158CenteredBasis_reflected_taylor, polynomial_coeff_comp_neg_X]

theorem h158CenteredBasis_central_taylor (n : ℕ) (i : Fin (2*n)) :
    taylor (-(79*(n : ℚ)+1)) (h158CenteredBasis n i) = evenBasis i.val := by
  simp only [h158CenteredBasis, taylor_apply, comp_assoc, add_comp, X_comp, C_comp,
    map_neg, add_assoc, neg_add_cancel, add_zero, comp_X]

theorem evenBasis_odd_coeff_zero (i q : ℕ) (hq : Odd q) :
    (evenBasis i).coeff q = 0 := by
  have h := congrArg (fun P : ℚ[X] => P.coeff q) (evenBasis_comp_neg_X i)
  rw [polynomial_coeff_comp_neg_X, hq.neg_one_pow] at h
  linarith

theorem h158CenteredBasis_central_odd_coeff_zero (n : ℕ) (i : Fin (2*n)) (q : ℕ)
    (hq : Odd q) : (taylor (-(79*(n : ℚ)+1)) (h158CenteredBasis n i)).coeff q = 0 := by
  rw [h158CenteredBasis_central_taylor]
  exact evenBasis_odd_coeff_zero i.val q hq

def h158JetSign (n : ℕ) : Matrix (Fin (4*n)) (Fin (4*n)) SevenPolynomial :=
  Matrix.diagonal (fun q => MvPolynomial.C ((-1 : ℚ)^q.val))

theorem h158TaylorEvaluation_reflected (n : ℕ) (a : ℚ) :
    h158TaylorEvaluation n (-(158*(n : ℚ)+2)-a) =
      h158TaylorEvaluation n a * h158JetSign n := by
  apply Matrix.ext
  intro i q
  simp only [h158TaylorEvaluation, h158JetSign, Matrix.mul_diagonal,
    ← map_mul, h158CenteredBasis_reflected_coeff]

theorem h158ScaledTaylorEvaluation_reflected (n p : ℕ) (a : ℚ) :
    h158ScaledTaylorEvaluation n p (-(158*(n : ℚ)+2)-a) =
      h158ScaledTaylorEvaluation n p a * h158JetSign n := by
  rw [h158ScaledTaylorEvaluation, h158TaylorEvaluation_reflected, ← Matrix.mul_assoc]
  rfl

/-- Pairwise folding is exact for full matrices; no high-order jet is removed. -/
theorem h158_pair_fold_identity (n p : ℕ) (a : ℚ)
    (W₁ W₂ : Matrix (Fin (4*n)) (Fin (4*n)) SevenPolynomial) :
    h158ScaledTaylorEvaluation n p a * W₁ * (h158ScaledTaylorEvaluation n p a).transpose +
      h158ScaledTaylorEvaluation n p (-(158*(n : ℚ)+2)-a) * W₂ *
        (h158ScaledTaylorEvaluation n p (-(158*(n : ℚ)+2)-a)).transpose =
      h158ScaledTaylorEvaluation n p a * (W₁ + h158JetSign n*W₂*h158JetSign n) *
        (h158ScaledTaylorEvaluation n p a).transpose := by
  rw [h158ScaledTaylorEvaluation_reflected]
  simp only [Matrix.transpose_mul, h158JetSign, Matrix.diagonal_transpose,
    Matrix.mul_add, Matrix.add_mul, Matrix.mul_assoc]

end OddZetaMixed
