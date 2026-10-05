import Mathlib.Analysis.SpecialFunctions.Complex.Arctan
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Tactic

/-! Exact rational enclosures for nonnegative real arctangents. -/

namespace OddZetaMixed.RationalArctanBounds

open Finset

def series (q : ℚ) (m : ℕ) : ℚ :=
  ∑ i ∈ range m, (-1 : ℚ)^i * q^(2*i+1)/(2*i+1)

def smallLower (q : ℚ) (n : ℕ) : ℚ := series q (2*n)
def smallUpper (q : ℚ) (n : ℕ) : ℚ := series q (2*n+1)

private theorem series_cast (q : ℚ) (m : ℕ) :
    (series q m : ℝ) = ∑ i ∈ range m, (-1 : ℝ)^i * (q : ℝ)^(2*i+1)/(2*i+1) := by
  simp [series]

theorem small_sound (q : ℚ) (n : ℕ) (hq : 0 ≤ q) (hq1 : q < 1) :
    (smallLower q n : ℝ) ≤ Real.arctan (q : ℝ) ∧
      Real.arctan (q : ℝ) ≤ (smallUpper q n : ℝ) := by
  have hx : (0 : ℝ) ≤ q := by exact_mod_cast hq
  have hx1 : (q : ℝ) < 1 := by exact_mod_cast hq1
  have hsum := (Real.hasSum_arctan (x := (q : ℝ)) (by
    rw [Real.norm_eq_abs, abs_of_nonneg hx]
    exact hx1)).tendsto_sum_nat
  have hm : Antitone (fun i : ℕ => (q : ℝ)^(2*i+1)/(2*i+1)) := by
    intro i j hij
    apply div_le_div₀ (by positivity)
      (pow_le_pow_of_le_one hx hx1.le (by omega)) (by positivity)
    exact_mod_cast (show 2*i+1 ≤ 2*j+1 by omega)
  have hl := hm.alternating_series_le_tendsto (by simpa [div_eq_mul_inv, mul_assoc] using hsum) n
  have hu := hm.tendsto_le_alternating_series (by simpa [div_eq_mul_inv, mul_assoc] using hsum) n
  simpa [smallLower, smallUpper, series_cast, div_eq_mul_inv, mul_assoc] using And.intro hl hu

def piLower : ℚ := 314159265358979323846/100000000000000000000
def piUpper : ℚ := 314159265358979323847/100000000000000000000

theorem pi_sound : (piLower : ℝ) ≤ Real.pi ∧ Real.pi ≤ (piUpper : ℝ) := by
  constructor
  · norm_num [piLower]
    linarith [Real.pi_gt_d20]
  · norm_num [piUpper]
    linarith [Real.pi_lt_d20]

def lower (q : ℚ) (n : ℕ) : ℚ :=
  if q ≤ 1/2 then smallLower q n
  else if q ≤ 1 then piLower/4 - smallUpper ((1-q)/(1+q)) n
  else if q ≤ 2 then piLower/4 + smallLower ((q-1)/(q+1)) n
  else piLower/2 - smallUpper (1/q) n

def upper (q : ℚ) (n : ℕ) : ℚ :=
  if q ≤ 1/2 then smallUpper q n
  else if q ≤ 1 then piUpper/4 - smallLower ((1-q)/(1+q)) n
  else if q ≤ 2 then piUpper/4 + smallUpper ((q-1)/(q+1)) n
  else piUpper/2 - smallLower (1/q) n

private theorem arctan_reduction_below {x : ℝ} (hx : 0 ≤ x) (_hx1 : x ≤ 1) :
    Real.arctan x + Real.arctan ((1-x)/(1+x)) = Real.pi/4 := by
  have hp : 0 < 1+x := by linarith
  have hadd := Real.arctan_add (x := x) (y := (1-x)/(1+x)) (by
    rw [← mul_div_assoc]
    apply (div_lt_iff₀ hp).2
    nlinarith [sq_nonneg x])
  have heq : (x+(1-x)/(1+x))/(1-x*((1-x)/(1+x))) = 1 := by
    have hsq : 1+x^2 ≠ 0 := ne_of_gt (by positivity)
    field_simp
    ring_nf
    field_simp
    ring
  rw [heq, Real.arctan_one] at hadd
  exact hadd

private theorem arctan_reduction_above {x : ℝ} (hx : 1 ≤ x) :
    Real.pi/4 + Real.arctan ((x-1)/(x+1)) = Real.arctan x := by
  have hp : 0 < x+1 := by linarith
  have hadd := Real.arctan_add (x := (1 : ℝ)) (y := (x-1)/(x+1)) (by
    rw [one_mul]
    exact (div_lt_one hp).2 (by linarith))
  have heq : (1+(x-1)/(x+1))/(1-1*((x-1)/(x+1))) = x := by
    field_simp
    ring
  rw [heq, Real.arctan_one] at hadd
  exact hadd

theorem sound (q : ℚ) (n : ℕ) (hq : 0 ≤ q) :
    (lower q n : ℝ) ≤ Real.arctan (q : ℝ) ∧
      Real.arctan (q : ℝ) ≤ (upper q n : ℝ) := by
  have hx : (0 : ℝ) ≤ q := by exact_mod_cast hq
  rcases pi_sound with ⟨hpiL, hpiU⟩
  by_cases hhalf : q ≤ 1/2
  · simp only [lower, upper, ite_eq_left hhalf]
    exact small_sound q n hq (by linarith)
  by_cases hone : q ≤ 1
  · have hsmall := small_sound ((1-q)/(1+q)) n (by positivity)
      ((div_lt_one (by linarith : (0 : ℚ) < 1+q)).2 (by linarith))
    have hadd := arctan_reduction_below hx (by exact_mod_cast hone)
    simp only [lower, upper, ite_eq_right hhalf, ite_eq_left hone]
    push_cast at hsmall ⊢
    constructor <;> linarith [hsmall.1, hsmall.2]
  by_cases htwo : q ≤ 2
  · have hq1 : 1 ≤ q := by linarith
    have hsmall := small_sound ((q-1)/(q+1)) n (div_nonneg (by linarith) (by linarith))
      ((div_lt_one (by linarith : (0 : ℚ) < q+1)).2 (by linarith))
    have hadd := arctan_reduction_above (x := (q : ℝ)) (by exact_mod_cast (le_of_not_ge hone))
    simp only [lower, upper, ite_eq_right hhalf, ite_eq_right hone, ite_eq_left htwo]
    push_cast at hsmall ⊢
    constructor <;> linarith [hsmall.1, hsmall.2]
  · have hqpos : (0 : ℚ) < q := by linarith
    have hsmall := small_sound (1/q) n (by positivity)
      ((div_lt_one hqpos).2 (by linarith))
    have hinv := Real.arctan_inv_of_pos (x := (q : ℝ)) (by exact_mod_cast hqpos)
    simp only [lower, upper, ite_eq_right hhalf, ite_eq_right hone, ite_eq_right htwo]
    push_cast at hsmall ⊢
    simp only [one_div] at hsmall ⊢
    constructor <;> linarith [hsmall.1, hsmall.2]

def check (q : ℚ) (n : ℕ) (lo hi : ℚ) : Bool :=
  decide (0 ≤ q ∧ lo ≤ lower q n ∧ upper q n ≤ hi)

theorem of_check (q : ℚ) (n : ℕ) (lo hi : ℚ) (h : check q n lo hi = true) :
    (lo : ℝ) ≤ Real.arctan (q : ℝ) ∧ Real.arctan (q : ℝ) ≤ (hi : ℝ) := by
  have hc : 0 ≤ q ∧ lo ≤ lower q n ∧ upper q n ≤ hi := by simpa [check] using h
  have hreal := sound q n hc.1
  exact ⟨(by exact_mod_cast hc.2.1 : (lo : ℝ) ≤ (lower q n : ℝ)).trans hreal.1,
    hreal.2.trans (by exact_mod_cast hc.2.2)⟩

end OddZetaMixed.RationalArctanBounds
