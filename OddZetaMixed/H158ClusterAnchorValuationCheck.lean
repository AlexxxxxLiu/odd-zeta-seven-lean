import OddZetaMixed.H158ClusterAnchorValuation
import OddZetaMixed.TrustAudit

noncomputable section

open Polynomial OddZetaMixed OddZetaMixed.LocalJetValuation

-- Recover the canonical-anchor endpoint without changing its arithmetic counts.
example {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hsq : 57*n < p^2) (c : Fin p) (u v : Fin (4*n)) :
    FormalAtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n c.val-
      h158DenominatorCount p n c.val-4+(u.val : ℤ)+(v.val : ℤ))
      (h158ClusterMoment n hn (h158ResidueClass p hp) c (-(c.val : ℚ)) u v) := by
  simpa only [Int.cast_neg, Int.cast_natCast] using
    h158_residueClusterMoment_floor_at_integer_anchor n hn hp hsq c
      (-(c.val : ℤ)) (by simp) u v

-- The true symmetry anchor -80 lies in the class of -3 modulo 11.
example (u v : Fin 4) :
    FormalAtLeast 11 (padicValRat 11 (h158Normalization 1)+h158NumeratorCount 11 1 3-
      h158DenominatorCount 11 1 3-4+(u.val : ℤ)+(v.val : ℤ))
      (h158ClusterMoment 1 (by norm_num) (h158ResidueClass 11 (by norm_num))
        ⟨3, by norm_num⟩ (-80) u v) := by
  let : Fact (Nat.Prime 11) := ⟨by norm_num⟩
  simpa only [Int.cast_neg, Int.cast_ofNat] using
    h158_residueClusterMoment_floor_at_integer_anchor (p := 11) 1 (by norm_num)
      (by norm_num) (by norm_num) ⟨3, by norm_num⟩ (-80) (by norm_num) u v

-- At n=2 the reflection of anchor -24 is -(318-24)=-294, not -45.
-- Counts remain in residue class 45; no odd-coordinate deletion is assumed.
example (u v : Fin 8) :
    FormalAtLeast 83 (padicValRat 83 (h158Normalization 2)+h158NumeratorCount 83 2 45-
      h158DenominatorCount 83 2 45-4+(u.val : ℤ)+(v.val : ℤ))
      (h158ClusterMoment 2 (by norm_num) (h158ResidueClass 83 (by norm_num))
        ⟨45, by norm_num⟩ (-294) u v) := by
  let : Fact (Nat.Prime 83) := ⟨by norm_num⟩
  simpa only [Int.cast_neg, Int.cast_ofNat] using
    h158_residueClusterMoment_floor_at_integer_anchor (p := 83) 2 (by norm_num)
      (by norm_num) (by norm_num) ⟨45, by norm_num⟩ (-294) (by norm_num) u v

-- Canonical anchoring in a fixed residue class need not kill odd Taylor jets.
example : (taylor (-3 : ℚ) ((X+C (80 : ℚ))^2)).coeff 1 = 154 := by
  rw [taylor_coeff_one]
  norm_num [derivative_pow, derivative_add, derivative_X, derivative_C]

#check h158_residueCluster_power_floor_at_integer_anchor
#check h158_residueClusterMoment_floor_at_integer_anchor
#print axioms residue_anchor_congruence
#print axioms h158_residueCluster_power_floor_at_integer_anchor
#print axioms h158_residueClusterMoment_floor_at_integer_anchor
audit_project_axioms OddZetaMixed.LocalJetValuation
