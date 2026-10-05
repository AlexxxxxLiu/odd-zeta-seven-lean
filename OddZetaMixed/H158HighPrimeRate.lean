import OddZetaMixed.H158HighCellsSupport
import OddZetaMixed.H158AffinePrimeProfile

/-!
# Exact high-prime table integrals and their weighted prime limits

This adapter never changes the selection costs. The actual allocation bound
is supplied separately by the high-cell arithmetic lemmas.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.H158HighCells

open Finset Filter

def Selection.toAffinePrimeCell (s : Selection) : H158AffinePrimeCell :=
  ⟨s.lo,s.hi,s.cost.a,s.cost.b⟩

theorem Selection.toAffinePrimeCell_check (s : Selection)
    (hb : 26 ≤ s.lo ∧ s.lo < s.hi ∧ s.hi ≤ 57)
    (h0 : 0 ≤ s.cost.eval s.lo ∧ 0 ≤ s.cost.eval s.hi) :
    s.toAffinePrimeCell.check := by
  exact ⟨by change 0 < s.lo; linarith [hb.1], hb.2.1.le, hb.2.2, h0⟩

theorem Selection.toAffinePrimeCell_integral (s : Selection) :
    s.toAffinePrimeCell.integral = s.cost.integral s.lo s.hi := by
  unfold toAffinePrimeCell H158AffinePrimeCell.integral Affine.integral
  dsimp
  ring

def highAffineCell (ss : List Selection) (i : Fin ss.length) : H158AffinePrimeCell :=
  (ss.get i).toAffinePrimeCell

theorem highAffineCell_checked (ss : List Selection)
    (hb : ∀ s ∈ ss, 26 ≤ s.lo ∧ s.lo < s.hi ∧ s.hi ≤ 57)
    (h0 : ∀ s ∈ ss, 0 ≤ s.cost.eval s.lo ∧ 0 ≤ s.cost.eval s.hi)
    (i : Fin ss.length) : (highAffineCell ss i).check :=
  (ss.get i).toAffinePrimeCell_check (hb _ (List.get_mem _ _))
    (h0 _ (List.get_mem _ _))

theorem highAffineCell_integral_sum (ss : List Selection) :
    (∑ i : Fin ss.length, (highAffineCell ss i).integral) =
      (ss.map (fun s => s.cost.integral s.lo s.hi)).sum := by
  simp only [highAffineCell, Selection.toAffinePrimeCell_integral]
  rw [← Fin.sum_ofFn]
  congr 1
  simpa only [List.ofFn_get] using
    (List.ofFn_comp' ss.get (fun s : Selection => s.cost.integral s.lo s.hi))

def highMajorant (ss : List Selection) (C : ℝ) (n p : ℕ) : ℝ :=
  h158AffineProfile univ (highAffineCell ss) 1 0 C n p

theorem highMajorant_nonneg (ss : List Selection) (C : ℝ) (hC : 0 ≤ C)
    (hb : ∀ s ∈ ss, 26 ≤ s.lo ∧ s.lo < s.hi ∧ s.hi ≤ 57)
    (h0 : ∀ s ∈ ss, 0 ≤ s.cost.eval s.lo ∧ 0 ≤ s.cost.eval s.hi)
    (n p : ℕ) (hn : 0 < n) : 0 ≤ highMajorant ss C n p := by
  apply h158PiecewisePrimeProfile_nonneg _ _ _ _ _ _ _ _ _ hn (by norm_num) hC
  intro i _
  exact (highAffineCell ss i).weight_nonneg (highAffineCell_checked ss hb h0 i)

theorem highMajorant_ratio_limit (ss : List Selection) (C : ℝ)
    (hb : ∀ s ∈ ss, 26 ≤ s.lo ∧ s.lo < s.hi ∧ s.hi ≤ 57)
    (h0 : ∀ s ∈ ss, 0 ≤ s.cost.eval s.lo ∧ 0 ≤ s.cost.eval s.hi) :
    Tendsto (fun n : ℕ => h158ProfilePrimeSum n (highMajorant ss C n)/(n : ℝ)^2)
      atTop (nhds (((ss.map (fun s => s.cost.integral s.lo s.hi)).sum : ℚ) : ℝ)) := by
  change Tendsto (fun n : ℕ => h158ProfilePrimeSum n
    (h158AffineProfile univ (highAffineCell ss) 1 0 C n)/(n : ℝ)^2) atTop _
  have ht := h158AffineProfile_rate univ (highAffineCell ss) 1 0 C
    (by norm_num) (by norm_num) (fun i _ => highAffineCell_checked ss hb h0 i)
  simpa only [zero_mul, zero_add, highAffineCell_integral_sum] using ht

theorem highMajorant_dominates_selection (ss : List Selection) (C : ℝ)
    (hb : ∀ s ∈ ss, 26 ≤ s.lo ∧ s.lo < s.hi ∧ s.hi ≤ 57)
    (h0 : ∀ s ∈ ss, 0 ≤ s.cost.eval s.lo ∧ 0 ≤ s.cost.eval s.hi)
    (n p : ℕ) (hn : 0 < n) (s : Selection) (hs : s ∈ ss)
    (hl : s.lo < (p : ℚ)/n) (hr : (p : ℚ)/n ≤ s.hi) :
    (n : ℝ)*(s.cost.eval ((p : ℚ)/n) : ℝ)+C ≤ highMajorant ss C n p := by
  obtain ⟨i,hi⟩ := List.mem_iff_get.mp hs
  have hnQ : (0 : ℚ) < n := by exact_mod_cast hn
  have hlQ := (lt_div_iff₀ hnQ).mp hl
  have hrQ := (div_le_iff₀ hnQ).mp hr
  have h := h158PiecewisePrimeProfile_dominates_band univ
    (fun i => (highAffineCell ss i).weight) (fun i => (highAffineCell ss i).left)
    (fun i => (highAffineCell ss i).right) 1 0 C n p hn (by norm_num)
    (fun j _ => (highAffineCell ss j).weight_nonneg (highAffineCell_checked ss hb h0 j))
    i (mem_univ i)
    (by simp only [highAffineCell, hi, Selection.toAffinePrimeCell]; exact_mod_cast hlQ)
    (by simp only [highAffineCell, hi, Selection.toAffinePrimeCell]; exact_mod_cast hrQ)
  change _ ≤ highMajorant ss C n p at h
  simp only [highAffineCell, hi, Selection.toAffinePrimeCell,
    H158AffinePrimeCell.weight] at h
  simp only [Affine.eval, Rat.cast_add, Rat.cast_mul, Rat.cast_div, Rat.cast_natCast]
  convert h using 1
  ring

#print axioms highMajorant_ratio_limit
#print axioms highMajorant_dominates_selection

end OddZetaMixed.H158HighCells
