import OddZetaMixed.H158ReflectionJets
import OddZetaMixed.H158ClusterAnchorValuation
import OddZetaMixed.FormalPolynomialMinors

/-!
# Coefficient floors after an exact reflection pairing

This proves the local cost of the actual paired moment block. The anchors
must be admissible integers and exact reflections, not just representatives
of the same residue classes. No global orbit partition is assumed or proved.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed
open LocalJetValuation

theorem formal_sign_conjugate_floor {p n : ℕ} [Fact p.Prime]
    (W : Matrix (Fin (4*n)) (Fin (4*n)) SevenPolynomial)
    (u v : Fin (4*n)) (L : ℤ) (h : FormalAtLeast p L (W u v)) :
    FormalAtLeast p L ((h158JetSign n * W * h158JetSign n) u v) := by
  have hs (q : ℕ) : FormalAtLeast p 0 (MvPolynomial.C ((-1 : ℚ)^q)) := by
    apply formal_C
    exact Or.inr (by simp [padicValRat.pow])
  simpa only [h158JetSign, Matrix.diagonal_mul, Matrix.mul_diagonal, zero_add,
    add_zero] using formal_mul (formal_mul (hs u.val) h) (hs v.val)

theorem formal_paired_block_floor {p n : ℕ} [Fact p.Prime]
    (W₁ W₂ : Matrix (Fin (4*n)) (Fin (4*n)) SevenPolynomial)
    (u v : Fin (4*n)) (L₁ L₂ : ℤ)
    (h₁ : FormalAtLeast p L₁ (W₁ u v))
    (h₂ : FormalAtLeast p L₂ (W₂ u v)) :
    FormalAtLeast p (min L₁ L₂)
      ((W₁ + h158JetSign n * W₂ * h158JetSign n) u v) := by
  exact formal_add (formal_mono h₁ (min_le_left _ _))
    (formal_mono (formal_sign_conjugate_floor W₂ u v L₂ h₂) (min_le_right _ _))

/-- The signed cost of a reflected pair is the worse of the two actual
class costs. It may be negative, and no harmonic coordinate is discarded. -/
theorem h158_paired_residue_block_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (c d : Fin p) (a : ℤ)
    (ha : (p : ℤ) ∣ a+(c.val : ℤ))
    (hb : (p : ℤ) ∣ (-(158*(n : ℤ)+2)-a)+(d.val : ℤ))
    (u v : Fin (4*n)) :
    FormalAtLeast p
      (-max (h158ClassCost p n c) (h158ClassCost p n d)+(u.val : ℤ)+(v.val : ℤ))
      ((h158ClusterMoment n hn (h158ResidueClass p hp) c (a : ℚ) +
        h158JetSign n *
        h158ClusterMoment n hn (h158ResidueClass p hp) d
          (-(158*(n : ℚ)+2)-(a : ℚ)) * h158JetSign n) u v) := by
  have h₁ := h158_residueClusterMoment_floor_at_integer_anchor n hn hp hsq c a ha u v
  have h₂ := h158_residueClusterMoment_floor_at_integer_anchor n hn hp hsq d
    (-(158*(n : ℤ)+2)-a) hb u v
  simp only [Int.cast_sub, Int.cast_neg, Int.cast_add, Int.cast_mul,
    Int.cast_ofNat, Int.cast_natCast] at h₂
  apply formal_add
  · apply formal_mono h₁
    unfold h158ClassCost
    have := le_max_left (h158ClassCost p n c) (h158ClassCost p n d)
    unfold h158ClassCost at this
    omega
  · apply formal_mono (formal_sign_conjugate_floor _ u v _ h₂)
    unfold h158ClassCost
    have := le_max_right (h158ClassCost p n c) (h158ClassCost p n d)
    unfold h158ClassCost at this
    omega

end OddZetaMixed
