import OddZetaMixed.RationalArctanBounds
import OddZetaMixed.TrustAudit

open OddZetaMixed.RationalArctanBounds

-- Every range-reduction branch, including exact boundary points.
example : check 0 10 0 0 = true := by decide +kernel
example : check (1/3) 10 (3217505543/10000000000) (402188193/1250000000) = true := by decide +kernel
example : check (1/2) 10 (463647609/1000000000) (4636476091/10000000000) = true := by decide +kernel
example : check (3/4) 10 (6435011087/10000000000) (402188193/625000000) = true := by decide +kernel
example : check 1 10 (7853981633/10000000000) (3926990817/5000000000) = true := by decide +kernel
example : check (3/2) 10 (614246077/625000000) (9827937233/10000000000) = true := by decide +kernel
example : check 2 10 (11071487177/10000000000) (5535743589/5000000000) = true := by decide +kernel
example : check 24 10 (3822884369/2500000000) (15291537477/10000000000) = true := by decide +kernel

-- Invalid domain and reversed witnesses are rejected.
example : check (-1) 10 (-1) 1 = false := by decide +kernel
example : check 1 10 1 0 = false := by decide +kernel

example : (3822884369/2500000000 : ℝ) ≤ Real.arctan 24 ∧
    Real.arctan 24 ≤ (15291537477/10000000000 : ℝ) := by
  have h := of_check 24 10 (3822884369/2500000000) (15291537477/10000000000)
    (by decide +kernel)
  norm_num at h
  exact h

#print axioms OddZetaMixed.RationalArctanBounds.of_check
audit_project_axioms OddZetaMixed.RationalArctanBounds
