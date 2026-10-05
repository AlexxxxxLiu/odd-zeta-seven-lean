import OddZetaMixed.H158EndpointRemainder
import Mathlib.Data.Int.Interval

/-!
# Rational finite-step lattice semantics

Intervals are left-open and right-closed. Their area is the exact finite
step-function integral; endpoint values are not discarded from lattice sums.
No disjointness or positivity of the step heights is needed for the error bound.
-/

namespace OddZetaMixed.H158MiddleCells
open Finset
set_option autoImplicit false

structure StepCell where
  left : ℚ
  right : ℚ
  value : ℚ
  deriving DecidableEq, Repr

def StepCell.eval (s : StepCell) (y : ℚ) : ℚ :=
  if s.left < y ∧ y ≤ s.right then s.value else 0

def stepValue (s : List StepCell) (y : ℚ) : ℚ :=
  (s.map (fun t => t.eval y)).sum

def stepIntegral (s : List StepCell) : ℚ :=
  (s.map (fun t => t.value * (t.right-t.left))).sum

def stepEndpointFee (s : List StepCell) : ℚ :=
  (s.map (fun t => |t.value|)).sum

def latticeSum (n p : ℕ) (f : ℚ → ℚ) : ℚ :=
  ∑ c ∈ Ioc (0 : ℤ) (p : ℤ), f ((c : ℚ)/n)

theorem floor_interval_error (n : ℕ) (a b : ℚ) :
    |((⌊(n : ℚ)*b⌋-⌊(n : ℚ)*a⌋ : ℤ) : ℚ) - (n : ℚ)*(b-a)| ≤ 1 := by
  have ha := Int.floor_le ((n : ℚ)*a)
  have ha' := Int.lt_floor_add_one ((n : ℚ)*a)
  have hb := Int.floor_le ((n : ℚ)*b)
  have hb' := Int.lt_floor_add_one ((n : ℚ)*b)
  push_cast
  exact abs_le.mpr ⟨by nlinarith, by nlinarith⟩

theorem latticeSum_cell (n p : ℕ) (hn : 0 < n) (s : StepCell)
    (hl : 0 ≤ s.left) (hlr : s.left ≤ s.right)
    (hr : s.right ≤ (p : ℚ)/n) :
    latticeSum n p s.eval =
      s.value * ((⌊(n : ℚ)*s.right⌋-⌊(n : ℚ)*s.left⌋ : ℤ) : ℚ) := by
  have hnq : (0 : ℚ) < n := by exact_mod_cast hn
  have hfloor0 : (0 : ℤ) ≤ ⌊(n : ℚ)*s.left⌋ :=
    Int.floor_nonneg.mpr (mul_nonneg hnq.le hl)
  have hfloorp : ⌊(n : ℚ)*s.right⌋ ≤ (p : ℤ) := by
    apply Int.floor_le_iff.mpr
    have := (le_div_iff₀ hnq).mp hr
    push_cast
    nlinarith
  have hm : ⌊(n : ℚ)*s.left⌋ ≤ ⌊(n : ℚ)*s.right⌋ :=
    Int.floor_mono (mul_le_mul_of_nonneg_left hlr hnq.le)
  have hmem (c : ℤ) :
      (s.left < (c : ℚ)/n ∧ (c : ℚ)/n ≤ s.right) ↔
        c ∈ Ioc ⌊(n : ℚ)*s.left⌋ ⌊(n : ℚ)*s.right⌋ := by
    simp only [mem_Ioc, Int.floor_lt, Int.le_floor]
    rw [lt_div_iff₀ hnq, div_le_iff₀ hnq]
    constructor <;> intro h <;> constructor <;> nlinarith [h.1, h.2]
  have hsub : Ioc ⌊(n : ℚ)*s.left⌋ ⌊(n : ℚ)*s.right⌋ ⊆
      Ioc (0 : ℤ) (p : ℤ) := by
    intro c hc
    simp only [mem_Ioc] at hc ⊢
    omega
  unfold latticeSum StepCell.eval
  simp_rw [hmem]
  rw [← sum_filter]
  have hfilter : (Ioc (0 : ℤ) (p : ℤ)).filter
      (fun c => c ∈ Ioc ⌊(n : ℚ)*s.left⌋ ⌊(n : ℚ)*s.right⌋) =
      Ioc ⌊(n : ℚ)*s.left⌋ ⌊(n : ℚ)*s.right⌋ :=
    filter_mem_eq_inter.trans (inter_eq_right.mpr hsub)
  rw [hfilter, sum_const, nsmul_eq_mul]
  have hcard := Int.card_Ioc_of_le _ _ hm
  have hcardq : ((Ioc ⌊(n : ℚ)*s.left⌋ ⌊(n : ℚ)*s.right⌋).card : ℚ) =
      ((⌊(n : ℚ)*s.right⌋-⌊(n : ℚ)*s.left⌋ : ℤ) : ℚ) := by
    exact_mod_cast hcard
  rw [hcardq, mul_comm]

theorem latticeSum_cell_error (n p : ℕ) (hn : 0 < n) (s : StepCell)
    (hl : 0 ≤ s.left) (hlr : s.left ≤ s.right)
    (hr : s.right ≤ (p : ℚ)/n) :
    |latticeSum n p s.eval - (n : ℚ)*(s.value*(s.right-s.left))| ≤ |s.value| := by
  rw [latticeSum_cell n p hn s hl hlr hr]
  have he : s.value * ((⌊(n : ℚ)*s.right⌋-⌊(n : ℚ)*s.left⌋ : ℤ) : ℚ) -
      (n : ℚ)*(s.value*(s.right-s.left)) =
      s.value * (((⌊(n : ℚ)*s.right⌋-⌊(n : ℚ)*s.left⌋ : ℤ) : ℚ) -
        (n : ℚ)*(s.right-s.left)) := by ring
  rw [he, abs_mul]
  simpa only [mul_one] using mul_le_mul_of_nonneg_left
    (floor_interval_error n s.left s.right) (abs_nonneg s.value)

/-- A uniform O(1) endpoint charge, independent of the lattice scale n.
The premise only places the step intervals inside the sampling interval. -/
theorem stepProfile_lattice_error_le (n p : ℕ) (hn : 0 < n) (s : List StepCell)
    (hs : ∀ t ∈ s, 0 ≤ t.left ∧ t.left ≤ t.right ∧ t.right ≤ (p : ℚ)/n) :
    |latticeSum n p (stepValue s) - (n : ℚ)*stepIntegral s| ≤ stepEndpointFee s := by
  induction s with
  | nil => simp [latticeSum, stepValue, stepIntegral, stepEndpointFee]
  | cons t s ih =>
    have ht := hs t (by simp)
    have hs' : ∀ u ∈ s, 0 ≤ u.left ∧ u.left ≤ u.right ∧ u.right ≤ (p : ℚ)/n :=
      fun u hu => hs u (by simp [hu])
    have he : latticeSum n p (stepValue (t::s)) - (n : ℚ)*stepIntegral (t::s) =
        (latticeSum n p t.eval-(n : ℚ)*(t.value*(t.right-t.left))) +
        (latticeSum n p (stepValue s)-(n : ℚ)*stepIntegral s) := by
      simp only [latticeSum, stepValue, stepIntegral, List.map_cons, List.sum_cons,
        sum_add_distrib]
      ring
    rw [he]
    exact (abs_add_le _ _).trans (add_le_add
      (latticeSum_cell_error n p hn t ht.1 ht.2.1 ht.2.2) (ih hs'))

def StepChain (a b : ℚ) : List StepCell → Prop
  | [] => a = b
  | t::s => t.left = a ∧ a ≤ t.right ∧ StepChain t.right b s

theorem StepChain.le {a b : ℚ} {s : List StepCell} (h : StepChain a b s) : a ≤ b := by
  induction s generalizing a with
  | nil => exact le_of_eq h
  | cons t s ih => exact h.2.1.trans (ih h.2.2)

theorem StepChain.bounds {a b : ℚ} {s : List StepCell} (h : StepChain a b s) :
    ∀ t ∈ s, a ≤ t.left ∧ t.left ≤ t.right ∧ t.right ≤ b := by
  induction s generalizing a with
  | nil => simp
  | cons u s ih =>
    intro t ht
    rcases List.mem_cons.mp ht with rfl | ht
    · exact ⟨h.1.symm.le, by simpa only [h.1] using h.2.1, h.2.2.le⟩
    · have hb := ih h.2.2 t ht
      exact ⟨h.2.1.trans hb.1, hb.2⟩

theorem stepValue_eq_of_chain {a b : ℚ} {s : List StepCell} (h : StepChain a b s)
    (f : ℚ → ℚ) (hv : ∀ t ∈ s, ∀ y, t.left < y → y ≤ t.right → t.value = f y)
    (y : ℚ) : stepValue s y = if a < y ∧ y ≤ b then f y else 0 := by
  induction s generalizing a with
  | nil => simp only [StepChain] at h; simp [stepValue, h, not_lt_of_ge]
  | cons t s ih =>
    have hi := ih h.2.2 (fun u hu => hv u (by simp [hu]))
    have ht := hv t (by simp)
    have htb := h.2.2.le
    have har : a ≤ t.right := h.2.1
    simp only [stepValue, List.map_cons, List.sum_cons]
    change t.eval y + stepValue s y = _
    rw [hi]
    unfold StepCell.eval
    rw [h.1] at *
    by_cases hay : a < y
    · by_cases hyr : y ≤ t.right
      · rw [if_pos ⟨hay, hyr⟩, if_neg (by grind),
          if_pos ⟨hay, hyr.trans htb⟩, add_zero]
        exact ht y hay hyr
      · rw [if_neg (by grind), zero_add]
        congr 1
        grind
    · rw [if_neg (by grind), if_neg (by grind), if_neg (by grind), add_zero]

/-- The area belongs to the supplied function itself whenever the cells
are a checked chain of exact constant pieces. -/
theorem function_lattice_error_le (n p : ℕ) (hn : 0 < n) (s : List StepCell)
    (hchain : StepChain 0 ((p : ℚ)/n) s) (f : ℚ → ℚ)
    (hv : ∀ t ∈ s, ∀ y, t.left < y → y ≤ t.right → t.value = f y) :
    |latticeSum n p f-(n : ℚ)*stepIntegral s| ≤ stepEndpointFee s := by
  have hnq : (0 : ℚ) < n := by exact_mod_cast hn
  have he : latticeSum n p f = latticeSum n p (stepValue s) := by
    apply sum_congr rfl
    intro c hc
    have hc' := mem_Ioc.mp hc
    rw [stepValue_eq_of_chain hchain f hv]
    have hpos : (0 : ℚ) < (c : ℚ)/n := div_pos (by exact_mod_cast hc'.1) hnq
    have hle : (c : ℚ)/n ≤ (p : ℚ)/n :=
      div_le_div_of_nonneg_right (by exact_mod_cast hc'.2) hnq.le
    rw [if_pos ⟨hpos, hle⟩]
  rw [he]
  exact stepProfile_lattice_error_le n p hn s (hchain.bounds)

end OddZetaMixed.H158MiddleCells
