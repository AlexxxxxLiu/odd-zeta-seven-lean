import OddZetaMixed.H158SevenIrrational
import OddZetaMixed.TrustAudit

/-! Acceptance requires this file to compile. Unlike a conditional helper,
the examples below have no project-specific mathematical hypotheses. -/

example : ∃ s ∈ ({7,9,11,13,15,17,19} : Finset ℕ),
    Irrational ((riemannZeta (s : ℂ)).re) :=
  OddZetaMixed.exists_irrational_riemannZeta_seven_to_nineteen

example : OddZetaMixed.UpperQuadraticRateOn
    {n | (OddZetaMixed.h158SevenMatrix n).det ≠ 0}
    OddZetaMixed.h158PrimitiveCost 1012 :=
  OddZetaMixed.h158ArithmeticCertifiedRate

example : OddZetaMixed.UpperQuadraticExpRateOn Set.univ
    (fun n => Matrix.det (OddZetaMixed.h158Functional n))
    (-OddZetaMixed.analyticExpression+2) :=
  OddZetaMixed.h158AnalyticCertifiedRate

example : ∀ᶠ n : ℕ in Filter.atTop,
    |Matrix.det (OddZetaMixed.h158Functional n)/(OddZetaMixed.h158PrimitiveScalar n : ℝ)| ≤
      Real.exp (-(1/2 : ℝ)*(n : ℝ)^2) :=
  OddZetaMixed.h158_eventually_primitive_det_small

audit_project_axioms OddZetaMixed.h158ArithmeticCertifiedRate
audit_project_axioms OddZetaMixed.h158AnalyticCertifiedRate
audit_project_axioms OddZetaMixed.h158_seven_irrational
audit_project_axioms OddZetaMixed.h158_eventually_primitive_det_small
audit_project_axioms OddZetaMixed.h158_eventually_primitive_polynomial_small
audit_project_axioms OddZetaMixed.exists_irrational_riemannZeta_seven_to_nineteen

#check OddZetaMixed.exists_irrational_riemannZeta_seven_to_nineteen
