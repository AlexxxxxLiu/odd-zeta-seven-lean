import OddZetaMixed.H158GateCoefficients
import OddZetaMixed.H158GateJets
import OddZetaMixed.H158GateEvaluation
import OddZetaMixed.H158Application

/-!
# Signed value matrix for the actual rank-2n gate

The double shell has a minus sign and the simple shell a plus sign. Every
weight is the stripped residue of the original h158 kernel, not a free unit.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

theorem polynomial_eval_mem_subring (S : Subring ℚ) (P : ℚ[X])
    (hP : ∀ q, P.coeff q ∈ S) (x : ℚ) (hx : x ∈ S) : P.eval x ∈ S := by
  rw [eval_eq_sum, Polynomial.sum]
  apply S.sum_mem
  intro k hk
  exact S.mul_mem (hP k) (S.pow_mem hx k)

theorem h158Gate_multiplier_eval_integral (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (k : ℕ) :
    0 ≤ padicValRat (55*n+1) ((centeredMultiplier n i j).eval (-(k : ℚ))) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  exact polynomial_eval_mem_subring (h158GateIntegralRing (55*n+1)) _
    (h158Gate_centeredMultiplier_coeff_nonneg n hp i j) _
    ((h158GateIntegralRing _).neg_mem (natCast_mem _ k))

def h158GateLeadingWeight (n : ℕ) (a : Fin (2*n)) : ℚ :=
  if a.val < n then -h158GateWeight n (h158GatePole n a)
    else h158GateWeight n (h158GatePole n a)

theorem h158GateLeadingWeight_unit (n : ℕ) (hp : (55*n+1).Prime)
    (a : Fin (2*n)) :
    h158GateLeadingWeight n a ≠ 0 ∧
      padicValRat (55*n+1) (h158GateLeadingWeight n a) = 0 := by
  have hb := (h158GatePole_covers n _).mp ⟨a,rfl⟩
  have hw := h158GateWeight_unit n _ hp hb.1 hb.2
  unfold h158GateLeadingWeight
  split_ifs
  · exact ⟨neg_ne_zero.mpr hw.1, by rw [padicValRat.neg,hw.2]⟩
  · exact hw

def h158GateLeadingEntry (n : ℕ) (i j : Fin (2*n)) : ℚ :=
  ∑ a : Fin (2*n), h158GateLeadingWeight n a *
    (centeredMultiplier n i j).eval (-(h158GatePole n a : ℚ))

theorem h158GateLeadingEntry_integral (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) : 0 ≤ padicValRat (55*n+1) (h158GateLeadingEntry n i j) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  change h158GateLeadingEntry n i j ∈ S
  apply S.sum_mem
  intro a ha
  apply S.mul_mem
  · change 0 ≤ padicValRat (55*n+1) _
    rw [(h158GateLeadingWeight_unit n hp a).2]
  · exact h158Gate_multiplier_eval_integral n hp i j _

theorem h158Gate_centered_eval_product (n : ℕ) (i j a : Fin (2*n)) :
    (centeredMultiplier n i j).eval (-(h158GatePole n a : ℚ)) =
      (evenBasis i.val).eval (-(gateNode n a : ℚ)) *
        (evenBasis j.val).eval (-(gateNode n a : ℚ)) := by
  rw [centeredMultiplier, eval_comp]
  simp only [eval_add, eval_X, eval_C]
  have he : -(h158GatePole n a : ℚ) + (79*(n : ℚ)+1) = -(gateNode n a : ℚ) := by
    linarith [h158GatePole_centered n a]
  rw [he,eval_mul]

def h158GateRationalEvaluation (n : ℕ) : Matrix (Fin (2*n)) (Fin (2*n)) ℚ :=
  fun i a => (evenBasis i.val).eval (-(gateNode n a : ℚ))

/-- A rational weighted evaluation matrix with the original factorial basis.
Its finite-field nonzero determinant still needs the actual reduction map. -/
theorem h158GateLeadingEntry_eq_matrix (n : ℕ) :
    h158GateLeadingEntry n =
      h158GateRationalEvaluation n *
      Matrix.diagonal (h158GateLeadingWeight n) *
      (h158GateRationalEvaluation n).transpose := by
  ext i j
  rw [Matrix.mul_apply]
  simp only [h158GateLeadingEntry, Matrix.mul_diagonal,
    Matrix.transpose_apply, h158Gate_centered_eval_product]
  apply sum_congr rfl
  intro a ha
  simp only [h158GateRationalEvaluation]
  ring

/-- The local cancellation is summed at every active address before any
finite-field reduction. The error is a single integral rational multiple of p. -/
theorem h158Gate_singular_reduction_exists (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) :
    ∃ v : ℚ, 0 ≤ padicValRat (55*n+1) v ∧
      ((55*n+1 : ℕ) : ℚ)^2 * h158GateSingularConstant n i j =
        h158GateLeadingEntry n i j + ((55*n+1 : ℕ) : ℚ)*v := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  have hlocal (a : Fin (2*n)) : ∃ v : ℚ, 0 ≤ padicValRat (55*n+1) v ∧
      ((55*n+1 : ℕ) : ℚ)^2 * h158GateLocalSingular n i j (h158GatePole n a) =
        h158GateLeadingWeight n a *
          (centeredMultiplier n i j).eval (-(h158GatePole n a : ℚ)) +
        ((55*n+1 : ℕ) : ℚ)*v := by
    have hb := (h158GatePole_covers n _).mp ⟨a,rfl⟩
    have he : h158GatePole n a ≤ 104*n+1 ↔ a.val < n := by
      unfold h158GatePole
      omega
    simpa only [he, h158GateLeadingWeight, ite_mul] using
      h158Gate_local_reduction_exists n hp i j (h158GatePole n a) hb.1 hb.2
  choose v hv he using hlocal
  refine ⟨∑ a, v a, (h158GateIntegralRing (55*n+1)).sum_mem (fun a _ => hv a), ?_⟩
  have hs : h158GateSingularConstant n i j =
      ∑ a : Fin (2*n), h158GateLocalSingular n i j (h158GatePole n a) := by
    simpa only [h158GateLocalSingular, Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat,
      Nat.cast_one] using h158GateSingularConstant_eq_gateSum n i j
  rw [hs, mul_sum]
  simp_rw [he, sum_add_distrib, ← mul_sum]
  rfl

/-- The complete entry includes the harmonic remainder and all seven target
coordinates. All of these are retained in the integral error term. -/
theorem h158Gate_full_entry_reduction_exists (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (z : Fin 7 → ℚ)
    (hz : ∀ s, 0 ≤ padicValRat (55*n+1) (z s)) :
    ∃ v : ℚ, 0 ≤ padicValRat (55*n+1) v ∧
      ((55*n+1 : ℕ) : ℚ)^2 * MvPolynomial.eval z (h158SevenMatrix n i j) =
        h158GateLeadingEntry n i j + ((55*n+1 : ℕ) : ℚ)*v := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  obtain ⟨v,hv,he⟩ := h158Gate_singular_reduction_exists n hp i j
  let r := MvPolynomial.eval z (h158SevenMatrix n i j) - h158GateSingularConstant n i j
  have hr : r ∈ S := h158Gate_entry_remainder_integral n hp i j z hz
  refine ⟨v + ((55*n+1 : ℕ) : ℚ)*r,
    S.add_mem hv (S.mul_mem (natCast_mem S _) hr), ?_⟩
  dsimp [r]
  linear_combination he

theorem h158Gate_scaled_entry_integral (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (z : Fin 7 → ℚ)
    (hz : ∀ s, 0 ≤ padicValRat (55*n+1) (z s)) :
    0 ≤ padicValRat (55*n+1)
      (((55*n+1 : ℕ) : ℚ)^2 * MvPolynomial.eval z (h158SevenMatrix n i j)) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  obtain ⟨v,hv,he⟩ := h158Gate_full_entry_reduction_exists n hp i j z hz
  rw [he]
  exact S.add_mem (h158GateLeadingEntry_integral n hp i j)
    (S.mul_mem (natCast_mem S _) hv)

theorem h158Gate_scaled_entry_cast (n : ℕ) [Fact (Nat.Prime (55*n+1))]
    (i j : Fin (2*n)) (z : Fin 7 → ℚ)
    (hz : ∀ s, 0 ≤ padicValRat (55*n+1) (z s)) :
    ((((55*n+1 : ℕ) : ℚ)^2 * MvPolynomial.eval z (h158SevenMatrix n i j) : ℚ) :
      ZMod (55*n+1)) = (h158GateLeadingEntry n i j : ZMod (55*n+1)) := by
  let S := h158GateIntegralRing (55*n+1)
  obtain ⟨v,hv,he⟩ := h158Gate_full_entry_reduction_exists n Fact.out i j z hz
  rw [he, h158GateIntegralRing_cast_add _
    (h158GateLeadingEntry_integral n Fact.out i j) (S.mul_mem (natCast_mem S _) hv),
    h158GateIntegralRing_cast_mul _ (natCast_mem S _) hv]
  rw [Rat.cast_natCast, ZMod.natCast_self, zero_mul, add_zero]

def h158GateReducedWeights (n : ℕ) [Fact (Nat.Prime (55*n+1))] :
    Fin (2*n) → ZMod (55*n+1) := fun a => (h158GateLeadingWeight n a : ZMod (55*n+1))

theorem h158GateReducedWeights_ne_zero (n : ℕ) [Fact (Nat.Prime (55*n+1))]
    (a : Fin (2*n)) : h158GateReducedWeights n a ≠ 0 := by
  have hw := h158GateLeadingWeight_unit n Fact.out a
  let q : h158GateIntegralRing (55*n+1) := ⟨h158GateLeadingWeight n a, by
    change 0 ≤ padicValRat (55*n+1) _
    rw [hw.2]⟩
  exact (h158GateReduction_ne_zero_iff (55*n+1) q).mpr hw

/-- The actual leading value matrix reduces to the already certified
factorial-normalized Vandermonde, with the proved nonzero signed weights. -/
theorem h158GateLeadingEntry_cast_matrix (n : ℕ) [Fact (Nat.Prime (55*n+1))] :
    (fun i j => (h158GateLeadingEntry n i j : ZMod (55*n+1))) =
      gateEvenEvaluation n * Matrix.diagonal (h158GateReducedWeights n) *
        (gateEvenEvaluation n).transpose := by
  let S := h158GateIntegralRing (55*n+1)
  ext i j
  have hw (a : Fin (2*n)) : h158GateLeadingWeight n a ∈ S := by
    change 0 ≤ padicValRat (55*n+1) _
    rw [(h158GateLeadingWeight_unit n Fact.out a).2]
  have hm (a : Fin (2*n)) :
      (centeredMultiplier n i j).eval (-(h158GatePole n a : ℚ)) ∈ S :=
    h158Gate_multiplier_eval_integral n Fact.out i j _
  rw [h158GateLeadingEntry, h158GateIntegralRing_cast_sum _ _ _
    (fun a _ => S.mul_mem (hw a) (hm a)), Matrix.mul_apply]
  simp only [Matrix.mul_diagonal, Matrix.transpose_apply]
  apply sum_congr rfl
  intro a ha
  rw [h158GateIntegralRing_cast_mul _ (hw a) (hm a),
    h158Gate_centeredMultiplier_eval_cast]
  simp only [h158GateReducedWeights]
  ring

/-- Nonvanishing of the actual rational specialization at every gate prime,
not merely nonvanishing of an abstract finite-field evaluation matrix. -/
theorem h158Gate_rational_specialization_ne_zero (n : ℕ) (hp : (55*n+1).Prime)
    (z : Fin 7 → ℚ) (hz : ∀ s, 0 ≤ padicValRat (55*n+1) (z s)) :
    MvPolynomial.eval z (h158SevenMatrix n).det ≠ 0 := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let E : Matrix (Fin (2*n)) (Fin (2*n)) ℚ :=
    fun i j => MvPolynomial.eval z (h158SevenMatrix n i j)
  let A : Matrix (Fin (2*n)) (Fin (2*n)) ℚ := ((55*n+1 : ℕ) : ℚ)^2 • E
  have hA (i j : Fin (2*n)) : A i j ∈ h158GateIntegralRing (55*n+1) :=
    h158Gate_scaled_entry_integral n hp i j z hz
  have hred : A.map (fun q : ℚ => (q : ZMod (55*n+1))) =
      gateEvenEvaluation n * Matrix.diagonal (h158GateReducedWeights n) *
        (gateEvenEvaluation n).transpose := by
    rw [← h158GateLeadingEntry_cast_matrix]
    ext i j
    exact h158Gate_scaled_entry_cast n i j z hz
  have hne : (A.det : ZMod (55*n+1)) ≠ 0 := by
    rw [h158GateIntegralRing_cast_det _ A hA, hred]
    exact weighted_gate_det_ne_zero n _ (h158GateReducedWeights_ne_zero n)
  have hAne : A.det ≠ 0 := by
    intro hzero
    exact hne (by simp [hzero])
  have heval : MvPolynomial.eval z (h158SevenMatrix n).det = E.det :=
    (MvPolynomial.eval z).map_det (h158SevenMatrix n)
  rw [heval]
  intro hzero
  apply hAne
  simp only [A, Matrix.det_smul, hzero, mul_zero]

/-- This previously outstanding application predicate is now discharged for
the original h158 matrix and the original prime subsequence. -/
theorem h158_rational_gate : H158RationalGate := by
  intro z Q hQ hden n hp hnot
  let : Fact (55*n+1).Prime := ⟨hp⟩
  apply h158Gate_rational_specialization_ne_zero n hp z
  intro s
  exact h158GateIntegralRing_mem_of_exists_common_denominator (55*n+1) (z s)
    Q hnot (hden s)

theorem h158_formal_determinant_ne_zero_on_gate (n : ℕ) (hp : (55*n+1).Prime) :
    (h158SevenMatrix n).det ≠ 0 := by
  have h := h158Gate_rational_specialization_ne_zero n hp (fun _ => 0) (by simp)
  intro hzero
  exact h (by simp [hzero])

/-- The full determinant valuation is exactly -4n, not just bounded below
by the top-layer calculation. The rank factor is charged in full. -/
theorem h158Gate_rational_determinant_valuation (n : ℕ) (hp : (55*n+1).Prime)
    (z : Fin 7 → ℚ) (hz : ∀ s, 0 ≤ padicValRat (55*n+1) (z s)) :
    padicValRat (55*n+1) (MvPolynomial.eval z (h158SevenMatrix n).det) =
      -4*(n : ℤ) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let E : Matrix (Fin (2*n)) (Fin (2*n)) ℚ :=
    fun i j => MvPolynomial.eval z (h158SevenMatrix n i j)
  let A : Matrix (Fin (2*n)) (Fin (2*n)) ℚ := ((55*n+1 : ℕ) : ℚ)^2 • E
  have hA (i j : Fin (2*n)) : A i j ∈ h158GateIntegralRing (55*n+1) :=
    h158Gate_scaled_entry_integral n hp i j z hz
  have hred : A.map (fun q : ℚ => (q : ZMod (55*n+1))) =
      gateEvenEvaluation n * Matrix.diagonal (h158GateReducedWeights n) *
        (gateEvenEvaluation n).transpose := by
    rw [← h158GateLeadingEntry_cast_matrix]
    ext i j
    exact h158Gate_scaled_entry_cast n i j z hz
  have hcast : (A.det : ZMod (55*n+1)) ≠ 0 := by
    rw [h158GateIntegralRing_cast_det _ A hA, hred]
    exact weighted_gate_det_ne_zero n _ (h158GateReducedWeights_ne_zero n)
  have hval : padicValRat (55*n+1) A.det = 0 :=
    ((h158GateReduction_ne_zero_iff (55*n+1)
      ⟨A.det, h158GateIntegralRing_det_mem _ A hA⟩).mp hcast).2
  have heval : MvPolynomial.eval z (h158SevenMatrix n).det = E.det :=
    (MvPolynomial.eval z).map_det (h158SevenMatrix n)
  have hE : E.det ≠ 0 := heval ▸ h158Gate_rational_specialization_ne_zero n hp z hz
  have hp0 : ((55*n+1 : ℕ) : ℚ) ≠ 0 := by exact_mod_cast hp.ne_zero
  have hscale : A.det = ((55*n+1 : ℕ) : ℚ)^(4*n) * E.det := by
    simp only [A, Matrix.det_smul, Fintype.card_fin, ← pow_mul]
    congr 2
    omega
  rw [hscale, padicValRat.mul (pow_ne_zero _ hp0) hE, padicValRat.pow,
    padicValRat.self hp.one_lt, mul_one] at hval
  rw [heval]
  push_cast at hval
  omega

/-- The gate is no longer an input. The two global rate propositions remain
explicit obligations; this theorem is not yet unconditional irrationality. -/
theorem h158_seven_irrational_of_rate_bounds
    (harith : H158ArithmeticBound) (hanalytic : H158AnalyticBound) :
    ∃ i : Fin 7, Irrational (sevenZetaValues i) :=
  h158_seven_irrational_of_three_inputs harith hanalytic h158_rational_gate

end OddZetaMixed
