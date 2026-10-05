import OddZetaMixed.H158AnalyticCertified
import OddZetaMixed.TrustAudit

noncomputable section
set_option autoImplicit false

open OddZetaMixed Filter

example : UpperQuadraticExpRateOn Set.univ (fun n => Matrix.det (h158Functional n))
    (-analyticExpression + 2) := h158AnalyticCertifiedRate

example (epsilon : ℝ) (hepsilon : 0 < epsilon) :
    ∀ᶠ n : ℕ in atTop, |Matrix.det (h158Functional n)| ≤
      Real.exp ((-analyticExpression + 2 + epsilon) * (n : ℝ)^2) := by
  filter_upwards [h158AnalyticCertifiedRate epsilon hepsilon] with n hn
  exact hn (Set.mem_univ n)

-- The new rate cannot be used as the old, sharper rate by dropping the loss.
example : True := by
  fail_if_success
    have : H158AnalyticBound := h158AnalyticCertifiedRate
  trivial

-- The compact API still requires positivity; the totalized logarithm is not a workaround.
example {theta s : ℝ} (_htheta : 0 ≤ theta ∧ theta < 2) (_hs : 0 ≤ s ∧ s ≤ 96) :
    True := by
  fail_if_success
    have : h158PhasePotential (fun j => (h158PhaseSelectedRoots theta j : ℝ)) theta s ≤
        h158PhaseCeiling theta + 1 :=
      h158CompactPhase_selected_le_add_one _htheta _hs
  trivial

example (b : Fin 8) (j : Fin 4) :
    h158AdaptivePairModulus 75 (h158PhaseRoots b j : ℝ) (h158PhaseRoots b j : ℝ) = 0 := by
  simp [h158AdaptivePairModulus]

run_cmd do
  let env ← Lean.getEnv
  for moduleName in #[`OddZetaMixed.H158CompactPhaseEndpoint00,
      `OddZetaMixed.H158CompactPhaseEndpoint01, `OddZetaMixed.H158CompactPhaseBinZero] do
    if env.header.moduleNames.contains moduleName then
      throwError "The certified rate imports retired pilot module {moduleName}"
  Lean.logInfo "Import audit passed: no retired original-ceiling pilot modules."

audit_project_axioms OddZetaMixed.h158AnalyticCertifiedRate
audit_project_axioms OddZetaMixed.h158CompactPhase_row_ceiling_add_one
audit_project_axioms OddZetaMixed.h158PhasePotential_ae_envelope
audit_project_axioms OddZetaMixed.h158AnalyticRate_of_compact_phase_ceiling_slack
