import OddZetaMixed.H158ArithmeticCertified
import OddZetaMixed.H158AnalyticCertified
import OddZetaMixed.H158GateAssembly
import OddZetaMixed.SevenZetaConclusion
import OddZetaMixed.H158GlobalInequality

/-! Unconditional assembly for the seven actual zeta values. The arithmetic
and analytic estimates below are instantiated by concrete checked certificates.
The final statement does not single out any one of the seven values. -/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

theorem h158_eventually_primitive_det_small :
    ∀ᶠ n : ℕ in Filter.atTop,
      |Matrix.det (h158Functional n)/(h158PrimitiveScalar n : ℝ)| ≤
        Real.exp (-(1/2 : ℝ)*(n : ℝ)^2) :=
  h158_primitive_det_small_of_rates h158ArithmeticCertifiedRate h158AnalyticCertifiedRate

theorem h158_eventually_primitive_polynomial_small :
    ∀ᶠ n : ℕ in Filter.atTop,
      |(h158PrimitivePolynomial n).eval₂ (Int.castRingHom ℝ) sevenZetaValues| ≤
        Real.exp (-(1/2 : ℝ)*(n : ℝ)^2) := by
  simpa only [h158PrimitivePolynomial_eval_actual] using h158_eventually_primitive_det_small

theorem h158_seven_irrational : ∃ i : Fin 7, Irrational (sevenZetaValues i) := by
  have hgap : (1012 : ℝ)+(-analyticExpression+2) < 0 := by
    have h := h158ConservativeBudget_slack_gap
    rw [h158ConservativeBudget_eq] at h
    norm_num only [Rat.cast_ofNat] at h
    linarith
  exact h158_seven_irrational_of_rates 1012 (-analyticExpression+2) hgap
    h158ArithmeticCertifiedRate h158AnalyticCertifiedRate h158_rational_gate

theorem exists_irrational_riemannZeta_seven_to_nineteen :
    ∃ s ∈ ({7,9,11,13,15,17,19} : Finset ℕ),
      Irrational ((riemannZeta (s : ℂ)).re) :=
  sevenZeta_irrational_iff_standard.mp h158_seven_irrational

#check exists_irrational_riemannZeta_seven_to_nineteen
#print axioms h158_eventually_primitive_det_small
#print axioms h158_eventually_primitive_polynomial_small
#print axioms h158_seven_irrational
#print axioms exists_irrational_riemannZeta_seven_to_nineteen

end OddZetaMixed
