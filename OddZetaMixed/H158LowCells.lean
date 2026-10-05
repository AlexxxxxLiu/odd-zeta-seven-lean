import OddZetaMixed.H158MiddleCells
import OddZetaMixed.H158IntegerValuedJets
import OddZetaMixed.H158PrimeProfileRate

/-!
# Source-linked low-band threshold certificates

The finite bounds below start at the original determinant and residue counts.
Reflection, the fixed central residue, and the full endpoint L1 charge are
retained before any lattice or integral comparison. In particular no generic
prime assumption excluding divisors of n is used.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.H158LowCells

open Finset Filter LocalJetValuation WeightedSlotThreshold H158MiddleCells

/-- Folding saves a factor two on the actual residue sum, with an explicit
fixed-point charge. The central block is never silently discarded. -/
theorem folded_threshold_le_half_residues {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (J : ℕ) (tau : ℚ) :
    rationalThresholdBudget (h158FoldedWeight n p hp) (h158FoldedSpacing n p hp)
        (2*n) J tau ≤
      2*(n : ℚ)*tau +
        (∑ c : Fin p, slotExcess J tau (h158ClassCost p n c.val))/2 +
          (J : ℚ)*max (20-tau) 0/2 := by
  simpa only [Nat.cast_mul, Nat.cast_ofNat] using
    H158MiddleCells.folded_threshold_le_full n hn hp hp2 hsq (2*n) J tau

/-- The actual count-to-profile discrepancy stays O(J), not O(nJ). -/
theorem excess_residues_unshifted_error (n p : ℕ) (hp : 0 < p)
    (J : ℕ) (tau : ℚ) :
    |(∑ c : Fin p, slotExcess J tau (h158ClassCost p n c.val)) -
      ∑ c : Fin p, slotExcess J tau (h158UnshiftedClassCost n p c.val)| ≤ 27*(J : ℚ) := by
  have h := h158_unshifted_threshold_error_le n p hp (fun _ => 1) 0 J tau
  simpa only [rationalThresholdBudget, thresholdBudget, slotExcess, Nat.cast_zero,
    zero_mul, zero_add, Int.cast_one, mul_one] using h

/-- A finite bound for the original primitive scalar, with no assumed local
inequality or asymptotic profile approximation. -/
theorem primitive_cost_le_profile_sum {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (J : ℕ) (tau : ℚ) (htau : 20-2*(J : ℚ) ≤ tau)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤
      (h158RowFee n p : ℚ) + 2*(n : ℚ)*tau +
        (∑ c : Fin p, profileExcess J tau ((p : ℚ)/n) ((c.val : ℚ)/n))/2 +
          (27*(J : ℚ)+(J : ℚ)*max (20-tau) 0)/2 := by
  have hc := h158_primitive_cost_truncated_folded_threshold n hn hp hp2 hsq J tau htau hdet
  have hcq : (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤
      (h158RowFee n p : ℚ) +
        (⌊rationalThresholdBudget (h158FoldedWeight n p hp)
          (h158FoldedSpacing n p hp) (2*n) J tau⌋ : ℤ) := by exact_mod_cast hc
  have hf := Int.floor_le (rationalThresholdBudget (h158FoldedWeight n p hp)
    (h158FoldedSpacing n p hp) (2*n) J tau)
  have hb := folded_threshold_le_half_residues n hn hp hp2 hsq J tau
  have he := (abs_le.mp (excess_residues_unshifted_error n p hp J tau)).2
  have hprofile : (∑ c : Fin p,
      profileExcess J tau ((p : ℚ)/n) ((c.val : ℚ)/n)) =
        ∑ c : Fin p, slotExcess J tau (h158UnshiftedClassCost n p c.val) := by
    apply sum_congr rfl
    intro c hc'
    unfold profileExcess
    rw [floorProfile_eq_unshifted n p c.val hn Fact.out hsq]
  rw [hprofile]
  linarith

/-- The exact row surcharge has the advertised affine upper bound. -/
theorem rowFee_le (n p : ℕ) (hp : 0 < p) (hodd : Odd p) :
    (h158RowFee n p : ℚ) ≤
      (n : ℚ)*(4*((4*n/p : ℕ) : ℚ) -
        ((p : ℚ)/n)*((4*n/p : ℕ) : ℚ)*(((4*n/p : ℕ) : ℚ)+1)/2) := by
  by_cases hn : n = 0
  · subst n
    simp [h158RowFee]
  have hnq : (n : ℚ) ≠ 0 := by exact_mod_cast hn
  rw [h158RowFee_exact n p hp hodd]
  have hlast : (0 : ℚ) ≤ (((4*n/p+1)/2 : ℕ) : ℚ) := by positivity
  have he : (n : ℚ)*(4*((4*n/p : ℕ) : ℚ) -
      ((p : ℚ)/n)*((4*n/p : ℕ) : ℚ)*(((4*n/p : ℕ) : ℚ)+1)/2) =
      4*(n : ℚ)*((4*n/p : ℕ) : ℚ) -
        (p : ℚ)*((4*n/p : ℕ) : ℚ)*(((4*n/p : ℕ) : ℚ)+1)/2 := by
    field_simp
  rw [he]
  linarith

def qNormalization (q : ℚ) : ℤ :=
  (∑ b ∈ range 16, ⌊((52-2*b : ℕ) : ℚ)*q⌋) -
    2*(∑ a ∈ range 5, ⌊((48+a : ℕ) : ℚ)*q⌋)

def qProfile (q y : ℚ) : ℤ :=
  profileFromFloors (fun i => ⌊endpoint i*q-y⌋) (qNormalization q)

theorem qProfile_eq_floorProfile (q y : ℚ) (hq : q ≠ 0) :
    qProfile q y = floorProfile (1/q) (y/q) := by
  rw [floorProfile_fromFloors]
  have hf (i : ℕ) : (endpoint i-y/q)/(1/q) = endpoint i*q-y := by field_simp
  simp only [hf, normalization, div_div_eq_mul_div, div_one, qProfile, qNormalization]

theorem qProfile_eq_unshifted (n p c : ℕ) (hn : 0 < n) (hp : p.Prime)
    (hsq : 158*n+2 < p^2) :
    qProfile ((n : ℚ)/p) ((c : ℚ)/p) = h158UnshiftedClassCost n p c := by
  have hnq : (n : ℚ) ≠ 0 := by exact_mod_cast hn.ne'
  have hpq : (p : ℚ) ≠ 0 := by exact_mod_cast hp.ne_zero
  rw [qProfile_eq_floorProfile _ _ (div_ne_zero hnq hpq)]
  have hx : (1 : ℚ)/((n : ℚ)/p) = (p : ℚ)/n := by field_simp
  have hy : ((c : ℚ)/p)/((n : ℚ)/p) = (c : ℚ)/n := by field_simp
  rw [hx, hy, floorProfile_eq_unshifted n p c hn hp hsq]

theorem qProfile_y_period (q y : ℚ) : qProfile q (y+1) = qProfile q y := by
  unfold qProfile profileFromFloors
  have hf (A : ℚ) : ⌊A*q-(y+1)⌋ = ⌊A*q-y⌋-1 := by
    rw [show A*q-(y+1) = (A*q-y)-1 by ring, Int.floor_sub_one]
  simp only [hf, sum_sub_distrib, sum_const, card_range]
  norm_num
  ring

/-- Reciprocal periodicity is exact, including the normalization floors. -/
theorem qProfile_period (q y : ℚ) (k : ℤ) : qProfile (q+k) y = qProfile q y := by
  let z (i : ℕ) : ℤ :=
    if i = 0 then 0 else if i < 22 then 47+i else if i < 43 then 68+i else 158
  have hz (i : ℕ) : (z i : ℚ) = endpoint i := by
    dsimp [z, endpoint]
    split_ifs <;> push_cast <;> rfl
  have hf (i : ℕ) : ⌊endpoint i*(q+k)-y⌋ = ⌊endpoint i*q-y⌋+z i*k := by
    rw [← hz]
    rw [show (z i : ℚ)*(q+k)-y = ((z i : ℚ)*q-y)+((z i*k : ℤ) : ℚ) by push_cast; ring,
      Int.floor_add_intCast]
  have hn (a : ℕ) : ⌊(a : ℚ)*(q+k)⌋ = ⌊(a : ℚ)*q⌋+(a : ℤ)*k := by
    rw [show (a : ℚ)*(q+k) = (a : ℚ)*q+(((a : ℤ)*k : ℤ) : ℚ) by push_cast; ring,
      Int.floor_add_intCast]
  unfold qProfile profileFromFloors qNormalization
  simp_rw [hf, hn]
  norm_num [z, Finset.sum_range_succ]
  ring

def endpointCoefficient (i : ℕ) : ℤ :=
  if i < 22 then -1 else if i < 43 then 1 else -5

theorem qProfile_sum (q y : ℚ) (hy : 0 < y) (hy1 : y ≤ 1) :
    qProfile q y = -1 +
      ((List.range 43).map (fun j => endpointCoefficient (j+1)*
        ⌊endpoint (j+1)*q-y⌋)).sum - qNormalization q := by
  have hf : ⌊-y⌋ = (-1 : ℤ) := by
    apply Int.floor_eq_iff.mpr
    norm_num
    exact ⟨by linarith, by linarith⟩
  norm_num [qProfile, profileFromFloors, endpoint, endpointCoefficient,
    Finset.sum_range_succ, List.range_succ, hf]
  ring

structure Event where
  label : ℕ
  baseFloor : ℤ
  deriving DecidableEq, Repr

def Event.point (e : Event) : Affine := ⟨-(e.baseFloor : ℚ), endpoint e.label⟩
def Event.jump (e : Event) : ℤ := -endpointCoefficient e.label

def activeJumps (es : List Event) (q y : ℚ) : ℤ :=
  (es.map (fun e => if e.point.eval q < y then e.jump else 0)).sum

/-- One floor per endpoint suffices; no quadratic table of strip floors is needed. -/
def Event.check (e : Event) (a b : ℚ) : Prop :=
  1 ≤ e.label ∧ e.label ≤ 43 ∧
    (Affine.mk 0 0).leOn e.point a b ∧ e.point.leOn ⟨1,0⟩ a b

instance (e : Event) (a b : ℚ) : Decidable (e.check a b) :=
  inferInstanceAs (Decidable (_ ∧ _))

theorem Event.floor_eq (e : Event) (a b q y : ℚ) (he : e.check a b)
    (ha : a ≤ q) (hb : q ≤ b) (hy : 0 < y) (hy1 : y ≤ 1) :
    ⌊endpoint e.label*q-y⌋ =
      e.baseFloor - if e.point.eval q < y then 1 else 0 := by
  have hl := Affine.leOn_sound _ _ a b q ha hb he.2.2.1
  have hr := Affine.leOn_sound _ _ a b q ha hb he.2.2.2
  simp only [Event.point, Affine.eval, zero_mul, add_zero] at hl hr ⊢
  split_ifs with h
  · apply Int.floor_eq_iff.mpr
    simp only [h, ite_true, Int.cast_sub, Int.cast_one]
    constructor <;> linarith
  · apply Int.floor_eq_iff.mpr
    simp only [h, ite_false, sub_zero]
    constructor <;> linarith

def eventChainCheck (a b : ℚ) (start : Affine) : List Event → Prop
  | [] => start.leOn ⟨1,0⟩ a b
  | e::es => start.leOn e.point a b ∧ eventChainCheck a b e.point es

instance (a b : ℚ) (start : Affine) (es : List Event) :
    Decidable (eventChainCheck a b start es) := by
  induction es generalizing start with
  | nil => exact inferInstanceAs (Decidable (start.leOn ⟨1,0⟩ a b))
  | cons e es ih =>
    letI := ih e.point
    exact inferInstanceAs (Decidable (_ ∧ eventChainCheck a b e.point es))

def eventSteps (J : ℕ) (tau q : ℚ) (w : ℤ) (start : ℚ) : List Event → List StepCell
  | [] => [⟨start, 1, slotExcess J tau w⟩]
  | e::es => ⟨start, e.point.eval q, slotExcess J tau w⟩ ::
      eventSteps J tau q (w+e.jump) (e.point.eval q) es

theorem eventSteps_chain (a b q : ℚ) (ha : a ≤ q) (hb : q ≤ b)
    (start : Affine) (es : List Event) (h : eventChainCheck a b start es)
    (J : ℕ) (tau : ℚ) (w : ℤ) :
    StepChain (start.eval q) 1 (eventSteps J tau q w (start.eval q) es) := by
  induction es generalizing start w with
  | nil =>
    exact ⟨rfl, by simpa [Affine.eval] using Affine.leOn_sound _ _ a b q ha hb h, rfl⟩
  | cons e es ih =>
    exact ⟨rfl, Affine.leOn_sound _ _ a b q ha hb h.1,
      ih e.point h.2 (w+e.jump)⟩

theorem eventChain_points_ge (a b q : ℚ) (ha : a ≤ q) (hb : q ≤ b)
    (start : Affine) (es : List Event) (h : eventChainCheck a b start es) :
    ∀ e ∈ es, start.eval q ≤ e.point.eval q := by
  induction es generalizing start with
  | nil => simp
  | cons e es ih =>
    intro d hd
    have hfirst := Affine.leOn_sound _ _ a b q ha hb h.1
    rcases List.mem_cons.mp hd with rfl | hd
    · exact hfirst
    · exact hfirst.trans (ih e.point h.2 d hd)

theorem activeJumps_zero (es : List Event) (q y : ℚ)
    (h : ∀ e ∈ es, y ≤ e.point.eval q) : activeJumps es q y = 0 := by
  unfold activeJumps
  apply List.sum_eq_zero
  intro z hz
  obtain ⟨e, he, rfl⟩ := List.mem_map.mp hz
  simp only [not_lt.mpr (h e he), ite_false]

theorem eventSteps_values (a b q : ℚ) (ha : a ≤ q) (hb : q ≤ b)
    (start : Affine) (es : List Event) (h : eventChainCheck a b start es)
    (J : ℕ) (tau : ℚ) (w : ℤ) :
    ∀ t ∈ eventSteps J tau q w (start.eval q) es, ∀ y,
      t.left < y → y ≤ t.right →
        t.value = slotExcess J tau (w+activeJumps es q y) := by
  induction es generalizing start w with
  | nil =>
    intro t ht y hl hr
    simp only [eventSteps, List.mem_singleton] at ht
    subst t
    simp [activeJumps]
  | cons e es ih =>
    intro t ht y hl hr
    rcases List.mem_cons.mp ht with rfl | ht
    · have hz : activeJumps (e::es) q y = 0 := by
        apply activeJumps_zero
        intro d hd
        rcases List.mem_cons.mp hd with rfl | hd
        · exact hr
        · exact hr.trans (eventChain_points_ge a b q ha hb e.point es h.2 d hd)
      simp only [hz, add_zero]
    · have hs := eventSteps_chain a b q ha hb e.point es h.2 J tau (w+e.jump)
      have hlo := (hs.bounds t ht).1
      have hactive : e.point.eval q < y := hlo.trans_lt hl
      have hv := ih e.point h.2 (w+e.jump) t ht y hl hr
      simpa only [activeJumps, List.map_cons, List.sum_cons, ite_eq_left hactive,
        add_assoc] using hv

def qFloorCheck (a b : ℚ) (A : ℕ) (k : ℤ) : Prop :=
  0 < A ∧ (k : ℚ) ≤ (A : ℚ)*a ∧ (A : ℚ)*b ≤ (k : ℚ)+1

instance (a b : ℚ) (A : ℕ) (k : ℤ) : Decidable (qFloorCheck a b A k) :=
  inferInstanceAs (Decidable (_ ∧ _))

theorem qFloorCheck_sound (a b q : ℚ) (A : ℕ) (k : ℤ)
    (h : qFloorCheck a b A k) (ha : a ≤ q) (hb : q < b) : ⌊(A : ℚ)*q⌋ = k := by
  have hA : (0 : ℚ) < A := by exact_mod_cast h.1
  apply Int.floor_eq_iff.mpr
  exact ⟨h.2.1.trans (mul_le_mul_of_nonneg_left ha hA.le),
    (mul_lt_mul_of_pos_left hb hA).trans_le h.2.2⟩

def weightsCheck (w : ℤ) : List Event → Prop
  | [] => w ≤ 20
  | e::es => w ≤ 20 ∧ weightsCheck (w+e.jump) es

instance (w : ℤ) (es : List Event) : Decidable (weightsCheck w es) := by
  induction es generalizing w with
  | nil => exact inferInstanceAs (Decidable (w ≤ 20))
  | cons e es ih =>
    letI := ih (w+e.jump)
    exact inferInstanceAs (Decidable (w ≤ 20 ∧ weightsCheck (w+e.jump) es))

structure ProfileCell where
  left : ℚ
  right : ℚ
  denFloors : List ℤ
  numFloors : List ℤ
  events : List Event
  deriving DecidableEq, Repr

def ProfileCell.nu (c : ProfileCell) : ℤ :=
  (∑ b ∈ range 16, c.denFloors.getD b 0)-2*(∑ a ∈ range 5, c.numFloors.getD a 0)

def ProfileCell.initial (c : ProfileCell) : ℤ :=
  -1+(c.events.map (fun e => endpointCoefficient e.label*e.baseFloor)).sum-c.nu

/-- All checker inputs are finite integers and rationals. Profiles themselves
are reconstructed from the original 44 floor endpoints. -/
def ProfileCell.check (c : ProfileCell) : Prop :=
  0 ≤ c.left ∧ c.left < c.right ∧ c.right ≤ 1 ∧
  (∀ b ∈ range 16, qFloorCheck c.left c.right (52-2*b) (c.denFloors.getD b 0)) ∧
  (∀ a ∈ range 5, qFloorCheck c.left c.right (48+a) (c.numFloors.getD a 0)) ∧
  (c.events.map Event.label).Perm ((List.range 43).map (·+1)) ∧
  (∀ e ∈ c.events, e.check c.left c.right) ∧
  eventChainCheck c.left c.right ⟨0,0⟩ c.events ∧
  weightsCheck c.initial c.events

instance (c : ProfileCell) : Decidable c.check :=
  inferInstanceAs (Decidable (_ ∧ _))

theorem ProfileCell.normalization_eq (c : ProfileCell) (h : c.check) (q : ℚ)
    (ha : c.left ≤ q) (hb : q < c.right) : qNormalization q = c.nu := by
  unfold qNormalization ProfileCell.nu
  congr 1
  · apply sum_congr rfl
    intro b hb'
    exact qFloorCheck_sound _ _ q _ _ (h.2.2.2.1 b hb') ha hb
  · congr 1
    apply sum_congr rfl
    intro a ha'
    exact qFloorCheck_sound _ _ q _ _ (h.2.2.2.2.1 a ha') ha hb

theorem ProfileCell.profile_eq (c : ProfileCell) (h : c.check) (q y : ℚ)
    (ha : c.left ≤ q) (hb : q < c.right) (hy : 0 < y) (hy1 : y ≤ 1) :
    qProfile q y = c.initial+activeJumps c.events q y := by
  rw [qProfile_sum q y hy hy1, c.normalization_eq h q ha hb]
  have hp := (h.2.2.2.2.2.1.map
    (fun i => endpointCoefficient i*⌊endpoint i*q-y⌋)).sum_eq
  simp only [List.map_map, Function.comp_def] at hp
  rw [← hp]
  have hf : (c.events.map (fun e => endpointCoefficient e.label*⌊endpoint e.label*q-y⌋)).sum =
      (c.events.map (fun e => endpointCoefficient e.label*e.baseFloor)).sum +
        activeJumps c.events q y := by
    unfold activeJumps
    rw [← List.sum_map_add]
    congr 1
    apply List.map_congr_left
    intro e he
    rw [e.floor_eq c.left c.right q y (h.2.2.2.2.2.2.1 e he) ha hb.le hy hy1]
    unfold Event.jump
    split_ifs <;> ring
  rw [hf]
  unfold ProfileCell.initial
  ring

def ProfileCell.steps (c : ProfileCell) (J : ℕ) (tau q : ℚ) : List StepCell :=
  eventSteps J tau q c.initial 0 c.events

theorem ProfileCell.chain (c : ProfileCell) (h : c.check)
    (J : ℕ) (tau q : ℚ) (ha : c.left ≤ q) (hb : q ≤ c.right) :
    StepChain 0 1 (c.steps J tau q) := by
  simpa only [ProfileCell.steps, Affine.eval, zero_mul, zero_add] using
    eventSteps_chain c.left c.right q ha hb ⟨0,0⟩ c.events h.2.2.2.2.2.2.2.1 J tau c.initial

theorem ProfileCell.values (c : ProfileCell) (h : c.check)
    (J : ℕ) (tau q : ℚ) (ha : c.left ≤ q) (hb : q < c.right) :
    ∀ t ∈ c.steps J tau q, ∀ y, t.left < y → y ≤ t.right →
      t.value = slotExcess J tau (qProfile q y) := by
  intro t ht y hl hr
  have hbounds := (c.chain h J tau q ha hb.le).bounds t ht
  rw [c.profile_eq h q y ha hb (hbounds.1.trans_lt hl) (hr.trans hbounds.2.2)]
  apply eventSteps_values c.left c.right q ha hb.le ⟨0,0⟩ c.events
    h.2.2.2.2.2.2.2.1 J tau c.initial t ?_ y hl hr
  simpa only [ProfileCell.steps, Affine.eval, zero_mul, zero_add] using ht

theorem eventSteps_endpointFee_le (J : ℕ) (tau q start : ℚ) (w : ℤ)
    (es : List Event) (h : weightsCheck w es) :
    stepEndpointFee (eventSteps J tau q w start es) ≤
      ((es.length+1 : ℕ) : ℚ)*(J : ℚ)*max (20-tau) 0 := by
  induction es generalizing w start with
  | nil =>
    simpa [eventSteps, stepEndpointFee, abs_of_nonneg (slotExcess_nonneg J tau w)] using
      slotExcess_le J tau w h
  | cons e es ih =>
    have ht := ih (e.point.eval q) (w+e.jump) h.2
    have hw := slotExcess_le J tau w h.1
    simp only [eventSteps, stepEndpointFee, List.map_cons, List.sum_cons,
      abs_of_nonneg (slotExcess_nonneg J tau w)]
    change slotExcess J tau w + stepEndpointFee _ ≤ _
    simp only [List.length_cons, Nat.cast_add, Nat.cast_one] at ht ⊢
    linarith

theorem ProfileCell.endpointFee_le (c : ProfileCell) (h : c.check)
    (J : ℕ) (tau q : ℚ) :
    stepEndpointFee (c.steps J tau q) ≤ 44*(J : ℚ)*max (20-tau) 0 := by
  have hlen := h.2.2.2.2.2.1.length_eq
  simp only [List.length_map, List.length_range] at hlen
  simpa only [ProfileCell.steps, hlen, Nat.reduceAdd, Nat.cast_ofNat] using
    eventSteps_endpointFee_le J tau q 0 c.initial c.events h.2.2.2.2.2.2.2.2

theorem ProfileCell.lattice_error (c : ProfileCell) (h : c.check)
    (p : ℕ) (hp : 0 < p) (J : ℕ) (tau q : ℚ)
    (ha : c.left ≤ q) (hb : q < c.right) :
    |(∑ d : Fin p, slotExcess J tau (qProfile q ((d.val : ℚ)/p))) -
        (p : ℚ)*stepIntegral (c.steps J tau q)| ≤ 44*(J : ℚ)*max (20-tau) 0 := by
  have hpq : (p : ℚ) ≠ 0 := by exact_mod_cast hp.ne'
  have hc : StepChain 0 ((p : ℚ)/p) (c.steps J tau q) := by
    simpa only [div_self hpq] using c.chain h J tau q ha hb.le
  have he := function_lattice_error_le p p hp (c.steps J tau q) hc
    (fun y => slotExcess J tau (qProfile q y)) (c.values h J tau q ha hb)
  have hf : slotExcess J tau (qProfile q ((p : ℚ)/p)) =
      slotExcess J tau (qProfile q 0) := by
    rw [div_self hpq]
    congr 1
    simpa only [zero_add] using qProfile_y_period q 0
  rw [latticeSum_eq_residue_sum p p _ hf] at he
  exact he.trans (c.endpointFee_le h J tau q)

/-- Sound low-cell certificate: the conclusion bounds the actual scalar.
The inputs certify finite floors and endpoint ordering, not this inequality. -/
theorem ProfileCell.primitive_cost_le {p : ℕ} [Fact p.Prime]
    (c : ProfileCell) (h : c.check) (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (J : ℕ) (tau q : ℚ) (k : ℤ)
    (htau : 20-2*(J : ℚ) ≤ tau) (hq : (n : ℚ)/p = q+k)
    (ha : c.left ≤ q) (hb : q < c.right) (hdet : (h158SevenMatrix n).det ≠ 0) :
    (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤
      (h158RowFee n p : ℚ) + 2*(n : ℚ)*tau +
        (p : ℚ)*stepIntegral (c.steps J tau q)/2 +
          (27*(J : ℚ)+45*(J : ℚ)*max (20-tau) 0)/2 := by
  have hc := primitive_cost_le_profile_sum n hn hp hp2 hsq J tau htau hdet
  have hsum : (∑ d : Fin p, profileExcess J tau ((p : ℚ)/n) ((d.val : ℚ)/n)) =
      ∑ d : Fin p, slotExcess J tau (qProfile q ((d.val : ℚ)/p)) := by
    apply sum_congr rfl
    intro d hd
    unfold profileExcess
    rw [floorProfile_eq_unshifted n p d.val hn Fact.out hsq,
      ← qProfile_eq_unshifted n p d.val hn Fact.out hsq, hq, qProfile_period]
  rw [hsum] at hc
  have he := (abs_le.mp (c.lattice_error h p hp J tau q ha hb)).2
  linarith

/-- Positive-part cost is bounded too, using the original integer-valued-jet
fallback. This remains valid at coincident endpoints and at primes dividing n. -/
theorem ProfileCell.primitive_positive_cost_le {p : ℕ} [Fact p.Prime]
    (c : ProfileCell) (h : c.check) (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (J : ℕ) (tau q : ℚ) (k : ℤ)
    (htau : 20-2*(J : ℚ) ≤ tau) (hq : (n : ℚ)/p = q+k)
    (ha : c.left ≤ q) (hb : q < c.right) (hdet : (h158SevenMatrix n).det ≠ 0) :
    max 0 (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤
      min (40*(n : ℚ))
        (max 0 ((h158RowFee n p : ℚ) + 2*(n : ℚ)*tau +
          (p : ℚ)*stepIntegral (c.steps J tau q)/2 +
            (27*(J : ℚ)+45*(J : ℚ)*max (20-tau) 0)/2)) := by
  apply le_min
  · apply max_le (by positivity)
    exact_mod_cast H158IntegerValuedJets.h158_primitiveCost_le_forty n hsq hdet
  · exact max_le_max le_rfl (c.primitive_cost_le h n hn hp hp2 hsq J tau q k htau hq ha hb hdet)

def eventArea (J : ℕ) (tau : ℚ) (w : ℤ) (start : Affine) : List Event → Affine
  | [] => ⟨slotExcess J tau w*(1-start.constant), -slotExcess J tau w*start.slope⟩
  | e::es =>
      let tail := eventArea J tau (w+e.jump) e.point es
      ⟨slotExcess J tau w*(e.point.constant-start.constant)+tail.constant,
        slotExcess J tau w*(e.point.slope-start.slope)+tail.slope⟩

theorem eventArea_eval (J : ℕ) (tau q : ℚ) (w : ℤ) (start : Affine) (es : List Event) :
    (eventArea J tau w start es).eval q =
      stepIntegral (eventSteps J tau q w (start.eval q) es) := by
  induction es generalizing w start with
  | nil => simp [eventArea, eventSteps, stepIntegral, Affine.eval]; ring
  | cons e es ih =>
    simp only [eventArea, eventSteps, stepIntegral, List.map_cons, List.sum_cons]
    change _ = slotExcess J tau w*(e.point.eval q-start.eval q) +
      stepIntegral (eventSteps J tau q (w+e.jump) (e.point.eval q) es)
    rw [← ih (w+e.jump) e.point]
    simp only [Affine.eval]
    ring

def ProfileCell.area (c : ProfileCell) (J : ℕ) (tau : ℚ) : Affine :=
  eventArea J tau c.initial ⟨0,0⟩ c.events

theorem ProfileCell.area_eval (c : ProfileCell) (J : ℕ) (tau q : ℚ) :
    (c.area J tau).eval q = stepIntegral (c.steps J tau q) := by
  simpa only [ProfileCell.area, ProfileCell.steps, Affine.eval, zero_mul, zero_add] using
    eventArea_eval J tau q c.initial ⟨0,0⟩ c.events

def integerExcess : ℕ → ℤ → ℤ → ℤ
  | 0, _, _ => 0
  | j+1, tau, w => integerExcess j tau w+max (w-2*(j : ℤ)-tau) 0

theorem integerExcess_cast (J : ℕ) (tau w : ℤ) :
    (integerExcess J tau w : ℚ) = slotExcess J tau w := by
  induction J with
  | zero => simp [integerExcess, slotExcess]
  | succ j ih =>
    simp only [integerExcess, Int.cast_add, Int.cast_max, Int.cast_sub, Int.cast_mul,
      Int.cast_ofNat, Int.cast_natCast, Int.cast_zero, ih, slotExcess, Finset.sum_range_succ]

def integerEndpoint (i : ℕ) : ℤ :=
  if i = 0 then 0 else if i < 22 then 47+i else if i < 43 then 68+i else 158

theorem integerEndpoint_cast (i : ℕ) : (integerEndpoint i : ℚ) = endpoint i := by
  dsimp [integerEndpoint, endpoint]
  split_ifs <;> push_cast <;> rfl

def integerPoint (e : Event) : ℤ × ℤ := (-e.baseFloor,integerEndpoint e.label)
def affineCast (z : ℤ × ℤ) : Affine := ⟨z.1,z.2⟩

theorem integerPoint_cast (e : Event) : affineCast (integerPoint e) = e.point := by
  simp [affineCast, integerPoint, Event.point, integerEndpoint_cast]

def integerArea (J : ℕ) (tau w : ℤ) (start : ℤ × ℤ) : List Event → ℤ × ℤ
  | [] => (integerExcess J tau w*(1-start.1), -integerExcess J tau w*start.2)
  | e::es =>
      let tail := integerArea J tau (w+e.jump) (integerPoint e) es
      (integerExcess J tau w*((integerPoint e).1-start.1)+tail.1,
        integerExcess J tau w*((integerPoint e).2-start.2)+tail.2)

theorem integerArea_cast (J : ℕ) (tau w : ℤ) (start : ℤ × ℤ) (es : List Event) :
    affineCast (integerArea J tau w start es) = eventArea J tau w (affineCast start) es := by
  induction es generalizing w start with
  | nil => simp [integerArea, eventArea, affineCast, integerExcess_cast]
  | cons e es ih =>
    have ht := ih (w+e.jump) (integerPoint e)
    rw [integerPoint_cast] at ht
    have hc := congrArg Affine.constant ht
    have hs := congrArg Affine.slope ht
    simp only [affineCast] at hc hs
    simp only [integerArea, eventArea, affineCast, Int.cast_add, Int.cast_mul,
      Int.cast_sub, integerExcess_cast, hc, hs]
    have hp := integerPoint_cast e
    have hpc := congrArg Affine.constant hp
    have hps := congrArg Affine.slope hp
    simp only [affineCast] at hpc hps
    rw [hpc,hps]

def ProfileCell.integerArea (c : ProfileCell) (J : ℕ) (tau : ℤ) : ℤ × ℤ :=
  H158LowCells.integerArea J tau c.initial (0,0) c.events

theorem ProfileCell.integerArea_cast (c : ProfileCell) (J : ℕ) (tau : ℤ) :
    affineCast (c.integerArea J tau) = c.area J tau := by
  simpa only [ProfileCell.integerArea, ProfileCell.area, affineCast, Int.cast_zero] using
    H158LowCells.integerArea_cast J tau c.initial (0,0) c.events

/-- A constant upper step is deliberately used instead of optimizing crossings. -/
structure Selection where
  period : ℕ
  tau : ℤ
  rowFloor : ℕ
  upper : ℚ
  integralUnits : ℕ
  areaConstant : ℤ
  areaSlope : ℤ
  deriving DecidableEq, Repr

def Selection.left (s : Selection) (c : ProfileCell) : ℚ := max (1/4) (s.period+c.left)
def Selection.right (s : Selection) (c : ProfileCell) : ℚ := s.period+c.right

def Selection.numerator (s : Selection) (_c : ProfileCell) : Affine :=
  ⟨((s.areaConstant : ℚ)-(s.period : ℚ)*(s.areaSlope : ℚ)-
      (s.rowFloor : ℚ)*((s.rowFloor : ℚ)+1))/2,
    2*(s.tau : ℚ)+4*(s.rowFloor : ℚ)+(s.areaSlope : ℚ)/2⟩

def Selection.integral (s : Selection) (c : ProfileCell) : ℚ :=
  s.upper*(1/s.left c-1/s.right c)

def Selection.check (s : Selection) (c : ProfileCell) : Prop :=
  s.period < 3 ∧ -28 ≤ s.tau ∧ s.tau ≤ 20 ∧ 0 ≤ s.upper ∧
  s.left c < s.right c ∧
  qFloorCheck (s.left c) (s.right c) 4 s.rowFloor ∧
  (s.numerator c).leOn ⟨0,s.upper⟩ (s.left c) (s.right c) ∧
  s.integral c ≤ (s.integralUnits : ℚ)/100000 ∧
  c.integerArea 24 s.tau = (s.areaConstant,s.areaSlope)

instance (s : Selection) (c : ProfileCell) : Decidable (s.check c) :=
  inferInstanceAs (Decidable (_ ∧ _))

/-- Complete finite bound from a checked original-floor cell and a checked
threshold step. The additive constant includes every lattice and endpoint fee. -/
theorem Selection.primitive_positive_cost_le {p : ℕ} [Fact p.Prime]
    (s : Selection) (c : ProfileCell) (hc : c.check) (hs : s.check c)
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (ha : s.left c ≤ (n : ℚ)/p) (hb : (n : ℚ)/p < s.right c)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    max 0 (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤
      (n : ℚ)*s.upper+26244 := by
  have hpq : (0 : ℚ) < p := by exact_mod_cast hp
  let q : ℚ := (n : ℚ)/p-(s.period : ℚ)
  have hqa : c.left ≤ q := by
    have h := (le_max_right (1/4 : ℚ) ((s.period : ℚ)+c.left)).trans ha
    dsimp [q]
    linarith
  have hqb : q < c.right := by dsimp [q]; change _ < (s.period : ℚ)+c.right at hb; linarith
  have htau : (20 : ℚ)-2*(24 : ℚ) ≤ s.tau := by norm_num; exact_mod_cast hs.2.1
  have hcost := c.primitive_cost_le hc n hn hp hp2 hsq 24 s.tau q s.period htau
    (by dsimp [q]; push_cast; ring) hqa hqb hdet
  have hM : (4*n/p : ℕ) = s.rowFloor := by
    have hf := qFloorCheck_sound (s.left c) (s.right c) ((n : ℚ)/p) 4 s.rowFloor
      hs.2.2.2.2.2.1 ha hb
    norm_num only [Int.cast_ofNat, Nat.cast_ofNat] at hf
    have he : ⌊(4 : ℚ)*((n : ℚ)/p)⌋ = ((4*n/p : ℕ) : ℤ) := by
      rw [show (4 : ℚ)*((n : ℚ)/p) = ((4*n : ℕ) : ℚ)/p by push_cast; ring,
        Rat.floor_natCast_div_natCast, Int.ofNat_ediv_ofNat]
    rw [he] at hf
    exact_mod_cast hf
  have hodd : Odd p := (Fact.out : p.Prime).odd_of_ne_two hp2
  have hfee := h158RowFee_exact n p hp hodd
  rw [hM] at hfee
  have hround : (0 : ℚ) ≤ (((s.rowFloor+1)/2 : ℕ) : ℚ) := by positivity
  have hnum := Affine.leOn_sound _ _ (s.left c) (s.right c) ((n : ℚ)/p) ha hb.le
    hs.2.2.2.2.2.2.1
  simp only [Affine.eval, zero_add] at hnum
  have hnum' := mul_le_mul_of_nonneg_left hnum hpq.le
  have he : (p : ℚ)*((s.numerator c).constant+(s.numerator c).slope*((n : ℚ)/p)) =
      4*(n : ℚ)*(s.rowFloor : ℚ)-(p : ℚ)*(s.rowFloor : ℚ)*((s.rowFloor : ℚ)+1)/2 +
        2*(n : ℚ)*s.tau+(p : ℚ)*stepIntegral (c.steps 24 s.tau q)/2 := by
    rw [← c.area_eval]
    have hc := congrArg Affine.constant (c.integerArea_cast 24 s.tau)
    have hs := congrArg Affine.slope (c.integerArea_cast 24 s.tau)
    rw [show c.integerArea 24 s.tau = (s.areaConstant,s.areaSlope) from
      ‹s.check c›.2.2.2.2.2.2.2.2] at hc hs
    simp only [affineCast] at hc hs
    unfold Selection.numerator Affine.eval
    rw [hc,hs]
    dsimp [q]
    field_simp
    ring
  rw [he] at hnum'
  have hpn : (p : ℚ)*(s.upper*((n : ℚ)/p)) = (n : ℚ)*s.upper := by field_simp
  rw [hpn] at hnum'
  have htau' : (-28 : ℚ) ≤ s.tau := by exact_mod_cast hs.2.1
  have hmax : max (20-(s.tau : ℚ)) 0 ≤ (48 : ℚ) := max_le (by linarith) (by norm_num)
  have herr : (27*(24 : ℚ)+45*(24 : ℚ)*max (20-(s.tau : ℚ)) 0)/2 ≤ 26244 := by linarith
  norm_num only [Nat.cast_ofNat] at hcost
  have hbound : (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤ (n : ℚ)*s.upper+26244 := by
    linarith only [hcost, hnum', hfee, hround, herr]
  have hu : 0 ≤ s.upper := hs.2.2.2.1
  exact max_le (by positivity) hbound

structure Band where
  profile : ProfileCell
  selection : Selection

def Band.left (b : Band) : ℚ := b.selection.left b.profile
def Band.right (b : Band) : ℚ := b.selection.right b.profile
def Band.integral (b : Band) : ℚ := b.selection.integral b.profile
def Band.check (b : Band) : Prop := b.profile.check ∧ b.selection.check b.profile

/-- A block carries coverage and the sum of the individual rational upper
certificates. Joining blocks never replaces the source-linked leaf checks. -/
structure Block where
  left : ℚ
  right : ℚ
  bands : List Band
  units : ℕ
  checked : ∀ b ∈ bands, b.check
  covers : ∀ q, left ≤ q → q < right → ∃ b ∈ bands, b.left ≤ q ∧ q < b.right
  integral_le : (bands.map Band.integral).sum ≤ (units : ℚ)/100000

def Block.single (c : ProfileCell) (s : Selection) (hc : c.check) (hs : s.check c) : Block where
  left := s.left c
  right := s.right c
  bands := [⟨c,s⟩]
  units := s.integralUnits
  checked := by
    intro b hb
    obtain rfl := List.mem_singleton.mp hb
    exact ⟨hc,hs⟩
  covers := by intro q ha hb; exact ⟨⟨c,s⟩,by simp,ha,hb⟩
  integral_le := by simpa [Band.integral] using hs.2.2.2.2.2.2.2.1

def Block.append (a b : Block) (h : a.right = b.left) : Block where
  left := a.left
  right := b.right
  bands := a.bands ++ b.bands
  units := a.units+b.units
  checked := by
    intro x hx
    rcases List.mem_append.mp hx with hx | hx
    · exact a.checked x hx
    · exact b.checked x hx
  covers := by
    intro q ha hb
    by_cases hq : q < a.right
    · obtain ⟨x,hx,hl,hr⟩ := a.covers q ha hq
      exact ⟨x,List.mem_append_left _ hx,hl,hr⟩
    · obtain ⟨x,hx,hl,hr⟩ := b.covers q (by rw [← h]; exact le_of_not_gt hq) hb
      exact ⟨x,List.mem_append_right _ hx,hl,hr⟩
  integral_le := by
    simp only [List.map_append, List.sum_append, Nat.cast_add, add_div]
    exact add_le_add a.integral_le b.integral_le

def Block.entry (B : Block) (i : Fin B.bands.length) : Band := B.bands.get i
def Block.a (B : Block) (i : Fin B.bands.length) : ℝ := (1/(B.entry i).right : ℚ)
def Block.b (B : Block) (i : Fin B.bands.length) : ℝ := (1/(B.entry i).left : ℚ)
def Block.f (B : Block) (i : Fin B.bands.length) (_ : ℝ) : ℝ := (B.entry i).selection.upper

theorem Block.entry_checked (B : Block) (i : Fin B.bands.length) : (B.entry i).check :=
  B.checked _ (List.get_mem _ _)

theorem Band.bounds (b : Band) (hb : b.check) :
    (1/4 : ℚ) ≤ b.left ∧ b.left < b.right ∧ b.right ≤ 3 := by
  refine ⟨le_max_left _ _,hb.2.2.2.2.2.1,?_⟩
  have hp : b.selection.period < 3 := hb.2.1
  have hperiod : (b.selection.period : ℚ) ≤ 2 := by exact_mod_cast (show b.selection.period ≤ 2 by omega)
  have hr : b.profile.right ≤ 1 := hb.1.2.2.1
  change (b.selection.period : ℚ)+b.profile.right ≤ 3
  linarith

theorem Block.endpoint_bounds (B : Block) (i : Fin B.bands.length) :
    0 < B.a i ∧ B.a i ≤ B.b i ∧ B.b i ≤ 4 := by
  obtain ⟨hl,hlr,hr⟩ := (B.entry i).bounds (B.entry_checked i)
  have hleft : (0 : ℚ) < (B.entry i).left := by linarith
  have hright : (0 : ℚ) < (B.entry i).right := hleft.trans hlr
  have hi : (1/(B.entry i).right : ℚ) ≤ 1/(B.entry i).left :=
    one_div_le_one_div_of_le hleft hlr.le
  have hu : (1/(B.entry i).left : ℚ) ≤ 4 := (div_le_iff₀ hleft).mpr (by linarith)
  unfold Block.a Block.b
  exact ⟨by exact_mod_cast (one_div_pos.mpr hright),by exact_mod_cast hi,by exact_mod_cast hu⟩

theorem Block.f_nonneg (B : Block) (i : Fin B.bands.length) (x : ℝ) : 0 ≤ B.f i x := by
  unfold Block.f
  exact_mod_cast (B.entry_checked i).2.2.2.2.1

theorem Block.integral_eq (B : Block) :
    (∑ i : Fin B.bands.length, ∫ x in B.a i..B.b i, B.f i x) =
      (((B.bands.map Band.integral).sum : ℚ) : ℝ) := by
  have hsingle (i : Fin B.bands.length) :
      (∫ x in B.a i..B.b i, B.f i x) = ((B.entry i).integral : ℝ) := by
    simp only [Block.f, intervalIntegral.integral_const, smul_eq_mul,
      Block.a, Block.b, Band.integral, Selection.integral, Band.left, Band.right]
    push_cast
    ring
  simp_rw [hsingle]
  rw [← List.sum_ofFn]
  rw [show List.ofFn (fun i : Fin B.bands.length => ((B.entry i).integral : ℝ)) =
      (B.bands.map (fun b => (b.integral : ℝ))) by
    simpa [Block.entry, List.ofFn_get] using
      (List.ofFn_comp' B.bands.get (fun b : Band => (b.integral : ℝ)))]
  simp [List.map_map, Function.comp_def]

abbrev Block.Index (B : Block) := Option (Fin B.bands.length)

def Block.lowA (B : Block) : B.Index → ℝ
  | none => 1/8
  | some i => B.a i

def Block.lowB (B : Block) : B.Index → ℝ
  | none => 1/3
  | some i => B.b i

def Block.lowF (B : Block) : B.Index → ℝ → ℝ
  | none => fun _ => 40
  | some i => B.f i

def Block.majorant (B : Block) (n p : ℕ) : ℝ :=
  h158PiecewisePrimeProfile univ B.lowF B.lowA B.lowB (1/8) 40 26244 n p

theorem Block.low_endpoints (B : Block) (i : B.Index) :
    0 < B.lowA i ∧ B.lowA i ≤ B.lowB i ∧ B.lowB i ≤ 57 := by
  cases i with
  | none => norm_num [Block.lowA, Block.lowB]
  | some i =>
    obtain ⟨ha,hab,hb⟩ := B.endpoint_bounds i
    exact ⟨ha,hab,hb.trans (by norm_num)⟩

theorem Block.lowF_nonneg (B : Block) (i : B.Index) (x : ℝ) : 0 ≤ B.lowF i x := by
  cases i with
  | none => norm_num [Block.lowF]
  | some i => exact B.f_nonneg i x

theorem Block.majorant_nonneg (B : Block) (n p : ℕ) (hn : 0 < n) :
    0 ≤ B.majorant n p :=
  h158PiecewisePrimeProfile_nonneg _ _ _ _ _ _ _ _ _ hn (by norm_num) (by norm_num)
    (fun i _ x _ => B.lowF_nonneg i x)

/-- The finite actual low-prime inequality, including primes dividing n. The
only inputs about the table are the source-certified leaves and coverage. -/
theorem Block.primitive_positive_cost_le (B : Block) (hleft : B.left = 1/4)
    (hright : B.right = 3) {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n)
    (hp4 : p ≤ 4*n) (hsq : 158*n+2 < p^2) (hdet : (h158SevenMatrix n).det ≠ 0) :
    max 0 (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤ B.majorant n p := by
  have hp : 0 < p := (Fact.out : p.Prime).pos
  have hpq : (0 : ℚ) < p := by exact_mod_cast hp
  have hp2 : p ≠ 2 := by intro he; subst p; nlinarith
  have h40 : max 0 (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤ 40*(n : ℝ) := by
    apply max_le (by positivity)
    exact_mod_cast H158IntegerValuedJets.h158_primitiveCost_le_forty n hsq hdet
  by_cases hpref : (p : ℝ) ≤ (1/8)*(n : ℝ)
  · have h := h158PiecewisePrimeProfile_dominates_prefix univ B.lowF B.lowA B.lowB
      (1/8) 40 26244 n p hn (fun i _ x _ => B.lowF_nonneg i x) hpref
    exact h40.trans ((by linarith : 40*(n : ℝ) ≤ 40*(n : ℝ)+26244).trans h)
  by_cases hcoarse : (p : ℝ) ≤ (1/3)*(n : ℝ)
  · have h := h158PiecewisePrimeProfile_dominates_band univ B.lowF B.lowA B.lowB
      (1/8) 40 26244 n p hn (by norm_num) (fun i _ x _ => B.lowF_nonneg i x)
      none (mem_univ _) (lt_of_not_ge hpref) hcoarse
    change (n : ℝ)*40+26244 ≤ _ at h
    exact h40.trans ((by linarith : 40*(n : ℝ) ≤ (n : ℝ)*40+26244).trans h)
  have hqa : (1/4 : ℚ) ≤ (n : ℚ)/p := by
    apply (le_div_iff₀ hpq).mpr
    have h : (p : ℚ) ≤ 4*(n : ℚ) := by exact_mod_cast hp4
    linarith
  have hqb : (n : ℚ)/p < 3 := by
    apply (div_lt_iff₀ hpq).mpr
    have h : (n : ℝ) < 3*(p : ℝ) := by linarith
    exact_mod_cast h
  obtain ⟨b,hb,haq,hbq⟩ := B.covers ((n : ℚ)/p) (by rwa [hleft]) (by rwa [hright])
  obtain ⟨i,rfl⟩ := List.mem_iff_get.mp hb
  let b := B.entry i
  have hcheck : b.check := B.entry_checked i
  have hfinite := b.selection.primitive_positive_cost_le b.profile hcheck.1 hcheck.2
    n hn hp hp2 hsq haq hbq hdet
  have hfiniteR : max 0 (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤
      (n : ℝ)*(b.selection.upper : ℝ)+26244 := by exact_mod_cast hfinite
  obtain ⟨hl,hlr,_⟩ := b.bounds hcheck
  have hl0 : (0 : ℚ) < b.left := by linarith
  have hr0 : (0 : ℚ) < b.right := hl0.trans hlr
  have hxleft : (1/b.right : ℚ)*(n : ℚ) < p := by
    rw [one_div, inv_mul_eq_div]
    apply (div_lt_iff₀ hr0).mpr
    simpa [mul_comm, b, Block.entry] using (div_lt_iff₀ hpq).mp hbq
  have hxright : (p : ℚ) ≤ (1/b.left)*(n : ℚ) := by
    rw [one_div, inv_mul_eq_div]
    apply (le_div_iff₀ hl0).mpr
    simpa [mul_comm, b, Block.entry] using (le_div_iff₀ hpq).mp haq
  have h := h158PiecewisePrimeProfile_dominates_band univ B.lowF B.lowA B.lowB
    (1/8) 40 26244 n p hn (by norm_num) (fun i _ x _ => B.lowF_nonneg i x)
    (some i) (mem_univ _)
    (by change ((1/b.right : ℚ) : ℝ)*(n : ℝ) < p; exact_mod_cast hxleft)
    (by change (p : ℝ) ≤ ((1/b.left : ℚ) : ℝ)*(n : ℝ); exact_mod_cast hxright)
  exact hfiniteR.trans h

theorem Block.leading_integral (B : Block) :
    40*(1/8 : ℝ)+(∑ i : B.Index, ∫ x in B.lowA i..B.lowB i, B.lowF i x) =
      40/3+(((B.bands.map Band.integral).sum : ℚ) : ℝ) := by
  rw [Fintype.sum_option]
  simp only [Block.lowA, Block.lowB, Block.lowF]
  rw [B.integral_eq]
  norm_num [intervalIntegral.integral_const]
  ring

theorem Block.majorant_ratio_limit (B : Block) :
    Filter.Tendsto (fun n : ℕ => h158ProfilePrimeSum n (B.majorant n)/(n : ℝ)^2)
      Filter.atTop (nhds (40/3+(((B.bands.map Band.integral).sum : ℚ) : ℝ))) := by
  have h := h158PiecewisePrimeProfile_ratio_limit univ B.lowF B.lowA B.lowB
    (1/8) 40 26244 (by norm_num) (by norm_num)
    (fun i _ => (B.low_endpoints i).1) (fun i _ => (B.low_endpoints i).2.1)
    (fun i _ => (B.low_endpoints i).2.2)
    (fun i _ => by cases i <;> exact continuousOn_const)
  rwa [B.leading_integral] at h

/-- Positive actual low-band costs above the square-root exception range.
Primes dividing n are included; no continuous-profile exception is omitted. -/
def actualLowPrimeCost (n : ℕ) : ℝ :=
  ∑ p ∈ h158CutoffPrimes n,
    if p ≤ 4*n ∧ 158*n+2 < p^2 then
      max 0 (-(padicValRat p (h158PrimitiveScalar n)) : ℝ)*Real.log p else 0

theorem Block.actualLowPrimeCost_le (B : Block) (hleft : B.left = 1/4)
    (hright : B.right = 3) (n : ℕ) (hn : 0 < n)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    actualLowPrimeCost n ≤ h158ProfilePrimeSum n (B.majorant n) := by
  unfold actualLowPrimeCost h158ProfilePrimeSum
  apply sum_le_sum
  intro p hp
  obtain ⟨hprime,_⟩ := (mem_h158CutoffPrimes n p).mp hp
  let : Fact p.Prime := ⟨hprime⟩
  have hlog : 0 ≤ Real.log (p : ℝ) := Real.log_nonneg (by exact_mod_cast hprime.one_lt.le)
  split_ifs with h
  · exact mul_le_mul_of_nonneg_right
      (B.primitive_positive_cost_le hleft hright n hn h.1 h.2 hdet) hlog
  · exact mul_nonneg (B.majorant_nonneg n p hn) hlog

/-- Source-backed weighted PNT is applied only after the exact finite bound.
The explicit per-prime correction has zero quadratic rate. -/
theorem Block.actualLowPrimeCost_rate (B : Block) (hleft : B.left = 1/4)
    (hright : B.right = 3) (A : ℚ)
    (hbudget : (40/3 : ℚ)+(B.bands.map Band.integral).sum ≤ A) :
    UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0} actualLowPrimeCost (A : ℝ) := by
  have hA : (40/3 : ℝ)+(((B.bands.map Band.integral).sum : ℚ) : ℝ) ≤ (A : ℝ) := by
    have h := (Rat.cast_le (K := ℝ)).mpr hbudget
    simpa only [Rat.cast_add, Rat.cast_div, Rat.cast_ofNat] using h
  have hrate := upperQuadraticRateOn_of_ratio_limit {n | (h158SevenMatrix n).det ≠ 0}
    (fun n => h158ProfilePrimeSum n (B.majorant n)) _ B.majorant_ratio_limit
  intro ε hε
  filter_upwards [hrate ε hε, eventually_gt_atTop (0 : ℕ)] with n hr hn
  intro hdet
  exact (B.actualLowPrimeCost_le hleft hright n hn hdet).trans
    ((hr hdet).trans (mul_le_mul_of_nonneg_right (by linarith :
      40/3+(((B.bands.map Band.integral).sum : ℚ) : ℝ)+ε ≤ (A : ℝ)+ε) (sq_nonneg _)))

end OddZetaMixed.H158LowCells
