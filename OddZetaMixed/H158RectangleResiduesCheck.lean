import OddZetaMixed.H158RectangleResidues
import OddZetaMixed.TrustAudit

/-! Fresh-import tests for the finite residue identity and actual functional integral. -/

noncomputable section

namespace OddZetaMixed

open Complex MeasureTheory

example : h158RectBoundary (-1) 1 1 (fun z : ℂ => z⁻¹) =
    2 * (Real.pi : ℂ) * I := by
  simpa only [Complex.ofReal_zero, sub_zero] using
    h158RectBoundary_simplePole (-1) 1 1 0 (by norm_num) (by norm_num) (by norm_num)

example : h158RectBoundary (-1) 1 1 (fun z : ℂ => (z ^ 5)⁻¹) = 0 := by
  simpa only [Complex.ofReal_zero, sub_zero] using
    h158RectBoundary_higherPole (-1) 1 1 0 (by norm_num) (by norm_num)
      (by norm_num) 4 (by norm_num)

/-- No analytic, residue, or global-rate hypotheses are supplied. -/
example (n q : ℕ) (i j : Fin (2 * n)) (hq : 1 ≤ q) :
    h158ClockwiseRectangleIntegral n i j q =
      -(2 * (Real.pi : ℂ) * I) *
        ∑ v ∈ Finset.range (q + 4 * n + 1),
          iteratedDeriv 4 (h158EntryComplex n i j) ((v : ℂ) - 4 * (n : ℂ)) / 24 :=
  h158ClockwiseRectangle_residue_identity n q i j hq

/-- The parent-facing integral contains the original rational entry, original
cotangent kernel, and the actual orientation factor `dz/dy = I`. -/
example (n : ℕ) (i j : Fin (2 * n)) :
    -(∫ y : ℝ,
      h158EntryComplex n i j ((h158ContourAbscissa n : ℂ) + (y : ℂ) * I) *
        h158ContourKernel ((h158ContourAbscissa n : ℂ) + (y : ℂ) * I) * I) /
      (2 * (Real.pi : ℂ) * I) = (h158Functional n i j : ℂ) :=
  h158NormalizedVerticalIntegral_eq_functional n i j

example : h158NormalizedVerticalIntegral 1 0 1 = (h158Functional 1 0 1 : ℂ) :=
  h158NormalizedVerticalIntegral_eq_functional 1 (0 : Fin 2) (1 : Fin 2)

#check h158Rectangle_residue_identity
#check h158ClockwiseRectangle_residue_identity
#check h158VerticalIntegral_eq_functional
#check h158NormalizedVerticalIntegral_eq_functional

#print axioms h158RectBoundary_eq_zero_of_analytic
#print axioms h158RectBoundary_simplePole
#print axioms h158RectBoundary_higherPole
#print axioms h158PolePrincipal_exact
#print axioms h158ContourIntegrand_full_principal_part
#print axioms h158_fill_finite_analytic
#print axioms h158Rectangle_analytic_remainder
#print axioms h158RectBoundary_principal
#print axioms h158Rectangle_residue_identity
#print axioms h158ClockwiseRectangle_residue_identity
#print axioms h158RectangleResidueSum_tendsto
#print axioms h158VerticalIntegral_eq_functional
#print axioms h158NormalizedVerticalIntegral_eq_functional

end OddZetaMixed

audit_project_axioms OddZetaMixed
