import OddZetaMixed.H158SevenIdentity

/-!
# All-index normalization of the actual h158 determinant

The nonzero branch chooses the proved primitive data of the actual formal
determinant. The zero branch is exactly `c = 1, P = 0`. These definitions
do not assume a modular gate, an arithmetic budget, or an asymptotic rate.
-/

noncomputable section

namespace OddZetaMixed

open scoped BigOperators

private def h158NormalizationPair (n : ℕ) : ℚ × MvPolynomial (Fin 7) ℤ :=
  if h : (h158SevenMatrix n).det ≠ 0 then
    let hex := h158_exists_primitive_data n h
    (Classical.choose hex, Classical.choose (Classical.choose_spec hex).2)
  else (1, 0)

def h158PrimitiveScalar (n : ℕ) : ℚ := (h158NormalizationPair n).1

def h158PrimitivePolynomial (n : ℕ) : MvPolynomial (Fin 7) ℤ :=
  (h158NormalizationPair n).2

/-- The signed logarithmic cost of the constructed scalar, on every index. -/
def h158PrimitiveCost (n : ℕ) : ℝ := -Real.log |(h158PrimitiveScalar n : ℝ)|

private theorem h158_primitive_data_of_ne_zero (n : ℕ)
    (hH : (h158SevenMatrix n).det ≠ 0) :
    h158PrimitiveScalar n ≠ 0 ∧ h158PrimitivePolynomial n ≠ 0 ∧
      integerPolynomialContent (h158PrimitivePolynomial n) = 1 ∧
      (h158SevenMatrix n).det = MvPolynomial.C (h158PrimitiveScalar n) *
        (h158PrimitivePolynomial n).map (Int.castRingHom ℚ) ∧
      (h158PrimitivePolynomial n).totalDegree ≤ 2*n ∧
      h158PrimitiveCost n =
        ∑ p ∈ ((h158PrimitiveScalar n).num.natAbs *
          (h158PrimitiveScalar n).den).primeFactors,
          -(rationalPolynomialGaussValuation p (h158SevenMatrix n).det hH : ℝ) *
            Real.log p := by
  simp only [h158PrimitiveScalar, h158PrimitivePolynomial, h158PrimitiveCost,
    h158NormalizationPair, dite_eq_left hH]
  exact ⟨(Classical.choose_spec (h158_exists_primitive_data n hH)).1,
    Classical.choose_spec (Classical.choose_spec (h158_exists_primitive_data n hH)).2⟩

theorem h158PrimitiveScalar_of_det_eq_zero (n : ℕ)
    (hH : (h158SevenMatrix n).det = 0) : h158PrimitiveScalar n = 1 := by
  simp [h158PrimitiveScalar, h158NormalizationPair, hH]

theorem h158PrimitivePolynomial_of_det_eq_zero (n : ℕ)
    (hH : (h158SevenMatrix n).det = 0) : h158PrimitivePolynomial n = 0 := by
  simp [h158PrimitivePolynomial, h158NormalizationPair, hH]

theorem h158PrimitiveScalar_ne_zero (n : ℕ) : h158PrimitiveScalar n ≠ 0 := by
  by_cases hH : (h158SevenMatrix n).det ≠ 0
  · exact (h158_primitive_data_of_ne_zero n hH).1
  · rw [h158PrimitiveScalar_of_det_eq_zero n (not_ne_iff.mp hH)]
    norm_num

theorem h158PrimitivePolynomial_ne_zero_iff (n : ℕ) :
    h158PrimitivePolynomial n ≠ 0 ↔ (h158SevenMatrix n).det ≠ 0 := by
  constructor
  · intro hP hH
    exact hP (h158PrimitivePolynomial_of_det_eq_zero n hH)
  · intro hH
    exact (h158_primitive_data_of_ne_zero n hH).2.1

theorem h158PrimitivePolynomial_content_one_iff (n : ℕ) :
    integerPolynomialContent (h158PrimitivePolynomial n) = 1 ↔
      (h158SevenMatrix n).det ≠ 0 := by
  constructor
  · intro hP hH
    rw [h158PrimitivePolynomial_of_det_eq_zero n hH,
      integerPolynomialContent_zero] at hP
    norm_num at hP
  · intro hH
    exact (h158_primitive_data_of_ne_zero n hH).2.2.1

/-- The normalization is proved for every index, including a zero determinant. -/
theorem h158Primitive_normalization (n : ℕ) :
    (h158SevenMatrix n).det = MvPolynomial.C (h158PrimitiveScalar n) *
      (h158PrimitivePolynomial n).map (Int.castRingHom ℚ) := by
  by_cases hH : (h158SevenMatrix n).det ≠ 0
  · exact (h158_primitive_data_of_ne_zero n hH).2.2.2.1
  · have hzero := not_ne_iff.mp hH
    simp [hzero, h158PrimitivePolynomial_of_det_eq_zero n hzero]

theorem h158PrimitivePolynomial_degree_eq (n : ℕ) :
    (h158PrimitivePolynomial n).totalDegree = (h158SevenMatrix n).det.totalDegree :=
  normalized_integral_totalDegree _ _ _ (h158PrimitiveScalar_ne_zero n)
    (h158Primitive_normalization n)

theorem h158PrimitivePolynomial_degree (n : ℕ) :
    (h158PrimitivePolynomial n).totalDegree ≤ 2*n := by
  rw [h158PrimitivePolynomial_degree_eq]
  exact h158SevenMatrix_degree n

theorem h158PrimitiveNormalization_eval_rat (n : ℕ) (z : Fin 7 → ℚ) :
    MvPolynomial.eval z (h158SevenMatrix n).det = h158PrimitiveScalar n *
      (h158PrimitivePolynomial n).eval₂ (Int.castRingHom ℚ) z :=
  normalized_integral_eval _ _ _ (h158Primitive_normalization n) z

theorem h158PrimitiveNormalization_eval_real (n : ℕ) (z : Fin 7 → ℝ) :
    MvPolynomial.eval₂ (algebraMap ℚ ℝ) z (h158SevenMatrix n).det =
      (h158PrimitiveScalar n : ℝ) *
        (h158PrimitivePolynomial n).eval₂ (Int.castRingHom ℝ) z := by
  rw [h158Primitive_normalization]
  simp only [MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C, MvPolynomial.eval₂_map]
  rfl

/-- The constructed integer polynomial specializes to the actual derivative
determinant, not a separate sequence supplied as a hypothesis. -/
theorem h158PrimitiveNormalization_eval_actual (n : ℕ) :
    Matrix.det (h158Functional n) = (h158PrimitiveScalar n : ℝ) *
      (h158PrimitivePolynomial n).eval₂ (Int.castRingHom ℝ) sevenZetaValues := by
  rw [← h158SevenMatrix_det_eval, h158PrimitiveNormalization_eval_real]

theorem h158PrimitivePolynomial_eval_actual (n : ℕ) :
    (h158PrimitivePolynomial n).eval₂ (Int.castRingHom ℝ) sevenZetaValues =
      Matrix.det (h158Functional n) / (h158PrimitiveScalar n : ℝ) := by
  have hc : (h158PrimitiveScalar n : ℝ) ≠ 0 := by
    exact_mod_cast h158PrimitiveScalar_ne_zero n
  apply (eq_div_iff hc).mpr
  simpa only [mul_comm] using (h158PrimitiveNormalization_eval_actual n).symm

theorem h158PrimitiveCost_of_det_eq_zero (n : ℕ)
    (hH : (h158SevenMatrix n).det = 0) : h158PrimitiveCost n = 0 := by
  simp [h158PrimitiveCost, h158PrimitiveScalar_of_det_eq_zero n hH]

theorem h158PrimitiveCost_eq_gauss_sum (n : ℕ)
    (hH : (h158SevenMatrix n).det ≠ 0) :
    h158PrimitiveCost n =
      ∑ p ∈ ((h158PrimitiveScalar n).num.natAbs *
        (h158PrimitiveScalar n).den).primeFactors,
        -(rationalPolynomialGaussValuation p (h158SevenMatrix n).det hH : ℝ) *
          Real.log p :=
  (h158_primitive_data_of_ne_zero n hH).2.2.2.2.2

theorem h158PrimitiveScalar_gauss_valuation (n : ℕ)
    (hH : (h158SevenMatrix n).det ≠ 0) (p : ℕ) (hp : p.Prime) :
    rationalPolynomialGaussValuation p (h158SevenMatrix n).det hH =
      padicValRat p (h158PrimitiveScalar n) :=
  primitive_scalar_gauss_valuation _ hH _
    ((h158PrimitivePolynomial_content_one_iff n).mpr hH) _
    (h158PrimitiveScalar_ne_zero n) (h158Primitive_normalization n) p hp

/-- Both primitive content and the supported Gauss-cost identity hold exactly
on the nonzero branch. Gauss valuation itself requires the displayed proof. -/
theorem h158_primitive_branch_iff (n : ℕ) :
    (∃ hH : (h158SevenMatrix n).det ≠ 0,
      integerPolynomialContent (h158PrimitivePolynomial n) = 1 ∧
      h158PrimitiveCost n =
        ∑ p ∈ ((h158PrimitiveScalar n).num.natAbs *
          (h158PrimitiveScalar n).den).primeFactors,
          -(rationalPolynomialGaussValuation p (h158SevenMatrix n).det hH : ℝ) *
            Real.log p) ↔ (h158SevenMatrix n).det ≠ 0 := by
  constructor
  · rintro ⟨hH, _⟩
    exact hH
  · intro hH
    exact ⟨hH, (h158PrimitivePolynomial_content_one_iff n).mpr hH,
      h158PrimitiveCost_eq_gauss_sum n hH⟩

theorem h158PrimitivePolynomial_eval_rat_cast (n : ℕ) (z : Fin 7 → ℚ) :
    (((h158PrimitivePolynomial n).eval₂ (Int.castRingHom ℚ) z : ℚ) : ℝ) =
      (h158PrimitivePolynomial n).eval₂ (Int.castRingHom ℝ) (fun s => (z s : ℝ)) := by
  exact MvPolynomial.eval₂_comp_left (Rat.castHom ℝ) (Int.castRingHom ℚ) z _

/-- Under a rational representation of the actual seven values, the same
integer polynomial evaluates to the actual determinant divided by its scalar. -/
theorem h158PrimitivePolynomial_rational_eval_actual (n : ℕ) (z : Fin 7 → ℚ)
    (hz : ∀ s, (z s : ℝ) = sevenZetaValues s) :
    (((h158PrimitivePolynomial n).eval₂ (Int.castRingHom ℚ) z : ℚ) : ℝ) =
      Matrix.det (h158Functional n) / (h158PrimitiveScalar n : ℝ) := by
  rw [h158PrimitivePolynomial_eval_rat_cast,
    show (fun s => (z s : ℝ)) = sevenZetaValues from funext hz,
    h158PrimitivePolynomial_eval_actual]

theorem h158PrimitivePolynomial_clear_denominators (n : ℕ) (z : Fin 7 → ℚ)
    (Q : ℤ) (hden : ∀ s, ∃ a : ℤ, (Q : ℚ) * z s = (a : ℚ)) :
    ∃ a : ℤ, (Q : ℚ) ^ (2*n) *
      (h158PrimitivePolynomial n).eval₂ (Int.castRingHom ℚ) z = (a : ℚ) :=
  clear_denominators _ z Q (2*n) (h158PrimitivePolynomial_degree n) hden

/-- A single positive denominator clears every actual normalized determinant
under the rational-specialization hypothesis. Nonvanishing is preserved,
not asserted here; H158GateAssembly supplies it on the prime gate. -/
theorem h158_actual_rational_specialization_clearing (z : Fin 7 → ℚ)
    (hz : ∀ s, (z s : ℝ) = sevenZetaValues s) :
    ∃ Q : ℤ, 0 < Q ∧ ∀ n : ℕ, ∃ a : ℤ,
      (Q : ℝ) ^ (2*n) *
        (Matrix.det (h158Functional n) / (h158PrimitiveScalar n : ℝ)) = (a : ℝ) ∧
      (a ≠ 0 ↔ Matrix.det (h158Functional n) ≠ 0) := by
  obtain ⟨Q, hQ, hden⟩ := common_denominator_exists z
  refine ⟨Q, hQ, ?_⟩
  intro n
  obtain ⟨a, ha⟩ := h158PrimitivePolynomial_clear_denominators n z Q hden
  have haR : (Q : ℝ) ^ (2*n) *
      (((h158PrimitivePolynomial n).eval₂ (Int.castRingHom ℚ) z : ℚ) : ℝ) = (a : ℝ) := by
    exact_mod_cast ha
  rw [h158PrimitivePolynomial_rational_eval_actual n z hz] at haR
  refine ⟨a, haR, ?_⟩
  have hQr : (Q : ℝ) ≠ 0 := by exact_mod_cast hQ.ne'
  have hc : (h158PrimitiveScalar n : ℝ) ≠ 0 := by
    exact_mod_cast h158PrimitiveScalar_ne_zero n
  constructor
  · intro hane hdet
    apply hane
    have : (a : ℝ) = 0 := by simpa [hdet] using haR.symm
    exact_mod_cast this
  · intro hdet hazero
    apply mul_ne_zero (pow_ne_zero _ hQr) (div_ne_zero hdet hc)
    simpa [hazero] using haR

#print axioms h158PrimitiveScalar_ne_zero
#print axioms h158Primitive_normalization
#print axioms h158PrimitivePolynomial_degree
#print axioms h158PrimitiveNormalization_eval_actual
#print axioms h158PrimitiveCost_eq_gauss_sum
#print axioms h158_actual_rational_specialization_clearing

end OddZetaMixed
