import OddZetaMixed.H158GammaDensity
import OddZetaMixed.H158PhaseCeiling

/-!
# The actual adaptive densities under a fixed polynomial envelope

The estimate retains all residual degrees and the finite-index contour drift.
The logarithmic potential is used only as an upper majorant, never to divide
by a polynomial value at its zeros.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset Polynomial Complex MeasureTheory

theorem h158AdaptivePairModulus_neg (delta a s : ℝ) :
    h158AdaptivePairModulus delta a (-s) = h158AdaptivePairModulus delta a s := by
  unfold h158AdaptivePairModulus
  ring

theorem h158AdaptivePairModulus_abs (delta a s : ℝ) :
    h158AdaptivePairModulus delta a |s| = h158AdaptivePairModulus delta a s := by
  rcases le_total 0 s with hs | hs
  · rw [abs_of_nonneg hs]
  · rw [abs_of_nonpos hs, h158AdaptivePairModulus_neg]

theorem h158AdaptiveDelta_le_76 (n : ℕ) (hn : 1 ≤ n) :
    (h158AdaptiveDelta n : ℝ) ≤ 76 := by
  have hnR : (1 : ℝ) ≤ n := by exact_mod_cast hn
  rw [h158AdaptiveDelta_cast]
  have hd : 1/(2*(n : ℝ)) ≤ 1 :=
    (div_le_one (by positivity : 0 < 2*(n : ℝ))).mpr (by linarith)
  linarith

theorem h158AdaptiveResidual_bound (n i : ℕ) (hn : 1 ≤ n) (s : ℝ) :
    ((h158AdaptiveDelta n : ℝ)^2+s^2)^(2*(i%8)) ≤
      (76 : ℝ)^28*(1+|s|)^28 := by
  have hd75 : (75 : ℝ) ≤ h158AdaptiveDelta n := by
    exact_mod_cast h158AdaptiveDelta_ge n
  have hd0 : (0 : ℝ) ≤ h158AdaptiveDelta n := by linarith
  have hd1 := h158AdaptiveDelta_le_76 n hn
  have hb : (h158AdaptiveDelta n : ℝ)^2+s^2 ≤ (76*(1+|s|))^2 := by
    nlinarith [sq_abs s, abs_nonneg s, sq_nonneg s]
  have hbase : (1 : ℝ) ≤ 76*(1+|s|) := by nlinarith [abs_nonneg s]
  calc
    _ ≤ ((76*(1+|s|))^2)^(2*(i%8)) := pow_le_pow_left₀ (by positivity) hb _
    _ = (76*(1+|s|))^(4*(i%8)) := by rw [← pow_mul]; congr 1; omega
    _ ≤ (76*(1+|s|))^28 := pow_le_pow_right₀ hbase (by omega)
    _ = _ := by rw [mul_pow]

theorem h158AdaptiveDrift_uniform (n i : ℕ) (hn : 1 ≤ n) (hi : i < 2*n) :
    Real.exp (8*((i/8 : ℕ) : ℝ)/(75*(n : ℝ))) ≤ Real.exp (2/75) := by
  have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  apply Real.exp_le_exp.mpr
  apply (div_le_iff₀ (by positivity : 0 < 75*(n : ℝ))).mpr
  have h : (8 : ℝ)*((i/8 : ℕ) : ℝ) ≤ 2*(n : ℝ) := by
    exact_mod_cast (show 8*(i/8) ≤ 2*n by omega)
  nlinarith

/-- This also holds at a zero, because `0 <= exp (log 0)`. -/
theorem h158AdaptiveBlockNormSq_le_exp (k : ℕ) (a : Fin 4 → ℚ) (s : ℝ) :
    h158AdaptiveBlockNormSq k 75 a s ≤
      Real.exp ((k : ℝ)*∑ j, Real.log (h158AdaptivePairModulus 75 (a j : ℝ) |s|)) := by
  have hsingle (j : Fin 4) : h158AdaptivePairModulus 75 (a j : ℝ) s ≤
      Real.exp (Real.log (h158AdaptivePairModulus 75 (a j : ℝ) |s|)) := by
    rw [h158AdaptivePairModulus_abs]
    by_cases hz : h158AdaptivePairModulus 75 (a j : ℝ) s = 0
    · rw [hz]; positivity
    · rw [Real.exp_log (lt_of_le_of_ne (h158AdaptivePairModulus_nonneg _ _ _) (Ne.symm hz))]
  rw [h158AdaptiveBlockNormSq_eq]
  have hp := Finset.prod_le_prod₀
    (fun j (_ : j ∈ (univ : Finset (Fin 4))) => h158AdaptivePairModulus_nonneg 75 (a j) s)
    (fun j _ => hsingle j)
  have hk := pow_le_pow_left₀ (Finset.prod_nonneg (fun j _ =>
    h158AdaptivePairModulus_nonneg 75 (a j) s)) hp k
  simpa only [Rat.cast_ofNat, ← Real.exp_sum, ← Real.exp_nat_mul] using hk

def h158AdaptiveDensity (n i : ℕ) (a : Fin 4 → ℚ) (y : ℝ) : ℝ :=
  h158ModulusWeight n y *
    ‖h158BasisContourValue n
      ((h158AdaptiveMonic i (h158AdaptiveDelta n) a).comp
        (C ((n : ℚ)⁻¹^2)*X^2)) y‖^2

def h158AdaptiveDensityConstant : ℝ :=
  h158DensityConstant*Real.exp (2/75)*(76 : ℝ)^28

theorem h158AdaptiveDensityConstant_pos : 0 < h158AdaptiveDensityConstant := by
  unfold h158AdaptiveDensityConstant
  exact mul_pos (mul_pos h158DensityConstant_pos (Real.exp_pos _)) (by positivity)

theorem h158AdaptiveDensity_nonneg (n i : ℕ) (a : Fin 4 → ℚ) (y : ℝ) :
    0 ≤ h158AdaptiveDensity n i a y :=
  mul_nonneg (h158ModulusWeight_nonneg _ _) (sq_nonneg _)

theorem h158AdaptiveDensity_uniform (n i : ℕ) (hn : 1 ≤ n) (hi : i < 2*n)
    (a : Fin 4 → ℚ) (s : ℝ) :
    h158AdaptiveDensity n i a ((n : ℝ)*s) ≤
      h158AdaptiveDensityConstant*(n : ℝ)^40*(1+|s|)^34*
        Real.exp ((n : ℝ)*h158PhasePotential (fun j => (a j : ℝ))
          (h158PhaseCeilingTheta n i) |s|) := by
  have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hQ := h158AdaptiveContour_norm_sq_le n i (by omega) a ((n : ℝ)*s)
  rw [mul_div_cancel_left₀ s hnR.ne'] at hQ
  have hW := h158ModulusWeight_uniform_envelope_abs n hn s
  have hB := h158AdaptiveBlockNormSq_le_exp (i/8) a s
  have hR := h158AdaptiveResidual_bound n i hn s
  have hD := h158AdaptiveDrift_uniform n i hn hi
  have hB0 := h158AdaptiveBlockNormSq_nonneg (i/8) 75 a s
  have hC0 := h158DensityConstant_pos.le
  have hQ' : ‖h158BasisContourValue n
      ((h158AdaptiveMonic i (h158AdaptiveDelta n) a).comp
        (C ((n : ℚ)⁻¹^2)*X^2)) ((n : ℝ)*s)‖^2 ≤
      Real.exp (2/75)*
        Real.exp (((i/8 : ℕ) : ℝ)*∑ j,
          Real.log (h158AdaptivePairModulus 75 (a j : ℝ) |s|)) *
        ((76 : ℝ)^28*(1+|s|)^28) := by
    apply hQ.trans
    gcongr
  unfold h158AdaptiveDensity
  have h := mul_le_mul hW hQ' (sq_nonneg _) (by positivity)
  apply h.trans_eq
  have he : (n : ℝ)*h158PhasePotential (fun j => (a j : ℝ))
      (h158PhaseCeilingTheta n i) |s| =
      (n : ℝ)*h158Phase |s|+((i/8 : ℕ) : ℝ)*∑ j,
        Real.log (h158AdaptivePairModulus 75 (a j : ℝ) |s|) := by
    unfold h158PhasePotential h158PhaseCeilingTheta
    field_simp
  rw [he, Real.exp_add]
  unfold h158AdaptiveDensityConstant
  ring

end OddZetaMixed
