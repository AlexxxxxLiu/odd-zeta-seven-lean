import OddZetaMixed.H158HybridMarginals

/-! Independent checks of the uncapped marginal interface and actual transfer.
These are not a certificate for the geometry cells or their integral. -/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.H158HybridMarginalsCheck

open Finset FoldedHybrid LocalJetValuation

private def generic (w e : ℤ) (he : 0 ≤ e) : JetProfile := ⟨-w, 0, e, false, he⟩
private def plateau (nu A e : ℤ) (he : 0 ≤ e) : JetProfile := ⟨nu, A+1, e, true, he⟩

example (w : ℤ) (k : ℕ) :
    (generic w 1 (by norm_num)).minorFloor k = (k : ℤ)*(-w+(k : ℤ)-1) := by
  simp only [generic, JetProfile.minorFloor, Bool.false_eq_true, ite_false, zero_add, one_mul]
  ring

example (nu A : ℤ) (k : ℕ) :
    (plateau nu A 1 (by norm_num)).minorFloor k =
      (k : ℤ)*(nu+max 0 (A+(k : ℤ))) := by
  simp [plateau, JetProfile.minorFloor, add_assoc]

example (P : JetProfile) : P.marginal 0 = -P.minorFloor 1 := by
  simp [JetProfile.marginal]

example (P : JetProfile) (k : ℕ) :
    -P.minorFloor k ≤ ∑ j ∈ range k, max 0 (P.marginal j) :=
  P.neg_minorFloor_le_positive_prefix k

-- Ordinary plateau: last flat slot, integer kink, and the permanent tail.
example : (plateau (-7) (-16) 1 (by norm_num)).marginal 14 = 7 := by
  norm_num [plateau, JetProfile.marginal, JetProfile.minorFloor]

example : (plateau (-7) (-16) 1 (by norm_num)).marginal 15 = 7 := by
  norm_num [plateau, JetProfile.marginal, JetProfile.minorFloor]

example : (plateau (-7) (-16) 1 (by norm_num)).marginal 16 = -10 := by
  norm_num [plateau, JetProfile.marginal, JetProfile.minorFloor]

example : (plateau (-7) (-16) 1 (by norm_num)).marginal 17 = -12 := by
  norm_num [plateau, JetProfile.marginal, JetProfile.minorFloor]

-- Spacing two jumps across the hinge, so the kink is not its linear tail.
example : (plateau (-7) (-16) 2 (by norm_num)).marginal 8 = -2 := by
  norm_num [plateau, JetProfile.marginal, JetProfile.minorFloor]

example : (plateau (-7) (-16) 2 (by norm_num)).marginal 9 = -14 := by
  norm_num [plateau, JetProfile.marginal, JetProfile.minorFloor]

example : (generic 20 2 (by norm_num)).marginal 4 = 4 ∧
    (generic 20 2 (by norm_num)).marginal 5 = 0 := by
  norm_num [generic, JetProfile.marginal, JetProfile.minorFloor]

-- A finite inventory can bound prefixes of any length, not just <=16.
example (k : Unit → ℕ) (r : ℕ) (hr : (∑ c, k c) = r) :
    marginalAllocationCost (fun _ : Unit => plateau (-7) (-16) 1 (by norm_num)) k ≤
      ⌊marginalThresholdBudget (fun _ : Unit => plateau (-7) (-16) 1 (by norm_num)) r 16 0⌋ := by
  apply marginalAllocationCost_le_floor_threshold _ k r 16 hr 0
  intro c j hj
  exact_mod_cast JetProfile.marginal_plateau_tail
    (plateau (-7) (-16) 1 (by norm_num)) rfl (by norm_num [plateau])
    (by norm_num [plateau]) (by norm_num [plateau]) j hj

-- No empty-class filter: the generic class still contributes its slots.
example : marginalThresholdBudget (fun _ : Unit => generic 4 1 (by norm_num)) 2 16 0 = 6 := by
  norm_num [marginalThresholdBudget, generic, JetProfile.marginal,
    JetProfile.minorFloor, sum_range_succ]

example : h158HybridEndpoints.card = 44 := by decide

example (n p : ℕ) (hp : 0 < p) : h158HighHybridChoice n p hp none = none := by simp

private instance prime37 : Fact (Nat.Prime 37) := ⟨by norm_num⟩
private instance prime127 : Fact (Nat.Prime 127) := ⟨by norm_num⟩

example : -7 ≤ padicValRat 37 (h158Normalization 1) :=
  h158Normalization_valuation_ge_neg_seven 1 (by norm_num) (by norm_num) (by norm_num)

private def counterPair : H158PairClass 4 127 (by norm_num) :=
  ⟨h158ResidueClass 127 (by norm_num) 295,
    FoldedSingletonRegression.n4p127_actual_pair_representative⟩

-- The asymmetric pair stays generic: one cutoff alone cannot activate it.
example : h158HighHybridChoice 4 127 (by norm_num) (some counterPair) = none := by
  by_contra h
  have hw := ((h158HighHybridChoice_enabled_iff 4 127 (by norm_num) (some counterPair)).mp h).2
  exact FoldedHybridRegression.n4p127_no_plateau_witness hw

example (choice : H158FoldedHybridChoice 1 37 (by norm_num))
    (k : H158OrbitClass 1 37 (by norm_num) → ℕ) (hr : (∑ c, k c) = 2)
    (_hk : ∀ c, k c ≤ 4) :
    -⌊h158HybridMarginalBudget 1 37 (by norm_num) choice 0⌋ ≤
      ∑ c, (h158FoldedHybridProfile 1 37 (by norm_num) choice c).minorFloor (k c) := by
  exact h158Hybrid_allocation_marginal_bound 1 (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) choice 0 (by norm_num) k hr

example (choice : H158FoldedHybridChoice 1 37 (by norm_num)) (tau : ℚ) (htau : 0 ≤ tau) :
    -⌊h158HybridMarginalBudget 1 37 (by norm_num) choice tau⌋ ≤
      h158FoldedHybridMinimum 1 37 (by norm_num) choice :=
  h158Hybrid_minimum_marginal_bound 1 (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) choice tau htau

example (hdet : (h158SevenMatrix 1).det ≠ 0) :
    -padicValRat 37 (h158PrimitiveScalar 1) ≤
      ⌊h158HybridMarginalBudget 1 37 (by norm_num) (h158HighHybridChoice 1 37 (by norm_num)) 0⌋ :=
  h158_primitive_cost_high_hybrid_marginal 1 (by norm_num) (by norm_num) 0 (by norm_num) hdet

example {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hhigh : 26*n < p)
    (tau : ℚ) (htau : 0 ≤ tau) (hdet : (h158SevenMatrix n).det ≠ 0) :
    (-padicValRat p (h158PrimitiveScalar n) : ℚ) ≤
      h158HybridMarginalBudget n p (Fact.out : p.Prime).pos
        (h158HighHybridChoice n p (Fact.out : p.Prime).pos) tau :=
  h158_primitive_cost_high_hybrid_marginal_rat n hn hhigh tau htau hdet

#print axioms JetProfile.sum_marginal
#print axioms JetProfile.marginal_plateau
#print axioms JetProfile.marginal_plateau_one
#print axioms marginalAllocationCost_le_floor_threshold
#print axioms h158Normalization_valuation_ge_neg_seven
#print axioms h158Singleton_offset_ge_neg_sixteen
#print axioms h158FoldedHybrid_marginal_tail
#print axioms h158FoldedHybrid_empty_pair_generic
#print axioms h158Hybrid_allocation_marginal_bound
#print axioms h158Hybrid_minimum_marginal_bound
#print axioms h158_hybrid_marginal_determinant_floor
#print axioms h158HighHybridChoice_enabled_iff
#print axioms h158_primitive_cost_high_hybrid_marginal
#print axioms h158_primitive_cost_high_hybrid_marginal_rat

end OddZetaMixed.H158HybridMarginalsCheck
