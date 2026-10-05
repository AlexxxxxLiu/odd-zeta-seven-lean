import OddZetaMixed.H158ReflectionCosts

/-!
# Exact compression of the genuine central block

Only the true central Taylor anchor permits deleting odd columns. This
module proves the matrix identity before using the improved even-jet floor.
It does not identify or assemble the fixed residue class in a global orbit
partition.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed
open LocalJetValuation

def h158EvenJet (n : ℕ) (q : Fin (2*n)) : Fin (4*n) :=
  ⟨2*q.val, by have := q.isLt; omega⟩

theorem h158EvenJet_injective (n : ℕ) : Function.Injective (h158EvenJet n) := by
  intro q r h
  have hval := congrArg Fin.val h
  apply Fin.ext
  change 2*q.val=2*r.val at hval
  omega

theorem h158_sum_even_columns {R : Type*} [AddCommMonoid R] (n : ℕ)
    (f : Fin (4*n) → R) (h : ∀ q, Odd q.val → f q=0) :
    ∑ q, f q = ∑ q : Fin (2*n), f (h158EvenJet n q) := by
  symm
  apply Fintype.sum_of_injective (h158EvenJet n) (h158EvenJet_injective n)
  · intro q hq
    apply h
    rw [Nat.odd_iff]
    by_contra hn
    have hm : q.val%2=0 := by omega
    apply hq
    refine ⟨⟨q.val/2, by have := q.isLt; omega⟩, ?_⟩
    apply Fin.ext
    simp only [h158EvenJet]
    omega
  · intro q
    rfl

theorem h158ScaledTaylorEvaluation_central_odd (n p : ℕ)
    (i : Fin (2*n)) (q : Fin (4*n)) (hq : Odd q.val) :
    h158ScaledTaylorEvaluation n p (-(79*(n : ℚ)+1)) i q = 0 := by
  simp only [h158ScaledTaylorEvaluation, h158RowDiagonal, Matrix.diagonal_mul,
    h158TaylorEvaluation, h158CenteredBasis_central_odd_coeff_zero n i q.val hq,
    map_zero, mul_zero]

theorem matrix_even_column_compression {R : Type*} [CommSemiring R] (n : ℕ)
    (V : Matrix (Fin (2*n)) (Fin (4*n)) R)
    (W : Matrix (Fin (4*n)) (Fin (4*n)) R)
    (hV : ∀ i q, Odd q.val → V i q=0) :
    V*W*V.transpose =
      V.submatrix id (h158EvenJet n) * W.submatrix (h158EvenJet n) (h158EvenJet n) *
        (V.submatrix id (h158EvenJet n)).transpose := by
  ext i j
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.submatrix_apply,
    id_eq, Finset.sum_mul]
  rw [h158_sum_even_columns n _ (by
    intro q hq
    simp only [hV j q hq, mul_zero, Finset.sum_const_zero])]
  apply Finset.sum_congr rfl
  intro q hq
  apply h158_sum_even_columns
  intro r hr
  rw [hV i r hr, zero_mul, zero_mul]

theorem h158_central_block_compression (n p : ℕ)
    (W : Matrix (Fin (4*n)) (Fin (4*n)) SevenPolynomial) :
    let V := h158ScaledTaylorEvaluation n p (-(79*(n : ℚ)+1))
    V*W*V.transpose =
      V.submatrix id (h158EvenJet n) * W.submatrix (h158EvenJet n) (h158EvenJet n) *
        (V.submatrix id (h158EvenJet n)).transpose :=
  matrix_even_column_compression n _ W (h158ScaledTaylorEvaluation_central_odd n p)

/-- Actual central even block: the index contribution doubles, which is
the source of the fixed-block signed slots w-4*i. -/
theorem h158_central_even_block_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0<n) (hp : 0<p) (hsq : 57*n<p^2) (c : Fin p)
    (hc : (p : ℤ) ∣ -(79*(n : ℤ)+1)+(c.val : ℤ)) (u v : Fin (2*n)) :
    FormalAtLeast p (-h158ClassCost p n c+2*(u.val : ℤ)+2*(v.val : ℤ))
      (h158ClusterMoment n hn (h158ResidueClass p hp) c (-(79*(n : ℚ)+1))
        (h158EvenJet n u) (h158EvenJet n v)) := by
  have h := h158_residueClusterMoment_floor_at_integer_anchor n hn hp hsq c
    (-(79*(n : ℤ)+1)) hc (h158EvenJet n u) (h158EvenJet n v)
  simp only [Int.cast_neg, Int.cast_add, Int.cast_mul, Int.cast_ofNat,
    Int.cast_natCast, Int.cast_one, h158EvenJet, Nat.cast_mul, Nat.cast_ofNat] at h
  convert h using 1
  · unfold h158ClassCost
    ring
  · rfl

end OddZetaMixed
