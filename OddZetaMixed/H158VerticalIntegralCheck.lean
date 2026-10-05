import OddZetaMixed.H158VerticalIntegral

/-! Independent import, endpoint, orientation, and transitive axiom checks. -/

noncomputable section

namespace OddZetaMixed

open Filter MeasureTheory
open scoped Topology

/-- The existence result concerns the actual entry and cotangent kernel. -/
example (n : ℕ) (i j : Fin (2 * n)) :
    Integrable (fun y : ℝ =>
      h158EntryComplex n i j ((h158ContourAbscissa n : ℂ) + (y : ℂ) * Complex.I) *
        h158ContourKernel ((h158ContourAbscissa n : ℂ) + (y : ℂ) * Complex.I) *
          Complex.I) := by
  exact h158VerticalIntegrand_integrable n i j

example (n : ℕ) (i j : Fin (2 * n)) :
    Integrable (fun y : ℝ => ‖h158VerticalIntegrand n i j y‖) :=
  (h158VerticalIntegrand_integrable n i j).norm

example (n : ℕ) (i j : Fin (2 * n)) :
    Tendsto (fun q : ℕ => ∫ y in -(q : ℝ)..(q : ℝ),
      h158ContourIntegrand n i j (h158ContourPoint n y) * Complex.I) atTop
      (𝓝 (∫ y : ℝ, h158ContourIntegrand n i j (h158ContourPoint n y) * Complex.I)) :=
  h158VerticalTruncation_nat_tendsto n i j

/-- This finite-rank instance still has an arbitrary real truncation height. -/
example (q : ℝ) (hq : 212 ≤ q) :
    ‖h158VerticalIntegral 1 0 1 - h158VerticalTruncation 1 0 1 q‖ ≤
      2 * h158ContourIntegrandDecayConstant 1 / (102 * q ^ 102) := by
  have h := h158VerticalIntegral_truncation_error 1 (0 : Fin 2) (1 : Fin 2) q
    (by norm_num [h158ContourDecayRadius]; exact hq)
  norm_num only [Nat.cast_ofNat, Nat.reduceMul, Nat.reduceAdd] at h
  exact h

example (n : ℕ) (i j : Fin (2 * n)) :
    Tendsto (fun q : ℕ =>
      -(h158ClockwiseRectangleIntegral n i j q) / (2 * (Real.pi : ℂ) * Complex.I))
      atTop (𝓝 (h158NormalizedVerticalIntegral n i j)) :=
  h158NormalizedClockwiseRectangleIntegral_tendsto n i j

#print axioms h158VerticalIntegrand_continuous
#print axioms h158VerticalIntegrand_intervalIntegrable
#print axioms h158VerticalIntegrand_norm_le_decay
#print axioms h158VerticalIntegrand_norm_le_envelope
#print axioms h158VerticalIntegrand_integrable
#print axioms h158VerticalTruncation_tendsto
#print axioms h158VerticalTruncation_nat_tendsto
#print axioms h158VerticalTail_norm_le
#print axioms h158VerticalIntegral_sub_truncation
#print axioms h158VerticalIntegral_truncation_error
#print axioms h158ClockwiseRectangleIntegral_tendsto
#print axioms h158NormalizedVerticalTruncation_tendsto
#print axioms h158NormalizedClockwiseRectangleIntegral_tendsto

end OddZetaMixed
