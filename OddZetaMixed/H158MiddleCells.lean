import OddZetaMixed.H158MiddleCellsStep

/-!
# Exact middle-band floor profiles

The profile uses every original factor interval and the exact factorial
normalization. It is linked to `h158UnshiftedClassCost`, not a stored integral.
The affine-strip checker below uses endpoint inequalities, never samples.
-/

namespace OddZetaMixed.H158MiddleCells
open Finset LocalJetValuation WeightedSlotThreshold
set_option autoImplicit false

def floorInterval (x A M y : ℚ) : ℤ :=
  ⌊(A+M-y)/x⌋-⌊(A-y)/x⌋

def normalization (x : ℚ) : ℤ :=
  (∑ b ∈ range 16, ⌊((52-2*b : ℕ) : ℚ)/x⌋) -
    2*(∑ a ∈ range 5, ⌊((48+a : ℕ) : ℚ)/x⌋)

def floorProfile (x y : ℚ) : ℤ :=
  (∑ b ∈ range 16,
    floorInterval x (53+b) ((52-2*b : ℕ) : ℚ) y) -
  (∑ a ∈ range 5,
    (floorInterval x 0 (48+a) y + floorInterval x (158-(48+a)) (48+a) y)) -
    normalization x + 4

theorem floorInterval_scale (n p : ℕ) (hn : 0 < n) (A c : ℤ) (M : ℕ) :
    floorInterval ((p : ℚ)/n) A M ((c : ℚ)/n) =
      residueIntervalFloor p (A*(n : ℤ)) (M*n) c := by
  have hn0 : (n : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hn)
  unfold floorInterval residueIntervalFloor
  push_cast
  congr 1 <;> congr 1 <;> field_simp <;> ring

theorem normalization_scale (n p : ℕ) :
    normalization ((p : ℚ)/n) = h158NormalizationFloor n p := by
  unfold normalization h158NormalizationFloor
  simp only [div_div_eq_mul_div]
  simp_rw [← Nat.cast_mul, Rat.floor_natCast_div_natCast, Int.ofNat_ediv_ofNat]

/-- Exact at endpoints and primes dividing n; the only analytic-size
condition is the existing factorial valuation range. -/
theorem floorProfile_eq_unshifted (n p c : ℕ) (hn : 0 < n) (hp : p.Prime)
    (hsq : 158*n+2 < p^2) :
    floorProfile ((p : ℚ)/n) ((c : ℚ)/n) = h158UnshiftedClassCost n p c := by
  unfold floorProfile h158UnshiftedClassCost
  rw [normalization_scale, h158Normalization_valuation_main_prime n p hn hp hsq]
  congr 3
  · apply sum_congr rfl
    intro b hb
    simpa only [Int.cast_add, Int.cast_natCast, Int.cast_ofNat, Nat.cast_add,
      Nat.cast_ofNat, Nat.cast_mul] using
      floorInterval_scale n p hn (53+b) c (52-2*b)
  · apply sum_congr rfl
    intro a ha
    congr 1
    · simpa only [Int.cast_zero, zero_mul, Int.cast_natCast, Nat.cast_add,
        Nat.cast_ofNat] using floorInterval_scale n p hn 0 c (48+a)
    · have h := floorInterval_scale n p hn (158-(48+a)) c (48+a)
      convert h using 1 <;> push_cast <;> ring

theorem floorInterval_period (x A M y : ℚ) (hx : x ≠ 0) :
    floorInterval x A M (y+x) = floorInterval x A M y := by
  have h1 : (A+M-(y+x))/x = (A+M-y)/x-1 := by field_simp; ring
  have h2 : (A-(y+x))/x = (A-y)/x-1 := by field_simp; ring
  simp only [floorInterval, h1, h2, Int.floor_sub_one]
  ring

theorem floorProfile_period (x y : ℚ) (hx : x ≠ 0) :
    floorProfile x (y+x) = floorProfile x y := by
  simp only [floorProfile, floorInterval_period x _ _ y hx]

def slotExcess (J : ℕ) (tau : ℚ) (w : ℤ) : ℚ :=
  ∑ j ∈ range J, max ((w : ℚ)-2*(j : ℚ)-tau) 0

def profileExcess (J : ℕ) (tau x y : ℚ) : ℚ := slotExcess J tau (floorProfile x y)

theorem slotExcess_nonneg (J : ℕ) (tau : ℚ) (w : ℤ) :
    0 ≤ slotExcess J tau w := sum_nonneg (fun _ _ => le_max_right _ _)

theorem floorInterval_bounds (x A M y : ℚ) :
    ⌊M/x⌋ ≤ floorInterval x A M y ∧ floorInterval x A M y ≤ ⌊M/x⌋+1 := by
  have h1 := Int.le_floor_add ((A-y)/x) (M/x)
  have h2 := Int.le_floor_add_floor ((A-y)/x) (M/x)
  have he : (A-y)/x+M/x = (A+M-y)/x := by ring
  rw [he] at h1 h2
  unfold floorInterval
  omega

theorem floorProfile_le_twenty (x y : ℚ) : floorProfile x y ≤ 20 := by
  have hd := sum_le_sum (s := range 16) (fun b _ =>
    (floorInterval_bounds x (53+b) ((52-2*b : ℕ) : ℚ) y).2)
  have hn := sum_le_sum (s := range 5) (fun a _ =>
    add_le_add (floorInterval_bounds x 0 (48+a) y).1
      (floorInterval_bounds x (158-(48+a)) (48+a) y).1)
  simp only [sum_add_distrib, sum_const, card_range] at hd hn
  unfold floorProfile normalization
  push_cast
  push_cast at hd hn
  simp only [sum_add_distrib, nsmul_eq_mul, mul_one] at hd hn ⊢
  norm_num only [Nat.cast_ofNat] at hd
  linarith

theorem slotExcess_le (J : ℕ) (tau : ℚ) (w : ℤ) (hw : w ≤ 20) :
    slotExcess J tau w ≤ (J : ℚ)*max (20-tau) 0 := by
  calc
    _ ≤ ∑ _j ∈ range J, max (20-tau) 0 := by
      apply sum_le_sum
      intro j hj
      apply max_le_max _ le_rfl
      have hwq : (w : ℚ) ≤ 20 := by exact_mod_cast hw
      have hjq : (0 : ℚ) ≤ j := by positivity
      linarith
    _ = _ := by simp

structure Affine where
  constant : ℚ
  slope : ℚ
  deriving DecidableEq, Repr

def Affine.eval (f : Affine) (x : ℚ) : ℚ := f.constant+f.slope*x

def Affine.leOn (f g : Affine) (a b : ℚ) : Prop :=
  f.eval a ≤ g.eval a ∧ f.eval b ≤ g.eval b

instance (f g : Affine) (a b : ℚ) : Decidable (f.leOn g a b) :=
  inferInstanceAs (Decidable (_ ∧ _))

theorem Affine.leOn_sound (f g : Affine) (a b x : ℚ) (ha : a ≤ x) (hb : x ≤ b)
    (h : f.leOn g a b) : f.eval x ≤ g.eval x := by
  unfold Affine.leOn Affine.eval at *
  by_cases hs : f.slope ≤ g.slope
  · nlinarith [mul_nonneg (sub_nonneg.mpr hs) (sub_nonneg.mpr ha), h.1]
  · nlinarith [mul_nonneg (sub_nonneg.mpr (le_of_not_ge hs)) (sub_nonneg.mpr hb), h.2]

/-- A certificate for one original floor on a residue strip (l(x),r(x)].
The upper inequality may be weak because the lower strip edge is excluded. -/
def floorStripCheck (a b A : ℚ) (l r : Affine) (k : ℤ) : Prop :=
  (Affine.mk 0 k).leOn ⟨A-r.constant, -r.slope⟩ a b ∧
    (Affine.mk (A-l.constant) (-l.slope)).leOn ⟨0, (k : ℚ)+1⟩ a b

instance (a b A : ℚ) (l r : Affine) (k : ℤ) :
    Decidable (floorStripCheck a b A l r k) :=
  inferInstanceAs (Decidable (_ ∧ _))

theorem floorStripCheck_sound (a b A x y : ℚ) (l r : Affine) (k : ℤ)
    (h : floorStripCheck a b A l r k) (hx : 0 < x)
    (ha : a ≤ x) (hb : x ≤ b) (hly : l.eval x < y) (hyr : y ≤ r.eval x) :
    ⌊(A-y)/x⌋ = k := by
  have h1 := Affine.leOn_sound _ _ a b x ha hb h.1
  have h2 := Affine.leOn_sound _ _ a b x ha hb h.2
  unfold Affine.eval at *
  apply Int.floor_eq_iff.mpr
  constructor
  · apply (le_div_iff₀ hx).mpr
    linarith
  · apply (div_lt_iff₀ hx).mpr
    linarith

def endpoint (i : ℕ) : ℚ :=
  if i = 0 then 0 else if i < 22 then 47+i else if i < 43 then 68+i else 158

def profileFromFloors (v : ℕ → ℤ) (nu : ℤ) : ℤ :=
  5*v 0-(∑ i ∈ range 21, v (i+1))+(∑ i ∈ range 21, v (i+22))-5*v 43-nu+4

/-- Collecting equal floor endpoints is an identity of the original
factor profile, with all multiplicities retained. -/
theorem floorProfile_fromFloors (x y : ℚ) :
    floorProfile x y =
      profileFromFloors (fun i => ⌊(endpoint i-y)/x⌋) (normalization x) := by
  norm_num [floorProfile, floorInterval, profileFromFloors, endpoint, sum_range_succ]
  ring

structure Strip where
  left : Affine
  right : Affine
  floors : List ℤ
  cachedWeight : ℤ
  deriving DecidableEq, Repr

def Strip.weight (s : Strip) (nu : ℤ) : ℤ := profileFromFloors (s.floors.getD · 0) nu

def Strip.check (s : Strip) (a b : ℚ) : Prop :=
  ∀ i ∈ range 44, floorStripCheck a b (endpoint i) s.left s.right (s.floors.getD i 0)

instance (s : Strip) (a b : ℚ) : Decidable (s.check a b) :=
  inferInstanceAs (Decidable (∀ i ∈ range 44, _))

theorem Strip.check_sound (s : Strip) (a b x y : ℚ) (h : s.check a b)
    (hx : 0 < x) (ha : a ≤ x) (hb : x ≤ b)
    (hy : s.left.eval x < y ∧ y ≤ s.right.eval x) :
    s.weight (normalization x) = floorProfile x y := by
  rw [floorProfile_fromFloors]
  have hf (i : ℕ) (hi : i < 44) : s.floors.getD i 0 = ⌊(endpoint i-y)/x⌋ :=
    (floorStripCheck_sound a b (endpoint i) x y s.left s.right (s.floors.getD i 0)
      (h i (mem_range.mpr hi)) hx ha hb hy.1 hy.2).symm
  unfold Strip.weight profileFromFloors
  dsimp only
  rw [hf 0 (by omega), hf 43 (by omega)]
  have h1 : (∑ i ∈ range 21, s.floors.getD (i+1) 0) =
      ∑ i ∈ range 21, ⌊(endpoint (i+1)-y)/x⌋ := by
    apply sum_congr rfl
    intro i hi
    exact hf _ (by have := mem_range.mp hi; omega)
  have h2 : (∑ i ∈ range 21, s.floors.getD (i+22) 0) =
      ∑ i ∈ range 21, ⌊(endpoint (i+22)-y)/x⌋ := by
    apply sum_congr rfl
    intro i hi
    exact hf _ (by have := mem_range.mp hi; omega)
  rw [h1, h2]

def normalizationFloorCheck (a b A : ℚ) (k : ℤ) : Prop :=
  0 ≤ k ∧ (k : ℚ)*b ≤ A ∧ A ≤ ((k : ℚ)+1)*a

instance (a b A : ℚ) (k : ℤ) : Decidable (normalizationFloorCheck a b A k) :=
  inferInstanceAs (Decidable (_ ∧ _))

theorem normalizationFloorCheck_sound (a b A x : ℚ) (k : ℤ)
    (h : normalizationFloorCheck a b A k) (hx : 0 < x) (ha : a < x) (hb : x ≤ b) :
    ⌊A/x⌋ = k := by
  have hk : (0 : ℚ) ≤ k := by exact_mod_cast h.1
  apply Int.floor_eq_iff.mpr
  constructor
  · apply (le_div_iff₀ hx).mpr
    nlinarith [h.2.1, mul_nonneg hk (sub_nonneg.mpr hb)]
  · apply (div_lt_iff₀ hx).mpr
    nlinarith [h.2.2, mul_pos (show (0 : ℚ) < (k : ℚ)+1 by linarith) (sub_pos.mpr ha)]

def stripChainCheck (a b : ℚ) (start stop : Affine) : List Strip → Prop
  | [] => start = stop
  | s::ss => s.left = start ∧ s.left.leOn s.right a b ∧
      stripChainCheck a b s.right stop ss

instance (a b : ℚ) (start stop : Affine) (ss : List Strip) :
    Decidable (stripChainCheck a b start stop ss) := by
  induction ss generalizing start with
  | nil => exact inferInstanceAs (Decidable (start = stop))
  | cons s ss ih =>
    letI := ih s.right
    exact inferInstanceAs (Decidable (_ ∧ _ ∧ stripChainCheck a b s.right stop ss))

def Strip.toStep (s : Strip) (J : ℕ) (tau x : ℚ) : StepCell :=
  ⟨s.left.eval x, s.right.eval x, slotExcess J tau s.cachedWeight⟩

theorem stripChainCheck_sound (a b x : ℚ) (ha : a ≤ x) (hb : x ≤ b)
    (start stop : Affine) (ss : List Strip) (J : ℕ) (tau : ℚ)
    (h : stripChainCheck a b start stop ss) :
    StepChain (start.eval x) (stop.eval x) (ss.map (fun s => s.toStep J tau x)) := by
  induction ss generalizing start with
  | nil => exact congrArg (Affine.eval · x) h
  | cons s ss ih =>
    exact ⟨congrArg (Affine.eval · x) h.1,
      by rw [← h.1]; exact Affine.leOn_sound _ _ a b x ha hb h.2.1,
      ih s.right h.2.2⟩

structure Cell where
  left : ℚ
  right : ℚ
  denFloors : List ℤ
  numFloors : List ℤ
  strips : List Strip
  tau : ℚ
  cost : Affine
  deriving DecidableEq, Repr

def Cell.nu (c : Cell) : ℤ :=
  (∑ b ∈ range 16, c.denFloors.getD b 0)-2*(∑ a ∈ range 5, c.numFloors.getD a 0)

def Cell.steps (c : Cell) (J : ℕ) (x : ℚ) : List StepCell :=
  c.strips.map (fun s => s.toStep J c.tau x)

def Cell.rate (c : Cell) (J : ℕ) : Affine :=
  ⟨2*c.tau + (c.strips.map (fun s =>
      slotExcess J c.tau s.cachedWeight*(s.right.constant-s.left.constant))).sum/2,
    (c.strips.map (fun s =>
      slotExcess J c.tau s.cachedWeight*(s.right.slope-s.left.slope))).sum/2⟩

/-- This is a decidable certificate predicate, not an assumed pointwise
cost inequality. Every floor, coverage edge, and affine coefficient is checked. -/
def Cell.check (c : Cell) : Prop :=
  4 ≤ c.left ∧ c.left < c.right ∧ c.right ≤ 26 ∧
  (∀ b ∈ range 16, normalizationFloorCheck c.left c.right ((52-2*b : ℕ) : ℚ)
    (c.denFloors.getD b 0)) ∧
  (∀ a ∈ range 5, normalizationFloorCheck c.left c.right ((48+a : ℕ) : ℚ)
    (c.numFloors.getD a 0)) ∧
  stripChainCheck c.left c.right ⟨0,0⟩ ⟨0,1⟩ c.strips ∧
  (∀ s ∈ c.strips, s.check c.left c.right ∧
    s.weight c.nu = s.cachedWeight ∧ s.cachedWeight ≤ 20) ∧
  c.strips.length ≤ 44 ∧ 0 ≤ c.tau ∧ c.tau ≤ 20 ∧ c.rate 10 = c.cost

instance (c : Cell) : Decidable c.check :=
  inferInstanceAs (Decidable (_ ∧ _))

theorem Cell.normalization_eq (c : Cell) (h : c.check) (x : ℚ)
    (ha : c.left < x) (hb : x ≤ c.right) : normalization x = c.nu := by
  have hx : 0 < x := lt_of_lt_of_le (by norm_num : (0 : ℚ) < 4) (h.1.trans ha.le)
  unfold normalization Cell.nu
  congr 1
  · apply sum_congr rfl
    intro b hb'
    exact normalizationFloorCheck_sound _ _ _ x _ (h.2.2.2.1 b hb') hx ha hb
  · congr 1
    apply sum_congr rfl
    intro a ha'
    exact normalizationFloorCheck_sound _ _ _ x _ (h.2.2.2.2.1 a ha') hx ha hb

theorem Cell.chain (c : Cell) (h : c.check) (J : ℕ) (x : ℚ)
    (ha : c.left ≤ x) (hb : x ≤ c.right) : StepChain 0 x (c.steps J x) := by
  simpa only [Cell.steps, Affine.eval, zero_mul, zero_add, one_mul] using
    stripChainCheck_sound c.left c.right x ha hb ⟨0,0⟩ ⟨0,1⟩ c.strips J c.tau
      h.2.2.2.2.2.1

theorem Cell.values (c : Cell) (h : c.check) (J : ℕ) (x : ℚ)
    (ha : c.left < x) (hb : x ≤ c.right) :
    ∀ t ∈ c.steps J x, ∀ y, t.left < y → y ≤ t.right →
      t.value = profileExcess J c.tau x y := by
  intro t ht y hl hr
  obtain ⟨s, hs, rfl⟩ := List.mem_map.mp ht
  have hx : 0 < x := lt_of_lt_of_le (by norm_num : (0 : ℚ) < 4) (h.1.trans ha.le)
  change slotExcess J c.tau s.cachedWeight = _
  rw [← (h.2.2.2.2.2.2.1 s hs).2.1, ← c.normalization_eq h x ha hb,
    s.check_sound c.left c.right x y (h.2.2.2.2.2.2.1 s hs).1 hx ha.le hb ⟨hl,hr⟩]
  rfl

theorem Cell.rate_eq_integral (c : Cell) (J : ℕ) (x : ℚ) :
    (c.rate J).eval x = 2*c.tau+stepIntegral (c.steps J x)/2 := by
  unfold Cell.rate Affine.eval stepIntegral Cell.steps Strip.toStep
  simp only [List.map_map, Function.comp_def, Affine.eval]
  have he : (c.strips.map (fun s =>
      slotExcess J c.tau s.cachedWeight*
        ((s.right.constant+s.right.slope*x)-(s.left.constant+s.left.slope*x)))).sum =
      (c.strips.map (fun s => slotExcess J c.tau s.cachedWeight*
        (s.right.constant-s.left.constant))).sum +
      (c.strips.map (fun s => slotExcess J c.tau s.cachedWeight*
        (s.right.slope-s.left.slope))).sum*x := by
    induction c.strips with
    | nil => simp
    | cons s ss ih => simp only [List.map_cons, List.sum_cons]; rw [ih]; ring
  rw [he]
  ring

theorem Cell.lattice_error (c : Cell) (h : c.check) (n p : ℕ) (hn : 0 < n)
    (ha : c.left < (p : ℚ)/n) (hb : (p : ℚ)/n ≤ c.right) :
    |latticeSum n p (profileExcess 10 c.tau ((p : ℚ)/n))-
      (n : ℚ)*stepIntegral (c.steps 10 ((p : ℚ)/n))| ≤
      stepEndpointFee (c.steps 10 ((p : ℚ)/n)) :=
  function_lattice_error_le n p hn _ (c.chain h 10 _ ha.le hb) _ (c.values h 10 _ ha hb)

theorem latticeSum_eq_residue_sum (n p : ℕ) (f : ℚ → ℚ)
    (hf : f ((p : ℚ)/n) = f 0) :
    latticeSum n p f = ∑ c : Fin p, f ((c.val : ℚ)/n) := by
  have hco := sum_Ico_add_eq_sum_Icc (f := fun c : ℤ => f ((c : ℚ)/n))
    (show (0 : ℤ) ≤ p by positivity)
  have hoc := sum_Ioc_add_eq_sum_Icc (f := fun c : ℤ => f ((c : ℚ)/n))
    (show (0 : ℤ) ≤ p by positivity)
  have he : latticeSum n p f = ∑ c ∈ Ico (0 : ℤ) (p : ℤ), f ((c : ℚ)/n) := by
    unfold latticeSum
    simp only [Int.cast_natCast, Int.cast_zero, zero_div, hf] at hco hoc
    linarith
  rw [he]
  rw [show (∑ c : Fin p, f ((c.val : ℚ)/n)) = ∑ c ∈ range p, f ((c : ℚ)/n) from
    Fin.sum_univ_eq_sum_range (fun c => f ((c : ℚ)/n)) p]
  apply sum_nbij' (fun c : ℤ => c.toNat) (fun c : ℕ => (c : ℤ))
  · intro c hc
    simp only [mem_Ico] at hc
    simp only [mem_range]
    omega
  · intro c hc
    simp only [mem_range] at hc
    simp only [mem_Ico]
    omega
  · intro c hc
    simp only [mem_Ico] at hc
    omega
  · intro c hc
    simp
  · intro c hc
    have hc0 := (mem_Ico.mp hc).1
    congr 2
    exact_mod_cast (Int.toNat_of_nonneg hc0).symm

theorem profile_lattice_eq_unshifted (n p : ℕ) (hn : 0 < n) (hp : p.Prime)
    (hsq : 158*n+2 < p^2) (J : ℕ) (tau : ℚ) :
    latticeSum n p (profileExcess J tau ((p : ℚ)/n)) =
      ∑ c : Fin p, slotExcess J tau (h158UnshiftedClassCost n p c.val) := by
  have hx : (p : ℚ)/n ≠ 0 := div_ne_zero (by exact_mod_cast hp.ne_zero)
    (by exact_mod_cast Nat.ne_of_gt hn)
  have hf : profileExcess J tau ((p : ℚ)/n) ((p : ℚ)/n) =
      profileExcess J tau ((p : ℚ)/n) 0 := by
    unfold profileExcess
    congr 1
    simpa only [zero_add] using floorProfile_period ((p : ℚ)/n) 0 hx
  rw [latticeSum_eq_residue_sum n p _ hf]
  apply sum_congr rfl
  intro c hc
  rw [profileExcess, floorProfile_eq_unshifted n p c.val hn hp hsq]

theorem folded_threshold_le_full {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (r J : ℕ) (tau : ℚ) :
    rationalThresholdBudget (h158FoldedWeight n p hp) (h158FoldedSpacing n p hp) r J tau ≤
      (r : ℚ)*tau + (∑ c : Fin p, slotExcess J tau (h158ClassCost p n c.val))/2 +
        (J : ℚ)*max (20-tau) 0/2 := by
  classical
  let f (c : Fin p) := slotExcess J tau (h158ClassCost p n c.val)
  have hf (c : Fin p) : f (h158ReflectionClass n p hp c) = f c := by
    simp only [f, h158ClassCost_reflection]
  have hsum : (∑ c : Fin p, f c) =
      2*(∑ c : H158PairClass n p hp, f c.val) + f (h158CentralClass n p hp) := by
    rw [sum_involution_orbits (h158ReflectionClass n p hp)
      (h158ReflectionClass_involutive n p hp)]
    simp only [hf, h158ReflectionClass_fixed_iff n hp hp2, sum_filter,
      sum_ite_eq', mem_univ, ite_true]
    rw [← sum_filter]
    have he := Finset.sum_subtype (univ.filter (fun c => c < h158ReflectionClass n p hp c))
      (p := fun c => c < h158ReflectionClass n p hp c)
      (F := inferInstance)
      (fun c => by simp) (fun c => f c+f c)
    rw [he]
    simp only [sum_add_distrib]
    ring
  have hc : (∑ j ∈ range J, max ((h158ClassCost p n (h158CentralClass n p hp) : ℚ)-
      2*2*(j : ℚ)-tau) 0) ≤ f (h158CentralClass n p hp) := by
    apply sum_le_sum
    intro j hj
    apply max_le_max _ le_rfl
    have : (0 : ℚ) ≤ j := by positivity
    linarith
  have hbound := slotExcess_le J tau (h158ClassCost p n (h158CentralClass n p hp))
    (h158ClassCost_le_twenty p n _ hn (Fact.out : p.Prime) hsq)
  unfold rationalThresholdBudget thresholdBudget
  rw [Fintype.sum_option]
  have hpairs : (∑ c : H158PairClass n p hp,
      ∑ j ∈ range J, max ((h158FoldedWeight n p hp (some c) : ℚ)-
        2*(h158FoldedSpacing n p hp (some c) : ℚ)*(j : ℚ)-tau) 0) =
      ∑ c : H158PairClass n p hp, f c.val := by
    apply sum_congr rfl
    intro c hc
    simp only [h158FoldedWeight, h158FoldedSpacing, h158ClassCost_reflection,
      max_self, Int.cast_one, mul_one, f, slotExcess]
  rw [hpairs]
  simp only [h158FoldedWeight, h158FoldedSpacing, Int.cast_ofNat]
  change _ ≤ (r : ℚ)*tau+(∑ c : Fin p, f c)/2+(J : ℚ)*max (20-tau) 0/2
  change f (h158CentralClass n p hp) ≤ _ at hbound
  apply (add_le_add (le_refl ((r : ℚ)*tau))
    (add_le_add hc (le_refl (∑ c : H158PairClass n p hp, f c.val)))).trans
  rw [hsum]
  linarith only [hbound]

theorem folded_threshold_le_profile {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (r J : ℕ) (tau : ℚ) :
    rationalThresholdBudget (h158FoldedWeight n p hp) (h158FoldedSpacing n p hp) r J tau ≤
      (r : ℚ)*tau + latticeSum n p (profileExcess J tau ((p : ℚ)/n))/2 +
        (J : ℚ)*(27+max (20-tau) 0)/2 := by
  have hl := h158_unshifted_threshold_error_le n p hp (fun _ => 1) 0 J tau
  simp only [rationalThresholdBudget, thresholdBudget, Nat.cast_zero, zero_mul, zero_add,
    Int.cast_one, mul_one] at hl
  change |(∑ c : Fin p, slotExcess J tau (h158ClassCost p n c.val))-
    ∑ c : Fin p, slotExcess J tau (h158UnshiftedClassCost n p c.val)| ≤ 27*(J : ℚ) at hl
  have he := (le_abs_self _).trans hl
  rw [profile_lattice_eq_unshifted n p hn (Fact.out : p.Prime) hsq J tau]
  have h := folded_threshold_le_full n hn hp hp2 hsq r J tau
  linarith

/-- The requested bridge to the actual shifted reflection's unshifted
weights. The extra 27J is the proved endpoint Lipschitz correction. -/
theorem folded_unshifted_threshold_le_profile {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (r J : ℕ) (tau : ℚ) :
    rationalThresholdBudget (h158FoldedUnshiftedWeight n p hp)
      (h158FoldedSpacing n p hp) r J tau ≤
      (r : ℚ)*tau + latticeSum n p (profileExcess J tau ((p : ℚ)/n))/2 +
        (J : ℚ)*(81+max (20-tau) 0)/2 := by
  have he := (neg_le_abs _).trans
    (h158_folded_unshifted_threshold_error_le n hp hp2 r J tau)
  have h := folded_threshold_le_profile n hn hp hp2 hsq r J tau
  linarith

theorem Cell.endpointFee_le (c : Cell) (h : c.check) (x : ℚ) :
    stepEndpointFee (c.steps 10 x) ≤ 8800 := by
  have hmax : max (20-c.tau) 0 ≤ (20 : ℚ) :=
    max_le (by linarith [h.2.2.2.2.2.2.2.2.1]) (by norm_num)
  have hv : ∀ s ∈ c.strips, |slotExcess 10 c.tau s.cachedWeight| ≤ 200 := by
    intro s hs
    rw [abs_of_nonneg (slotExcess_nonneg _ _ _)]
    have hs20 := (h.2.2.2.2.2.2.1 s hs).2.2
    have hsbound := slotExcess_le 10 c.tau s.cachedWeight hs20
    norm_num only [Nat.cast_ofNat] at hsbound
    linarith
  have hsum : (c.strips.map (fun s => |slotExcess 10 c.tau s.cachedWeight|)).sum ≤
      (c.strips.length : ℚ)*200 := by
    have aux : ∀ ss : List Strip,
        (∀ s ∈ ss, |slotExcess 10 c.tau s.cachedWeight| ≤ 200) →
        (ss.map (fun s => |slotExcess 10 c.tau s.cachedWeight|)).sum ≤
          (ss.length : ℚ)*200 := by
      intro ss
      induction ss with
      | nil => intro _; simp
      | cons s ss ih =>
        intro hv'
        have hs := hv' s (by simp)
        have hi := ih (fun t ht => hv' t (by simp [ht]))
        simp only [List.map_cons, List.sum_cons, List.length_cons, Nat.cast_add, Nat.cast_one]
        linarith
    exact aux c.strips hv
  have hlen : (c.strips.length : ℚ) ≤ 44 := by exact_mod_cast h.2.2.2.2.2.2.2.1
  unfold stepEndpointFee Cell.steps
  simp only [List.map_map, Function.comp_def, Strip.toStep]
  linarith

/-- Uniform finite-cell lattice/integral estimate for the original factor
profile, at all rational ratios covered by a checked cell. -/
theorem Cell.original_lattice_error_le (c : Cell) (h : c.check)
    (n p : ℕ) (hn : 0 < n) (hp : p.Prime) (hsq : 158*n+2 < p^2)
    (ha : c.left < (p : ℚ)/n) (hb : (p : ℚ)/n ≤ c.right) :
    |(∑ d : Fin p, slotExcess 10 c.tau (h158UnshiftedClassCost n p d.val))-
      (n : ℚ)*stepIntegral (c.steps 10 ((p : ℚ)/n))| ≤ 8800 := by
  rw [← profile_lattice_eq_unshifted n p hn hp hsq]
  exact (c.lattice_error h n p hn ha hb).trans (c.endpointFee_le h _)

theorem Cell.folded_unshifted_bound (c : Cell) (h : c.check)
    {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (ha : c.left < (p : ℚ)/n) (hb : (p : ℚ)/n ≤ c.right) :
    rationalThresholdBudget (h158FoldedUnshiftedWeight n p hp)
      (h158FoldedSpacing n p hp) (2*n) 10 c.tau ≤
        (n : ℚ)*c.cost.eval ((p : ℚ)/n)+4905 := by
  have hl := (le_abs_self _).trans ((c.lattice_error h n p hn ha hb).trans (c.endpointFee_le h _))
  have hf := folded_unshifted_threshold_le_profile n hn hp hp2 hsq (2*n) 10 c.tau
  have he := c.rate_eq_integral 10 ((p : ℚ)/n)
  rw [h.2.2.2.2.2.2.2.2.2.2] at he
  have hmax : max (20-c.tau) 0 ≤ (20 : ℚ) :=
    max_le (by linarith [h.2.2.2.2.2.2.2.2.1]) (by norm_num)
  push_cast at hf
  nlinarith

theorem rowFee_zero (n p : ℕ) (hband : 4*n ≤ p) : h158RowFee n p = 0 := by
  unfold h158RowFee
  have he : (∑ i : Fin (2*n), (2*i.val)/p) = 0 := by
    apply sum_eq_zero
    intro i hi
    apply Nat.div_eq_of_lt
    have := i.isLt
    omega
  rw [he, mul_zero]

/-- Actual primitive Gauss cost, uniformly on a checked middle cell.
No rate hypothesis, allocation hypothesis, or floating-point axiom occurs.
4635 is deliberately a conservative uniform O(1) endpoint fee. -/
theorem Cell.primitive_cost_bound (c : Cell) (h : c.check)
    {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (ha : c.left < (p : ℚ)/n) (hb : (p : ℚ)/n ≤ c.right)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤
      (n : ℚ)*c.cost.eval ((p : ℚ)/n)+4635 := by
  have hnn : (0 : ℚ) < n := by exact_mod_cast hn
  have hband : 4*n ≤ p := by
    have hq : (4 : ℚ) ≤ (p : ℚ)/n := h.1.trans ha.le
    have := (le_div_iff₀ hnn).mp hq
    exact_mod_cast this
  have hc := h158_primitive_cost_truncated_folded_threshold n hn hp hp2 hsq 10 c.tau
    (by norm_num; exact h.2.2.2.2.2.2.2.2.1) hdet
  rw [rowFee_zero n p hband] at hc
  simp only [Nat.cast_zero, zero_add] at hc
  have hcq : (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤
      (⌊rationalThresholdBudget (h158FoldedWeight n p hp)
        (h158FoldedSpacing n p hp) (2*n) 10 c.tau⌋ : ℤ) := by exact_mod_cast hc
  have hbudget := hcq.trans (Int.floor_le _)
  have hl := (le_abs_self _).trans ((c.lattice_error h n p hn ha hb).trans (c.endpointFee_le h _))
  have hf := folded_threshold_le_profile n hn hp hp2 hsq (2*n) 10 c.tau
  have he := c.rate_eq_integral 10 ((p : ℚ)/n)
  rw [h.2.2.2.2.2.2.2.2.2.2] at he
  have hmax : max (20-c.tau) 0 ≤ (20 : ℚ) :=
    max_le (by linarith [h.2.2.2.2.2.2.2.2.1]) (by norm_num)
  push_cast at hf
  nlinarith

def coverageCheck (left right : ℚ) : List Cell → Prop
  | [] => left = right
  | c::cs => c.left = left ∧ c.left ≤ c.right ∧ coverageCheck c.right right cs

instance (left right : ℚ) (cs : List Cell) : Decidable (coverageCheck left right cs) := by
  induction cs generalizing left with
  | nil => exact inferInstanceAs (Decidable (left = right))
  | cons c cs ih =>
    letI := ih c.right
    exact inferInstanceAs (Decidable (_ ∧ _ ∧ coverageCheck c.right right cs))

theorem coverageCheck_sound (left right x : ℚ) (cs : List Cell)
    (h : coverageCheck left right cs) (hl : left < x) (hr : x ≤ right) :
    ∃ c ∈ cs, c.left < x ∧ x ≤ c.right := by
  induction cs generalizing left with
  | nil => change left = right at h; exact False.elim (by linarith)
  | cons c cs ih =>
    by_cases hx : x ≤ c.right
    · exact ⟨c, by simp, by simpa only [h.1] using hl, hx⟩
    · obtain ⟨d, hd, hlo, hhi⟩ := ih c.right h.2.2 (lt_of_not_ge hx)
      exact ⟨d, by simp [hd], hlo, hhi⟩

def Cell.costIntegral (c : Cell) : ℚ :=
  c.cost.constant*(c.right-c.left)+c.cost.slope*(c.right*c.right-c.left*c.left)/2

structure Certificate where
  cells : List Cell
  integral : ℚ

def Certificate.check (c : Certificate) : Prop :=
  coverageCheck 4 26 c.cells ∧ (∀ d ∈ c.cells, d.check) ∧
    (c.cells.map Cell.costIntegral).sum = c.integral

instance (c : Certificate) : Decidable c.check :=
  inferInstanceAs (Decidable (_ ∧ _ ∧ _))

/-- A full saved-certificate check entails an actual local cost bound for
every main-range middle prime, including all rational cell boundaries. -/
theorem Certificate.actual_cost (cert : Certificate) (h : cert.check)
    {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n)
    (hlo : 4*n < p) (hhi : p ≤ 26*n) (hsq : 158*n+2 < p^2)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    ∃ c ∈ cert.cells, c.left < (p : ℚ)/n ∧ (p : ℚ)/n ≤ c.right ∧
      (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤
        (n : ℚ)*c.cost.eval ((p : ℚ)/n)+4635 := by
  have hnn : (0 : ℚ) < n := by exact_mod_cast hn
  have ha : (4 : ℚ) < (p : ℚ)/n :=
    (lt_div_iff₀ hnn).mpr (by exact_mod_cast hlo)
  have hb : (p : ℚ)/n ≤ 26 := (div_le_iff₀ hnn).mpr (by exact_mod_cast hhi)
  obtain ⟨c, hc, hca, hcb⟩ := coverageCheck_sound 4 26 ((p : ℚ)/n) cert.cells h.1 ha hb
  refine ⟨c, hc, hca, hcb, ?_⟩
  exact c.primitive_cost_bound (h.2.1 c hc) n hn (Fact.out : p.Prime).pos (by omega)
    hsq hca hcb hdet

/-- Rational affine inventory mass for any predicate on the ten slots. -/
def Cell.slotMass (c : Cell) (pred : ℤ → Bool) : Affine :=
  let count := fun s : Strip => ((List.range 10).filter
    (fun j => pred (s.cachedWeight-2*(j : ℤ)))).length
  ⟨(c.strips.map (fun s => (count s : ℚ)*(s.right.constant-s.left.constant))).sum/2,
    (c.strips.map (fun s => (count s : ℚ)*(s.right.slope-s.left.slope))).sum/2⟩

/-- Exact rank-cutoff tests: at most rank two strictly above the threshold,
and enough at or above it unless the threshold is zero. This is supplemental
optimal-selection data; soundness of the cost upper bound does not need it. -/
def Cell.selectionCheck (c : Cell) : Prop :=
  (c.slotMass (fun v => decide (c.tau < (v : ℚ)))).leOn ⟨2,0⟩ c.left c.right ∧
    (c.tau = 0 ∨ (Affine.mk 2 0).leOn
      (c.slotMass (fun v => decide (c.tau ≤ (v : ℚ)))) c.left c.right)

instance (c : Cell) : Decidable c.selectionCheck :=
  inferInstanceAs (Decidable (_ ∧ _))

theorem Cell.selectionCheck_sound (c : Cell) (h : c.selectionCheck) (x : ℚ)
    (ha : c.left ≤ x) (hb : x ≤ c.right) :
    (c.slotMass (fun v => decide (c.tau < (v : ℚ)))).eval x ≤ 2 ∧
      (c.tau = 0 ∨ 2 ≤ (c.slotMass (fun v => decide (c.tau ≤ (v : ℚ)))).eval x) := by
  constructor
  · simpa only [Affine.eval, zero_mul, add_zero] using
      Affine.leOn_sound _ _ c.left c.right x ha hb h.1
  · rcases h.2 with ht | ht
    · exact Or.inl ht
    · exact Or.inr (by simpa only [Affine.eval, zero_mul, add_zero] using
        Affine.leOn_sound _ _ c.left c.right x ha hb ht)

def Cell.nonnegativeCheck (c : Cell) : Prop :=
  (Affine.mk 0 0).leOn c.cost c.left c.right

instance (c : Cell) : Decidable c.nonnegativeCheck :=
  inferInstanceAs (Decidable (Affine.leOn _ _ _ _))

theorem Cell.nonnegativeCheck_sound (c : Cell) (h : c.nonnegativeCheck)
    (x : ℚ) (ha : c.left ≤ x) (hb : x ≤ c.right) : 0 ≤ c.cost.eval x := by
  simpa only [Affine.eval, zero_mul, zero_add] using
    Affine.leOn_sound _ _ c.left c.right x ha hb h

theorem coverageCheck_lower (left right : ℚ) (cs : List Cell)
    (h : coverageCheck left right cs) : ∀ c ∈ cs, left ≤ c.left := by
  induction cs generalizing left with
  | nil => simp
  | cons c cs ih =>
    intro d hd
    rcases List.mem_cons.mp hd with rfl | hd
    · exact h.1.symm.le
    · exact (h.1.symm.le.trans h.2.1).trans (ih c.right h.2.2 d hd)

theorem coverageCheck_pairwise (left right : ℚ) (cs : List Cell)
    (h : coverageCheck left right cs) : cs.Pairwise (fun c d => c.right ≤ d.left) := by
  induction cs generalizing left with
  | nil => exact List.Pairwise.nil
  | cons c cs ih =>
    exact List.pairwise_cons.mpr ⟨coverageCheck_lower c.right right cs h.2.2,
      ih c.right h.2.2⟩

theorem Certificate.nodup (c : Certificate) (h : c.check) : c.cells.Nodup := by
  have hp := coverageCheck_pairwise 4 26 c.cells h.1
  rw [List.nodup_iff_pairwise_ne]
  apply hp.imp_of_mem
  intro a b ha hb hab heq
  subst b
  exact (not_le_of_gt (h.2.1 a ha).2.1) hab

end OddZetaMixed.H158MiddleCells
