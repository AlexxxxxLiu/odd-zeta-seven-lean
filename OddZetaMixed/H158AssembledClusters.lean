import OddZetaMixed.H158ScaledFactorization
import OddZetaMixed.RectangularExpansion
import Mathlib.Data.Matrix.Block
import Mathlib.Data.Fintype.EquivFin

/-!
# A single actual row-scaled residue-cluster factorization

The columns retain every residue class and all 4*n evaluation coefficients.
The middle matrix has the actual cluster moments on its diagonal blocks and
zero off those blocks. Reindexing gives a Fin rectangular expansion without
assuming, or establishing, any lower bound for the selected moment minors.
-/

noncomputable section
namespace OddZetaMixed

open Finset

abbrev H158ClusterColumn (n p : ℕ) := Fin p × Fin (4*n)

def h158AssembledEvaluation (n p : ℕ) (anchor : Fin p → ℤ) :
    Matrix (Fin (2*n)) (H158ClusterColumn n p) SevenPolynomial :=
  fun i u => h158ScaledTaylorEvaluation n p (anchor u.1 : ℚ) i u.2

def h158AssembledMoments (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (anchor : Fin p → ℤ) :
    Matrix (H158ClusterColumn n p) (H158ClusterColumn n p) SevenPolynomial :=
  (Matrix.blockDiagonal (fun c : Fin p =>
    h158ClusterMoment n hn (h158ResidueClass p hp) c (anchor c : ℚ))).submatrix
      Prod.swap Prod.swap

theorem h158AssembledMoments_apply (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (anchor : Fin p → ℤ) (u v : H158ClusterColumn n p) :
    h158AssembledMoments n p hn hp anchor u v =
      if u.1 = v.1 then
        h158ClusterMoment n hn (h158ResidueClass p hp) u.1
          (anchor u.1 : ℚ) u.2 v.2
      else 0 := rfl

theorem h158AssembledMoments_diagonal_block (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (anchor : Fin p → ℤ) (c : Fin p) (u v : Fin (4*n)) :
    h158AssembledMoments n p hn hp anchor (c,u) (c,v) =
      h158ClusterMoment n hn (h158ResidueClass p hp) c (anchor c : ℚ) u v := by
  simp only [h158AssembledMoments_apply, ite_true]

theorem h158AssembledMoments_off_block (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (anchor : Fin p → ℤ) (c d : Fin p) (hcd : c ≠ d) (u v : Fin (4*n)) :
    h158AssembledMoments n p hn hp anchor (c,u) (d,v) = 0 := by
  simp only [h158AssembledMoments_apply, hcd, ite_false]

theorem assembled_product_eq_sum {R ι κ τ : Type*} [CommSemiring R]
    [Fintype κ] [Fintype τ] [DecidableEq κ]
    (V : κ → Matrix ι τ R) (W : κ → Matrix τ τ R) :
    Matrix.of (fun (i : ι) (u : κ × τ) => V u.1 i u.2) *
        Matrix.of (fun (u v : κ × τ) => if u.1 = v.1 then W u.1 u.2 v.2 else 0) *
          (Matrix.of (fun (i : ι) (u : κ × τ) => V u.1 i u.2)).transpose =
      ∑ c : κ, V c * W c * (V c).transpose := by
  rw [Matrix.mul_assoc]
  ext i j
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.sum_apply,
    Fintype.sum_prod_type, ite_mul, zero_mul, Finset.sum_ite_irrel,
    Finset.sum_const_zero, Finset.sum_ite_eq, Finset.mem_univ, ite_true, Matrix.of_apply]
  simp only [Finset.mul_sum, Finset.sum_mul, mul_assoc]
  apply Finset.sum_congr rfl
  intro c hc
  exact Finset.sum_comm

/-- Exact equality for the actual matrix, with both row scales retained. -/
theorem h158_scaled_assembled_factorization (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (anchor : Fin p → ℤ) :
    h158RowDiagonal n p * h158SevenMatrix n * h158RowDiagonal n p =
      h158AssembledEvaluation n p anchor * h158AssembledMoments n p hn hp anchor *
        (h158AssembledEvaluation n p anchor).transpose := by
  rw [h158_scaled_cluster_factorization n p hn (h158ResidueClass p hp)
    (fun c => (anchor c : ℚ))]
  exact (assembled_product_eq_sum
    (fun c => h158ScaledTaylorEvaluation n p (anchor c : ℚ))
    (fun c => h158ClusterMoment n hn (h158ResidueClass p hp) c (anchor c : ℚ))).symm

/-- The full polynomial coefficient set of every evaluation entry is integral. -/
theorem h158AssembledEvaluation_coeff_nonneg (n p : ℕ) (hp : p.Prime)
    (hsq : 158*n+2 < p^2) (anchor : Fin p → ℤ)
    (i : Fin (2*n)) (u : H158ClusterColumn n p) (m : Fin 7 →₀ ℕ) :
    0 ≤ padicValRat p ((h158AssembledEvaluation n p anchor i u).coeff m) :=
  h158ScaledTaylorEvaluation_coeff_nonneg n p hp hsq (anchor u.1) i u.2 m

def h158ClusterColumnEquiv (n p : ℕ) : H158ClusterColumn n p ≃ Fin (p*(4*n)) :=
  Fintype.equivFinOfCardEq (by simp [H158ClusterColumn])

def h158AssembledEvaluationFin (n p : ℕ) (anchor : Fin p → ℤ) :
    Matrix (Fin (2*n)) (Fin (p*(4*n))) SevenPolynomial :=
  (h158AssembledEvaluation n p anchor).submatrix id (h158ClusterColumnEquiv n p).symm

def h158AssembledMomentsFin (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (anchor : Fin p → ℤ) :
    Matrix (Fin (p*(4*n))) (Fin (p*(4*n))) SevenPolynomial :=
  (h158AssembledMoments n p hn hp anchor).submatrix
    (h158ClusterColumnEquiv n p).symm (h158ClusterColumnEquiv n p).symm

theorem h158Assembled_fin_product_eq (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (anchor : Fin p → ℤ) :
    h158AssembledEvaluationFin n p anchor * h158AssembledMomentsFin n p hn hp anchor *
        (h158AssembledEvaluationFin n p anchor).transpose =
      h158AssembledEvaluation n p anchor * h158AssembledMoments n p hn hp anchor *
        (h158AssembledEvaluation n p anchor).transpose := by
  change (h158AssembledEvaluation n p anchor).submatrix id (h158ClusterColumnEquiv n p).symm *
      (h158AssembledMoments n p hn hp anchor).submatrix
        (h158ClusterColumnEquiv n p).symm (h158ClusterColumnEquiv n p).symm *
      (h158AssembledEvaluation n p anchor).transpose.submatrix
        (h158ClusterColumnEquiv n p).symm id = _
  rw [Matrix.submatrix_mul_equiv, Matrix.submatrix_mul_equiv, Matrix.submatrix_id_id]

theorem h158_scaled_assembled_fin_factorization (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (anchor : Fin p → ℤ) :
    h158RowDiagonal n p * h158SevenMatrix n * h158RowDiagonal n p =
      h158AssembledEvaluationFin n p anchor * h158AssembledMomentsFin n p hn hp anchor *
        (h158AssembledEvaluationFin n p anchor).transpose := by
  rw [h158Assembled_fin_product_eq]
  exact h158_scaled_assembled_factorization n p hn hp anchor

theorem h158AssembledEvaluationFin_coeff_nonneg (n p : ℕ) (hp : p.Prime)
    (hsq : 158*n+2 < p^2) (anchor : Fin p → ℤ)
    (i : Fin (2*n)) (u : Fin (p*(4*n))) (m : Fin 7 →₀ ℕ) :
    0 ≤ padicValRat p ((h158AssembledEvaluationFin n p anchor i u).coeff m) :=
  h158AssembledEvaluation_coeff_nonneg n p hp hsq anchor i
    ((h158ClusterColumnEquiv n p).symm u) m

/-- The exact row-scaling cost in the assembled determinant, without a minor bound. -/
theorem h158_assembled_fin_determinant_fee (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (anchor : Fin p → ℤ) :
    (h158AssembledEvaluationFin n p anchor * h158AssembledMomentsFin n p hn hp anchor *
        (h158AssembledEvaluationFin n p anchor).transpose).det =
      MvPolynomial.C ((p : ℚ)^(h158RowFee n p)) * (h158SevenMatrix n).det := by
  rw [← h158_scaled_assembled_fin_factorization]
  exact h158_scaled_determinant n p

/-- Exact-rank selection expansion; no bound on the remaining minors is asserted. -/
theorem h158_scaled_det_eq_assembled_rectangular_sum (n p : ℕ) (hn : 0 < n)
    (hp : 0 < p) (anchor : Fin p → ℤ) :
    MvPolynomial.C ((p : ℚ)^(h158RowFee n p)) * (h158SevenMatrix n).det =
      (Finset.univ.filter (fun f : Fin (2*n) → Fin (p*(4*n)) =>
        Function.Injective f)).sum (fun f =>
          (Finset.univ.prod (fun i => h158AssembledEvaluationFin n p anchor i (f i))) *
          ((h158AssembledMomentsFin n p hn hp anchor *
            (h158AssembledEvaluationFin n p anchor).transpose).submatrix f id).det) := by
  rw [← h158_assembled_fin_determinant_fee n p hn hp anchor, Matrix.mul_assoc]
  exact RectangularExpansion.det_mul_eq_sum_injective _ _

end OddZetaMixed
