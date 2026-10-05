import OddZetaMixed.H158ResidueCounts
import OddZetaMixed.FormalPolynomialMinors
import OddZetaMixed.H158Normalization
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Data.Rat.Floor

/-!
# Unit-slope jets of the actual integer-valued even basis

These bounds assert v_p(P^[q](a)) >= -q, with zero coefficients allowed.
They do not assert integrality of the unscaled Taylor coefficients.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.H158IntegerValuedJets

open Polynomial Finset LocalJetValuation

theorem rising_rootCredit_lower {p : ℕ} [Fact p.Prime] (a x : ℤ) (m : ℕ) :
    ((m/p : ℕ) : ℤ) ≤ ∑ j ∈ range m, rootCredit p ((a : ℚ)+(j : ℚ)+(x : ℚ)) := by
  have he : (∑ j ∈ range m, rootCredit p ((a : ℚ)+(j : ℚ)+(x : ℚ))) =
      residueIntervalFloor p (a+x-1) m 0 := by
    calc
      _ = ∑ j ∈ range m,
          if (p : ℤ) ∣ (a+x-1)+1+(j : ℤ)-0 then (1 : ℤ) else 0 := by
        apply sum_congr rfl
        intro j hj
        have hj' : (a : ℚ)+(j : ℚ)+(x : ℚ) =
            (((a+x-1)+1+(j : ℤ)-0 : ℤ) : ℚ) := by push_cast; ring
        rw [hj', rootCredit_int]
      _ = _ := residue_interval_sum_floor p (Fact.out : p.Prime).pos _ _ _
  rw [he]
  exact residueIntervalFloor_lower _ _ _ _

theorem factorial_valuation_below_square {p : ℕ} [Fact p.Prime]
    (m : ℕ) (hm : m < p^2) :
    padicValRat p (m.factorial : ℚ) = ((m/p : ℕ) : ℤ) := by
  by_cases hm0 : m = 0
  · simp [hm0]
  rw [padicValRat.of_nat, padicValNat_factorial (Nat.log_lt_of_lt_pow hm0 hm)]
  norm_num [show Ico 1 2 = ({1} : Finset ℕ) by decide]

/-- A consecutive integer root block divided by its own factorial. -/
def normalizedRising (a : ℤ) (m : ℕ) : ℚ[X] :=
  C (1/(m.factorial : ℚ))*rising (a : ℚ) m

/-- Every integer translate, not just a selected pole, has unit-slope jets. -/
theorem normalizedRising_weighted {p : ℕ} [Fact p.Prime]
    (a x : ℤ) (m : ℕ) (hm : m < p^2) :
    Weighted p (taylor (x : ℚ) (normalizedRising a m)) 0 1 := by
  have hs : AtLeast p (-((m/p : ℕ) : ℤ)) (1/(m.factorial : ℚ)) := by
    apply Or.inr
    rw [one_div, padicValRat.inv, factorial_valuation_below_square m hm]
  rw [normalizedRising, taylor_mul, taylor_C]
  have h := weighted_mul (weighted_C (slope := 1) hs) (weighted_rising (a : ℚ) x m)
  have hc := rising_rootCredit_lower (p := p) a x m
  intro q
  exact mono (h q) (by omega)

private theorem rising_eq_asc (a : ℚ) (m : ℕ) :
    rising a m = (ascPochhammer ℚ m).comp (X+C a) := by
  induction m with
  | zero => simp [rising]
  | succ m ih =>
    rw [rising, prod_range_succ, ← rising, ih, ascPochhammer_succ_right]
    simp only [mul_comp, add_comp, X_comp, natCast_comp]
    congr 1
    simp
    ring

theorem normalizedRising_eval (a : ℤ) (m : ℕ) (x : ℚ) :
    (normalizedRising a m).eval x = Ring.multichoose (x+(a : ℚ)) m := by
  rw [normalizedRising, eval_mul, eval_C, rising_eq_asc, eval_comp,
    eval_add, eval_X, eval_C]
  have he : (m.factorial : ℚ)*Ring.multichoose (x+(a : ℚ)) m =
      (ascPochhammer ℚ m).eval (x+(a : ℚ)) := by
    simpa only [nsmul_eq_mul, Polynomial.ascPochhammer_smeval_eq_eval] using
      Ring.factorial_nsmul_multichoose_eq_ascPochhammer (x+(a : ℚ)) m
  rw [← he]
  have hf : (m.factorial : ℚ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero m
  field_simp

/-- Polynomial, not merely integer-value, adjacent-binomial identity. -/
theorem evenBasis_eq_normalizedRising (i : ℕ) (hi : 0 < i) :
    evenBasis i = normalizedRising (1-(i : ℤ)) (2*i)+normalizedRising (-(i : ℤ)) (2*i) := by
  apply Polynomial.funext
  intro x
  rw [evenBasis_eval_eq_choose i hi, eval_add, normalizedRising_eval, normalizedRising_eval]
  simp only [Ring.choose]
  apply congrArg₂ (fun u v : ℚ => u+v)
  · apply congrArg (fun u : ℚ => Ring.multichoose u (2*i))
    push_cast
    ring
  · apply congrArg (fun u : ℚ => Ring.multichoose u (2*i))
    push_cast
    ring

/-- The actual even basis has v_p(E_i^[q](a)) >= -q at EVERY integer a.
The case i=0 is separate; the adjacent-binomial sum would incorrectly give 2. -/
theorem evenBasis_weighted {p : ℕ} [Fact p.Prime]
    (i : ℕ) (a : ℤ) (hi : 2*i < p^2) :
    Weighted p (taylor (a : ℚ) (evenBasis i)) 0 1 := by
  by_cases hi0 : i = 0
  · subst i
    simpa only [evenBasis_zero, taylor_one, map_one] using weighted_one p 1
  rw [evenBasis_eq_normalizedRising i (Nat.pos_of_ne_zero hi0), map_add]
  intro q
  rw [coeff_add]
  exact LocalJetValuation.add
    (normalizedRising_weighted (1-(i : ℤ)) a (2*i) hi q)
    (normalizedRising_weighted (-(i : ℤ)) a (2*i) hi q)

/-- Actual centered product at arbitrary integer anchors. The hypotheses
bound each basis index separately, not the degree of their product. -/
theorem centeredMultiplier_weighted {p : ℕ} [Fact p.Prime]
    (n : ℕ) (i j : Fin (2*n)) (a : ℤ)
    (hi : 2*i.val < p^2) (hj : 2*j.val < p^2) :
    Weighted p (taylor (a : ℚ) (centeredMultiplier n i j)) 0 1 := by
  change Weighted p (taylor (a : ℚ)
    (taylor (79*(n : ℚ)+1) (evenBasis i.val*evenBasis j.val))) 0 1
  rw [taylor_taylor, taylor_mul]
  have hx : (a : ℚ)+(79*(n : ℚ)+1) = ((a+79*(n : ℤ)+1 : ℤ) : ℚ) := by
    push_cast
    ring
  rw [hx]
  simpa only [add_zero] using weighted_mul
    (evenBasis_weighted i.val (a+79*(n : ℤ)+1) hi)
    (evenBasis_weighted j.val (a+79*(n : ℤ)+1) hj)

/-- The original normalized numerator times the actual centered multiplier.
There is no Taylor-jet bound supplied as a hypothesis. -/
theorem h158_localNumerator_weighted {p : ℕ} [Fact p.Prime]
    (n : ℕ) (i j : Fin (2*n)) (k : ℕ) (hsq : 4*n < p^2) :
    Weighted p (h158LocalNumerator n i j k)
      (padicValRat p (h158Normalization n)+h158NumeratorCredit p n k) 1 := by
  have hi := i.isLt
  have hj := j.isLt
  have hm : Weighted p (taylor (-(k : ℚ)) (centeredMultiplier n i j)) 0 1 := by
    simpa only [Int.cast_neg, Int.cast_natCast] using
      centeredMultiplier_weighted n i j (-(k : ℤ)) (by omega) (by omega)
  rw [h158LocalNumerator, taylor_mul]
  simpa only [add_zero] using weighted_mul (h158_normalized_numerator_weighted n k) hm

/-- All actual entries now have the class-count Laurent bound formerly
available only at i=j=0. D includes the local pole order exactly once. -/
theorem h158_principal_floor_from_counts {p : ℕ} [Fact p.Prime]
    (n : ℕ) (i j : Fin (2*n)) (k : ℕ) (hk : k ∈ h158PoleSet n)
    (hsq : 52*n < p^2) (l : Fin (h158PoleOrder n k)) :
    AtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
      h158DenominatorCount p n k+(l.val : ℤ)+1)
      (h158PrincipalCoefficients n i j k l) := by
  have hd := h158_cofactor_constant_eq_count (p := p) n k hk hsq
  have hC := h158_cofactor_weighted_unit_slope (p := p) n k hk hsq
  rw [hd] at hC
  have hN := h158_localNumerator_weighted (p := p) n i j k (by omega)
  have h := h158_principal_floor n i j k hk
    (padicValRat p (h158Normalization n)+h158NumeratorCredit p n k)
    (h158CofactorCount p n k) 1 hd (fun q _ => hC q) (fun q _ => hN q) l
  simp only [one_mul, h158_numerator_credit_eq_count] at h
  rw [h158_denominator_count_eq p n k hk]
  exact mono h (by omega)

/-- Full actual pole packet, including its rational harmonic remainder. -/
theorem h158_polePacket_floor_from_counts {p : ℕ} [Fact p.Prime]
    (n : ℕ) (i j : Fin (2*n)) (k : ℕ) (hk : k ∈ h158PoleSet n)
    (hsq : 57*n < p^2) (l : Fin (h158PoleOrder n k)) :
    FormalAtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
      h158DenominatorCount p n k-4)
      (MvPolynomial.C (h158PrincipalCoefficients n i j k l)*h158PoleCoordinate n k l) := by
  have hkbound := h158_pole_address_bounds n k hk
  have h := formal_C_mul (h158_principal_floor_from_counts n i j k hk (by omega) l)
    (h158_poleCoordinate_floor n k (by omega : k-48*n-1 < p^2) l)
  intro m
  exact mono (h m) (by omega)

/-- The only remaining arithmetic input is the explicit residue-count
inequality. All multiplier jets and harmonic coordinates are proved above. -/
theorem h158_entry_floor_of_counts {p : ℕ} [Fact p.Prime]
    (n : ℕ) (i j : Fin (2*n)) (hsq : 57*n < p^2) (b : ℤ)
    (hbudget : ∀ k ∈ h158PoleSet n,
      b ≤ padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
        h158DenominatorCount p n k-4) :
    FormalAtLeast p b (h158SevenMatrix n i j) := by
  rw [h158SevenMatrix_eq_pole_sum]
  apply formal_sum
  intro k hk
  apply formal_sum
  intro l hl m
  exact mono (h158_polePacket_floor_from_counts n i j k hk hsq l m) (hbudget k hk)

/-- Parent-facing cost20 interface, with the actual count inequality stated
explicitly rather than hidden in a supplied entry or derivative estimate. -/
theorem h158_entry_floor_twenty {p : ℕ} [Fact p.Prime]
    (n : ℕ) (i j : Fin (2*n)) (hsq : 57*n < p^2)
    (hbudget : ∀ k ∈ h158PoleSet n,
      -16 ≤ padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
        h158DenominatorCount p n k) :
    FormalAtLeast p (-20) (h158SevenMatrix n i j) := by
  apply h158_entry_floor_of_counts n i j hsq (-20)
  intro k hk
  have h := hbudget k hk
  omega

/-- Closed cost20 bound for every actual formal entry. No coefficient,
Taylor, or residue-count estimate is an additional hypothesis. -/
theorem h158_entry_floor_twenty_unconditional {p : ℕ} [Fact p.Prime]
    (n : ℕ) (i j : Fin (2*n)) (hsq : 158*n+2 < p^2) :
    FormalAtLeast p (-20) (h158SevenMatrix n i j) := by
  have hn : 0 < n := by have hi := i.isLt; omega
  apply h158_entry_floor_twenty n i j (by omega)
  intro k hk
  exact h158_normalized_class_count_lower p n k hn (Fact.out : p.Prime) hsq

/-- The complete rank2n formal determinant inherits the actual cost40n. -/
theorem h158_determinant_floor_forty {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hsq : 158*n+2 < p^2) :
    FormalAtLeast p (-40*(n : ℤ)) (h158SevenMatrix n).det := by
  apply formal_determinant_lower_of_termwise
  intro σ
  have h := formal_prod univ (fun i => h158SevenMatrix n (σ i) i)
    (fun _ => (-20 : ℤ))
    (fun i _ => h158_entry_floor_twenty_unconditional n (σ i) i hsq)
  convert h using 1
  simp only [sum_const, card_univ, Fintype.card_fin, nsmul_eq_mul,
    Nat.cast_mul, Nat.cast_ofNat]
  ring

/-- Actual signed primitive-scalar cost in the entire main-prime range. -/
theorem h158_primitiveCost_le_forty {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hsq : 158*n+2 < p^2) (hdet : (h158SevenMatrix n).det ≠ 0) :
    -padicValRat p (h158PrimitiveScalar n) ≤ 40*(n : ℤ) := by
  have h := formal_gauss_lower (h158_determinant_floor_forty n hsq) hdet
  rw [h158PrimitiveScalar_gauss_valuation n hdet p (Fact.out : p.Prime)] at h
  linarith

section Regression

example (a : ℤ) : Weighted 2 (taylor (a : ℚ) (normalizedRising (-5) 3)) 0 1 := by
  let : Fact (Nat.Prime 2) := ⟨by decide⟩
  exact normalizedRising_weighted (-5) a 3 (by decide)

example (a : ℤ) : Weighted 3 (taylor (a : ℚ) (evenBasis 4)) 0 1 := by
  let : Fact (Nat.Prime 3) := ⟨by decide⟩
  exact evenBasis_weighted 4 a (by decide)

-- Both factors have degree6 below9; the product degree12 need not be below9.
example (a : ℤ) : Weighted 3
    (taylor (a : ℚ) (centeredMultiplier 2 (3 : Fin 4) (3 : Fin 4))) 0 1 := by
  let : Fact (Nat.Prime 3) := ⟨by decide⟩
  exact centeredMultiplier_weighted 2 _ _ a (by decide) (by decide)

-- The unscaled jet is genuinely nonintegral; the theorem must retain -q.
example : (taylor (0 : ℚ) (evenBasis 2)).coeff 2 = -(1/12 : ℚ) := by
  have he : evenBasis 2 = C (1/12 : ℚ)*(X^4-X^2) := by
    norm_num [evenBasis, evenBasisProduct, prod_range_succ]
    ring
  rw [taylor_zero, he]
  norm_num [coeff_C_mul, coeff_sub, coeff_X_pow]

example (i j : Fin 2) : FormalAtLeast 13 (-20) (h158SevenMatrix 1 i j) := by
  let : Fact (Nat.Prime 13) := ⟨by decide⟩
  exact h158_entry_floor_twenty_unconditional 1 i j (by decide)

end Regression

#print axioms normalizedRising_weighted
#print axioms evenBasis_weighted
#print axioms centeredMultiplier_weighted
#print axioms h158_polePacket_floor_from_counts
#print axioms h158_entry_floor_twenty_unconditional
#print axioms h158_determinant_floor_forty
#print axioms h158_primitiveCost_le_forty

end OddZetaMixed.H158IntegerValuedJets
