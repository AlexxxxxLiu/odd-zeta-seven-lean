import OddZetaMixed.H158CompactPhaseData
import OddZetaMixed.H158CompactPhaseSelector

/-! Sound shared-cell evaluation with an explicit additive ceiling allowance. -/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.CompactPhase

def endpointTheta (b : Fin 8) (side : Fin 2) : ℚ :=
  ((b.val : ℚ)+(side.val : ℚ))/4

theorem endpointTheta_nonneg (b : Fin 8) (side : Fin 2) :
    0 ≤ endpointTheta b side := by unfold endpointTheta; positivity

theorem potential_endpoint_cell_add_one (l r U : ℚ) (hl : 0 ≤ l)
    (hphase : ∀ s : ℝ, (l : ℝ) ≤ s ∧ s ≤ (r : ℝ) → h158Phase s ≤ (U : ℝ))
    (pairLogs : ∀ b i, Enclosure (Real.log (pairBound l r (h158PhaseRoots b i) : ℝ)))
    (hbound : ∀ b side, U+endpointTheta b side/8*(∑ i, (pairLogs b i).hi) ≤
      h158CompactEndpointCeiling b side+1)
    (b : Fin 8) (side : Fin 2) {s : ℝ} (hs : (l : ℝ) ≤ s ∧ s ≤ (r : ℝ))
    (hpositive : ∀ i, 0 < h158AdaptivePairModulus 75 (h158PhaseRoots b i : ℝ) s) :
    h158PhasePotential (fun i => (h158PhaseRoots b i : ℝ)) (endpointTheta b side : ℝ) s ≤
      (h158CompactEndpointCeiling b side : ℝ)+1 := by
  have h := potential_cell_le (fun i => (h158PhaseRoots b i : ℝ))
    (theta := (endpointTheta b side : ℝ))
    (by exact_mod_cast endpointTheta_nonneg b side) (hphase s hs)
    (fun i => (pairBound l r (h158PhaseRoots b i) : ℝ))
    (fun i => ((pairLogs b i).hi : ℝ)) hpositive
    (fun i => pair_le_pairBound l r (h158PhaseRoots b i) hl
      (by have hq := (h158PhaseRoots_bounds b i).1.le; exact_mod_cast hq) hs)
    (fun i => (pairLogs b i).upper)
  have hreal := (Rat.cast_le (K := ℝ)).mpr (hbound b side)
  push_cast at hreal
  exact h.trans hreal

end OddZetaMixed.CompactPhase

namespace OddZetaMixed

theorem h158CompactPhase_of_endpoints_add (b : Fin 8) {theta s allowance : ℝ}
    (hl : (b.val : ℝ)/4 ≤ theta) (hr : theta ≤ ((b.val : ℝ)+1)/4)
    (hleft : h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) ((b.val : ℝ)/4) s ≤
      (h158CompactEndpointCeiling b 0 : ℝ)+allowance)
    (hright : h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) (((b.val : ℝ)+1)/4) s ≤
      (h158CompactEndpointCeiling b 1 : ℝ)+allowance) :
    h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) theta s ≤
      h158CompactCeiling b theta+allowance := by
  have h0 : 0 ≤ 4*theta-(b.val : ℝ) := by linarith
  have h1 : 0 ≤ 1-(4*theta-(b.val : ℝ)) := by linarith
  have h := add_le_add (mul_le_mul_of_nonneg_left hleft h1)
    (mul_le_mul_of_nonneg_left hright h0)
  calc
    _ = (1-(4*theta-(b.val : ℝ))) *
          h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) ((b.val : ℝ)/4) s +
        (4*theta-(b.val : ℝ)) *
          h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) (((b.val : ℝ)+1)/4) s := by
      unfold h158PhasePotential
      ring
    _ ≤ _ := h
    _ = _ := by unfold h158CompactCeiling; ring

end OddZetaMixed
