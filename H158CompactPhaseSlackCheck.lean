import OddZetaMixed.H158CompactPhaseSlack
import OddZetaMixed.TrustAudit

open OddZetaMixed

example {theta s : ℝ} (htheta : 0 ≤ theta ∧ theta < 2) (hs : 0 ≤ s ∧ s ≤ 96)
    (hpositive : ∀ j, 0 < h158AdaptivePairModulus 75 (h158PhaseSelectedRoots theta j : ℝ) s) :
    h158PhasePotential (fun j => (h158PhaseSelectedRoots theta j : ℝ)) theta s ≤
      h158PhaseCeiling theta+1 :=
  h158CompactPhase_selected_le_add_one htheta hs hpositive

example {theta s : ℝ} (htheta : 0 ≤ theta ∧ theta < 2) (hs : 0 ≤ s ∧ s ≤ 96)
    (hne : ∀ j, s ≠ (h158PhaseSelectedRoots theta j : ℝ)) :
    h158PhasePotential (fun j => (h158PhaseSelectedRoots theta j : ℝ)) theta s ≤
      h158PhaseCeiling theta+1 :=
  h158CompactPhase_selected_le_add_one_offRoots htheta hs hne

example (n : ℕ) (hn : 1 ≤ n) (i : Fin (2*n)) :
    ∃ a : Fin 4 → ℚ, (∀ j, 0 ≤ (a j : ℝ) ∧ (a j : ℝ) ≤ 20) ∧
      ∀ s : ℝ, 0 ≤ s → s ≤ 96 → (∀ j, 0 < h158AdaptivePairModulus 75 (a j : ℝ) s) →
        h158PhasePotential (fun j => (a j : ℝ)) (h158PhaseCeilingTheta n i.val) s ≤
          h158PhaseCeiling (h158PhaseCeilingTheta n i.val)+1 :=
  h158CompactPhase_row_ceiling_add_one n hn i

-- Right-hand bin selection at every internal knot.
example : h158PhaseBin (1/4) = 1 := by norm_num [h158PhaseBin]
example : h158PhaseBin (1/2) = 2 := by norm_num [h158PhaseBin]
example : h158PhaseBin (3/4) = 3 := by norm_num [h158PhaseBin]
example : h158PhaseBin 1 = 4 := by norm_num [h158PhaseBin]
example : h158PhaseBin (5/4) = 5 := by norm_num [h158PhaseBin]
example : h158PhaseBin (3/2) = 6 := by norm_num [h158PhaseBin]
example : h158PhaseBin (7/4) = 7 := by norm_num [h158PhaseBin]

#print axioms h158CompactPhase_selected_le_add_one
#print axioms h158CompactPhase_selected_le_add_one_offRoots
#print axioms h158CompactPhase_row_ceiling_add_one
audit_project_axioms OddZetaMixed.CompactPhase.SlackBatch00
audit_project_axioms OddZetaMixed.CompactPhase.SlackBatch01
audit_project_axioms OddZetaMixed.CompactPhase.SlackBatch02
