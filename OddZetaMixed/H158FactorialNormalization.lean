import OddZetaMixed.H158Kernel
import OddZetaMixed.H158PhaseTail
import Mathlib.Analysis.SpecialFunctions.Stirling

/-!
# Uniform logarithmic estimate for the actual h158 factorial normalization

The exact finite factorial remainders are retained. Mathlib's global real
Stirling lower bound and decreasing Stirling sequence bound each remainder
between zero and one at every positive index. No limiting estimate is used.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset

/-- Positivity holds even at zero, where all factorials are one. -/
theorem h158Normalization_pos (n : ℕ) : 0 < h158Normalization n := by
  unfold h158Normalization
  apply div_pos
  · apply mul_pos (by norm_num)
    exact Finset.prod_pos (fun b _ => by positivity)
  · exact Finset.prod_pos (fun a _ => by positivity)

theorem h158Normalization_real_pos (n : ℕ) : 0 < (h158Normalization n : ℝ) := by
  exact_mod_cast h158Normalization_pos n

/-- The original rational factorial product, cast into the reals. -/
theorem h158Normalization_cast (n : ℕ) :
    (h158Normalization n : ℝ) =
      2 * (∏ b ∈ range 16, (Nat.factorial ((52-2*b)*n) : ℝ)) /
        (∏ a ∈ range 5, (Nat.factorial ((48+a)*n) : ℝ)^2) := by
  unfold h158Normalization
  push_cast
  rfl

/-- Exact Stirling remainder; bounds below require a positive factorial index. -/
def h158FactorialLogError (m : ℕ) : ℝ :=
  Real.log (m.factorial : ℝ) -
    ((m : ℝ)*Real.log (m : ℝ)-(m : ℝ) +
      Real.log (m : ℝ)/2 + Real.log (2*Real.pi)/2)

/-- A finite-index real Stirling bound, not an eventual or asymptotic assertion. -/
theorem h158FactorialLogError_bounds (m : ℕ) (hm : 0 < m) :
    0 ≤ h158FactorialLogError m ∧ h158FactorialLogError m ≤ 1 := by
  rcases m with _ | m
  · omega
  have hmR : (0 : ℝ) < (m+1 : ℕ) := by positivity
  have hl := Stirling.le_log_factorial_stirling (Nat.succ_ne_zero m)
  have hu := Stirling.log_stirlingSeq'_antitone (Nat.zero_le m)
  dsimp only [Function.comp_def, Nat.succ_eq_add_one] at hu
  have hs : Real.log (Stirling.stirlingSeq 1) = 1-Real.log 2/2 := by
    rw [Stirling.stirlingSeq_one, Real.log_div (by positivity) (by positivity),
      Real.log_exp, Real.log_sqrt (by positivity)]
  rw [hs] at hu
  have hf := Stirling.log_stirlingSeq_formula (m+1)
  rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) hmR.ne',
    Real.log_div hmR.ne' (Real.exp_ne_zero 1), Real.log_exp] at hf
  have hpi : 0 ≤ Real.log (2*Real.pi) :=
    Real.log_nonneg (by linarith [Real.pi_gt_three])
  dsimp only [h158FactorialLogError]
  constructor <;> linarith

/-- The coefficient is exactly the constant in the actual phase definition. -/
theorem h158PhaseConstant_eq_normalization_sums :
    h158PhaseConstant =
      (∑ b ∈ range 16, ((52-2*b : ℕ) : ℝ)*Real.log ((52-2*b : ℕ) : ℝ)) -
        2*∑ a ∈ range 5, ((48+a : ℕ) : ℝ)*Real.log ((48+a : ℕ) : ℝ) := by
  unfold h158PhaseConstant
  rw [← Finset.Ico_add_one_right_eq_Icc, ← Finset.Ico_add_one_right_eq_Icc,
    Finset.sum_Ico_eq_sum_range, Finset.sum_Ico_eq_sum_range]
  norm_num only [Nat.reduceAdd, Nat.reduceSub]
  congr 1
  apply Finset.sum_congr rfl
  intro b hb
  have hb' : 2*b ≤ 52 := by have := Finset.mem_range.mp hb; omega
  rw [Nat.cast_sub hb']
  push_cast
  have harg : (158 : ℝ)-2*(53+(b : ℝ)) = 52-2*(b : ℝ) := by ring
  rw [harg]

/-- The full constant term, including every logarithmic factorial correction. -/
def h158NormalizationLogConstant : ℝ :=
  Real.log 2 + 3*Real.log (2*Real.pi) +
    (1/2 : ℝ)*(∑ b ∈ range 16, Real.log ((52-2*b : ℕ) : ℝ)) -
      ∑ a ∈ range 5, Real.log ((48+a : ℕ) : ℝ)

def h158NormalizationLogMain (n : ℕ) : ℝ :=
  92*(n : ℝ)*Real.log (n : ℝ) + (n : ℝ)*(h158PhaseConstant-92) +
    3*Real.log (n : ℝ) + h158NormalizationLogConstant

/-- Exact finite sum of sixteen numerator and ten denominator remainders. -/
def h158NormalizationLogError (n : ℕ) : ℝ :=
  (∑ b ∈ range 16, h158FactorialLogError ((52-2*b)*n)) -
    2*∑ a ∈ range 5, h158FactorialLogError ((48+a)*n)

theorem h158Normalization_log_sum (n : ℕ) :
    Real.log (h158Normalization n : ℝ) = Real.log 2 +
      (∑ b ∈ range 16, Real.log (Nat.factorial ((52-2*b)*n) : ℝ)) -
        2*∑ a ∈ range 5, Real.log (Nat.factorial ((48+a)*n) : ℝ) := by
  have hf (m : ℕ) : (m.factorial : ℝ) ≠ 0 := by positivity
  rw [h158Normalization_cast,
    Real.log_div (mul_ne_zero (by norm_num) (Finset.prod_ne_zero_iff.mpr
      (fun b _ => hf _)))
      (Finset.prod_ne_zero_iff.mpr (fun a _ => pow_ne_zero 2 (hf _))),
    Real.log_mul (by norm_num : (2 : ℝ) ≠ 0)
      (Finset.prod_ne_zero_iff.mpr (fun b _ => hf _)),
    Real.log_prod (fun b _ => hf _),
    Real.log_prod (fun a _ => pow_ne_zero 2 (hf _))]
  simp only [Real.log_pow, Nat.cast_ofNat, ← Finset.mul_sum]

private theorem factorial_log_scaled (c n : ℕ) (hc : 0 < c) (hn : 0 < n) :
    Real.log (Nat.factorial (c*n) : ℝ) =
      ((n : ℝ)*Real.log (n : ℝ)-(n : ℝ))*(c : ℝ) +
        (n : ℝ)*((c : ℝ)*Real.log (c : ℝ)) + Real.log (n : ℝ)/2 +
          (1/2 : ℝ)*Real.log (c : ℝ) + Real.log (2*Real.pi)/2 +
            h158FactorialLogError (c*n) := by
  unfold h158FactorialLogError
  rw [Nat.cast_mul, Real.log_mul (Nat.cast_ne_zero.mpr hc.ne')
    (Nat.cast_ne_zero.mpr hn.ne')]
  ring

private theorem factorial_log_sum_scaled (s : Finset ℕ) (c : ℕ → ℕ)
    (hc : ∀ i ∈ s, 0 < c i) (n : ℕ) (hn : 0 < n) :
    (∑ i ∈ s, Real.log (Nat.factorial (c i*n) : ℝ)) =
      ((n : ℝ)*Real.log (n : ℝ)-(n : ℝ))*(∑ i ∈ s, (c i : ℝ)) +
        (n : ℝ)*(∑ i ∈ s, (c i : ℝ)*Real.log (c i : ℝ)) +
          (s.card : ℝ)*(Real.log (n : ℝ)/2) +
            (1/2 : ℝ)*(∑ i ∈ s, Real.log (c i : ℝ)) +
              (s.card : ℝ)*(Real.log (2*Real.pi)/2) +
                ∑ i ∈ s, h158FactorialLogError (c i*n) := by
  rw [Finset.sum_congr rfl (fun i hi => factorial_log_scaled (c i) n (hc i hi) hn)]
  simp only [Finset.sum_add_distrib, ← Finset.mul_sum, Finset.sum_const, nsmul_eq_mul]

/-- Exact finite-index expansion, with no logarithm split at a zero argument. -/
theorem h158Normalization_log_eq (n : ℕ) (hn : 0 < n) :
    Real.log (h158Normalization n : ℝ) =
      h158NormalizationLogMain n + h158NormalizationLogError n := by
  have hnum := factorial_log_sum_scaled (range 16) (fun b => 52-2*b)
    (by intro b hb; have := Finset.mem_range.mp hb; omega) n hn
  have hden := factorial_log_sum_scaled (range 5) (fun a => 48+a)
    (by intro a _; omega) n hn
  have hnumSum : (∑ b ∈ range 16, ((52-2*b : ℕ) : ℝ)) = 592 := by
    norm_num [Finset.sum_range_succ]
  have hdenSum : (∑ a ∈ range 5, ((48+a : ℕ) : ℝ)) = 250 := by
    norm_num [Finset.sum_range_succ]
  simp only [hnumSum, hdenSum, Finset.card_range, Nat.cast_ofNat] at hnum hden
  rw [h158Normalization_log_sum, hnum, hden]
  unfold h158NormalizationLogMain h158NormalizationLogConstant h158NormalizationLogError
  rw [h158PhaseConstant_eq_normalization_sums]
  ring

/-- A stronger signed bound than the requested absolute error bound of 26. -/
theorem h158NormalizationLogError_bounds (n : ℕ) (hn : 0 < n) :
    -10 ≤ h158NormalizationLogError n ∧ h158NormalizationLogError n ≤ 16 := by
  have hb (b : ℕ) (hb : b ∈ range 16) :=
    h158FactorialLogError_bounds ((52-2*b)*n)
      (Nat.mul_pos (by have := Finset.mem_range.mp hb; omega) hn)
  have ha (a : ℕ) (_ha : a ∈ range 5) :=
    h158FactorialLogError_bounds ((48+a)*n) (Nat.mul_pos (by omega) hn)
  have hnum0 := Finset.sum_nonneg (fun b hb' => (hb b hb').1)
  have hden0 := Finset.sum_nonneg (fun a ha' => (ha a ha').1)
  have hnum1 := Finset.sum_le_sum (fun b hb' => (hb b hb').2)
  have hden1 := Finset.sum_le_sum (fun a ha' => (ha a ha').2)
  norm_num only [Finset.sum_const, Finset.card_range, nsmul_eq_mul, Nat.cast_ofNat,
    mul_one] at hnum1 hden1
  unfold h158NormalizationLogError
  constructor <;> linarith

/-- Uniform two-sided bounds for every positive integer, including `n = 1`. -/
theorem h158Normalization_log_bounds (n : ℕ) (hn : 0 < n) :
    h158NormalizationLogMain n-10 ≤ Real.log (h158Normalization n : ℝ) ∧
      Real.log (h158Normalization n : ℝ) ≤ h158NormalizationLogMain n+16 := by
  rw [h158Normalization_log_eq n hn]
  have h := h158NormalizationLogError_bounds n hn
  constructor <;> linarith

theorem h158Normalization_log_abs_sub_le (n : ℕ) (hn : 0 < n) :
    |Real.log (h158Normalization n : ℝ)-h158NormalizationLogMain n| ≤ 26 := by
  have h := h158Normalization_log_bounds n hn
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- The requested fully expanded formula with a uniformly bounded exact error. -/
theorem h158Normalization_log_uniform (n : ℕ) (hn : 1 ≤ n) :
    ∃ error : ℝ, |error| ≤ 26 ∧
      Real.log (h158Normalization n : ℝ) =
        92*(n : ℝ)*Real.log (n : ℝ) + (n : ℝ)*(h158PhaseConstant-92) +
          3*Real.log (n : ℝ) + h158NormalizationLogConstant + error := by
  have hn' : 0 < n := hn
  refine ⟨h158NormalizationLogError n, ?_, h158Normalization_log_eq n hn'⟩
  have h := h158NormalizationLogError_bounds n hn'
  exact abs_le.mpr ⟨by linarith, by linarith⟩

end OddZetaMixed
