import OddZetaMixed.H158HighCellsSupport

/-! Tail and all-order threshold semantics. The slot range is justified by
an infinite-tail theorem, never by a rank or pole-capacity restriction. -/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed.H158HighCells
open Finset FoldedHybrid

def Cell.TailBounds (c : Cell) : Prop := -7 ≤ c.nu ∧ ∀ i,
  (c.strips i).multiplicity+4-c.nu-(c.strips i).roots ≤ 20 ∧
  ((c.strips i).kind = 4 → -16 ≤ (c.strips i).roots-(c.strips i).multiplicity)

instance (c : Cell) : Decidable c.TailBounds :=
  inferInstanceAs (Decidable (_ ∧ ∀ _i : Fin 44, _))

theorem Cell.profile_tail {c : Cell} (h : c.TailBounds) (i : Fin 44)
    (j : ℕ) (hj : 16 ≤ j) : ((c.strips i).profile c.nu).marginal j ≤ 0 := by
  by_cases hk : (c.strips i).kind = 4
  · apply JetProfile.marginal_plateau_tail
    · simp [Strip.profile, hk]
    · simpa [Strip.profile, hk] using h.1
    · have := (h.2 i).2 hk
      simp only [Strip.profile, hk, ite_true]
      omega
    · simp [Strip.profile, hk]
    · exact hj
  · apply JetProfile.marginal_generic_tail
    · simp [Strip.profile, hk]
    · have := (h.2 i).1
      simp only [Strip.profile, hk, ite_false]
      omega
    · simp [Strip.profile, hk]
    · omega

theorem Cell.profile_allocation_bound {c : Cell} (h : c.TailBounds) (i : Fin 44)
    (q : ℕ) (tau : ℚ) (ht : 0 ≤ tau) :
    -(((c.strips i).profile c.nu).minorFloor q : ℚ) ≤
      (q : ℚ)*tau+(c.strips i).excess c.nu tau := by
  have ht' : ∀ (_ : Unit) j, 16 ≤ j →
      ((((c.strips i).profile c.nu).marginal j : ℤ) : ℚ) ≤ tau := by
    intro _ j hj
    exact (show ((((c.strips i).profile c.nu).marginal j : ℤ) : ℚ) ≤ 0 by
      exact_mod_cast c.profile_tail h i j hj).trans ht
  have hq := marginalAllocationCost_le_threshold
    (fun _ : Unit => (c.strips i).profile c.nu) (fun _ => q) q q (by simp) (by simp) tau
  have htr := marginalThresholdBudget_truncate
    (fun _ : Unit => (c.strips i).profile c.nu) q q 16 tau ht'
  simpa [marginalAllocationCost, marginalThresholdBudget, Strip.excess] using hq.trans htr

end OddZetaMixed.H158HighCells
