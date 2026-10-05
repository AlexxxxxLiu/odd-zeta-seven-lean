import OddZetaMixed.LocalJetValuation
import OddZetaMixed.H158GlobalArithmeticSeeds
import Mathlib.Data.Int.CardIntervalMod

/-!
# Exact floor formulas for the original residue counts

Both sides count the original unreduced factors, with their multiplicities.
The formulas are valid at every positive modulus, without a generic-prime
assumption or endpoint exclusions. They provide the integer inputs to a
future finite-cell budget proof, not that budget's asymptotic constant.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed.LocalJetValuation
open Finset

def residueIntervalFloor (p : ℕ) (A : ℤ) (m : ℕ) (c : ℤ) : ℤ :=
  ⌊((A : ℚ)+(m : ℚ)-c)/p⌋ - ⌊((A : ℚ)-c)/p⌋

theorem residueIntervalFloor_eq_ediv (p : ℕ) (A : ℤ) (m : ℕ) (c : ℤ) :
    residueIntervalFloor p A m c =
      (A+(m : ℤ)-c)/(p : ℤ) - (A-c)/(p : ℤ) := by
  unfold residueIntervalFloor
  have h1 : (A : ℚ)+(m : ℚ)-c = ((A+(m : ℤ)-c : ℤ) : ℚ) := by push_cast; rfl
  have h2 : (A : ℚ)-c = ((A-c : ℤ) : ℚ) := by push_cast; rfl
  rw [h1, h2, Rat.floor_intCast_div_natCast, Rat.floor_intCast_div_natCast]

theorem residueIntervalFloor_lower (p : ℕ) (A : ℤ) (m : ℕ) (c : ℤ) :
    (m/p : ℕ) ≤ residueIntervalFloor p A m c := by
  have h := Int.le_floor_add (((A : ℚ)-c)/p) ((m : ℚ)/p)
  have he : ((A : ℚ)-c)/p+(m : ℚ)/p = ((A : ℚ)+(m : ℚ)-c)/p := by ring
  rw [he, Rat.floor_natCast_div_natCast, Int.ofNat_ediv_ofNat] at h
  unfold residueIntervalFloor
  omega

/-- A closed interval of length m has at most floor(m/p)+1 points in one
residue class, including every coincident endpoint. -/
theorem residueIntervalFloor_closed_upper (p : ℕ) (hp : 0 < p)
    (A : ℤ) (m : ℕ) (c : ℤ) :
    residueIntervalFloor p A (m+1) c ≤ (m/p : ℕ)+1 := by
  rw [residueIntervalFloor_eq_ediv]
  have hpZ : (0 : ℤ) < p := by exact_mod_cast hp
  have hd0 := Int.emod_nonneg (A-c) (ne_of_gt hpZ)
  have hd1 := Int.emod_lt_of_pos (A-c) hpZ
  have hm0 := Int.emod_nonneg (m : ℤ) (ne_of_gt hpZ)
  have hm1 := Int.emod_lt_of_pos (m : ℤ) hpZ
  have hb0 := Int.emod_nonneg (A+((m+1 : ℕ) : ℤ)-c) (ne_of_gt hpZ)
  have he0 := Int.emod_add_ediv_mul (A-c) (p : ℤ)
  have he1 := Int.emod_add_ediv_mul (m : ℤ) (p : ℤ)
  have he2 := Int.emod_add_ediv_mul (A+((m+1 : ℕ) : ℤ)-c) (p : ℤ)
  rw [Int.ofNat_ediv_ofNat] at he1
  by_contra h
  have hq : (m/p : ℕ)+2 ≤
      (A+((m+1 : ℕ) : ℤ)-c)/(p : ℤ) - (A-c)/(p : ℤ) := by omega
  have hpq := mul_le_mul_of_nonneg_right hq hpZ.le
  have hd1' : (A-c) % (p : ℤ) ≤ (p : ℤ)-1 := by omega
  have hm1' : (m : ℤ) % (p : ℤ) ≤ (p : ℤ)-1 := by omega
  push_cast at *
  nlinarith

theorem residue_interval_sum_floor (p : ℕ) (hp : 0 < p)
    (A : ℤ) (m : ℕ) (c : ℤ) :
    (∑ j ∈ range m, if (p : ℤ) ∣ A+1+(j : ℤ)-c then (1 : ℤ) else 0) =
      residueIntervalFloor p A m c := by
  have hsum :
      (∑ j ∈ range m, if (p : ℤ) ∣ A+1+(j : ℤ)-c then (1 : ℤ) else 0) =
      ∑ x ∈ Ioc A (A+(m : ℤ)), if (p : ℤ) ∣ x-c then (1 : ℤ) else 0 := by
    apply sum_nbij' (fun j : ℕ => A+1+(j : ℤ))
      (fun x : ℤ => (x-A-1).toNat)
    · intro j hj
      simp only [mem_range] at hj
      simp only [mem_Ioc]
      omega
    · intro x hx
      simp only [mem_Ioc] at hx
      simp only [mem_range]
      omega
    · intro j hj
      omega
    · intro x hx
      simp only [mem_Ioc] at hx
      omega
    · intro j hj
      rfl
  rw [hsum]
  have he (x : ℤ) : ((p : ℤ) ∣ x-c) ↔ x ≡ c [ZMOD (p : ℤ)] := by
    rw [Int.modEq_comm, Int.modEq_iff_dvd]
  simp_rw [he]
  rw [← sum_filter]
  simp only [sum_const, nsmul_eq_mul, mul_one]
  rw [Int.Ioc_filter_modEq_card A (A+(m : ℤ)) (by exact_mod_cast hp) c]
  have hf : ⌊((A : ℚ)-c)/p⌋ ≤ ⌊((A : ℚ)+(m : ℚ)-c)/p⌋ := by
    apply Int.floor_mono
    apply div_le_div_of_nonneg_right _ (by positivity)
    linarith [show (0 : ℚ) ≤ m by positivity]
  simp only [Int.cast_add, Int.cast_natCast, max_eq_left (sub_nonneg.mpr hf),
    residueIntervalFloor]

theorem h158_numerator_count_floor (p n c : ℕ) (hp : 0 < p) :
    h158NumeratorCount p n c =
      (if (p : ℤ) ∣ 79*(n : ℤ)+1-c then 1 else 0) +
      ∑ a ∈ range 5,
        (residueIntervalFloor p 0 ((48+a)*n) c +
         residueIntervalFloor p (158*(n : ℤ)+1-(((48+a)*n : ℕ) : ℤ))
           ((48+a)*n) c) := by
  unfold h158NumeratorCount
  congr 1
  apply sum_congr rfl
  intro a ha
  congr 1
  · simpa using residue_interval_sum_floor p hp 0 ((48+a)*n) c
  · convert residue_interval_sum_floor p hp
      (158*(n : ℤ)+1-(((48+a)*n : ℕ) : ℤ)) ((48+a)*n) c using 1
    apply sum_congr rfl
    intro j hj
    congr 2
    ring

private theorem list_flatMap_map_sum (l : List ℕ) (f : ℕ → List ℕ) (g : ℕ → ℤ) :
    ((l.flatMap f).map g).sum = (l.map fun b => ((f b).map g).sum).sum := by
  induction l with
  | nil => simp
  | cons b l ih => simp [ih]

private theorem range_map_sum_eq (m : ℕ) (f : ℕ → ℤ) :
    ((List.range m).map f).sum = ∑ j ∈ range m, f j := by
  induction m with
  | zero => simp
  | succ m ih => simp [List.range_succ, sum_range_succ, ih]

/-- Each original denominator interval contributes separately. Shared
addresses are counted with their full original multiplicity. -/
theorem h158_denominator_count_intervals (p n c : ℕ) :
    h158DenominatorCount p n c = ∑ b ∈ range 16,
      ∑ j ∈ range ((52-2*b)*n+1),
        if (p : ℤ) ∣ ((53+b)*n : ℕ)+1+(j : ℤ)-c then (1 : ℤ) else 0 := by
  have h := (Finset.sum_list_map_count (h158PoleList n)
    (fun k : ℕ => if (p : ℤ) ∣ (k : ℤ)-c then (1 : ℤ) else 0)).symm
  simp only [nsmul_eq_mul] at h
  change h158DenominatorCount p n c = _ at h
  rw [h]
  simp only [h158PoleList, list_flatMap_map_sum, List.map_map, Function.comp_def,
    range_map_sum_eq]
  apply sum_congr rfl
  intro b hb
  apply sum_congr rfl
  intro j hj
  norm_cast

theorem h158_denominator_count_floor (p n c : ℕ) (hp : 0 < p) :
    h158DenominatorCount p n c = ∑ b ∈ range 16,
      residueIntervalFloor p (((53+b)*n : ℕ) : ℤ) ((52-2*b)*n+1) c := by
  rw [h158_denominator_count_intervals]
  apply sum_congr rfl
  intro b hb
  exact residue_interval_sum_floor p hp (((53+b)*n : ℕ) : ℤ) ((52-2*b)*n+1) c

/-- Uniform finite endpoint-safe bound for all sixteen denominator blocks. -/
theorem h158_denominator_count_upper (p n c : ℕ) (hp : 0 < p) :
    h158DenominatorCount p n c ≤
      (∑ b ∈ range 16, ((((52-2*b)*n)/p : ℕ) : ℤ))+16 := by
  rw [h158_denominator_count_floor p n c hp]
  calc
    _ ≤ ∑ b ∈ range 16, (((((52-2*b)*n)/p : ℕ) : ℤ)+1) := by
      apply sum_le_sum
      intro b hb
      exact residueIntervalFloor_closed_upper p hp _ _ _
    _ = _ := by simp [sum_add_distrib]

theorem h158_numerator_count_lower (p n c : ℕ) (hp : 0 < p) :
    2*(∑ a ∈ range 5, ((((48+a)*n)/p : ℕ) : ℤ)) ≤ h158NumeratorCount p n c := by
  rw [h158_numerator_count_floor p n c hp]
  have h := sum_le_sum (s := range 5) (fun a _ =>
    add_le_add (residueIntervalFloor_lower p 0 ((48+a)*n) c)
      (residueIntervalFloor_lower p
        (158*(n : ℤ)+1-(((48+a)*n : ℕ) : ℤ)) ((48+a)*n) c))
  rw [sum_add_distrib] at h
  split_ifs <;> linarith

/-- The complete factorial normalization and original root multiplicities
give nu+z-o >= -16, including endpoints and primes dividing n. -/
theorem h158_normalized_class_count_lower (p n c : ℕ) (hn : 0 < n)
    (hp : p.Prime) (hsq : 158*n+2 < p^2) :
    -16 ≤ padicValRat p (h158Normalization n)+h158NumeratorCount p n c-
      h158DenominatorCount p n c := by
  have hd := h158_denominator_count_upper p n c hp.pos
  have hz := h158_numerator_count_lower p n c hp.pos
  rw [h158Normalization_valuation_main_prime n p hn hp hsq,
    h158NormalizationFloor]
  linarith

end OddZetaMixed.LocalJetValuation
