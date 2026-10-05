import OddZetaMixed.H158ResidueCounts
import OddZetaMixed.H158ReflectionOrbits
import OddZetaMixed.WeightedSlotThreshold
import OddZetaMixed.H158ThresholdBudget

/-!
# Uniform finite endpoint corrections

The unshifted floor profile is not the actual residue profile. The total
absolute discrepancy is at most 27 over all residue classes, including
coincident endpoints and primes dividing n. This does not yet evaluate
the piecewise global prime budget.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed
open Finset LocalJetValuation WeightedSlotThreshold

def residueEndpoint (p : ℕ) (x c : ℤ) : ℤ :=
  if (p : ℤ) ∣ x-c then 1 else 0

theorem residueEndpoint_nonneg (p : ℕ) (x c : ℤ) : 0 ≤ residueEndpoint p x c := by
  unfold residueEndpoint
  split_ifs <;> norm_num

theorem residueEndpoint_sum (p : ℕ) (hp : 0 < p) (x : ℤ) :
    (∑ c : Fin p, residueEndpoint p x c.val) = 1 := by
  classical
  have he (c : Fin p) : ((p : ℤ) ∣ x-(c.val : ℤ)) ↔
      c = h158IntResidue p hp x := by
    rw [← ZMod.intCast_zmod_eq_zero_iff_dvd]
    simp only [Int.cast_sub, Int.cast_natCast, sub_eq_zero]
    have h := h158IntResidue_eq_iff p hp x (c.val : ℤ)
    rw [h158IntResidue_of_val] at h
    simpa only [Int.cast_natCast] using h.symm.trans eq_comm
  simp only [residueEndpoint, he]
  simp

theorem residueIntervalFloor_single (p : ℕ) (hp : 0 < p) (A c : ℤ) :
    residueIntervalFloor p A 1 c = residueEndpoint p (A+1) c := by
  simpa only [sum_range_succ, sum_range_zero, zero_add, Nat.cast_zero, add_zero,
    residueEndpoint] using (residue_interval_sum_floor p hp A 1 c).symm

theorem residueIntervalFloor_succ_length (p : ℕ) (hp : 0 < p)
    (A c : ℤ) (m : ℕ) :
    residueIntervalFloor p A (m+1) c =
      residueIntervalFloor p A m c + residueEndpoint p (A+(m : ℤ)+1) c := by
  rw [← residue_interval_sum_floor p hp, sum_range_succ,
    residue_interval_sum_floor p hp]
  congr 1
  simp only [residueEndpoint]
  congr 2
  ring

theorem residueIntervalFloor_succ_start (p : ℕ) (hp : 0 < p)
    (A c : ℤ) (m : ℕ) :
    residueIntervalFloor p (A+1) m c = residueIntervalFloor p A m c +
      residueEndpoint p (A+(m : ℤ)+1) c - residueEndpoint p (A+1) c := by
  rw [← residueIntervalFloor_single p hp A c,
    ← residueIntervalFloor_single p hp (A+(m : ℤ)) c]
  unfold residueIntervalFloor
  push_cast
  have he : (A : ℚ)+1+(m : ℚ)-c = (A : ℚ)+(m : ℚ)+1-c := by ring
  rw [he]
  ring

def h158UnshiftedClassCost (n p c : ℕ) : ℤ :=
  (∑ b ∈ range 16,
    residueIntervalFloor p (((53+b)*n : ℕ) : ℤ) ((52-2*b)*n) c) -
  (∑ a ∈ range 5,
    (residueIntervalFloor p 0 ((48+a)*n) c +
     residueIntervalFloor p (158*(n : ℤ)-(((48+a)*n : ℕ) : ℤ)) ((48+a)*n) c)) -
    padicValRat p (h158Normalization n)+4

def h158EndpointError (n p c : ℕ) : ℤ :=
  (∑ b ∈ range 16,
    residueEndpoint p ((((53+b)*n : ℕ) : ℤ)+(((52-2*b)*n : ℕ) : ℤ)+1) c) -
  (∑ a ∈ range 5,
    (residueEndpoint p (158*(n : ℤ)+1) c -
     residueEndpoint p (158*(n : ℤ)-(((48+a)*n : ℕ) : ℤ)+1) c)) -
    residueEndpoint p (79*(n : ℤ)+1) c

theorem h158ClassCost_eq_unshifted_add_error (n p c : ℕ) (hp : 0 < p) :
    h158ClassCost p n c = h158UnshiftedClassCost n p c + h158EndpointError n p c := by
  unfold h158ClassCost h158UnshiftedClassCost h158EndpointError
  rw [h158_denominator_count_floor p n c hp, h158_numerator_count_floor p n c hp]
  simp_rw [residueIntervalFloor_succ_length p hp]
  have hnum (a : ℕ) :
      residueIntervalFloor p (158*(n : ℤ)+1-(((48+a)*n : ℕ) : ℤ)) ((48+a)*n) c =
      residueIntervalFloor p (158*(n : ℤ)-(((48+a)*n : ℕ) : ℤ)) ((48+a)*n) c +
        residueEndpoint p (158*(n : ℤ)+1) c -
        residueEndpoint p (158*(n : ℤ)-(((48+a)*n : ℕ) : ℤ)+1) c := by
    have he : 158*(n : ℤ)+1-(((48+a)*n : ℕ) : ℤ) =
        (158*(n : ℤ)-(((48+a)*n : ℕ) : ℤ))+1 := by ring
    rw [he, residueIntervalFloor_succ_start p hp]
    simp only [sub_add_cancel]
  simp_rw [hnum]
  simp only [sum_add_distrib, sum_sub_distrib]
  change _ - (residueEndpoint p (79*(n : ℤ)+1) c + _) - _ + 4 = _
  ring

theorem h158EndpointError_abs_sum_le (n p : ℕ) (hp : 0 < p) :
    (∑ c : Fin p, |h158EndpointError n p c.val|) ≤ 27 := by
  have hpoint (c : Fin p) : |h158EndpointError n p c.val| ≤
      (∑ b ∈ range 16,
        residueEndpoint p ((((53+b)*n : ℕ) : ℤ)+(((52-2*b)*n : ℕ) : ℤ)+1) c.val) +
      (∑ a ∈ range 5,
        (residueEndpoint p (158*(n : ℤ)+1) c.val +
         residueEndpoint p (158*(n : ℤ)-(((48+a)*n : ℕ) : ℤ)+1) c.val)) +
      residueEndpoint p (79*(n : ℤ)+1) c.val := by
    unfold h158EndpointError
    simp only [sum_sub_distrib, sum_add_distrib]
    have hd := sum_nonneg (s := range 16) (fun b _ =>
      residueEndpoint_nonneg p
        ((((53+b)*n : ℕ) : ℤ)+(((52-2*b)*n : ℕ) : ℤ)+1) c.val)
    have hu := sum_nonneg (s := range 5) (fun _ _ =>
      residueEndpoint_nonneg p (158*(n : ℤ)+1) c.val)
    have hl := sum_nonneg (s := range 5) (fun a _ =>
      residueEndpoint_nonneg p (158*(n : ℤ)-(((48+a)*n : ℕ) : ℤ)+1) c.val)
    have hc := residueEndpoint_nonneg p (79*(n : ℤ)+1) c.val
    exact abs_le.mpr ⟨by linarith, by linarith⟩
  calc
    _ ≤ _ := sum_le_sum fun c _ => hpoint c
    _ = 27 := by
      simp only [sum_add_distrib]
      rw [sum_comm (s := univ) (t := range 16), sum_comm (s := univ) (t := range 5),
        sum_comm (s := univ) (t := range 5)]
      simp only [residueEndpoint_sum p hp, sum_const, card_range]
      norm_num

theorem h158ClassCost_unshifted_l1 (n p : ℕ) (hp : 0 < p) :
    (∑ c : Fin p, |h158ClassCost p n c.val - h158UnshiftedClassCost n p c.val|) ≤ 27 := by
  simp_rw [h158ClassCost_eq_unshifted_add_error n p _ hp, add_sub_cancel_left]
  exact h158EndpointError_abs_sum_le n p hp

/-- Threshold optimization is Lipschitz in the weights. In particular,
endpoint errors cannot be dropped before applying the positive-part map. -/
theorem thresholdBudget_weight_lipschitz {C : Type*} [Fintype C]
    (w w' e : C → ℚ) (r J : ℕ) (tau : ℚ) :
    |thresholdBudget w e r J tau - thresholdBudget w' e r J tau| ≤
      (J : ℚ)*(∑ c, |w c-w' c|) := by
  classical
  unfold thresholdBudget
  rw [add_sub_add_left_eq_sub, ← sum_sub_distrib]
  calc
    _ ≤ ∑ c, |(∑ j ∈ range J, max (w c-2*e c*(j : ℚ)-tau) 0) -
        ∑ j ∈ range J, max (w' c-2*e c*(j : ℚ)-tau) 0| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ c, ∑ j ∈ range J, |w c-w' c| := by
      apply sum_le_sum
      intro c hc
      rw [← sum_sub_distrib]
      apply (abs_sum_le_sum_abs _ _).trans
      apply sum_le_sum
      intro j hj
      have he : (w c-2*e c*(j : ℚ)-tau)-(w' c-2*e c*(j : ℚ)-tau) = w c-w' c := by ring
      simpa only [he] using abs_max_sub_max_le_abs (w c-2*e c*(j : ℚ)-tau)
        (w' c-2*e c*(j : ℚ)-tau) 0
    _ = _ := by simp only [sum_const, card_range, nsmul_eq_mul, mul_sum]

theorem h158_unshifted_threshold_error_le (n p : ℕ) (hp : 0 < p)
    (e : Fin p → ℤ) (r J : ℕ) (tau : ℚ) :
    |rationalThresholdBudget (fun c : Fin p => h158ClassCost p n c.val) e r J tau -
      rationalThresholdBudget (fun c : Fin p => h158UnshiftedClassCost n p c.val)
        e r J tau| ≤ 27*(J : ℚ) := by
  have hmass : (∑ c : Fin p,
      |(h158ClassCost p n c.val : ℚ)-(h158UnshiftedClassCost n p c.val : ℚ)|) ≤ 27 := by
    exact_mod_cast h158ClassCost_unshifted_l1 n p hp
  have h := thresholdBudget_weight_lipschitz
    (fun c : Fin p => (h158ClassCost p n c.val : ℚ))
    (fun c : Fin p => (h158UnshiftedClassCost n p c.val : ℚ))
    (fun c => (e c : ℚ)) r J tau
  exact h.trans (by nlinarith [mul_le_mul_of_nonneg_left hmass (show (0 : ℚ) ≤ J by positivity)])

def h158FoldedUnshiftedWeight (n p : ℕ) (hp : 0 < p)
    (c : H158OrbitClass n p hp) : ℤ :=
  match c with
  | none => h158UnshiftedClassCost n p (h158CentralClass n p hp)
  | some c => max (h158UnshiftedClassCost n p c.val)
      (h158UnshiftedClassCost n p (h158ReflectionClass n p hp c.val))

theorem h158FoldedWeight_unshifted_l1 {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hp : 0 < p) (hp2 : p ≠ 2) :
    (∑ c : H158OrbitClass n p hp,
      |h158FoldedWeight n p hp c-h158FoldedUnshiftedWeight n p hp c|) ≤ 27 := by
  classical
  let f (c : Fin p) : ℤ := |h158ClassCost p n c.val-h158UnshiftedClassCost n p c.val|
  have hsum : (∑ c : Fin p, f c) =
      (∑ c : H158PairClass n p hp, (f c.val+f (h158ReflectionClass n p hp c.val))) +
        f (h158CentralClass n p hp) := by
    rw [sum_involution_orbits (h158ReflectionClass n p hp)
      (h158ReflectionClass_involutive n p hp)]
    simp only [h158ReflectionClass_fixed_iff n hp hp2, sum_filter,
      sum_ite_eq', mem_univ, ite_true]
    congr 1
    rw [← sum_filter]
    exact Finset.sum_subtype _ (fun c => by simp) _
  calc
    _ ≤ (∑ c : H158PairClass n p hp,
        (f c.val+f (h158ReflectionClass n p hp c.val))) + f (h158CentralClass n p hp) := by
      rw [Fintype.sum_option, add_comm]
      apply add_le_add _ le_rfl
      apply sum_le_sum
      intro c hc
      apply (abs_max_sub_max_le_max _ _ _ _).trans
      apply max_le
      · exact le_add_of_nonneg_right (abs_nonneg _)
      · exact le_add_of_nonneg_left (abs_nonneg _)
    _ = ∑ c : Fin p, f c := hsum.symm
    _ ≤ 27 := h158ClassCost_unshifted_l1 n p hp

theorem h158_folded_unshifted_threshold_error_le {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hp : 0 < p) (hp2 : p ≠ 2) (r J : ℕ) (tau : ℚ) :
    |rationalThresholdBudget (h158FoldedWeight n p hp) (h158FoldedSpacing n p hp) r J tau -
      rationalThresholdBudget (h158FoldedUnshiftedWeight n p hp)
        (h158FoldedSpacing n p hp) r J tau| ≤ 27*(J : ℚ) := by
  have hmass : (∑ c : H158OrbitClass n p hp,
      |(h158FoldedWeight n p hp c : ℚ)-(h158FoldedUnshiftedWeight n p hp c : ℚ)|) ≤ 27 := by
    exact_mod_cast h158FoldedWeight_unshifted_l1 n hp hp2
  have h := thresholdBudget_weight_lipschitz
    (fun c : H158OrbitClass n p hp => (h158FoldedWeight n p hp c : ℚ))
    (fun c : H158OrbitClass n p hp => (h158FoldedUnshiftedWeight n p hp c : ℚ))
    (fun c => (h158FoldedSpacing n p hp c : ℚ)) r J tau
  exact h.trans (by nlinarith [mul_le_mul_of_nonneg_left hmass (show (0 : ℚ) ≤ J by positivity)])

/-- Actual Gauss cost through the unshifted finite profile, with the full
endpoint charge and a certified bound on omitted slots. -/
theorem h158_primitive_cost_unshifted_threshold {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (J : ℕ) (tau : ℚ) (htau : 20-2*(J : ℚ) ≤ tau)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤ (h158RowFee n p : ℚ) +
      rationalThresholdBudget (h158FoldedUnshiftedWeight n p hp)
        (h158FoldedSpacing n p hp) (2*n) J tau + 27*(J : ℚ) := by
  have hc := h158_primitive_cost_truncated_folded_threshold n hn hp hp2 hsq J tau htau hdet
  have hfloor := Int.floor_le (rationalThresholdBudget (h158FoldedWeight n p hp)
    (h158FoldedSpacing n p hp) (2*n) J tau)
  have hbound := (le_abs_self _).trans (h158_folded_unshifted_threshold_error_le n hp hp2 (2*n) J tau)
  have hc' : (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤ (h158RowFee n p : ℚ) +
      (⌊rationalThresholdBudget (h158FoldedWeight n p hp)
        (h158FoldedSpacing n p hp) (2*n) J tau⌋ : ℤ) := by exact_mod_cast hc
  linarith

end OddZetaMixed
