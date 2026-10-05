import OddZetaMixed.H158AdaptiveDensity
import OddZetaMixed.H158PhaseEnvelope

/-!
# A uniform bound on the complete adaptive modulus moments

Only the compact phase ceiling remains an input here. The kernel bound,
unbounded tail, zero-set exception, residual degree and scaling Jacobian
are all supplied by proved lemmas for the actual h158 objects.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open MeasureTheory Filter Polynomial

def h158AdaptiveMomentConstant : ℝ :=
  h158AdaptiveDensityConstant*polynomialExponentialEnvelopeConstant

theorem h158AdaptiveMomentConstant_pos : 0 < h158AdaptiveMomentConstant :=
  mul_pos h158AdaptiveDensityConstant_pos polynomialExponentialEnvelopeConstant_pos

theorem h158AdaptiveDensity_integrable (n i : ℕ) (hn : 0 < n) (hi : i < 2*n)
    (a : Fin 4 → ℚ) : Integrable (h158AdaptiveDensity n i a) := by
  exact h158AdaptiveMonic_modulusDensity_integrable n hn (fun _ => a) ⟨i,hi⟩

/-- All heights, not a truncated numerical quadrature. -/
theorem h158AdaptiveMoment_le_of_compact (n i : ℕ) (hn : 1 ≤ n) (hi : i < 2*n)
    (a : Fin 4 → ℚ) (ha : ∀ j, 0 ≤ (a j : ℝ) ∧ (a j : ℝ) ≤ 20) (M : ℝ)
    (hcompact : ∀ s, 0 ≤ s → s ≤ 96 →
      (∀ j, 0 < h158AdaptivePairModulus 75 (a j : ℝ) s) →
      h158PhasePotential (fun j => (a j : ℝ)) (h158PhaseCeilingTheta n i) s ≤ M) :
    h158BasisModulusMoment n
      ((h158AdaptiveMonic i (h158AdaptiveDelta n) a).comp
        (C ((n : ℚ)⁻¹^2)*X^2)) ≤
      h158AdaptiveMomentConstant*(n : ℝ)^41*Real.exp ((n : ℝ)*M) := by
  have hnR : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hnpos : (0 : ℝ) < n := by linarith
  have htheta := h158PhaseCeilingTheta_mem n i (by omega) hi
  have hphase := h158PhasePotential_ae_envelope (fun j => (a j : ℝ))
    (h158PhaseCeilingTheta n i) M ha htheta.1 htheta.2.le hcompact
  let A : ℝ := h158AdaptiveDensityConstant*(n : ℝ)^40*Real.exp ((n : ℝ)*M)
  have hA0 : 0 ≤ A := by
    have h := h158AdaptiveDensityConstant_pos
    dsimp [A]
    positivity
  have hbound : ∀ᵐ s : ℝ, h158AdaptiveDensity n i a ((n : ℝ)*s) ≤
      A*polynomialExponentialEnvelope s := by
    filter_upwards [hphase] with s hs
    have hmax := le_max_left (0 : ℝ) (|s|-96)
    have hp : (n : ℝ)*h158PhasePotential (fun j => (a j : ℝ))
        (h158PhaseCeilingTheta n i) |s| ≤
        (n : ℝ)*M-(4/5)*max 0 (|s|-96) := by
      have hm := mul_le_mul_of_nonneg_left hs hnpos.le
      nlinarith [mul_nonneg (sub_nonneg.mpr hnR) hmax]
    have hE := Real.exp_le_exp.mpr hp
    rw [Real.exp_sub] at hE
    have hC0 := h158AdaptiveDensityConstant_pos.le
    calc
      _ ≤ h158AdaptiveDensityConstant*(n : ℝ)^40*(1+|s|)^34*
          Real.exp ((n : ℝ)*h158PhasePotential (fun j => (a j : ℝ))
            (h158PhaseCeilingTheta n i) |s|) :=
        h158AdaptiveDensity_uniform n i hn hi a s
      _ ≤ h158AdaptiveDensityConstant*(n : ℝ)^40*(1+|s|)^34*
          (Real.exp ((n : ℝ)*M)/Real.exp ((4/5)*max 0 (|s|-96))) := by gcongr
      _ = _ := by
        unfold A polynomialExponentialEnvelope
        rw [neg_mul, Real.exp_neg]
        ring
  have hK := h158AdaptiveDensity_integrable n i (by omega) hi a
  have hscaled : Integrable (fun s : ℝ => h158AdaptiveDensity n i a ((n : ℝ)*s)) :=
    (integrable_comp_mul_left_iff _ hnpos.ne').mpr hK
  have hb := integral_mono_ae hscaled
    (polynomialExponentialEnvelope_integrable.const_mul A) hbound
  rw [integral_const_mul] at hb
  have hscale : (∫ y : ℝ, h158AdaptiveDensity n i a y) =
      (n : ℝ)*(∫ s : ℝ, h158AdaptiveDensity n i a ((n : ℝ)*s)) := by
    rw [Measure.integral_comp_mul_left, abs_of_pos (inv_pos.mpr hnpos), smul_eq_mul,
      ← mul_assoc, mul_inv_cancel₀ hnpos.ne', one_mul]
  change (∫ y : ℝ, h158AdaptiveDensity n i a y) ≤ _
  rw [hscale]
  calc
    _ ≤ (n : ℝ)*(A*polynomialExponentialEnvelopeConstant) :=
      mul_le_mul_of_nonneg_left hb hnpos.le
    _ = _ := by unfold A h158AdaptiveMomentConstant; ring

#print axioms h158AdaptiveDensity_integrable
#print axioms h158AdaptiveMoment_le_of_compact

end OddZetaMixed
