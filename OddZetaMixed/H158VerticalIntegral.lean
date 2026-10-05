import OddZetaMixed.H158ContourDecay
import Mathlib.MeasureTheory.Integral.Asymptotics
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
# The actual h158 vertical integral

The integrand includes the factor `I = dz/dy`, hence is oriented upward on
`Re z = -4*n-1/2`. All integrability and limit statements are for the actual
rational entry and fifth cotangent kernel, at fixed `n`. No infinite-contour
representation or uniform-in-`n` determinant estimate is an assumption here.
-/

noncomputable section

namespace OddZetaMixed

open Filter MeasureTheory
open scoped Topology

/-- Upward-oriented pullback of the actual contour integrand to the real line. -/
def h158VerticalIntegrand (n i j : ℕ) (y : ℝ) : ℂ :=
  h158ContourIntegrand n i j (h158ContourPoint n y) * Complex.I

theorem h158VerticalIntegrand_continuous (n i j : ℕ) :
    Continuous (h158VerticalIntegrand n i j) := by
  apply continuous_iff_continuousAt.mpr
  intro y
  have ha := h158ContourIntegrand_analyticAt n i j (h158ContourPoint n y)
    (by simp only [h158ContourPoint_re, le_refl]) (h158_sin_ne_zero_on_contour n y)
  have hg : ContinuousAt (h158ContourPoint n) y := by
    unfold h158ContourPoint
    fun_prop
  exact (ha.continuousAt.comp hg).mul continuousAt_const

theorem h158VerticalIntegrand_intervalIntegrable (n i j : ℕ) (a b : ℝ) :
    IntervalIntegrable (h158VerticalIntegrand n i j) volume a b :=
  (h158VerticalIntegrand_continuous n i j).intervalIntegrable a b

/-- The full radial exponent is retained on both tails of the vertical line. -/
theorem h158VerticalIntegrand_norm_le_decay (n : ℕ) (i j : Fin (2 * n))
    (y : ℝ) (hy : h158ContourDecayRadius n ≤ |y|) :
    ‖h158VerticalIntegrand n i j y‖ ≤
      h158ContourIntegrandDecayConstant n / |y| ^ (84 * n + 19) := by
  have hy0 : 0 < |y| := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 2)
    ((h158ContourDecayRadius_ge_two n).trans hy)
  have hr : |y| ≤ ‖h158ContourPoint n y‖ := by
    simpa [h158ContourPoint] using Complex.abs_im_le_norm (h158ContourPoint n y)
  have hs : 1 ≤ ‖Complex.sin ((Real.pi : ℂ) * h158ContourPoint n y)‖ := by
    apply h158_sin_norm_ge_one_half_integer (-4 * (n : ℤ) - 1)
    simp only [h158ContourPoint_re, h158ContourAbscissa]
    push_cast
    ring
  rw [h158VerticalIntegrand, norm_mul, Complex.norm_I, mul_one]
  exact (h158ContourIntegrand_norm_le_decay n i j _ (hy.trans hr) hs).trans
    (div_le_div_of_nonneg_left (h158ContourIntegrandDecayConstant_pos n).le
      (pow_pos hy0 _) (pow_le_pow_left₀ hy0.le hr _))

/-- A common integrable majorant outside an explicit compact interval. -/
theorem h158VerticalIntegrand_norm_le_envelope (n : ℕ) (i j : Fin (2 * n))
    (y : ℝ) (hy : h158ContourDecayRadius n ≤ |y|) :
    ‖h158VerticalIntegrand n i j y‖ ≤
      (2 * h158ContourIntegrandDecayConstant n) * ‖(1 + y ^ 2)⁻¹‖ := by
  have hy1 : 1 ≤ |y| := le_trans (by norm_num : (1 : ℝ) ≤ 2)
    ((h158ContourDecayRadius_ge_two n).trans hy)
  have hy2 : 1 ≤ y ^ 2 := by nlinarith [sq_abs y]
  have hp : y ^ 2 ≤ |y| ^ (84 * n + 19) := by
    rw [← sq_abs y]
    exact pow_le_pow_right₀ hy1 (by omega)
  have hC := (h158ContourIntegrandDecayConstant_pos n).le
  have hpow : 0 < |y| ^ (84 * n + 19) := pow_pos (by linarith) _
  have hden : 0 < 1 + y ^ 2 := by positivity
  calc
    _ ≤ h158ContourIntegrandDecayConstant n / |y| ^ (84 * n + 19) :=
      h158VerticalIntegrand_norm_le_decay n i j y hy
    _ ≤ (2 * h158ContourIntegrandDecayConstant n) / (1 + y ^ 2) := by
      apply (div_le_div_iff₀ hpow hden).mpr
      nlinarith
    _ = _ := by rw [Real.norm_eq_abs, abs_of_pos (inv_pos.mpr hden)]; rfl

/-- Absolute Bochner integrability on the actual complete vertical contour. -/
theorem h158VerticalIntegrand_integrable (n : ℕ) (i j : Fin (2 * n)) :
    Integrable (h158VerticalIntegrand n i j) := by
  let g : ℝ → ℝ := fun y => (1 + y ^ 2)⁻¹
  have htop : h158VerticalIntegrand n i j =O[atTop] g := by
    apply Asymptotics.isBigO_iff.mpr
    refine ⟨2 * h158ContourIntegrandDecayConstant n, ?_⟩
    filter_upwards [eventually_ge_atTop (h158ContourDecayRadius n)] with y hy
    exact h158VerticalIntegrand_norm_le_envelope n i j y (hy.trans (le_abs_self y))
  have hbot : h158VerticalIntegrand n i j =O[atBot] g := by
    apply Asymptotics.isBigO_iff.mpr
    refine ⟨2 * h158ContourIntegrandDecayConstant n, ?_⟩
    filter_upwards [eventually_le_atBot (-h158ContourDecayRadius n)] with y hy
    apply h158VerticalIntegrand_norm_le_envelope n i j y
    have h := neg_le_abs y
    linarith
  exact (h158VerticalIntegrand_continuous n i j).locallyIntegrable
    |>.integrable_of_isBigO_atBot_atTop hbot (integrable_inv_one_add_sq.integrableAtFilter _)
      htop (integrable_inv_one_add_sq.integrableAtFilter _)

/-- The genuine upward line integral, before residue normalization. -/
def h158VerticalIntegral (n i j : ℕ) : ℂ := ∫ y : ℝ, h158VerticalIntegrand n i j y

def h158VerticalTruncation (n i j : ℕ) (q : ℝ) : ℂ :=
  ∫ y in -q..q, h158VerticalIntegrand n i j y

/-- Truncation with arbitrary real height converges to the absolutely convergent integral. -/
theorem h158VerticalTruncation_tendsto (n : ℕ) (i j : Fin (2 * n)) :
    Tendsto (h158VerticalTruncation n i j) atTop (𝓝 (h158VerticalIntegral n i j)) := by
  exact intervalIntegral_tendsto_integral (h158VerticalIntegrand_integrable n i j)
    tendsto_neg_atTop_atBot tendsto_id

theorem h158VerticalTruncation_nat_tendsto (n : ℕ) (i j : Fin (2 * n)) :
    Tendsto (fun q : ℕ => h158VerticalTruncation n i j q) atTop
      (𝓝 (h158VerticalIntegral n i j)) :=
  (h158VerticalTruncation_tendsto n i j).comp tendsto_natCast_atTop_atTop

/-- A quantitative estimate for either vertical tail, with reflection `s = -1`
or without reflection `s = 1`. The coefficient depends on the fixed index. -/
theorem h158VerticalTail_norm_le (n : ℕ) (i j : Fin (2 * n))
    (q s : ℝ) (hq : h158ContourDecayRadius n ≤ q) (hs : |s| = 1) :
    ‖∫ y in Set.Ioi q, h158VerticalIntegrand n i j (s * y)‖ ≤
      h158ContourIntegrandDecayConstant n /
        (((84 * n + 18 : ℕ) : ℝ) * q ^ (84 * n + 18)) := by
  have hq0 : 0 < q := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 2)
    ((h158ContourDecayRadius_ge_two n).trans hq)
  have he : -((84 * n + 19 : ℕ) : ℝ) < -1 := by
    have hn := Nat.cast_nonneg (α := ℝ) n
    push_cast
    linarith
  have hg := (integrableOn_Ioi_rpow_of_lt he hq0).const_mul
    (h158ContourIntegrandDecayConstant n)
  calc
    _ ≤ ∫ y in Set.Ioi q,
        h158ContourIntegrandDecayConstant n * y ^ (-((84 * n + 19 : ℕ) : ℝ)) := by
      apply norm_integral_le_of_norm_le hg
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
      have hy0 : 0 < y := hq0.trans hy
      have habs : |s * y| = y := by rw [abs_mul, hs, one_mul, abs_of_pos hy0]
      have h := h158VerticalIntegrand_norm_le_decay n i j (s * y)
        (by rw [habs]; exact hq.trans hy.le)
      simpa only [habs, Real.rpow_neg hy0.le, Real.rpow_natCast, div_eq_mul_inv] using h
    _ = h158ContourIntegrandDecayConstant n *
        (-q ^ (-((84 * n + 19 : ℕ) : ℝ) + 1) /
          (-((84 * n + 19 : ℕ) : ℝ) + 1)) := by
      rw [integral_const_mul, integral_Ioi_rpow_of_lt he hq0]
    _ = _ := by
      have heq : -((84 * n + 19 : ℕ) : ℝ) + 1 = -((84 * n + 18 : ℕ) : ℝ) := by
        push_cast
        ring
      rw [heq, Real.rpow_neg hq0.le, Real.rpow_natCast]
      field_simp

theorem h158VerticalIntegral_sub_truncation (n : ℕ) (i j : Fin (2 * n)) (q : ℝ) :
    h158VerticalIntegral n i j - h158VerticalTruncation n i j q =
      (∫ y in Set.Iic (-q), h158VerticalIntegrand n i j y) +
        ∫ y in Set.Ioi q, h158VerticalIntegrand n i j y := by
  have hf := h158VerticalIntegrand_integrable n i j
  have hsplit := intervalIntegral.integral_Iic_add_Ioi
    (b := -q) hf.integrableOn hf.integrableOn
  have hdiff := intervalIntegral.integral_Ioi_sub_Ioi'
    (a := -q) (b := q) hf.integrableOn hf.integrableOn
  unfold h158VerticalIntegral h158VerticalTruncation
  linear_combination hsplit.symm - hdiff.symm

/-- Explicit truncation error, retaining the original fixed-index exponent. -/
theorem h158VerticalIntegral_truncation_error (n : ℕ) (i j : Fin (2 * n))
    (q : ℝ) (hq : h158ContourDecayRadius n ≤ q) :
    ‖h158VerticalIntegral n i j - h158VerticalTruncation n i j q‖ ≤
      2 * h158ContourIntegrandDecayConstant n /
        (((84 * n + 18 : ℕ) : ℝ) * q ^ (84 * n + 18)) := by
  have hpos := h158VerticalTail_norm_le n i j q 1 hq (by norm_num)
  have hneg := h158VerticalTail_norm_le n i j q (-1) hq (by norm_num)
  simp only [one_mul] at hpos
  simp only [neg_one_mul] at hneg
  rw [integral_comp_neg_Ioi] at hneg
  rw [h158VerticalIntegral_sub_truncation]
  calc
    _ ≤ ‖∫ y in Set.Iic (-q), h158VerticalIntegrand n i j y‖ +
        ‖∫ y in Set.Ioi q, h158VerticalIntegrand n i j y‖ := norm_add_le _ _
    _ ≤ h158ContourIntegrandDecayConstant n /
          (((84 * n + 18 : ℕ) : ℝ) * q ^ (84 * n + 18)) +
        h158ContourIntegrandDecayConstant n /
          (((84 * n + 18 : ℕ) : ℝ) * q ^ (84 * n + 18)) := add_le_add hneg hpos
    _ = _ := by ring

/-- The actual four-edge integral, with clockwise orientation about the
rectangle to the right of the vertical line. -/
def h158ClockwiseRectangleIntegral (n i j q : ℕ) : ℂ :=
  h158VerticalTruncation n i j q +
    (h158HorizontalClosingIntegral n i j q (q : ℝ) -
      h158RightClosingIntegral n i j q -
      h158HorizontalClosingIntegral n i j q (-(q : ℝ)))

/-- All four integrals here are actual integrals; this limit uses no residue identity. -/
theorem h158ClockwiseRectangleIntegral_tendsto (n : ℕ) (i j : Fin (2 * n)) :
    Tendsto (h158ClockwiseRectangleIntegral n i j) atTop
      (𝓝 (h158VerticalIntegral n i j)) := by
  unfold h158ClockwiseRectangleIntegral
  simpa only [add_zero] using
    (h158VerticalTruncation_nat_tendsto n i j).add (h158ClosingEdges_tendsto_zero n i j)

/-- Residue normalization with the sign appropriate for the clockwise closure.
This definition does not assert equality with `h158Functional`. -/
def h158NormalizedVerticalIntegral (n i j : ℕ) : ℂ :=
  -(h158VerticalIntegral n i j) / (2 * (Real.pi : ℂ) * Complex.I)

theorem h158NormalizedVerticalTruncation_tendsto (n : ℕ) (i j : Fin (2 * n)) :
    Tendsto (fun q : ℝ =>
      -(h158VerticalTruncation n i j q) / (2 * (Real.pi : ℂ) * Complex.I))
      atTop (𝓝 (h158NormalizedVerticalIntegral n i j)) :=
  (h158VerticalTruncation_tendsto n i j).neg.div_const _

theorem h158NormalizedClockwiseRectangleIntegral_tendsto
    (n : ℕ) (i j : Fin (2 * n)) :
    Tendsto (fun q : ℕ =>
      -(h158ClockwiseRectangleIntegral n i j q) / (2 * (Real.pi : ℂ) * Complex.I))
      atTop (𝓝 (h158NormalizedVerticalIntegral n i j)) :=
  (h158ClockwiseRectangleIntegral_tendsto n i j).neg.div_const _

end OddZetaMixed
