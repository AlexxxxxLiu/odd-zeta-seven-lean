import OddZetaMixed.H158FoldedAssembly
import OddZetaMixed.H158CountReflection
import OddZetaMixed.WeightedSlotThreshold

/-!
# Explicit signed thresholds for the actual folded determinant

Every rational threshold gives a finite upper bound on the original
primitive cost. There is no premise about selected minors or allocations.
This finite formula is not by itself its uniform asymptotic integral bound.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed
open Finset LocalJetValuation WeightedSlotThreshold

/-- A certified threshold discards every slot beyond J, independently of
the original jet capacity. The rank term is retained, including its sign. -/
theorem thresholdBudget_truncate_le {C : Type*} [Fintype C]
    (w e : C → ℚ) (r M J : ℕ) (tau W : ℚ)
    (hw : ∀ c, w c ≤ W) (he : ∀ c, 1 ≤ e c) (htau : W-2*(J : ℚ) ≤ tau) :
    thresholdBudget w e r M tau ≤ thresholdBudget w e r J tau := by
  classical
  unfold thresholdBudget
  apply add_le_add le_rfl
  apply sum_le_sum
  intro c hc
  by_cases hMJ : M ≤ J
  · exact sum_le_sum_of_subset_of_nonneg (range_mono hMJ) (fun j hj hnot => le_max_right _ _)
  · have hJM : J ≤ M := by omega
    have heq : (∑ j ∈ range J, max (w c-2*e c*(j : ℚ)-tau) 0) =
        ∑ j ∈ range M, max (w c-2*e c*(j : ℚ)-tau) 0 := by
      apply sum_subset (range_mono hJM)
      intro j hj hjn
      have hJj : (J : ℚ) ≤ j := by exact_mod_cast (show J ≤ j by simpa using hjn)
      have he' := mul_le_mul_of_nonneg_right (he c) (show (0 : ℚ) ≤ j by positivity)
      have harg : w c-2*e c*(j : ℚ)-tau ≤ 0 := by nlinarith [hw c]
      exact max_eq_right harg
    exact le_of_eq heq.symm

def h158FoldedThresholdCost (n p : ℕ) (hp : 0 < p) (tau : ℚ) : ℤ :=
  (h158RowFee n p : ℤ) +
    ⌊rationalThresholdBudget (h158FoldedWeight n p hp)
      (h158FoldedSpacing n p hp) (2*n) (4*n) tau⌋

theorem h158_folded_threshold_determinant_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (tau : ℚ) :
    FormalAtLeast p (-h158FoldedThresholdCost n p hp tau) (h158SevenMatrix n).det := by
  have halloc : ∀ k : H158OrbitClass n p hp → ℕ,
      (∑ c, k c) = 2*n → (∀ c, k c ≤ 4*n) →
      -⌊rationalThresholdBudget (h158FoldedWeight n p hp)
          (h158FoldedSpacing n p hp) (2*n) (4*n) tau⌋ ≤
        ∑ c, (-(k c : ℤ)*h158FoldedWeight n p hp c+
          h158FoldedSpacing n p hp c*(k c : ℤ)*((k c : ℤ)-1)) := by
    intro k hr hk
    have h := neg_le_neg (allocationCost_le_floor_rationalThresholdBudget
      (h158FoldedWeight n p hp) (h158FoldedSpacing n p hp) k (2*n) (4*n) hr hk tau)
    have he : (∑ c, (-(k c : ℤ)*h158FoldedWeight n p hp c+
        h158FoldedSpacing n p hp c*(k c : ℤ)*((k c : ℤ)-1))) =
        -allocationCost (h158FoldedWeight n p hp) (h158FoldedSpacing n p hp) k := by
      simp only [allocationCost, ← sum_neg_distrib]
      apply sum_congr rfl
      intro c hc
      ring
    rw [he]
    exact h
  have h := h158_folded_det_floor_of_allocation_bound n hn hp hp2 hsq _ halloc
  convert h using 1
  unfold h158FoldedThresholdCost
  ring

/-- The bound applies to the Gauss valuation of the whole coefficient
polynomial, not just a numerical specialization or the zeta coefficients. -/
theorem h158_primitive_cost_folded_threshold {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (tau : ℚ) (hdet : (h158SevenMatrix n).det ≠ 0) :
    -padicValRat p (h158PrimitiveScalar n) ≤ h158FoldedThresholdCost n p hp tau := by
  have h := formal_gauss_lower
    (h158_folded_threshold_determinant_floor n hn hp hp2 hsq tau) hdet
  rw [h158PrimitiveScalar_gauss_valuation n hdet p (Fact.out : p.Prime)] at h
  omega

/-- Finitely many candidate thresholds may be compared without changing
the object or spending any extra arithmetic normalization. -/
theorem h158_primitive_cost_folded_threshold_min {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (s : Finset ℚ) (hs : s.Nonempty)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    -padicValRat p (h158PrimitiveScalar n) ≤ s.inf' hs (h158FoldedThresholdCost n p hp) := by
  apply (Finset.le_inf'_iff hs _).2
  intro tau htau
  exact h158_primitive_cost_folded_threshold n hn hp hp2 hsq tau hdet

theorem h158FoldedWeight_le_twenty {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 158*n+2 < p^2)
    (c : H158OrbitClass n p hp) : h158FoldedWeight n p hp c ≤ 20 := by
  cases c with
  | none => exact h158ClassCost_le_twenty p n _ hn (Fact.out : p.Prime) hsq
  | some c =>
    exact max_le (h158ClassCost_le_twenty p n _ hn (Fact.out : p.Prime) hsq)
      (h158ClassCost_le_twenty p n _ hn (Fact.out : p.Prime) hsq)

/-- The actual determinant may be bounded using a number of threshold
slots that does not grow with n. The explicit omitted-slot test is required. -/
theorem h158_primitive_cost_truncated_folded_threshold {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (J : ℕ) (tau : ℚ) (htau : 20-2*(J : ℚ) ≤ tau)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    -padicValRat p (h158PrimitiveScalar n) ≤ (h158RowFee n p : ℤ) +
      ⌊rationalThresholdBudget (h158FoldedWeight n p hp)
        (h158FoldedSpacing n p hp) (2*n) J tau⌋ := by
  apply (h158_primitive_cost_folded_threshold n hn hp hp2 hsq tau hdet).trans
  unfold h158FoldedThresholdCost
  apply add_le_add le_rfl
  apply Int.floor_mono
  apply thresholdBudget_truncate_le _ _ (2*n) (4*n) J tau 20
  · intro c
    exact_mod_cast h158FoldedWeight_le_twenty n hn hp hsq c
  · intro c
    cases c <;> norm_num [h158FoldedSpacing]
  · exact htau

end OddZetaMixed
