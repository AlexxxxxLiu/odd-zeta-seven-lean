import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Tactic

/-!
# Finite degree-sum bridge for the eight frozen h158 phase ceilings

The endpoint data below are the first eight records of
`outputs/odd_zeta_degree_adaptive_contour_20261005.json`, interpreted by
`scripts/odd_zeta_degree_adaptive_contour_20261005.py` as affine interpolation
on the quarter-length bins. See `SCOPE_ANALYTIC_ROUND155.txt`, Section 5.

This file proves facts about that explicit real function only. In particular,
it does not prove that any analytic phase is below these ceilings, certify
the root sets or phase cells, or establish `H158AnalyticBound`.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset Filter MeasureTheory
open scoped Topology

/-- The actual left endpoint ceilings, in increasing bin order. -/
def h158PhaseCeilingLeft (j : Fin 8) : ℝ :=
  match j.val with
  | 0 => -260611/500
  | 1 => -64751/125
  | 2 => -257333/500
  | 3 => -25563/50
  | 4 => -507811/1000
  | 5 => -50433/100
  | 6 => -62603/125
  | _ => -99459/200

/-- The actual right endpoint ceilings; these are left limits at internal knots. -/
def h158PhaseCeilingRight (j : Fin 8) : ℝ :=
  match j.val with
  | 0 => -518023/1000
  | 1 => -514683/1000
  | 2 => -511277/1000
  | 3 => -126957/250
  | 4 => -252173/500
  | 5 => -500839/1000
  | 6 => -497309/1000
  | _ => -246881/500

/-- Affine interpolation on bin `[j/4, (j+1)/4]`. -/
def h158PhaseCeilingAffine (j : Fin 8) (x : ℝ) : ℝ :=
  h158PhaseCeilingLeft j +
    4 * (h158PhaseCeilingRight j - h158PhaseCeilingLeft j) * (x - (j : ℝ)/4)

/-- The eight-bin ceiling `M`. Strict tests choose the right-hand bin at a knot.
Outside `[0,2]` the first and last affine pieces are continued unchanged. -/
def h158PhaseCeiling (x : ℝ) : ℝ :=
  if x < 1/4 then h158PhaseCeilingAffine 0 x else
  if x < 1/2 then h158PhaseCeilingAffine 1 x else
  if x < 3/4 then h158PhaseCeilingAffine 2 x else
  if x < 1 then h158PhaseCeilingAffine 3 x else
  if x < 5/4 then h158PhaseCeilingAffine 4 x else
  if x < 3/2 then h158PhaseCeilingAffine 5 x else
  if x < 7/4 then h158PhaseCeilingAffine 6 x else
  h158PhaseCeilingAffine 7 x

/-- All eight actual affine slopes are positive. -/
theorem h158PhaseCeiling_slope_pos (j : Fin 8) :
    0 < 4 * (h158PhaseCeilingRight j - h158PhaseCeilingLeft j) := by
  fin_cases j <;> norm_num [h158PhaseCeilingLeft, h158PhaseCeilingRight]

/-- All seven actual jumps are upward. -/
theorem h158PhaseCeiling_jump_pos (j : Fin 7) :
    h158PhaseCeilingRight j.castSucc < h158PhaseCeilingLeft j.succ := by
  fin_cases j <;> norm_num [h158PhaseCeilingLeft, h158PhaseCeilingRight]

set_option maxHeartbeats 1000000 in
/-- Monotonicity follows from the actual rational coefficients, without a
monotonicity hypothesis or a numerical oracle. -/
theorem h158PhaseCeiling_monotone : Monotone h158PhaseCeiling := by
  intro x y hxy
  unfold h158PhaseCeiling
  norm_num [h158PhaseCeilingAffine, h158PhaseCeilingLeft, h158PhaseCeilingRight]
  split_ifs <;> linarith

private theorem continuousWithinAt_right_ite (f g : ℝ → ℝ) (c x : ℝ)
    (hf : ContinuousWithinAt f (Set.Ici x) x)
    (hg : ContinuousWithinAt g (Set.Ici x) x) :
    ContinuousWithinAt (fun y => if y < c then f y else g y) (Set.Ici x) x := by
  by_cases hx : x < c
  · apply hf.congr_of_eventuallyEq
    · filter_upwards [(eventually_lt_nhds hx).filter_mono nhdsWithin_le_nhds] with y hy
      simp [hy]
    · simp [hx]
  · apply hg.congr_of_eventuallyEq
    · filter_upwards [self_mem_nhdsWithin] with y hy
      have hyc : ¬ y < c := by
        have hxy : x ≤ y := hy
        linarith
      simp [hyc]
    · simp [hx]

/-- Right continuity includes all seven jumps and the endpoint `2`. -/
theorem h158PhaseCeiling_rightContinuous (x : ℝ) :
    ContinuousWithinAt h158PhaseCeiling (Set.Ici x) x := by
  have ha (j : Fin 8) : ContinuousWithinAt (h158PhaseCeilingAffine j) (Set.Ici x) x := by
    unfold h158PhaseCeilingAffine
    fun_prop
  unfold h158PhaseCeiling
  repeat' apply continuousWithinAt_right_ite
  all_goals exact ha _

theorem h158PhaseCeiling_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable h158PhaseCeiling volume a b :=
  h158PhaseCeiling_monotone.intervalIntegrable

/-- The half-open bins select precisely the corresponding affine piece. -/
theorem h158PhaseCeiling_eq_affine (j : Fin 8) {x : ℝ}
    (hx : x ∈ Set.Ico ((j : ℝ)/4) (((j : ℝ)+1)/4)) :
    h158PhaseCeiling x = h158PhaseCeilingAffine j x := by
  rcases hx with ⟨hl, hu⟩
  fin_cases j <;> norm_num at hl hu <;>
    unfold h158PhaseCeiling <;>
    split_ifs <;> first | rfl | linarith

/-- In particular, every internal knot takes the new bin's left value. -/
theorem h158PhaseCeiling_at_left (j : Fin 8) :
    h158PhaseCeiling ((j : ℝ)/4) = h158PhaseCeilingLeft j := by
  rw [h158PhaseCeiling_eq_affine j ⟨le_rfl, by linarith⟩]
  simp [h158PhaseCeilingAffine]

@[simp] theorem h158PhaseCeiling_zero : h158PhaseCeiling 0 = -260611/500 := by
  norm_num [h158PhaseCeiling, h158PhaseCeilingAffine,
    h158PhaseCeilingLeft, h158PhaseCeilingRight]

@[simp] theorem h158PhaseCeiling_two : h158PhaseCeiling 2 = -246881/500 := by
  norm_num [h158PhaseCeiling, h158PhaseCeilingAffine,
    h158PhaseCeilingLeft, h158PhaseCeilingRight]

/-- Exact endpoint increment (the variation of this monotone ceiling on `[0,2]`). -/
theorem h158PhaseCeiling_endpoint_increment :
    h158PhaseCeiling 2 - h158PhaseCeiling 0 = 1373/50 := by
  norm_num

/-- Each bin has its exact trapezoidal area. The upper endpoint can jump;
agreement on the open interval is enough for equality of the integrals. -/
theorem h158PhaseCeiling_integral_bin (j : Fin 8) :
    (∫ x in (j : ℝ)/4..((j : ℝ)+1)/4, h158PhaseCeiling x) =
      (h158PhaseCeilingLeft j + h158PhaseCeilingRight j)/8 := by
  have heq : (∫ x in (j : ℝ)/4..((j : ℝ)+1)/4, h158PhaseCeiling x) =
      ∫ x in (j : ℝ)/4..((j : ℝ)+1)/4, h158PhaseCeilingAffine j x := by
    apply intervalIntegral.integral_congr_Ioo_of_le (by linarith)
    intro x hx
    exact h158PhaseCeiling_eq_affine j ⟨hx.1.le, hx.2⟩
  rw [heq]
  unfold h158PhaseCeilingAffine
  rw [intervalIntegral.integral_add intervalIntegrable_const
    (by apply Continuous.intervalIntegrable; fun_prop)]
  rw [intervalIntegral.integral_const_mul,
    intervalIntegral.integral_sub (f := fun x : ℝ => x) (g := fun _ => (j : ℝ)/4)
      (continuous_id.intervalIntegrable _ _) intervalIntegrable_const]
  simp only [intervalIntegral.integral_const, integral_id, smul_eq_mul]
  ring

/-- The exact integral is proved from the eight rational bin areas, not assumed. -/
theorem h158PhaseCeiling_integral :
    (∫ x in (0 : ℝ)..2, h158PhaseCeiling x) = -8123483/8000 := by
  have hsum := intervalIntegral.sum_integral_adjacent_intervals
    (a := fun j : ℕ => (j : ℝ)/4) (n := 8)
    (fun _ _ => h158PhaseCeiling_intervalIntegrable _ _)
  norm_num only [Nat.cast_zero, zero_div, Nat.cast_ofNat] at hsum
  rw [← hsum]
  rw [← Fin.sum_univ_eq_sum_range]
  simp only [Nat.cast_add, Nat.cast_one]
  simp_rw [h158PhaseCeiling_integral_bin]
  norm_num [Fin.sum_univ_succ, h158PhaseCeilingLeft, h158PhaseCeilingRight]

/-- The grouped degree parameter `8 floor(i/8)/n`; the floor is natural division. -/
def h158PhaseCeilingTheta (n i : ℕ) : ℝ := 8 * (i/8 : ℕ) / (n : ℝ)

theorem h158PhaseCeilingTheta_le (n i : ℕ) :
    h158PhaseCeilingTheta n i ≤ (i : ℝ)/(n : ℝ) := by
  apply div_le_div_of_nonneg_right _ (Nat.cast_nonneg n)
  have h : 8 * (i/8) ≤ i := by omega
  exact_mod_cast h

/-- Every parameter used in the finite degree sum lies in the eight-bin domain. -/
theorem h158PhaseCeilingTheta_mem (n i : ℕ) (hn : 0 < n) (hi : i < 2*n) :
    h158PhaseCeilingTheta n i ∈ Set.Ico (0 : ℝ) 2 := by
  have hnR : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  constructor
  · unfold h158PhaseCeilingTheta
    positivity
  · apply lt_of_le_of_lt (h158PhaseCeilingTheta_le n i)
    apply (div_lt_iff₀ hnR).mpr
    exact_mod_cast hi

/-- Cellwise integral comparison, before summing over any growing degree range. -/
theorem h158PhaseCeiling_cell_le (n i : ℕ) (hn : 0 < n) :
    h158PhaseCeiling (h158PhaseCeilingTheta n i)/(n : ℝ) ≤
      ∫ x in (i : ℝ)/(n : ℝ)..((i+1 : ℕ) : ℝ)/(n : ℝ), h158PhaseCeiling x := by
  have hnR : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  have hi : (i : ℝ)/(n : ℝ) ≤ ((i+1 : ℕ) : ℝ)/(n : ℝ) := by
    apply div_le_div_of_nonneg_right _ hnR.le
    exact_mod_cast Nat.le_succ i
  have h := intervalIntegral.integral_mono_on hi
    (intervalIntegrable_const (c := h158PhaseCeiling (h158PhaseCeilingTheta n i)))
    (h158PhaseCeiling_intervalIntegrable _ _)
    (fun x hx => h158PhaseCeiling_monotone ((h158PhaseCeilingTheta_le n i).trans hx.1))
  rw [intervalIntegral.integral_const] at h
  convert h using 1
  simp only [Nat.cast_add, Nat.cast_one, smul_eq_mul]
  field_simp
  ring

/-- Finite degree-sum bound for every positive natural `n`. No analytic phase
bound, asymptotic interchange, integral assumption, or numerical oracle is used. -/
theorem h158PhaseCeiling_degree_sum_le (n : ℕ) (hn : 0 < n) :
    (∑ i ∈ range (2*n), h158PhaseCeiling (8 * (i/8 : ℕ) / (n : ℝ))) ≤
      -8123483 * (n : ℝ)/8000 := by
  have hnR : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  have h := Finset.sum_le_sum (s := range (2*n))
    (fun i _ => h158PhaseCeiling_cell_le n i hn)
  rw [← Finset.sum_div] at h
  have hsum := intervalIntegral.sum_integral_adjacent_intervals
    (a := fun j : ℕ => (j : ℝ)/(n : ℝ)) (n := 2*n)
    (fun _ _ => h158PhaseCeiling_intervalIntegrable _ _)
  have hend : ((2*n : ℕ) : ℝ)/(n : ℝ) = 2 := by
    push_cast
    field_simp
  simp only [Nat.cast_zero, zero_div, hend] at hsum
  rw [hsum, h158PhaseCeiling_integral] at h
  have hmul := (div_le_iff₀ hnR).mp h
  dsimp only [h158PhaseCeilingTheta] at hmul
  nlinarith

/-- The same finite bound with the degree range indexed by `Fin (2*n)`. -/
theorem h158PhaseCeiling_degree_sum_fin_le (n : ℕ) (hn : 0 < n) :
    (∑ i : Fin (2*n), h158PhaseCeiling (8 * (i.val/8 : ℕ) / (n : ℝ))) ≤
      -8123483 * (n : ℝ)/8000 := by
  rw [Fin.sum_univ_eq_sum_range
    (fun i : ℕ => h158PhaseCeiling (8 * (i/8 : ℕ) / (n : ℝ))) (2*n)]
  exact h158PhaseCeiling_degree_sum_le n hn

#print axioms h158PhaseCeiling_slope_pos
#print axioms h158PhaseCeiling_jump_pos
#print axioms h158PhaseCeiling_monotone
#print axioms h158PhaseCeiling_rightContinuous
#print axioms h158PhaseCeiling_at_left
#print axioms h158PhaseCeiling_integral
#print axioms h158PhaseCeilingTheta_mem
#print axioms h158PhaseCeiling_degree_sum_le
#print axioms h158PhaseCeiling_degree_sum_fin_le

end OddZetaMixed
