import OddZetaMixed.H158HighCells
import OddZetaMixed.H158HighCellsGeometry
import OddZetaMixed.H158HighCellsExceptions

/-! Finite all-allocation assembly for actual high cells. The explicit
11990 correction allows one lattice point per strip and retains every
endpoint/central orbit. No rank capacity or actual-cost premise is used. -/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed.H158HighCells
open Finset LocalJetValuation

def Cell.residueExcess (c : Cell) (n p : ℕ) (tau : ℚ) (r : Fin p) : ℚ :=
  ∑ i, if r ∈ stripResidues (c.strips i) n p then (c.strips i).excess c.nu tau else 0

theorem Cell.residueExcess_nonneg (c : Cell) (n p : ℕ) (tau : ℚ) (r : Fin p) :
    0 ≤ c.residueExcess n p tau r := by
  apply sum_nonneg
  intro i hi
  split_ifs
  · exact sum_nonneg (fun _ _ => le_max_right _ _)
  · exact le_rfl

theorem Cell.excess_le_residueExcess (c : Cell) (n p : ℕ) (tau : ℚ) (r : Fin p)
    (i : Fin 44) (hi : r ∈ stripResidues (c.strips i) n p) :
    (c.strips i).excess c.nu tau ≤ c.residueExcess n p tau r := by
  have hs := single_le_sum (s := univ)
    (f := fun j : Fin 44 => if r ∈ stripResidues (c.strips j) n p then
      (c.strips j).excess c.nu tau else 0) (fun j hj => by
        split_ifs
        · exact sum_nonneg (fun _ _ => le_max_right _ _)
        · exact le_rfl) (mem_univ i)
  simpa only [residueExcess, ite_eq_left hi] using hs

theorem Cell.residueExcess_sum_le {c : Cell} (h : c.Valid) (htail : c.TailBounds)
    (n p : ℕ) (hn : 0 < n) (hp : 0 < p) (tau : ℚ) (ht : 0 ≤ tau)
    (hx : c.lo ≤ (p : ℚ)/n ∧ (p : ℚ)/n ≤ c.hi) :
    (∑ r, c.residueExcess n p tau r) ≤
      (n : ℚ)*(∑ i, ((c.strips i).right.eval ((p : ℚ)/n)-
        (c.strips i).left.eval ((p : ℚ)/n))*(c.strips i).excess c.nu tau)+14080 := by
  have hsum : (∑ r, c.residueExcess n p tau r) =
      ∑ i, ((stripResidues (c.strips i) n p).card : ℚ)*(c.strips i).excess c.nu tau := by
    unfold residueExcess
    rw [sum_comm]
    apply sum_congr rfl
    intro i hi
    rw [← sum_filter]
    simp only [filter_mem_eq_inter, univ_inter, sum_const, nsmul_eq_mul]
  rw [hsum]
  calc
    _ ≤ ∑ i, ((n : ℚ)*((c.strips i).right.eval ((p : ℚ)/n)-
        (c.strips i).left.eval ((p : ℚ)/n))+1)*(c.strips i).excess c.nu tau := by
      apply sum_le_sum
      intro i hi
      exact mul_le_mul_of_nonneg_right
        (stripResidues_card_le (c.strips i) n p hn hp ((h.2.2.2.2.1 i).1.sound hx))
        (sum_nonneg (fun _ _ => le_max_right _ _))
    _ = (n : ℚ)*(∑ i, ((c.strips i).right.eval ((p : ℚ)/n)-
        (c.strips i).left.eval ((p : ℚ)/n))*(c.strips i).excess c.nu tau)+
        ∑ i, (c.strips i).excess c.nu tau := by
      rw [mul_sum, ← sum_add_distrib]
      apply sum_congr rfl
      intro i hi
      ring
    _ ≤ _ := by
      apply add_le_add le_rfl
      calc
        _ ≤ ∑ _i : Fin 44, (320 : ℚ) := sum_le_sum (fun i _ => c.excess_le_320 htail i tau ht)
        _ = _ := by norm_num

theorem pair_sum_identity {p : ℕ} [Fact p.Prime] (n : ℕ) (hp : 0 < p) (hp2 : p ≠ 2)
    (f : Fin p → ℚ) : (∑ r, f r) =
      (∑ r : H158PairClass n p hp, (f r.val+f (h158ReflectionClass n p hp r.val)))+
        f (h158CentralClass n p hp) := by
  classical
  rw [sum_involution_orbits (h158ReflectionClass n p hp)
    (h158ReflectionClass_involutive n p hp)]
  simp only [h158ReflectionClass_fixed_iff n hp hp2, sum_filter,
    sum_ite_eq', mem_univ, ite_true]
  rw [← sum_filter]
  congr 1
  exact Finset.sum_subtype (univ.filter (fun r => r < h158ReflectionClass n p hp r))
    (p := fun r => r < h158ReflectionClass n p hp r) (F := inferInstance)
    (fun r => by simp) (fun r => f r+f (h158ReflectionClass n p hp r))

theorem Cell.actual_pair_residual_le {c : Cell} (h : c.Valid) (htail : c.TailBounds)
    (hb : c.BoundaryValid) {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hsq : 158*n+2 < p^2) (hx : c.lo < (p : ℚ)/n ∧ (p : ℚ)/n < c.hi)
    (tau : ℚ) (ht : 0 ≤ tau) (r : H158PairClass n p hp)
    (hne : ¬h158HybridExceptionalOrbit n p hp (some r)) (q : ℕ) :
    -((h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) (some r)).minorFloor q : ℚ)-
      (q : ℚ)*tau ≤ (c.residueExcess n p tau r.val+
        c.residueExcess n p tau (h158ReflectionClass n p hp r.val))/2 := by
  have hone (u : Fin p) (hu : u = r.val ∨ u = h158ReflectionClass n p hp r.val) :
      -((h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) (some r)).minorFloor q : ℚ)-
        (q : ℚ)*tau ≤ c.residueExcess n p tau u := by
    have hnot : u ∉ h158HybridExceptionalClasses n p hp := by
      intro he
      apply hne
      rcases hu with hu | hu
      · exact Or.inl (hu ▸ he)
      · exact Or.inr (hu ▸ he)
    obtain ⟨i, hi⟩ := c.locate_nonexceptional h hb n p hn hp u hnot
    have hku : h158ResidueClass p hp (shiftedAnchor p u) = r.val ∨
        h158ResidueClass p hp (shiftedAnchor p u) = h158ReflectionClass n p hp r.val := by
      rwa [shiftedAnchor_residue p hp u]
    have hf := c.actual_hybrid_minorFloor_sides h i n (shiftedAnchor p u) hn hp r hku hsq hx hi hne q
    have hfQ : (((c.strips i).profile c.nu).minorFloor q : ℚ) ≤
        ((h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) (some r)).minorFloor q : ℚ) :=
      by exact_mod_cast hf
    have hbnd := c.profile_allocation_bound htail i q tau ht
    have he := c.excess_le_residueExcess n p tau u i (mem_filter.mpr ⟨mem_univ _, hi⟩)
    linarith
  have hl := hone r.val (Or.inl rfl)
  have hr := hone (h158ReflectionClass n p hp r.val) (Or.inr rfl)
  linarith

theorem Cell.actual_allocation_cost_le {c : Cell} (h : c.Valid) (htail : c.TailBounds)
    (hb : c.BoundaryValid) {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hp2 : p ≠ 2) (hsq : 158*n+2 < p^2)
    (hx : c.lo < (p : ℚ)/n ∧ (p : ℚ)/n < c.hi)
    (tau : ℚ) (ht : 0 ≤ tau) (k : H158OrbitClass n p hp → ℕ)
    (hk : (∑ r, k r) = 2*n) :
    -((∑ r, (h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) r).minorFloor (k r)) : ℚ) ≤
      (n : ℚ)*(c.thresholdAffine tau).eval ((p : ℚ)/n)+11990 := by
  classical
  let F (r : H158OrbitClass n p hp) : ℚ :=
    -((h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) r).minorFloor (k r) : ℚ)-
      (k r : ℚ)*tau
  let E := c.residueExcess n p tau
  have hE (r : Fin p) : 0 ≤ E r := c.residueExcess_nonneg n p tau r
  have hex : (∑ r, if h158HybridExceptionalOrbit n p hp r then F r else 0) ≤ 4950 := by
    rw [← sum_filter]
    calc
      _ ≤ ∑ r ∈ univ.filter (h158HybridExceptionalOrbit n p hp),
          (-((h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) r).minorFloor (k r) : ℚ)) := by
        apply sum_le_sum
        intro r hr
        dsimp [F]
        exact sub_le_self _ (mul_nonneg (by positivity) ht)
      _ ≤ 4950 := by
        have he := exceptional_allocation_cost_le_4950 n hn hp hsq k
        exact_mod_cast he
  have hreg : (∑ r, if h158HybridExceptionalOrbit n p hp r then 0 else F r) ≤
      (∑ r : Fin p, E r)/2 := by
    rw [Fintype.sum_option, ite_eq_left (show h158HybridExceptionalOrbit n p hp none from trivial),
      zero_add]
    have hle : (∑ r : H158PairClass n p hp,
        if h158HybridExceptionalOrbit n p hp (some r) then 0 else F (some r)) ≤
        ∑ r : H158PairClass n p hp, (E r.val+E (h158ReflectionClass n p hp r.val))/2 := by
      apply sum_le_sum
      intro r hr
      by_cases he : h158HybridExceptionalOrbit n p hp (some r)
      · rw [ite_eq_left he]
        exact div_nonneg (add_nonneg (hE _) (hE _)) (by norm_num)
      · rw [ite_eq_right he]
        exact c.actual_pair_residual_le h htail hb n hn hp hsq hx tau ht r he (k (some r))
    apply hle.trans
    rw [← sum_div, pair_sum_identity n hp hp2 E]
    linarith [hE (h158CentralClass n p hp)]
  have hsplit : (∑ r, F r) =
      (∑ r, if h158HybridExceptionalOrbit n p hp r then F r else 0)+
      (∑ r, if h158HybridExceptionalOrbit n p hp r then 0 else F r) := by
    rw [← sum_add_distrib]
    apply sum_congr rfl
    intro r hr
    split_ifs <;> simp
  have hres : (∑ r, F r) ≤ (∑ r : Fin p, E r)/2+4950 := by
    rw [hsplit]
    linarith
  have hrank : (∑ r, (k r : ℚ)) = 2*(n : ℚ) := by exact_mod_cast hk
  have hF : (∑ r, F r) =
      -((∑ r, (h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) r).minorFloor (k r)) : ℚ)-
        2*(n : ℚ)*tau := by
    simp only [F, sum_sub_distrib, sum_neg_distrib, ← sum_mul, hrank, Int.cast_sum]
  have hmass := c.residueExcess_sum_le h htail n p hn hp tau ht ⟨hx.1.le, hx.2.le⟩
  have hprofile := c.thresholdAffine_eval tau ((p : ℚ)/n)
  have hmass' : (∑ r : Fin p, E r) ≤
      2*(n : ℚ)*((c.thresholdAffine tau).eval ((p : ℚ)/n)-2*tau)+14080 := by
    have he : (∑ i, ((c.strips i).right.eval ((p : ℚ)/n)-
        (c.strips i).left.eval ((p : ℚ)/n))*(c.strips i).excess c.nu tau) =
        2*((c.thresholdAffine tau).eval ((p : ℚ)/n)-2*tau) := by
      rw [hprofile, add_sub_cancel_left, mul_sum]
      apply sum_congr rfl
      intro i hi
      ring
    rw [he] at hmass
    dsimp only [E]
    nlinarith only [hmass]
  rw [hF] at hres
  nlinarith

theorem Cell.actual_primitive_cost_le {c : Cell} (h : c.Valid) (htail : c.TailBounds)
    (hb : c.BoundaryValid) {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n)
    (hhigh : 26*n < p) (hsq : 158*n+2 < p^2)
    (hx : c.lo < (p : ℚ)/n ∧ (p : ℚ)/n < c.hi)
    (tau : ℚ) (ht : 0 ≤ tau) (hdet : (h158SevenMatrix n).det ≠ 0) :
    (-padicValRat p (h158PrimitiveScalar n) : ℚ) ≤
      (n : ℚ)*(c.thresholdAffine tau).eval ((p : ℚ)/n)+11990 := by
  let B : ℚ := (n : ℚ)*(c.thresholdAffine tau).eval ((p : ℚ)/n)+11990
  have hp := (Fact.out : p.Prime).pos
  have hfloor := h158_folded_hybrid_det_floor_of_allocation_bound n hn hp (by omega) hsq
    (h158HighHybridChoice n p hp) (-⌊B⌋) (by
      intro k hk _
      have ha := c.actual_allocation_cost_le h htail hb n hn hp (by omega) hsq hx tau ht k hk
      have hi : -(∑ r, (h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) r).minorFloor (k r)) ≤
          ⌊B⌋ := Int.le_floor.mpr (by simpa only [Int.cast_neg, Int.cast_sum, B] using ha)
      omega)
  rw [h158RowFee_zero_of_high n p hhigh, Nat.cast_zero, sub_zero] at hfloor
  have hg := formal_gauss_lower hfloor hdet
  rw [h158PrimitiveScalar_gauss_valuation n hdet p (Fact.out : p.Prime)] at hg
  have hz : -padicValRat p (h158PrimitiveScalar n) ≤ ⌊B⌋ := by omega
  exact (show (-padicValRat p (h158PrimitiveScalar n) : ℚ) ≤ (⌊B⌋ : ℤ) by exact_mod_cast hz).trans
    (Int.floor_le B)

end OddZetaMixed.H158HighCells
