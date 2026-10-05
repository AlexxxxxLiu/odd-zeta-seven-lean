import OddZetaMixed.H158GateEvaluation
import OddZetaMixed.TrustAudit

/-! Interface checks, edge-case regressions, and transitive axiom audit. -/

namespace OddZetaMixed

local instance : Fact (Nat.Prime 5) := ⟨by norm_num⟩

example (p : ℕ) [Fact p.Prime] (q : h158GateIntegralRing p) :
    h158GateReduction p q ≠ 0 ↔
      (q : ℚ) ≠ 0 ∧ padicValRat p (q : ℚ) = 0 :=
  h158GateReduction_ne_zero_iff p q

example (p : ℕ) [Fact p.Prime] (q : h158GateIntegralRing p) :
    h158GateReduction p q = 0 ↔
      (q : ℚ) = 0 ∨ 0 < padicValRat p (q : ℚ) :=
  h158GateReduction_eq_zero_iff p q

example (p Q : ℕ) [Fact p.Prime] (hpQ : ¬p ∣ Q) (q : ℚ)
    (h : ∃ a : ℤ, (Q : ℚ)*q = a) : q ∈ h158GateIntegralRing p :=
  h158GateIntegralRing_mem_of_exists_common_denominator p q Q hpQ h

example : (0 : ℚ) ∈ h158GateIntegralRing 5 := by
  exact (h158GateIntegralRing 5).zero_mem

example : padicValRat 5 (0 : ℚ) = 0 := by simp

example : h158GateReduction 5 0 = 0 := map_zero _

example : (1/5 : ℚ) ∉ h158GateIntegralRing 5 := by
  rw [h158GateIntegralRing_mem_iff_den_not_dvd]
  norm_num

example : h158GateReduction 5 ⟨5, natCast_mem _ 5⟩ = 0 := by
  change ((5 : ℚ) : ZMod 5) = 0
  norm_num
  decide

example : (2/3 : ℚ) ∈ h158GateIntegralRing 5 := by
  rw [h158GateIntegralRing_mem_iff_den_not_dvd]
  norm_num

example (h : (2/3 : ℚ) ∈ h158GateIntegralRing 5) :
    h158GateReduction 5 ⟨2/3, h⟩ = 4 := by
  change ((2/3 : ℚ) : ZMod 5) = 4
  norm_num [Rat.cast_def]
  apply (div_eq_iff (by decide : (3 : ZMod 5) ≠ 0)).mpr
  decide

example (p : ℕ) [Fact p.Prime] {ι : Type*} [Fintype ι] [DecidableEq ι]
    (A : Matrix ι ι ℚ) (hA : ∀ i j, A i j ∈ h158GateIntegralRing p) :
    (A.det : ZMod p) = (A.map (fun q : ℚ => (q : ZMod p))).det :=
  h158GateIntegralRing_cast_det p A hA

example (n : ℕ) [Fact (Nat.Prime (55*n+1))] (i k : Fin (2*n)) :
    (((evenBasis i.val).eval (-(gateNode n k : ℚ)) : ℚ) : ZMod (55*n+1)) =
      gateEvenEvaluation n i k := h158Gate_evenBasis_eval_cast n i k

example (n : ℕ) [Fact (Nat.Prime (55*n+1))] (i j k : Fin (2*n)) :
    (((centeredMultiplier n i j).eval (-(h158GatePole n k : ℚ)) : ℚ) :
      ZMod (55*n+1)) = gateEvenEvaluation n i k * gateEvenEvaluation n j k :=
  h158Gate_centeredMultiplier_eval_cast n i j k

#print axioms h158GateIntegralRing_den_valuation
#print axioms h158GateIntegralRing_den_not_dvd
#print axioms h158GateIntegralRing_mem_iff_den_not_dvd
#print axioms h158GateIntegralRing_den_cast_ne_zero
#print axioms h158GateReduction
#print axioms h158GateReduction_apply
#print axioms h158GateReduction_ne_zero_iff
#print axioms h158GateReduction_eq_zero_iff
#print axioms h158GateIntegralRing_mem_of_common_denominator
#print axioms h158GateIntegralRing_mem_of_exists_common_denominator
#print axioms h158GateReduction_pow
#print axioms h158GateReduction_det
#print axioms h158GateIntegralRing_cast_add
#print axioms h158GateIntegralRing_cast_sum
#print axioms h158GateIntegralRing_cast_mul
#print axioms h158GateIntegralRing_cast_pow
#print axioms h158GateIntegralRing_cast_prod
#print axioms h158GateIntegralRing_eval_mem
#print axioms h158GateIntegralRing_det_mem
#print axioms h158GateIntegralRing_cast_det
#print axioms h158Gate_evenBasisProduct_eval_mem
#print axioms h158Gate_evenBasisProduct_eval_cast
#print axioms h158Gate_evenBasis_eval_mem
#print axioms h158Gate_evenBasis_eval_cast
#print axioms h158Gate_evenBasis_reduction
#print axioms h158Gate_centeredMultiplier_eval
#print axioms h158Gate_centeredMultiplier_eval_mem
#print axioms h158Gate_centeredMultiplier_eval_cast

end OddZetaMixed

audit_project_axioms OddZetaMixed
