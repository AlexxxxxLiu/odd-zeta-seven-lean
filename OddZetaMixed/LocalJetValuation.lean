import OddZetaMixed.H158ClusterFactorization
import OddZetaMixed.ScalarGaussCost

/-!
# Zero-safe weighted valuation bounds for finite local division

All divisions below use an exact coefficient convolution and a nonzero
constant coefficient. No convergence, formal inverse, or quotient valuation
bound is assumed. Zero coefficients satisfy every floor; this is essential
because Mathlib defines `padicValRat p 0 = 0`.
-/

noncomputable section

namespace OddZetaMixed.LocalJetValuation

open Polynomial Finset

/-- A valuation floor with the zero coefficient included at every level. -/
def AtLeast (p : ℕ) (a : ℤ) (x : ℚ) : Prop :=
  x = 0 ∨ a ≤ padicValRat p x

theorem zero (p : ℕ) (a : ℤ) : AtLeast p a 0 := Or.inl rfl

theorem of_nonzero {p : ℕ} {a : ℤ} {x : ℚ} (h : AtLeast p a x)
    (hx : x ≠ 0) : a ≤ padicValRat p x := h.resolve_left hx

theorem mono {p : ℕ} {a b : ℤ} {x : ℚ} (h : AtLeast p a x)
    (hab : b ≤ a) : AtLeast p b x :=
  h.elim Or.inl (fun hx => Or.inr (hab.trans hx))

theorem neg {p : ℕ} {a : ℤ} {x : ℚ} (h : AtLeast p a x) :
    AtLeast p a (-x) := by
  rcases h with rfl | h
  · exact zero p a
  · exact Or.inr (by simpa using h)

theorem add {p : ℕ} [Fact p.Prime] {a : ℤ} {x y : ℚ}
    (hx : AtLeast p a x) (hy : AtLeast p a y) : AtLeast p a (x+y) := by
  by_cases hxy : x+y = 0
  · exact Or.inl hxy
  rcases hx with rfl | hx
  · simpa using hy
  rcases hy with rfl | hy
  · simp only [add_zero]
    exact Or.inr hx
  exact Or.inr ((le_min hx hy).trans (padicValRat.min_le_padicValRat_add hxy))

theorem sub {p : ℕ} [Fact p.Prime] {a : ℤ} {x y : ℚ}
    (hx : AtLeast p a x) (hy : AtLeast p a y) : AtLeast p a (x-y) := by
  simpa only [sub_eq_add_neg] using add hx (neg hy)

theorem mul {p : ℕ} [Fact p.Prime] {a b : ℤ} {x y : ℚ}
    (hx : AtLeast p a x) (hy : AtLeast p b y) : AtLeast p (a+b) (x*y) := by
  by_cases hx0 : x = 0
  · simp only [hx0, zero_mul]; exact zero p _
  by_cases hy0 : y = 0
  · simp only [hy0, mul_zero]; exact zero p _
  apply Or.inr
  rw [padicValRat.mul hx0 hy0]
  exact add_le_add (of_nonzero hx hx0) (of_nonzero hy hy0)

theorem div {p : ℕ} [Fact p.Prime] {a d : ℤ} {x y : ℚ}
    (hx : AtLeast p a x) (hy : y ≠ 0) (hd : padicValRat p y = d) :
    AtLeast p (a-d) (x/y) := by
  by_cases hx0 : x = 0
  · simp only [hx0, zero_div]; exact zero p _
  apply Or.inr
  rw [padicValRat.div hx0 hy, hd]
  exact sub_le_sub_right (of_nonzero hx hx0) d

theorem sum {p : ℕ} [Fact p.Prime] {ι : Type*} (s : Finset ι)
    (f : ι → ℚ) (a : ℤ) (h : ∀ i ∈ s, AtLeast p a (f i)) :
    AtLeast p a (∑ i ∈ s, f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using zero p a
  | @insert i s hi ih =>
    rw [sum_insert hi]
    exact add (h i (mem_insert_self _ _))
      (ih (fun j hj => h j (mem_insert_of_mem hj)))

/-- Coefficient q has valuation at least a - slope*q (or is zero).
Both parameters are integers and may be negative. -/
def Weighted (p : ℕ) (P : ℚ[X]) (a slope : ℤ) : Prop :=
  ∀ q : ℕ, AtLeast p (a-slope*(q : ℤ)) (P.coeff q)

theorem weighted_C {p : ℕ} {a slope : ℤ} {x : ℚ} (hx : AtLeast p a x) :
    Weighted p (C x) a slope := by
  intro q
  by_cases hq : q = 0
  · subst q
    simpa only [coeff_C_zero, Nat.cast_zero, mul_zero, sub_zero] using hx
  · rw [coeff_C, ite_eq_right hq]
    exact zero p _

theorem weighted_one (p : ℕ) (slope : ℤ) : Weighted p 1 0 slope := by
  simpa only [map_one] using
    (weighted_C (slope := slope) (Or.inr (by simp) : AtLeast p 0 1))

theorem weighted_mul {p : ℕ} [Fact p.Prime] {A B : ℚ[X]} {a b slope : ℤ}
    (hA : Weighted p A a slope) (hB : Weighted p B b slope) :
    Weighted p (A*B) (a+b) slope := by
  intro q
  rw [coeff_mul]
  apply sum
  intro v hv
  have hvq : (v.1 : ℤ)+(v.2 : ℤ) = (q : ℤ) := by
    exact_mod_cast Finset.mem_antidiagonal.mp hv
  have h := mul (hA v.1) (hB v.2)
  convert h using 1
  rw [← hvq]
  ring

/-- Multiplication of finite jets needs no bounds on coefficients outside
the requested truncation. -/
theorem truncated_weighted_mul {p : ℕ} [Fact p.Prime]
    (A B : ℚ[X]) (r : ℕ) (a b slope : ℤ)
    (hA : ∀ q < r, AtLeast p (a-slope*(q : ℤ)) (A.coeff q))
    (hB : ∀ q < r, AtLeast p (b-slope*(q : ℤ)) (B.coeff q)) :
    ∀ q < r, AtLeast p (a+b-slope*(q : ℤ)) ((A*B).coeff q) := by
  intro q hq
  rw [coeff_mul]
  apply sum
  intro v hv
  have hvq := Finset.mem_antidiagonal.mp hv
  have hvqZ : (v.1 : ℤ)+(v.2 : ℤ) = (q : ℤ) := by exact_mod_cast hvq
  have h := mul (hA v.1 (by omega)) (hB v.2 (by omega))
  convert h using 1
  rw [← hvqZ]
  ring

theorem weighted_pow {p : ℕ} [Fact p.Prime] {A : ℚ[X]} {a slope : ℤ}
    (hA : Weighted p A a slope) (m : ℕ) :
    Weighted p (A^m) ((m : ℤ)*a) slope := by
  induction m with
  | zero => simpa only [pow_zero, Nat.cast_zero, zero_mul] using weighted_one p slope
  | succ m ih =>
    rw [pow_succ]
    convert weighted_mul ih hA using 1
    push_cast
    ring

theorem weighted_prod {p : ℕ} [Fact p.Prime] {ι : Type*} (s : Finset ι)
    (P : ι → ℚ[X]) (a : ι → ℤ) (slope : ℤ)
    (hP : ∀ i ∈ s, Weighted p (P i) (a i) slope) :
    Weighted p (∏ i ∈ s, P i) (∑ i ∈ s, a i) slope := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using weighted_one p slope
  | @insert i s hi ih =>
    rw [prod_insert hi, sum_insert hi]
    exact weighted_mul (hP i (mem_insert_self _ _))
      (ih (fun j hj => hP j (mem_insert_of_mem hj)))

/-- A root contributes a units-of-valuation count a provided a <= slope.
The constant term may be zero, so protected numerator roots are retained. -/
theorem weighted_linear {p : ℕ} {a slope : ℤ} {x : ℚ}
    (hx : AtLeast p a x) (ha : a ≤ slope) : Weighted p (X+C x) a slope := by
  intro q
  by_cases hq0 : q = 0
  · subst q
    simpa only [coeff_add, coeff_X_zero, coeff_C_zero, zero_add,
      Nat.cast_zero, mul_zero, sub_zero] using hx
  by_cases hq1 : q = 1
  · subst q
    apply Or.inr
    simpa using (sub_nonpos.mpr ha)
  · have he : (X+C x).coeff q = 0 := by simp [coeff_X, coeff_C, hq0, Ne.symm hq1]
    rw [he]
    exact zero p _

/-- A complete root product yields a weighted coefficient floor by finite
convolution. This supplies numerator inputs from individual root counts. -/
theorem weighted_root_product {p : ℕ} [Fact p.Prime] {ι : Type*}
    (s : Finset ι) (x : ι → ℚ) (m : ι → ℕ) (a : ι → ℤ) (slope : ℤ)
    (hx : ∀ i ∈ s, AtLeast p (a i) (x i))
    (ha : ∀ i ∈ s, a i ≤ slope) :
    Weighted p (∏ i ∈ s, (X+C (x i))^(m i))
      (∑ i ∈ s, (m i : ℤ)*a i) slope :=
  weighted_prod s _ _ slope (fun i hi =>
    weighted_pow (weighted_linear (hx i hi) (ha i hi)) _)

theorem valuation_prod {p : ℕ} [Fact p.Prime] {ι : Type*}
    (s : Finset ι) (f : ι → ℚ) (hf : ∀ i ∈ s, f i ≠ 0) :
    padicValRat p (∏ i ∈ s, f i) = ∑ i ∈ s, padicValRat p (f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert i s hi ih =>
    rw [prod_insert hi, sum_insert hi,
      padicValRat.mul (hf i (mem_insert_self _ _))
        (prod_ne_zero_iff.mpr (fun j hj => hf j (mem_insert_of_mem hj))),
      ih (fun j hj => hf j (mem_insert_of_mem hj))]

theorem shifted_linear (a k : ℕ) :
    taylor (-(k : ℚ)) (X+C (a : ℚ)) = X+C ((a : ℚ)-k) := by
  simp only [map_add, taylor_X, taylor_C, sub_eq_add_neg, map_add, map_neg]
  ring

theorem taylor_product {ι : Type*} (s : Finset ι) (P : ι → ℚ[X]) (x : ℚ) :
    taylor x (∏ i ∈ s, P i) = ∏ i ∈ s, taylor x (P i) := by
  change (taylorAlgHom x) (∏ i ∈ s, P i) = _
  rw [map_prod]
  rfl

theorem h158_cofactor_split (n k : ℕ) :
    h158LocalCofactor n k = ∏ a ∈ (h158PoleSet n).erase k,
      (X+C ((a : ℚ)-k))^h158PoleOrder n a := by
  simp only [h158LocalCofactor, taylor_product, taylor_pow, shifted_linear]

/-- Exact cofactor constant valuation for every prime, including primes
that divide several differences. There is no unit assumption. -/
theorem h158_cofactor_constant_valuation {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hk : k ∈ h158PoleSet n) :
    padicValRat p ((h158LocalCofactor n k).coeff 0) =
      ∑ a ∈ (h158PoleSet n).erase k,
        (h158PoleOrder n a : ℤ)*padicValRat p ((a : ℚ)-k) := by
  rw [h158LocalCofactor_zero n k hk, h158PoleComplement_top_eval n k hk,
    valuation_prod]
  · simp only [padicValRat.pow]
  · intro a ha
    apply pow_ne_zero
    intro he
    exact (mem_erase.mp ha).1 (by exact_mod_cast sub_eq_zero.mp he)

/-- The entire actual cofactor bound follows from valuations of individual
integer address differences, not from a hypothesized coefficient estimate. -/
theorem h158_cofactor_weighted {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hk : k ∈ h158PoleSet n) (slope : ℤ)
    (hroots : ∀ a ∈ (h158PoleSet n).erase k,
      padicValRat p ((a : ℚ)-k) ≤ slope) :
    Weighted p (h158LocalCofactor n k)
      (padicValRat p ((h158LocalCofactor n k).coeff 0)) slope := by
  rw [h158_cofactor_constant_valuation n k hk, h158_cofactor_split]
  exact weighted_root_product _ _ _ _ slope (fun _ _ => Or.inr le_rfl) hroots

theorem nat_valuation_le_one_of_lt_square {p m : ℕ} [Fact p.Prime]
    (hm : m ≠ 0) (hbound : m < p^2) : padicValRat p (m : ℚ) ≤ 1 := by
  have hnot : ¬p^2 ∣ m := Nat.not_dvd_of_pos_of_lt (Nat.pos_of_ne_zero hm) hbound
  have hval : ¬2 ≤ padicValNat p m := by
    intro h
    exact hnot ((padicValNat_dvd_iff_le hm).mpr h)
  rw [padicValRat.of_nat]
  omega

/-- Below p^2 every nonzero actual pole-address difference has valuation
at most one. This proves the cofactor input over the full main-prime range. -/
theorem h158_pole_difference_le_one {p : ℕ} [Fact p.Prime] (n a k : ℕ)
    (ha : a ∈ h158PoleSet n) (hk : k ∈ h158PoleSet n) (hak : a ≠ k)
    (hsq : 52*n < p^2) : padicValRat p ((a : ℚ)-k) ≤ 1 := by
  have hab := h158_pole_address_bounds n a ha
  have hkb := h158_pole_address_bounds n k hk
  by_cases hka : k ≤ a
  · rw [← Nat.cast_sub hka]
    exact nat_valuation_le_one_of_lt_square (by omega) (by omega)
  · have hle : a ≤ k := by omega
    have he : (a : ℚ)-k = -((k-a : ℕ) : ℚ) := by
      rw [Nat.cast_sub hle]
      ring
    rw [he, padicValRat.neg]
    exact nat_valuation_le_one_of_lt_square (by omega) (by omega)

theorem h158_cofactor_weighted_unit_slope {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hk : k ∈ h158PoleSet n) (hsq : 52*n < p^2) :
    Weighted p (h158LocalCofactor n k)
      (padicValRat p ((h158LocalCofactor n k).coeff 0)) 1 :=
  h158_cofactor_weighted n k hk 1 (fun a ha =>
    h158_pole_difference_le_one n a k (mem_erase.mp ha).2 hk (mem_erase.mp ha).1 hsq)

/-- A root supplies at most one unit of valuation. A root exactly at the
anchor still supplies one, rather than using the valuation-of-zero convention. -/
def rootCredit (p : ℕ) (x : ℚ) : ℤ :=
  if x = 0 then 1 else min 1 (padicValRat p x)

theorem rootCredit_le_one (p : ℕ) (x : ℚ) : rootCredit p x ≤ 1 := by
  unfold rootCredit
  split_ifs
  · exact le_rfl
  · exact min_le_left _ _

theorem rootCredit_floor (p : ℕ) (x : ℚ) : AtLeast p (rootCredit p x) x := by
  by_cases hx : x = 0
  · exact Or.inl hx
  · exact Or.inr (by simp only [rootCredit, ite_eq_right hx]; exact min_le_right _ _)

/-- On integer roots this is exactly the residue-class indicator, including
the zero root. Thus the preceding weight really is a root count. -/
theorem rootCredit_int {p : ℕ} [Fact p.Prime] (a : ℤ) :
    rootCredit p (a : ℚ) = if (p : ℤ) ∣ a then 1 else 0 := by
  by_cases ha : a = 0
  · simp [ha, rootCredit]
  have haq : (a : ℚ) ≠ 0 := by exact_mod_cast ha
  by_cases hd : (p : ℤ) ∣ a
  · have hv : padicValInt p a ≠ 0 := by
      intro hz
      rcases padicValInt.eq_zero_iff.mp hz with hp | hz | hnd
      · exact (Fact.out : p.Prime).ne_one hp
      · exact ha hz
      · exact hnd hd
    have hv' : (1 : ℤ) ≤ (padicValInt p a : ℤ) := by omega
    simp only [rootCredit, ite_eq_right haq, padicValRat.of_int,
      min_eq_left hv', ite_eq_left hd]
  · simp only [rootCredit, ite_eq_right haq, padicValRat.of_int,
      padicValInt.eq_zero_of_not_dvd hd, Nat.cast_zero, min_eq_right (by norm_num : (0 : ℤ) ≤ 1),
      ite_eq_right hd]

theorem int_valuation_eq_indicator {p : ℕ} [Fact p.Prime] (a : ℤ)
    (ha : a ≠ 0) (hv : padicValRat p (a : ℚ) ≤ 1) :
    padicValRat p (a : ℚ) = if (p : ℤ) ∣ a then 1 else 0 := by
  have haq : (a : ℚ) ≠ 0 := by exact_mod_cast ha
  have h := rootCredit_int (p := p) a
  simpa only [rootCredit, ite_eq_right haq, min_eq_right hv] using h

/-- Actual cofactor multiplicity in the anchor's residue class, with the
selected pole itself removed. All multiplicities are the unreduced ones. -/
def h158CofactorCount (p n k : ℕ) : ℤ :=
  ∑ a ∈ (h158PoleSet n).erase k,
    (h158PoleOrder n a : ℤ) * if (p : ℤ) ∣ (a : ℤ)-k then 1 else 0

/-- Full denominator multiplicity of the residue class, including the
selected pole. This is the count appropriate for class-block bounds. -/
def h158DenominatorCount (p n k : ℕ) : ℤ :=
  ∑ a ∈ h158PoleSet n,
    (h158PoleOrder n a : ℤ) * if (p : ℤ) ∣ (a : ℤ)-k then 1 else 0

theorem h158_denominator_count_eq (p n k : ℕ) (hk : k ∈ h158PoleSet n) :
    h158DenominatorCount p n k = h158CofactorCount p n k+h158PoleOrder n k := by
  unfold h158DenominatorCount h158CofactorCount
  rw [← Finset.sum_erase_add _ _ hk]
  simp

theorem h158_cofactor_constant_eq_count {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hk : k ∈ h158PoleSet n) (hsq : 52*n < p^2) :
    padicValRat p ((h158LocalCofactor n k).coeff 0) = h158CofactorCount p n k := by
  rw [h158_cofactor_constant_valuation n k hk, h158CofactorCount]
  apply Finset.sum_congr rfl
  intro a ha
  have hak := (mem_erase.mp ha).1
  have hd : (a : ℤ)-(k : ℤ) ≠ 0 := by
    intro h
    exact hak (by exact_mod_cast sub_eq_zero.mp h)
  have hv := h158_pole_difference_le_one (p := p) n a k (mem_erase.mp ha).2 hk hak hsq
  have he := int_valuation_eq_indicator (p := p) ((a : ℤ)-k) hd (by simpa using hv)
  simpa only [Int.cast_sub, Int.cast_natCast] using congrArg
    (fun v : ℤ => (h158PoleOrder n a : ℤ)*v) he

theorem weighted_root (p : ℕ) (x : ℚ) :
    Weighted p (X+C x) (rootCredit p x) 1 :=
  weighted_linear (rootCredit_floor p x) (rootCredit_le_one p x)

theorem shifted_rational_linear (a x : ℚ) :
    taylor x (X+C a) = X+C (a+x) := by
  simp only [map_add, taylor_X, taylor_C, map_add]
  ring

/-- All Taylor coefficients of a rising factorial have the root-count
floor, proved from its original product without a derivative formula. -/
theorem weighted_rising {p : ℕ} [Fact p.Prime] (a x : ℚ) (m : ℕ) :
    Weighted p (taylor x (rising a m))
      (∑ j ∈ range m, rootCredit p (a+(j : ℚ)+x)) 1 := by
  simp only [rising, taylor_product, shifted_rational_linear]
  exact weighted_prod _ _ _ 1 (fun _ _ => weighted_root _ _)

/-- Root credit for the COMPLETE h158 numerator, including the central
linear factor and all ten original rising-factorial blocks. -/
def h158NumeratorCredit (p n k : ℕ) : ℤ :=
  rootCredit p (79*(n : ℚ)+1-k) + ∑ a ∈ range 5,
    ((∑ j ∈ range ((48+a)*n), rootCredit p (1+(j : ℚ)-k)) +
     (∑ j ∈ range ((48+a)*n),
       rootCredit p (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)+(j : ℚ)-k)))

/-- The same numerator count written purely as integer divisibility tests.
It retains multiplicities and the protected zero at the central anchor. -/
def h158NumeratorCount (p n k : ℕ) : ℤ :=
  (if (p : ℤ) ∣ 79*(n : ℤ)+1-k then 1 else 0) + ∑ a ∈ range 5,
    ((∑ j ∈ range ((48+a)*n), if (p : ℤ) ∣ 1+(j : ℤ)-k then 1 else 0) +
     (∑ j ∈ range ((48+a)*n),
       if (p : ℤ) ∣ 158*(n : ℤ)+2-(((48+a)*n : ℕ) : ℤ)+(j : ℤ)-k then 1 else 0))

theorem h158_numerator_credit_eq_count {p : ℕ} [Fact p.Prime] (n k : ℕ) :
    h158NumeratorCredit p n k = h158NumeratorCount p n k := by
  unfold h158NumeratorCredit h158NumeratorCount
  congr 1
  · have h := rootCredit_int (p := p) (79*(n : ℤ)+1-k)
    push_cast at h
    exact h
  · apply Finset.sum_congr rfl
    intro a ha
    congr 1
    · apply Finset.sum_congr rfl
      intro j hj
      have h := rootCredit_int (p := p) (1+(j : ℤ)-k)
      push_cast at h
      exact h
    · apply Finset.sum_congr rfl
      intro j hj
      have h := rootCredit_int (p := p)
        (158*(n : ℤ)+2-(((48+a)*n : ℕ) : ℤ)+(j : ℤ)-k)
      push_cast at h ⊢
      exact h

theorem dvd_shift_iff (p : ℕ) (x k c : ℤ) (hkc : (p : ℤ) ∣ k-c) :
    (p : ℤ) ∣ x-k ↔ (p : ℤ) ∣ x-c := by
  constructor
  · intro h
    have he : (x-k)+(k-c) = x-c := by ring
    rw [← he]
    exact dvd_add h hkc
  · intro h
    have he : (x-c)-(k-c) = x-k := by ring
    rw [← he]
    exact dvd_sub h hkc

theorem h158_numerator_count_congr (p n k c : ℕ)
    (hkc : (p : ℤ) ∣ (k : ℤ)-c) :
    h158NumeratorCount p n k = h158NumeratorCount p n c := by
  unfold h158NumeratorCount
  simp_rw [dvd_shift_iff p _ (k : ℤ) (c : ℤ) hkc]

theorem h158_denominator_count_congr (p n k c : ℕ)
    (hkc : (p : ℤ) ∣ (k : ℤ)-c) :
    h158DenominatorCount p n k = h158DenominatorCount p n c := by
  unfold h158DenominatorCount
  simp_rw [dvd_shift_iff p _ (k : ℤ) (c : ℤ) hkc]

theorem h158_numerator_weighted {p : ℕ} [Fact p.Prime] (n k : ℕ) :
    Weighted p (taylor (-(k : ℚ)) (h158Numerator n))
      (h158NumeratorCredit p n k) 1 := by
  simp only [h158Numerator, taylor_mul, taylor_product, shifted_rational_linear,
    h158NumeratorCredit, sub_eq_add_neg]
  apply weighted_mul (weighted_root _ _)
  apply weighted_prod
  intro a ha
  exact weighted_mul (weighted_rising _ _ _) (weighted_rising _ _ _)

theorem h158_normalized_numerator_weighted {p : ℕ} [Fact p.Prime] (n k : ℕ) :
    Weighted p (taylor (-(k : ℚ)) (C (h158Normalization n)*h158Numerator n))
      (padicValRat p (h158Normalization n)+h158NumeratorCredit p n k) 1 := by
  rw [taylor_mul, taylor_C]
  exact weighted_mul (weighted_C (Or.inr le_rfl)) (h158_numerator_weighted n k)

/-- The scalar base entry is literally the original i=j=0 entry. No
additional jet-functional representation is defined in this sidecar. -/
theorem h158_base_numerator_weighted {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hn : 0 < n) :
    Weighted p (h158LocalNumerator n ⟨0, by omega⟩ ⟨0, by omega⟩ k)
      (padicValRat p (h158Normalization n)+h158NumeratorCredit p n k) 1 := by
  have hmult : centeredMultiplier n 0 0 = 1 := by
    simp [centeredMultiplier]
  simpa only [h158LocalNumerator, hmult, mul_one] using
    h158_normalized_numerator_weighted (p := p) n k

/-- Finite division recurrence with an arbitrary prescribed valuation of C(0).
Only coefficients strictly below r are needed. -/
theorem truncated_division {p : ℕ} [Fact p.Prime]
    (N A C : ℚ[X]) (r : ℕ) (a d slope : ℤ)
    (hC0 : C.coeff 0 ≠ 0) (hd : padicValRat p (C.coeff 0) = d)
    (hC : ∀ q < r, AtLeast p (d-slope*(q : ℤ)) (C.coeff q))
    (hN : ∀ q < r, AtLeast p (a-slope*(q : ℤ)) (N.coeff q))
    (he : ∀ q < r, N.coeff q = (A*C).coeff q) :
    ∀ q < r, AtLeast p (a-d-slope*(q : ℤ)) (A.coeff q) := by
  intro q
  induction q using Nat.strong_induction_on with
  | h q ih =>
    intro hq
    let S := (Finset.antidiagonal q).erase (q,0)
    have hc : N.coeff q =
        (∑ v ∈ S, A.coeff v.1*C.coeff v.2) + A.coeff q*C.coeff 0 := by
      rw [he q hq, coeff_mul,
        ← Finset.sum_erase_add _ _ (by simp : (q,0) ∈ Finset.antidiagonal q)]
    have hs : AtLeast p (a-slope*(q : ℤ))
        (∑ v ∈ S, A.coeff v.1*C.coeff v.2) := by
      apply sum
      intro v hv
      have hvn := Finset.mem_erase.mp hv
      have hvq := Finset.mem_antidiagonal.mp hvn.2
      have hvlt : v.1 < q := by
        by_contra hn
        have heq : v = (q,0) := by apply Prod.ext <;> omega
        exact hvn.1 heq
      have hb := mul (ih v.1 hvlt (hvlt.trans hq)) (hC v.2 (by omega))
      have hvqZ : (v.1 : ℤ)+(v.2 : ℤ) = (q : ℤ) := by exact_mod_cast hvq
      convert hb using 1
      rw [← hvqZ]
      ring
    have ha := div (sub (hN q hq) hs) hC0 hd
    have hquot : (N.coeff q - ∑ v ∈ S, A.coeff v.1*C.coeff v.2) /
        C.coeff 0 = A.coeff q := by
      rw [hc, add_sub_cancel_left, mul_div_cancel_right₀ _ hC0]
    rw [hquot] at ha
    convert ha using 1
    ring

theorem truncated_division_unit {p : ℕ} [Fact p.Prime]
    (N A C : ℚ[X]) (r : ℕ) (a slope : ℤ)
    (hC0 : C.coeff 0 ≠ 0) (hd : padicValRat p (C.coeff 0) = 0)
    (hC : ∀ q < r, AtLeast p (-slope*(q : ℤ)) (C.coeff q))
    (hN : ∀ q < r, AtLeast p (a-slope*(q : ℤ)) (N.coeff q))
    (he : ∀ q < r, N.coeff q = (A*C).coeff q) :
    ∀ q < r, AtLeast p (a-slope*(q : ℤ)) (A.coeff q) := by
  simpa only [sub_zero, zero_sub, neg_mul] using
    truncated_division N A C r a 0 slope hC0 hd
      (by simpa only [zero_sub, neg_mul] using hC) hN he

/-- Application to every actual Laurent coefficient, via the existing
cleared partial-fraction identity. No desired quotient bound is an input. -/
theorem h158_principal_floor {p : ℕ} [Fact p.Prime] (n : ℕ)
    (i j : Fin (2*n)) (k : ℕ) (hk : k ∈ h158PoleSet n)
    (a d slope : ℤ)
    (hd : padicValRat p ((h158LocalCofactor n k).coeff 0) = d)
    (hC : ∀ q < h158PoleOrder n k,
      AtLeast p (d-slope*(q : ℤ)) ((h158LocalCofactor n k).coeff q))
    (hN : ∀ q < h158PoleOrder n k,
      AtLeast p (a-slope*(q : ℤ)) ((h158LocalNumerator n i j k).coeff q))
    (l : Fin (h158PoleOrder n k)) :
    AtLeast p (a-d-slope*((h158PoleOrder n k : ℤ)-(l.val : ℤ)-1))
      (h158PrincipalCoefficients n i j k l) := by
  have hl : h158PoleOrder n k-(l.val+1) < h158PoleOrder n k := by
    have := l.isLt; omega
  have h := truncated_division (h158LocalNumerator n i j k)
    (h158LocalPrincipal n i j k) (h158LocalCofactor n k)
    (h158PoleOrder n k) a d slope (h158LocalCofactor_zero_ne n k hk) hd hC hN
    (fun q hq => h158LocalPrincipal_coefficient_identity n i j k q hk hq) _ hl
  rw [h158LocalPrincipal_coeff] at h
  have he : ((h158PoleOrder n k-(l.val+1) : ℕ) : ℤ) =
      (h158PoleOrder n k : ℤ)-(l.val : ℤ)-1 := by
    have := l.isLt; omega
  simpa only [he] using h

/-- Unit slope gives the intended nu+z-d-o+ell floor, where ell=l+1
is the Laurent order. The normalization, root counts, and cofactor inputs
remain explicit until their actual arithmetic is established. -/
theorem h158_principal_floor_unit_slope {p : ℕ} [Fact p.Prime] (n : ℕ)
    (i j : Fin (2*n)) (k : ℕ) (hk : k ∈ h158PoleSet n)
    (nu z d : ℤ)
    (hd : padicValRat p ((h158LocalCofactor n k).coeff 0) = d)
    (hC : ∀ q < h158PoleOrder n k,
      AtLeast p (d-(q : ℤ)) ((h158LocalCofactor n k).coeff q))
    (hN : ∀ q < h158PoleOrder n k,
      AtLeast p (nu+z-(q : ℤ)) ((h158LocalNumerator n i j k).coeff q))
    (l : Fin (h158PoleOrder n k)) :
    AtLeast p (nu+z-d-(h158PoleOrder n k : ℤ)+(l.val : ℤ)+1)
      (h158PrincipalCoefficients n i j k l) := by
  have h := h158_principal_floor n i j k hk (nu+z) d 1 hd
    (by simpa only [one_mul] using hC) (by simpa only [one_mul] using hN) l
  convert h using 1
  ring

/-- Closed main-prime bound for every coefficient of the actual SCALAR
base principal polynomial. Its inputs are only primality, the actual pole,
positive n, and p^2>52n; neither numerator nor cofactor estimates are assumed.
The parent jet-functional identity transports this bound to multipliers. -/
theorem h158_base_coefficient_floor {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hn : 0 < n) (hk : k ∈ h158PoleSet n) (hsq : 52*n < p^2)
    (q : ℕ) (hq : q < h158PoleOrder n k) :
    AtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCredit p n k-
      h158CofactorCount p n k-(q : ℤ))
      ((h158LocalPrincipal n ⟨0, by omega⟩ ⟨0, by omega⟩ k).coeff q) := by
  have hC := h158_cofactor_weighted_unit_slope (p := p) n k hk hsq
  rw [h158_cofactor_constant_eq_count n k hk hsq] at hC
  have hN := h158_base_numerator_weighted (p := p) n k hn
  have h := truncated_division
    (h158LocalNumerator n ⟨0, by omega⟩ ⟨0, by omega⟩ k)
    (h158LocalPrincipal n ⟨0, by omega⟩ ⟨0, by omega⟩ k)
    (h158LocalCofactor n k) (h158PoleOrder n k)
    (padicValRat p (h158Normalization n)+h158NumeratorCredit p n k)
    (h158CofactorCount p n k) 1 (h158LocalCofactor_zero_ne n k hk)
    (h158_cofactor_constant_eq_count n k hk hsq)
    (fun q _ => hC q) (fun q _ => hN q)
    (fun q hq => h158LocalPrincipal_coefficient_identity n _ _ k q hk hq) q hq
  simpa only [one_mul] using h

/-- The actual nu+z-d-o+ell floor for all Laurent orders of the base kernel.
Here ell=l+1, so the formula has no natural-subtraction ambiguity. -/
theorem h158_base_laurent_floor {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hn : 0 < n) (hk : k ∈ h158PoleSet n) (hsq : 52*n < p^2)
    (l : Fin (h158PoleOrder n k)) :
    AtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCredit p n k-
      h158CofactorCount p n k-(h158PoleOrder n k : ℤ)+(l.val : ℤ)+1)
      (h158PrincipalCoefficients n ⟨0, by omega⟩ ⟨0, by omega⟩ k l) := by
  have h := h158_base_coefficient_floor (p := p) n k hn hk hsq
    (h158PoleOrder n k-(l.val+1)) (by have := l.isLt; omega)
  rw [h158LocalPrincipal_coeff] at h
  have he : ((h158PoleOrder n k-(l.val+1) : ℕ) : ℤ) =
      (h158PoleOrder n k : ℤ)-(l.val : ℤ)-1 := by
    have := l.isLt; omega
  rw [he] at h
  convert h using 1
  ring

/-- Arithmetic-facing version: nu is the valuation of the original
normalization; z and d are explicit finite integer residue counts. -/
theorem h158_base_laurent_floor_from_counts {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hn : 0 < n) (hk : k ∈ h158PoleSet n) (hsq : 52*n < p^2)
    (l : Fin (h158PoleOrder n k)) :
    AtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
      h158CofactorCount p n k-(h158PoleOrder n k : ℤ)+(l.val : ℤ)+1)
      (h158PrincipalCoefficients n ⟨0, by omega⟩ ⟨0, by omega⟩ k l) := by
  simpa only [h158_numerator_credit_eq_count] using
    h158_base_laurent_floor (p := p) n k hn hk hsq l

/-- Class-facing form nu+z-D+ell. D ALREADY includes the selected pole's
order, so subtracting the pole order again would double-charge it. -/
theorem h158_base_laurent_floor_from_class_counts {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hn : 0 < n) (hk : k ∈ h158PoleSet n) (hsq : 52*n < p^2)
    (l : Fin (h158PoleOrder n k)) :
    AtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
      h158DenominatorCount p n k+(l.val : ℤ)+1)
      (h158PrincipalCoefficients n ⟨0, by omega⟩ ⟨0, by omega⟩ k l) := by
  rw [h158_denominator_count_eq p n k hk]
  convert h158_base_laurent_floor_from_counts n k hn hk hsq l using 1
  ring

/-- Actual jet functional on any polynomial with a weighted local Taylor
bound. Only the base-kernel division is used; the parent supplies the exact
identification with the original matrix entries. -/
theorem h158_jetValue_floor {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hn : 0 < n) (hk : k ∈ h158PoleSet n) (hsq : 52*n < p^2)
    (P : ℚ[X]) (b : ℤ)
    (hP : ∀ q < h158PoleOrder n k,
      AtLeast p (b-(q : ℤ)) ((taylor (-(k : ℚ)) P).coeff q))
    (l : Fin (h158PoleOrder n k)) :
    AtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
      h158DenominatorCount p n k+b+(l.val : ℤ)+1)
      (h158JetValue n hn k l P) := by
  let a := padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
    h158CofactorCount p n k
  have hA : ∀ q < h158PoleOrder n k,
      AtLeast p (a-(q : ℤ)) ((h158BasePrincipal n hn k).coeff q) := by
    intro q hq
    simpa only [a, h158BasePrincipal, h158_numerator_credit_eq_count] using
      h158_base_coefficient_floor (p := p) n k hn hk hsq q hq
  have h := truncated_weighted_mul (h158BasePrincipal n hn k)
    (taylor (-(k : ℚ)) P) (h158PoleOrder n k) a b 1
    (by simpa only [one_mul] using hA) (by simpa only [one_mul] using hP)
    (h158PoleOrder n k-(l.val+1)) (by have := l.isLt; omega)
  have he : ((h158PoleOrder n k-(l.val+1) : ℕ) : ℤ) =
      (h158PoleOrder n k : ℤ)-(l.val : ℤ)-1 := by
    have := l.isLt; omega
  simp only [one_mul, he] at h
  rw [h158_denominator_count_eq p n k hk]
  change AtLeast p _ ((h158BasePrincipal n hn k*taylor (-(k : ℚ)) P).coeff _) 
  convert h using 1
  dsimp [a]
  ring

theorem integer_divisible_floor {p : ℕ} [Fact p.Prime] (a : ℤ)
    (ha : (p : ℤ) ∣ a) : AtLeast p 1 (a : ℚ) := by
  have h := rootCredit_floor p (a : ℚ)
  simpa only [rootCredit_int, ite_eq_left ha] using h

/-- Parent anchors are coordinates in the t-variable: the pole is -k,
so the congruence is p | (anchor+k), not p | (anchor-k). -/
theorem weighted_anchor_power {p : ℕ} [Fact p.Prime] (anchor : ℤ) (k m : ℕ)
    (ha : (p : ℤ) ∣ anchor+(k : ℤ)) :
    Weighted p (taylor (-(k : ℚ)) (taylor (-(anchor : ℚ)) (X^m))) (m : ℤ) 1 := by
  have hc := neg (integer_divisible_floor (anchor+(k : ℤ)) ha)
  have he : -((anchor+(k : ℤ) : ℤ) : ℚ) = -(k : ℚ)+ -(anchor : ℚ) := by
    push_cast
    ring
  rw [he] at hc
  rw [taylor_taylor, taylor_X_pow]
  simpa only [mul_one] using weighted_pow (weighted_linear hc (by omega : (1 : ℤ) ≤ 1)) m

/-- The actual weighted jet bound for a class-anchor monomial. Every extra
power contributes a unit of valuation; all Laurent orders are retained. -/
theorem h158_jetValue_anchor_power_floor {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hn : 0 < n) (hk : k ∈ h158PoleSet n) (hsq : 52*n < p^2)
    (anchor : ℤ) (ha : (p : ℤ) ∣ anchor+(k : ℤ)) (m : ℕ)
    (l : Fin (h158PoleOrder n k)) :
    AtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
      h158DenominatorCount p n k+(m : ℤ)+(l.val : ℤ)+1)
      (h158JetValue n hn k l (taylor (-(anchor : ℚ)) (X^m))) := by
  apply h158_jetValue_floor n k hn hk hsq _ (m : ℤ) _ l
  intro q hq
  simpa only [one_mul] using weighted_anchor_power anchor k m ha q

/-- Nonnegative floors for ordinary integer arithmetic factors. -/
theorem nat_floor (p m : ℕ) : AtLeast p 0 (m : ℚ) := by
  apply Or.inr
  simp only [padicValRat.of_nat]
  exact Int.natCast_nonneg _

/-- The complete finite harmonic term costs at most s in the main-prime
range. No terms or possible cancellations are removed. -/
theorem harmonic_floor {p : ℕ} [Fact p.Prime] (s m : ℕ) (hm : m < p^2) :
    AtLeast p (-(s : ℤ)) (harmonicCutoff s m) := by
  unfold harmonicCutoff
  apply sum
  intro t ht
  have ht := Finset.mem_range.mp ht
  have hv := nat_valuation_le_one_of_lt_square (p := p) (m := t+1) (by omega) (by omega)
  apply Or.inr
  rw [show (t : ℚ)+1 = ((t+1 : ℕ) : ℚ) by push_cast; rfl,
    one_div, padicValRat.inv, padicValRat.pow]
  nlinarith

/-- Uniform coefficient floor for a formal seven-variable polynomial. -/
def FormalAtLeast (p : ℕ) (a : ℤ) (P : SevenPolynomial) : Prop :=
  ∀ m, AtLeast p a (P.coeff m)

/-- Bridge to the project's actual Gauss minimum, only when the formal
polynomial is nonzero. Zero packets need no artificial finite valuation. -/
theorem formal_gauss_lower {p : ℕ} {a : ℤ} {P : SevenPolynomial}
    (hP : FormalAtLeast p a P) (hP0 : P ≠ 0) :
    a ≤ rationalPolynomialGaussValuation p P hP0 := by
  apply Finset.le_inf'
  intro m hm
  exact of_nonzero (hP m) (MvPolynomial.mem_support_iff.mp hm)

theorem formal_C {p : ℕ} {a : ℤ} {x : ℚ} (hx : AtLeast p a x) :
    FormalAtLeast p a (MvPolynomial.C x) := by
  intro m
  rw [MvPolynomial.coeff_C]
  split_ifs
  · exact hx
  · exact zero p a

theorem formal_add {p : ℕ} [Fact p.Prime] {a : ℤ} {P Q : SevenPolynomial}
    (hP : FormalAtLeast p a P) (hQ : FormalAtLeast p a Q) :
    FormalAtLeast p a (P+Q) := by
  intro m
  change AtLeast p a (P.coeff m+Q.coeff m)
  exact add (hP m) (hQ m)

theorem formal_sum {p : ℕ} [Fact p.Prime] {ι : Type*} (s : Finset ι)
    (P : ι → SevenPolynomial) (a : ℤ) (hP : ∀ i ∈ s, FormalAtLeast p a (P i)) :
    FormalAtLeast p a (∑ i ∈ s, P i) := by
  intro m
  rw [MvPolynomial.coeff_sum]
  exact sum s _ a (fun i hi => hP i hi m)

theorem formal_C_mul {p : ℕ} [Fact p.Prime] {a b : ℤ} {x : ℚ}
    {P : SevenPolynomial} (hx : AtLeast p a x) (hP : FormalAtLeast p b P) :
    FormalAtLeast p (a+b) (MvPolynomial.C x*P) := by
  intro m
  rw [MvPolynomial.coeff_C_mul]
  exact mul hx (hP m)

theorem formal_affine {p : ℕ} [Fact p.Prime] {a : ℤ} (x : ℚ) (y : Fin 7 → ℚ)
    (hx : AtLeast p a x) (hy : ∀ i, AtLeast p a (y i)) :
    FormalAtLeast p a (affineEntry x y) := by
  apply formal_add (formal_C hx)
  apply formal_sum
  intro i hi m
  rw [MvPolynomial.coeff_C_mul, MvPolynomial.coeff_X]
  split_ifs
  · simpa only [mul_one] using hy i
  · simp only [mul_zero]
    exact zero p a

/-- Full formal pole packet, including the rational harmonic coordinate.
Its worst cost is ell+4, where ell=l+1 is the Laurent order. -/
theorem h158_poleCoordinate_floor {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hm : k-48*n-1 < p^2) (l : Fin (h158PoleOrder n k)) :
    FormalAtLeast p (-((l.val : ℤ)+5)) (h158PoleCoordinate n k l) := by
  unfold h158PoleCoordinate
  apply formal_affine
  · have h := mul (neg (nat_floor p ((l.val+4).choose 4)))
      (harmonic_floor (l.val+5) (k-48*n-1) hm)
    simpa only [Nat.cast_add, Nat.cast_ofNat, zero_add] using h
  · intro s
    split_ifs
    · exact mono (nat_floor p (((2+2*s.val)+4).choose 4)) (by omega)
    · exact zero p _

/-- Weighted bound for each complete actual pole packet. Both zeta and
harmonic coordinates are present. It is uniform in the Laurent order. -/
theorem h158_polePacket_anchor_power_floor {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hn : 0 < n) (hk : k ∈ h158PoleSet n) (hsq : 57*n < p^2)
    (anchor : ℤ) (ha : (p : ℤ) ∣ anchor+(k : ℤ)) (m : ℕ)
    (l : Fin (h158PoleOrder n k)) :
    FormalAtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
      h158DenominatorCount p n k+(m : ℤ)-4)
      (MvPolynomial.C (h158JetValue n hn k l (taylor (-(anchor : ℚ)) (X^m))) *
        h158PoleCoordinate n k l) := by
  have hbound := h158_pole_address_bounds n k hk
  have h := formal_C_mul
    (h158_jetValue_anchor_power_floor n k hn hk (by omega) anchor ha m l)
    (h158_poleCoordinate_floor n k (by omega : k-48*n-1 < p^2) l)
  convert h using 1
  ring

/-- The complete actual pole map, after summing ALL Laurent orders. -/
theorem h158_poleMap_anchor_power_floor {p : ℕ} [Fact p.Prime] (n k : ℕ)
    (hn : 0 < n) (hk : k ∈ h158PoleSet n) (hsq : 57*n < p^2)
    (anchor : ℤ) (ha : (p : ℤ) ∣ anchor+(k : ℤ)) (m : ℕ) :
    FormalAtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
      h158DenominatorCount p n k+(m : ℤ)-4)
      (h158PoleJetMap n hn k (taylor (-(anchor : ℚ)) (X^m))) := by
  change FormalAtLeast p _ (∑ l, MvPolynomial.C
    (h158JetValue n hn k l (taylor (-(anchor : ℚ)) (X^m))) * h158PoleCoordinate n k l)
  exact formal_sum _ _ _ (fun l _ => h158_polePacket_anchor_power_floor n k hn hk hsq anchor ha m l)

theorem residue_class_difference_dvd {p : ℕ} (hp : 0 < p) (c : Fin p) (k : ℕ)
    (hk : h158ResidueClass p hp k = c) : (p : ℤ) ∣ (k : ℤ)-(c.val : ℤ) := by
  apply Nat.modEq_iff_dvd.mp
  change c.val % p = k % p
  have h := congrArg Fin.val hk
  simpa only [h158ResidueClass, Nat.mod_eq_of_lt c.isLt] using h.symm

/-- An entire true residue block on a monomial about its integer anchor.
The root counts are invariant over the class, so all poles share one floor.
This includes the full harmonic constant and has no discarded remainder. -/
theorem h158_residueCluster_power_floor {p : ℕ} [Fact p.Prime] (n : ℕ)
    (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2) (c : Fin p) (m : ℕ) :
    FormalAtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n c.val-
      h158DenominatorCount p n c.val+(m : ℤ)-4)
      (h158ClusterJetMap n hn (h158ResidueClass p hp) c
        (taylor (c.val : ℚ) (X^m))) := by
  simp only [h158ClusterJetMap, LinearMap.sum_apply]
  apply formal_sum
  intro k hk
  have hmem := Finset.mem_filter.mp hk
  have hd := residue_class_difference_dvd hp c k hmem.2
  have ha : (p : ℤ) ∣ -(c.val : ℤ)+(k : ℤ) := by
    simpa only [sub_eq_add_neg, add_comm] using hd
  have h := h158_poleMap_anchor_power_floor n k hn hmem.1 hsq (-(c.val : ℤ)) ha m
  simpa only [Int.cast_neg, Int.cast_natCast, neg_neg,
    h158_numerator_count_congr p n k c.val hd,
    h158_denominator_count_congr p n k c.val hd] using h

/-- Actual coefficientwise class-block floor mu+u+v for the parent's
unfolded residue factorization, with mu=nu+z-D-4. -/
theorem h158_residueClusterMoment_floor {p : ℕ} [Fact p.Prime] (n : ℕ)
    (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (c : Fin p) (u v : Fin (4*n)) :
    FormalAtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n c.val-
      h158DenominatorCount p n c.val-4+(u.val : ℤ)+(v.val : ℤ))
      (h158ClusterMoment n hn (h158ResidueClass p hp) c (-(c.val : ℚ)) u v) := by
  have h := h158_residueCluster_power_floor n hn hp hsq c (u.val+v.val)
  simp only [h158ClusterMoment, neg_neg]
  convert h using 1
  push_cast
  ring

end OddZetaMixed.LocalJetValuation
