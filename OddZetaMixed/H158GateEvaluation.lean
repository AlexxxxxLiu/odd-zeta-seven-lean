import OddZetaMixed.LocalReduction

/-!
# Actual even-basis evaluations at the rank-2n gate

This identifies the reduction of the original rational multiplier with the
concrete finite-field evaluation matrix. No congruence for the full period
matrix is assumed or asserted here.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

private theorem integral_square_difference (p x j : ℕ) [Fact p.Prime] :
    (x : ℚ)^2-((j : ℚ)+1)^2 ∈ h158GateIntegralRing p := by
  let S := h158GateIntegralRing p
  exact S.sub_mem (S.pow_mem (natCast_mem S x) 2)
    (S.pow_mem (S.add_mem (natCast_mem S j) S.one_mem) 2)

private theorem cast_square_difference (p x j : ℕ) [Fact p.Prime] :
    (((x : ℚ)^2-((j : ℚ)+1)^2 : ℚ) : ZMod p) =
      (x : ZMod p)^2-((j : ZMod p)+1)^2 := by
  have h : (x : ℚ)^2-((j : ℚ)+1)^2 =
      (((x : ℤ)^2-((j : ℤ)+1)^2 : ℤ) : ℚ) := by push_cast; rfl
  rw [h]
  rw [Rat.cast_intCast]
  simp only [Int.cast_sub, Int.cast_pow, Int.cast_add,
    Int.cast_natCast, Int.cast_one]

theorem h158Gate_evenBasisProduct_eval_mem (p m x : ℕ) [Fact p.Prime] :
    (evenBasisProduct m).eval (x : ℚ) ∈ h158GateIntegralRing p := by
  simp only [evenBasisProduct, eval_prod, eval_sub, eval_pow, eval_X, eval_C]
  exact (h158GateIntegralRing p).prod_mem
    (fun j _ => integral_square_difference p x j)

theorem h158Gate_evenBasisProduct_eval_cast (p m x : ℕ) [Fact p.Prime] :
    (((evenBasisProduct m).eval (x : ℚ) : ℚ) : ZMod p) =
      ∏ j ∈ range m, ((x : ZMod p)^2-((j : ZMod p)+1)^2) := by
  simp only [evenBasisProduct, eval_prod, eval_sub, eval_pow, eval_X, eval_C]
  rw [h158GateIntegralRing_cast_prod p (range m) _
    (fun j _ => integral_square_difference p x j)]
  exact Finset.prod_congr rfl (fun j _ => cast_square_difference p x j)

theorem h158Gate_evenBasis_eval_mem (n : ℕ) [Fact (Nat.Prime (55*n+1))]
    (i : Fin (2*n)) (x : ℤ) :
    (evenBasis i.val).eval (x : ℚ) ∈ h158GateIntegralRing (55*n+1) := by
  obtain ⟨z, hz⟩ := evenBasis_integer_valued i.val x
  rw [hz]
  exact intCast_mem _ z

theorem h158Gate_evenBasis_eval_cast (n : ℕ) [Fact (Nat.Prime (55*n+1))]
    (i k : Fin (2*n)) :
    (((evenBasis i.val).eval (-(gateNode n k : ℚ)) : ℚ) : ZMod (55*n+1)) =
      gateEvenEvaluation n i k := by
  rw [evenBasis_eval_neg]
  by_cases hi : i.val = 0
  · simp [hi, evenBasis_zero, gateEvenEvaluation, gateCoefficient, gateMonicBasis]
  obtain ⟨m, hm⟩ := Nat.exists_eq_succ_of_ne_zero hi
  let p := 55*n+1
  let S := h158GateIntegralRing p
  have hfac := h158Gate_basis_factorial_unit n Fact.out i
  have hinv : (((2*i.val).factorial : ℚ)⁻¹) ∈ S := by
    change 0 ≤ padicValRat p _
    rw [padicValRat.inv, hfac.2]
    omega
  have hscalar : 2/((2*i.val).factorial : ℚ) ∈ S := by
    rw [div_eq_mul_inv]
    exact S.mul_mem (natCast_mem S 2) hinv
  have hsq : (gateNode n k : ℚ)^2 ∈ S := S.pow_mem (natCast_mem S _) 2
  have hprod : (evenBasisProduct m).eval (gateNode n k : ℚ) ∈ S :=
    h158Gate_evenBasisProduct_eval_mem p m (gateNode n k)
  have hfc : ((2*i.val).factorial : ZMod p) ≠ 0 := by
    intro hz
    have hd := (ZMod.natCast_eq_zero_iff _ p).mp hz
    have hle := (Fact.out : p.Prime).dvd_factorial.mp hd
    have := i.isLt
    dsimp [p] at hle
    omega
  have hcast : ((2/((2*i.val).factorial : ℚ) : ℚ) : ZMod p) =
      2/((2*i.val).factorial : ZMod p) := by
    rw [Rat.cast_div_of_ne_zero (by norm_num) (by simpa using hfc)]
    norm_num
  rw [hm] at hscalar hcast
  rw [hm, evenBasis_succ]
  simp only [eval_mul, eval_C, eval_pow, eval_X]
  rw [h158GateIntegralRing_cast_mul p hscalar (S.mul_mem hsq hprod),
    h158GateIntegralRing_cast_mul p hsq hprod,
    h158GateIntegralRing_cast_pow p (natCast_mem S (gateNode n k)),
    h158Gate_evenBasisProduct_eval_cast p m (gateNode n k), hcast]
  simp only [Rat.cast_natCast, gateEvenEvaluation, gateCoefficient, hm,
    Nat.succ_ne_zero, ite_false, gateMonicBasis, eval_mul, eval_X, eval_prod,
    eval_sub, eval_C, gateSquare]

theorem h158Gate_evenBasis_reduction (n : ℕ) [Fact (Nat.Prime (55*n+1))]
    (i k : Fin (2*n))
    (hmem : (evenBasis i.val).eval (-(gateNode n k : ℚ)) ∈
      h158GateIntegralRing (55*n+1)) :
    h158GateReduction (55*n+1)
      ⟨(evenBasis i.val).eval (-(gateNode n k : ℚ)), hmem⟩ =
        gateEvenEvaluation n i k := h158Gate_evenBasis_eval_cast n i k

theorem h158Gate_centeredMultiplier_eval (n : ℕ) (i j k : Fin (2*n)) :
    (centeredMultiplier n i j).eval (-(h158GatePole n k : ℚ)) =
      (evenBasis i.val).eval (-(gateNode n k : ℚ)) *
      (evenBasis j.val).eval (-(gateNode n k : ℚ)) := by
  simp only [centeredMultiplier, eval_comp, eval_add, eval_X, eval_C, eval_mul]
  have he := h158GatePole_centered n k
  have harg : -(h158GatePole n k : ℚ)+(79*(n : ℚ)+1) =
      -(gateNode n k : ℚ) := by linarith
  rw [harg]

theorem h158Gate_centeredMultiplier_eval_mem (n : ℕ)
    [Fact (Nat.Prime (55*n+1))] (i j k : Fin (2*n)) :
    (centeredMultiplier n i j).eval (-(h158GatePole n k : ℚ)) ∈
      h158GateIntegralRing (55*n+1) := by
  apply h158GateIntegralRing_eval_mem
  · exact h158Gate_centeredMultiplier_coeff_nonneg n Fact.out i j
  · exact (h158GateIntegralRing (55*n+1)).neg_mem (natCast_mem _ _)

theorem h158Gate_centeredMultiplier_eval_cast (n : ℕ)
    [Fact (Nat.Prime (55*n+1))] (i j k : Fin (2*n)) :
    (((centeredMultiplier n i j).eval (-(h158GatePole n k : ℚ)) : ℚ) :
      ZMod (55*n+1)) = gateEvenEvaluation n i k * gateEvenEvaluation n j k := by
  rw [h158Gate_centeredMultiplier_eval]
  have hi : (evenBasis i.val).eval (-(gateNode n k : ℚ)) ∈
      h158GateIntegralRing (55*n+1) := by
    simpa only [Int.cast_neg, Int.cast_natCast] using
      h158Gate_evenBasis_eval_mem n i (-(gateNode n k : ℤ))
  have hj : (evenBasis j.val).eval (-(gateNode n k : ℚ)) ∈
      h158GateIntegralRing (55*n+1) := by
    simpa only [Int.cast_neg, Int.cast_natCast] using
      h158Gate_evenBasis_eval_mem n j (-(gateNode n k : ℤ))
  rw [h158GateIntegralRing_cast_mul _ hi hj,
    h158Gate_evenBasis_eval_cast, h158Gate_evenBasis_eval_cast]

end OddZetaMixed
