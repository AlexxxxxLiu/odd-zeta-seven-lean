import OddZetaMixed.H158BasisIntegralBound
import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Exact adaptive-pair norms and uniform contour drift

All comparisons are between nonnegative polynomial products. In particular,
the common zeros are retained without division or logarithms. The drift
estimate applies to the four-pair block raised to `k`; the residual monomial
in a degree not divisible by eight is displayed separately.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Polynomial Finset

/-- Exact nonnegative squared-modulus expression for one adaptive pair. -/
def h158AdaptivePairModulus (delta a s : ℝ) : ℝ :=
  (s^2-a^2)^2 * ((s+a)^2+4*delta^2) * ((s-a)^2+4*delta^2)

theorem h158AdaptivePairModulus_nonneg (delta a s : ℝ) :
    0 ≤ h158AdaptivePairModulus delta a s := by
  unfold h158AdaptivePairModulus
  positivity

/-- Factorization of the actual rational polynomial evaluated on its own
contour. The common real factor is not cancelled. -/
theorem h158AdaptivePair_eval_factorization (delta a : ℚ) (s : ℝ) :
    aeval (((delta : ℂ)+Complex.I*(s : ℂ))^2) (h158AdaptivePair delta a) =
      (((a : ℝ)^2-s^2 : ℝ) : ℂ) *
        (2*(delta : ℂ)+Complex.I*((s+(a : ℝ) : ℝ) : ℂ)) *
        (2*(delta : ℂ)+Complex.I*((s-(a : ℝ) : ℝ) : ℂ)) := by
  simp [h158AdaptivePair]
  apply Complex.ext <;> simp [pow_two, Complex.mul_re, Complex.mul_im] <;> ring

theorem h158AdaptivePair_normSq (delta a : ℚ) (s : ℝ) :
    Complex.normSq
      (aeval (((delta : ℂ)+Complex.I*(s : ℂ))^2) (h158AdaptivePair delta a)) =
        h158AdaptivePairModulus (delta : ℝ) (a : ℝ) s := by
  rw [h158AdaptivePair_eval_factorization, map_mul, map_mul]
  simp [Complex.normSq_apply, pow_two, Complex.ofReal_re, Complex.ofReal_im,
    Complex.mul_re, Complex.mul_im, Complex.add_re, Complex.add_im,
    Complex.I_re, Complex.I_im, Complex.ratCast_re, Complex.ratCast_im]
  unfold h158AdaptivePairModulus
  ring

theorem h158AdaptivePair_norm_sq (delta a : ℚ) (s : ℝ) :
    ‖aeval (((delta : ℂ)+Complex.I*(s : ℂ))^2) (h158AdaptivePair delta a)‖^2 =
      (s^2-(a : ℝ)^2)^2 * ((s+(a : ℝ))^2+4*(delta : ℝ)^2) *
        ((s-(a : ℝ))^2+4*(delta : ℝ)^2) := by
  rw [Complex.sq_norm, h158AdaptivePair_normSq]
  rfl

/-- A two-factor comparison without cancelling the common root factor. -/
theorem h158AdaptivePairModulus_drift (delta b a s : ℝ)
    (hb : 0 < b) (hdelta : b ≤ delta) :
    h158AdaptivePairModulus delta a s ≤
      (delta/b)^4 * h158AdaptivePairModulus b a s := by
  have hr : 1 ≤ delta/b := (le_div_iff₀ hb).mpr (by simpa using hdelta)
  have hr2 : 1 ≤ (delta/b)^2 := one_le_pow₀ hr
  have he : (delta/b)^2*b^2 = delta^2 := by field_simp
  have hfactor (x : ℝ) : x^2+4*delta^2 ≤ (delta/b)^2*(x^2+4*b^2) := by
    have hx : x^2 ≤ (delta/b)^2*x^2 := le_mul_of_one_le_left (sq_nonneg x) hr2
    calc
      x^2+4*delta^2 ≤ (delta/b)^2*x^2+4*delta^2 := by linarith
      _ = (delta/b)^2*(x^2+4*b^2) := by linear_combination -4*he
  have hm := mul_le_mul (hfactor (s+a)) (hfactor (s-a)) (by positivity) (by positivity)
  calc
    h158AdaptivePairModulus delta a s =
        (s^2-a^2)^2 * (((s+a)^2+4*delta^2)*((s-a)^2+4*delta^2)) := by
      unfold h158AdaptivePairModulus
      ring
    _ ≤ (s^2-a^2)^2 *
        (((delta/b)^2*((s+a)^2+4*b^2))*((delta/b)^2*((s-a)^2+4*b^2))) :=
      mul_le_mul_of_nonneg_left hm (sq_nonneg _)
    _ = (delta/b)^4*h158AdaptivePairModulus b a s := by
      unfold h158AdaptivePairModulus
      ring

/-- The exact four-pair block from `h158AdaptiveMonic`. -/
def h158AdaptiveBlock (k : ℕ) (delta : ℚ) (a : Fin 4 → ℚ) : ℚ[X] :=
  (∏ j, h158AdaptivePair delta (a j))^k

def h158AdaptiveBlockNormSq (k : ℕ) (delta : ℚ) (a : Fin 4 → ℚ) (s : ℝ) : ℝ :=
  Complex.normSq
    (aeval (((delta : ℂ)+Complex.I*(s : ℂ))^2) (h158AdaptiveBlock k delta a))

theorem h158AdaptiveBlockNormSq_nonneg (k : ℕ) (delta : ℚ) (a : Fin 4 → ℚ) (s : ℝ) :
    0 ≤ h158AdaptiveBlockNormSq k delta a s := Complex.normSq_nonneg _

theorem h158AdaptiveBlockNormSq_eq (k : ℕ) (delta : ℚ) (a : Fin 4 → ℚ) (s : ℝ) :
    h158AdaptiveBlockNormSq k delta a s =
      (∏ j, h158AdaptivePairModulus (delta : ℝ) (a j : ℝ) s)^k := by
  simp only [h158AdaptiveBlockNormSq, h158AdaptiveBlock, map_pow, map_prod,
    h158AdaptivePair_normSq]

/-- Four factors cost power sixteen, before taking the block power `k`. -/
theorem h158AdaptiveModulus_prod_drift (delta b s : ℝ) (a : Fin 4 → ℝ)
    (hb : 0 < b) (hdelta : b ≤ delta) :
    (∏ j, h158AdaptivePairModulus delta (a j) s) ≤
      (delta/b)^16 * ∏ j, h158AdaptivePairModulus b (a j) s := by
  calc
    _ ≤ ∏ j, ((delta/b)^4 * h158AdaptivePairModulus b (a j) s) :=
      Finset.prod_le_prod₀ (fun j _ => h158AdaptivePairModulus_nonneg delta (a j) s)
        (fun j _ => h158AdaptivePairModulus_drift delta b (a j) s hb hdelta)
    _ = _ := by simp [Finset.prod_mul_distrib, ← pow_mul]

theorem h158AdaptiveBlockNormSq_drift (k : ℕ) (delta b : ℚ)
    (a : Fin 4 → ℚ) (s : ℝ) (hb : 0 < b) (hdelta : b ≤ delta) :
    h158AdaptiveBlockNormSq k delta a s ≤
      ((delta : ℝ)/(b : ℝ))^(16*k) * h158AdaptiveBlockNormSq k b a s := by
  have hp := h158AdaptiveModulus_prod_drift (delta : ℝ) (b : ℝ) s
    (fun j => (a j : ℝ)) (by exact_mod_cast hb) (by exact_mod_cast hdelta)
  have hn : 0 ≤ ∏ j, h158AdaptivePairModulus (delta : ℝ) (a j : ℝ) s :=
    Finset.prod_nonneg (fun j _ => h158AdaptivePairModulus_nonneg _ _ _)
  have hk := pow_le_pow_left₀ hn hp k
  simpa only [h158AdaptiveBlockNormSq_eq, mul_pow, ← pow_mul] using hk

/-- The rational drift already used by `h158AdaptiveMonic_det`. -/
def h158AdaptiveDelta (n : ℕ) : ℚ := 75+1/(2*(n : ℚ))

theorem h158AdaptiveDelta_cast (n : ℕ) :
    (h158AdaptiveDelta n : ℝ) = 75+1/(2*(n : ℝ)) := by
  simp [h158AdaptiveDelta]

theorem h158AdaptiveDelta_ge (n : ℕ) : 75 ≤ h158AdaptiveDelta n := by
  unfold h158AdaptiveDelta
  exact le_add_of_nonneg_right (by positivity)

theorem h158AdaptiveDelta_ratio (n : ℕ) :
    (h158AdaptiveDelta n : ℝ)/75 = 1+1/(150*(n : ℝ)) := by
  rw [h158AdaptiveDelta_cast]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

theorem h158AdaptiveBlockNormSq_delta_le_power (n k : ℕ) (a : Fin 4 → ℚ) (s : ℝ) :
    h158AdaptiveBlockNormSq k (h158AdaptiveDelta n) a s ≤
      (1+1/(150*(n : ℝ)))^(16*k) * h158AdaptiveBlockNormSq k 75 a s := by
  have h := h158AdaptiveBlockNormSq_drift k (h158AdaptiveDelta n) 75 a s
    (by norm_num) (h158AdaptiveDelta_ge n)
  simpa only [Rat.cast_ofNat, h158AdaptiveDelta_ratio] using h

/-- An exponential comparison obtained without taking a logarithm. -/
theorem h158AdaptiveDrift_power_le_exp (n k : ℕ) :
    (1+1/(150*(n : ℝ)))^(16*k) ≤ Real.exp (8*(k : ℝ)/(75*(n : ℝ))) := by
  have hbase : 1+1/(150*(n : ℝ)) ≤ Real.exp (1/(150*(n : ℝ))) := by
    simpa [add_comm] using Real.add_one_le_exp (1/(150*(n : ℝ)))
  have hp := pow_le_pow_left₀ (by positivity : (0 : ℝ) ≤ 1+1/(150*(n : ℝ)))
    hbase (16*k)
  rw [← Real.exp_nat_mul] at hp
  have he : ((16*k : ℕ) : ℝ)*(1/(150*(n : ℝ))) = 8*(k : ℝ)/(75*(n : ℝ)) := by
    push_cast
    ring
  simpa only [he] using hp

theorem h158AdaptiveBlockNormSq_delta_le_exp (n k : ℕ) (a : Fin 4 → ℚ) (s : ℝ) :
    h158AdaptiveBlockNormSq k (h158AdaptiveDelta n) a s ≤
      Real.exp (8*(k : ℝ)/(75*(n : ℝ))) * h158AdaptiveBlockNormSq k 75 a s :=
  (h158AdaptiveBlockNormSq_delta_le_power n k a s).trans
    (mul_le_mul_of_nonneg_right (h158AdaptiveDrift_power_le_exp n k)
      (h158AdaptiveBlockNormSq_nonneg k 75 a s))

/-- The non-block degree is not silently included in the drift estimate. -/
theorem h158AdaptiveMonic_normSq (i : ℕ) (delta : ℚ) (a : Fin 4 → ℚ) (s : ℝ) :
    Complex.normSq
      (aeval (((delta : ℂ)+Complex.I*(s : ℂ))^2) (h158AdaptiveMonic i delta a)) =
        h158AdaptiveBlockNormSq (i/8) delta a s *
          ((delta : ℝ)^2+s^2)^(2*(i%8)) := by
  have hpoint : Complex.normSq ((delta : ℂ)+Complex.I*(s : ℂ)) =
      (delta : ℝ)^2+s^2 := by
    simp [Complex.normSq_apply, pow_two]
  change Complex.normSq
    (aeval (((delta : ℂ)+Complex.I*(s : ℂ))^2)
      (h158AdaptiveBlock (i/8) delta a * X^(i%8))) = _
  rw [map_mul, map_mul, map_pow, aeval_X, map_pow, map_pow, hpoint, ← pow_mul]
  rfl

theorem h158AdaptiveMonic_delta_normSq_le (n i : ℕ) (a : Fin 4 → ℚ) (s : ℝ) :
    Complex.normSq
      (aeval (((h158AdaptiveDelta n : ℂ)+Complex.I*(s : ℂ))^2)
        (h158AdaptiveMonic i (h158AdaptiveDelta n) a)) ≤
      Real.exp (8*((i/8 : ℕ) : ℝ)/(75*(n : ℝ))) *
        h158AdaptiveBlockNormSq (i/8) 75 a s *
          ((h158AdaptiveDelta n : ℝ)^2+s^2)^(2*(i%8)) := by
  rw [h158AdaptiveMonic_normSq]
  exact mul_le_mul_of_nonneg_right (h158AdaptiveBlockNormSq_delta_le_exp n (i/8) a s)
    (by positivity)

/-- The shifted, scaled coordinate in the actual integral is exactly
`delta_n + I * (y/n)`, not an approximate contour. -/
theorem h158AdaptiveContourCoordinate (n : ℕ) (hn : 0 < n) (y : ℝ) :
    (h158ContourPoint n y+(79*(n : ℂ)+1))/(n : ℂ) =
      (h158AdaptiveDelta n : ℂ)+Complex.I*((y/(n : ℝ) : ℝ) : ℂ) := by
  have hnC : (n : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  simp only [h158ContourPoint, h158ContourAbscissa, h158AdaptiveDelta]
  push_cast
  field_simp
  ring

theorem h158AdaptiveContourValue (n : ℕ) (hn : 0 < n) (Q : ℚ[X]) (y : ℝ) :
    h158BasisContourValue n (Q.comp (C ((n : ℚ)⁻¹^2)*X^2)) y =
      aeval (((h158AdaptiveDelta n : ℂ)+Complex.I*((y/(n : ℝ) : ℝ) : ℂ))^2) Q := by
  simp only [h158BasisContourValue, aeval_comp, map_mul, map_pow, aeval_C, aeval_X,
    map_add]
  apply congrArg (fun z : ℂ => aeval z Q)
  rw [← h158AdaptiveContourCoordinate n hn y]
  simp
  ring

/-- Exact norm on the actual contour, including the residual monomial. -/
theorem h158AdaptiveContour_norm_sq (n i : ℕ) (hn : 0 < n) (a : Fin 4 → ℚ) (y : ℝ) :
    ‖h158BasisContourValue n
      ((h158AdaptiveMonic i (h158AdaptiveDelta n) a).comp
        (C ((n : ℚ)⁻¹^2)*X^2)) y‖^2 =
      h158AdaptiveBlockNormSq (i/8) (h158AdaptiveDelta n) a (y/(n : ℝ)) *
        ((h158AdaptiveDelta n : ℝ)^2+(y/(n : ℝ))^2)^(2*(i%8)) := by
  rw [h158AdaptiveContourValue n hn, Complex.sq_norm, h158AdaptiveMonic_normSq]

theorem h158AdaptiveContour_norm_sq_le (n i : ℕ) (hn : 0 < n)
    (a : Fin 4 → ℚ) (y : ℝ) :
    ‖h158BasisContourValue n
      ((h158AdaptiveMonic i (h158AdaptiveDelta n) a).comp
        (C ((n : ℚ)⁻¹^2)*X^2)) y‖^2 ≤
      Real.exp (8*((i/8 : ℕ) : ℝ)/(75*(n : ℝ))) *
        h158AdaptiveBlockNormSq (i/8) 75 a (y/(n : ℝ)) *
          ((h158AdaptiveDelta n : ℝ)^2+(y/(n : ℝ))^2)^(2*(i%8)) := by
  rw [h158AdaptiveContourValue n hn, Complex.sq_norm]
  exact h158AdaptiveMonic_delta_normSq_le n i a (y/(n : ℝ))

/-- The pointwise analogue of the already-proved exact moment scaling. -/
theorem h158ScaledMonicEven_contour_norm_sq (n i : ℕ) (Q : ℚ[X]) (y : ℝ) :
    ‖h158BasisContourValue n (h158ScaledMonicEven n i Q) y‖^2 =
      (((evenBasis i).leadingCoeff : ℝ)^2*(n : ℝ)^(4*i)) *
        ‖h158BasisContourValue n (Q.comp (C ((n : ℚ)⁻¹^2)*X^2)) y‖^2 := by
  rw [h158ScaledMonicEven, h158BasisContourValue_scale, norm_mul, mul_pow,
    Complex.norm_ratCast, sq_abs]
  congr 1
  push_cast
  rw [mul_pow, ← pow_mul]
  congr 2
  omega

/-- The complete scaled row estimate keeps the same exact `K` factor. -/
theorem h158ScaledAdaptiveContour_norm_sq_le (n i : ℕ) (hn : 0 < n)
    (a : Fin 4 → ℚ) (y : ℝ) :
    ‖h158BasisContourValue n
      (h158ScaledMonicEven n i (h158AdaptiveMonic i (h158AdaptiveDelta n) a)) y‖^2 ≤
      (((evenBasis i).leadingCoeff : ℝ)^2*(n : ℝ)^(4*i)) *
        (Real.exp (8*((i/8 : ℕ) : ℝ)/(75*(n : ℝ))) *
          h158AdaptiveBlockNormSq (i/8) 75 a (y/(n : ℝ)) *
            ((h158AdaptiveDelta n : ℝ)^2+(y/(n : ℝ))^2)^(2*(i%8))) := by
  rw [h158ScaledMonicEven_contour_norm_sq]
  exact mul_le_mul_of_nonneg_left (h158AdaptiveContour_norm_sq_le n i hn a y)
    (by positivity)

-- Zero and empty-block regressions: no nonvanishing hypothesis is hidden.
example (delta a : ℚ) :
    Complex.normSq
      (aeval (((delta : ℂ)+Complex.I*(a : ℂ))^2) (h158AdaptivePair delta a)) = 0 := by
  simpa [h158AdaptivePairModulus] using h158AdaptivePair_normSq delta a (a : ℝ)

example (delta a : ℚ) :
    Complex.normSq
      (aeval (((delta : ℂ)+Complex.I*(-(a : ℂ)))^2) (h158AdaptivePair delta a)) = 0 := by
  simpa [h158AdaptivePairModulus] using h158AdaptivePair_normSq delta a (-(a : ℝ))

example (delta : ℚ) (a : Fin 4 → ℚ) (s : ℝ) :
    h158AdaptiveBlockNormSq 0 delta a s = 1 := by
  simp [h158AdaptiveBlockNormSq_eq]

example (delta a : ℚ) : h158AdaptiveBlockNormSq 1 delta (fun _ => a) (a : ℝ) = 0 := by
  simp [h158AdaptiveBlockNormSq_eq, h158AdaptivePairModulus]

example : (h158AdaptiveDelta 1 : ℝ)/75 = 151/150 := by
  norm_num [h158AdaptiveDelta]

example (n k : ℕ) :
    8*(k : ℝ)/(75*(n : ℝ)) = (8*(k : ℝ)/(n : ℝ))/75 := by ring

#print axioms h158AdaptivePair_normSq
#print axioms h158AdaptivePairModulus_drift
#print axioms h158AdaptiveBlockNormSq_delta_le_power
#print axioms h158AdaptiveDrift_power_le_exp
#print axioms h158AdaptiveBlockNormSq_delta_le_exp
#print axioms h158AdaptiveMonic_normSq
#print axioms h158AdaptiveContourCoordinate
#print axioms h158AdaptiveContour_norm_sq_le
#print axioms h158ScaledAdaptiveContour_norm_sq_le

end OddZetaMixed
