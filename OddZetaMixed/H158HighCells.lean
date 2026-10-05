import OddZetaMixed.H158HighCellsBounds

/-!
# Actual arithmetic linkage for the reconstructed high cells

The checked strip inequalities construct actual two-sided singleton and
cutoff witnesses. No actual coefficient cost or allocation bound is a
premise. The global lattice and exceptional-orbit budget is a separate step.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed.H158HighCells
open Finset LocalJetValuation

theorem Strip.plateau_witness_sides {lo hi : ℚ} {s : Strip}
    (h : s.Valid lo hi) (hkind : s.kind = 4)
    (n p k : ℕ) (hn : 0 < n) (hp : 0 < p) (r : H158PairClass n p hp)
    (hkr : h158ResidueClass p hp k = r.val ∨
      h158ResidueClass p hp k = h158ReflectionClass n p hp r.val)
    (hx : lo ≤ (p : ℚ)/n ∧ (p : ℚ)/n ≤ hi)
    (hy : s.left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < s.right.eval ((p : ℚ)/n)) :
    Nonempty (H158FoldedSingletonWitness n p hp (some r)) := by
  let x : ℚ := (p : ℚ)/n
  let y : ℚ := ((k : ℚ)-1)/n
  let t : ℚ := y+(s.pole : ℚ)*x
  let aZ : ℤ := (k : ℤ)+s.pole*p
  have hnQ : (0 : ℚ) < n := by exact_mod_cast hn
  have hxmul : x*(n : ℚ) = p := by dsimp [x]; field_simp
  have htmul : t*(n : ℚ) = (aZ : ℚ)-1 := by
    dsimp [t, x, y, aZ]
    push_cast
    field_simp
    ring
  have hs := h.2.2.1
  have hw := s.plateau_cutoffs hs hkind hx hy
  have hs4 : s.singleValid lo hi ∧
      AffineLE lo hi ⟨110, -1⟩ (s.left.add ⟨0, s.pole⟩) ∧
      AffineLE lo hi (s.right.add ⟨0, s.pole⟩) ⟨48, 1⟩ := by
    simpa only [Strip.statusValid, hkind] using hs
  have hcount : s.q 105-s.q 53 = 1 := by
    exact hs4.1.1
  have hL := s.floor_bracket h.2.1 hx hy 53 (by simp [h158HybridEndpoints])
  have hU := s.floor_bracket h.2.1 hx hy 105 (by simp [h158HybridEndpoints])
  have hcountQ : (s.q 105 : ℚ)-(s.q 53 : ℚ) = 1 := by exact_mod_cast hcount
  have htL : 53 < t := by dsimp [t, Strip.pole]; nlinarith [hL.2]
  have htU : t < 105 := by dsimp [t, Strip.pole]; nlinarith [hU.1]
  have haLQ : 53*(n : ℚ)+1 < (aZ : ℚ) := by
    nlinarith [mul_lt_mul_of_pos_right htL hnQ]
  have haUQ : (aZ : ℚ) < 105*(n : ℚ)+1 := by
    nlinarith [mul_lt_mul_of_pos_right htU hnQ]
  have hlQ : (aZ : ℚ) < 53*(n : ℚ)+1+p := by
    nlinarith [mul_lt_mul_of_pos_right hw.2.1 hnQ]
  have hrQ : 105*(n : ℚ)+1 < (aZ : ℚ)+p := by
    nlinarith [mul_lt_mul_of_pos_right hw.1 hnQ]
  have hcQ : (aZ : ℚ) < 48*(n : ℚ)+1+p := by
    nlinarith [mul_lt_mul_of_pos_right hw.2.2.2 hnQ]
  have hc'Q : 110*(n : ℚ)+1 < (aZ : ℚ)+p := by
    nlinarith [mul_lt_mul_of_pos_right hw.2.2.1 hnQ]
  have haL : 53*(n : ℤ)+1 < aZ := by exact_mod_cast haLQ
  have haU : aZ < 105*(n : ℤ)+1 := by exact_mod_cast haUQ
  have hl : aZ < 53*(n : ℤ)+1+p := by exact_mod_cast hlQ
  have hr : 105*(n : ℤ)+1 < aZ+p := by exact_mod_cast hrQ
  have hc : aZ < 48*(n : ℤ)+1+p := by exact_mod_cast hcQ
  have hc' : 110*(n : ℤ)+1 < aZ+p := by exact_mod_cast hc'Q
  let a := aZ.toNat
  have haZ : (a : ℤ) = aZ := Int.toNat_of_nonneg (by omega)
  have hamem : a ∈ h158PoleSet n := (h158PoleSet_mem_iff n a).mpr (by omega)
  have has : H158PoleSingleton p n a := h158_poleSingleton_of_interval p n a (by omega) (by omega)
  have has' : H158PoleSingleton p n (h158ReflectedPole n a) := by
    apply h158_poleSingleton_of_interval
    · unfold h158ReflectedPole; omega
    · unfold h158ReflectedPole; omega
  have hamem' : h158ReflectedPole n a ∈ h158PoleSet n := by
    apply (h158PoleSet_mem_iff n _).mpr
    unfold h158ReflectedPole
    omega
  have har : h158ResidueClass p hp a = h158ResidueClass p hp k := by
    rw [h158ResidueClass_eq_iff]
    apply Nat.modEq_iff_dvd.mpr
    refine ⟨-s.pole, ?_⟩
    rw [haZ]
    dsimp [aZ]
    ring
  have hbr := h158ReflectedPole_residueClass n p a hp hamem
  rcases hkr with hkr | hkr
  · refine ⟨.pair r a (h158ReflectedPole n a) hamem hamem' has has'
      (by omega) (by unfold h158ReflectedPole; omega) (har.trans hkr) ?_⟩
    rw [hbr, har, hkr]
  · refine ⟨.pair r (h158ReflectedPole n a) a hamem' hamem has' has
      (by unfold h158ReflectedPole; omega) (by omega) ?_ (har.trans hkr)⟩
    rw [hbr, har, hkr, h158ReflectionClass_involutive n p hp r.val]

theorem Strip.plateau_witness {lo hi : ℚ} {s : Strip}
    (h : s.Valid lo hi) (hkind : s.kind = 4)
    (n p k : ℕ) (hn : 0 < n) (hp : 0 < p) (r : H158PairClass n p hp)
    (hkr : h158ResidueClass p hp k = r.val)
    (hx : lo ≤ (p : ℚ)/n ∧ (p : ℚ)/n ≤ hi)
    (hy : s.left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < s.right.eval ((p : ℚ)/n)) :
    Nonempty (H158FoldedSingletonWitness n p hp (some r)) :=
  s.plateau_witness_sides h hkind n p k hn hp r (Or.inl hkr) hx hy

theorem Cell.plateau_choice_enabled {c : Cell} (h : c.Valid) (i : Fin 44)
    (hkind : (c.strips i).kind = 4)
    (n p k : ℕ) (hn : 0 < n) (hp : 0 < p) (r : H158PairClass n p hp)
    (hkr : h158ResidueClass p hp k = r.val)
    (hx : c.lo ≤ (p : ℚ)/n ∧ (p : ℚ)/n ≤ c.hi)
    (hy : (c.strips i).left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < (c.strips i).right.eval ((p : ℚ)/n))
    (hne : ¬h158HybridExceptionalOrbit n p hp (some r)) :
    h158HighHybridChoice n p hp (some r) ≠ none := by
  apply (h158HighHybridChoice_enabled_iff n p hp (some r)).mpr
  exact ⟨hne, (c.strips i).plateau_witness (h.2.2.2.2.1 i) hkind n p k hn hp r hkr hx hy⟩

/-- A plateau only improves the generic minor floor, at every order. This
lets generic certificate strips remain conservative even without a reverse
eligibility argument; no marginal-by-marginal comparison is asserted. -/
theorem generic_minorFloor_le_witness (n p : ℕ) (hp : 0 < p)
    (r : H158PairClass n p hp) (w : H158FoldedSingletonWitness n p hp (some r)) (q : ℕ) :
    (h158FoldedGenericProfile n p hp (some r)).minorFloor q ≤ w.profile.minorFloor q := by
  cases w with
  | pair r a b ha hb hs hs' hcut hcut' har hbr =>
    have hda := h158_denominator_count_congr p n a r.val.val
      (residue_class_difference_dvd hp r.val a har)
    have hdb := h158_denominator_count_congr p n b (h158ReflectionClass n p hp r.val).val
      (residue_class_difference_dvd hp _ b hbr)
    have hza := h158_numerator_count_congr p n a r.val.val
      (residue_class_difference_dvd hp r.val a har)
    have hzb := h158_numerator_count_congr p n b (h158ReflectionClass n p hp r.val).val
      (residue_class_difference_dvd hp _ b hbr)
    have hoa := h158_denominator_count_eq p n a ha
    have hob := h158_denominator_count_eq p n b hb
    rw [h158_singleton_cofactor_count_zero p n a hs, zero_add] at hoa
    rw [h158_singleton_cofactor_count_zero p n b hs', zero_add] at hob
    let A : ℤ := min (h158NumeratorCount p n a-(h158PoleOrder n a : ℤ))
      (h158NumeratorCount p n b-(h158PoleOrder n b : ℤ))
    have hbase : -h158FoldedWeight n p hp (some r) = padicValRat p (h158Normalization n)+A-4 := by
      unfold h158FoldedWeight h158ClassCost
      dsimp only
      rw [← hda, ← hdb, ← hza, ← hzb, hoa, hob]
      dsimp [A]
      simp only [max_def, min_def]
      split_ifs <;> omega
    rw [h158FoldedHybrid_generic_minorFloor]
    simp only [H158FoldedSingletonWitness.profile, H158FoldedSingletonWitness.offset,
      FoldedHybrid.JetProfile.minorFloor, h158FoldedSpacing, ite_true, one_mul]
    change -(q : ℤ)*h158FoldedWeight n p hp (some r)+(q : ℤ)*((q : ℤ)-1) ≤
      (q : ℤ)*(padicValRat p (h158Normalization n)+max 0 (A+1+((q : ℤ)-1)))
    have hm := mul_le_mul_of_nonneg_left (le_max_right 0 (A+1+((q : ℤ)-1)))
      (show (0 : ℤ) ≤ q by positivity)
    nlinarith

theorem nonexceptional_not_central (n p k : ℕ) (hp : 0 < p)
    (r : H158PairClass n p hp) (hkr : h158ResidueClass p hp k = r.val)
    (hne : ¬h158HybridExceptionalOrbit n p hp (some r)) :
    ¬(p : ℤ) ∣ 79*(n : ℤ)+1-k := by
  intro hd
  have hm : k % p = (79*n+1) % p := Nat.modEq_iff_dvd.mpr (by
    simpa only [Nat.cast_add, Nat.cast_mul, Nat.cast_one, Nat.cast_ofNat] using hd)
  apply hne
  left
  apply Finset.mem_image.mpr
  refine ⟨79, mem_insert_self _ _, ?_⟩
  rw [← hkr]
  apply Fin.ext
  exact hm.symm

/-- Pointwise linkage to the ACTUAL full-eligible choice, for every order.
The only location hypotheses are the checked cell/strip and exclusion of
the already specified exceptional orbit set. No cost inequality is supplied. -/
theorem Cell.actual_hybrid_minorFloor {c : Cell} (h : c.Valid) (i : Fin 44)
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (r : H158PairClass n p hp) (hkr : h158ResidueClass p hp k = r.val)
    (hsq : 158*n+2 < p^2) (hx : c.lo < (p : ℚ)/n ∧ (p : ℚ)/n < c.hi)
    (hy : (c.strips i).left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < (c.strips i).right.eval ((p : ℚ)/n))
    (hne : ¬h158HybridExceptionalOrbit n p hp (some r)) (q : ℕ) :
    ((c.strips i).profile c.nu).minorFloor q ≤
      (h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) (some r)).minorFloor q := by
  have hcentral := nonexceptional_not_central n p k hp r hkr hne
  cases he : h158HighHybridChoice n p hp (some r) with
  | none =>
    have hkind : (c.strips i).kind ≠ 4 := by
      intro hk
      exact c.plateau_choice_enabled h i hk n p k hn hp r hkr ⟨hx.1.le, hx.2.le⟩ hy hne he
    have hg := c.actual_generic_profile h i n k hn hp r hkr hsq hx hy hcentral hkind
    simp only [h158FoldedHybridProfile, he, hg, le_refl]
  | some w =>
    simp only [h158FoldedHybridProfile, he]
    by_cases hkind : (c.strips i).kind = 4
    · rw [c.actual_pair_witness_profile h i n k hn hp r hkr hsq hx hy hcentral hkind w]
    · rw [← c.actual_generic_profile h i n k hn hp r hkr hsq hx hy hcentral hkind]
      exact generic_minorFloor_le_witness n p hp r w q

/-- The actual selected hybrid floor is bounded at every order by the
compiled uncapped 16-slot threshold. The only arithmetic inputs locate the
residue, exclude the explicit exceptional set, and put x inside its cell. -/
theorem Cell.actual_allocation_threshold {c : Cell} (h : c.Valid)
    (htail : c.TailBounds) (i : Fin 44)
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (r : H158PairClass n p hp) (hkr : h158ResidueClass p hp k = r.val)
    (hsq : 158*n+2 < p^2) (hx : c.lo < (p : ℚ)/n ∧ (p : ℚ)/n < c.hi)
    (hy : (c.strips i).left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < (c.strips i).right.eval ((p : ℚ)/n))
    (hne : ¬h158HybridExceptionalOrbit n p hp (some r))
    (q : ℕ) (tau : ℚ) (ht : 0 ≤ tau) :
    -((h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp)
      (some r)).minorFloor q : ℚ) ≤ (q : ℚ)*tau+(c.strips i).excess c.nu tau := by
  have hf := c.actual_hybrid_minorFloor h i n k hn hp r hkr hsq hx hy hne q
  have hfQ : (((c.strips i).profile c.nu).minorFloor q : ℚ) ≤
      ((h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) (some r)).minorFloor q : ℚ) :=
    by exact_mod_cast hf
  exact (neg_le_neg hfQ).trans (c.profile_allocation_bound htail i q tau ht)

theorem pair_witness_profile_of_counts (n p : ℕ) (hp : 0 < p)
    (r : H158PairClass n p hp) (w : H158FoldedSingletonWitness n p hp (some r))
    (M z nu : ℤ) (hz : h158NumeratorCount p n r.val.val = z)
    (hd : h158DenominatorCount p n r.val.val = M)
    (hnu : padicValRat p (h158Normalization n) = nu) :
    w.profile = ⟨nu, z-M+1, 1, true, by norm_num⟩ := by
  have href := reflected_counts n p hp r.val
  cases w with
  | pair r a b ha hb hs hs' hcut hcut' har hbr =>
    have hda := h158_denominator_count_congr p n a r.val.val
      (residue_class_difference_dvd hp r.val a har)
    have hdb := h158_denominator_count_congr p n b (h158ReflectionClass n p hp r.val).val
      (residue_class_difference_dvd hp _ b hbr)
    have hza := h158_numerator_count_congr p n a r.val.val
      (residue_class_difference_dvd hp r.val a har)
    have hzb := h158_numerator_count_congr p n b (h158ReflectionClass n p hp r.val).val
      (residue_class_difference_dvd hp _ b hbr)
    rw [href.2, hd] at hdb
    rw [href.1, hz] at hzb
    rw [hd] at hda
    rw [hz] at hza
    have hoa := h158_denominator_count_eq p n a ha
    have hob := h158_denominator_count_eq p n b hb
    rw [h158_singleton_cofactor_count_zero p n a hs, zero_add, hda] at hoa
    rw [h158_singleton_cofactor_count_zero p n b hs', zero_add, hdb] at hob
    simp [H158FoldedSingletonWitness.profile, H158FoldedSingletonWitness.offset,
      h158FoldedSpacing, hnu, hza, hzb, ← hoa, ← hob]

/-- Either member of a reflection pair supplies its local certificate.
This is the orientation-independent input for the half-mass allocation sum. -/
theorem Cell.actual_hybrid_minorFloor_sides {c : Cell} (h : c.Valid) (i : Fin 44)
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (r : H158PairClass n p hp)
    (hkr : h158ResidueClass p hp k = r.val ∨
      h158ResidueClass p hp k = h158ReflectionClass n p hp r.val)
    (hsq : 158*n+2 < p^2) (hx : c.lo < (p : ℚ)/n ∧ (p : ℚ)/n < c.hi)
    (hy : (c.strips i).left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < (c.strips i).right.eval ((p : ℚ)/n))
    (hne : ¬h158HybridExceptionalOrbit n p hp (some r)) (q : ℕ) :
    ((c.strips i).profile c.nu).minorFloor q ≤
      (h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) (some r)).minorFloor q := by
  have hnot : h158ResidueClass p hp k ∉ h158HybridExceptionalClasses n p hp := by
    intro he
    apply hne
    rcases hkr with hk | hk
    · exact Or.inl (hk ▸ he)
    · exact Or.inr (hk ▸ he)
  have hcentral : ¬(p : ℤ) ∣ 79*(n : ℤ)+1-k := by
    intro hd
    have hm : k % p = (79*n+1) % p := Nat.modEq_iff_dvd.mpr (by
      simpa only [Nat.cast_add, Nat.cast_mul, Nat.cast_one, Nat.cast_ofNat] using hd)
    apply hnot
    exact mem_image.mpr ⟨79, mem_insert_self _ _, Fin.ext hm.symm⟩
  have hc := c.actual_counts_at_residue h i n p k hn hp (h158ResidueClass p hp k) rfl
    ⟨hx.1.le, hx.2.le⟩ hy hcentral
  have hc' : h158NumeratorCount p n r.val.val = (c.strips i).roots ∧
      h158DenominatorCount p n r.val.val = (c.strips i).multiplicity := by
    rcases hkr with hk | hk
    · simpa only [hk] using hc
    · simpa only [hk, (reflected_counts n p hp r.val).1,
        (reflected_counts n p hp r.val).2] using hc
  have hnu := c.actual_normalization h.2.2.2.1 n hn hsq hx
  have hg (hk : (c.strips i).kind ≠ 4) :
      h158FoldedGenericProfile n p hp (some r) = (c.strips i).profile c.nu := by
    simp [h158FoldedGenericProfile, h158FoldedWeight, h158ClassCost,
      (reflected_counts n p hp r.val).1, (reflected_counts n p hp r.val).2,
      hc'.1, hc'.2, hnu, h158FoldedSpacing, Strip.profile, hk] <;> ring
  have hw (hk : (c.strips i).kind = 4)
      (w : H158FoldedSingletonWitness n p hp (some r)) :
      w.profile = (c.strips i).profile c.nu := by
    simpa only [Strip.profile, hk, ite_true] using
      pair_witness_profile_of_counts n p hp r w _ _ _ hc'.1 hc'.2 hnu
  cases he : h158HighHybridChoice n p hp (some r) with
  | none =>
    have hk : (c.strips i).kind ≠ 4 := by
      intro hk
      have hen := (h158HighHybridChoice_enabled_iff n p hp (some r)).mpr
        ⟨hne, (c.strips i).plateau_witness_sides (h.2.2.2.2.1 i) hk
          n p k hn hp r hkr ⟨hx.1.le, hx.2.le⟩ hy⟩
      exact hen he
    simp only [h158FoldedHybridProfile, he, hg hk, le_refl]
  | some w =>
    simp only [h158FoldedHybridProfile, he]
    by_cases hk : (c.strips i).kind = 4
    · rw [hw hk w]
    · rw [← hg hk]
      exact generic_minorFloor_le_witness n p hp r w q

end OddZetaMixed.H158HighCells
