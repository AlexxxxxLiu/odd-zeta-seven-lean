import OddZetaMixed.H158Application
import OddZetaMixed.H158ConservativeBudget

/-! A zero-safe quantitative consequence of the two conservative rates.
The inputs refer to the same actual determinant and its primitive scalar.
The concrete certificates must supply both inputs before this is unconditional. -/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Filter

theorem h158_primitive_det_small_of_rates
    (harith : UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0}
      h158PrimitiveCost 1012)
    (hanalytic : UpperQuadraticExpRateOn Set.univ
      (fun n => Matrix.det (h158Functional n)) (-analyticExpression+2)) :
    ∀ᶠ n : ℕ in atTop,
      |Matrix.det (h158Functional n)/(h158PrimitiveScalar n : ℝ)| ≤
        Real.exp (-(1/2 : ℝ)*(n : ℝ)^2) := by
  have hgap : (1014+1/2 : ℝ) < analyticExpression := by
    have h := h158ConservativeBudget_slack_gap
    rw [h158ConservativeBudget_eq] at h
    norm_num only [Rat.cast_ofNat] at h
    linarith
  let ε : ℝ := (analyticExpression-1014-1/2)/3
  have hε : 0 < ε := by dsimp [ε]; linarith
  filter_upwards [harith ε hε, hanalytic ε hε] with n ha hb
  by_cases hformal : (h158SevenMatrix n).det = 0
  · have hz : Matrix.det (h158Functional n) = 0 := by
      rw [← h158SevenMatrix_det_eval, hformal]
      simp
    rw [hz, zero_div, abs_zero]
    exact (Real.exp_pos _).le
  · have hc : (h158PrimitiveScalar n : ℝ) ≠ 0 := by
      exact_mod_cast h158PrimitiveScalar_ne_zero n
    have hcost : Real.exp (h158PrimitiveCost n) =
        |(h158PrimitiveScalar n : ℝ)|⁻¹ := by
      rw [h158PrimitiveCost, Real.exp_neg, Real.exp_log (abs_pos.mpr hc)]
    rw [abs_div, div_eq_mul_inv, ← hcost]
    calc
      _ ≤ Real.exp ((-analyticExpression+2+ε)*(n : ℝ)^2)*
          Real.exp ((1012+ε)*(n : ℝ)^2) := by
        apply mul_le_mul (hb (Set.mem_univ n)) (Real.exp_le_exp.mpr (ha hformal))
        · exact (Real.exp_pos _).le
        · exact (Real.exp_pos _).le
      _ = Real.exp ((1014-analyticExpression+2*ε)*(n : ℝ)^2) := by
        rw [← Real.exp_add]
        congr 1
        ring
      _ ≤ Real.exp (-(1/2 : ℝ)*(n : ℝ)^2) := by
        apply Real.exp_le_exp.mpr
        apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
        dsimp [ε]
        linarith

#print axioms h158_primitive_det_small_of_rates

end OddZetaMixed
