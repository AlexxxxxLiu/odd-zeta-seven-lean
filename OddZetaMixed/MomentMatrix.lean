import Mathlib.Algebra.MvPolynomial.CommRing
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

noncomputable section

namespace OddZetaMixed

open Finset MvPolynomial

abbrev SevenPolynomial := MvPolynomial (Fin 7) ℚ

/-- The rational constant is retained, in addition to all seven zeta coordinates. -/
def affineEntry (a : ℚ) (b : Fin 7 → ℚ) : SevenPolynomial :=
  C a + ∑ k, C (b k) * X k

def momentMatrix (n : ℕ) (a : Matrix (Fin (2*n)) (Fin (2*n)) ℚ)
    (b : Fin 7 → Matrix (Fin (2*n)) (Fin (2*n)) ℚ) :
    Matrix (Fin (2*n)) (Fin (2*n)) SevenPolynomial :=
  fun i j => affineEntry (a i j) (fun k => b k i j)

theorem affineEntry_degree (a : ℚ) (b : Fin 7 → ℚ) :
    (affineEntry a b).totalDegree ≤ 1 := by
  apply (totalDegree_add _ _).trans
  apply max_le
  · simp
  · apply totalDegree_finsetSum_le
    intro k _
    exact (totalDegree_mul _ _).trans (by simp)

theorem determinant_degree_le {r : ℕ} (H : Matrix (Fin r) (Fin r) SevenPolynomial)
    (hH : ∀ i j, (H i j).totalDegree ≤ 1) :
    H.det.totalDegree ≤ r := by
  classical
  rw [Matrix.det_apply']
  apply totalDegree_finsetSum_le
  intro σ _
  apply (totalDegree_mul _ _).trans
  have hs : ((Equiv.Perm.sign σ : ℤ) : SevenPolynomial).totalDegree = 0 := by
    change (C (Equiv.Perm.sign σ : ℚ)).totalDegree = 0
    exact totalDegree_C _
  rw [hs, zero_add]
  apply (totalDegree_finsetProd _ _).trans
  calc
    ∑ i : Fin r, (H (σ i) i).totalDegree ≤ ∑ _i : Fin r, 1 :=
      Finset.sum_le_sum (fun i _ => hH _ _)
    _ = r := by simp

theorem momentMatrix_degree (n : ℕ) (a : Matrix (Fin (2*n)) (Fin (2*n)) ℚ)
    (b : Fin 7 → Matrix (Fin (2*n)) (Fin (2*n)) ℚ) :
    (momentMatrix n a b).det.totalDegree ≤ 2*n := by
  exact determinant_degree_le _ (fun i j => affineEntry_degree _ _)

theorem affineEntry_eval (a : ℚ) (b z : Fin 7 → ℚ) :
    MvPolynomial.eval z (affineEntry a b) = a + ∑ k, b k * z k := by
  simp [affineEntry]

/-- Evaluation commutes with the determinant; no numerical identification is used. -/
theorem momentMatrix_eval (n : ℕ) (a : Matrix (Fin (2*n)) (Fin (2*n)) ℚ)
    (b : Fin 7 → Matrix (Fin (2*n)) (Fin (2*n)) ℚ) (z : Fin 7 → ℚ) :
    MvPolynomial.eval z (momentMatrix n a b).det =
      Matrix.det (fun i j => a i j + ∑ k, b k i j * z k) := by
  rw [RingHom.map_det]
  congr 1
  ext i j
  exact affineEntry_eval _ _ _

/-- Scaling all entries charges the full rank, not only half the rank. -/
theorem rank_two_scaling (n : ℕ) (D : ℚ)
    (H : Matrix (Fin (2*n)) (Fin (2*n)) SevenPolynomial) :
    ((C D : SevenPolynomial) • H).det = C (D^(2*n)) * H.det := by
  simp

/-- Row-dependent scaling must be paid twice, once for each side of the matrix. -/
theorem two_sided_diagonal_scaling {R : Type*} [CommRing R] (r : ℕ)
    (d : Fin r → R) (H : Matrix (Fin r) (Fin r) R) :
    (Matrix.diagonal d * H * Matrix.diagonal d).det = (∏ i, d i)^2 * H.det := by
  simp only [Matrix.det_mul, Matrix.det_diagonal]
  ring

end OddZetaMixed
