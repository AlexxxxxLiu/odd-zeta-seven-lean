import OddZetaMixed.FormalBlockSelection
import OddZetaMixed.TrustAudit

open OddZetaMixed OddZetaMixed.LocalJetValuation OddZetaMixed.FormalBlockSelection

#check formal_block_minor_allocation_floor
#check h158_assembledFin_minor_allocation_floor
#check h158_assembledFin_minor_floor_of_allocation_bound
#check h158_det_unfolded_allocation_floor
#check h158_primitive_cost_unfolded_allocation

#print axioms twice_sum_nat_set_lower
#print axioms classJetSum_lower
#print axioms classCount_comp_perm
#print axioms classCount_eq_of_matching
#print axioms block_minor_eq_zero_of_count_mismatch
#print axioms allocationFloor_comp_perm
#print axioms matching_entry_sum_lower
#print axioms formal_block_minor_allocation_floor
#print axioms classCount_sum
#print axioms classCount_le_jet_count
#print axioms h158_assembled_minor_allocation_floor
#print axioms h158_assembledFin_minor_allocation_floor
#print axioms h158_assembledFin_minor_eq_zero_of_count_mismatch
#print axioms h158_assembledFin_minor_floor_of_allocation_bound
#print axioms h158_selections_nonempty
#print axioms h158MinAllocationFloor_le
#print axioms h158_assembledFin_minor_min_floor
#print axioms h158_det_unfolded_allocation_floor
#print axioms h158_primitive_cost_unfolded_allocation

-- Independent, nonprincipal selections with a negative signed floor.
private def rowSelection (i : Fin 2) : Fin 2 × Fin 3 :=
  (0, if i = 0 then 0 else 2)

private def columnSelection (i : Fin 2) : Fin 2 × Fin 3 :=
  (0, if i = 0 then 1 else 2)

example : allocationFloor (fun _ : Fin 2 => 5) rowSelection = -8 := by decide

example {p : ℕ} [Fact p.Prime]
    (A : Fin 2 → Matrix (Fin 3) (Fin 3) SevenPolynomial)
    (hA : ∀ c u v, FormalAtLeast p (-5 + (u.val : ℤ) + (v.val : ℤ)) (A c u v)) :
    FormalAtLeast p (-8) ((blockMatrix A).submatrix rowSelection columnSelection).det := by
  exact formal_block_minor_allocation_floor A (fun _ => 5) hA
    rowSelection columnSelection (by decide) (by decide)

-- A genuine mismatch: one row in class 0, but one column in class 1.
example (A : Fin 2 → Matrix (Fin 1) (Fin 1) SevenPolynomial) :
    ((blockMatrix A).submatrix (fun _ : Fin 1 => (0,0))
      (fun _ : Fin 1 => (1,0))).det = 0 := by
  apply block_minor_eq_zero_of_count_mismatch
  exact ⟨0, by decide⟩

-- Empty selections remain valid, including their determinant convention.
example {p J : ℕ} [Fact p.Prime]
    (A : Fin 2 → Matrix (Fin J) (Fin J) SevenPolynomial)
    (w : Fin 2 → ℤ)
    (hA : ∀ c u v, FormalAtLeast p (-w c + (u.val : ℤ) + (v.val : ℤ)) (A c u v)) :
    FormalAtLeast p 0
      ((blockMatrix A).submatrix (Fin.elim0 : Fin 0 → Fin 2 × Fin J) Fin.elim0).det := by
  simpa [allocationFloor, classCount, classFiber] using
    formal_block_minor_allocation_floor A w hA Fin.elim0 Fin.elim0
      (by intro i; exact i.elim0) (by intro i; exact i.elim0)

-- Actual H158 coefficients, with arbitrary independent Fin-indexed selections.
example (f g : Fin 2 → Fin 52) (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast 13
      (allocationFloor (fun c : Fin 13 => h158ClassCost 13 1 c.val)
        ((h158ClusterColumnEquiv 1 13).symm ∘ f))
      ((h158AssembledMomentsFin 1 13 (by decide) (by decide)
        (fun c => -(c.val : ℤ))).submatrix f g).det := by
  let : Fact (Nat.Prime 13) := ⟨by norm_num⟩
  exact h158_assembledFin_minor_allocation_floor (p := 13) (r := 2) 1 (by decide) (by decide)
    (by norm_num) f g hf hg

audit_project_axioms OddZetaMixed
