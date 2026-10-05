import OddZetaMixed.LocalJetValuation

/-!
# Actual residue-block valuation at an arbitrary integer anchor

The residue representative remains c.val in the arithmetic counts. The
Taylor anchor is a separate integer a, subject to p | a+c.val. This permits
the exact reflected anchor, not merely its canonical representative.
No reflection folding or odd-coordinate deletion is asserted here.
-/

noncomputable section

namespace OddZetaMixed.LocalJetValuation

open Polynomial Finset

/-- Every pole in a residue class is congruent to the negative of an
admissible integer Taylor anchor. -/
theorem residue_anchor_congruence {p : ℕ} (hp : 0 < p) (c : Fin p)
    (anchor : ℤ) (ha : (p : ℤ) ∣ anchor+(c.val : ℤ)) (k : ℕ)
    (hk : h158ResidueClass p hp k = c) :
    (p : ℤ) ∣ anchor+(k : ℤ) := by
  have hd := residue_class_difference_dvd hp c k hk
  have he : (anchor+(c.val : ℤ))+((k : ℤ)-(c.val : ℤ)) = anchor+(k : ℤ) := by
    ring
  rw [← he]
  exact dvd_add ha hd

/-- The full original cluster functional, including harmonic constants,
has the same class-count bound at any admissible integer anchor. -/
theorem h158_residueCluster_power_floor_at_integer_anchor
    {p : ℕ} [Fact p.Prime] (n : ℕ)
    (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2) (c : Fin p)
    (anchor : ℤ) (ha : (p : ℤ) ∣ anchor+(c.val : ℤ)) (m : ℕ) :
    FormalAtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n c.val-
      h158DenominatorCount p n c.val+(m : ℤ)-4)
      (h158ClusterJetMap n hn (h158ResidueClass p hp) c
        (taylor (-(anchor : ℚ)) (X^m))) := by
  simp only [h158ClusterJetMap, LinearMap.sum_apply]
  apply formal_sum
  intro k hk
  have hmem := Finset.mem_filter.mp hk
  have hd := residue_class_difference_dvd hp c k hmem.2
  have hak := residue_anchor_congruence hp c anchor ha k hmem.2
  have h := h158_poleMap_anchor_power_floor n k hn hmem.1 hsq anchor hak m
  simpa only [h158_numerator_count_congr p n k c.val hd,
    h158_denominator_count_congr p n k c.val hd] using h

/-- Actual class block at an arbitrary integer anchor. Its arithmetic
weight uses c.val, not the (possibly negative or very large) anchor. -/
theorem h158_residueClusterMoment_floor_at_integer_anchor
    {p : ℕ} [Fact p.Prime] (n : ℕ)
    (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2) (c : Fin p)
    (anchor : ℤ) (ha : (p : ℤ) ∣ anchor+(c.val : ℤ))
    (u v : Fin (4*n)) :
    FormalAtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n c.val-
      h158DenominatorCount p n c.val-4+(u.val : ℤ)+(v.val : ℤ))
      (h158ClusterMoment n hn (h158ResidueClass p hp) c (anchor : ℚ) u v) := by
  have h := h158_residueCluster_power_floor_at_integer_anchor
    n hn hp hsq c anchor ha (u.val+v.val)
  change FormalAtLeast p _
    (h158ClusterJetMap n hn (h158ResidueClass p hp) c
      (taylor (-(anchor : ℚ)) (X^(u.val+v.val))))
  convert h using 1
  push_cast
  ring

end OddZetaMixed.LocalJetValuation
