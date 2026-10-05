import OddZetaMixed.H158BasisIntegralBound
import OddZetaMixed.ExponentialRate
import Mathlib.Analysis.SpecialFunctions.Stirling
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.SumIntegralComparisons

/-!
# Quadratic rate of the actual h158 basis normalization

The factorial errors are bounded globally before summation. Integral sums
for `x * log x` give a finite-size enclosure of the remaining sum. No
complex Gamma estimate or contour asymptotic is assumed here.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset Filter MeasureTheory
open scoped Topology

/-- Exactly the product appearing in the changed-basis determinant bound. -/
def h158BasisNormalization (n : ℕ) : ℝ :=
  ∏ i : Fin (2*n), ((evenBasis i.val).leadingCoeff : ℝ)^2*(n : ℝ)^(4*i.val)

theorem h158BasisNormalization_pos (n : ℕ) (hn : 0 < n) :
    0 < h158BasisNormalization n := by
  apply Finset.prod_pos
  intro i _
  have he : (0 : ℝ) < (evenBasis i.val).leadingCoeff := by
    exact_mod_cast evenBasis_leadingCoeff_pos i.val
  have hnR : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  positivity

private def factorialLogError (m : ℕ) : ℝ :=
  Real.log (m.factorial : ℝ) - ((m : ℝ)*Real.log (m : ℝ)-(m : ℝ))

/-- Global real Stirling bounds, including the exceptional index zero. -/
private theorem factorialLogError_bounds (m : ℕ) :
    0 ≤ factorialLogError m ∧ factorialLogError m ≤ 1+Real.log (m : ℝ) := by
  rcases m with _ | m
  · norm_num [factorialLogError]
  have hm : (0 : ℝ) < (m+1 : ℕ) := by positivity
  have hm1 : (1 : ℝ) ≤ (m+1 : ℕ) := by norm_num
  have hl := Stirling.le_log_factorial_stirling (Nat.succ_ne_zero m)
  have hlog := Real.log_nonneg hm1
  have hpi : 0 ≤ Real.log (2*Real.pi) :=
    Real.log_nonneg (by linarith [Real.pi_gt_three])
  have hu := Stirling.log_stirlingSeq'_antitone (Nat.zero_le m)
  dsimp only [Function.comp_def, Nat.succ_eq_add_one] at hu
  have hs : Real.log (Stirling.stirlingSeq 1) = 1-Real.log 2/2 := by
    rw [Stirling.stirlingSeq_one, Real.log_div (by positivity) (by positivity),
      Real.log_exp, Real.log_sqrt (by positivity)]
  rw [hs] at hu
  have hf := Stirling.log_stirlingSeq_formula (m+1)
  rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) hm.ne',
    Real.log_div hm.ne' (Real.exp_ne_zero 1), Real.log_exp] at hf
  dsimp only [factorialLogError]
  constructor <;> linarith

private def weightedLogSum (m : ℕ) : ℝ :=
  ∑ i ∈ range m, (i : ℝ)*Real.log (i : ℝ)

private def weightedLogIntegral (x : ℝ) : ℝ :=
  x^2/2*Real.log x-x^2/4+1/4

private theorem weightedLog_integral (m : ℕ) (hm : 1 ≤ m) :
    (∫ x : ℝ in 1..(m : ℝ), x*Real.log x) = weightedLogIntegral (m : ℝ) := by
  have hmR : (1 : ℝ) ≤ m := by exact_mod_cast hm
  have hd (x : ℝ) (hx : x ∈ Set.uIcc (1 : ℝ) (m : ℝ)) :
      HasDerivAt (fun t : ℝ => t^2/2*Real.log t-t^2/4) (x*Real.log x) x := by
    rw [Set.uIcc_of_le hmR] at hx
    have hx0 : x ≠ 0 := by linarith [hx.1]
    have h := ((((hasDerivAt_id x).pow 2).div_const 2).mul
      (Real.hasDerivAt_log hx0)).sub (((hasDerivAt_id x).pow 2).div_const 4)
    convert! h using 1
    simp only [Nat.cast_ofNat, Nat.reduceSub, pow_one, id_eq, Pi.pow_apply]
    field_simp
    ring
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt hd
    (Real.continuous_mul_log.intervalIntegrable _ _)
  simpa [weightedLogIntegral] using h

/-- Upper and lower integral sums; the whole error is at most `m log m`. -/
private theorem weightedLogSum_bounds (m : ℕ) (hm : 1 ≤ m) :
    weightedLogIntegral (m : ℝ)-(m : ℝ)*Real.log (m : ℝ) ≤ weightedLogSum m ∧
      weightedLogSum m ≤ weightedLogIntegral (m : ℝ) := by
  have hmono : MonotoneOn (fun x : ℝ => x*Real.log x) (Set.Icc (1 : ℝ) (m : ℝ)) := by
    intro x hx y hy hxy
    exact mul_le_mul hxy (Real.log_le_log (by linarith [hx.1]) hxy)
      (Real.log_nonneg hx.1) (by linarith [hy.1])
  have hmono' : MonotoneOn (fun x : ℝ => x*Real.log x) (Set.Icc (↑(1 : ℕ)) (m : ℝ)) := by
    simpa only [Nat.cast_one] using hmono
  have hl := hmono'.sum_le_integral_Ico hm
  have hu := hmono'.integral_le_sum_Ico hm
  norm_num only [Nat.cast_one] at hl hu
  rw [weightedLog_integral m hm] at hl hu
  rw [Finset.sum_Ico_eq_sub _ hm] at hl hu
  simp only [sum_range_one, Nat.cast_zero, Real.log_zero, sub_zero, mul_zero] at hl
  simp only [sum_range_one, Nat.zero_add, Nat.cast_one, Real.log_one, mul_zero,
    sub_zero] at hu
  have hshift : (∑ i ∈ range m, ((i+1 : ℕ) : ℝ)*Real.log ((i+1 : ℕ) : ℝ)) =
      weightedLogSum m+(m : ℝ)*Real.log (m : ℝ) := by
    have h := Finset.sum_range_succ' (fun i : ℕ => (i : ℝ)*Real.log (i : ℝ)) m
    rw [Finset.sum_range_succ] at h
    simpa [weightedLogSum] using h.symm
  rw [hshift] at hu
  exact ⟨by linarith, hl⟩

private theorem sum_natCast (m : ℕ) :
    (∑ i ∈ range m, (i : ℝ)) = (m : ℝ)*((m : ℝ)-1)/2 := by
  induction m with
  | zero => norm_num
  | succ m ih =>
    rw [sum_range_succ, ih]
    push_cast
    ring

private theorem leadingCoeff_log (i : ℕ) :
    Real.log ((evenBasis i).leadingCoeff : ℝ) =
      Real.log 2-Real.log ((2*i).factorial : ℝ)-(if i = 0 then Real.log 2 else 0) := by
  cases i with
  | zero => simp
  | succ i =>
    rw [evenBasis_leadingCoeff_succ]
    push_cast
    rw [Real.log_div (by norm_num : (2 : ℝ) ≠ 0) (by positivity)]
    simp

private theorem normalization_log_sum (n : ℕ) (hn : 0 < n) :
    Real.log (h158BasisNormalization n) =
      (4*(n : ℝ)-2)*Real.log 2 -
        2*(∑ i ∈ range (2*n), Real.log ((2*i).factorial : ℝ)) +
          4*(n : ℝ)*(2*(n : ℝ)-1)*Real.log (n : ℝ) := by
  have hnR : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  have he (i : ℕ) : (0 : ℝ) < (evenBasis i).leadingCoeff := by
    exact_mod_cast evenBasis_leadingCoeff_pos i
  have hrow (i : ℕ) :
      Real.log (((evenBasis i).leadingCoeff : ℝ)^2*(n : ℝ)^(4*i)) =
        2*Real.log ((evenBasis i).leadingCoeff : ℝ) + (4*Real.log (n : ℝ))*(i : ℝ) := by
    rw [Real.log_mul (pow_ne_zero 2 (he i).ne') (pow_ne_zero _ hnR.ne'),
      Real.log_pow, Real.log_pow]
    push_cast
    ring
  rw [h158BasisNormalization, Real.log_prod (fun i _ =>
    mul_ne_zero (pow_ne_zero 2 (he i.val).ne') (pow_ne_zero _ hnR.ne'))]
  simp_rw [hrow]
  rw [Fin.sum_univ_eq_sum_range (fun i : ℕ =>
    2*Real.log ((evenBasis i).leadingCoeff : ℝ)+(4*Real.log (n : ℝ))*(i : ℝ)) (2*n)]
  simp_rw [leadingCoeff_log]
  have hif : (∑ i ∈ range (2*n), if i = 0 then Real.log 2 else 0) = Real.log 2 := by
    simp [show 0 < 2*n by omega]
  simp only [mul_sub, Finset.sum_add_distrib, Finset.sum_sub_distrib,
    ← Finset.mul_sum, Finset.sum_const, Finset.card_range,
    nsmul_eq_mul, hif, sum_natCast]
  push_cast
  ring

private def factorialErrorSum (n : ℕ) : ℝ :=
  ∑ i ∈ range (2*n), factorialLogError (2*i)

private theorem factorialErrorSum_bounds (n : ℕ) (hn : 0 < n) :
    0 ≤ factorialErrorSum n ∧
      factorialErrorSum n ≤ 2*(n : ℝ)*(1+Real.log (4*(n : ℝ))) := by
  constructor
  · exact Finset.sum_nonneg (fun i _ => (factorialLogError_bounds (2*i)).1)
  · calc
      factorialErrorSum n ≤ ∑ i ∈ range (2*n), (1+Real.log (4*(n : ℝ))) := by
        apply Finset.sum_le_sum
        intro i hi
        by_cases hi0 : i = 0
        · subst i
          simp only [Nat.mul_zero, factorialLogError, Nat.factorial_zero, Nat.cast_one,
            Real.log_one, Nat.cast_zero, Real.log_zero, zero_mul, sub_zero]
          have hnR : (1 : ℝ) ≤ n := by exact_mod_cast hn
          have hlog : 0 ≤ Real.log (4*(n : ℝ)) := Real.log_nonneg (by linarith)
          linarith
        · have hip : (0 : ℝ) < (2*i : ℕ) := by
            exact_mod_cast Nat.mul_pos (by omega : 0 < 2) (Nat.pos_of_ne_zero hi0)
          have hiR : (i : ℝ) < 2*(n : ℝ) := by exact_mod_cast Finset.mem_range.mp hi
          have hlog := Real.log_le_log hip (show ((2*i : ℕ) : ℝ) ≤ 4*(n : ℝ) by
            push_cast
            linarith)
          linarith [(factorialLogError_bounds (2*i)).2]
      _ = _ := by simp; ring

private theorem normalization_log_decomposition (n : ℕ) (hn : 0 < n) :
    Real.log (h158BasisNormalization n) =
      (4*(n : ℝ)-2)*Real.log 2 +
        4*(n : ℝ)*(2*(n : ℝ)-1)*(1+Real.log (n : ℝ)-Real.log 2) -
          4*weightedLogSum (2*n)-2*factorialErrorSum n := by
  have hterm (i : ℕ) : Real.log ((2*i).factorial : ℝ) =
      (2*Real.log 2)*(i : ℝ) + 2*((i : ℝ)*Real.log (i : ℝ)) - 2*(i : ℝ) +
        factorialLogError (2*i) := by
    rcases eq_or_ne i 0 with rfl | hi
    · simp [factorialLogError]
    · unfold factorialLogError
      rw [Nat.cast_mul, Nat.cast_ofNat, Real.log_mul (by norm_num : (2 : ℝ) ≠ 0)
        (Nat.cast_ne_zero.mpr hi)]
      ring
  rw [normalization_log_sum n hn]
  simp_rw [hterm]
  simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib,
    ← Finset.mul_sum, sum_natCast]
  unfold weightedLogSum factorialErrorSum
  push_cast
  ring

/-- The explicit main expression; its lower-order terms are retained. -/
def h158BasisNormalizationMain (n : ℕ) : ℝ :=
  (12-8*Real.log 4)*(n : ℝ)^2 - 4*(n : ℝ)*Real.log (n : ℝ) -
    4*(n : ℝ)-1+(8*(n : ℝ)-2)*Real.log 2

private theorem normalization_log_main (n : ℕ) (hn : 0 < n) :
    Real.log (h158BasisNormalization n) = h158BasisNormalizationMain n +
      4*(weightedLogIntegral (2*(n : ℝ))-weightedLogSum (2*n))-2*factorialErrorSum n := by
  have hnR : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  have hlog4 : Real.log 4 = 2*Real.log 2 := by
    rw [show (4 : ℝ) = 2^2 by norm_num, Real.log_pow]
    norm_num
  rw [normalization_log_decomposition n hn]
  unfold h158BasisNormalizationMain weightedLogIntegral
  rw [hlog4, Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) hnR]
  ring

/-- Explicit uniform finite-size bounds, established before passing to a limit. -/
theorem h158BasisNormalization_log_bounds (n : ℕ) (hn : 0 < n) :
    h158BasisNormalizationMain n-4*(n : ℝ)*(1+Real.log (4*(n : ℝ))) ≤
        Real.log (h158BasisNormalization n) ∧
      Real.log (h158BasisNormalization n) ≤
        h158BasisNormalizationMain n+8*(n : ℝ)*Real.log (2*(n : ℝ)) := by
  have hs := weightedLogSum_bounds (2*n) (by omega)
  have he := factorialErrorSum_bounds n hn
  have hd := normalization_log_main n hn
  push_cast at hs
  constructor <;> linarith

private theorem log_nat_div_tendsto :
    Tendsto (fun n : ℕ => Real.log (n : ℝ)/(n : ℝ)) atTop (𝓝 0) := by
  simpa only [Function.comp_def, id_eq] using!
    Real.isLittleO_log_id_atTop.tendsto_div_nhds_zero.comp
      (tendsto_natCast_atTop_atTop (R := ℝ))

private theorem log_scaled_nat_div_tendsto (c : ℝ) (hc : c ≠ 0) :
    Tendsto (fun n : ℕ => Real.log (c*(n : ℝ))/(n : ℝ)) atTop (𝓝 0) := by
  have h := (tendsto_const_div_atTop_nhds_zero_nat (Real.log c)).add log_nat_div_tendsto
  simp only [add_zero] at h
  refine h.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℕ)] with n hn
  rw [Real.log_mul hc (Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)), add_div]

private theorem normalizationMain_rate :
    Tendsto (fun n : ℕ => h158BasisNormalizationMain n/(n : ℝ)^2)
      atTop (𝓝 (12-8*Real.log 4)) := by
  have hi : Tendsto (fun n : ℕ => 1/(n : ℝ)) atTop (𝓝 0) :=
    tendsto_one_div_atTop_nhds_zero_nat
  have hc : Tendsto (fun _ : ℕ => 12-8*Real.log 4) atTop (𝓝 (12-8*Real.log 4)) :=
    tendsto_const_nhds
  have h := (((hc.sub (log_nat_div_tendsto.const_mul 4)).sub
    (hi.const_mul 4)).sub (hi.pow 2)).add
      (((hi.const_mul 8).sub ((hi.pow 2).const_mul 2)).mul_const (Real.log 2))
  norm_num only [mul_zero, sub_zero, zero_pow, zero_sub, zero_mul, add_zero] at h
  refine h.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℕ)] with n hn
  have hnR : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  unfold h158BasisNormalizationMain
  field_simp

private theorem normalizationUpperError_rate :
    Tendsto (fun n : ℕ => 8*(n : ℝ)*Real.log (2*(n : ℝ))/(n : ℝ)^2)
      atTop (𝓝 0) := by
  have h := (log_scaled_nat_div_tendsto 2 (by norm_num)).const_mul 8
  simp only [mul_zero] at h
  refine h.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℕ)] with n hn
  have hnR : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  field_simp

private theorem normalizationLowerError_rate :
    Tendsto (fun n : ℕ => 4*(n : ℝ)*(1+Real.log (4*(n : ℝ)))/(n : ℝ)^2)
      atTop (𝓝 0) := by
  have hi : Tendsto (fun n : ℕ => 1/(n : ℝ)) atTop (𝓝 0) :=
    tendsto_one_div_atTop_nhds_zero_nat
  have h := (hi.add (log_scaled_nat_div_tendsto 4 (by norm_num))).const_mul 4
  simp only [add_zero, mul_zero] at h
  refine h.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℕ)] with n hn
  have hnR : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  field_simp

/-- Exact quadratic rate of the actual normalization product. The proof
uses uniform finite-sum bounds, not a sum of pointwise asymptotics. -/
theorem h158BasisNormalization_log_rate :
    Tendsto (fun n : ℕ => Real.log (h158BasisNormalization n)/(n : ℝ)^2)
      atTop (𝓝 (12-8*Real.log 4)) := by
  have hl := normalizationMain_rate.sub normalizationLowerError_rate
  have hu := normalizationMain_rate.add normalizationUpperError_rate
  simp only [sub_zero] at hl
  simp only [add_zero] at hu
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le' hl hu
  · filter_upwards [eventually_gt_atTop (0 : ℕ)] with n hn
    have h := div_le_div_of_nonneg_right (h158BasisNormalization_log_bounds n hn).1
      (sq_nonneg (n : ℝ))
    simpa only [sub_div] using h
  · filter_upwards [eventually_gt_atTop (0 : ℕ)] with n hn
    have h := div_le_div_of_nonneg_right (h158BasisNormalization_log_bounds n hn).2
      (sq_nonneg (n : ℝ))
    simpa only [add_div] using h

/-- Both logarithmic epsilon bounds for direct use in rate assembly. -/
theorem h158BasisNormalization_eventually_log_bounds (ε : ℝ) (hε : 0 < ε) :
    ∀ᶠ n : ℕ in atTop,
      (12-8*Real.log 4-ε)*(n : ℝ)^2 ≤ Real.log (h158BasisNormalization n) ∧
        Real.log (h158BasisNormalization n) ≤ (12-8*Real.log 4+ε)*(n : ℝ)^2 := by
  have hl := h158BasisNormalization_log_rate.eventually_const_lt
    (show 12-8*Real.log 4-ε < 12-8*Real.log 4 by linarith)
  have hu := h158BasisNormalization_log_rate.eventually_lt_const
    (show 12-8*Real.log 4 < 12-8*Real.log 4+ε by linarith)
  filter_upwards [hl, hu, eventually_gt_atTop (0 : ℕ)] with n hlo hup hn
  have hnR : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  exact ⟨(le_div_iff₀ (sq_pos_of_pos hnR)).mp hlo.le,
    (div_le_iff₀ (sq_pos_of_pos hnR)).mp hup.le⟩

/-- Two-sided exponential rate for the positive, actual normalization. -/
theorem h158BasisNormalization_eventually_exp_bounds (ε : ℝ) (hε : 0 < ε) :
    ∀ᶠ n : ℕ in atTop,
      Real.exp ((12-8*Real.log 4-ε)*(n : ℝ)^2) ≤ h158BasisNormalization n ∧
        h158BasisNormalization n ≤ Real.exp ((12-8*Real.log 4+ε)*(n : ℝ)^2) := by
  filter_upwards [h158BasisNormalization_eventually_log_bounds ε hε,
    eventually_gt_atTop (0 : ℕ)] with n h hn
  exact ⟨(Real.le_log_iff_exp_le (h158BasisNormalization_pos n hn)).mp h.1,
    Real.le_exp_of_log_le h.2⟩

theorem h158BasisNormalization_upperQuadraticExpRate (good : Set ℕ) :
    UpperQuadraticExpRateOn good h158BasisNormalization (12-8*Real.log 4) := by
  intro ε hε
  filter_upwards [h158BasisNormalization_eventually_exp_bounds ε hε,
    eventually_gt_atTop (0 : ℕ)] with n h hn
  intro _
  simpa only [abs_of_pos (h158BasisNormalization_pos n hn)] using h.2

-- The empty product and the exceptional constant basis row are exact.
example : h158BasisNormalization 0 = 1 := by simp [h158BasisNormalization]

example : h158BasisNormalization 1 = 1 := by
  norm_num [h158BasisNormalization, Fin.prod_univ_succ, evenBasis_leadingCoeff_succ]

example : h158BasisNormalization 2 = 16384/18225 := by
  norm_num [h158BasisNormalization, Fin.prod_univ_succ, evenBasis_leadingCoeff_succ]

example :
    Tendsto (fun n : ℕ =>
      Real.log (∏ i : Fin (2*n), ((evenBasis i.val).leadingCoeff : ℝ)^2*
        (n : ℝ)^(4*i.val))/(n : ℝ)^2) atTop (𝓝 (12-8*Real.log 4)) :=
  h158BasisNormalization_log_rate

#print axioms h158BasisNormalization_pos
#print axioms h158BasisNormalization_log_bounds
#print axioms h158BasisNormalization_log_rate
#print axioms h158BasisNormalization_eventually_log_bounds
#print axioms h158BasisNormalization_eventually_exp_bounds
#print axioms h158BasisNormalization_upperQuadraticExpRate

end OddZetaMixed
