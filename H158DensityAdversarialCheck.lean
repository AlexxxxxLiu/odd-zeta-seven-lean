import OddZetaMixed.H158AdaptiveMomentEnvelope

/-!
Independent checks of the actual density, its normalization, the scaled
polynomial squared norm, root zeros, signed heights and the integration step.
The alternative final proof does not use the parent's moment-bound theorem
or its integrability theorem. Compact off-root certificates remain inputs.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.H158DensityAdversarialCheck

open Finset Polynomial Complex MeasureTheory Filter

-- The normalization has the factor two that accompanies the centered linear factor.
example : h158Normalization 0 = 2 := by norm_num [h158Normalization]

-- Gamma and factorial inventories cancel their n log n coefficients exactly.
example : (5*154+5*4 : ℝ) +
    (∑ j ∈ range 21, (((44+j : ℕ) : ℝ)-((106-j : ℕ) : ℝ))) = -92 := by
  norm_num [sum_range_succ]

example : (∑ b ∈ range 16, ((52-2*b : ℕ) : ℝ)) -
    2*(∑ a ∈ range 5, ((48+a : ℕ) : ℝ)) = 92 := by
  norm_num [sum_range_succ]

example : (5+5+21+21 : ℕ) = 52 ∧ (5-21 : ℤ) = -16 ∧
    (16-2*5 : ℝ)/2 = 3 ∧ (3-16+52 : ℤ) = 39 ∧
    (39+1+1 : ℕ) = 41 ∧ (16+52*3 : ℕ) = 172 ∧
    (52+5 : ℕ) = 57 ∧ (6+4*7 : ℕ) = 34 := by norm_num

/-- The reviewed density is the norm of the original diagonal complex
integrand divided by 2*pi, not its real part or the square of its norm. -/
theorem density_eq_normalized_norm (n i : ℕ) (a : Fin 4 → ℚ) (y : ℝ) :
    h158AdaptiveDensity n i a y =
      ‖h158VerticalIntegrand n 0 0 y *
        (h158BasisContourValue n
          ((h158AdaptiveMonic i (h158AdaptiveDelta n) a).comp
            (C ((n : ℚ)⁻¹^2)*X^2)) y)^2‖ / (2*Real.pi) := by
  simp only [h158AdaptiveDensity, h158ModulusWeight, norm_mul, norm_pow]
  ring

/-- The exact scaled density still contains the full residual monomial. -/
theorem density_scaled_exact (n i : ℕ) (hn : 0 < n) (a : Fin 4 → ℚ) (s : ℝ) :
    h158AdaptiveDensity n i a ((n : ℝ)*s) =
      h158ModulusWeight n ((n : ℝ)*s) *
        (∏ j, h158AdaptivePairModulus (h158AdaptiveDelta n : ℝ) (a j : ℝ) s)^(i/8) *
        ((h158AdaptiveDelta n : ℝ)^2+s^2)^(2*(i%8)) := by
  have hnR : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr hn.ne'
  rw [h158AdaptiveDensity, h158AdaptiveContour_norm_sq n i hn,
    mul_div_cancel_left₀ s hnR, h158AdaptiveBlockNormSq_eq]
  ring

/-- Signed heights do not change the actual density. -/
theorem density_scaled_even (n i : ℕ) (hn : 0 < n) (a : Fin 4 → ℚ) (s : ℝ) :
    h158AdaptiveDensity n i a ((n : ℝ)*(-s)) =
      h158AdaptiveDensity n i a ((n : ℝ)*s) := by
  rw [density_scaled_exact n i hn, density_scaled_exact n i hn, mul_neg,
    h158ModulusWeight_neg]
  simp only [h158AdaptivePairModulus_neg, neg_sq]

/-- A real pair zero remains a zero after finite-index contour drift. -/
theorem density_scaled_root_zero (n i : ℕ) (hn : 0 < n) (hi : 8 ≤ i)
    (a : Fin 4 → ℚ) (j : Fin 4) :
    h158AdaptiveDensity n i a ((n : ℝ)*(a j : ℝ)) = 0 := by
  have hk : i/8 ≠ 0 := by omega
  have hp : (∏ k, h158AdaptivePairModulus (h158AdaptiveDelta n : ℝ)
      (a k : ℝ) (a j : ℝ)) = 0 := by
    apply Finset.prod_eq_zero (Finset.mem_univ j)
    simp [h158AdaptivePairModulus]
  rw [density_scaled_exact n i hn, hp, zero_pow hk, mul_zero, zero_mul]

-- At a root, replacing a pair by exp(log(pair)) is an inequality, not equality.
example : h158AdaptiveBlockNormSq 1 75 (fun _ => 0) 0 = 0 ∧
    Real.exp ((1 : ℝ)*∑ _j : Fin 4,
      Real.log (h158AdaptivePairModulus 75 (0 : ℝ) |(0 : ℝ)|)) = 1 := by
  norm_num [h158AdaptiveBlockNormSq_eq, h158AdaptivePairModulus]

-- The empty block is one even when every pair vanishes; no false 0^0 step.
example (delta : ℚ) (a : Fin 4 → ℚ) (s : ℝ) :
    h158AdaptiveBlockNormSq 0 delta a s = 1 := by
  simp [h158AdaptiveBlockNormSq_eq]

/-- At height zero the weight vanishes, although its Gamma product does not. -/
theorem weight_zero_height (n : ℕ) : h158ModulusWeight n 0 = 0 := by
  have hr : Real.cos (Real.pi*h158ContourAbscissa n) = 0 := by
    rw [show Real.pi*h158ContourAbscissa n =
      -(((4*n : ℕ) : ℝ)*Real.pi+Real.pi/2) by
        unfold h158ContourAbscissa
        push_cast
        ring]
    rw [Real.cos_neg, Real.cos_add_pi_div_two, Real.sin_nat_mul_pi, neg_zero]
  have hc : Complex.cos ((Real.pi : ℂ)*h158ContourPoint n 0) = 0 := by
    have he : (Real.pi : ℂ)*h158ContourPoint n 0 =
        ((Real.pi*h158ContourAbscissa n : ℝ) : ℂ) := by
      simp [h158ContourPoint]
    rw [he, ← Complex.ofReal_cos, hr]
    rfl
  simp only [h158ModulusWeight_gamma, hc, zero_pow (by norm_num : 3 ≠ 0),
    mul_zero, add_zero, norm_zero, zero_div]

example (n : ℕ) : h158ModulusWeight n 0 = 0 ∧
    0 < ‖h158PositiveGammaKernel n (h158ContourPoint n 0)‖ :=
  ⟨weight_zero_height n, norm_pos_iff.mpr (h158PositiveGammaKernel_contour_ne_zero n 0)⟩

/-- Only the X-terms are even: using phi(s) instead of phi(|s|) would be wrong. -/
theorem raw_phase_negative (s : ℝ) : h158Phase (-s) = h158Phase s-6*Real.pi*s := by
  have hx (a : ℝ) : h158PhaseX a (-s) = h158PhaseX a s := by
    simp only [h158PhaseX, neg_sq, neg_div, Real.arctan_neg]
    ring
  simp only [h158Phase, hx]
  ring

/-- Multiplication by the scale contributes exactly one Jacobian factor n. -/
theorem moment_scaling (n i : ℕ) (hn : 0 < n) (a : Fin 4 → ℚ) :
    h158BasisModulusMoment n
      ((h158AdaptiveMonic i (h158AdaptiveDelta n) a).comp
        (C ((n : ℚ)⁻¹^2)*X^2)) =
      (n : ℝ)*(∫ s : ℝ, h158AdaptiveDensity n i a ((n : ℝ)*s)) := by
  have hnR : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  change (∫ y : ℝ, h158AdaptiveDensity n i a y) = _
  rw [Measure.integral_comp_mul_left, abs_of_pos (inv_pos.mpr hnR), smul_eq_mul,
    ← mul_assoc, mul_inv_cancel₀ hnR.ne', one_mul]

/-- Measurability is obtained from the original integrand and polynomial,
without assuming actual integrability or any phase bound. -/
theorem density_measurable (n i : ℕ) (a : Fin 4 → ℚ) :
    Measurable (h158AdaptiveDensity n i a) := by
  have hw : Continuous (h158ModulusWeight n) :=
    (h158VerticalIntegrand_continuous n 0 0).norm.div_const (2*Real.pi)
  have hp (P : ℚ[X]) : Continuous (h158BasisContourValue n P) := by
    apply (P.comp (X+C (79*(n : ℚ)+1))).continuous_aeval.comp
    unfold h158ContourPoint
    fun_prop
  exact (hw.mul ((hp _).norm.pow 2)).measurable

/-- A second integration proof through the generic AE API. This derives
integrability as well as the moment bound and does not call the parent bound. -/
theorem moment_bound_via_ae_api (n i : ℕ) (hn : 1 ≤ n) (hi : i < 2*n)
    (a : Fin 4 → ℚ) (ha : ∀ j, 0 ≤ (a j : ℝ) ∧ (a j : ℝ) ≤ 20) (M : ℝ)
    (hc : ∀ s : ℝ, 0 ≤ s → s ≤ 96 →
      (∀ j, 0 < h158AdaptivePairModulus 75 (a j : ℝ) s) →
      h158PhasePotential (fun j => (a j : ℝ)) (h158PhaseCeilingTheta n i) s ≤ M) :
    Integrable (h158AdaptiveDensity n i a) ∧
      h158BasisModulusMoment n
        ((h158AdaptiveMonic i (h158AdaptiveDelta n) a).comp
          (C ((n : ℚ)⁻¹^2)*X^2)) ≤
        h158AdaptiveMomentConstant*(n : ℝ)^41*Real.exp ((n : ℝ)*M) := by
  have ht := h158PhaseCeilingTheta_mem n i (by omega) hi
  have he := h158PhasePotential_ae_envelope (fun j => (a j : ℝ))
    (h158PhaseCeilingTheta n i) M ha ht.1 ht.2.le hc
  have hcompact : ∀ᵐ s : ℝ, |s| ≤ 96 →
      h158PhasePotential (fun j => (a j : ℝ)) (h158PhaseCeilingTheta n i) |s| ≤ M := by
    filter_upwards [he] with s hs
    intro hsc
    simpa only [max_eq_left (sub_nonpos.mpr hsc), mul_zero, sub_zero] using hs
  have htail : ∀ᵐ s : ℝ, 96 < |s| →
      h158PhasePotential (fun j => (a j : ℝ)) (h158PhaseCeilingTheta n i) |s| ≤
        M-(4/5)*(|s|-96) := by
    filter_upwards [he] with s hs
    intro hsc
    simpa only [max_eq_right (sub_nonneg.mpr hsc.le)] using hs
  have hA : 0 ≤ h158AdaptiveDensityConstant*(n : ℝ)^40 :=
    mul_nonneg h158AdaptiveDensityConstant_pos.le (by positivity)
  have hb := polynomialExponential_scaled_kernel_phase_bound_ae
    (n : ℝ) (h158AdaptiveDensityConstant*(n : ℝ)^40) M (by exact_mod_cast hn) hA
    (h158AdaptiveDensity n i a)
    (fun s => h158PhasePotential (fun j => (a j : ℝ)) (h158PhaseCeilingTheta n i) |s|)
    (density_measurable n i a) (h158AdaptiveDensity_nonneg n i a) hcompact htail
    (Filter.Eventually.of_forall (fun s => by
      simpa only [mul_assoc] using h158AdaptiveDensity_uniform n i hn hi a s))
  refine ⟨hb.1, ?_⟩
  change (∫ y : ℝ, h158AdaptiveDensity n i a y) ≤ _
  convert hb.2 using 1
  unfold h158AdaptiveMomentConstant
  ring

/-- No index or height is hidden in the final constant. -/
theorem moment_constant_expanded :
    h158AdaptiveMomentConstant = (76 : ℝ)^29*
      Real.exp (h158NormalizationLogConstant+172+5*Real.log (2*Real.pi)+
        57*Real.log 154+2/75)*polynomialExponentialEnvelopeConstant := by
  unfold h158AdaptiveMomentConstant h158AdaptiveDensityConstant h158DensityConstant
    h158DensityLogConstant
  simp only [Real.exp_add]
  ring

#print axioms density_eq_normalized_norm
#print axioms density_scaled_exact
#print axioms density_scaled_root_zero
#print axioms weight_zero_height
#print axioms raw_phase_negative
#print axioms moment_scaling
#print axioms moment_bound_via_ae_api
#print axioms h158ModulusWeight_uniform_envelope_abs
#print axioms h158AdaptiveDensity_uniform
#print axioms h158PhasePotential_ae_envelope
#print axioms h158AdaptiveMoment_le_of_compact

end OddZetaMixed.H158DensityAdversarialCheck
