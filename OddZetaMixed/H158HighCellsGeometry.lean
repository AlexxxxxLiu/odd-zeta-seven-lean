import OddZetaMixed.H158HighCellsBounds
import Mathlib.Data.Int.Interval

/-! Location and lattice semantics for checked high-band strip boundaries. -/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed.H158HighCells
open Finset LocalJetValuation

def Affine.Boundary (f : Affine) : Prop := f = ⟨0, 1⟩ ∨
  ∃ a ∈ h158HybridEndpoints, ∃ j : ℕ, f = ⟨a, -(j : ℚ)⟩

def Cell.BoundaryValid (c : Cell) : Prop := ∀ i,
  (c.strips i).left.Boundary ∧ (c.strips i).right.Boundary

theorem Affine.Boundary.integral_scaled {f : Affine} (h : f.Boundary)
    (n p : ℕ) (hn : 0 < n) : ∃ z : ℤ, (n : ℚ)*f.eval ((p : ℚ)/n) = z := by
  have hnq : (n : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hn)
  rcases h with rfl | ⟨a, ha, j, rfl⟩
  · refine ⟨p, ?_⟩
    simp only [Affine.eval, zero_add, one_mul, Int.cast_natCast]
    field_simp
  · refine ⟨(a : ℤ)*n-(j : ℤ)*p, ?_⟩
    simp only [Affine.eval, Int.cast_sub, Int.cast_mul, Int.cast_natCast]
    field_simp
    ring

theorem Affine.Boundary.exceptional {f : Affine} (h : f.Boundary)
    (n p k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hy : ((k : ℚ)-1)/n = f.eval ((p : ℚ)/n)) :
    h158ResidueClass p hp k ∈ h158HybridExceptionalClasses n p hp := by
  have hnq : (n : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hn)
  rcases h with rfl | ⟨a, ha, j, rfl⟩
  · have heq : (k : ℚ)-1 = p := by
      apply (div_left_inj' hnq).mp
      simpa only [Affine.eval, one_mul, zero_add] using hy
    have hk : k = p+1 := by exact_mod_cast (show (k : ℚ) = p+1 by linarith)
    refine mem_image.mpr ⟨0, mem_insert_of_mem (by simp [h158HybridEndpoints]), ?_⟩
    apply Fin.ext
    simp [h158ResidueClass, hk]
  · have heq : (k : ℚ)-1 = (a : ℚ)*n-(j : ℚ)*p := by
      unfold Affine.eval at hy
      field_simp at hy
      nlinarith [hy]
    have heqZ : (k : ℤ)-1 = (a : ℤ)*n-(j : ℤ)*p := by exact_mod_cast heq
    have hm : k % p = (a*n+1) % p := Nat.modEq_iff_dvd.mpr (by
      refine ⟨(j : ℤ), ?_⟩
      push_cast
      nlinarith)
    refine mem_image.mpr ⟨a, mem_insert_of_mem ha, ?_⟩
    apply Fin.ext
    exact hm.symm

def shiftedAnchor (p : ℕ) (c : Fin p) : ℕ := if c.val = 0 then p else c.val

theorem shiftedAnchor_residue (p : ℕ) (hp : 0 < p) (c : Fin p) :
    h158ResidueClass p hp (shiftedAnchor p c) = c := by
  apply Fin.ext
  by_cases hc : c.val = 0
  · simp [shiftedAnchor, hc, h158ResidueClass]
  · simp [shiftedAnchor, hc, h158ResidueClass, Nat.mod_eq_of_lt c.isLt]

theorem shiftedAnchor_bounds (p : ℕ) (hp : 0 < p) (c : Fin p) :
    1 ≤ shiftedAnchor p c ∧ shiftedAnchor p c ≤ p := by
  have := c.isLt
  unfold shiftedAnchor
  split_ifs <;> omega

theorem Cell.open_strip_of_not_boundary {c : Cell} (h : c.Valid) {x y : ℚ}
    (hy : 0 ≤ y ∧ y < x)
    (havoid : ∀ i, y ≠ (c.strips i).left.eval x) :
    ∃ i, (c.strips i).left.eval x < y ∧ y < (c.strips i).right.eval x := by
  by_contra hno
  push Not at hno
  have hall (i : Fin 44) : (c.strips i).right.eval x ≤ y := by
    induction i using Fin.induction with
    | zero =>
      apply hno 0
      have hl : (c.strips 0).left.eval x = 0 := by
        rw [h.2.2.2.2.2.1]
        simp [Affine.eval]
      exact lt_of_le_of_ne (by simpa only [hl] using hy.1) (Ne.symm (havoid 0))
    | succ i ih =>
      apply hno i.succ
      have he := h.2.2.2.2.2.2.2.1 i
      exact lt_of_le_of_ne (by simpa only [he] using ih) (Ne.symm (havoid i.succ))
  have hr : (c.strips 43).right.eval x = x := by
    rw [h.2.2.2.2.2.2.1]
    simp [Affine.eval]
  have := hall 43
  linarith

/-- Every actual nonexceptional residue lies in one of the checked open
strips in shifted coordinates. Endpoint equalities are charged, not lost. -/
theorem Cell.locate_nonexceptional {c : Cell} (h : c.Valid) (hb : c.BoundaryValid)
    (n p : ℕ) (hn : 0 < n) (hp : 0 < p) (r : Fin p)
    (hr : r ∉ h158HybridExceptionalClasses n p hp) :
    ∃ i, (c.strips i).left.eval ((p : ℚ)/n) < ((shiftedAnchor p r : ℚ)-1)/n ∧
      ((shiftedAnchor p r : ℚ)-1)/n < (c.strips i).right.eval ((p : ℚ)/n) := by
  have hnq : (0 : ℚ) < n := by exact_mod_cast hn
  have ha := shiftedAnchor_bounds p hp r
  apply c.open_strip_of_not_boundary h
  · constructor
    · exact div_nonneg (by exact_mod_cast (show 0 ≤ (shiftedAnchor p r : ℤ)-1 by omega)) hnq.le
    · apply (div_lt_div_iff_of_pos_right hnq).mpr
      have : (shiftedAnchor p r : ℚ) ≤ p := by exact_mod_cast ha.2
      linarith
  · intro i heq
    apply hr
    rw [← shiftedAnchor_residue p hp r]
    exact (hb i).1.exceptional n p (shiftedAnchor p r) hn hp heq

theorem shiftedAnchor_injective (p : ℕ) (hp : 0 < p) :
    Function.Injective (shiftedAnchor p) := by
  intro a b hab
  rw [← shiftedAnchor_residue p hp a, ← shiftedAnchor_residue p hp b, hab]

def stripResidues (s : Strip) (n p : ℕ) : Finset (Fin p) :=
  univ.filter (fun r => s.left.eval ((p : ℚ)/n) < ((shiftedAnchor p r : ℚ)-1)/n ∧
    ((shiftedAnchor p r : ℚ)-1)/n < s.right.eval ((p : ℚ)/n))

/-- A harmless one-lattice-point allowance avoids any hidden endpoint
integrality assumption. It only changes the uniform finite correction. -/
theorem stripResidues_card_le (s : Strip) (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hw : s.left.eval ((p : ℚ)/n) ≤ s.right.eval ((p : ℚ)/n)) :
    ((stripResidues s n p).card : ℚ) ≤
      (n : ℚ)*(s.right.eval ((p : ℚ)/n)-s.left.eval ((p : ℚ)/n))+1 := by
  let L := (n : ℚ)*s.left.eval ((p : ℚ)/n)
  let U := (n : ℚ)*s.right.eval ((p : ℚ)/n)
  have hnq : (0 : ℚ) < n := by exact_mod_cast hn
  have hlu : L ≤ U := mul_le_mul_of_nonneg_left hw hnq.le
  have hcard : (stripResidues s n p).card ≤ (Ioc ⌊L⌋ ⌊U⌋).card := by
    apply card_le_card_of_injOn (fun r => (shiftedAnchor p r : ℤ)-1)
    · intro r hr
      have hr := (mem_filter.mp hr).2
      change (shiftedAnchor p r : ℤ)-1 ∈ Ioc ⌊L⌋ ⌊U⌋
      simp only [mem_Ioc, Int.floor_lt, Int.le_floor]
      constructor
      · have := (lt_div_iff₀ hnq).mp hr.1
        dsimp [L]
        push_cast
        nlinarith
      · have := (div_lt_iff₀ hnq).mp hr.2
        dsimp [U]
        push_cast
        nlinarith
    · intro a ha b hb hab
      change (shiftedAnchor p a : ℤ)-1 = (shiftedAnchor p b : ℤ)-1 at hab
      apply shiftedAnchor_injective p hp
      omega
  have hfl : ⌊L⌋ ≤ ⌊U⌋ := Int.floor_mono hlu
  have hcardQ : ((Ioc ⌊L⌋ ⌊U⌋).card : ℚ) = ((⌊U⌋-⌊L⌋ : ℤ) : ℚ) := by
    exact_mod_cast Int.card_Ioc_of_le ⌊L⌋ ⌊U⌋ hfl
  have hcard' : ((stripResidues s n p).card : ℚ) ≤ ((⌊U⌋-⌊L⌋ : ℤ) : ℚ) := by
    rw [← hcardQ]
    exact_mod_cast hcard
  have hl := Int.lt_floor_add_one L
  have hu := Int.floor_le U
  dsimp [L, U] at *
  push_cast at hcard'
  nlinarith

theorem Cell.profile_marginal_le_twenty {c : Cell} (h : c.TailBounds)
    (i : Fin 44) (j : ℕ) : ((c.strips i).profile c.nu).marginal j ≤ 20 := by
  have hj : (0 : ℤ) ≤ j := by positivity
  by_cases hk : (c.strips i).kind = 4
  · rw [FoldedHybrid.JetProfile.marginal_plateau_one _ (by simp [Strip.profile, hk])
      (by simp [Strip.profile, hk]) ((c.strips i).roots-(c.strips i).multiplicity)
      (by simp [Strip.profile, hk])]
    simp only [Strip.profile, hk, ite_true]
    have := h.1
    split_ifs <;> omega
  · rw [FoldedHybrid.JetProfile.marginal_generic _ (by simp [Strip.profile, hk])]
    simp only [Strip.profile, hk, ite_false]
    have := (h.2 i).1
    omega

theorem Cell.excess_le_320 {c : Cell} (h : c.TailBounds) (i : Fin 44)
    (tau : ℚ) (ht : 0 ≤ tau) : (c.strips i).excess c.nu tau ≤ 320 := by
  calc
    _ ≤ ∑ _j ∈ range 16, (20 : ℚ) := by
      apply sum_le_sum
      intro j hj
      apply max_le _ (by norm_num)
      have hm : ((((c.strips i).profile c.nu).marginal j : ℤ) : ℚ) ≤ 20 := by
        exact_mod_cast c.profile_marginal_le_twenty h i j
      linarith
    _ = _ := by norm_num

end OddZetaMixed.H158HighCells
