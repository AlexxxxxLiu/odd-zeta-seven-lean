import OddZetaMixed.H158HighCellsData
import OddZetaMixed.H158HighCellsProfile
import OddZetaMixed.H158HighCellsAllocation

/-! Public high-band certificate interface. The piecewise function is the
same threshold profile reconstructed from the checked actual floor cells.
Rational geometry walls are exposed for the parent's eventual avoidance
theorem; there is no prime-limit assumption or caller cost bound here. -/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed.H158HighCells.Data
open Finset LocalJetValuation

def profile : ℝ → ℝ := selectionProfile selections

theorem profile_nonneg (x : ℝ) : 0 ≤ profile x :=
  selectionProfile_nonneg selections selections_nonnegative_endpoints x

theorem selection_affine_nonneg (s : Selection) (hs : s ∈ selections) (x : ℝ)
    (hx : (s.lo : ℝ) ≤ x ∧ x ≤ (s.hi : ℝ)) : 0 ≤ s.cost.realEval x :=
  s.cost.real_nonneg (selections_nonnegative_endpoints s hs) hx

theorem profile_integrable : MeasureTheory.Integrable profile :=
  selectionProfile_integrable selections

theorem profile_integral : (∫ x in (26 : ℝ)..57, profile x) =
    (102751231 : ℝ)/203490 := by
  have hi := selectionProfile_interval_integral selections 26 57 (by
    intro s hs
    have hb := selections_bounds s hs
    exact ⟨hb.1, hb.2.1.le, hb.2.2⟩)
  have hi' : (∫ x in (26 : ℝ)..57, profile x) = (integralSum : ℝ) := by
    simpa only [profile, integralSum, Rat.cast_ofNat] using hi
  rw [hi', integralSum_exact]
  norm_num

theorem selections_cover_band {x : ℚ} (hx : 26 < x ∧ x ≤ 57) :
    ∃ s ∈ selections, s.lo < x ∧ x ≤ s.hi := by
  apply selections_cover (ss := selections)
  · intro he
    have hl := selections_length
    rw [he] at hl
    norm_num at hl
  · exact selections_partition.2.2
  · simpa only [selections_partition.1, selections_partition.2.1] using hx

theorem selection_parent (s : Selection) (hs : s ∈ selections) :
    ∃ i : Fin 70, s ∈ (cells i).selections ∧ s.Valid (cells i) := by
  obtain ⟨c, hc, hs⟩ := List.mem_flatMap.mp hs
  obtain ⟨i, rfl⟩ := List.mem_ofFn.mp hc
  exact ⟨i, hs, (cells_valid i).2.2.2.2.2.2.2.2.1 s hs⟩

/-- Selection-level interface for the parent's prime-profile assembly.
Only finite rational x-walls remain excluded; all y-boundaries and central
effects have already been charged, without an allocation-cap assumption. -/
theorem actual_selection_primitive_cost {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n)
    (hhigh : 26*n < p) (hupper : p < 57*n)
    (hwall : ∀ i : Fin 70, (p : ℚ)/n ≠ (cells i).hi)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    ∃ s ∈ selections, s.lo < (p : ℚ)/n ∧ (p : ℚ)/n ≤ s.hi ∧
      (-padicValRat p (h158PrimitiveScalar n) : ℝ) ≤
        (n : ℝ)*s.cost.realEval ((p : ℝ)/n)+11990 := by
  have hnQ : (0 : ℚ) < n := by exact_mod_cast hn
  have hp : 0 < p := (Fact.out : p.Prime).pos
  have hxL : (26 : ℚ) < (p : ℚ)/n := (lt_div_iff₀ hnQ).mpr (by exact_mod_cast hhigh)
  have hxU : (p : ℚ)/n < 57 := (div_lt_iff₀ hnQ).mpr (by exact_mod_cast hupper)
  obtain ⟨s, hs, hx⟩ := selections_cover_band ⟨hxL, hxU.le⟩
  obtain ⟨i, hsi, hsv⟩ := selection_parent s hs
  have hgeom : (cells i).lo < (p : ℚ)/n ∧ (p : ℚ)/n < (cells i).hi :=
    ⟨hsv.1.trans_lt hx.1, lt_of_le_of_ne (hx.2.trans hsv.2.2.1) (hwall i)⟩
  have hp27 : 27 ≤ p := by omega
  have hsq : 158*n+2 < p^2 := by nlinarith [Nat.mul_le_mul_left p hp27]
  have hc := (cells i).actual_primitive_cost_le (cells_valid i) (cells_tailBounds i)
    (cells_boundaryValid i) n hn hhigh hsq hgeom s.tau hsv.2.2.2.1 hdet
  rw [← hsv.2.2.2.2] at hc
  have hcR : (-padicValRat p (h158PrimitiveScalar n) : ℝ) ≤
      (n : ℝ)*(s.cost.eval ((p : ℚ)/n) : ℝ)+11990 := by exact_mod_cast hc
  refine ⟨s, hs, hx.1, hx.2, ?_⟩
  rw [← Affine.realEval_cast] at hcR
  simpa only [Rat.cast_div, Rat.cast_natCast] using hcR

theorem actual_primitive_cost {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n)
    (hhigh : 26*n < p) (hupper : p < 57*n)
    (hwall : ∀ i : Fin 70, (p : ℚ)/n ≠ (cells i).hi)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    (-padicValRat p (h158PrimitiveScalar n) : ℝ) ≤
      (n : ℝ)*profile ((p : ℝ)/n)+11990 := by
  obtain ⟨s, hs, hxL, hxU, hcR⟩ := actual_selection_primitive_cost n hn hhigh hupper hwall hdet
  have hxR : (s.lo : ℝ) < (((p : ℚ)/n : ℚ) : ℝ) ∧
      (((p : ℚ)/n : ℚ) : ℝ) ≤ (s.hi : ℝ) :=
    ⟨Rat.cast_lt.mpr hxL, Rat.cast_le.mpr hxU⟩
  simp only [Rat.cast_div, Rat.cast_natCast] at hxR
  have hle := selectionProfile_dominates_piece selections selections_nonnegative_endpoints s hs
    ((p : ℝ)/n) hxR
  exact hcR.trans (add_le_add (mul_le_mul_of_nonneg_left hle (Nat.cast_nonneg n)) le_rfl)

end OddZetaMixed.H158HighCells.Data
