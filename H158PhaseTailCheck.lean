import OddZetaMixed.H158PhaseTail
import OddZetaMixed.TrustAudit

noncomputable section
set_option autoImplicit false
open OddZetaMixed

-- The two extreme saved bins retain their exact rational roots.
example : h158PhaseRoots 0 = ![14071/1000, 3617/250, 14837/1000, 15239/1000] := rfl
example : h158PhaseRoots 7 = ![12713/1000, 14223/1000, 15657/1000, 8623/500] := rfl

example (b : Fin 8) (j : Fin 4) :
    0 < (h158PhaseRoots b j : ℝ) ∧ (h158PhaseRoots b j : ℝ) < 20 :=
  h158PhaseRoots_bounds b j

-- This is a genuine derivative of phi, before the adaptive correction.
example (s : ℝ) : HasDerivAt h158Phase (h158PhaseDerivative s) s :=
  h158Phase_hasDerivAt s

-- At theta zero the potential is exactly phi, without evaluating any logarithm.
example (a : Fin 4 → ℝ) : h158PhasePotential a 0 = h158Phase := by
  funext s
  simp [h158PhasePotential]

-- Both theta endpoints and the tail boundary hold for every saved root set.
example (b : Fin 8) :
    deriv (h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) 0) 96 ≤ -(4/5 : ℝ) :=
  h158PhaseRoots_deriv_tail_le b (by norm_num) (by norm_num) (by norm_num)

example (b : Fin 8) {s : ℝ} (hs : 96 ≤ s) :
    deriv (h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) 2) s ≤ -(4/5 : ℝ) :=
  h158PhaseRoots_deriv_tail_le b (by norm_num) (by norm_num) hs

-- The original bin restriction is weaker than the proved global theta domain.
example (b : Fin 8) {theta s : ℝ}
    (hleft : (b.val : ℝ)/4 ≤ theta) (hright : theta ≤ ((b.val : ℝ)+1)/4)
    (hs : 96 ≤ s) :
    deriv (h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) theta) s ≤ -(4/5 : ℝ) := by
  have hb0 : (0 : ℝ) ≤ b.val := Nat.cast_nonneg _
  have hb7 : (b.val : ℝ) ≤ 7 := by exact_mod_cast (show b.val ≤ 7 by omega)
  exact h158PhaseRoots_deriv_tail_le b (by linarith) (by linarith) hs

-- Boundary roots are permitted by the larger-domain theorem.
example {s : ℝ} (hs : 96 ≤ s) :
    deriv (h158PhasePotential (fun _ => 20) 2) s ≤ -(4/5 : ℝ) :=
  h158PhasePotential_deriv_tail_le _ (fun _ => by norm_num)
    (by norm_num) (by norm_num) hs

example {s : ℝ} (hs : 96 ≤ s) :
    deriv (h158PhasePotential (fun _ => 0) 2) s ≤ -(4/5 : ℝ) :=
  h158PhasePotential_deriv_tail_le _ (fun _ => by norm_num)
    (by norm_num) (by norm_num) hs

-- The actual logarithm arguments cannot vanish anywhere on the tail.
example (b : Fin 8) (j : Fin 4) {s : ℝ} (hs : 96 ≤ s) :
    0 < h158AdaptivePairModulus 75 (h158PhaseRoots b j : ℝ) s :=
  h158PhasePairModulus_tail_pos (h158PhaseRoots_bounds b j).1.le
    (h158PhaseRoots_bounds b j).2.le hs

#check h158PhasePotential_hasDerivAt
#check h158PhasePotential_deriv_tail_le
#check h158PhaseRoots_deriv_tail_le

#print axioms h158Phase_hasDerivAt
#print axioms h158PhasePotential_hasDerivAt
#print axioms h158PhasePotential_deriv_tail_le
#print axioms h158PhaseRoots_deriv_tail_le

audit_project_axioms OddZetaMixed.h158PhaseRoots_deriv_tail_le
audit_project_axioms OddZetaMixed.h158PhasePotential_deriv_tail_le
audit_project_axioms OddZetaMixed.h158PhasePotential_hasDerivAt
