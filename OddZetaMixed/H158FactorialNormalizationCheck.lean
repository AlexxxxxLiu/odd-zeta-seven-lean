import OddZetaMixed.H158FactorialNormalization
import OddZetaMixed.TrustAudit

/-! Fresh-import checks for the actual factorial normalization and its uniform error. -/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset

-- Positivity includes zero, but the logarithmic scaling formulas require n >= 1.
example : h158Normalization 0 = 2 := by
  norm_num [h158Normalization]

example (n : ℕ) : 0 < h158Normalization n := h158Normalization_pos n

example (n : ℕ) : 0 < (h158Normalization n : ℝ) :=
  h158Normalization_real_pos n

example (n : ℕ) : |(h158Normalization n : ℝ)| = (h158Normalization n : ℝ) :=
  abs_of_pos (h158Normalization_real_pos n)

-- The main coefficient is tied to the actual phase, not a replacement phase.
example : h158PhaseConstant =
    (∑ b ∈ range 16, ((52-2*b : ℕ) : ℝ)*Real.log ((52-2*b : ℕ) : ℝ)) -
      2*∑ a ∈ range 5, ((48+a : ℕ) : ℝ)*Real.log ((48+a : ℕ) : ℝ) :=
  h158PhaseConstant_eq_normalization_sums

example : h158NormalizationLogConstant =
    Real.log 2 + 3*Real.log (2*Real.pi) +
      (1/2 : ℝ)*(∑ b ∈ range 16, Real.log ((52-2*b : ℕ) : ℝ)) -
        ∑ a ∈ range 5, Real.log ((48+a : ℕ) : ℝ) := rfl

-- The first positive factorial index satisfies the same finite Stirling bound.
example : 0 ≤ h158FactorialLogError 1 ∧ h158FactorialLogError 1 ≤ 1 :=
  h158FactorialLogError_bounds 1 (by norm_num)

example (n : ℕ) (hn : 1 ≤ n) (b : ℕ) (hb : b < 16) :
    0 < (((52-2*b)*n : ℕ) : ℝ) := by
  exact_mod_cast Nat.mul_pos (by omega : 0 < 52-2*b) hn

-- The exact remainder keeps every finite factorial term.
example (n : ℕ) (hn : 1 ≤ n) :
    Real.log (h158Normalization n : ℝ) =
      92*(n : ℝ)*Real.log (n : ℝ) + (n : ℝ)*(h158PhaseConstant-92) +
        3*Real.log (n : ℝ) + h158NormalizationLogConstant +
          ((∑ b ∈ range 16, h158FactorialLogError ((52-2*b)*n)) -
            2*∑ a ∈ range 5, h158FactorialLogError ((48+a)*n)) :=
  h158Normalization_log_eq n hn

example (n : ℕ) (hn : 1 ≤ n) :
    |Real.log (h158Normalization n : ℝ) -
      (92*(n : ℝ)*Real.log (n : ℝ) + (n : ℝ)*(h158PhaseConstant-92) +
        3*Real.log (n : ℝ) + h158NormalizationLogConstant)| ≤ 26 :=
  h158Normalization_log_abs_sub_le n hn

-- In fact the signed bound gives the stronger absolute bound 16.
example (n : ℕ) (hn : 1 ≤ n) : |h158NormalizationLogError n| ≤ 16 := by
  have h := h158NormalizationLogError_bounds n hn
  exact abs_le.mpr ⟨by linarith, h.2⟩

example : |Real.log (h158Normalization 1 : ℝ) -
    (h158PhaseConstant-92+h158NormalizationLogConstant)| ≤ 26 := by
  simpa [h158NormalizationLogMain] using
    h158Normalization_log_abs_sub_le 1 (by norm_num)

example : ∃ error : ℝ, |error| ≤ 26 ∧
    Real.log (h158Normalization 1 : ℝ) =
      h158PhaseConstant-92+h158NormalizationLogConstant+error := by
  simpa using h158Normalization_log_uniform 1 (by norm_num)

#check h158Normalization_log_eq
#check h158NormalizationLogError_bounds
#check h158Normalization_log_uniform

#print axioms h158Normalization_pos
#print axioms h158FactorialLogError_bounds
#print axioms h158PhaseConstant_eq_normalization_sums
#print axioms h158Normalization_log_eq
#print axioms h158NormalizationLogError_bounds
#print axioms h158Normalization_log_abs_sub_le
#print axioms h158Normalization_log_uniform

end OddZetaMixed

audit_project_axioms OddZetaMixed.h158Normalization_real_pos
audit_project_axioms OddZetaMixed.h158FactorialLogError_bounds
audit_project_axioms OddZetaMixed.h158PhaseConstant_eq_normalization_sums
audit_project_axioms OddZetaMixed.h158Normalization_log_eq
audit_project_axioms OddZetaMixed.h158NormalizationLogError_bounds
audit_project_axioms OddZetaMixed.h158Normalization_log_abs_sub_le
audit_project_axioms OddZetaMixed.h158Normalization_log_uniform
