import OddZetaMixed.H158HighCellsSupport
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-! Nonnegativity and integral semantics for the same uncapped threshold
profiles checked by the high-cell compiler. -/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed.H158HighCells
open Finset MeasureTheory

theorem Strip.excess_nonneg (s : Strip) (nu : ℤ) (tau : ℚ) :
    0 ≤ s.excess nu tau := by
  exact sum_nonneg (fun _ _ => le_max_right _ _)

theorem Cell.thresholdAffine_nonneg {c : Cell} (h : c.Valid)
    {tau x : ℚ} (ht : 0 ≤ tau) (hx : c.lo ≤ x ∧ x ≤ c.hi) :
    0 ≤ (c.thresholdAffine tau).eval x := by
  rw [c.thresholdAffine_eval]
  apply add_nonneg (mul_nonneg (by norm_num) ht)
  apply sum_nonneg
  intro i _
  exact mul_nonneg (div_nonneg (sub_nonneg.mpr ((h.2.2.2.2.1 i).1.sound hx))
    (by norm_num)) ((c.strips i).excess_nonneg c.nu tau)

theorem Selection.cost_nonneg {c : Cell} {s : Selection}
    (hc : c.Valid) (hs : s.Valid c) {x : ℚ} (hx : s.lo ≤ x ∧ x ≤ s.hi) :
    0 ≤ s.cost.eval x := by
  rw [hs.2.2.2.2]
  exact c.thresholdAffine_nonneg hc hs.2.2.2.1 ⟨hs.1.trans hx.1, hx.2.trans hs.2.2.1⟩

theorem Selection.cost_endpoints_nonneg {c : Cell} {s : Selection}
    (hc : c.Valid) (hs : s.Valid c) :
    0 ≤ s.cost.eval s.lo ∧ 0 ≤ s.cost.eval s.hi :=
  ⟨s.cost_nonneg hc hs ⟨le_rfl, hs.2.1.le⟩,
    s.cost_nonneg hc hs ⟨hs.2.1.le, le_rfl⟩⟩

def Affine.realEval (f : Affine) (x : ℝ) : ℝ := (f.a : ℝ)+(f.b : ℝ)*x

theorem Affine.realEval_cast (f : Affine) (x : ℚ) :
    f.realEval (x : ℝ) = (f.eval x : ℝ) := by
  simp [Affine.realEval, Affine.eval]

theorem Affine.real_nonneg {f : Affine} {lo hi : ℚ}
    (h : 0 ≤ f.eval lo ∧ 0 ≤ f.eval hi) {x : ℝ}
    (hx : (lo : ℝ) ≤ x ∧ x ≤ (hi : ℝ)) : 0 ≤ f.realEval x := by
  have hl : 0 ≤ f.realEval (lo : ℝ) := by rw [f.realEval_cast]; exact_mod_cast h.1
  have hr : 0 ≤ f.realEval (hi : ℝ) := by rw [f.realEval_cast]; exact_mod_cast h.2
  unfold Affine.realEval at *
  by_cases hb : 0 ≤ (f.b : ℝ)
  · nlinarith [mul_nonneg hb (sub_nonneg.mpr hx.1)]
  · nlinarith [mul_nonneg (neg_nonneg.mpr (le_of_not_ge hb)) (sub_nonneg.mpr hx.2)]

theorem Affine.continuous_realEval (f : Affine) : Continuous f.realEval := by
  unfold Affine.realEval
  fun_prop

theorem Affine.real_integral (f : Affine) (lo hi : ℚ) :
    (∫ x in (lo : ℝ)..(hi : ℝ), f.realEval x) = (f.integral lo hi : ℝ) := by
  have hi' : IntervalIntegrable (fun x : ℝ => (f.b : ℝ)*x) volume (lo : ℝ) (hi : ℝ) :=
    Continuous.intervalIntegrable (by fun_prop) _ _
  unfold Affine.realEval Affine.integral
  rw [intervalIntegral.integral_add intervalIntegrable_const hi',
    intervalIntegral.integral_const, intervalIntegral.integral_const_mul,
    integral_id]
  push_cast
  ring

def Selection.realPiece (s : Selection) : ℝ → ℝ :=
  (Set.Ioc (s.lo : ℝ) (s.hi : ℝ)).indicator s.cost.realEval

def selectionProfile (ss : List Selection) (x : ℝ) : ℝ :=
  (ss.map (fun s => s.realPiece x)).sum

theorem Selection.realPiece_nonneg (s : Selection)
    (hs : 0 ≤ s.cost.eval s.lo ∧ 0 ≤ s.cost.eval s.hi) (x : ℝ) :
    0 ≤ s.realPiece x := by
  unfold Selection.realPiece
  by_cases hx : x ∈ Set.Ioc (s.lo : ℝ) (s.hi : ℝ)
  · rw [Set.indicator_of_mem hx]
    exact s.cost.real_nonneg hs ⟨hx.1.le, hx.2⟩
  · rw [Set.indicator_of_notMem hx]

theorem selectionProfile_nonneg (ss : List Selection)
    (hs : ∀ s ∈ ss, 0 ≤ s.cost.eval s.lo ∧ 0 ≤ s.cost.eval s.hi) (x : ℝ) :
    0 ≤ selectionProfile ss x := by
  unfold selectionProfile
  exact List.sum_nonneg (by
    intro v hv
    obtain ⟨s, hs', rfl⟩ := List.mem_map.mp hv
    exact s.realPiece_nonneg (hs s hs') x)

theorem selectionProfile_dominates_piece (ss : List Selection)
    (hs : ∀ s ∈ ss, 0 ≤ s.cost.eval s.lo ∧ 0 ≤ s.cost.eval s.hi)
    (s : Selection) (hmem : s ∈ ss) (x : ℝ)
    (hx : (s.lo : ℝ) < x ∧ x ≤ (s.hi : ℝ)) :
    s.cost.realEval x ≤ selectionProfile ss x := by
  have hnonneg : ∀ v ∈ ss.map (fun t => t.realPiece x), (0 : ℝ) ≤ v := by
    intro v hv
    obtain ⟨t, ht, rfl⟩ := List.mem_map.mp hv
    exact t.realPiece_nonneg (hs t ht) x
  have hle := List.single_le_sum hnonneg (s.realPiece x)
    (List.mem_map.mpr ⟨s, hmem, rfl⟩)
  have hx' : x ∈ Set.Ioc (s.lo : ℝ) (s.hi : ℝ) := hx
  calc
    s.cost.realEval x = s.realPiece x := (Set.indicator_of_mem hx' s.cost.realEval).symm
    _ ≤ _ := hle

theorem Selection.realPiece_integrable (s : Selection) : Integrable s.realPiece := by
  apply (integrable_indicator_iff measurableSet_Ioc).mpr
  exact (s.cost.continuous_realEval.intervalIntegrable (s.lo : ℝ) (s.hi : ℝ)).1

theorem Selection.realPiece_integral (s : Selection) (hs : s.lo ≤ s.hi) :
    (∫ x, s.realPiece x) = (s.cost.integral s.lo s.hi : ℝ) := by
  rw [Selection.realPiece, integral_indicator measurableSet_Ioc,
    ← intervalIntegral.integral_of_le (by exact_mod_cast hs)]
  exact s.cost.real_integral s.lo s.hi

theorem selectionProfile_integrable (ss : List Selection) :
    Integrable (selectionProfile ss) := by
  induction ss with
  | nil =>
    change Integrable (fun _ : ℝ => (0 : ℝ))
    exact integrable_zero ℝ ℝ volume
  | cons s ss ih =>
    change Integrable (fun x => s.realPiece x+selectionProfile ss x)
    exact s.realPiece_integrable.add ih

theorem selectionProfile_integral (ss : List Selection)
    (hs : ∀ s ∈ ss, s.lo ≤ s.hi) :
    (∫ x, selectionProfile ss x) =
      ((ss.map (fun s => s.cost.integral s.lo s.hi)).sum : ℚ) := by
  induction ss with
  | nil => simp [selectionProfile]
  | cons s ss ih =>
    have he : selectionProfile (s::ss) = fun x => s.realPiece x+selectionProfile ss x := by
      funext x
      simp [selectionProfile]
    rw [he, integral_add s.realPiece_integrable (selectionProfile_integrable ss),
      s.realPiece_integral (hs s (by simp)), ih (fun t ht => hs t (by simp [ht]))]
    simp

theorem selectionProfile_interval_integral (ss : List Selection) (a b : ℚ)
    (hs : ∀ s ∈ ss, a ≤ s.lo ∧ s.lo ≤ s.hi ∧ s.hi ≤ b) :
    (∫ x in (a : ℝ)..(b : ℝ), selectionProfile ss x) =
      ((ss.map (fun s => s.cost.integral s.lo s.hi)).sum : ℚ) := by
  rw [intervalIntegral.integral_eq_integral_of_support_subset]
  · exact selectionProfile_integral ss (fun s hs' => (hs s hs').2.1)
  · intro x hx
    by_contra hnot
    apply hx
    unfold selectionProfile
    apply List.sum_eq_zero
    intro v hv
    obtain ⟨s, hs', rfl⟩ := List.mem_map.mp hv
    apply Set.indicator_of_notMem
    intro hxs
    apply hnot
    have hl : (a : ℝ) ≤ s.lo := by exact_mod_cast (hs s hs').1
    have hr : (s.hi : ℝ) ≤ b := by exact_mod_cast (hs s hs').2.2
    exact ⟨hl.trans_lt hxs.1, hxs.2.trans hr⟩

theorem selections_cover {ss : List Selection} (hne : ss ≠ [])
    (hc : ss.IsChain (fun a b => a.hi = b.lo)) {x : ℚ}
    (hx : (ss.headD ⟨0, 0, 0, ⟨0, 0⟩⟩).lo < x ∧
      x ≤ (ss.getLastD ⟨0, 0, 0, ⟨0, 0⟩⟩).hi) :
    ∃ s ∈ ss, s.lo < x ∧ x ≤ s.hi := by
  induction ss with
  | nil => exact (hne rfl).elim
  | cons s ss ih =>
    cases ss with
    | nil => exact ⟨s, by simp, by simpa using hx⟩
    | cons t ss =>
      by_cases hxs : x ≤ s.hi
      · exact ⟨s, by simp, by simpa using hx.1, hxs⟩
      · obtain ⟨u, hu, hux⟩ := ih (by simp) (List.isChain_cons_cons.mp hc).2
          ⟨by simpa only [List.headD_cons, ← (List.isChain_cons_cons.mp hc).1] using
            lt_of_not_ge hxs,
           by simpa only [List.getLastD_cons] using hx.2⟩
        exact ⟨u, by simp [hu], hux⟩

end OddZetaMixed.H158HighCells
