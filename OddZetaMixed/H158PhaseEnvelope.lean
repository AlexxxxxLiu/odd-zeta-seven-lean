import OddZetaMixed.H158PhaseTail
import OddZetaMixed.PolynomialExponentialEnvelope

/-!
# Integrating the actual adaptive phase outside its finite zero set

The compact ceiling is a separately certified input. This module derives
the infinite-ray ceiling and the almost-everywhere envelope from it.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Set MeasureTheory Filter

theorem h158PhasePotential_tail_line (a : Fin 4 → ℝ) (theta : ℝ)
    (ha : ∀ j, 0 ≤ a j ∧ a j ≤ 20) (htheta0 : 0 ≤ theta) (htheta2 : theta ≤ 2)
    {s : ℝ} (hs : 96 ≤ s) :
    h158PhasePotential a theta s ≤
      h158PhasePotential a theta 96-(4/5)*(s-96) := by
  have hc : ContinuousOn (h158PhasePotential a theta) (Ici 96) := by
    intro x hx
    exact (h158PhasePotential_hasDerivAt a ha hx).continuousAt.continuousWithinAt
  have hd : DifferentiableOn ℝ (h158PhasePotential a theta) (interior (Ici 96)) := by
    intro x hx
    exact (h158PhasePotential_hasDerivAt a ha (interior_subset hx)).differentiableAt.differentiableWithinAt
  have hh := (convex_Ici (96 : ℝ)).image_sub_le_mul_sub_of_deriv_le hc hd
    (fun x hx => h158PhasePotential_deriv_tail_le a ha htheta0 htheta2 (interior_subset hx))
    96 (by simp) s hs hs
  linarith

theorem h158PhasePairModulus_ae_pos (a : Fin 4 → ℝ) :
    ∀ᵐ s : ℝ, ∀ j, 0 < h158AdaptivePairModulus 75 (a j) |s| := by
  have hne : ∀ᵐ s : ℝ, ∀ j : Fin 4, s ≠ a j ∧ s ≠ -a j :=
    ae_all_iff.mpr (fun j => (volume.ae_ne (a j)).and (volume.ae_ne (-a j)))
  filter_upwards [hne] with s hs
  intro j
  have hsq : s^2 ≠ (a j)^2 := by
    intro he
    rcases (sq_eq_sq_iff_eq_or_eq_neg).mp he with he | he
    · exact (hs j).1 he
    · exact (hs j).2 he
  have hd : |s|^2-(a j)^2 ≠ 0 := by
    rw [sq_abs, sub_ne_zero]
    exact hsq
  unfold h158AdaptivePairModulus
  have hfirst := sq_pos_of_ne_zero hd
  positivity

theorem h158PhasePotential_ae_envelope (a : Fin 4 → ℝ) (theta M : ℝ)
    (ha : ∀ j, 0 ≤ a j ∧ a j ≤ 20) (htheta0 : 0 ≤ theta) (htheta2 : theta ≤ 2)
    (hcompact : ∀ s, 0 ≤ s → s ≤ 96 →
      (∀ j, 0 < h158AdaptivePairModulus 75 (a j) s) →
      h158PhasePotential a theta s ≤ M) :
    ∀ᵐ s : ℝ, h158PhasePotential a theta |s| ≤ M-(4/5)*max 0 (|s|-96) := by
  have h96 : h158PhasePotential a theta 96 ≤ M :=
    hcompact 96 (by norm_num) le_rfl (fun j =>
      h158PhasePairModulus_tail_pos (ha j).1 (ha j).2 le_rfl)
  filter_upwards [h158PhasePairModulus_ae_pos a] with s hs
  by_cases hsc : |s| ≤ 96
  · rw [max_eq_left (sub_nonpos.mpr hsc), mul_zero, sub_zero]
    exact hcompact |s| (abs_nonneg s) hsc hs
  · rw [max_eq_right (by linarith : 0 ≤ |s|-96)]
    exact (h158PhasePotential_tail_line a theta ha htheta0 htheta2
      (le_of_not_ge hsc)).trans (sub_le_sub_right h96 _)

#print axioms h158PhasePotential_tail_line
#print axioms h158PhasePairModulus_ae_pos
#print axioms h158PhasePotential_ae_envelope

end OddZetaMixed
