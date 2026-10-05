import OddZetaMixed.H158GateAssembly
import OddZetaMixed.TrustAudit

/-!
# Exact Gauss valuation of the original formal determinant at the gate

The lower bound is coefficientwise: each p^2-scaled affine entry is lifted
to a polynomial over the rational local ring, then its determinant is
lifted. The zero specialization supplies a constant coefficient attaining
the bound. No inference from finite-field values to polynomial coefficients
is made.
-/

noncomputable section

namespace OddZetaMixed

open Finset

theorem h158Gate_scaled_constant_integral (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) :
    0 ≤ padicValRat (55*n+1)
      (((55*n+1 : ℕ) : ℚ)^2 * h158MomentConstant n i j) := by
  have h := h158Gate_scaled_entry_integral n hp i j (fun _ => 0) (by simp)
  simpa [h158SevenMatrix, momentMatrix, affineEntry] using h

/-- An explicit coefficient lift of every scaled affine entry. -/
theorem h158Gate_scaled_entry_lift (n : ℕ) [Fact (Nat.Prime (55*n+1))]
    (i j : Fin (2*n)) :
    ∃ P : MvPolynomial (Fin 7) (h158GateIntegralRing (55*n+1)),
      P.map (h158GateIntegralRing (55*n+1)).subtype =
        MvPolynomial.C (((55*n+1 : ℕ) : ℚ)^2) * h158SevenMatrix n i j := by
  let p := 55*n+1
  let S := h158GateIntegralRing p
  have ha : (p : ℚ)^2 * h158MomentConstant n i j ∈ S :=
    h158Gate_scaled_constant_integral n Fact.out i j
  have hb (s : Fin 7) : (p : ℚ)^2 * h158ZetaCoefficient n i j (2+2*s.val) ∈ S :=
    S.mul_mem (S.pow_mem (natCast_mem S p) 2)
      (h158Gate_zeta_coeff_nonneg n Fact.out i j _)
  refine ⟨MvPolynomial.C ⟨(p : ℚ)^2*h158MomentConstant n i j, ha⟩ +
    ∑ s : Fin 7, MvPolynomial.C
      (⟨(p : ℚ)^2*h158ZetaCoefficient n i j (2+2*s.val), hb s⟩ : S) *
        MvPolynomial.X s, ?_⟩
  simp only [map_add, map_sum, map_mul, MvPolynomial.map_C, MvPolynomial.map_X,
    Subring.coe_subtype]
  simp only [h158SevenMatrix, momentMatrix, affineEntry, mul_add, mul_sum,
    ← mul_assoc, ← MvPolynomial.C_mul]
  rfl

/-- The determinant lift preserves all formal coefficients, including those
which disappear under some rational or finite-field specialization. -/
theorem h158Gate_scaled_determinant_lift (n : ℕ) [Fact (Nat.Prime (55*n+1))] :
    ∃ P : MvPolynomial (Fin 7) (h158GateIntegralRing (55*n+1)),
      P.map (h158GateIntegralRing (55*n+1)).subtype =
        MvPolynomial.C (((55*n+1 : ℕ) : ℚ)^(4*n)) * (h158SevenMatrix n).det := by
  let p := 55*n+1
  let S := h158GateIntegralRing p
  choose b hb using h158Gate_scaled_entry_lift n
  let B : Matrix (Fin (2*n)) (Fin (2*n)) (MvPolynomial (Fin 7) S) := b
  refine ⟨Matrix.det B, ?_⟩
  have hmap : (MvPolynomial.map S.subtype).mapMatrix B =
      (MvPolynomial.C ((p : ℚ)^2) : SevenPolynomial) • h158SevenMatrix n := by
    apply Matrix.ext
    intro i j
    exact hb i j
  change (MvPolynomial.map S.subtype) B.det =
    MvPolynomial.C ((p : ℚ)^(4*n)) * (h158SevenMatrix n).det
  rw [(MvPolynomial.map S.subtype).map_det, hmap, Matrix.det_smul,
    Fintype.card_fin, ← map_pow, ← pow_mul]
  rw [show 2*(2*n) = 4*n by omega]

theorem h158Gate_scaled_determinant_coeff_integral (n : ℕ)
    [Fact (Nat.Prime (55*n+1))] (m : Fin 7 →₀ ℕ) :
    0 ≤ padicValRat (55*n+1)
      (((55*n+1 : ℕ) : ℚ)^(4*n) * (h158SevenMatrix n).det.coeff m) := by
  obtain ⟨P, hP⟩ := h158Gate_scaled_determinant_lift n
  have hcoeff := congrArg (fun Q : SevenPolynomial => Q.coeff m) hP
  rw [MvPolynomial.coeff_map, MvPolynomial.coeff_C_mul] at hcoeff
  rw [← hcoeff]
  exact (P.coeff m).property

/-- A bound on each actual nonzero coefficient of the unscaled determinant. -/
theorem h158Gate_determinant_coeff_valuation_lower (n : ℕ)
    (hp : (55*n+1).Prime) (m : Fin 7 →₀ ℕ)
    (hm : (h158SevenMatrix n).det.coeff m ≠ 0) :
    -4*(n : ℤ) ≤ padicValRat (55*n+1) ((h158SevenMatrix n).det.coeff m) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  have hp0 : ((55*n+1 : ℕ) : ℚ) ≠ 0 := by exact_mod_cast hp.ne_zero
  have h := h158Gate_scaled_determinant_coeff_integral n m
  rw [padicValRat.mul (pow_ne_zero _ hp0) hm, padicValRat.pow,
    padicValRat.self hp.one_lt, mul_one] at h
  push_cast at h
  omega

theorem h158Gate_determinant_constant_coeff_ne_zero (n : ℕ)
    (hp : (55*n+1).Prime) : (h158SevenMatrix n).det.coeff 0 ≠ 0 := by
  have h := h158Gate_rational_specialization_ne_zero n hp (fun _ => 0) (by simp)
  simpa only [MvPolynomial.eval_zero', MvPolynomial.constantCoeff_eq] using h

/-- The constant coefficient, not a guessed minimum, attains the bound. -/
theorem h158Gate_determinant_constant_coeff_valuation (n : ℕ)
    (hp : (55*n+1).Prime) :
    padicValRat (55*n+1) ((h158SevenMatrix n).det.coeff 0) = -4*(n : ℤ) := by
  have h := h158Gate_rational_determinant_valuation n hp (fun _ => 0) (by simp)
  simpa only [MvPolynomial.eval_zero', MvPolynomial.constantCoeff_eq] using h

theorem h158Gate_formal_gauss_valuation (n : ℕ) (hp : (55*n+1).Prime)
    (hH : (h158SevenMatrix n).det ≠ 0) :
    rationalPolynomialGaussValuation (55*n+1) (h158SevenMatrix n).det hH =
      -4*(n : ℤ) := by
  apply le_antisymm
  · rw [← h158Gate_determinant_constant_coeff_valuation n hp]
    exact Finset.inf'_le _ (MvPolynomial.mem_support_iff.mpr
      (h158Gate_determinant_constant_coeff_ne_zero n hp))
  · exact Finset.le_inf' _ _ (fun m hm =>
      h158Gate_determinant_coeff_valuation_lower n hp m
        (MvPolynomial.mem_support_iff.mp hm))

/-- The actual primitive normalization scalar has the same exact valuation. -/
theorem h158Gate_primitive_scalar_valuation (n : ℕ) (hp : (55*n+1).Prime) :
    padicValRat (55*n+1) (h158PrimitiveScalar n) = -4*(n : ℤ) := by
  have hH := h158_formal_determinant_ne_zero_on_gate n hp
  rw [← h158PrimitiveScalar_gauss_valuation n hH _ hp]
  exact h158Gate_formal_gauss_valuation n hp hH

#print axioms h158Gate_scaled_constant_integral
#print axioms h158Gate_scaled_entry_lift
#print axioms h158Gate_scaled_determinant_lift
#print axioms h158Gate_scaled_determinant_coeff_integral
#print axioms h158Gate_determinant_coeff_valuation_lower
#print axioms h158Gate_determinant_constant_coeff_ne_zero
#print axioms h158Gate_determinant_constant_coeff_valuation
#print axioms h158Gate_formal_gauss_valuation
#print axioms h158Gate_primitive_scalar_valuation

end OddZetaMixed

audit_project_axioms OddZetaMixed
