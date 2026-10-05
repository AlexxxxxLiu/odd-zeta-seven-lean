import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Tactic

/-!
# Computable rational logarithm enclosures

The finite atanh expansion and its rational remainder are justified by
`Real.sum_range_le_log_div` and `Real.log_div_le_sum_range_add`.
Range reduction uses a caller-supplied integer `k` with `q / 2^k` in `[1,2]`.
The same expansion at `x = 1/3` bounds `log 2`; no logarithmic enclosure is
assumed. All bound definitions and the certificate checker are computable in
`Q`. Only the soundness statements mention real logarithms.

This module supplies arithmetic infrastructure, not a compact phase-cell
certificate or a bound for any h158 analytic phase.
-/

set_option autoImplicit false

namespace OddZetaMixed.RationalLogBounds

open Finset

/-- Twice the first `n` terms of the atanh series. -/
def atanhLower (x : ℚ) (n : ℕ) : ℚ :=
  2 * ∑ i ∈ range n, x^(2*i+1) / (2*i+1 : ℕ)

/-- A rational upper bound for the omitted terms when `0 <= x < 1`. -/
def atanhError (x : ℚ) (n : ℕ) : ℚ :=
  2 * (x^(2*n+1) / (1-x^2))

def atanhUpper (x : ℚ) (n : ℕ) : ℚ :=
  atanhLower x n + atanhError x n

theorem atanh_sound (x : ℚ) (n : ℕ) (h₀ : 0 ≤ x) (h₁ : x < 1) :
    (atanhLower x n : ℝ) ≤ Real.log ((1+(x : ℝ))/(1-(x : ℝ))) ∧
      Real.log ((1+(x : ℝ))/(1-(x : ℝ))) ≤ (atanhUpper x n : ℝ) := by
  have h₀R : (0 : ℝ) ≤ x := by exact_mod_cast h₀
  have h₁R : (x : ℝ) < 1 := by exact_mod_cast h₁
  have hl := Real.sum_range_le_log_div h₀R h₁R n
  have hu := Real.log_div_le_sum_range_add h₀R h₁R n
  dsimp only [atanhUpper, atanhLower, atanhError]
  push_cast
  constructor <;> linarith

/-- The atanh argument after reduction to `[1,2]`. -/
def argument (y : ℚ) : ℚ := (y-1)/(y+1)

theorem argument_mem (y : ℚ) (hy : 1 ≤ y ∧ y ≤ 2) :
    0 ≤ argument y ∧ argument y ≤ 1/3 := by
  have hd : 0 < y+1 := by linarith [hy.1]
  constructor
  · exact div_nonneg (sub_nonneg.mpr hy.1) hd.le
  · apply (div_le_iff₀ hd).mpr
    linarith [hy.2]

def unitLower (y : ℚ) (n : ℕ) : ℚ := atanhLower (argument y) n

def unitUpper (y : ℚ) (n : ℕ) : ℚ := atanhUpper (argument y) n

theorem unit_sound (y : ℚ) (n : ℕ) (hy : 1 ≤ y ∧ y ≤ 2) :
    (unitLower y n : ℝ) ≤ Real.log (y : ℝ) ∧
      Real.log (y : ℝ) ≤ (unitUpper y n : ℝ) := by
  have hx := argument_mem y hy
  have h := atanh_sound (argument y) n hx.1 (by linarith [hx.2])
  have hyR : (1 : ℝ) ≤ y := by exact_mod_cast hy.1
  have hd : (y : ℝ)+1 ≠ 0 := by linarith
  have heq : (1+(argument y : ℝ))/(1-(argument y : ℝ)) = (y : ℝ) := by
    unfold argument
    push_cast
    field_simp
    ring
  simpa only [unitLower, unitUpper, heq] using h

/-- Bounds for `log 2` are derived by exactly the same finite formula. -/
def logTwoLower (n : ℕ) : ℚ := unitLower 2 n

def logTwoUpper (n : ℕ) : ℚ := unitUpper 2 n

theorem logTwo_sound (n : ℕ) :
    (logTwoLower n : ℝ) ≤ Real.log 2 ∧ Real.log 2 ≤ (logTwoUpper n : ℝ) := by
  simpa only [logTwoLower, logTwoUpper, Rat.cast_ofNat] using
    unit_sound 2 n (by norm_num)

theorem logTwoLower_eq (n : ℕ) : logTwoLower n = atanhLower (1/3) n := by
  norm_num [logTwoLower, unitLower, argument]

theorem logTwoUpper_eq (n : ℕ) : logTwoUpper n = atanhUpper (1/3) n := by
  norm_num [logTwoUpper, unitUpper, argument]

/-- Integer exponents allow range reduction for every positive rational,
including rationals below one. The exponent itself is supplied by the caller. -/
def mantissa (q : ℚ) (k : ℤ) : ℚ := q / (2 : ℚ)^k

def lower (q : ℚ) (k : ℤ) (n : ℕ) : ℚ :=
  unitLower (mantissa q k) n +
    (k : ℚ) * (if 0 ≤ k then logTwoLower n else logTwoUpper n)

def upper (q : ℚ) (k : ℤ) (n : ℕ) : ℚ :=
  unitUpper (mantissa q k) n +
    (k : ℚ) * (if 0 ≤ k then logTwoUpper n else logTwoLower n)

theorem log_eq_reduced (q : ℚ) (k : ℤ) (hq : 0 < q) :
    Real.log (q : ℝ) = Real.log (mantissa q k : ℝ) + (k : ℝ)*Real.log 2 := by
  have hqR : (0 : ℝ) < q := by exact_mod_cast hq
  have hp : (0 : ℝ) < (2 : ℝ)^k := zpow_pos (by norm_num) k
  simp only [mantissa, Rat.cast_div, Rat.cast_zpow, Rat.cast_ofNat,
    Real.log_div hqR.ne' hp.ne', Real.log_zpow]
  ring

/-- Soundness needs positivity and a rational range-reduction proof, but no
assumed logarithmic bounds. It holds for every truncation length, including zero. -/
theorem sound (q : ℚ) (k : ℤ) (n : ℕ) (hq : 0 < q)
    (hscale : 1 ≤ mantissa q k ∧ mantissa q k ≤ 2) :
    (lower q k n : ℝ) ≤ Real.log (q : ℝ) ∧
      Real.log (q : ℝ) ≤ (upper q k n : ℝ) := by
  have hy := unit_sound (mantissa q k) n hscale
  have htwo := logTwo_sound n
  rw [log_eq_reduced q k hq]
  unfold lower upper
  by_cases hk : 0 ≤ k
  · simp only [ite_eq_left hk]
    push_cast
    have hkR : (0 : ℝ) ≤ k := by exact_mod_cast hk
    exact ⟨add_le_add hy.1 (mul_le_mul_of_nonneg_left htwo.1 hkR),
      add_le_add hy.2 (mul_le_mul_of_nonneg_left htwo.2 hkR)⟩
  · simp only [ite_eq_right hk]
    push_cast
    have hkR : (k : ℝ) ≤ 0 := by exact_mod_cast (le_of_not_ge hk)
    exact ⟨add_le_add hy.1 (mul_le_mul_of_nonpos_left htwo.2 hkR),
      add_le_add hy.2 (mul_le_mul_of_nonpos_left htwo.1 hkR)⟩

theorem lower_le_log (q : ℚ) (k : ℤ) (n : ℕ) (hq : 0 < q)
    (hscale : 1 ≤ mantissa q k ∧ mantissa q k ≤ 2) :
    (lower q k n : ℝ) ≤ Real.log (q : ℝ) :=
  (sound q k n hq hscale).1

theorem log_le_upper (q : ℚ) (k : ℤ) (n : ℕ) (hq : 0 < q)
    (hscale : 1 ≤ mantissa q k ∧ mantissa q k ≤ 2) :
    Real.log (q : ℝ) ≤ (upper q k n : ℝ) :=
  (sound q k n hq hscale).2

/-- Transfer to small rounded witnesses; only the comparisons are rational. -/
theorem of_bounds (q : ℚ) (k : ℤ) (n : ℕ) (lo hi : ℚ) (hq : 0 < q)
    (hscale : 1 ≤ mantissa q k ∧ mantissa q k ≤ 2)
    (hlo : lo ≤ lower q k n) (hhi : upper q k n ≤ hi) :
    (lo : ℝ) ≤ Real.log (q : ℝ) ∧ Real.log (q : ℝ) ≤ (hi : ℝ) := by
  have h := sound q k n hq hscale
  have hloR : (lo : ℝ) ≤ lower q k n := by exact_mod_cast hlo
  have hhiR : (upper q k n : ℝ) ≤ hi := by exact_mod_cast hhi
  exact ⟨hloR.trans h.1, h.2.trans hhiR⟩

/-- A fully rational certificate predicate, suitable for kernel `decide`.
Rounded output witnesses avoid exporting the series' large denominators. -/
def check (q : ℚ) (k : ℤ) (n : ℕ) (lo hi : ℚ) : Bool :=
  decide (0 < q ∧ 1 ≤ mantissa q k ∧ mantissa q k ≤ 2 ∧
    lo ≤ lower q k n ∧ upper q k n ≤ hi)

theorem of_check (q : ℚ) (k : ℤ) (n : ℕ) (lo hi : ℚ)
    (h : check q k n lo hi = true) :
    (lo : ℝ) ≤ Real.log (q : ℝ) ∧ Real.log (q : ℝ) ≤ (hi : ℝ) := by
  unfold check at h
  rcases of_decide_eq_true h with ⟨hq, hl, hu, hlo, hhi⟩
  exact of_bounds q k n lo hi hq ⟨hl, hu⟩ hlo hhi

/-! ## Common-denominator evaluation

Each series term is rounded before addition. Thus evaluating a compact-cell
certificate does not accumulate the exact terms' large common denominators.
Both directed roundings and the remainder rounding are proved in `Q`.
-/

def roundDown (d : ℕ) (a : ℚ) : ℚ := (⌊(d : ℚ)*a⌋ : ℤ) / (d : ℚ)

def roundUp (d : ℕ) (a : ℚ) : ℚ := (⌈(d : ℚ)*a⌉ : ℤ) / (d : ℚ)

theorem roundDown_le (d : ℕ) (hd : 0 < d) (a : ℚ) : roundDown d a ≤ a := by
  have hdQ : (0 : ℚ) < d := by exact_mod_cast hd
  apply (div_le_iff₀ hdQ).mpr
  simpa only [mul_comm] using Int.floor_le ((d : ℚ)*a)

theorem le_roundUp (d : ℕ) (hd : 0 < d) (a : ℚ) : a ≤ roundUp d a := by
  have hdQ : (0 : ℚ) < d := by exact_mod_cast hd
  apply (le_div_iff₀ hdQ).mpr
  simpa only [mul_comm] using Int.le_ceil ((d : ℚ)*a)

def roundedAtanhLower (x : ℚ) (n d : ℕ) : ℚ :=
  2 * ∑ i ∈ range n, roundDown d (x^(2*i+1) / (2*i+1 : ℕ))

def roundedAtanhUpper (x : ℚ) (n d : ℕ) : ℚ :=
  2 * (∑ i ∈ range n, roundUp d (x^(2*i+1) / (2*i+1 : ℕ))) +
    roundUp d (atanhError x n)

theorem roundedAtanh_outer (x : ℚ) (n d : ℕ) (hd : 0 < d) :
    roundedAtanhLower x n d ≤ atanhLower x n ∧
      atanhUpper x n ≤ roundedAtanhUpper x n d := by
  constructor
  · exact mul_le_mul_of_nonneg_left
      (Finset.sum_le_sum (fun _ _ => roundDown_le d hd _)) (by norm_num)
  · exact add_le_add (mul_le_mul_of_nonneg_left
      (Finset.sum_le_sum (fun _ _ => le_roundUp d hd _)) (by norm_num))
      (le_roundUp d hd _)

def roundedUnitLower (y : ℚ) (n d : ℕ) : ℚ := roundedAtanhLower (argument y) n d

def roundedUnitUpper (y : ℚ) (n d : ℕ) : ℚ := roundedAtanhUpper (argument y) n d

def roundedLower (q : ℚ) (k : ℤ) (n d : ℕ) : ℚ :=
  roundedUnitLower (mantissa q k) n d +
    (k : ℚ) * (if 0 ≤ k then roundedUnitLower 2 n d else roundedUnitUpper 2 n d)

def roundedUpper (q : ℚ) (k : ℤ) (n d : ℕ) : ℚ :=
  roundedUnitUpper (mantissa q k) n d +
    (k : ℚ) * (if 0 ≤ k then roundedUnitUpper 2 n d else roundedUnitLower 2 n d)

theorem rounded_outer (q : ℚ) (k : ℤ) (n d : ℕ) (hd : 0 < d) :
    roundedLower q k n d ≤ lower q k n ∧
      upper q k n ≤ roundedUpper q k n d := by
  have hy := roundedAtanh_outer (argument (mantissa q k)) n d hd
  have htwo := roundedAtanh_outer (argument 2) n d hd
  unfold roundedLower roundedUpper lower upper
  by_cases hk : 0 ≤ k
  · simp only [ite_eq_left hk]
    have hkQ : (0 : ℚ) ≤ k := by exact_mod_cast hk
    exact ⟨add_le_add hy.1 (mul_le_mul_of_nonneg_left htwo.1 hkQ),
      add_le_add hy.2 (mul_le_mul_of_nonneg_left htwo.2 hkQ)⟩
  · simp only [ite_eq_right hk]
    have hkQ : (k : ℚ) ≤ 0 := by exact_mod_cast (le_of_not_ge hk)
    exact ⟨add_le_add hy.1 (mul_le_mul_of_nonpos_left htwo.2 hkQ),
      add_le_add hy.2 (mul_le_mul_of_nonpos_left htwo.1 hkQ)⟩

theorem rounded_sound (q : ℚ) (k : ℤ) (n d : ℕ) (hd : 0 < d) (hq : 0 < q)
    (hscale : 1 ≤ mantissa q k ∧ mantissa q k ≤ 2) :
    (roundedLower q k n d : ℝ) ≤ Real.log (q : ℝ) ∧
      Real.log (q : ℝ) ≤ (roundedUpper q k n d : ℝ) := by
  have h := rounded_outer q k n d hd
  exact of_bounds q k n _ _ hq hscale h.1 h.2

def checkRounded (q : ℚ) (k : ℤ) (n d : ℕ) (lo hi : ℚ) : Bool :=
  decide (0 < d ∧ 0 < q ∧ 1 ≤ mantissa q k ∧ mantissa q k ≤ 2 ∧
    lo ≤ roundedLower q k n d ∧ roundedUpper q k n d ≤ hi)

/-- Kernel-checkable rounded certificates include positivity and scale checks. -/
theorem of_checkRounded (q : ℚ) (k : ℤ) (n d : ℕ) (lo hi : ℚ)
    (h : checkRounded q k n d lo hi = true) :
    (lo : ℝ) ≤ Real.log (q : ℝ) ∧ Real.log (q : ℝ) ≤ (hi : ℝ) := by
  unfold checkRounded at h
  rcases of_decide_eq_true h with ⟨hd, hq, hl, hu, hlo, hhi⟩
  have hlog := rounded_sound q k n d hd hq ⟨hl, hu⟩
  have hloR : (lo : ℝ) ≤ roundedLower q k n d := by exact_mod_cast hlo
  have hhiR : (roundedUpper q k n d : ℝ) ≤ hi := by exact_mod_cast hhi
  exact ⟨hloR.trans hlog.1, hlog.2.trans hhiR⟩

end OddZetaMixed.RationalLogBounds
