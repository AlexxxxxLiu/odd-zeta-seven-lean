import OddZetaMixed.H158IntegralDetBound
import OddZetaMixed.TrustAudit

/-! Fresh-import checks for complete absolute-integral determinant bounds. -/

noncomputable section

namespace OddZetaMixed

open MeasureTheory
open scoped BigOperators

/-- The entry normalization is explicitly `1/(2*pi)`, with the actual kernel. -/
example (n : ℕ) (i j : Fin (2 * n)) :
    |h158Functional n i j| ≤
      (∫ y : ℝ, ‖h158EntryComplex n i j (h158ContourPoint n y) *
        h158ContourKernel (h158ContourPoint n y) * Complex.I‖) / (2 * Real.pi) :=
  h158Functional_abs_le_absoluteIntegral n i j

/-- Finite rank includes the empty determinant, without an `n > 0` hypothesis. -/
example : |Matrix.det (h158Functional 0)| ≤
    ((2 * 0).factorial : ℝ) * ∏ i : Fin (2 * 0), h158ModulusMoment 0 i :=
  h158Functional_det_abs_le_modulusMoments 0

/-- The factorized bound never divides by a row bound. -/
example (A : Matrix (Fin 2) (Fin 2) ℝ) (hA : ∀ i j, |A i j| ≤ 1) :
    |A.det| ≤ (2 : ℝ) := by
  have h := h158_det_abs_le_factorized A (fun _ => 1)
    (fun _ => zero_le_one) (by simpa using hA)
  simpa using h

example (A : Matrix (Fin 2) (Fin 2) ℝ) (hA : ∀ i j, |A i j| ≤ 0) :
    |A.det| ≤ 0 := by
  have h := h158_det_abs_le_factorized A (fun _ => 0)
    (fun _ => le_rfl) (by simpa using hA)
  simpa using h

/-- All complete moments here have proved integrability, from actual radial bounds. -/
example (n : ℕ) (i : Fin (2 * n)) :
    Integrable (fun y : ℝ => h158ModulusWeight n y * ‖h158ContourBasis n i y‖ ^ 2) :=
  h158ModulusDensity_integrable n i

example (n : ℕ) (i j : Fin (2 * n)) :
    h158AbsoluteIntegral n i j / (2 * Real.pi) ≤
      Real.sqrt (h158ModulusMoment n i) * Real.sqrt (h158ModulusMoment n j) :=
  h158AbsoluteIntegral_le_modulusMoments n i j

/-- Unconditional actual determinant bound: no asymptotic or contour hypotheses. -/
example (n : ℕ) :
    |Matrix.det (h158Functional n)| ≤ ((2 * n).factorial : ℝ) *
      ∏ i : Fin (2 * n), ∫ y : ℝ,
        ‖h158VerticalIntegrand n 0 0 y‖ / (2 * Real.pi) *
          ‖h158ContourBasis n i y‖ ^ 2 :=
  h158Functional_det_abs_le_modulusMoments n

example (n : ℕ) :
    |Matrix.det (h158Functional n)| ≤ ((2 * n).factorial : ℝ) /
      (2 * Real.pi) ^ (2 * n) *
        ∏ i : Fin (2 * n), h158AbsoluteIntegral n i i :=
  h158Functional_det_abs_le_diagonalAbsoluteIntegrals n

/-- Supplied bounds are explicit inputs, not hidden global-rate assumptions. -/
example (n : ℕ) (b : Fin (2 * n) → ℝ) (hb : ∀ i, 0 ≤ b i)
    (hbound : ∀ i j : Fin (2 * n),
      h158AbsoluteIntegral n i j ≤ 2 * Real.pi * (b i * b j)) :
    |Matrix.det (h158Functional n)| ≤ ((2 * n).factorial : ℝ) * ∏ i, (b i) ^ 2 :=
  h158Functional_det_abs_le_of_rawIntegral n b hb hbound

example (n : ℕ) (B : Fin (2 * n) → ℝ)
    (hB : ∀ i : Fin (2 * n), h158ModulusMoment n i ≤ B i) :
    |Matrix.det (h158Functional n)| ≤ ((2 * n).factorial : ℝ) * ∏ i, B i :=
  h158Functional_det_abs_le_of_modulusMoment_bounds n B hB

#check h158Functional_abs_le_absoluteIntegral
#check h158AbsoluteIntegral_le_modulusMoments
#check h158Functional_det_abs_le_modulusMoments
#check h158Functional_det_abs_le_diagonalAbsoluteIntegrals
#check h158Functional_det_abs_le_of_modulusMoment_bounds

#print axioms h158Functional_abs_le_absoluteIntegral
#print axioms h158_det_abs_le_factorized
#print axioms h158Functional_det_abs_le_of_absoluteIntegral
#print axioms h158Functional_det_abs_le_of_rawIntegral
#print axioms h158VerticalIntegrand_factorization
#print axioms h158ModulusDensity_integrable
#print axioms h158ModulusAmplitude_memLp
#print axioms h158AbsoluteIntegral_le_modulusMoments
#print axioms h158Functional_det_abs_le_modulusMoments
#print axioms h158Functional_det_abs_le_diagonalAbsoluteIntegrals
#print axioms h158Functional_det_abs_le_of_modulusMoment_bounds
#print axioms h158ModulusMoment_le_integralMajorant

end OddZetaMixed

audit_project_axioms OddZetaMixed
