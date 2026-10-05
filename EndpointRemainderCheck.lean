import OddZetaMixed.H158EndpointRemainder
import OddZetaMixed.TrustAudit

/-! Read-only regression review of the parent's finite endpoint correction. -/

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

namespace OddZetaMixed.EndpointRemainderCheck

open Finset LocalJetValuation WeightedSlotThreshold

/-- Independent integer-division version of the half-open interval count. -/
def integerInterval (p : ℕ) (A : ℤ) (m : ℕ) (c : ℤ) : ℤ :=
  (A + (m : ℤ) - c) / (p : ℤ) - (A - c) / (p : ℤ)

def enumeratedInterval (p : ℕ) (A : ℤ) (m : ℕ) (c : ℤ) : ℤ :=
  ∑ j ∈ range m, if (p : ℤ) ∣ A + 1 + (j : ℤ) - c then 1 else 0

def unshiftedIntegerCount (n p c : ℕ) : ℤ :=
  (∑ b ∈ range 16,
    integerInterval p (((53+b)*n : ℕ) : ℤ) ((52-2*b)*n) c) -
  (∑ a ∈ range 5,
    (integerInterval p 0 ((48+a)*n) c +
     integerInterval p (158*(n : ℤ)-(((48+a)*n : ℕ) : ℤ)) ((48+a)*n) c))

def actualIntegerCount (n p c : ℕ) : ℤ :=
  (∑ b ∈ range 16,
    integerInterval p (((53+b)*n : ℕ) : ℤ) ((52-2*b)*n+1) c) -
  ((if (p : ℤ) ∣ 79*(n : ℤ)+1-c then 1 else 0) +
    ∑ a ∈ range 5,
      (integerInterval p 0 ((48+a)*n) c +
       integerInterval p (158*(n : ℤ)+1-(((48+a)*n : ℕ) : ℤ)) ((48+a)*n) c))

theorem actualIntegerCount_eq (n p c : ℕ) (hp : 0 < p) :
    actualIntegerCount n p c = h158DenominatorCount p n c - h158NumeratorCount p n c := by
  rw [h158_denominator_count_floor p n c hp, h158_numerator_count_floor p n c hp]
  simp only [residueIntervalFloor_eq_ediv, actualIntegerCount, integerInterval]

theorem unshiftedIntegerCount_eq (n p c : ℕ) :
    h158UnshiftedClassCost n p c =
      unshiftedIntegerCount n p c - padicValRat p (h158Normalization n) + 4 := by
  simp only [h158UnshiftedClassCost, unshiftedIntegerCount, integerInterval,
    residueIntervalFloor_eq_ediv]

/-- Cancel the identical normalization without using the endpoint identity. -/
theorem actualDifference_eq_integer (n p c : ℕ) (hp : 0 < p) :
    h158ClassCost p n c - h158UnshiftedClassCost n p c =
      actualIntegerCount n p c - unshiftedIntegerCount n p c := by
  rw [unshiftedIntegerCount_eq, actualIntegerCount_eq n p c hp]
  unfold h158ClassCost
  ring

-- Negative anchors and representatives, and intervals crossing zero.
example : residueIntervalFloor 7 (-15) 20 (-3) = 3 := by
  rw [residueIntervalFloor_eq_ediv]
  norm_num

example : residueIntervalFloor 7 (-9) 6 (-2) = 0 := by
  rw [residueIntervalFloor_eq_ediv]
  norm_num

example : residueIntervalFloor 7 (-8) 6 (-2) = 1 := by
  rw [residueIntervalFloor_eq_ediv]
  norm_num

example : residueEndpoint 7 (-9) (-2) = 1 := by
  norm_num [residueEndpoint]

-- Exhaustive finite grids checked by ordinary kernel reduction.
theorem negative_anchor_grid :
    ∀ p : Fin 8, ∀ A : Fin 11, ∀ m : Fin 7, ∀ c : Fin (p.val+1),
      enumeratedInterval (p.val+1) ((A.val : ℤ)-5) m c.val =
        integerInterval (p.val+1) ((A.val : ℤ)-5) m c.val := by
  decide

theorem small_modulus_difference_grid :
    ∀ n : Fin 4, ∀ p : Fin 16, ∀ c : Fin (p.val+1),
      actualIntegerCount n.val (p.val+1) c.val -
        unshiftedIntegerCount n.val (p.val+1) c.val =
          h158EndpointError n.val (p.val+1) c.val := by
  decide

theorem small_modulus_l1_grid :
    ∀ n : Fin 4, ∀ p : Fin 16,
      (∑ c : Fin (p.val+1), |h158EndpointError n.val (p.val+1) c.val|) ≤ 27 := by
  decide

theorem modulus_one (n c : ℕ) : h158EndpointError n 1 c = 15 := by
  norm_num [h158EndpointError, residueEndpoint]

theorem zero_index (p c : ℕ) :
    h158EndpointError 0 p c = 15 * residueEndpoint p 1 c := by
  simp only [h158EndpointError, Nat.mul_zero, Nat.cast_zero, Int.mul_zero,
    sub_zero, zero_add, add_zero, sub_self, sum_const_zero, sum_const,
    card_range, nsmul_eq_mul]
  ring

theorem collision_503_grid :
    ∀ c : Fin 503,
      actualIntegerCount 503 503 c.val - unshiftedIntegerCount 503 503 c.val =
        (if c.val = 1 then 15 else 0) := by
  decide

theorem collision_503_endpoint_grid :
    ∀ c : Fin 503,
      h158EndpointError 503 503 c.val = (if c.val = 1 then 15 else 0) := by
  decide

example : (∑ c : Fin 503, |h158EndpointError 503 503 c.val|) = 15 := by
  simp_rw [collision_503_endpoint_grid]
  norm_num [Fin.sum_univ_succ]

theorem normalization_503 : padicValRat 503 (h158Normalization 503) = 92 := by
  rw [h158Normalization_valuation_main_prime 503 503
    (by norm_num) (by norm_num) (by norm_num)]
  norm_num [h158NormalizationFloor, Finset.sum_range_succ]

example : h158ClassCost 503 503 1 = 19 := by
  unfold h158ClassCost
  rw [← actualIntegerCount_eq 503 503 1 (by norm_num), normalization_503]
  norm_num [actualIntegerCount, integerInterval, Finset.sum_range_succ]

example : h158UnshiftedClassCost 503 503 1 = 4 := by
  rw [unshiftedIntegerCount_eq, normalization_503]
  norm_num [unshiftedIntegerCount, integerInterval, Finset.sum_range_succ]

example : h158ClassCost 503 503 0 = 4 := by
  unfold h158ClassCost
  rw [← actualIntegerCount_eq 503 503 0 (by norm_num), normalization_503]
  norm_num [actualIntegerCount, integerInterval, Finset.sum_range_succ]

theorem l1_bound_attained : (∑ c : Fin 211, |h158EndpointError 1 211 c.val|) = 27 := by
  decide

example : (∑ c : Fin 211,
    |h158ClassCost 211 1 c.val - h158UnshiftedClassCost 1 211 c.val|) = 27 := by
  simp_rw [h158ClassCost_eq_unshifted_add_error 1 211 _ (by norm_num),
    add_sub_cancel_left]
  exact l1_bound_attained

-- A threshold-crossing case: negative and positive weights both matter.
example : thresholdBudget (fun c : Fin 2 => if c.val = 0 then (-2 : ℚ) else 3)
    (fun _ => (1 : ℚ)) 1 2 (1/2) = 7/2 := by
  norm_num [thresholdBudget, Fin.sum_univ_succ, Finset.sum_range_succ]

-- The dependence on J is genuine even for a single class.
theorem one_class_linear_J (J : ℕ) :
    |thresholdBudget (fun _ : Fin 1 => (15 : ℚ)) (fun _ => 0) 0 J 0 -
      thresholdBudget (fun _ : Fin 1 => (0 : ℚ)) (fun _ => 0) 0 J 0| =
      15*(J : ℚ) := by
  simp [thresholdBudget, abs_of_nonneg (show (0 : ℚ) ≤ J*15 by positivity), mul_comm]

example (n p : ℕ) (hp : 0 < p) (e : Fin p → ℤ) (r J : ℕ) (tau : ℚ) :
    |rationalThresholdBudget (fun c : Fin p => h158ClassCost p n c.val) e r J tau -
      rationalThresholdBudget (fun c : Fin p => h158UnshiftedClassCost n p c.val)
        e r J tau| ≤ 27*(J : ℚ) :=
  h158_unshifted_threshold_error_le n p hp e r J tau

-- Parent append: the orbit set and its spacings are the actual folded ones.
example {p : ℕ} [Fact p.Prime] (n : ℕ) (hp : 0 < p) (hp2 : p ≠ 2) :
    (∑ c : H158OrbitClass n p hp,
      |h158FoldedWeight n p hp c-h158FoldedUnshiftedWeight n p hp c|) ≤ 27 :=
  h158FoldedWeight_unshifted_l1 n hp hp2

example {p : ℕ} [Fact p.Prime] (n : ℕ) (hp : 0 < p) (hp2 : p ≠ 2)
    (r J : ℕ) (tau : ℚ) :
    |rationalThresholdBudget (h158FoldedWeight n p hp)
        (h158FoldedSpacing n p hp) r J tau -
      rationalThresholdBudget (h158FoldedUnshiftedWeight n p hp)
        (h158FoldedSpacing n p hp) r J tau| ≤ 27*(J : ℚ) :=
  h158_folded_unshifted_threshold_error_le n hp hp2 r J tau

-- Fixed J=10, tau=0 satisfies the omitted-slot test uniformly in n.
example {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hp2 : p ≠ 2) (hsq : 158*n+2 < p^2) (hdet : (h158SevenMatrix n).det ≠ 0) :
    (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤ (h158RowFee n p : ℚ) +
      rationalThresholdBudget (h158FoldedUnshiftedWeight n p hp)
        (h158FoldedSpacing n p hp) (2*n) 10 0 + 270 := by
  simpa only [Nat.cast_ofNat, show (27 : ℚ)*10 = 270 by norm_num] using
    h158_primitive_cost_unshifted_threshold n hn hp hp2 hsq 10 0 (by norm_num) hdet

-- Equality in tau >= W-2J really kills the first omitted slot.
example : thresholdBudget (fun _ : Fin 1 => (20 : ℚ)) (fun _ => 1) 1 5 16 =
    thresholdBudget (fun _ : Fin 1 => (20 : ℚ)) (fun _ => 1) 1 2 16 := by
  norm_num [thresholdBudget, Fin.sum_univ_succ, Finset.sum_range_succ]

-- One unit below that threshold, blindly discarding those slots fails.
example : thresholdBudget (fun _ : Fin 1 => (20 : ℚ)) (fun _ => 1) 1 5 15 >
    thresholdBudget (fun _ : Fin 1 => (20 : ℚ)) (fun _ => 1) 1 2 15 := by
  norm_num [thresholdBudget, Fin.sum_univ_succ, Finset.sum_range_succ]

end OddZetaMixed.EndpointRemainderCheck

#print axioms OddZetaMixed.residueEndpoint_sum
#print axioms OddZetaMixed.residueIntervalFloor_succ_start
#print axioms OddZetaMixed.h158ClassCost_eq_unshifted_add_error
#print axioms OddZetaMixed.h158EndpointError_abs_sum_le
#print axioms OddZetaMixed.h158ClassCost_unshifted_l1
#print axioms OddZetaMixed.thresholdBudget_weight_lipschitz
#print axioms OddZetaMixed.h158_unshifted_threshold_error_le
#print axioms OddZetaMixed.h158FoldedWeight_unshifted_l1
#print axioms OddZetaMixed.h158_folded_unshifted_threshold_error_le
#print axioms OddZetaMixed.h158_primitive_cost_unshifted_threshold
#print axioms OddZetaMixed.thresholdBudget_truncate_le
#print axioms OddZetaMixed.h158FoldedWeight_le_twenty
#print axioms OddZetaMixed.h158_primitive_cost_truncated_folded_threshold

audit_project_axioms OddZetaMixed.EndpointRemainderCheck
