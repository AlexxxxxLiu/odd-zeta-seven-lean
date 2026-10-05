import OddZetaMixed.H158ClusterFactorization
import OddZetaMixed.H158GlobalArithmeticSeeds
import OddZetaMixed.RowScaling

/-!
# Row-scaled factorization with integral evaluation coefficients

The cluster moments are those of the original functional. Scaling changes
the outer evaluation matrices and incurs the exact two-sided determinant fee.
This does not assert a valuation bound for the cluster moments.
-/

noncomputable section
namespace OddZetaMixed
open Polynomial Finset

def h158RowScale (n p : ℕ) (i : Fin (2*n)) : ℚ := (p : ℚ)^((2*i.val)/p)

def h158RowDiagonal (n p : ℕ) : Matrix (Fin (2*n)) (Fin (2*n)) SevenPolynomial :=
  Matrix.diagonal (fun i => MvPolynomial.C (h158RowScale n p i))

def h158ScaledTaylorEvaluation (n p : ℕ) (a : ℚ) :
    Matrix (Fin (2*n)) (Fin (4*n)) SevenPolynomial :=
  h158RowDiagonal n p * h158TaylorEvaluation n a

theorem h158ScaledTaylorEvaluation_apply (n p : ℕ) (a : ℚ)
    (i : Fin (2*n)) (q : Fin (4*n)) :
    h158ScaledTaylorEvaluation n p a i q = MvPolynomial.C
      ((taylor (a + (79*(n : ℚ)+1)) (h158PrimeScaledBasis n p i)).coeff q.val) := by
  simp only [h158ScaledTaylorEvaluation, h158RowDiagonal, Matrix.diagonal_mul,
    h158TaylorEvaluation, ← map_mul, h158PrimeScaledBasis, h158RowScale,
    h158CenteredBasis, taylor_apply, mul_comp, C_comp, coeff_C_mul]
  congr 2
  congr 1
  rw [Polynomial.comp_assoc]
  congr 1
  simp only [add_comp, X_comp, C_comp]
  congr 1
  simp only [map_add]
  ring

/-- Every evaluation coefficient, not merely the first sixteen jets, is
p-integral at integer anchors in the actual main-prime range. -/
theorem h158ScaledTaylorEvaluation_coeff_nonneg (n p : ℕ) (hp : p.Prime)
    (hsq : 158*n+2 < p^2) (a : ℤ) (i : Fin (2*n)) (q : Fin (4*n))
    (m : Fin 7 →₀ ℕ) :
    0 ≤ padicValRat p ((h158ScaledTaylorEvaluation n p (a : ℚ) i q).coeff m) := by
  rw [h158ScaledTaylorEvaluation_apply]
  by_cases hm : m=0
  · subst m
    simp only [MvPolynomial.coeff_C, ite_true]
    have h := h158PrimeScaledBasis_taylor_coeff_nonneg n p hp hsq i
      (a + (79*(n : ℤ)+1)) q.val
    simpa only [Int.cast_add, Int.cast_mul, Int.cast_ofNat, Int.cast_natCast,
      Int.cast_one] using h
  · simp [MvPolynomial.coeff_C, Ne.symm hm]

/-- Same cluster moments, with both row-scale factors retained. -/
theorem h158_scaled_cluster_factorization {κ : Type*} [Fintype κ] [DecidableEq κ]
    (n p : ℕ) (hn : 0 < n) (classify : ℕ → κ) (anchor : κ → ℚ) :
    h158RowDiagonal n p * h158SevenMatrix n * h158RowDiagonal n p =
      ∑ c : κ, h158ScaledTaylorEvaluation n p (anchor c) *
        h158ClusterMoment n hn classify c (anchor c) *
          (h158ScaledTaylorEvaluation n p (anchor c)).transpose := by
  rw [h158SevenMatrix_eq_cluster_factorization n hn classify anchor]
  simp only [Matrix.mul_sum, Matrix.sum_mul]
  apply sum_congr rfl
  intro c hc
  simp only [h158ScaledTaylorEvaluation, Matrix.transpose_mul,
    h158RowDiagonal, Matrix.diagonal_transpose, Matrix.mul_assoc]

def h158RowFee (n p : ℕ) : ℕ := 2 * ∑ i : Fin (2*n), (2*i.val)/p

/-- No factorial or row-scaling cost is silently removed. -/
theorem h158_scaled_determinant (n p : ℕ) :
    (h158RowDiagonal n p * h158SevenMatrix n * h158RowDiagonal n p).det =
      MvPolynomial.C ((p : ℚ)^(h158RowFee n p)) * (h158SevenMatrix n).det := by
  rw [h158RowDiagonal, two_sided_diagonal_scaling]
  simp only [← map_prod, ← map_pow, h158RowScale, Finset.prod_pow_eq_pow_sum]
  rw [← pow_mul]
  simp only [h158RowFee, Nat.mul_comm 2 (∑ i : Fin (2*n), (2*i.val)/p)]

theorem h158RowFee_eq_range (n p : ℕ) :
    h158RowFee n p = 2 * ∑ i ∈ range (2*n), (2*i)/p := by
  unfold h158RowFee
  congr 1
  exact Fin.sum_univ_eq_sum_range (fun i : ℕ => (2*i)/p) (2*n)

/-- Exact closed fee for positive odd primes, including the ceiling term. -/
theorem h158RowFee_exact (n p : ℕ) (hp : 0 < p) (hodd : Odd p) :
    (h158RowFee n p : ℚ) =
      4*(n : ℚ)*((4*n/p : ℕ) : ℚ) -
        (p : ℚ)*((4*n/p : ℕ) : ℚ)*(((4*n/p : ℕ) : ℚ)+1)/2 -
        (((4*n/p+1)/2 : ℕ) : ℚ) := by
  rw [h158RowFee_eq_range]
  push_cast
  exact rowScaling_fee_exact n p hp hodd

end OddZetaMixed
