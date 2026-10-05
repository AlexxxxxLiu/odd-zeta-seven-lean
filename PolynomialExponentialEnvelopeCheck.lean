import OddZetaMixed.PolynomialExponentialEnvelope

open OddZetaMixed MeasureTheory

#check polynomialExponentialEnvelope
#check polynomialExponentialEnvelopeConstant
#check polynomialExponentialEnvelope_integrable
#check polynomialExponentialEnvelopeConstant_pos
#check polynomialExponentialEnvelope_lintegral_lt_top
#check polynomialExponentialEnvelopeConstant_ofReal
#check polynomialExponential_phase_domination
#check polynomialExponential_integral_bound_of_le
#check polynomialExponential_phase_integral_bound
#check polynomialExponential_scaled_integral_bound_of_le
#check polynomialExponential_scaled_kernel_phase_bound
#check polynomialExponential_phase_domination_ae
#check polynomialExponential_integral_bound_of_ae_le
#check polynomialExponential_phase_integral_bound_ae
#check polynomialExponential_scaled_integral_bound_of_ae_le
#check polynomialExponential_scaled_kernel_phase_bound_ae

#print axioms polynomialExponentialEnvelope_integrable
#print axioms polynomialExponentialEnvelopeConstant_pos
#print axioms polynomialExponentialEnvelope_lintegral_lt_top
#print axioms polynomialExponential_phase_integral_bound
#print axioms polynomialExponential_scaled_kernel_phase_bound
#print axioms polynomialExponential_integral_bound_of_ae_le
#print axioms polynomialExponential_phase_integral_bound_ae
#print axioms polynomialExponential_scaled_integral_bound_of_ae_le
#print axioms polynomialExponential_scaled_kernel_phase_bound_ae

example : polynomialExponentialEnvelope 0 = 1 := by
  norm_num [polynomialExponentialEnvelope]

example : polynomialExponentialEnvelope 96 = (97 : ℝ)^34 := by
  norm_num [polynomialExponentialEnvelope]

example : polynomialExponentialEnvelope (-96) = (97 : ℝ)^34 := by
  norm_num [polynomialExponentialEnvelope]

example : ∃ C : ℝ, 0 < C ∧ C = ∫ s : ℝ, polynomialExponentialEnvelope s :=
  ⟨polynomialExponentialEnvelopeConstant, polynomialExponentialEnvelopeConstant_pos, rfl⟩

example (n : ℕ) (hn : 1 ≤ n) (M : ℝ) (Ψ : ℝ → ℝ) (hΨ : Measurable Ψ)
    (hcompact : ∀ s, |s| ≤ 96 → Ψ s ≤ M)
    (htail : ∀ s, 96 < |s| → Ψ s ≤ M-(4/5)*(|s|-96)) :
    Integrable (fun s : ℝ => (1+|s|)^34*Real.exp ((n : ℝ)*Ψ s)) ∧
      (∫ s : ℝ, (1+|s|)^34*Real.exp ((n : ℝ)*Ψ s)) ≤
        polynomialExponentialEnvelopeConstant*Real.exp ((n : ℝ)*M) :=
  polynomialExponential_phase_integral_bound n M (by exact_mod_cast hn) Ψ hΨ hcompact htail

example : Integrable (fun y : ℝ => polynomialExponentialEnvelope (y/2)) ∧
    (∫ y : ℝ, polynomialExponentialEnvelope (y/2)) ≤
      2*polynomialExponentialEnvelopeConstant := by
  have hm : Measurable (fun y : ℝ => polynomialExponentialEnvelope (y/2)) :=
    polynomialExponentialEnvelope_continuous.measurable.comp (measurable_id.div_const 2)
  have h := polynomialExponential_scaled_integral_bound_of_le 2 1 (by norm_num)
    (fun y : ℝ => polynomialExponentialEnvelope (y/2)) hm
    (fun y => (polynomialExponentialEnvelope_pos (y/2)).le) (fun s => by simp)
  simpa using h

example (S : Set ℝ) (hS : S.Finite) (n A M : ℝ) (hn : 1 ≤ n) (hA : 0 ≤ A)
    (K Ψ : ℝ → ℝ) (hK : Measurable K) (hK0 : ∀ y, 0 ≤ K y)
    (hcompact : ∀ s, s ∉ S → |s| ≤ 96 → Ψ s ≤ M)
    (htail : ∀ s, s ∉ S → 96 < |s| → Ψ s ≤ M-(4/5)*(|s|-96))
    (hbound : ∀ s, s ∉ S → K (n*s) ≤ A*((1+|s|)^34*Real.exp (n*Ψ s))) :
    Integrable K ∧ (∫ y : ℝ, K y) ≤
      n*A*polynomialExponentialEnvelopeConstant*Real.exp (n*M) := by
  apply polynomialExponential_scaled_kernel_phase_bound_ae n A M hn hA K Ψ hK hK0
  · filter_upwards [hS.countable.ae_notMem volume] with s hs
    exact hcompact s hs
  · filter_upwards [hS.countable.ae_notMem volume] with s hs
    exact htail s hs
  · filter_upwards [hS.countable.ae_notMem volume] with s hs
    exact hbound s hs

private noncomputable def exceptionalPhase (s : ℝ) : ℝ :=
  if s = 0 then 1 else -(4/5)*max 0 (|s|-96)

private noncomputable def exceptionalKernel (s : ℝ) : ℝ :=
  if s = 0 then Real.exp 2 else polynomialExponentialEnvelope s

example : ¬ exceptionalPhase 0 ≤ 0 := by
  norm_num [exceptionalPhase]

example : (1+|(0 : ℝ)|)^34*Real.exp (exceptionalPhase 0) < exceptionalKernel 0 := by
  simp [exceptionalPhase, exceptionalKernel]

example : Integrable exceptionalKernel ∧
    (∫ y : ℝ, exceptionalKernel y) ≤ polynomialExponentialEnvelopeConstant := by
  have hm : Measurable exceptionalKernel := by
    unfold exceptionalKernel
    exact Measurable.ite (measurableSet_singleton 0) measurable_const
      polynomialExponentialEnvelope_continuous.measurable
  have h0 (s : ℝ) : 0 ≤ exceptionalKernel s := by
    unfold exceptionalKernel
    split_ifs
    · exact (Real.exp_pos 2).le
    · exact (polynomialExponentialEnvelope_pos s).le
  have hc : ∀ᵐ s : ℝ ∂volume, |s| ≤ 96 → exceptionalPhase s ≤ 0 := by
    filter_upwards [volume.ae_ne (0 : ℝ)] with s hs
    intro hsc
    simp [exceptionalPhase, hs, max_eq_left (sub_nonpos.mpr hsc)]
  have ht : ∀ᵐ s : ℝ ∂volume,
      96 < |s| → exceptionalPhase s ≤ 0-(4/5)*(|s|-96) := by
    filter_upwards [volume.ae_ne (0 : ℝ)] with s hs
    intro hst
    simp [exceptionalPhase, hs, max_eq_right (by linarith : 0 ≤ |s|-96)]
  have hb : ∀ᵐ s : ℝ ∂volume, exceptionalKernel (1*s) ≤
      1*((1+|s|)^34*Real.exp (1*exceptionalPhase s)) := by
    filter_upwards [volume.ae_ne (0 : ℝ)] with s hs
    simp [exceptionalKernel, exceptionalPhase, hs, polynomialExponentialEnvelope]
  simpa using polynomialExponential_scaled_kernel_phase_bound_ae
    1 1 0 (by norm_num) (by norm_num) exceptionalKernel exceptionalPhase hm h0 hc ht hb
