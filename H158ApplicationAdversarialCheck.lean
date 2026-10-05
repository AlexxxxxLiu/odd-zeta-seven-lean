import OddZetaMixed.H158AnalyticCertified
import OddZetaMixed.H158GateAssembly
import OddZetaMixed.SevenZetaConclusion

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

#check h158_seven_irrational_of_rates
#check h158_actual_rational_specialization_clearing
#check sevenZeta_irrational_iff_standard
#print axioms h158_seven_irrational_of_rates
#print axioms rational_specialization_cast
#print axioms h158_actual_rational_specialization_clearing
#print axioms h158_rational_gate
#print axioms no_integer_sequence_with_rate_gap
#print axioms sevenZetaValues_ofReal
#print axioms sevenZeta_irrational_iff_standard

-- One fixed denominator clears the whole sequence, not a new denominator per n.
example (z : Fin 7 → ℚ) (hz : ∀ i, (z i : ℝ) = sevenZetaValues i) :
    ∃ Q : ℤ, 0 < Q ∧ ∃ I : ℕ → ℤ,
      (∀ n, (I n : ℝ) = (Q : ℝ)^(2*n) *
        (Matrix.det (h158Functional n)/(h158PrimitiveScalar n : ℝ))) ∧
      (∀ n, I n ≠ 0 ↔ Matrix.det (h158Functional n) ≠ 0) := by
  obtain ⟨Q, hQ, hclear⟩ := h158_actual_rational_specialization_clearing z hz
  choose I hI hne using hclear
  exact ⟨Q, hQ, I, (fun n => (hI n).symm), hne⟩

-- The cost has the negative scalar-log sign and denominator loss is only linear.
example (n Q : ℕ) (hQ : 0 < Q) (I : ℤ)
    (hI : (I : ℝ) = (Q : ℝ)^(2*n) *
      (Matrix.det (h158Functional n)/(h158PrimitiveScalar n : ℝ)))
    (hdet : Matrix.det (h158Functional n) ≠ 0) :
    Real.log |(I : ℝ)| = h158PrimitiveCost n +
      Real.log |Matrix.det (h158Functional n)| + (2*Real.log (Q : ℝ))*(n : ℝ) := by
  have hQreal : (0 : ℝ) < Q := by exact_mod_cast hQ
  have hc : (h158PrimitiveScalar n : ℝ) ≠ 0 := by
    exact_mod_cast h158PrimitiveScalar_ne_zero n
  rw [hI, abs_mul, abs_div, abs_pow, abs_of_pos hQreal,
    Real.log_mul (pow_ne_zero _ (ne_of_gt hQreal))
      (div_ne_zero (abs_ne_zero.mpr hdet) (abs_ne_zero.mpr hc)),
    Real.log_div (abs_ne_zero.mpr hdet) (abs_ne_zero.mpr hc), Real.log_pow]
  unfold h158PrimitiveCost
  push_cast
  ring

-- This check retains arithmetic and the strict gap as explicit hypotheses.
example (A : ℝ)
    (harith : UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0}
      h158PrimitiveCost A)
    (hgap : A+(-analyticExpression+2) < 0) :
    ∃ s ∈ ({7,9,11,13,15,17,19} : Finset ℕ),
      Irrational ((riemannZeta (s : ℂ)).re) :=
  sevenZeta_irrational_iff_standard.mp
    (h158_seven_irrational_of_rates A (-analyticExpression+2) hgap
      harith h158AnalyticCertifiedRate h158_rational_gate)

example : sevenOddWeights.card = 7 := by norm_num [sevenOddWeights]
example : (21 : ℕ) ∉ sevenOddWeights := by norm_num [sevenOddWeights]
example : sevenZetaValues 0 = (riemannZeta (7 : ℂ)).re := by
  simpa using sevenZetaValues_eq_re_riemannZeta 0
example : sevenZetaValues 6 = (riemannZeta (19 : ℂ)).re := by
  simpa using sevenZetaValues_eq_re_riemannZeta 6

example (s : ℕ) (hs : s ∈ sevenOddWeights) : (riemannZeta (s : ℂ)).im = 0 := by
  obtain ⟨i, rfl⟩ := (sevenOddWeights_index_iff s).mp hs
  exact riemannZeta_nat_im_eq_zero (by omega)

end OddZetaMixed
