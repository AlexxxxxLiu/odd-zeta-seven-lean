import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic

/-!
# A fixed integrable envelope for polynomially weighted phase bounds

The degree, compact cutoff and tail slope are fixed at 34, 96 and 4/5.
The constant is the actual integral of the envelope, proved integrable and
strictly positive. Phase ceilings remain explicit hypotheses; no actual
kernel, density estimate or determinant rate is asserted here.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open MeasureTheory Set Filter

/-- The fixed envelope for the coarse height amplitude and adaptive residual. -/
def polynomialExponentialEnvelope (s : ℝ) : ℝ :=
  (1+|s|)^34*Real.exp (-(4/5)*max 0 (|s|-96))

/-- The actual total mass, rather than an assumed or chosen majorant constant. -/
def polynomialExponentialEnvelopeConstant : ℝ :=
  ∫ s : ℝ, polynomialExponentialEnvelope s

theorem polynomialExponentialEnvelope_pos (s : ℝ) :
    0 < polynomialExponentialEnvelope s := by
  unfold polynomialExponentialEnvelope
  positivity

@[simp] theorem polynomialExponentialEnvelope_neg (s : ℝ) :
    polynomialExponentialEnvelope (-s) = polynomialExponentialEnvelope s := by
  simp [polynomialExponentialEnvelope]

theorem polynomialExponentialEnvelope_continuous :
    Continuous polynomialExponentialEnvelope := by
  unfold polynomialExponentialEnvelope
  fun_prop

private theorem polynomialExponentialEnvelope_le_exp_majorant
    (s : ℝ) (hs : 0 ≤ s) :
    polynomialExponentialEnvelope s ≤
      (2 : ℝ)^33*Real.exp ((4/5)*96)*
        (Real.exp (-(4/5)*s)+s^34*Real.exp (-(4/5)*s)) := by
  have hp : (1+s)^34 ≤ (2 : ℝ)^33*(1+s^34) := by
    simpa only [Nat.reduceSub, one_pow] using add_pow_le (by norm_num : (0 : ℝ) ≤ 1) hs 34
  have he : Real.exp (-(4/5)*max 0 (s-96)) ≤
      Real.exp ((4/5)*96)*Real.exp (-(4/5)*s) := by
    rw [← Real.exp_add]
    apply Real.exp_le_exp.mpr
    have hmax := le_max_right (0 : ℝ) (s-96)
    linarith
  unfold polynomialExponentialEnvelope
  rw [abs_of_nonneg hs]
  calc
    _ ≤ ((2 : ℝ)^33*(1+s^34)) *
        (Real.exp ((4/5)*96)*Real.exp (-(4/5)*s)) :=
      mul_le_mul hp he (Real.exp_pos _).le (by positivity)
    _ = _ := by ring

private theorem polynomialExponentialEnvelope_integrableOn_pos :
    IntegrableOn polynomialExponentialEnvelope (Ioi 0) := by
  have h0 : IntegrableOn (fun s : ℝ => Real.exp (-(4/5)*s)) (Ioi 0) :=
    integrableOn_exp_mul_Ioi (by norm_num) 0
  have h34 : IntegrableOn (fun s : ℝ => s^34*Real.exp (-(4/5)*s)) (Ioi 0) := by
    simpa only [Real.rpow_natCast, Real.rpow_one] using
      (integrableOn_rpow_mul_exp_neg_mul_rpow (s := (34 : ℕ)) (p := 1) (b := 4/5)
        (by norm_num) (by norm_num) (by norm_num))
  have hb := (h0.add h34).const_mul ((2 : ℝ)^33*Real.exp ((4/5)*96))
  apply hb.mono' polynomialExponentialEnvelope_continuous.aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with s hs
  rw [Real.norm_eq_abs, abs_of_pos (polynomialExponentialEnvelope_pos s)]
  exact polynomialExponentialEnvelope_le_exp_majorant s hs.le

/-- The degree-34 envelope has finite total mass on the whole real line. -/
theorem polynomialExponentialEnvelope_integrable :
    Integrable polynomialExponentialEnvelope := by
  rw [← integrableOn_univ, ← @Iio_union_Ici _ _ (0 : ℝ), integrableOn_union,
    integrableOn_Ici_iff_integrableOn_Ioi]
  refine ⟨?_, polynomialExponentialEnvelope_integrableOn_pos⟩
  rw [← (Measure.measurePreserving_neg (volume : Measure ℝ)).integrableOn_comp_preimage
    (Homeomorph.neg ℝ).measurableEmbedding]
  simpa only [Function.comp_def, polynomialExponentialEnvelope_neg, neg_preimage,
    neg_Iio, neg_zero] using polynomialExponentialEnvelope_integrableOn_pos

theorem polynomialExponentialEnvelopeConstant_pos :
    0 < polynomialExponentialEnvelopeConstant := by
  exact integral_pos_of_integrable_nonneg_nonzero
    polynomialExponentialEnvelope_continuous polynomialExponentialEnvelope_integrable
    (fun s => (polynomialExponentialEnvelope_pos s).le)
    (polynomialExponentialEnvelope_pos 0).ne'

/-- Finiteness is also explicit for the nonnegative extended-real integral. -/
theorem polynomialExponentialEnvelope_lintegral_lt_top :
    (∫⁻ s : ℝ, ENNReal.ofReal (polynomialExponentialEnvelope s)) < ⊤ := by
  exact (hasFiniteIntegral_iff_ofReal (Filter.Eventually.of_forall
    (fun s => (polynomialExponentialEnvelope_pos s).le))).mp
      polynomialExponentialEnvelope_integrable.hasFiniteIntegral

theorem polynomialExponentialEnvelopeConstant_ofReal :
    ENNReal.ofReal polynomialExponentialEnvelopeConstant =
      ∫⁻ s : ℝ, ENNReal.ofReal (polynomialExponentialEnvelope s) := by
  exact ofReal_integral_eq_lintegral_ofReal polynomialExponentialEnvelope_integrable
    (Filter.Eventually.of_forall (fun s => (polynomialExponentialEnvelope_pos s).le))

/-- Compact and tail ceilings combine into a single pointwise inequality. -/
theorem polynomialExponential_phase_le (Ψ : ℝ → ℝ) (M : ℝ)
    (hcompact : ∀ s, |s| ≤ 96 → Ψ s ≤ M)
    (htail : ∀ s, 96 < |s| → Ψ s ≤ M-(4/5)*(|s|-96)) (s : ℝ) :
    Ψ s ≤ M-(4/5)*max 0 (|s|-96) := by
  by_cases hs : |s| ≤ 96
  · rw [max_eq_left (sub_nonpos.mpr hs), mul_zero, sub_zero]
    exact hcompact s hs
  · rw [max_eq_right (by linarith : 0 ≤ |s|-96)]
    exact htail s (lt_of_not_ge hs)

/-- The exponential decay for every `n >= 1` is dominated by the fixed envelope. -/
theorem polynomialExponential_phase_domination (n M : ℝ) (hn : 1 ≤ n) (Ψ : ℝ → ℝ)
    (hcompact : ∀ s, |s| ≤ 96 → Ψ s ≤ M)
    (htail : ∀ s, 96 < |s| → Ψ s ≤ M-(4/5)*(|s|-96)) (s : ℝ) :
    (1+|s|)^34*Real.exp (n*Ψ s) ≤
      Real.exp (n*M)*polynomialExponentialEnvelope s := by
  have hp := polynomialExponential_phase_le Ψ M hcompact htail s
  have hmul := mul_le_mul_of_nonneg_left hp (show 0 ≤ n by linarith)
  have hmax := le_max_left (0 : ℝ) (|s|-96)
  have hdecay : n*Ψ s ≤ n*M-(4/5)*max 0 (|s|-96) := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hn) hmax]
  have he : Real.exp (n*Ψ s) ≤
      Real.exp (n*M)*Real.exp (-(4/5)*max 0 (|s|-96)) := by
    rw [← Real.exp_add]
    apply Real.exp_le_exp.mpr
    linarith
  unfold polynomialExponentialEnvelope
  calc
    _ ≤ (1+|s|)^34*(Real.exp (n*M)*Real.exp (-(4/5)*max 0 (|s|-96))) :=
      mul_le_mul_of_nonneg_left he (by positivity)
    _ = _ := by ring

/-- Nonnegative measurable kernels dominated by the envelope are genuinely integrable. -/
theorem polynomialExponential_integral_bound_of_le
    (K : ℝ → ℝ) (hK : AEStronglyMeasurable K volume) (A : ℝ)
    (hK0 : ∀ s, 0 ≤ K s)
    (hbound : ∀ s, K s ≤ A*polynomialExponentialEnvelope s) :
    Integrable K ∧ (∫ s : ℝ, K s) ≤ A*polynomialExponentialEnvelopeConstant := by
  have henv := polynomialExponentialEnvelope_integrable.const_mul A
  have hint : Integrable K := henv.mono' hK (Filter.Eventually.of_forall (fun s => by
    rw [Real.norm_eq_abs, abs_of_nonneg (hK0 s)]
    exact hbound s))
  refine ⟨hint, ?_⟩
  have hi := integral_mono hint henv hbound
  simpa only [integral_const_mul, polynomialExponentialEnvelopeConstant] using hi

/-- A measurable phase under the two ceilings has a uniform integral bound. -/
theorem polynomialExponential_phase_integral_bound
    (n M : ℝ) (hn : 1 ≤ n) (Ψ : ℝ → ℝ) (hΨ : Measurable Ψ)
    (hcompact : ∀ s, |s| ≤ 96 → Ψ s ≤ M)
    (htail : ∀ s, 96 < |s| → Ψ s ≤ M-(4/5)*(|s|-96)) :
    Integrable (fun s : ℝ => (1+|s|)^34*Real.exp (n*Ψ s)) ∧
      (∫ s : ℝ, (1+|s|)^34*Real.exp (n*Ψ s)) ≤
        polynomialExponentialEnvelopeConstant*Real.exp (n*M) := by
  have hm : Measurable (fun s : ℝ => (1+|s|)^34*Real.exp (n*Ψ s)) :=
    ((measurable_const.add continuous_abs.measurable).pow_const 34).mul ((hΨ.const_mul n).exp)
  have h := polynomialExponential_integral_bound_of_le _ hm.aestronglyMeasurable
    (Real.exp (n*M)) (fun s => by positivity)
    (polynomialExponential_phase_domination n M hn Ψ hcompact htail)
  simpa only [mul_comm polynomialExponentialEnvelopeConstant] using h

/-- The Jacobian for `y = n*s` is explicit in the bound for a scaled kernel. -/
theorem polynomialExponential_scaled_integral_bound_of_le
    (n A : ℝ) (hn : 0 < n) (K : ℝ → ℝ) (hK : Measurable K)
    (hK0 : ∀ y, 0 ≤ K y)
    (hbound : ∀ s, K (n*s) ≤ A*polynomialExponentialEnvelope s) :
    Integrable K ∧ (∫ y : ℝ, K y) ≤ n*A*polynomialExponentialEnvelopeConstant := by
  have hm : Measurable (fun s : ℝ => K (n*s)) := hK.comp (measurable_const.mul measurable_id)
  have hb := polynomialExponential_integral_bound_of_le _ hm.aestronglyMeasurable A
    (fun s => hK0 (n*s)) hbound
  have hi : Integrable K := (integrable_comp_mul_left_iff K hn.ne').mp hb.1
  have hscale : (∫ y : ℝ, K y) = n*(∫ s : ℝ, K (n*s)) := by
    rw [Measure.integral_comp_mul_left, abs_of_pos (inv_pos.mpr hn), smul_eq_mul,
      ← mul_assoc, mul_inv_cancel₀ hn.ne', one_mul]
  refine ⟨hi, ?_⟩
  rw [hscale]
  calc
    _ ≤ n*(A*polynomialExponentialEnvelopeConstant) := mul_le_mul_of_nonneg_left hb.2 hn.le
    _ = _ := by ring

/-- A scaled nonnegative kernel can use phase ceilings without measurable phase assumptions. -/
theorem polynomialExponential_scaled_kernel_phase_bound
    (n A M : ℝ) (hn : 1 ≤ n) (hA : 0 ≤ A) (K Ψ : ℝ → ℝ) (hK : Measurable K)
    (hK0 : ∀ y, 0 ≤ K y)
    (hcompact : ∀ s, |s| ≤ 96 → Ψ s ≤ M)
    (htail : ∀ s, 96 < |s| → Ψ s ≤ M-(4/5)*(|s|-96))
    (hbound : ∀ s, K (n*s) ≤ A*((1+|s|)^34*Real.exp (n*Ψ s))) :
    Integrable K ∧ (∫ y : ℝ, K y) ≤
      n*A*polynomialExponentialEnvelopeConstant*Real.exp (n*M) := by
  have hb := polynomialExponential_scaled_integral_bound_of_le n (A*Real.exp (n*M))
    (by linarith) K hK hK0 (fun s => calc
      K (n*s) ≤ A*((1+|s|)^34*Real.exp (n*Ψ s)) := hbound s
      _ ≤ A*(Real.exp (n*M)*polynomialExponentialEnvelope s) :=
        mul_le_mul_of_nonneg_left
          (polynomialExponential_phase_domination n M hn Ψ hcompact htail s) hA
      _ = (A*Real.exp (n*M))*polynomialExponentialEnvelope s := by ring)
  refine ⟨hb.1, ?_⟩
  convert! hb.2 using 1
  ring

/-- Phase ceilings may fail on null sets, in particular at logarithmic root singularities. -/
theorem polynomialExponential_phase_domination_ae
    (n M : ℝ) (hn : 1 ≤ n) (Ψ : ℝ → ℝ)
    (hcompact : ∀ᵐ s : ℝ ∂volume, |s| ≤ 96 → Ψ s ≤ M)
    (htail : ∀ᵐ s : ℝ ∂volume, 96 < |s| → Ψ s ≤ M-(4/5)*(|s|-96)) :
    ∀ᵐ s : ℝ ∂volume, (1+|s|)^34*Real.exp (n*Ψ s) ≤
      Real.exp (n*M)*polynomialExponentialEnvelope s := by
  filter_upwards [hcompact, htail] with s hc ht
  have hp : Ψ s ≤ M-(4/5)*max 0 (|s|-96) := by
    by_cases hs : |s| ≤ 96
    · rw [max_eq_left (sub_nonpos.mpr hs), mul_zero, sub_zero]
      exact hc hs
    · rw [max_eq_right (by linarith : 0 ≤ |s|-96)]
      exact ht (lt_of_not_ge hs)
  have hmul := mul_le_mul_of_nonneg_left hp (show 0 ≤ n by linarith)
  have hmax := le_max_left (0 : ℝ) (|s|-96)
  have hdecay : n*Ψ s ≤ n*M-(4/5)*max 0 (|s|-96) := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hn) hmax]
  have he : Real.exp (n*Ψ s) ≤
      Real.exp (n*M)*Real.exp (-(4/5)*max 0 (|s|-96)) := by
    rw [← Real.exp_add]
    apply Real.exp_le_exp.mpr
    linarith
  unfold polynomialExponentialEnvelope
  calc
    _ ≤ (1+|s|)^34*(Real.exp (n*M)*Real.exp (-(4/5)*max 0 (|s|-96))) :=
      mul_le_mul_of_nonneg_left he (by positivity)
    _ = _ := by ring

/-- AE domination proves actual integrability; no bound at exceptional points is required. -/
theorem polynomialExponential_integral_bound_of_ae_le
    (K : ℝ → ℝ) (hK : AEStronglyMeasurable K volume) (A : ℝ)
    (hK0 : ∀ᵐ s : ℝ ∂volume, 0 ≤ K s)
    (hbound : ∀ᵐ s : ℝ ∂volume, K s ≤ A*polynomialExponentialEnvelope s) :
    Integrable K ∧ (∫ s : ℝ, K s) ≤ A*polynomialExponentialEnvelopeConstant := by
  have henv := polynomialExponentialEnvelope_integrable.const_mul A
  have hint : Integrable K := henv.mono' hK (by
    filter_upwards [hK0, hbound] with s hs0 hs
    rwa [Real.norm_eq_abs, abs_of_nonneg hs0])
  refine ⟨hint, ?_⟩
  have hi := integral_mono_ae hint henv hbound
  simpa only [integral_const_mul, polynomialExponentialEnvelopeConstant] using hi

/-- The phase integral is unchanged by failures of the ceilings on null sets. -/
theorem polynomialExponential_phase_integral_bound_ae
    (n M : ℝ) (hn : 1 ≤ n) (Ψ : ℝ → ℝ) (hΨ : Measurable Ψ)
    (hcompact : ∀ᵐ s : ℝ ∂volume, |s| ≤ 96 → Ψ s ≤ M)
    (htail : ∀ᵐ s : ℝ ∂volume, 96 < |s| → Ψ s ≤ M-(4/5)*(|s|-96)) :
    Integrable (fun s : ℝ => (1+|s|)^34*Real.exp (n*Ψ s)) ∧
      (∫ s : ℝ, (1+|s|)^34*Real.exp (n*Ψ s)) ≤
        polynomialExponentialEnvelopeConstant*Real.exp (n*M) := by
  have hm : Measurable (fun s : ℝ => (1+|s|)^34*Real.exp (n*Ψ s)) :=
    ((measurable_const.add continuous_abs.measurable).pow_const 34).mul ((hΨ.const_mul n).exp)
  have h := polynomialExponential_integral_bound_of_ae_le _ hm.aestronglyMeasurable
    (Real.exp (n*M)) (Filter.Eventually.of_forall (fun s => by positivity))
    (polynomialExponential_phase_domination_ae n M hn Ψ hcompact htail)
  simpa only [mul_comm polynomialExponentialEnvelopeConstant] using h

/-- Scaled AE domination, with the actual integrability and Jacobian retained. -/
theorem polynomialExponential_scaled_integral_bound_of_ae_le
    (n A : ℝ) (hn : 0 < n) (K : ℝ → ℝ) (hK : Measurable K)
    (hK0 : ∀ y, 0 ≤ K y)
    (hbound : ∀ᵐ s : ℝ ∂volume, K (n*s) ≤ A*polynomialExponentialEnvelope s) :
    Integrable K ∧ (∫ y : ℝ, K y) ≤ n*A*polynomialExponentialEnvelopeConstant := by
  have hm : Measurable (fun s : ℝ => K (n*s)) := hK.comp (measurable_const.mul measurable_id)
  have hb := polynomialExponential_integral_bound_of_ae_le _ hm.aestronglyMeasurable A
    (Filter.Eventually.of_forall (fun s => hK0 (n*s))) hbound
  have hi : Integrable K := (integrable_comp_mul_left_iff K hn.ne').mp hb.1
  have hscale : (∫ y : ℝ, K y) = n*(∫ s : ℝ, K (n*s)) := by
    rw [Measure.integral_comp_mul_left, abs_of_pos (inv_pos.mpr hn), smul_eq_mul,
      ← mul_assoc, mul_inv_cancel₀ hn.ne', one_mul]
  refine ⟨hi, ?_⟩
  rw [hscale]
  calc
    _ ≤ n*(A*polynomialExponentialEnvelopeConstant) := mul_le_mul_of_nonneg_left hb.2 hn.le
    _ = _ := by ring

/-- All phase and domination hypotheses are AE in `s`; no phase condition is imposed at roots. -/
theorem polynomialExponential_scaled_kernel_phase_bound_ae
    (n A M : ℝ) (hn : 1 ≤ n) (hA : 0 ≤ A) (K Ψ : ℝ → ℝ) (hK : Measurable K)
    (hK0 : ∀ y, 0 ≤ K y)
    (hcompact : ∀ᵐ s : ℝ ∂volume, |s| ≤ 96 → Ψ s ≤ M)
    (htail : ∀ᵐ s : ℝ ∂volume, 96 < |s| → Ψ s ≤ M-(4/5)*(|s|-96))
    (hbound : ∀ᵐ s : ℝ ∂volume, K (n*s) ≤ A*((1+|s|)^34*Real.exp (n*Ψ s))) :
    Integrable K ∧ (∫ y : ℝ, K y) ≤
      n*A*polynomialExponentialEnvelopeConstant*Real.exp (n*M) := by
  have hdom := polynomialExponential_phase_domination_ae n M hn Ψ hcompact htail
  have henv : ∀ᵐ s : ℝ ∂volume,
      K (n*s) ≤ (A*Real.exp (n*M))*polynomialExponentialEnvelope s := by
    filter_upwards [hbound, hdom] with s hs hd
    calc
      K (n*s) ≤ A*((1+|s|)^34*Real.exp (n*Ψ s)) := hs
      _ ≤ A*(Real.exp (n*M)*polynomialExponentialEnvelope s) :=
        mul_le_mul_of_nonneg_left hd hA
      _ = _ := by ring
  have hb := polynomialExponential_scaled_integral_bound_of_ae_le
    n (A*Real.exp (n*M)) (by linarith) K hK hK0 henv
  refine ⟨hb.1, ?_⟩
  convert! hb.2 using 1
  ring

end OddZetaMixed
