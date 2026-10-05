import OddZetaMixed.H158CompactPhaseSlack
import OddZetaMixed.H158MomentProductRate

/-!
# Certified analytic rate for the actual h158 determinant

All compact cells, the infinite tails, finite-index drift and normalization
are supplied by proved theorems. The uniform +1 row allowance costs +2 in
the quadratic rate. This does not assert the former, sharper rate predicate.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

theorem h158AnalyticCertifiedRate :
    UpperQuadraticExpRateOn Set.univ (fun n => Matrix.det (h158Functional n))
      (-analyticExpression+2) := by
  simpa only [mul_one] using
    h158AnalyticRate_of_compact_phase_ceiling_slack 1 h158CompactPhase_row_ceiling_add_one

#print axioms h158AnalyticCertifiedRate

end OddZetaMixed
