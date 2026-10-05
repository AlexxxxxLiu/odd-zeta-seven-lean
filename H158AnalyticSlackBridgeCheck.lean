import OddZetaMixed.H158AnalyticCertified

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Filter

#print h158AnalyticCertifiedRate
#print axioms h158AnalyticCertifiedRate
#check h158CompactPhase_row_ceiling_add_one
#print axioms CompactPhase.potential_endpoint_cell_add_one
#print axioms CompactPhase.SlackBatch00.covered_endpoints
#print axioms CompactPhase.SlackBatch01.covered_endpoints
#print axioms CompactPhase.SlackBatch02.covered_endpoints
#print axioms h158CompactPhase_of_endpoints_add
#print axioms h158CompactPhase_selected_le_add_one
#print axioms h158CompactPhase_row_ceiling_add_one
#print axioms h158PhasePotential_ae_envelope
#print axioms h158AdaptiveMoment_le_of_compact
#print axioms h158AnalyticRate_of_compact_phase_ceiling_slack

-- Audit-only composition; the parent owns the public unconditional endpoint.
private theorem composition_check :
    UpperQuadraticExpRateOn Set.univ (fun n => Matrix.det (h158Functional n))
      (-analyticExpression+2) := by
  simpa only [mul_one] using
    h158AnalyticRate_of_compact_phase_ceiling_slack 1 h158CompactPhase_row_ceiling_add_one

#print axioms composition_check

-- Expand the public rate on the actual determinant, retaining the exact loss two.
example (ε : ℝ) (hε : 0 < ε) :
    ∀ᶠ n : ℕ in atTop, |Matrix.det (h158Functional n)| ≤
      Real.exp ((-analyticExpression+2+ε)*(n : ℝ)^2) := by
  filter_upwards [h158AnalyticCertifiedRate ε hε] with n hn
  exact hn (Set.mem_univ n)

example :
    UpperQuadraticExpRateOn Set.univ (fun n => Matrix.det (h158Functional n))
      (-((8123483 : ℝ)/8000-12+8*Real.log 4)+2) := by
  simpa only [analyticExpression] using h158AnalyticCertifiedRate

-- The first row and an internal knot both use the concrete right-hand selector.
example : h158PhaseCeilingTheta 1 0 = 0 := by norm_num [h158PhaseCeilingTheta]
example : h158PhaseCeilingTheta 32 8 = 1/4 := by norm_num [h158PhaseCeilingTheta]
example : h158PhaseBin (1/4) = 1 := by norm_num [h158PhaseBin]

example (b : Fin 8) : h158PhaseBin ((b.val : ℝ)/4) = b := by
  apply Fin.ext
  fin_cases b <;> norm_num [h158PhaseBin]

-- The joins and both compact endpoints retain the off-root positivity guard.
example {theta s : ℝ} (htheta : 0 ≤ theta ∧ theta < 2)
    (hs : s = 0 ∨ s = 27/2 ∨ s = 39/2 ∨ s = 96)
    (hpositive : ∀ j, 0 < h158AdaptivePairModulus 75
      (h158PhaseSelectedRoots theta j : ℝ) s) :
    h158PhasePotential (fun j => (h158PhaseSelectedRoots theta j : ℝ)) theta s ≤
      h158PhaseCeiling theta+1 := by
  rcases hs with rfl | rfl | rfl | rfl <;>
    exact h158CompactPhase_selected_le_add_one htheta (by norm_num) hpositive

-- No row at positive n reaches the excluded theta = 2 endpoint.
example (n : ℕ) (hn : 1 ≤ n) (i : Fin (2*n)) : h158PhaseCeilingTheta n i.val < 2 :=
  (h158PhaseCeilingTheta_mem n i.val (by omega) i.isLt).2

end OddZetaMixed
