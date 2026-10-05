import OddZetaMixed.H158TopCoefficient
import OddZetaMixed.H158LocalJets
import OddZetaMixed.GateVandermonde
import Mathlib.Algebra.Polynomial.Lifts
import Mathlib.Algebra.Polynomial.Taylor

/-!
# Actual arithmetic at the rank-2n gate

All factors below belong to the original h158 kernel. The prime is 55n+1,
and the active addresses are 103n+2 through 105n+1. This file does not
assume or assert the outstanding reduction of the full period matrix.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

private theorem gate_padic_prod {p : ℕ} [Fact p.Prime] {ι : Type*}
    (s : Finset ι) (f : ι → ℚ) (hf : ∀ a ∈ s, f a ≠ 0) :
    padicValRat p (∏ a ∈ s, f a) = ∑ a ∈ s, padicValRat p (f a) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    rw [Finset.prod_insert ha, Finset.sum_insert ha,
      padicValRat.mul (hf a (mem_insert_self a s))
        (Finset.prod_ne_zero_iff.mpr (fun b hb => hf b (mem_insert_of_mem hb))),
      ih (fun b hb => hf b (mem_insert_of_mem hb))]

theorem h158Gate_index_pos (n : ℕ) (hp : (55*n+1).Prime) : 0 < n := by
  have := hp.two_le
  omega

/-- Every factorial in the original normalization has unit valuation. -/
theorem h158_factorial_padicValRat_zero (m p : ℕ) (hp : p.Prime) (hm : m < p) :
    padicValRat p (m.factorial : ℚ) = 0 := by
  rw [padicValRat.of_nat, padicValNat.eq_zero_of_not_dvd]
  · rfl
  · exact fun h => (Nat.not_le_of_lt hm) (hp.dvd_factorial.mp h)

/-- Includes the leading factor 2 of the actual normalization. -/
theorem h158Normalization_padicValRat_zero (n p : ℕ) (hp : p.Prime)
    (hlarge : 52*n < p) (h2 : 2 < p) :
    padicValRat p (h158Normalization n) = 0 := by
  let : Fact p.Prime := ⟨hp⟩
  have hf (m : ℕ) : (m.factorial : ℚ) ≠ 0 := by
    exact_mod_cast Nat.factorial_ne_zero m
  have hnum : (∏ b ∈ range 16, (((52-2*b)*n).factorial : ℚ)) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr (fun _ _ => hf _)
  have hden : (∏ a ∈ range 5, (((48+a)*n).factorial : ℚ)^2) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr (fun _ _ => pow_ne_zero _ (hf _))
  rw [h158Normalization, padicValRat.div (mul_ne_zero (by norm_num) hnum) hden,
    padicValRat.mul (by norm_num) hnum]
  have htwo : padicValRat p 2 = 0 := by
    have h : padicValNat p 2 = 0 :=
      padicValNat.eq_zero_of_not_dvd (Nat.not_dvd_of_pos_of_lt (by omega) h2)
    change padicValRat p ((2 : ℕ) : ℚ) = 0
    rw [padicValRat.of_nat, h]
    rfl
  rw [htwo, gate_padic_prod _ _ (fun _ _ => hf _),
    gate_padic_prod _ _ (fun _ _ => pow_ne_zero _ (hf _))]
  have hA : (∑ b ∈ range 16, padicValRat p (((52-2*b)*n).factorial : ℚ)) = 0 := by
    apply Finset.sum_eq_zero
    intro b hb
    apply h158_factorial_padicValRat_zero _ p hp
    have : 52-2*b ≤ 52 := Nat.sub_le _ _
    nlinarith
  have hB : (∑ a ∈ range 5, padicValRat p ((((48+a)*n).factorial : ℚ)^2)) = 0 := by
    apply Finset.sum_eq_zero
    intro a ha
    have ha := mem_range.mp ha
    rw [padicValRat.pow, h158_factorial_padicValRat_zero _ p hp (by nlinarith), mul_zero]
  rw [hA, hB]
  norm_num

theorem h158Gate_normalization_unit (n : ℕ) (hp : (55*n+1).Prime) :
    h158Normalization n ≠ 0 ∧ padicValRat (55*n+1) (h158Normalization n) = 0 := by
  have hn := h158Gate_index_pos n hp
  exact ⟨h158Normalization_ne_zero n,
    h158Normalization_padicValRat_zero n _ hp (by omega) (by omega)⟩

/-- The original denominator has every address in the stated interval. -/
theorem h158PoleSet_mem_iff (n k : ℕ) :
    k ∈ h158PoleSet n ↔ 53*n+1 ≤ k ∧ k ≤ 105*n+1 := by
  constructor
  · exact h158_pole_address_bounds n k
  · rintro ⟨hlo, hhi⟩
    simp only [h158PoleSet, List.mem_toFinset, h158PoleList, List.mem_flatMap,
      List.mem_range, List.mem_map]
    refine ⟨0, by omega, k-(53*n+1), by simp only [mul_zero, Nat.sub_zero]; omega, ?_⟩
    simp only [add_zero]
    omega

private theorem gate_interval_count (a d k : ℕ) :
    ((List.range (d+1)).map (fun j => a+j)).count k =
      if a ≤ k ∧ k ≤ a+d then 1 else 0 := by
  have hm : k ∈ (List.range (d+1)).map (fun j => a+j) ↔ a ≤ k ∧ k ≤ a+d := by
    simp only [List.mem_map, List.mem_range]
    constructor
    · rintro ⟨j, hj, rfl⟩
      omega
    · rintro ⟨hlo, hhi⟩
      exact ⟨k-a, by omega, by omega⟩
  split_ifs with h
  · exact List.count_eq_one_of_mem
      ((List.nodup_map_iff (fun x y h => Nat.add_left_cancel h)).mpr List.nodup_range)
      (hm.mpr h)
  · exact List.count_eq_zero_of_not_mem (fun hk => h (hm.mp hk))

/-- The active shell has precisely double and simple denominator poles. -/
theorem h158Gate_pole_order (n k : ℕ) (_hn : 0 < n)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    h158PoleOrder n k = if k ≤ 104*n+1 then 2 else 1 := by
  unfold h158PoleOrder h158PoleList
  rw [list_count_flatMap]
  have he : ((List.range 16).map fun b =>
      ((List.range ((52-2*b)*n+1)).map fun j => (53+b)*n+1+j).count k) =
      (List.range 16).map (fun b =>
        if b = 0 then 1 else if b = 1 ∧ k ≤ 104*n+1 then 1 else 0) := by
    apply List.map_congr_left
    intro b hb
    have hb : b < 16 := List.mem_range.mp hb
    rw [gate_interval_count]
    have hsub : 52-2*b+2*b = 52 := by omega
    by_cases hb0 : b = 0
    · subst b
      simp only [add_zero, mul_zero, Nat.sub_zero, ite_true]
      rw [ite_eq_left (by constructor <;> omega)]
    by_cases hb1 : b = 1
    · subst b
      simp only [show (1 : ℕ) ≠ 0 by omega, ite_false, true_and]
      congr 1
      apply propext
      omega
    · have hb2 : 2 ≤ b := by omega
      have hnot : ¬ ((53+b)*n+1 ≤ k ∧ k ≤ (53+b)*n+1+(52-2*b)*n) := by
        rintro ⟨_, h⟩
        nlinarith
      rw [ite_eq_right hnot, ite_eq_right hb0, ite_eq_right (by simp [hb1])]
  rw [he]
  norm_num [List.range_succ]
  split_ifs <;> omega

/-- The harmonic cutoff reaches p at exactly the two active shells. -/
theorem h158Gate_harmonic_support (n k : ℕ) (hk : k ∈ h158PoleSet n) :
    (55*n+1 ≤ k-48*n-1 ↔ 103*n+2 ≤ k) ∧ k-48*n-1 < 2*(55*n+1) := by
  have hb := h158_pole_address_bounds n k hk
  omega

theorem h158Gate_harmonic_multiple (n k d : ℕ) (hk : k ∈ h158PoleSet n)
    (hd : 0 < d) (hcut : d ≤ k-48*n-1) :
    (55*n+1 ∣ d ↔ d = 55*n+1) := by
  have hbound := (h158Gate_harmonic_support n k hk).2
  constructor
  · rintro ⟨a, rfl⟩
    have : a < 2 := by nlinarith
    have : a = 1 := by nlinarith
    simp [this]
  · rintro rfl
    exact dvd_rfl

/-- The active addresses use the same indexing as the existing Vandermonde. -/
def h158GatePole (n : ℕ) (i : Fin (2*n)) : ℕ := 103*n+2+i.val

theorem h158GatePole_mem (n : ℕ) (i : Fin (2*n)) :
    h158GatePole n i ∈ h158PoleSet n := by
  rw [h158PoleSet_mem_iff]
  have := i.isLt
  unfold h158GatePole
  omega

theorem h158GatePole_centered (n : ℕ) (i : Fin (2*n)) :
    79*(n : ℚ)+1-(h158GatePole n i : ℚ) = -(gateNode n i : ℚ) := by
  simp only [h158GatePole, gateNode, Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat]
  ring

private theorem gate_nat_unit (p d : ℕ) (hd : 0 < d) (hlt : d < p) :
    (d : ℚ) ≠ 0 ∧ padicValRat p (d : ℚ) = 0 := by
  refine ⟨by exact_mod_cast hd.ne', ?_⟩
  rw [padicValRat.of_nat,
    padicValNat.eq_zero_of_not_dvd (Nat.not_dvd_of_pos_of_lt hd hlt)]
  rfl

private theorem gate_nat_valuation (p d : ℕ) (hp : p.Prime)
    (hd : 0 < d) (hlt : d < 2*p) :
    padicValRat p (d : ℚ) = if d = p then 1 else 0 := by
  by_cases he : d = p
  · subst d
    rw [ite_eq_left rfl, padicValRat.self hp.one_lt]
  · rw [ite_eq_right he, padicValRat.of_nat]
    have hnot : ¬ p ∣ d := by
      rintro ⟨a, rfl⟩
      have : a < 2 := by nlinarith [hp.pos]
      have : a = 1 := by nlinarith
      simp_all
    rw [padicValNat.eq_zero_of_not_dvd hnot]
    rfl

/-- A lower rising-factorial factor vanishes modulo p only at the one
address j=k-p-1; there it is exactly -p, not a higher multiple. -/
theorem h158Gate_lower_factor (n k a j : ℕ) (hp : (55*n+1).Prime)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1)
    (ha : a < 5) (hj : j < (48+a)*n) :
    (1+(j : ℚ)-k) ≠ 0 ∧
      padicValRat (55*n+1) (1+(j : ℚ)-k) =
        if j = k-(55*n+1)-1 then 1 else 0 := by
  have hn := h158Gate_index_pos n hp
  have hjk : 1+j < k := by nlinarith
  have hd : 0 < k-(1+j) := by omega
  have hbound : k-(1+j) < 2*(55*n+1) := by omega
  have he : 1+(j : ℚ)-k = -((k-(1+j) : ℕ) : ℚ) := by
    rw [Nat.cast_sub (by omega : 1+j ≤ k)]
    push_cast
    ring
  rw [he]
  refine ⟨neg_ne_zero.mpr (by exact_mod_cast hd.ne'), ?_⟩
  rw [padicValRat.neg, gate_nat_valuation _ _ hp hd hbound]
  have heq : k-(1+j) = 55*n+1 ↔ j = k-(55*n+1)-1 := by omega
  simp only [heq]

/-- None of the upper factors is zero or divisible by the gate prime. -/
theorem h158Gate_upper_factor (n k a j : ℕ) (_hn : 0 < n)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1)
    (ha : a < 5) (hj : j < (48+a)*n) :
    (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)+j-k) ≠ 0 ∧
      padicValRat (55*n+1)
        (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)+j-k) = 0 := by
  have ha' : (48+a)*n ≤ 52*n := by nlinarith
  have hb : (48+a)*n+k ≤ 158*n+2+j := by omega
  have hd : 0 < 158*n+2+j-((48+a)*n+k) := by omega
  have hlt : 158*n+2+j-((48+a)*n+k) < 55*n+1 := by omega
  have he : 158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)+j-k =
      ((158*n+2+j-((48+a)*n+k) : ℕ) : ℚ) := by
    rw [Nat.cast_sub hb]
    push_cast
    ring
  rw [he]
  exact gate_nat_unit _ _ hd hlt

theorem h158Gate_affine_factor (n k : ℕ) (_hn : 0 < n)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    (79*(n : ℚ)+1-k) ≠ 0 ∧ padicValRat (55*n+1) (79*(n : ℚ)+1-k) = 0 := by
  have hd : 0 < k-(79*n+1) := by omega
  have hlt : k-(79*n+1) < 55*n+1 := by omega
  have he : 79*(n : ℚ)+1-k = -((k-(79*n+1) : ℕ) : ℚ) := by
    rw [Nat.cast_sub (by omega : 79*n+1 ≤ k)]
    push_cast
    ring
  rw [he, neg_ne_zero, padicValRat.neg]
  exact gate_nat_unit _ _ hd hlt

theorem h158Gate_lower_rising (n k a : ℕ) (hp : (55*n+1).Prime)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) (ha : a < 5) :
    (rising 1 ((48+a)*n)).eval (-(k : ℚ)) ≠ 0 ∧
      padicValRat (55*n+1) ((rising 1 ((48+a)*n)).eval (-(k : ℚ))) =
        if k ≤ 55*n+1+(48+a)*n then 1 else 0 := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  have hf (j : ℕ) (hj : j ∈ range ((48+a)*n)) :=
    h158Gate_lower_factor n k a j hp hlo hhi ha (mem_range.mp hj)
  have he : (rising 1 ((48+a)*n)).eval (-(k : ℚ)) =
      ∏ j ∈ range ((48+a)*n), (1+(j : ℚ)-k) := by
    simp only [rising, eval_prod, eval_add, eval_X, eval_C]
    apply Finset.prod_congr rfl
    intro j hj
    ring
  rw [he]
  refine ⟨Finset.prod_ne_zero_iff.mpr (fun j hj => (hf j hj).1), ?_⟩
  rw [gate_padic_prod _ _ (fun j hj => (hf j hj).1)]
  calc
    _ = ∑ j ∈ range ((48+a)*n),
        (if j = k-(55*n+1)-1 then (1 : ℤ) else 0) :=
      Finset.sum_congr rfl (fun j hj => (hf j hj).2)
    _ = _ := by
      rw [Finset.sum_ite_eq']
      simp only [mem_range]
      congr 1
      apply propext
      omega

theorem h158Gate_upper_rising (n k a : ℕ) (hp : (55*n+1).Prime)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) (ha : a < 5) :
    (rising (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)) ((48+a)*n)).eval (-(k : ℚ)) ≠ 0 ∧
      padicValRat (55*n+1)
        ((rising (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)) ((48+a)*n)).eval
          (-(k : ℚ))) = 0 := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  have hn := h158Gate_index_pos n hp
  have hf (j : ℕ) (hj : j ∈ range ((48+a)*n)) :=
    h158Gate_upper_factor n k a j hn hlo hhi ha (mem_range.mp hj)
  have he :
      (rising (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)) ((48+a)*n)).eval (-(k : ℚ)) =
      ∏ j ∈ range ((48+a)*n), (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)+j-k) := by
    simp only [rising, eval_prod, eval_add, eval_X, eval_C]
    apply Finset.prod_congr rfl
    intro j hj
    ring
  rw [he]
  refine ⟨Finset.prod_ne_zero_iff.mpr (fun j hj => (hf j hj).1), ?_⟩
  rw [gate_padic_prod _ _ (fun j hj => (hf j hj).1)]
  exact Finset.sum_eq_zero (fun j hj => (hf j hj).2)

/-- The count of numerator factors equal to -p on the active shells. -/
def h158GateMultiplicity (n k : ℕ) : ℕ := if k ≤ 104*n+1 then 4 else 3

theorem h158Gate_numerator_valuation (n k : ℕ) (hp : (55*n+1).Prime)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    (h158Numerator n).eval (-(k : ℚ)) ≠ 0 ∧
      padicValRat (55*n+1) ((h158Numerator n).eval (-(k : ℚ))) =
        h158GateMultiplicity n k := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  have hn := h158Gate_index_pos n hp
  have hA := h158Gate_affine_factor n k hn hlo hhi
  have hL (a : ℕ) (ha : a ∈ range 5) :=
    h158Gate_lower_rising n k a hp hlo hhi (mem_range.mp ha)
  have hU (a : ℕ) (ha : a ∈ range 5) :=
    h158Gate_upper_rising n k a hp hlo hhi (mem_range.mp ha)
  have he : (h158Numerator n).eval (-(k : ℚ)) =
      (79*(n : ℚ)+1-k) * ∏ a ∈ range 5,
        (rising 1 ((48+a)*n)).eval (-(k : ℚ)) *
        (rising (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)) ((48+a)*n)).eval (-(k : ℚ)) := by
    simp only [h158Numerator, eval_mul, eval_prod, eval_add, eval_X, eval_C]
    congr 1
    ring
  have hprod := Finset.prod_ne_zero_iff.mpr
    (fun a ha => mul_ne_zero (hL a ha).1 (hU a ha).1)
  rw [he]
  refine ⟨mul_ne_zero hA.1 hprod, ?_⟩
  rw [padicValRat.mul hA.1 hprod, hA.2, zero_add,
    gate_padic_prod _ _ (fun a ha => mul_ne_zero (hL a ha).1 (hU a ha).1)]
  calc
    _ = ∑ a ∈ range 5, (if k ≤ 55*n+1+(48+a)*n then (1 : ℤ) else 0) := by
      apply Finset.sum_congr rfl
      intro a ha
      rw [padicValRat.mul (hL a ha).1 (hU a ha).1, (hL a ha).2, (hU a ha).2,
        add_zero]
    _ = _ := by
      simp only [sum_range_succ, sum_range_zero]
      unfold h158GateMultiplicity
      split_ifs <;> omega

/-- The actual normalized top Laurent coefficient of B_n, before multiplying
by a basis polynomial. The definition uses the original pole cofactor. -/
def h158GateTopResidue (n k : ℕ) : ℚ :=
  h158Normalization n * (h158Numerator n).eval (-(k : ℚ)) /
    (h158PoleComplement n k (h158PoleOrder n k-1)).eval (-(k : ℚ))

/-- Removing exactly the counted -p factors gives the concrete local weight
U_k(0). The nonzero and valuation claims are proved, not supplied as data. -/
def h158GateWeight (n k : ℕ) : ℚ :=
  h158GateTopResidue n k / (-(55*n+1 : ℕ) : ℚ)^h158GateMultiplicity n k

theorem h158GateTopResidue_valuation (n k : ℕ) (hp : (55*n+1).Prime)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    h158GateTopResidue n k ≠ 0 ∧
      padicValRat (55*n+1) (h158GateTopResidue n k) = h158GateMultiplicity n k := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  have hn := h158Gate_index_pos n hp
  have hk := (h158PoleSet_mem_iff n k).mpr (by constructor <;> omega)
  have hN := h158Gate_normalization_unit n hp
  have hA := h158Gate_numerator_valuation n k hp hlo hhi
  have hC := h158PoleComplement_top_eval_ne_zero n k hk
  unfold h158GateTopResidue
  refine ⟨div_ne_zero (mul_ne_zero hN.1 hA.1) hC, ?_⟩
  rw [padicValRat.div (mul_ne_zero hN.1 hA.1) hC,
    padicValRat.mul hN.1 hA.1, hN.2, hA.2,
    h158PoleComplement_top_padicValRat n k _ hk hp (by omega)]
  omega

theorem h158GateWeight_unit (n k : ℕ) (hp : (55*n+1).Prime)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    h158GateWeight n k ≠ 0 ∧ padicValRat (55*n+1) (h158GateWeight n k) = 0 := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  have hR := h158GateTopResidue_valuation n k hp hlo hhi
  have hp0 : (-(55*n+1 : ℕ) : ℚ) ≠ 0 := by
    exact neg_ne_zero.mpr (by exact_mod_cast hp.ne_zero)
  unfold h158GateWeight
  refine ⟨div_ne_zero hR.1 (pow_ne_zero _ hp0), ?_⟩
  rw [padicValRat.div hR.1 (pow_ne_zero _ hp0), hR.2, padicValRat.pow,
    padicValRat.neg, padicValRat.self hp.one_lt, mul_one, sub_self]

/-- The weights factor the ACTUAL principal coefficients for every basis
entry. This is not yet the simple-coefficient derivative at double poles. -/
theorem h158Gate_top_coefficient (n k : ℕ) (i j : Fin (2*n))
    (hk : k ∈ h158PoleSet n) (hp : (55*n+1).Prime) :
    h158PrincipalCoefficients n i j k (h158TopPoleIndex n k hk) =
      (-(55*n+1 : ℕ) : ℚ)^h158GateMultiplicity n k * h158GateWeight n k *
        (centeredMultiplier n i j).eval (-(k : ℚ)) := by
  have hp0 : (-(55*n+1 : ℕ) : ℚ) ≠ 0 := by
    exact neg_ne_zero.mpr (by exact_mod_cast hp.ne_zero)
  rw [h158PrincipalCoefficients_top_eq n k i j hk]
  simp only [eval_mul, eval_C, h158GateWeight, h158GateTopResidue]
  field_simp

/-- Nonnegative valuation includes zero; this is an actual subring of Q. -/
def h158GateIntegralRing (p : ℕ) [Fact p.Prime] : Subring ℚ where
  carrier := {q | 0 ≤ padicValRat p q}
  zero_mem' := by simp
  one_mem' := by simp
  neg_mem' := by intro q hq; simpa using hq
  add_mem' := by
    intro q r hq hr
    by_cases h : q+r = 0
    · simp [h]
    · exact le_trans (le_min hq hr) (padicValRat.min_le_padicValRat_add h)
  mul_mem' := by
    intro q r hq hr
    by_cases hq0 : q = 0
    · simp [hq0]
    by_cases hr0 : r = 0
    · simp [hr0]
    change 0 ≤ padicValRat p (q*r)
    rw [padicValRat.mul hq0 hr0]
    exact add_nonneg hq hr

theorem h158GateIntegralRing_mem (p : ℕ) [Fact p.Prime] (q : ℚ) :
    q ∈ h158GateIntegralRing p ↔ 0 ≤ padicValRat p q := Iff.rfl

private theorem gate_lifts_iff (S : Subring ℚ) (P : ℚ[X]) :
    P ∈ Polynomial.liftsRing S.subtype ↔ ∀ q, P.coeff q ∈ S := by
  rw [← lifts_iff_liftsRing, lifts_iff_coeff_lifts]
  simp

private theorem gate_C_mem (S : Subring ℚ) {r : ℚ} (hr : r ∈ S) :
    C r ∈ Polynomial.liftsRing S.subtype :=
  (lifts_iff_liftsRing _ _).mp (C'_mem_lifts ⟨⟨r, hr⟩, rfl⟩)

private theorem gate_X_mem (S : Subring ℚ) :
    (X : ℚ[X]) ∈ Polynomial.liftsRing S.subtype :=
  (lifts_iff_liftsRing _ _).mp (X_mem_lifts S.subtype)

private theorem gate_comp_mem (S : Subring ℚ) {P Q : ℚ[X]}
    (hP : P ∈ Polynomial.liftsRing S.subtype)
    (hQ : Q ∈ Polynomial.liftsRing S.subtype) :
    P.comp Q ∈ Polynomial.liftsRing S.subtype := by
  obtain ⟨P', rfl⟩ := (mem_lifts _).mp ((lifts_iff_liftsRing _ _).mpr hP)
  obtain ⟨Q', rfl⟩ := (mem_lifts _).mp ((lifts_iff_liftsRing _ _).mpr hQ)
  apply (lifts_iff_liftsRing _ _).mp
  exact (mem_lifts _).mpr ⟨P'.comp Q', by rw [Polynomial.map_comp]⟩

private theorem gate_rising_mem (S : Subring ℚ) (a : ℚ) (m : ℕ) (ha : a ∈ S) :
    rising a m ∈ Polynomial.liftsRing S.subtype := by
  apply (Polynomial.liftsRing S.subtype).prod_mem
  intro j hj
  exact (Polynomial.liftsRing S.subtype).add_mem (gate_X_mem S)
    (gate_C_mem S (S.add_mem ha (natCast_mem S j)))

/-- The original numerator has coefficients in every rational subring,
because all its linear factors have integer constant coefficients. -/
theorem h158Numerator_coeff_mem_subring (S : Subring ℚ) (n q : ℕ) :
    (h158Numerator n).coeff q ∈ S := by
  apply (gate_lifts_iff S _).mp _ q
  unfold h158Numerator
  apply (Polynomial.liftsRing S.subtype).mul_mem
  · exact (Polynomial.liftsRing S.subtype).add_mem (gate_X_mem S)
      (gate_C_mem S (S.add_mem (S.mul_mem (natCast_mem S 79) (natCast_mem S n))
        S.one_mem))
  · apply (Polynomial.liftsRing S.subtype).prod_mem
    intro a ha
    apply (Polynomial.liftsRing S.subtype).mul_mem
    · exact gate_rising_mem S _ _ S.one_mem
    · apply gate_rising_mem
      exact S.sub_mem (S.add_mem (S.mul_mem (natCast_mem S 158) (natCast_mem S n))
        (natCast_mem S 2)) (natCast_mem S _)

/-- Every actual basis factorial is a p-unit at the rank-2n gate. -/
theorem h158Gate_basis_factorial_unit (n : ℕ) (hp : (55*n+1).Prime) (i : Fin (2*n)) :
    ((2*i.val).factorial : ℚ) ≠ 0 ∧
      padicValRat (55*n+1) ((2*i.val).factorial : ℚ) = 0 := by
  refine ⟨by exact_mod_cast Nat.factorial_ne_zero _, ?_⟩
  exact h158_factorial_padicValRat_zero _ _ hp (by have := i.isLt; omega)

theorem h158Gate_evenBasis_coeff_nonneg (n : ℕ) (hp : (55*n+1).Prime)
    (i : Fin (2*n)) (q : ℕ) : 0 ≤ padicValRat (55*n+1) ((evenBasis i.val).coeff q) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  change (evenBasis i.val).coeff q ∈ S
  apply (gate_lifts_iff S _).mp _ q
  have hfac := h158Gate_basis_factorial_unit n hp i
  have hinv : (((2*i.val).factorial : ℚ)⁻¹) ∈ S := by
    change 0 ≤ padicValRat (55*n+1) _
    rw [padicValRat.inv, hfac.2]
    omega
  have hscalar : (2 / ((2*i.val).factorial : ℚ)) ∈ S := by
    rw [div_eq_mul_inv]
    exact S.mul_mem (natCast_mem S 2) hinv
  generalize hi : i.val = m at hscalar ⊢
  cases m with
  | zero => exact (Polynomial.liftsRing S.subtype).one_mem
  | succ m =>
    rw [evenBasis_succ]
    apply (Polynomial.liftsRing S.subtype).mul_mem (gate_C_mem S hscalar)
    apply (Polynomial.liftsRing S.subtype).mul_mem
      ((Polynomial.liftsRing S.subtype).pow_mem (gate_X_mem S) 2)
    apply (Polynomial.liftsRing S.subtype).prod_mem
    intro j hj
    exact (Polynomial.liftsRing S.subtype).sub_mem
      ((Polynomial.liftsRing S.subtype).pow_mem (gate_X_mem S) 2)
      (gate_C_mem S (S.pow_mem (S.add_mem (natCast_mem S j) S.one_mem) 2))

theorem h158Gate_centeredMultiplier_coeff_nonneg (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (q : ℕ) :
    0 ≤ padicValRat (55*n+1) ((centeredMultiplier n i j).coeff q) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  change (centeredMultiplier n i j).coeff q ∈ S
  apply (gate_lifts_iff S _).mp _ q
  apply gate_comp_mem
  · exact (Polynomial.liftsRing S.subtype).mul_mem
      ((gate_lifts_iff S _).mpr (h158Gate_evenBasis_coeff_nonneg n hp i))
      ((gate_lifts_iff S _).mpr (h158Gate_evenBasis_coeff_nonneg n hp j))
  · exact (Polynomial.liftsRing S.subtype).add_mem (gate_X_mem S)
      (gate_C_mem S (S.add_mem (S.mul_mem (natCast_mem S 79) (natCast_mem S n))
        S.one_mem))

theorem h158Gate_taylor_multiplier_coeff_nonneg (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (k q : ℕ) :
    0 ≤ padicValRat (55*n+1)
      ((taylor (-(k : ℚ)) (centeredMultiplier n i j)).coeff q) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  change (taylor (-(k : ℚ)) _).coeff q ∈ S
  apply (gate_lifts_iff S _).mp _ q
  rw [taylor_apply]
  apply gate_comp_mem
  · exact (gate_lifts_iff S _).mpr (h158Gate_centeredMultiplier_coeff_nonneg n hp i j)
  · exact (Polynomial.liftsRing S.subtype).add_mem (gate_X_mem S)
      (gate_C_mem S (S.neg_mem (natCast_mem S k)))

/-- All Taylor coefficients of the actual normalized entry numerator are
p-integral, at every integer center, not only at active poles. -/
theorem h158Gate_taylor_entry_coeff_nonneg (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (k q : ℕ) :
    0 ≤ padicValRat (55*n+1)
      ((taylor (-(k : ℚ))
        (C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j)).coeff q) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  change (taylor (-(k : ℚ)) _).coeff q ∈ S
  apply (gate_lifts_iff S _).mp _ q
  rw [taylor_apply]
  apply gate_comp_mem
  · apply (Polynomial.liftsRing S.subtype).mul_mem
    · apply (Polynomial.liftsRing S.subtype).mul_mem
      · apply gate_C_mem S
        change 0 ≤ padicValRat (55*n+1) (h158Normalization n)
        rw [(h158Gate_normalization_unit n hp).2]
      · exact (gate_lifts_iff S _).mpr (h158Numerator_coeff_mem_subring S n)
    · exact (gate_lifts_iff S _).mpr (h158Gate_centeredMultiplier_coeff_nonneg n hp i j)
  · exact (Polynomial.liftsRing S.subtype).add_mem (gate_X_mem S)
      (gate_C_mem S (S.neg_mem (natCast_mem S k)))

/-- All coefficients of the actual Taylor cofactor are integral. This needs
no membership hypothesis on k and no upper bound on the Taylor index. -/
theorem h158Gate_localCofactor_coeff_nonneg (n : ℕ) (hp : (55*n+1).Prime)
    (k q : ℕ) :
    0 ≤ padicValRat (55*n+1) ((h158LocalCofactor n k).coeff q) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  change (h158LocalCofactor n k).coeff q ∈ S
  apply (gate_lifts_iff S _).mp _ q
  rw [h158LocalCofactor, taylor_apply]
  apply gate_comp_mem
  · apply (Polynomial.liftsRing S.subtype).prod_mem
    intro a ha
    exact (Polynomial.liftsRing S.subtype).pow_mem
      ((Polynomial.liftsRing S.subtype).add_mem (gate_X_mem S)
        (gate_C_mem S (natCast_mem S a))) _
  · exact (Polynomial.liftsRing S.subtype).add_mem (gate_X_mem S)
      (gate_C_mem S (S.neg_mem (natCast_mem S k)))

theorem h158Gate_localCofactor_inv_nonneg (n : ℕ) (hp : (55*n+1).Prime)
    (k : ℕ) (hk : k ∈ h158PoleSet n) :
    0 ≤ padicValRat (55*n+1) (((h158LocalCofactor n k).coeff 0)⁻¹) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  rw [padicValRat.inv, h158LocalCofactor_zero_padicValRat n k _ hk hp (by omega)]
  omega

theorem h158Gate_active_shell (n : ℕ) :
    (h158PoleSet n).filter (fun k => 55*n+1 ≤ k-48*n-1) = Icc (103*n+2) (105*n+1) := by
  ext k
  simp only [mem_filter, h158PoleSet_mem_iff, mem_Icc]
  omega

theorem h158Gate_active_card (n : ℕ) :
    ((h158PoleSet n).filter (fun k => 55*n+1 ≤ k-48*n-1)).card = 2*n := by
  rw [h158Gate_active_shell, Nat.card_Icc]
  omega

theorem h158Gate_double_shell (n : ℕ) (hn : 0 < n) :
    (h158PoleSet n).filter (fun k => 55*n+1 ≤ k-48*n-1 ∧ h158PoleOrder n k = 2) =
      Icc (103*n+2) (104*n+1) := by
  ext k
  simp only [mem_filter, mem_Icc]
  constructor
  · rintro ⟨hk, hcut, ho⟩
    have hb := h158_pole_address_bounds n k hk
    have hlo : 103*n+2 ≤ k := by omega
    rw [h158Gate_pole_order n k hn hlo hb.2] at ho
    split_ifs at ho <;> omega
  · rintro ⟨hlo, hhi⟩
    refine ⟨(h158PoleSet_mem_iff n k).mpr ⟨by omega, by omega⟩, by omega, ?_⟩
    rw [h158Gate_pole_order n k hn hlo (by omega), ite_eq_left hhi]

theorem h158Gate_simple_shell (n : ℕ) (hn : 0 < n) :
    (h158PoleSet n).filter (fun k => 55*n+1 ≤ k-48*n-1 ∧ h158PoleOrder n k = 1) =
      Icc (104*n+2) (105*n+1) := by
  ext k
  simp only [mem_filter, mem_Icc]
  constructor
  · rintro ⟨hk, hcut, ho⟩
    have hb := h158_pole_address_bounds n k hk
    have hlo : 103*n+2 ≤ k := by omega
    rw [h158Gate_pole_order n k hn hlo hb.2] at ho
    split_ifs at ho <;> omega
  · rintro ⟨hlo, hhi⟩
    refine ⟨(h158PoleSet_mem_iff n k).mpr ⟨by omega, hhi⟩, by omega, ?_⟩
    rw [h158Gate_pole_order n k hn (by omega) hhi, ite_eq_right (by omega)]

theorem h158Gate_shell_cards (n : ℕ) (hn : 0 < n) :
    ((h158PoleSet n).filter
      (fun k => 55*n+1 ≤ k-48*n-1 ∧ h158PoleOrder n k = 2)).card = n ∧
    ((h158PoleSet n).filter
      (fun k => 55*n+1 ≤ k-48*n-1 ∧ h158PoleOrder n k = 1)).card = n := by
  rw [h158Gate_double_shell n hn, h158Gate_simple_shell n hn, Nat.card_Icc, Nat.card_Icc]
  omega

theorem h158GatePole_order (n : ℕ) (i : Fin (2*n)) :
    h158PoleOrder n (h158GatePole n i) = if i.val < n then 2 else 1 := by
  have hi := i.isLt
  rw [h158Gate_pole_order n _ (by omega) (by unfold h158GatePole; omega)
    (by unfold h158GatePole; omega)]
  congr 1
  apply propext
  unfold h158GatePole
  omega

theorem h158GatePole_covers (n k : ℕ) :
    (∃ i : Fin (2*n), h158GatePole n i = k) ↔ 103*n+2 ≤ k ∧ k ≤ 105*n+1 := by
  constructor
  · rintro ⟨i, rfl⟩
    have := i.isLt
    unfold h158GatePole
    omega
  · rintro ⟨hlo, hhi⟩
    refine ⟨⟨k-(103*n+2), by omega⟩, ?_⟩
    unfold h158GatePole
    dsimp
    omega

/-- Exact positions of the lower factors equal to -p. The set is either
a singleton or empty, so no rising block contributes twice. -/
theorem h158Gate_lower_factor_set (n k a : ℕ) (hlo : 103*n+2 ≤ k) :
    (range ((48+a)*n)).filter (fun j : ℕ => 1+(j : ℚ)-k = (-(55*n+1 : ℕ) : ℚ)) =
      if k ≤ 55*n+1+(48+a)*n then {k-(55*n+1)-1} else ∅ := by
  have hiff (j : ℕ) : (1+(j : ℚ)-k = (-(55*n+1 : ℕ) : ℚ)) ↔
      j = k-(55*n+1)-1 := by
    have ht : k = 55*n+1+1+(k-(55*n+1)-1) := by omega
    have htq := congrArg (fun m : ℕ => (m : ℚ)) ht
    push_cast at htq ⊢
    constructor
    · intro h
      have he : (j : ℚ) = ((k-(55*n+1)-1 : ℕ) : ℚ) := by linarith
      exact_mod_cast he
    · intro h
      rw [h]
      linarith
  ext j
  simp only [mem_filter, mem_range, hiff]
  by_cases hcond : k ≤ 55*n+1+(48+a)*n
  · rw [ite_eq_left hcond]
    simp only [mem_singleton]
    constructor
    · exact And.right
    · intro hj
      exact ⟨by omega, hj⟩
  · rw [ite_eq_right hcond]
    simp only [Finset.notMem_empty, iff_false]
    rintro ⟨hj, heq⟩
    omega

theorem h158Gate_lower_factor_count (n k : ℕ)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    (∑ a ∈ range 5,
      ((range ((48+a)*n)).filter
        (fun j : ℕ => 1+(j : ℚ)-k = (-(55*n+1 : ℕ) : ℚ))).card) =
      h158GateMultiplicity n k := by
  simp_rw [h158Gate_lower_factor_set n k _ hlo]
  simp only [sum_range_succ, sum_range_zero]
  unfold h158GateMultiplicity
  split_ifs <;> simp only [card_singleton, card_empty] <;> omega

/-- The factor count gives polynomial divisibility at u=p, not merely a
valuation at u=0. -/
theorem h158Gate_shifted_numerator_dvd (n k : ℕ)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    (X-C ((55*n+1 : ℕ) : ℚ))^h158GateMultiplicity n k ∣
      taylor (-(k : ℚ)) (h158Numerator n) := by
  have hn : 0 < n := by omega
  let L : ℚ[X] := X-C ((55*n+1 : ℕ) : ℚ)
  have hblock (a : ℕ) (ha : k ≤ 55*n+1+(48+a)*n) :
      L ∣ taylor (-(k : ℚ)) (rising 1 ((48+a)*n)) := by
    have hdiv := rising_linear_factor_dvd (k-(55*n+1)) ((48+a)*n)
      (by omega) (by omega)
    have h := (taylorAlgHom (-(k : ℚ))).toRingHom.map_dvd hdiv
    have he : taylor (-(k : ℚ)) (X+C ((k-(55*n+1) : ℕ) : ℚ)) = L := by
      simp only [map_add, taylor_X, taylor_C, L]
      rw [Nat.cast_sub (by omega : 55*n+1 ≤ k)]
      simp only [Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat]
      simp only [map_sub, map_add, map_mul, map_ofNat, map_neg]
      ring
    exact he ▸ h
  have hall :
      (∏ a ∈ range 5, L^(if k ≤ 55*n+1+(48+a)*n then 1 else 0)) ∣
      ∏ a ∈ range 5, taylor (-(k : ℚ))
        (rising 1 ((48+a)*n) *
          rising (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)) ((48+a)*n)) := by
    apply Finset.prod_dvd_prod_of_dvd
    intro a ha
    split_ifs with h
    · rw [pow_one, taylor_mul]
      exact dvd_mul_of_dvd_left (hblock a h) _
    · simp
  have hcount : (∑ a ∈ range 5, if k ≤ 55*n+1+(48+a)*n then 1 else 0) =
      h158GateMultiplicity n k := by
    simp only [sum_range_succ, sum_range_zero]
    unfold h158GateMultiplicity
    split_ifs <;> omega
  rw [Finset.prod_pow_eq_pow_sum, hcount] at hall
  rw [h158Numerator, taylor_mul]
  change L^h158GateMultiplicity n k ∣ _ *
    (taylorAlgHom (-(k : ℚ))) (∏ a ∈ range 5,
      rising 1 ((48+a)*n) * rising (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)) ((48+a)*n))
  rw [map_prod]
  exact dvd_mul_of_dvd_right hall _

/-- Explicit polynomial quotient after stripping all gate-prime factors
from the actual translated numerator. -/
def h158GateStrippedNumerator (n k : ℕ) : ℚ[X] :=
  taylor (-(k : ℚ)) (h158Numerator n) /ₘ
    (X-C ((55*n+1 : ℕ) : ℚ))^h158GateMultiplicity n k

theorem h158Gate_shifted_numerator_factorization (n k : ℕ)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    taylor (-(k : ℚ)) (h158Numerator n) =
      (X-C ((55*n+1 : ℕ) : ℚ))^h158GateMultiplicity n k *
        h158GateStrippedNumerator n k := by
  have h := modByMonic_add_div (taylor (-(k : ℚ)) (h158Numerator n))
    ((X-C ((55*n+1 : ℕ) : ℚ))^h158GateMultiplicity n k)
  rw [(modByMonic_eq_zero_iff_dvd ((monic_X_sub_C _).pow _)).mpr
    (h158Gate_shifted_numerator_dvd n k hlo hhi), zero_add] at h
  exact h.symm

/-- Monic division preserves integer coefficients, so every coefficient of
the stripped polynomial belongs to every rational subring. -/
theorem h158GateStrippedNumerator_coeff_mem_subring (S : Subring ℚ) (n k q : ℕ) :
    (h158GateStrippedNumerator n k).coeff q ∈ S := by
  have hP : taylor (-(k : ℚ)) (h158Numerator n) ∈ Polynomial.liftsRing S.subtype := by
    rw [taylor_apply]
    apply gate_comp_mem
    · exact (gate_lifts_iff S _).mpr (h158Numerator_coeff_mem_subring S n)
    · exact (Polynomial.liftsRing S.subtype).add_mem (gate_X_mem S)
        (gate_C_mem S (S.neg_mem (natCast_mem S k)))
  obtain ⟨P, hP⟩ := (mem_lifts _).mp ((lifts_iff_liftsRing _ _).mpr hP)
  apply (gate_lifts_iff S _).mp _ q
  apply (lifts_iff_liftsRing _ _).mp
  apply (mem_lifts _).mpr
  refine ⟨P /ₘ (X-C ((55*n+1 : ℕ) : S))^h158GateMultiplicity n k, ?_⟩
  rw [map_divByMonic S.subtype ((monic_X_sub_C _).pow _), hP]
  rw [Polynomial.map_pow, Polynomial.map_sub, Polynomial.map_X]
  change _ /ₘ (X - (mapRingHom S.subtype) ((55*n+1 : ℕ) : S[X]))^_ = _
  rw [map_natCast]
  rfl

theorem h158GateStrippedNumerator_zero (n k : ℕ)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    (h158GateStrippedNumerator n k).coeff 0 =
      (h158Numerator n).eval (-(k : ℚ)) /
        (-(55*n+1 : ℕ) : ℚ)^h158GateMultiplicity n k := by
  have hp0 : (-(55*n+1 : ℕ) : ℚ) ≠ 0 := by
    exact neg_ne_zero.mpr (by exact_mod_cast (by omega : 55*n+1 ≠ 0))
  have he := congrArg (Polynomial.eval (0 : ℚ))
    (h158Gate_shifted_numerator_factorization n k hlo hhi)
  simp only [taylor_apply, eval_comp, eval_add, eval_X, eval_C, zero_add,
    eval_mul, eval_pow, eval_sub, zero_sub, ← coeff_zero_eq_eval_zero] at he
  apply (eq_div_iff (pow_ne_zero _ hp0)).mpr
  simpa only [mul_comm] using he.symm

theorem h158GateStrippedNumerator_zero_unit (n k : ℕ) (hp : (55*n+1).Prime)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    (h158GateStrippedNumerator n k).coeff 0 ≠ 0 ∧
      padicValRat (55*n+1) ((h158GateStrippedNumerator n k).coeff 0) = 0 := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  have hA := h158Gate_numerator_valuation n k hp hlo hhi
  have hp0 : (-(55*n+1 : ℕ) : ℚ) ≠ 0 := by
    exact neg_ne_zero.mpr (by exact_mod_cast hp.ne_zero)
  rw [h158GateStrippedNumerator_zero n k hlo hhi]
  refine ⟨div_ne_zero hA.1 (pow_ne_zero _ hp0), ?_⟩
  rw [padicValRat.div hA.1 (pow_ne_zero _ hp0), hA.2, padicValRat.pow,
    padicValRat.neg, padicValRat.self hp.one_lt, mul_one, sub_self]

/-- The concrete residue weight is exactly the normalized stripped numerator
constant divided by the actual local cofactor constant. -/
theorem h158GateWeight_eq_stripped (n k : ℕ)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    h158GateWeight n k = h158Normalization n *
      (h158GateStrippedNumerator n k).coeff 0 / (h158LocalCofactor n k).coeff 0 := by
  have hk := (h158PoleSet_mem_iff n k).mpr (by constructor <;> omega)
  rw [h158GateStrippedNumerator_zero n k hlo hhi, h158LocalCofactor_zero n k hk]
  unfold h158GateWeight h158GateTopResidue
  ring

/-- Corrected double-shell shape: four u-p factors, with a p-unit stripped
constant. There are no asserted u+p factors. -/
theorem h158Gate_double_factorization (n k : ℕ) (hp : (55*n+1).Prime)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 104*n+1) :
    taylor (-(k : ℚ)) (h158Numerator n) =
      (X-C ((55*n+1 : ℕ) : ℚ))^4 * h158GateStrippedNumerator n k ∧
    (h158GateStrippedNumerator n k).coeff 0 ≠ 0 ∧
    padicValRat (55*n+1) ((h158GateStrippedNumerator n k).coeff 0) = 0 := by
  have hh : k ≤ 105*n+1 := by omega
  exact ⟨by simpa [h158GateMultiplicity, hhi] using
    h158Gate_shifted_numerator_factorization n k hlo hh,
    h158GateStrippedNumerator_zero_unit n k hp hlo hh⟩

theorem h158Gate_simple_factorization (n k : ℕ) (hp : (55*n+1).Prime)
    (hlo : 104*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    taylor (-(k : ℚ)) (h158Numerator n) =
      (X-C ((55*n+1 : ℕ) : ℚ))^3 * h158GateStrippedNumerator n k ∧
    (h158GateStrippedNumerator n k).coeff 0 ≠ 0 ∧
    padicValRat (55*n+1) ((h158GateStrippedNumerator n k).coeff 0) = 0 := by
  have hh : 103*n+2 ≤ k := by omega
  have hnot : ¬ k ≤ 104*n+1 := by omega
  exact ⟨by simpa [h158GateMultiplicity, hnot] using
    h158Gate_shifted_numerator_factorization n k hh hhi,
    h158GateStrippedNumerator_zero_unit n k hp hh hhi⟩


end OddZetaMixed
