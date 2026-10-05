import OddZetaMixed.H158CompactPhaseCertificates
import OddZetaMixed.H158PhaseCeiling

/-!
# Bin selection and agreement with the integration ceiling

The selector uses the same right-hand convention at knots as
`h158PhaseCeiling`. This module's analytic certificate currently covers the
first spatial cell; complete endpoint partitions are separate certificates.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

def h158PhaseBin (theta : ℝ) : Fin 8 :=
  if theta < 1/4 then 0 else
  if theta < 1/2 then 1 else
  if theta < 3/4 then 2 else
  if theta < 1 then 3 else
  if theta < 5/4 then 4 else
  if theta < 3/2 then 5 else
  if theta < 7/4 then 6 else 7

def h158PhaseSelectedRoots (theta : ℝ) : Fin 4 → ℚ :=
  h158PhaseRoots (h158PhaseBin theta)

theorem h158PhaseBin_mem {theta : ℝ} (htheta : 0 ≤ theta ∧ theta < 2) :
    (h158PhaseBin theta).val/4 ≤ theta ∧
      theta < ((h158PhaseBin theta).val+1 : ℝ)/4 := by
  unfold h158PhaseBin
  split_ifs <;> norm_num <;> constructor <;> linarith [htheta.1, htheta.2]

theorem h158PhaseSelectedRoots_bounds (theta : ℝ) (j : Fin 4) :
    0 < (h158PhaseSelectedRoots theta j : ℝ) ∧
      (h158PhaseSelectedRoots theta j : ℝ) < 20 :=
  h158PhaseRoots_bounds (h158PhaseBin theta) j

theorem h158CompactEndpointCeiling_left_eq (b : Fin 8) :
    (h158CompactEndpointCeiling b 0 : ℝ) = h158PhaseCeilingLeft b := by
  fin_cases b <;> norm_num [h158CompactEndpointCeiling, h158PhaseCeilingLeft]

theorem h158CompactEndpointCeiling_right_eq (b : Fin 8) :
    (h158CompactEndpointCeiling b 1 : ℝ) = h158PhaseCeilingRight b := by
  fin_cases b <;> norm_num [h158CompactEndpointCeiling, h158PhaseCeilingRight]

theorem h158CompactCeiling_eq_affine (b : Fin 8) (theta : ℝ) :
    h158CompactCeiling b theta = h158PhaseCeilingAffine b theta := by
  unfold h158CompactCeiling h158PhaseCeilingAffine
  rw [h158CompactEndpointCeiling_left_eq, h158CompactEndpointCeiling_right_eq]
  push_cast
  ring

theorem h158CompactCeiling_selected_eq {theta : ℝ} (htheta : 0 ≤ theta ∧ theta < 2) :
    h158CompactCeiling (h158PhaseBin theta) theta = h158PhaseCeiling theta := by
  rw [h158CompactCeiling_eq_affine]
  exact (h158PhaseCeiling_eq_affine _ (h158PhaseBin_mem htheta)).symm

theorem h158CompactPhase_selected_first_cell {theta s : ℝ}
    (htheta : 0 ≤ theta ∧ theta < 2) (hs : 0 ≤ s ∧ s ≤ 3)
    (hne : ∀ j, s ≠ (h158PhaseSelectedRoots theta j : ℝ)) :
    h158PhasePotential (fun j => (h158PhaseSelectedRoots theta j : ℝ)) theta s ≤
      h158PhaseCeiling theta := by
  rw [← h158CompactCeiling_selected_eq htheta]
  have hbin := h158PhaseBin_mem htheta
  exact h158CompactPhase_first_cell (h158PhaseBin theta) hbin.1 hbin.2.le hs hne

theorem h158PhaseSelectedRoots_offRoots_of_positive {theta s : ℝ}
    (hpositive : ∀ j, 0 < h158AdaptivePairModulus 75
      (h158PhaseSelectedRoots theta j : ℝ) s) :
    ∀ j, s ≠ (h158PhaseSelectedRoots theta j : ℝ) := by
  intro j heq
  have h := hpositive j
  rw [heq] at h
  simpa [h158AdaptivePairModulus] using h

theorem h158CompactPhase_selected_first_cell_of_positive {theta s : ℝ}
    (htheta : 0 ≤ theta ∧ theta < 2) (hs : 0 ≤ s ∧ s ≤ 3)
    (hpositive : ∀ j, 0 < h158AdaptivePairModulus 75
      (h158PhaseSelectedRoots theta j : ℝ) s) :
    h158PhasePotential (fun j => (h158PhaseSelectedRoots theta j : ℝ)) theta s ≤
      h158PhaseCeiling theta :=
  h158CompactPhase_selected_first_cell htheta hs
    (h158PhaseSelectedRoots_offRoots_of_positive hpositive)

end OddZetaMixed
