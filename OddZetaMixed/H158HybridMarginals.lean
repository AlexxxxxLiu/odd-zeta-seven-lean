import OddZetaMixed.H158FoldedHybrid
import OddZetaMixed.H158ThresholdBudget

/-!
# All-allocation marginal thresholds for the actual hybrid floors

Slot `j` is the increment from order `j` to order `j+1`. No pole-order
capacity or nonempty-class restriction is imposed. The finite threshold
bound and its transfer concern the actual hybrid profiles; no cell integral
or new high-band numerical constant is asserted here.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset LocalJetValuation

namespace FoldedHybrid

def JetProfile.marginal (P : JetProfile) (j : ℕ) : ℤ :=
  -P.minorFloor (j+1) + P.minorFloor j

@[simp] theorem JetProfile.minorFloor_zero (P : JetProfile) : P.minorFloor 0 = 0 := by
  simp [minorFloor]

theorem JetProfile.sum_marginal (P : JetProfile) (k : ℕ) :
    (∑ j ∈ range k, P.marginal j) = -P.minorFloor k := by
  induction k with
  | zero => simp
  | succ k ih => rw [sum_range_succ, ih, marginal]; ring

theorem JetProfile.neg_minorFloor_le_positive_prefix (P : JetProfile) (k : ℕ) :
    -P.minorFloor k ≤ ∑ j ∈ range k, max 0 (P.marginal j) := by
  rw [← P.sum_marginal]
  exact sum_le_sum (fun _ _ => le_max_right _ _)

theorem JetProfile.marginal_generic (P : JetProfile) (hP : P.plateau = false) (j : ℕ) :
    P.marginal j = -P.base-P.offset-2*P.spacing*(j : ℤ) := by
  simp only [marginal, minorFloor, hP, Bool.false_eq_true, ite_false, Nat.cast_add,
    Nat.cast_one]
  ring

/-- The middle branch is the linear tail. The last branch is the kink,
including a spacing-two central profile that jumps across zero. -/
theorem JetProfile.marginal_plateau (P : JetProfile) (hP : P.plateau = true) (j : ℕ) :
    P.marginal j =
      if P.offset+P.spacing*(j : ℤ) ≤ 0 then -P.base
      else if 0 ≤ P.offset+P.spacing*((j : ℤ)-1) then
        -P.base-P.offset-2*P.spacing*(j : ℤ)
      else -P.base-((j : ℤ)+1)*(P.offset+P.spacing*(j : ℤ)) := by
  simp only [marginal, minorFloor, hP, ite_true, Nat.cast_add, Nat.cast_one,
    add_sub_cancel_right]
  split_ifs with hnow hprev
  · have hpast : P.offset+P.spacing*((j : ℤ)-1) ≤ 0 := by
      nlinarith [P.spacing_nonneg]
    rw [max_eq_left hnow, max_eq_left hpast]
    ring
  · rw [max_eq_right (by omega : 0 ≤ P.offset+P.spacing*(j : ℤ)), max_eq_right hprev]
    ring
  · rw [max_eq_right (by omega : 0 ≤ P.offset+P.spacing*(j : ℤ)),
      max_eq_left (by omega : P.offset+P.spacing*((j : ℤ)-1) ≤ 0)]
    ring

/-- For the ordinary plateau `F(k)=k*(nu+max 0 (A+k))`, the integer
kink is at `A+j+1=0`; the first positive hinge step is already linear. -/
theorem JetProfile.marginal_plateau_one (P : JetProfile) (hP : P.plateau = true)
    (he : P.spacing = 1) (A : ℤ) (hA : P.offset = A+1) (j : ℕ) :
    P.marginal j = if A+(j : ℤ)+1 ≤ 0 then -P.base
      else -P.base-A-2*(j : ℤ)-1 := by
  rw [P.marginal_plateau hP, he, hA]
  simp only [one_mul]
  by_cases h : A+(j : ℤ)+1 ≤ 0
  · rw [ite_eq_left (by omega), ite_eq_left h]
  · rw [ite_eq_right (by omega), ite_eq_left (by omega), ite_eq_right h]
    ring

theorem JetProfile.marginal_generic_tail (P : JetProfile) (hP : P.plateau = false)
    (hb : -20 ≤ P.base+P.offset) (he : 1 ≤ P.spacing) (j : ℕ) (hj : 10 ≤ j) :
    P.marginal j ≤ 0 := by
  rw [P.marginal_generic hP]
  have hjZ : (10 : ℤ) ≤ j := by exact_mod_cast hj
  have hm := mul_le_mul_of_nonneg_right he (show (0 : ℤ) ≤ j by positivity)
  nlinarith

/-- `offset=A+1 >= -15` and `nu >= -7` suffice uniformly, even at the
central spacing two. No unproved tail or allocation cap is an input. -/
theorem JetProfile.marginal_plateau_tail (P : JetProfile) (hP : P.plateau = true)
    (hb : -7 ≤ P.base) (ho : -15 ≤ P.offset) (he : 1 ≤ P.spacing)
    (j : ℕ) (hj : 16 ≤ j) : P.marginal j ≤ 0 := by
  have hjZ : (16 : ℤ) ≤ j := by exact_mod_cast hj
  have hm := mul_le_mul_of_nonneg_right he (show (0 : ℤ) ≤ j by positivity)
  have hm' := mul_le_mul_of_nonneg_right he (show (0 : ℤ) ≤ (j : ℤ)-1 by omega)
  rw [P.marginal_plateau hP, ite_eq_right (by nlinarith), ite_eq_left (by nlinarith)]
  nlinarith

variable {C : Type*} [Fintype C]

def marginalAllocationCost (P : C → JetProfile) (k : C → ℕ) : ℤ :=
  -∑ c, (P c).minorFloor (k c)

def marginalThresholdBudget (P : C → JetProfile) (r J : ℕ) (tau : ℚ) : ℚ :=
  (r : ℚ)*tau + ∑ c, ∑ j ∈ range J, max ((P c).marginal j-tau) 0

/-- Nonnegative thresholds see exactly the positive inventory padded with
zeros, while the rank term still counts every selected direction. -/
theorem marginalThresholdBudget_eq_positive (P : C → JetProfile) (r J : ℕ)
    (tau : ℚ) (htau : 0 ≤ tau) :
    marginalThresholdBudget P r J tau =
      (r : ℚ)*tau + ∑ c, ∑ j ∈ range J, max (max 0 ((P c).marginal j : ℚ)-tau) 0 := by
  unfold marginalThresholdBudget
  congr 1
  apply sum_congr rfl
  intro c hc
  apply sum_congr rfl
  intro j hj
  by_cases hm : 0 ≤ ((P c).marginal j : ℚ)
  · rw [max_eq_right hm]
  · rw [max_eq_left (by linarith : ((P c).marginal j : ℚ) ≤ 0),
      max_eq_right (by linarith : ((P c).marginal j : ℚ)-tau ≤ 0),
      max_eq_right (by linarith : (0 : ℚ)-tau ≤ 0)]

theorem marginalAllocationCost_eq_prefix (P : C → JetProfile) (k : C → ℕ) :
    marginalAllocationCost P k = ∑ c, ∑ j ∈ range (k c), (P c).marginal j := by
  simp only [marginalAllocationCost, JetProfile.sum_marginal, sum_neg_distrib]

theorem marginalAllocationCost_le_threshold (P : C → JetProfile) (k : C → ℕ)
    (r J : ℕ) (hr : (∑ c, k c) = r) (hk : ∀ c, k c ≤ J) (tau : ℚ) :
    (marginalAllocationCost P k : ℚ) ≤ marginalThresholdBudget P r J tau := by
  have hrQ : (∑ c, (k c : ℚ)) = r := by rw [← Nat.cast_sum, hr]
  rw [marginalAllocationCost_eq_prefix, Int.cast_sum]
  calc
    _ ≤ ∑ c, ((k c : ℚ)*tau +
        ∑ j ∈ range J, max ((P c).marginal j-tau) 0) := by
      apply sum_le_sum
      intro c hc
      simpa only [card_range, Int.cast_sum] using
        WeightedSlotThreshold.sum_le_threshold_of_subset
          (range (k c)) (range J) (range_mono (hk c))
          (fun j => ((P c).marginal j : ℚ)) tau
    _ = _ := by rw [sum_add_distrib, ← sum_mul, hrQ]; rfl

theorem marginalThresholdBudget_truncate (P : C → JetProfile) (r M J : ℕ) (tau : ℚ)
    (htail : ∀ c j, J ≤ j → ((P c).marginal j : ℚ) ≤ tau) :
    marginalThresholdBudget P r M tau ≤ marginalThresholdBudget P r J tau := by
  classical
  unfold marginalThresholdBudget
  apply add_le_add le_rfl
  apply sum_le_sum
  intro c hc
  by_cases hMJ : M ≤ J
  · exact sum_le_sum_of_subset_of_nonneg (range_mono hMJ)
      (fun _ _ _ => le_max_right _ _)
  · have hJM : J ≤ M := by omega
    have heq : (∑ j ∈ range J, max ((P c).marginal j-tau) 0) =
        ∑ j ∈ range M, max ((P c).marginal j-tau) 0 := by
      apply sum_subset (range_mono hJM)
      intro j hj hjn
      exact max_eq_right (sub_nonpos.mpr (htail c j (by simpa using hjn)))
    exact heq.symm.le

/-- Arbitrarily long prefixes are allowed once the omitted excesses are
proved zero. Empty generic classes remain in both sums. -/
theorem marginalAllocationCost_le_floor_threshold (P : C → JetProfile) (k : C → ℕ)
    (r J : ℕ) (hr : (∑ c, k c) = r) (tau : ℚ)
    (htail : ∀ c j, J ≤ j → ((P c).marginal j : ℚ) ≤ tau) :
    marginalAllocationCost P k ≤ ⌊marginalThresholdBudget P r J tau⌋ := by
  apply Int.le_floor.mpr
  have hk : ∀ c, k c ≤ r := by
    intro c
    rw [← hr]
    exact single_le_sum (fun _ _ => Nat.zero_le _) (mem_univ c)
  exact (marginalAllocationCost_le_threshold P k r r hr hk tau).trans
    (marginalThresholdBudget_truncate P r r J tau htail)

end FoldedHybrid

/-- Uniform actual high-band normalization bound, derived from its factorial
quotients. No finite-cell normalization table is assumed. -/
theorem h158Normalization_valuation_ge_neg_seven {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hhigh : 26*n < p) (hsq : 158*n+2 < p^2) :
    -7 ≤ padicValRat p (h158Normalization n) := by
  have hp : 0 < p := (Fact.out : p.Prime).pos
  rw [h158Normalization_valuation_main_prime n p hn (Fact.out : p.Prime) hsq]
  have hnum (a : ℕ) (ha : a < 5) : ((48+a)*n)/p ≤ 1 := by
    have hlt : (48+a)*n < 2*p := by nlinarith
    have := (Nat.div_lt_iff_lt_mul hp).mpr hlt
    omega
  have hden : (∑ b ∈ range 3, ((((52-2*b)*n)/p : ℕ) : ℤ)) ≤
      ∑ b ∈ range 16, ((((52-2*b)*n)/p : ℕ) : ℤ) :=
    sum_le_sum_of_subset_of_nonneg (range_mono (by decide)) (fun _ _ _ => by positivity)
  norm_num only [sum_range_succ, sum_range_zero, zero_add] at hden
  have h0 := hnum 0 (by omega)
  have h1 := hnum 1 (by omega)
  have h2 := hnum 2 (by omega)
  have h3 := hnum 3 (by omega)
  have h4 := hnum 4 (by omega)
  norm_num at h0 h1 h2 h3 h4
  unfold h158NormalizationFloor
  norm_num only [sum_range_succ, sum_range_zero, zero_add]
  by_cases h48 : p ≤ 48*n
  · have d0 : 1 ≤ (52*n)/p := (Nat.le_div_iff_mul_le hp).mpr (by omega)
    have d1 : 1 ≤ (50*n)/p := (Nat.le_div_iff_mul_le hp).mpr (by omega)
    have d2 : 1 ≤ (48*n)/p := (Nat.le_div_iff_mul_le hp).mpr (by omega)
    omega
  · have hz : (48*n)/p = 0 := Nat.div_eq_of_lt (by omega)
    omega

theorem h158NumeratorCount_nonneg (p n k : ℕ) : 0 ≤ h158NumeratorCount p n k := by
  unfold h158NumeratorCount
  positivity

/-- The actual offset `A=z-o` is at least -16, including empty numerator
classes; only the original pole multiplicity bound is used. -/
theorem h158Singleton_offset_ge_neg_sixteen (p n k : ℕ) :
    -16 ≤ h158NumeratorCount p n k-(h158PoleOrder n k : ℤ) := by
  have := h158NumeratorCount_nonneg p n k
  have := h158_pole_order_le n k
  omega

theorem H158FoldedSingletonWitness.offset_ge_neg_fifteen {n p : ℕ} {hp : 0 < p}
    {c : H158OrbitClass n p hp} (w : H158FoldedSingletonWitness n p hp c) :
    -15 ≤ w.offset := by
  cases w with
  | pair c k k' hk hk' hs hs' hc hc' hkc hk'c =>
    have := h158Singleton_offset_ge_neg_sixteen p n k
    have := h158Singleton_offset_ge_neg_sixteen p n k'
    simp only [offset]
    omega
  | central hs hc =>
    have := h158Singleton_offset_ge_neg_sixteen p n (79*n+1)
    simp only [offset]
    omega

theorem h158FoldedGenericProfile_marginal (n p : ℕ) (hp : 0 < p)
    (c : H158OrbitClass n p hp) (j : ℕ) :
    (h158FoldedGenericProfile n p hp c).marginal j =
      h158FoldedWeight n p hp c-2*h158FoldedSpacing n p hp c*(j : ℤ) := by
  rw [FoldedHybrid.JetProfile.marginal_generic _ rfl]
  simp [h158FoldedGenericProfile]

/-- A paired witness has exactly the `F_P` marginal, with both actual
offsets retained through their minimum. -/
theorem H158FoldedSingletonWitness.pair_marginal {n p : ℕ} {hp : 0 < p}
    {c : H158PairClass n p hp}
    (w : H158FoldedSingletonWitness n p hp (some c)) (j : ℕ) :
    w.profile.marginal j =
      if (w.offset-1)+(j : ℤ)+1 ≤ 0 then -padicValRat p (h158Normalization n)
      else -padicValRat p (h158Normalization n)-(w.offset-1)-2*(j : ℤ)-1 := by
  exact FoldedHybrid.JetProfile.marginal_plateau_one _ rfl rfl (w.offset-1)
    (by simp [profile]) j

theorem h158FoldedHybrid_generic_of_no_witness (n p : ℕ) (hp : 0 < p)
    (choice : H158FoldedHybridChoice n p hp) (c : H158OrbitClass n p hp)
    (hc : ¬Nonempty (H158FoldedSingletonWitness n p hp c)) :
    h158FoldedHybridProfile n p hp choice c = h158FoldedGenericProfile n p hp c := by
  cases he : choice c with
  | none => simp [h158FoldedHybridProfile, he]
  | some w => exact (hc ⟨w⟩).elim

/-- An empty representative cannot be discarded or receive a plateau:
its generic profile is still present in the all-orbit marginal inventory. -/
theorem h158FoldedHybrid_empty_pair_generic (n p : ℕ) (hp : 0 < p)
    (choice : H158FoldedHybridChoice n p hp) (c : H158PairClass n p hp)
    (hempty : ∀ k ∈ h158PoleSet n, h158ResidueClass p hp k ≠ c.val) :
    h158FoldedHybridProfile n p hp choice (some c) =
      h158FoldedGenericProfile n p hp (some c) := by
  apply h158FoldedHybrid_generic_of_no_witness
  rintro ⟨w⟩
  cases w with
  | pair c k k' hk hk' hs hs' hc hc' hkc hk'c => exact hempty k hk hkc

theorem h158FoldedHybrid_marginal_tail {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hhigh : 26*n < p) (hsq : 158*n+2 < p^2)
    (choice : H158FoldedHybridChoice n p hp) (c : H158OrbitClass n p hp)
    (j : ℕ) (hj : 16 ≤ j) :
    (h158FoldedHybridProfile n p hp choice c).marginal j ≤ 0 := by
  have he : 1 ≤ h158FoldedSpacing n p hp c := by cases c <;> norm_num [h158FoldedSpacing]
  cases hc : choice c with
  | none =>
    simp only [h158FoldedHybridProfile, hc]
    apply FoldedHybrid.JetProfile.marginal_generic_tail _ rfl _ he j (by omega)
    have := h158FoldedWeight_le_twenty n hn hp hsq c
    change -20 ≤ -h158FoldedWeight n p hp c+0
    omega
  | some w =>
    simp only [h158FoldedHybridProfile, hc]
    exact FoldedHybrid.JetProfile.marginal_plateau_tail _ rfl
      (h158Normalization_valuation_ge_neg_seven n hn hhigh hsq)
      w.offset_ge_neg_fifteen he j hj

def h158HybridMarginalBudget (n p : ℕ) (hp : 0 < p)
    (choice : H158FoldedHybridChoice n p hp) (tau : ℚ) : ℚ :=
  FoldedHybrid.marginalThresholdBudget (h158FoldedHybridProfile n p hp choice) (2*n) 16 tau

theorem h158HybridMarginalBudget_all_generic (n p : ℕ) (hp : 0 < p) (tau : ℚ) :
    h158HybridMarginalBudget n p hp (fun _ => none) tau =
      WeightedSlotThreshold.rationalThresholdBudget (h158FoldedWeight n p hp)
        (h158FoldedSpacing n p hp) (2*n) 16 tau := by
  simp [h158HybridMarginalBudget, FoldedHybrid.marginalThresholdBudget,
    h158FoldedHybridProfile, h158FoldedGenericProfile_marginal,
    WeightedSlotThreshold.rationalThresholdBudget, WeightedSlotThreshold.thresholdBudget]

/-- All allocations of rank 2n, in fact without even the existing 4n cap. -/
theorem h158Hybrid_allocation_marginal_bound {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hhigh : 26*n < p) (hsq : 158*n+2 < p^2)
    (choice : H158FoldedHybridChoice n p hp) (tau : ℚ) (htau : 0 ≤ tau)
    (k : H158OrbitClass n p hp → ℕ) (hr : (∑ c, k c) = 2*n) :
    -⌊h158HybridMarginalBudget n p hp choice tau⌋ ≤
      ∑ c, (h158FoldedHybridProfile n p hp choice c).minorFloor (k c) := by
  have h := FoldedHybrid.marginalAllocationCost_le_floor_threshold
    (h158FoldedHybridProfile n p hp choice) k (2*n) 16 hr tau (by
      intro c j hj
      have h : ((h158FoldedHybridProfile n p hp choice c).marginal j : ℚ) ≤ 0 := by
        exact_mod_cast h158FoldedHybrid_marginal_tail n hn hp hhigh hsq choice c j hj
      exact h.trans htau)
  change -(∑ c, (h158FoldedHybridProfile n p hp choice c).minorFloor (k c)) ≤
    ⌊h158HybridMarginalBudget n p hp choice tau⌋ at h
  omega

theorem h158Hybrid_minimum_marginal_bound {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hhigh : 26*n < p) (hsq : 158*n+2 < p^2)
    (choice : H158FoldedHybridChoice n p hp) (tau : ℚ) (htau : 0 ≤ tau) :
    -⌊h158HybridMarginalBudget n p hp choice tau⌋ ≤ h158FoldedHybridMinimum n p hp choice := by
  apply (Finset.le_inf'_iff _ _).2
  intro k hk
  exact h158Hybrid_allocation_marginal_bound n hn hp hhigh hsq choice tau htau
    (fun c => (k c).val) (mem_filter.mp hk).2

def h158HybridMarginalCost (n p : ℕ) (hp : 0 < p)
    (choice : H158FoldedHybridChoice n p hp) (tau : ℚ) : ℤ :=
  (h158RowFee n p : ℤ)+⌊h158HybridMarginalBudget n p hp choice tau⌋

/-- The actual determinant transfer supplies its own all-allocation bound. -/
theorem h158_hybrid_marginal_determinant_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hhigh : 26*n < p) (hsq : 158*n+2 < p^2)
    (choice : H158FoldedHybridChoice n p hp) (tau : ℚ) (htau : 0 ≤ tau) :
    FormalAtLeast p (-h158HybridMarginalCost n p hp choice tau) (h158SevenMatrix n).det := by
  have h := h158_folded_hybrid_det_floor_of_allocation_bound n hn hp hp2 hsq choice
    (-⌊h158HybridMarginalBudget n p hp choice tau⌋) (by
      intro k hr _
      exact h158Hybrid_allocation_marginal_bound n hn hp hhigh hsq choice tau htau k hr)
  convert h using 1
  unfold h158HybridMarginalCost
  ring

theorem h158_primitive_cost_hybrid_marginal {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hhigh : 26*n < p) (hsq : 158*n+2 < p^2)
    (choice : H158FoldedHybridChoice n p hp) (tau : ℚ) (htau : 0 ≤ tau)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    -padicValRat p (h158PrimitiveScalar n) ≤ h158HybridMarginalCost n p hp choice tau := by
  have h := formal_gauss_lower
    (h158_hybrid_marginal_determinant_floor n hn hp hp2 hhigh hsq choice tau htau) hdet
  rw [h158PrimitiveScalar_gauss_valuation n hdet p (Fact.out : p.Prime)] at h
  omega

theorem h158RowFee_zero_of_high (n p : ℕ) (hhigh : 26*n < p) : h158RowFee n p = 0 := by
  unfold h158RowFee
  have hz : (∑ i : Fin (2*n), (2*i.val)/p) = 0 := by
    apply sum_eq_zero
    intro i hi
    exact Nat.div_eq_of_lt (by have := i.isLt; omega)
  rw [hz, mul_zero]

theorem h158HybridMarginalCost_eq_floor (n p : ℕ) (hp : 0 < p) (hhigh : 26*n < p)
    (choice : H158FoldedHybridChoice n p hp) (tau : ℚ) :
    h158HybridMarginalCost n p hp choice tau = ⌊h158HybridMarginalBudget n p hp choice tau⌋ := by
  simp [h158HybridMarginalCost, h158RowFee_zero_of_high n p hhigh]

/-- The addendum's 44 endpoint constants, before the actual +1 shift. -/
def h158HybridEndpoints : Finset ℕ := {0,158} ∪ Icc 48 68 ∪ Icc 90 110

def h158HybridExceptionalClasses (n p : ℕ) (hp : 0 < p) : Finset (Fin p) :=
  (insert 79 h158HybridEndpoints).image (fun a => h158ResidueClass p hp (a*n+1))

def h158HybridExceptionalOrbit (n p : ℕ) (hp : 0 < p) : H158OrbitClass n p hp → Prop
  | none => True
  | some c => c.val ∈ h158HybridExceptionalClasses n p hp ∨
      h158ReflectionClass n p hp c.val ∈ h158HybridExceptionalClasses n p hp

/-- Activate every arithmetically eligible nonexceptional pair. The witness
type requires both singleton conditions and both strict harmonic cutoffs.
Endpoints, the central orbit, and ineligible (including empty) pairs stay
generic. This choice does not use a supplied valuation or allocation bound. -/
def h158HighHybridChoice (n p : ℕ) (hp : 0 < p) : H158FoldedHybridChoice n p hp := by
  classical
  intro c
  exact if h158HybridExceptionalOrbit n p hp c then none
    else if h : Nonempty (H158FoldedSingletonWitness n p hp c) then some (Classical.choice h)
    else none

theorem h158HighHybridChoice_enabled_iff (n p : ℕ) (hp : 0 < p)
    (c : H158OrbitClass n p hp) :
    h158HighHybridChoice n p hp c ≠ none ↔
      ¬h158HybridExceptionalOrbit n p hp c ∧ Nonempty (H158FoldedSingletonWitness n p hp c) := by
  classical
  unfold h158HighHybridChoice
  split_ifs <;> simp_all

theorem h158HighHybridChoice_exception_generic (n p : ℕ) (hp : 0 < p)
    (c : H158OrbitClass n p hp) (hc : h158HybridExceptionalOrbit n p hp c) :
    h158HighHybridChoice n p hp c = none := by
  classical
  simp [h158HighHybridChoice, hc]

@[simp] theorem h158HighHybridChoice_central (n p : ℕ) (hp : 0 < p) :
    h158HighHybridChoice n p hp none = none :=
  h158HighHybridChoice_exception_generic n p hp none trivial

/-- Closed high-band primitive coefficient cost for the specified actual
choice. Only a threshold is supplied; the cells and their integral remain
separate proof obligations. The statement holds for every positive n. -/
theorem h158_primitive_cost_high_hybrid_marginal {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hhigh : 26*n < p) (tau : ℚ) (htau : 0 ≤ tau)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    -padicValRat p (h158PrimitiveScalar n) ≤
      ⌊h158HybridMarginalBudget n p (Fact.out : p.Prime).pos
        (h158HighHybridChoice n p (Fact.out : p.Prime).pos) tau⌋ := by
  have hp : 0 < p := (Fact.out : p.Prime).pos
  have hp27 : 27 ≤ p := by omega
  have hsq : 158*n+2 < p^2 := by nlinarith [Nat.mul_le_mul_left p hp27]
  have h := h158_primitive_cost_hybrid_marginal n hn hp (by omega) hhigh hsq
    (h158HighHybridChoice n p hp) tau htau hdet
  rwa [h158HybridMarginalCost_eq_floor n p hp hhigh] at h

theorem h158_primitive_cost_high_hybrid_marginal_rat {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hhigh : 26*n < p) (tau : ℚ) (htau : 0 ≤ tau)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    (-padicValRat p (h158PrimitiveScalar n) : ℚ) ≤
      h158HybridMarginalBudget n p (Fact.out : p.Prime).pos
        (h158HighHybridChoice n p (Fact.out : p.Prime).pos) tau := by
  have h := h158_primitive_cost_high_hybrid_marginal n hn hhigh tau htau hdet
  have hQ : (-padicValRat p (h158PrimitiveScalar n) : ℚ) ≤
      (⌊h158HybridMarginalBudget n p (Fact.out : p.Prime).pos
        (h158HighHybridChoice n p (Fact.out : p.Prime).pos) tau⌋ : ℤ) := by exact_mod_cast h
  exact hQ.trans (Int.floor_le _)

end OddZetaMixed
