import OddZetaMixed.H158CompactPhaseCertificates
import OddZetaMixed.TrustAudit

open OddZetaMixed

-- The uniform first-cell API uses the same fixed root set at both endpoints.
example (b : Fin 8) {theta s : ℝ}
    (hl : (b.val : ℝ)/4 ≤ theta) (hr : theta ≤ ((b.val : ℝ)+1)/4)
    (hs : 0 ≤ s ∧ s ≤ 3) (hne : ∀ j, s ≠ (h158PhaseRoots b j : ℝ)) :
    h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) theta s ≤
      h158CompactCeiling b theta :=
  h158CompactPhase_first_cell b hl hr hs hne

-- Theta zero has no singular-log side condition.
example {s : ℝ} (hs : 0 ≤ s ∧ s ≤ 3) :
    h158PhasePotential (fun j => (h158PhaseRoots 0 j : ℝ)) 0 s ≤ (-260611/500 : ℝ) :=
  CompactPhase.Certificates.endpoint_0_first_cell hs

-- At a root the actual pair norm is zero, so its positivity is not automatic.
example (b : Fin 8) (j : Fin 4) :
    h158AdaptivePairModulus 75 (h158PhaseRoots b j : ℝ) (h158PhaseRoots b j : ℝ) = 0 := by
  simp [h158AdaptivePairModulus]

#print axioms h158CompactPhase_first_cell
#print axioms CompactPhase.phase_enclosed_cell
#print axioms CompactPhase.potential_cell_le
audit_project_axioms OddZetaMixed.CompactPhase
