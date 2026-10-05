import OddZetaMixed.H158HybridMarginals

/-!
# Sound data language for the high-band cells

All checks are rational endpoint inequalities. A strip check proves the
floors of the original interval endpoints everywhere in its open interior,
including the integer one-unit shifts in the actual factor counts. The
selection formula is compiled from these same signatures and all 16 slots.
-/

set_option autoImplicit false
namespace OddZetaMixed.H158HighCells
open Finset LocalJetValuation

structure Affine where
  a : ℚ
  b : ℚ
  deriving DecidableEq

def Affine.eval (f : Affine) (x : ℚ) : ℚ := f.a+f.b*x
def Affine.add (f g : Affine) : Affine := ⟨f.a+g.a, f.b+g.b⟩
def Affine.scale (t : ℚ) (f : Affine) : Affine := ⟨t*f.a, t*f.b⟩
def Affine.integral (f : Affine) (lo hi : ℚ) : ℚ :=
  f.a*(hi-lo)+f.b*(hi*hi-lo*lo)/2

def AffineLE (lo hi : ℚ) (f g : Affine) : Prop :=
  f.eval lo ≤ g.eval lo ∧ f.eval hi ≤ g.eval hi

instance (lo hi : ℚ) (f g : Affine) : Decidable (AffineLE lo hi f g) := inferInstanceAs
  (Decidable (_ ∧ _))

theorem AffineLE.sound {lo hi x : ℚ} {f g : Affine}
    (h : AffineLE lo hi f g) (hx : lo ≤ x ∧ x ≤ hi) : f.eval x ≤ g.eval x := by
  rcases h with ⟨hl, hh⟩
  unfold Affine.eval at *
  by_cases hs : f.b ≤ g.b
  · nlinarith [mul_nonneg (sub_nonneg.mpr hs) (sub_nonneg.mpr hx.1)]
  · nlinarith [mul_nonneg (sub_nonneg.mpr (le_of_not_ge hs)) (sub_nonneg.mpr hx.2)]

def endpoint (i : Fin 44) : ℕ :=
  if i.val = 0 then 0 else if i.val < 22 then 47+i.val
  else if i.val < 43 then 68+i.val else 158

def endpointIndex (e : ℕ) : Fin 44 :=
  ⟨(if e = 0 then 0 else if e = 158 then 43 else if e < 90 then e-47 else e-68) % 44,
    Nat.mod_lt _ (by decide)⟩

theorem endpoint_index (e : ℕ) (he : e ∈ h158HybridEndpoints) : endpoint (endpointIndex e) = e := by
  simp only [h158HybridEndpoints, mem_union, mem_insert, mem_singleton, mem_Icc] at he
  rcases he with ((h0 | h158) | hm) | hh
  · subst e; decide
  · subst e; decide
  · have h0 : e ≠ 0 := by omega
    have h158 : e ≠ 158 := by omega
    have h90 : e < 90 := by omega
    have hm44 : e-47 < 44 := by omega
    simp only [endpointIndex, h0, h158, h90, ite_false, ite_true, Nat.mod_eq_of_lt hm44,
      endpoint]
    split_ifs <;> omega
  · have h0 : e ≠ 0 := by omega
    have h158 : e ≠ 158 := by omega
    have h90 : ¬e < 90 := by omega
    have hm44 : e-68 < 44 := by omega
    simp only [endpointIndex, h0, h158, h90, ite_false, Nat.mod_eq_of_lt hm44, endpoint]
    split_ifs <;> omega

structure Strip where
  left : Affine
  right : Affine
  floors : Fin 44 → ℤ
  multiplicity : ℤ
  roots : ℤ
  /-- 0 empty, 1 multiple, 2 left cutoff obstruction, 3 right obstruction,
  4 both-cutoff plateau. These labels never impose an allocation cap. -/
  kind : ℕ

def Strip.q (s : Strip) (e : ℕ) : ℤ := s.floors (endpointIndex e)
def Strip.pole (s : Strip) : ℤ := s.q 105
def Strip.poleCount (s : Strip) : ℤ := s.q 105-s.q 53
def Strip.M (s : Strip) : ℤ := ∑ b ∈ range 16, (s.q (105-b)-s.q (53+b))
def Strip.z (s : Strip) : ℤ :=
  ∑ a ∈ range 5, (s.q (48+a)-s.q 0+s.q 158-s.q (110-a))

def Strip.floorValid (lo hi : ℚ) (s : Strip) : Prop := ∀ i : Fin 44,
  AffineLE lo hi (s.right.add ⟨0, s.floors i⟩) ⟨endpoint i, 0⟩ ∧
  AffineLE lo hi ⟨endpoint i, 0⟩ (s.left.add ⟨0, s.floors i+1⟩)

instance (lo hi : ℚ) (s : Strip) : Decidable (s.floorValid lo hi) :=
  inferInstanceAs (Decidable (∀ _i : Fin 44, _))

def Strip.singleValid (lo hi : ℚ) (s : Strip) : Prop :=
  s.poleCount = 1 ∧
  AffineLE lo hi ⟨105, -1⟩ (s.left.add ⟨0, s.pole⟩) ∧
  AffineLE lo hi (s.right.add ⟨0, s.pole⟩) ⟨53, 1⟩

def Strip.statusValid (lo hi : ℚ) (s : Strip) : Prop :=
  match s.kind with
  | 0 => s.poleCount = 0
  | 1 => 2 ≤ s.poleCount
  | 2 => s.singleValid lo hi ∧
      AffineLE lo hi ⟨48, 1⟩ (s.left.add ⟨0, s.pole⟩)
  | 3 => s.singleValid lo hi ∧
      AffineLE lo hi (s.right.add ⟨0, s.pole⟩) ⟨110, -1⟩
  | 4 => s.singleValid lo hi ∧
      AffineLE lo hi ⟨110, -1⟩ (s.left.add ⟨0, s.pole⟩) ∧
      AffineLE lo hi (s.right.add ⟨0, s.pole⟩) ⟨48, 1⟩
  | _ => False

instance (lo hi : ℚ) (s : Strip) : Decidable (s.singleValid lo hi) :=
  inferInstanceAs (Decidable (_ ∧ _ ∧ _))
instance (lo hi : ℚ) (s : Strip) : Decidable (s.statusValid lo hi) := by
  unfold Strip.statusValid
  split <;> infer_instance

def Strip.Valid (lo hi : ℚ) (s : Strip) : Prop :=
  AffineLE lo hi s.left s.right ∧ s.floorValid lo hi ∧ s.statusValid lo hi ∧
  s.multiplicity = s.M ∧ s.roots = s.z
instance (lo hi : ℚ) (s : Strip) : Decidable (s.Valid lo hi) :=
  inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _ ∧ _))

theorem Strip.floor_bracket {lo hi x y : ℚ} {s : Strip}
    (h : s.floorValid lo hi) (hx : lo ≤ x ∧ x ≤ hi)
    (hy : s.left.eval x < y ∧ y < s.right.eval x)
    (e : ℕ) (he : e ∈ h158HybridEndpoints) :
    (s.q e : ℚ)*x < (e : ℚ)-y ∧ (e : ℚ)-y < ((s.q e : ℚ)+1)*x := by
  have hl := ((h (endpointIndex e)).1).sound hx
  have hh := ((h (endpointIndex e)).2).sound hx
  rw [endpoint_index e he] at hl hh
  unfold Strip.q Affine.eval Affine.add at *
  dsimp at *
  constructor <;> linarith

theorem Strip.floor_sound {lo hi x y : ℚ} {s : Strip}
    (h : s.floorValid lo hi) (hx : lo ≤ x ∧ x ≤ hi) (hx0 : 0 < x)
    (hy : s.left.eval x < y ∧ y < s.right.eval x)
    (e : ℕ) (he : e ∈ h158HybridEndpoints) : ⌊((e : ℚ)-y)/x⌋ = s.q e := by
  have hb := s.floor_bracket h hx hy e he
  exact Int.floor_eq_iff.mpr ⟨(le_div_iff₀ hx0).mpr hb.1.le, (div_lt_iff₀ hx0).mpr hb.2⟩

/-- Integer scaling proves BOTH shifted floor formulas, not a limiting
floor approximation. The strict strip boundary supplies the unit margin. -/
theorem Strip.actual_endpoint_floors {lo hi : ℚ} {s : Strip}
    (h : s.floorValid lo hi) (n p k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hx : lo ≤ (p : ℚ)/n ∧ (p : ℚ)/n ≤ hi)
    (hy : s.left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < s.right.eval ((p : ℚ)/n))
    (e : ℕ) (he : e ∈ h158HybridEndpoints) :
    ⌊((e : ℚ)*n+1-k)/p⌋ = s.q e ∧ ⌊((e : ℚ)*n-k)/p⌋ = s.q e := by
  have hnQ : (0 : ℚ) < n := by exact_mod_cast hn
  have hpQ : (0 : ℚ) < p := by exact_mod_cast hp
  have hb := s.floor_bracket h hx hy e he
  have hl := (mul_lt_mul_iff_left₀ hnQ).mpr hb.1
  have hu := (mul_lt_mul_iff_left₀ hnQ).mpr hb.2
  field_simp at hl hu
  have hl' : (s.q e : ℚ)*(p : ℚ) < (e : ℚ)*n+1-k := by nlinarith [hl]
  have hu' : (e : ℚ)*n+1-k < ((s.q e : ℚ)+1)*p := by nlinarith [hu]
  have hlZ : s.q e*(p : ℤ) < (e : ℤ)*n+1-k := by exact_mod_cast hl'
  have huZ : (e : ℤ)*n+1-k < (s.q e+1)*(p : ℤ) := by exact_mod_cast hu'
  have hm : (s.q e : ℚ)*(p : ℚ) ≤ (e : ℚ)*n-k := by
    exact_mod_cast (show s.q e*(p : ℤ) ≤ (e : ℤ)*n-k by omega)
  constructor <;> apply Int.floor_eq_iff.mpr <;> constructor
  · apply (le_div_iff₀ hpQ).mpr
    exact le_of_lt hl'
  · exact (div_lt_iff₀ hpQ).mpr hu'
  · exact (le_div_iff₀ hpQ).mpr hm
  · apply (div_lt_iff₀ hpQ).mpr
    linarith

def normEndpoint (i : Fin 21) : ℕ := if i.val < 16 then 52-2*i.val else 48+(i.val-16)

structure Selection where
  lo : ℚ
  hi : ℚ
  tau : ℚ
  cost : Affine

structure Cell where
  lo : ℚ
  hi : ℚ
  norm : Fin 21 → ℤ
  normalization : ℤ
  strips : Fin 44 → Strip
  selections : List Selection

def Cell.normTotal (c : Cell) : ℤ :=
  (∑ b : Fin 16, c.norm ⟨b.val, by omega⟩) -
  2*(∑ a : Fin 5, c.norm ⟨16+a.val, by omega⟩)

def Cell.nu (c : Cell) : ℤ := c.normalization

def Strip.profile (s : Strip) (nu : ℤ) : FoldedHybrid.JetProfile :=
  if s.kind = 4 then ⟨nu, s.roots-s.multiplicity+1, 1, true, by norm_num⟩
  else ⟨-(s.multiplicity+4-nu-s.roots), 0, 1, false, by norm_num⟩

def Strip.excess (s : Strip) (nu : ℤ) (tau : ℚ) : ℚ :=
  ∑ j ∈ range 16, max ((s.profile nu).marginal j-tau) 0

def Cell.thresholdAffine (c : Cell) (tau : ℚ) : Affine :=
  ⟨2*tau+(∑ i, (c.strips i).excess c.nu tau*((c.strips i).right.a-(c.strips i).left.a)/2),
    ∑ i, (c.strips i).excess c.nu tau*((c.strips i).right.b-(c.strips i).left.b)/2⟩

theorem Cell.thresholdAffine_eval (c : Cell) (tau x : ℚ) :
    (c.thresholdAffine tau).eval x =
      2*tau+∑ i, ((c.strips i).right.eval x-(c.strips i).left.eval x)/2*
        (c.strips i).excess c.nu tau := by
  unfold thresholdAffine Affine.eval
  dsimp
  rw [sum_mul, add_assoc, ← sum_add_distrib]
  congr 1
  apply sum_congr rfl
  intro i hi
  ring

def Cell.normValid (c : Cell) : Prop := c.nu = c.normTotal ∧ ∀ i : Fin 21,
  0 ≤ c.norm i ∧
  AffineLE c.lo c.hi ⟨0, c.norm i⟩ ⟨normEndpoint i, 0⟩ ∧
  AffineLE c.lo c.hi ⟨normEndpoint i, 0⟩ ⟨0, c.norm i+1⟩
instance (c : Cell) : Decidable c.normValid := inferInstanceAs (Decidable (_ ∧ ∀ _i : Fin 21, _))

def Selection.Valid (c : Cell) (s : Selection) : Prop :=
  c.lo ≤ s.lo ∧ s.lo < s.hi ∧ s.hi ≤ c.hi ∧ 0 ≤ s.tau ∧ s.cost = c.thresholdAffine s.tau
instance (c : Cell) (s : Selection) : Decidable (s.Valid c) :=
  inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _ ∧ _))

def Cell.Valid (c : Cell) : Prop :=
  26 ≤ c.lo ∧ c.lo < c.hi ∧ c.hi ≤ 57 ∧ c.normValid ∧
  (∀ i, (c.strips i).Valid c.lo c.hi) ∧
  (c.strips 0).left = ⟨0, 0⟩ ∧ (c.strips 43).right = ⟨0, 1⟩ ∧
  (∀ i : Fin 43, (c.strips i.castSucc).right = (c.strips i.succ).left) ∧
  (∀ s ∈ c.selections, s.Valid c) ∧
  c.selections ≠ [] ∧
  (c.selections.headD ⟨0, 0, 0, ⟨0, 0⟩⟩).lo = c.lo ∧
  (c.selections.getLastD ⟨0, 0, 0, ⟨0, 0⟩⟩).hi = c.hi ∧
  c.selections.IsChain (fun a b => a.hi = b.lo)
instance (c : Cell) : Decidable c.Valid := inferInstanceAs
  (Decidable (_ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _))

theorem Cell.norm_floor {c : Cell} (h : c.normValid) {x : ℚ}
    (hx : c.lo < x ∧ x < c.hi) (hx0 : 0 < x) (i : Fin 21) :
    ⌊(normEndpoint i : ℚ)/x⌋ = c.norm i := by
  have hl := ((h.2 i).2.1).sound ⟨hx.1.le, hx.2.le⟩
  have hu := (h.2 i).2.2.1
  have hnonneg := (h.2 i).1
  have hnQ : (0 : ℚ) < (c.norm i : ℚ)+1 := by exact_mod_cast (by omega : 0 < c.norm i+1)
  unfold Affine.eval at hl hu
  dsimp at hl hu
  apply Int.floor_eq_iff.mpr
  constructor
  · apply (le_div_iff₀ hx0).mpr
    simpa using hl
  · apply (div_lt_iff₀ hx0).mpr
    nlinarith [mul_pos hnQ (sub_pos.mpr hx.1)]

theorem Strip.plateau_cutoffs {lo hi x y : ℚ} {s : Strip}
    (h : s.statusValid lo hi) (hk : s.kind = 4) (hx : lo ≤ x ∧ x ≤ hi)
    (hy : s.left.eval x < y ∧ y < s.right.eval x) :
    105-x < y+(s.pole : ℚ)*x ∧ y+(s.pole : ℚ)*x < 53+x ∧
    110-x < y+(s.pole : ℚ)*x ∧ y+(s.pole : ℚ)*x < 48+x := by
  simp only [Strip.statusValid, hk] at h
  have hl := h.1.2.1.sound hx
  have hu := h.1.2.2.sound hx
  have hcl := h.2.1.sound hx
  have hcu := h.2.2.sound hx
  unfold Affine.eval Affine.add at *
  dsimp at *
  constructor
  · linarith
  constructor
  · linarith
  constructor <;> linarith

theorem Strip.actual_denominator_count {lo hi : ℚ} {s : Strip}
    (h : s.floorValid lo hi) (n p k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hx : lo ≤ (p : ℚ)/n ∧ (p : ℚ)/n ≤ hi)
    (hy : s.left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < s.right.eval ((p : ℚ)/n)) :
    h158DenominatorCount p n k = s.M := by
  rw [h158_denominator_count_floor p n k hp]
  unfold Strip.M
  apply sum_congr rfl
  intro b hb
  have hb : b < 16 := mem_range.mp hb
  have hL := s.actual_endpoint_floors h n p k hn hp hx hy (53+b) (by
    simp only [h158HybridEndpoints, mem_union, mem_insert, mem_singleton, mem_Icc]
    omega)
  have hU := s.actual_endpoint_floors h n p k hn hp hx hy (105-b) (by
    simp only [h158HybridEndpoints, mem_union, mem_insert, mem_singleton, mem_Icc]
    omega)
  unfold residueIntervalFloor
  simp only [Int.cast_natCast, Nat.cast_add, Nat.cast_mul, Nat.cast_one]
  have harg : (((53+b : ℕ) : ℚ)*(n : ℚ)+
      (((52-2*b : ℕ) : ℚ)*(n : ℚ)+1)-(k : ℚ)) =
      ((105-b : ℕ) : ℚ)*n+1-k := by
    rw [Nat.cast_sub (by omega : 2*b ≤ 52), Nat.cast_sub (by omega : b ≤ 105)]
    push_cast
    ring
  push_cast at harg hL hU ⊢
  rw [harg, hU.1, hL.2]

/-- The central root is retained as an explicit indicator. Thus the theorem
is also valid before discarding central exceptional residue classes. -/
theorem Strip.actual_numerator_count {lo hi : ℚ} {s : Strip}
    (h : s.floorValid lo hi) (n p k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hx : lo ≤ (p : ℚ)/n ∧ (p : ℚ)/n ≤ hi)
    (hy : s.left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < s.right.eval ((p : ℚ)/n)) :
    h158NumeratorCount p n k =
      (if (p : ℤ) ∣ 79*(n : ℤ)+1-k then 1 else 0)+s.z := by
  rw [h158_numerator_count_floor p n k hp]
  unfold Strip.z
  congr 1
  apply sum_congr rfl
  intro a ha
  have ha : a < 5 := mem_range.mp ha
  have h0 := s.actual_endpoint_floors h n p k hn hp hx hy 0 (by simp [h158HybridEndpoints])
  have h158 := s.actual_endpoint_floors h n p k hn hp hx hy 158 (by simp [h158HybridEndpoints])
  have hL := s.actual_endpoint_floors h n p k hn hp hx hy (48+a) (by
    simp only [h158HybridEndpoints, mem_union, mem_insert, mem_singleton, mem_Icc]
    omega)
  have hU := s.actual_endpoint_floors h n p k hn hp hx hy (110-a) (by
    simp only [h158HybridEndpoints, mem_union, mem_insert, mem_singleton, mem_Icc]
    omega)
  unfold residueIntervalFloor
  simp only [Int.cast_zero, zero_add, Int.cast_sub, Int.cast_add, Int.cast_mul,
    Int.cast_natCast, Int.cast_ofNat, Int.cast_one, Nat.cast_mul]
  have he1 : ((158 : ℚ)*n+1-((48+a : ℕ) : ℚ)*n+((48+a : ℕ) : ℚ)*n-k) =
      158*(n : ℚ)+1-k := by ring
  have he2 : ((158 : ℚ)*n+1-((48+a : ℕ) : ℚ)*n-k) =
      ((110-a : ℕ) : ℚ)*n+1-k := by
    rw [Nat.cast_sub (by omega : a ≤ 110)]
    push_cast
    ring
  norm_num only [Nat.cast_ofNat] at h158
  rw [he1, he2, hL.2, h158.1, hU.1]
  have h0' : ⌊(-(k : ℚ))/p⌋ = s.q 0 := by simpa using h0.2
  rw [zero_sub, h0']
  ring

theorem Cell.actual_normalization {c : Cell} (h : c.normValid)
    {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hsq : 158*n+2 < p^2)
    (hx : c.lo < (p : ℚ)/n ∧ (p : ℚ)/n < c.hi) :
    padicValRat p (h158Normalization n) = c.nu := by
  have hnQ : (0 : ℚ) < n := by exact_mod_cast hn
  have hpQ : (0 : ℚ) < p := by exact_mod_cast (Fact.out : p.Prime).pos
  have hq (i : Fin 21) : (((normEndpoint i*n)/p : ℕ) : ℤ) = c.norm i := by
    have hf := c.norm_floor h hx (div_pos hpQ hnQ) i
    have he : (normEndpoint i : ℚ)/((p : ℚ)/n) = ((normEndpoint i*n : ℕ) : ℚ)/p := by
      push_cast
      field_simp
    rw [he, Rat.floor_natCast_div_natCast, Int.ofNat_ediv_ofNat] at hf
    exact hf
  rw [h158Normalization_valuation_main_prime n p hn (Fact.out : p.Prime) hsq,
    h.1, h158NormalizationFloor, Cell.normTotal]
  congr 1
  · rw [← Fin.sum_univ_eq_sum_range]
    apply sum_congr rfl
    intro b hb
    simpa [normEndpoint, b.isLt] using hq ⟨b.val, by have := b.isLt; omega⟩
  · congr 1
    rw [← Fin.sum_univ_eq_sum_range]
    apply sum_congr rfl
    intro a ha
    have hlt : ¬16+a.val < 16 := by omega
    simpa [normEndpoint, hlt] using hq ⟨16+a.val, by have := a.isLt; omega⟩

theorem Cell.actual_class_cost {c : Cell} (h : c.Valid) (i : Fin 44)
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n) (hsq : 158*n+2 < p^2)
    (hx : c.lo < (p : ℚ)/n ∧ (p : ℚ)/n < c.hi)
    (hy : (c.strips i).left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < (c.strips i).right.eval ((p : ℚ)/n))
    (hcentral : ¬(p : ℤ) ∣ 79*(n : ℤ)+1-k) :
    h158ClassCost p n k = (c.strips i).multiplicity+4-c.nu-(c.strips i).roots := by
  have hnrm := c.actual_normalization h.2.2.2.1 n hn hsq hx
  have hs := h.2.2.2.2.1 i
  have hd := (c.strips i).actual_denominator_count hs.2.1 n p k hn
    (Fact.out : p.Prime).pos ⟨hx.1.le, hx.2.le⟩ hy
  have hz := (c.strips i).actual_numerator_count hs.2.1 n p k hn
    (Fact.out : p.Prime).pos ⟨hx.1.le, hx.2.le⟩ hy
  simp only [hcentral, ite_false, zero_add] at hz
  unfold h158ClassCost
  rw [hd, hz, hnrm, hs.2.2.2.1, hs.2.2.2.2]
  ring

theorem reflected_counts (n p : ℕ) (hp : 0 < p) (c : Fin p) :
    h158NumeratorCount p n (h158ReflectionClass n p hp c).val = h158NumeratorCount p n c.val ∧
    h158DenominatorCount p n (h158ReflectionClass n p hp c).val = h158DenominatorCount p n c.val := by
  have hd : (p : ℤ) ∣ 158*(n : ℤ)+2-(c.val : ℤ)-(h158ReflectionClass n p hp c).val := by
    have hd := dvd_neg.mpr (h158ReflectionClass_congruent n p hp c)
    have he : -(-(158*(n : ℤ)+2)+(c.val : ℤ)+(h158ReflectionClass n p hp c).val) =
        158*(n : ℤ)+2-(c.val : ℤ)-(h158ReflectionClass n p hp c).val := by ring
    rwa [he] at hd
  exact ⟨(h158NumeratorCount_reflected_classes p n c.val _ hd).symm,
    (h158DenominatorCount_reflected_classes p n c.val _ hd).symm⟩

theorem Cell.actual_counts_at_residue {c : Cell} (h : c.Valid) (i : Fin 44)
    (n p k : ℕ) (hn : 0 < n) (hp : 0 < p) (r : Fin p)
    (hkr : h158ResidueClass p hp k = r)
    (hx : c.lo ≤ (p : ℚ)/n ∧ (p : ℚ)/n ≤ c.hi)
    (hy : (c.strips i).left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < (c.strips i).right.eval ((p : ℚ)/n))
    (hcentral : ¬(p : ℤ) ∣ 79*(n : ℤ)+1-k) :
    h158NumeratorCount p n r.val = (c.strips i).roots ∧
    h158DenominatorCount p n r.val = (c.strips i).multiplicity := by
  have hs := h.2.2.2.2.1 i
  have hd := (c.strips i).actual_denominator_count hs.2.1 n p k hn hp hx hy
  have hz := (c.strips i).actual_numerator_count hs.2.1 n p k hn hp hx hy
  have hcong := residue_class_difference_dvd hp r k hkr
  rw [h158_denominator_count_congr p n k r.val hcong, ← hs.2.2.2.1] at hd
  rw [h158_numerator_count_congr p n k r.val hcong, ← hs.2.2.2.2] at hz
  simp only [hcentral, ite_false, zero_add] at hz
  exact ⟨hz, hd⟩

/-- Whenever the actual choice activates a witness, its two original pole
orders and root counts give exactly the compiled plateau, not a surrogate
valuation profile. Reflection is proved for both counts separately. -/
theorem Cell.actual_pair_witness_profile {c : Cell} (h : c.Valid) (i : Fin 44)
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (r : H158PairClass n p hp) (hkr : h158ResidueClass p hp k = r.val)
    (hsq : 158*n+2 < p^2) (hx : c.lo < (p : ℚ)/n ∧ (p : ℚ)/n < c.hi)
    (hy : (c.strips i).left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < (c.strips i).right.eval ((p : ℚ)/n))
    (hcentral : ¬(p : ℤ) ∣ 79*(n : ℤ)+1-k) (hkind : (c.strips i).kind = 4)
    (w : H158FoldedSingletonWitness n p hp (some r)) :
    w.profile = (c.strips i).profile c.nu := by
  have hc := c.actual_counts_at_residue h i n p k hn hp r.val hkr ⟨hx.1.le, hx.2.le⟩ hy hcentral
  have href := reflected_counts n p hp r.val
  have hnrm := c.actual_normalization h.2.2.2.1 n hn hsq hx
  cases w with
  | pair r a b ha hb hs hs' hcut hcut' har hbr =>
    have hda := h158_denominator_count_congr p n a r.val.val
      (residue_class_difference_dvd hp r.val a har)
    have hdb := h158_denominator_count_congr p n b (h158ReflectionClass n p hp r.val).val
      (residue_class_difference_dvd hp _ b hbr)
    have hza := h158_numerator_count_congr p n a r.val.val
      (residue_class_difference_dvd hp r.val a har)
    have hzb := h158_numerator_count_congr p n b (h158ReflectionClass n p hp r.val).val
      (residue_class_difference_dvd hp _ b hbr)
    rw [href.2, hc.2] at hdb
    rw [href.1, hc.1] at hzb
    rw [hc.2] at hda
    rw [hc.1] at hza
    have hoa := h158_denominator_count_eq p n a ha
    have hob := h158_denominator_count_eq p n b hb
    rw [h158_singleton_cofactor_count_zero p n a hs, zero_add, hda] at hoa
    rw [h158_singleton_cofactor_count_zero p n b hs', zero_add, hdb] at hob
    simp [H158FoldedSingletonWitness.profile, H158FoldedSingletonWitness.offset,
      Strip.profile, hkind, h158FoldedSpacing, hnrm, hza, hzb, ← hoa, ← hob]

theorem Cell.actual_generic_profile {c : Cell} (h : c.Valid) (i : Fin 44)
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (r : H158PairClass n p hp) (hkr : h158ResidueClass p hp k = r.val)
    (hsq : 158*n+2 < p^2) (hx : c.lo < (p : ℚ)/n ∧ (p : ℚ)/n < c.hi)
    (hy : (c.strips i).left.eval ((p : ℚ)/n) < ((k : ℚ)-1)/n ∧
      ((k : ℚ)-1)/n < (c.strips i).right.eval ((p : ℚ)/n))
    (hcentral : ¬(p : ℤ) ∣ 79*(n : ℤ)+1-k) (hkind : (c.strips i).kind ≠ 4) :
    h158FoldedGenericProfile n p hp (some r) = (c.strips i).profile c.nu := by
  have hc := c.actual_class_cost h i n k hn hsq hx hy hcentral
  have hcong := residue_class_difference_dvd hp r.val k hkr
  unfold h158ClassCost at hc
  rw [h158_numerator_count_congr p n k r.val.val hcong,
    h158_denominator_count_congr p n k r.val.val hcong] at hc
  change h158ClassCost p n r.val.val = _ at hc
  simp [h158FoldedGenericProfile, h158FoldedWeight, h158ClassCost_reflection, hc,
    h158FoldedSpacing, Strip.profile, hkind]

end OddZetaMixed.H158HighCells
