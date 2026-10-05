import OddZetaMixed.H158JetFunctional

/-!
# Exact collision-class factorization of the actual formal matrix

Every pole and every Taylor coefficient is retained. The partition and the
anchors can be arbitrary; the residue-class instance uses k modulo p. This
module proves the exact identity, not its local valuation or reflection bounds.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

def h158PoleJetMap (n : ℕ) (hn : 0 < n) (k : ℕ) : ℚ[X] →ₗ[ℚ] SevenPolynomial where
  toFun P := ∑ l, MvPolynomial.C (h158JetValue n hn k l P) * h158PoleCoordinate n k l
  map_add' P Q := by
    simp only [h158JetValue_add, map_add, add_mul, sum_add_distrib]
  map_smul' c P := by
    simp only [← Polynomial.C_mul', h158JetValue_scale, map_mul, mul_assoc]
    rw [← mul_sum]
    exact MvPolynomial.C_mul'

def h158ClusterJetMap {κ : Type*} [DecidableEq κ]
    (n : ℕ) (hn : 0 < n) (classify : ℕ → κ) (c : κ) : ℚ[X] →ₗ[ℚ] SevenPolynomial :=
  ∑ k ∈ (h158PoleSet n).filter (fun k => classify k=c), h158PoleJetMap n hn k

/-- The exact original functional, partitioned without an extra remainder. -/
theorem h158JetLinearMap_eq_sum_clusters {κ : Type*} [Fintype κ] [DecidableEq κ]
    (n : ℕ) (hn : 0 < n) (classify : ℕ → κ) :
    h158JetLinearMap n hn = ∑ c : κ, h158ClusterJetMap n hn classify c := by
  apply LinearMap.ext
  intro P
  change h158JetFunctional n hn P = _
  simp only [h158JetFunctional, h158ClusterJetMap, LinearMap.sum_apply]
  exact (Finset.sum_fiberwise (h158PoleSet n) classify
    (fun k => h158PoleJetMap n hn k P)).symm

def h158ClusterMoment {κ : Type*} [DecidableEq κ]
    (n : ℕ) (hn : 0 < n) (classify : ℕ → κ) (c : κ) (a : ℚ) :
    Matrix (Fin (4*n)) (Fin (4*n)) SevenPolynomial :=
  fun u v => h158ClusterJetMap n hn classify c (taylor (-a) (X^(u.val+v.val)))

/-- Each cluster can use its own anchor. The coefficient range is fixed by
the actual basis degree, not by the local pole order. -/
theorem h158SevenMatrix_eq_cluster_factorization {κ : Type*}
    [Fintype κ] [DecidableEq κ] (n : ℕ) (hn : 0 < n)
    (classify : ℕ → κ) (anchor : κ → ℚ) :
    h158SevenMatrix n = ∑ c : κ,
      h158TaylorEvaluation n (anchor c) * h158ClusterMoment n hn classify c (anchor c) *
        (h158TaylorEvaluation n (anchor c)).transpose := by
  apply Matrix.ext
  intro i j
  rw [h158SevenMatrix_eq_jetFunctional n hn i j]
  change h158JetLinearMap n hn (centeredMultiplier n i j) = _
  rw [h158JetLinearMap_eq_sum_clusters n hn classify]
  simp only [LinearMap.sum_apply, Matrix.sum_apply]
  apply sum_congr rfl
  intro c hc
  have hprod : centeredMultiplier n i j = h158CenteredBasis n i * h158CenteredBasis n j := by
    simp only [centeredMultiplier, h158CenteredBasis, mul_comp]
  rw [hprod]
  have h := polynomial_linearFunctional_taylor_product
    (h158ClusterJetMap n hn classify c) (h158CenteredBasis n i) (h158CenteredBasis n j)
    (anchor c) (4*n) (h158CenteredBasis_degree n i) (h158CenteredBasis_degree n j)
  rw [h]
  simp only [Matrix.mul_apply, Matrix.transpose_apply, sum_mul,
    h158TaylorEvaluation, h158ClusterMoment]
  rw [Finset.sum_comm]

def h158ResidueClass (p : ℕ) (hp : 0 < p) (k : ℕ) : Fin p :=
  ⟨k % p, Nat.mod_lt k hp⟩

theorem h158ResidueClass_eq_iff (p : ℕ) (hp : 0 < p) (k l : ℕ) :
    h158ResidueClass p hp k = h158ResidueClass p hp l ↔ k % p = l % p := by
  exact Fin.ext_iff

/-- Concrete full residue-class factorization. Choosing one integer anchor
per residue is separate from proving the associated valuation bounds. -/
theorem h158SevenMatrix_eq_residue_factorization (n p : ℕ) (hn : 0 < n)
    (hp : 0 < p) (anchor : Fin p → ℚ) :
    h158SevenMatrix n = ∑ c : Fin p,
      h158TaylorEvaluation n (anchor c) *
        h158ClusterMoment n hn (h158ResidueClass p hp) c (anchor c) *
          (h158TaylorEvaluation n (anchor c)).transpose :=
  h158SevenMatrix_eq_cluster_factorization n hn (h158ResidueClass p hp) anchor

end OddZetaMixed
