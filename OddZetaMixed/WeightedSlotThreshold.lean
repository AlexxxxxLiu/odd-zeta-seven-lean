import OddZetaMixed.WeightedBlockSelection

/-!
# Finite threshold certificates for signed weighted slots

The rank term `r * tau` retains negative selected slots. The finite threshold
inequality itself needs no sign assumption on the spacings. Nonnegative
spacings are required when it is transferred to actual block minor floors.

The summation results apply to both integer and rational thresholds. A
rational upper bound on an integer cost is rounded down before negation.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.WeightedSlotThreshold

open Finset FormalBlockSelection WeightedBlockSelection LocalJetValuation

variable {C R : Type*}

/-- The exact signed cost of the first `k c` slots in every class. -/
def allocationCost [Fintype C] [CommRing R] (w e : C → R) (k : C → ℕ) : R :=
  ∑ c, ((k c : R) * w c - e c * (k c : R) * ((k c : R) - 1))

/-- All available excesses above the threshold, plus the signed rank term. -/
def thresholdBudget [Fintype C] [CommRing R] [LinearOrder R]
    (w e : C → R) (r J : ℕ) (tau : R) : R :=
  (r : R) * tau + ∑ c, ∑ j ∈ range J, max (w c - 2 * e c * (j : R) - tau) 0

theorem signed_prefix_sum [CommRing R] (w e : R) (k : ℕ) :
    (∑ j ∈ range k, (w - 2 * e * (j : R))) =
      (k : R) * w - e * (k : R) * ((k : R) - 1) := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [sum_range_succ, ih]
    push_cast
    ring

theorem allocationCost_eq_prefix_sum [Fintype C] [CommRing R]
    (w e : C → R) (k : C → ℕ) :
    allocationCost w e k = ∑ c, ∑ j ∈ range (k c), (w c - 2 * e c * (j : R)) := by
  simp only [allocationCost, signed_prefix_sum]

/-- The elementary finite dual bound, without positivity or ordering
assumptions on the actual slots. -/
theorem sum_le_threshold_of_subset [CommRing R] [LinearOrder R] [IsStrictOrderedRing R]
    {I : Type*} [DecidableEq I] (s t : Finset I) (hst : s ⊆ t)
    (a : I → R) (tau : R) :
    (∑ i ∈ s, a i) ≤ (s.card : R) * tau + ∑ i ∈ t, max (a i - tau) 0 := by
  have hselected : (∑ i ∈ s, a i) ≤ ∑ i ∈ s, (tau + max (a i - tau) 0) := by
    apply sum_le_sum
    intro i hi
    calc
      a i = tau + (a i - tau) := by ring
      _ ≤ tau + max (a i - tau) 0 := add_le_add le_rfl (le_max_left _ _)
  have hexcess : (∑ i ∈ s, max (a i - tau) 0) ≤
      ∑ i ∈ t, max (a i - tau) 0 := by
    apply sum_le_sum_of_subset_of_nonneg hst
    intro i hi hnot
    exact le_max_right _ _
  calc
    _ ≤ ∑ i ∈ s, (tau + max (a i - tau) 0) := hselected
    _ = (s.card : R) * tau + ∑ i ∈ s, max (a i - tau) 0 := by
      rw [sum_add_distrib, sum_const, nsmul_eq_mul]
    _ ≤ _ := add_le_add le_rfl hexcess

theorem signed_prefix_le_threshold [CommRing R] [LinearOrder R] [IsStrictOrderedRing R]
    (w e tau : R) (k J : ℕ) (hk : k ≤ J) :
    (k : R) * w - e * (k : R) * ((k : R) - 1) ≤
      (k : R) * tau + ∑ j ∈ range J, max (w - 2 * e * (j : R) - tau) 0 := by
  rw [← signed_prefix_sum]
  simpa only [card_range] using
    sum_le_threshold_of_subset (range k) (range J) (range_mono hk)
      (fun j => w - 2 * e * (j : R)) tau

/-- The exact finite threshold upper certificate. It applies to every
allocation of rank `r` with at most `J` slots per class. -/
theorem allocationCost_le_thresholdBudget [Fintype C] [CommRing R]
    [LinearOrder R] [IsStrictOrderedRing R]
    (w e : C → R) (k : C → ℕ) (r J : ℕ)
    (hrank : (∑ c, k c) = r) (hcapacity : ∀ c, k c ≤ J) (tau : R) :
    allocationCost w e k ≤ thresholdBudget w e r J tau := by
  have hrank_cast : (∑ c, (k c : R)) = (r : R) := by
    rw [← Nat.cast_sum, hrank]
  calc
    _ ≤ ∑ c, ((k c : R) * tau +
        ∑ j ∈ range J, max (w c - 2 * e c * (j : R) - tau) 0) := by
      apply sum_le_sum
      intro c hc
      exact signed_prefix_le_threshold (w c) (e c) tau (k c) J (hcapacity c)
    _ = thresholdBudget w e r J tau := by
      rw [sum_add_distrib, ← sum_mul, hrank_cast]
      rfl

theorem weightedAllocationFloor_eq_neg_allocationCost [Fintype C] [DecidableEq C] {r J : ℕ}
    (w e : C → ℤ) (f : Fin r → C × Fin J) :
    weightedAllocationFloor w e f = -allocationCost w e (classCount f) := by
  unfold weightedAllocationFloor allocationCost
  rw [← sum_neg_distrib]
  apply sum_congr rfl
  intro c hc
  ring

theorem neg_thresholdBudget_le_weightedAllocationFloor [Fintype C] [DecidableEq C] {r J : ℕ}
    (w e : C → ℤ) (tau : ℤ) (f : Fin r → C × Fin J)
    (hf : Function.Injective f) :
    -thresholdBudget w e r J tau ≤ weightedAllocationFloor w e f := by
  rw [weightedAllocationFloor_eq_neg_allocationCost]
  exact neg_le_neg (allocationCost_le_thresholdBudget w e (classCount f) r J
    (classCount_sum f) (classCount_le_jet_count f hf) tau)

/-- Coefficientwise floor from actual entry bounds and a chosen threshold.
There is no separate allocation or selected-minor hypothesis. -/
theorem formal_block_minor_threshold_floor [Fintype C] [DecidableEq C] {p r J : ℕ}
    [Fact p.Prime] (A : C → Matrix (Fin J) (Fin J) SevenPolynomial)
    (w e : C → ℤ) (he : ∀ c, 0 ≤ e c)
    (hentry : ∀ c u v, FormalAtLeast p
      (-w c + e c * (u.val : ℤ) + e c * (v.val : ℤ)) (A c u v))
    (tau : ℤ) (f g : Fin r → C × Fin J)
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p (-thresholdBudget w e r J tau)
      ((blockMatrix A).submatrix f g).det :=
  formal_mono (formal_block_minor_weighted_allocation_floor A w e he hentry f g hf hg)
    (neg_thresholdBudget_le_weightedAllocationFloor w e tau f hf)

def rationalThresholdBudget [Fintype C] (w e : C → ℤ) (r J : ℕ) (tau : ℚ) : ℚ :=
  thresholdBudget (fun c => (w c : ℚ)) (fun c => (e c : ℚ)) r J tau

theorem allocationCost_cast_rat [Fintype C] (w e : C → ℤ) (k : C → ℕ) :
    ((allocationCost w e k : ℤ) : ℚ) =
      allocationCost (fun c => (w c : ℚ)) (fun c => (e c : ℚ)) k := by
  simp only [allocationCost, Int.cast_sum, Int.cast_sub, Int.cast_mul,
    Int.cast_natCast, Int.cast_one]

/-- The integer cost is bounded by the floor, not merely the ceiling,
of any rational threshold certificate. -/
theorem allocationCost_le_floor_rationalThresholdBudget [Fintype C]
    (w e : C → ℤ) (k : C → ℕ) (r J : ℕ)
    (hrank : (∑ c, k c) = r) (hcapacity : ∀ c, k c ≤ J) (tau : ℚ) :
    allocationCost w e k ≤ ⌊rationalThresholdBudget w e r J tau⌋ := by
  apply Int.le_floor.mpr
  rw [allocationCost_cast_rat]
  exact allocationCost_le_thresholdBudget
    (fun c => (w c : ℚ)) (fun c => (e c : ℚ)) k r J hrank hcapacity tau

theorem neg_floor_rationalThresholdBudget_le_weightedAllocationFloor [Fintype C] [DecidableEq C]
    {r J : ℕ} (w e : C → ℤ) (tau : ℚ) (f : Fin r → C × Fin J)
    (hf : Function.Injective f) :
    -⌊rationalThresholdBudget w e r J tau⌋ ≤ weightedAllocationFloor w e f := by
  rw [weightedAllocationFloor_eq_neg_allocationCost]
  exact neg_le_neg (allocationCost_le_floor_rationalThresholdBudget
    w e (classCount f) r J (classCount_sum f) (classCount_le_jet_count f hf) tau)

/-- Rational-threshold version of the actual block minor certificate. -/
theorem formal_block_minor_rational_threshold_floor [Fintype C] [DecidableEq C] {p r J : ℕ}
    [Fact p.Prime] (A : C → Matrix (Fin J) (Fin J) SevenPolynomial)
    (w e : C → ℤ) (he : ∀ c, 0 ≤ e c)
    (hentry : ∀ c u v, FormalAtLeast p
      (-w c + e c * (u.val : ℤ) + e c * (v.val : ℤ)) (A c u v))
    (tau : ℚ) (f g : Fin r → C × Fin J)
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p (-⌊rationalThresholdBudget w e r J tau⌋)
      ((blockMatrix A).submatrix f g).det :=
  formal_mono (formal_block_minor_weighted_allocation_floor A w e he hentry f g hf hg)
    (neg_floor_rationalThresholdBudget_le_weightedAllocationFloor w e tau f hf)

@[simp] theorem rationalThresholdBudget_int [Fintype C]
    (w e : C → ℤ) (r J : ℕ) (tau : ℤ) :
    rationalThresholdBudget w e r J (tau : ℚ) = ((thresholdBudget w e r J tau : ℤ) : ℚ) := by
  simp only [rationalThresholdBudget, thresholdBudget, Int.cast_add, Int.cast_mul,
    Int.cast_natCast, Int.cast_sum, Int.cast_max, Int.cast_sub, Int.cast_ofNat,
    Int.cast_zero]

end OddZetaMixed.WeightedSlotThreshold
