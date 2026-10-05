import OddZetaMixed.H158Residues
import OddZetaMixed.H158Reflection

/-!
# Parity of the actual h158 principal coefficients

Reflection preserves the original denominator's poles and multiplicities.
The cleared partial-fraction identity and its uniqueness then determine the
parity of the actual coefficients, including those at the central pole.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

def h158ReflectedPole (n k : ℕ) : ℕ := 158 * n + 2 - k

private theorem interval_list_count (a d k : ℕ) :
    ((List.range (d + 1)).map (fun j => a + j)).count k =
      if a ≤ k ∧ k ≤ a + d then 1 else 0 := by
  have hmem : k ∈ (List.range (d + 1)).map (fun j => a + j) ↔
      a ≤ k ∧ k ≤ a + d := by
    simp only [List.mem_map, List.mem_range]
    constructor
    · rintro ⟨j, hj, rfl⟩
      omega
    · rintro ⟨hk, hd⟩
      exact ⟨k - a, by omega, by omega⟩
  split_ifs with h
  · apply List.count_eq_one_of_mem
    · exact (List.nodup_map_iff (fun x y h => Nat.add_left_cancel h)).mpr
        List.nodup_range
    · exact hmem.mpr h
  · exact List.count_eq_zero_of_not_mem (fun hk => h (hmem.mp hk))

/-- Symmetry of every original multiplicity, not just the reduced poles. -/
theorem h158_pole_order_reflection (n k : ℕ) :
    h158PoleOrder n (h158ReflectedPole n k) = h158PoleOrder n k := by
  unfold h158PoleOrder h158PoleList
  rw [list_count_flatMap, list_count_flatMap]
  congr 1
  apply List.map_congr_left
  intro b hb
  have hb : b < 16 := List.mem_range.mp hb
  rw [interval_list_count, interval_list_count]
  have hsub : 52 - 2 * b + 2 * b = 52 := by omega
  have hend : 2 * ((53 + b) * n + 1) + (52 - 2 * b) * n = 158 * n + 2 := by
    nlinarith
  have hstart : 0 < (53 + b) * n + 1 := by omega
  have hiff : ((53 + b) * n + 1 ≤ h158ReflectedPole n k ∧
      h158ReflectedPole n k ≤ (53 + b) * n + 1 + (52 - 2 * b) * n) ↔
      ((53 + b) * n + 1 ≤ k ∧ k ≤ (53 + b) * n + 1 + (52 - 2 * b) * n) := by
    unfold h158ReflectedPole
    omega
  simp only [hiff]

theorem h158_pole_mem_reflection (n k : ℕ) :
    h158ReflectedPole n k ∈ h158PoleSet n ↔ k ∈ h158PoleSet n := by
  have hmem (a : ℕ) : a ∈ h158PoleSet n ↔ 0 < h158PoleOrder n a := by
    simp only [h158PoleSet, h158PoleOrder, List.mem_toFinset, List.count_pos_iff]
  rw [hmem, hmem, h158_pole_order_reflection]

theorem h158_pole_reflection_involutive (n k : ℕ) (hk : k ∈ h158PoleSet n) :
    h158ReflectedPole n (h158ReflectedPole n k) = k := by
  have hb := h158_pole_address_bounds n k hk
  unfold h158ReflectedPole
  omega

theorem h158_sum_reflection {M : Type*} [AddCommMonoid M] (n : ℕ) (f : ℕ → M) :
    (∑ k ∈ h158PoleSet n, f (h158ReflectedPole n k)) =
      ∑ k ∈ h158PoleSet n, f k := by
  apply Finset.sum_bij (fun k _ => h158ReflectedPole n k)
  · intro k hk
    exact (h158_pole_mem_reflection n k).mpr hk
  · intro k hk l hl h
    have := congrArg (h158ReflectedPole n) h
    simpa only [h158_pole_reflection_involutive n k hk,
      h158_pole_reflection_involutive n l hl] using this
  · intro k hk
    exact ⟨h158ReflectedPole n k, (h158_pole_mem_reflection n k).mpr hk,
      h158_pole_reflection_involutive n k hk⟩
  · intros
    rfl

theorem h158_pole_factor_reflection (n k : ℕ) (hk : k ∈ h158PoleSet n) :
    (X + C (k : ℚ)).comp (-X - C (158 * (n : ℚ) + 2)) =
      -(X + C (h158ReflectedPole n k : ℚ)) := by
  have hb := h158_pole_address_bounds n k hk
  have hle : k ≤ 158 * n + 2 := by omega
  simp only [h158ReflectedPole, Nat.cast_sub hle, Nat.cast_add, Nat.cast_mul,
    Nat.cast_ofNat, add_comp, X_comp, C_comp, map_sub, map_add, map_mul, map_ofNat]
  ring

theorem h158PoleComplement_reflection (n k l : ℕ) (hk : k ∈ h158PoleSet n)
    (hl : l < h158PoleOrder n k) :
    (h158PoleComplement n k l).comp (-X - C (158 * (n : ℚ) + 2)) =
      (-1 : ℚ[X]) ^ (l + 1) * h158PoleComplement n (h158ReflectedPole n k) l := by
  have hr := (h158_pole_mem_reflection n k).mpr hk
  have hlr : l < h158PoleOrder n (h158ReflectedPole n k) := by
    rwa [h158_pole_order_reflection]
  have h := congrArg (fun p : ℚ[X] => p.comp (-X - C (158 * (n : ℚ) + 2)))
    (h158PoleComplement_mul n k l hk hl)
  rw [mul_comp, pow_comp, h158_pole_factor_reflection n k hk,
    h158Denominator_reflection, ← h158PoleComplement_mul n _ l hr hlr] at h
  have hs : (-1 : ℚ[X]) ^ (l + 1) * (-1 : ℚ[X]) ^ (l + 1) = 1 := by
    rw [← mul_pow]
    simp
  apply mul_left_cancel₀ ((monic_X_add_C (h158ReflectedPole n k : ℚ)).pow (l+1)).ne_zero
  rw [neg_pow] at h
  have h' := congrArg (fun p : ℚ[X] => (-1) ^ (l + 1) * p) h
  calc
    _ = ((-1 : ℚ[X]) ^ (l + 1) * (-1 : ℚ[X]) ^ (l + 1)) *
        ((X + C (h158ReflectedPole n k : ℚ)) ^ (l + 1) *
          (h158PoleComplement n k l).comp (-X - C (158 * (n : ℚ) + 2))) := by
      rw [hs, one_mul]
    _ = _ := by linear_combination h'

/-- Uniqueness applied to the reflected, actual partial fractions. The index
`l` denotes pole order `l+1`, so its reflection sign is `(-1)^l`. -/
theorem h158_principal_coefficients_reflection (n : ℕ) (i j : Fin (2*n))
    (k : ℕ) (hk : k ∈ h158PoleSet n) (l : Fin (h158PoleOrder n k)) :
    h158PrincipalCoefficients n i j k l = (-1 : ℚ) ^ l.val *
      h158PrincipalCoefficients n i j (h158ReflectedPole n k)
        (l.cast (h158_pole_order_reflection n k).symm) := by
  let b : (a : ℕ) → Fin (h158PoleOrder n a) → ℚ := fun a t =>
    (-1 : ℚ) ^ t.val * h158PrincipalCoefficients n i j (h158ReflectedPole n a)
      (t.cast (h158_pole_order_reflection n a).symm)
  let F := C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j
  let phi : ℚ[X] := -X - C (158 * (n : ℚ) + 2)
  have hneg : F = ∑ a ∈ h158PoleSet n, ∑ t,
      -(C (h158PrincipalCoefficients n i j a t) *
        (h158PoleComplement n a t.val).comp phi) := by
    have h := congrArg (fun p : ℚ[X] => -(p.comp phi))
      (h158_cleared_partial_fractions n i j)
    simpa only [F, phi, Polynomial.sum_comp, mul_comp, C_comp,
      h158Numerator_reflection, centeredMultiplier_reflection,
      mul_neg, neg_mul, neg_neg, Finset.sum_neg_distrib] using h
  have hnum : F = ∑ a ∈ h158PoleSet n, ∑ t,
      C (b a t) * h158PoleComplement n a t.val := by
    calc
      F = ∑ a ∈ h158PoleSet n, ∑ t,
          -(C (h158PrincipalCoefficients n i j a t) *
            (h158PoleComplement n a t.val).comp phi) := hneg
      _ = ∑ a ∈ h158PoleSet n, ∑ t,
          -(C (h158PrincipalCoefficients n i j (h158ReflectedPole n a) t) *
            (h158PoleComplement n (h158ReflectedPole n a) t.val).comp phi) :=
        (h158_sum_reflection n (fun a => ∑ t,
          -(C (h158PrincipalCoefficients n i j a t) *
            (h158PoleComplement n a t.val).comp phi))).symm
      _ = _ := by
        apply Finset.sum_congr rfl
        intro a ha
        apply Fintype.sum_equiv (finCongr (h158_pole_order_reflection n a))
        intro t
        have hr := (h158_pole_mem_reflection n a).mpr ha
        rw [show phi = -X - C (158 * (n : ℚ) + 2) from rfl,
          h158PoleComplement_reflection n _ t.val hr t.isLt,
          h158_pole_reflection_involutive n a ha]
        simp only [b, finCongr_apply, Fin.cast_cast, Fin.cast_refl,
          id_eq, Fin.val_cast, map_mul, map_pow, map_neg, map_one, pow_succ]
        ring
  have hclear (a : (k : ℕ) → Fin (h158PoleOrder n k) → ℚ) :
      algebraMap ℚ[X] (RatFunc ℚ) (h158Denominator n) *
        (∑ k ∈ h158PoleSet n, ∑ t, h158PrincipalTerm k t.val (a k t)) =
      algebraMap ℚ[X] (RatFunc ℚ) (∑ k ∈ h158PoleSet n, ∑ t,
        C (a k t) * h158PoleComplement n k t.val) := by
    simp only [Finset.mul_sum, map_sum]
    apply Finset.sum_congr rfl
    intro k hk
    apply Finset.sum_congr rfl
    intro t ht
    exact h158PrincipalTerm_clear n k t.val hk t.isLt _
  have hd : algebraMap ℚ[X] (RatFunc ℚ) (h158Denominator n) ≠ 0 := by
    simpa only [map_zero] using (IsFractionRing.injective ℚ[X] (RatFunc ℚ)).ne
      (h158Denominator_monic n).ne_zero
  have heq : (∑ k ∈ h158PoleSet n, ∑ t,
      h158PrincipalTerm k t.val (h158PrincipalCoefficients n i j k t)) =
      ∑ k ∈ h158PoleSet n, ∑ t, h158PrincipalTerm k t.val (b k t) := by
    apply mul_left_cancel₀ hd
    rw [hclear, hclear, ← h158_cleared_partial_fractions n i j, ← hnum]
  exact congrFun (h158_principal_coefficients_unique n
    (h158PrincipalCoefficients n i j) b heq k hk) l

/-- The coefficient sum at the actual pole order `m`; order zero is empty. -/
def h158AggregatePrincipalCoefficient (n : ℕ) (i j : Fin (2*n)) (m : ℕ) : ℚ :=
  ∑ k ∈ h158PoleSet n, ∑ l,
    if l.val + 1 = m then h158PrincipalCoefficients n i j k l else 0

/-- Every even pole order cancels in the actual matrix-entry partial fractions. -/
theorem h158_even_pole_sum_zero (n : ℕ) (i j : Fin (2*n)) (m : ℕ) (hm : Even m) :
    (∑ k ∈ h158PoleSet n, ∑ l,
      if l.val + 1 = m then h158PrincipalCoefficients n i j k l else 0) = 0 := by
  let A := h158AggregatePrincipalCoefficient n i j m
  have hsign (v : ℕ) (hv : v + 1 = m) : (-1 : ℚ) ^ v = -1 := by
    have hvodd : Odd v := by
      obtain ⟨a, ha⟩ := hm
      exact ⟨a - 1, by omega⟩
    exact hvodd.neg_one_pow
  have hA : A = -A := by
    calc
      A = ∑ k ∈ h158PoleSet n, ∑ l,
          if l.val + 1 = m then
            h158PrincipalCoefficients n i j (h158ReflectedPole n k) l else 0 :=
        (h158_sum_reflection n (fun k => ∑ l : Fin (h158PoleOrder n k),
          if l.val + 1 = m then h158PrincipalCoefficients n i j k l else 0)).symm
      _ = ∑ k ∈ h158PoleSet n, ∑ l,
          -(if l.val + 1 = m then h158PrincipalCoefficients n i j k l else 0) := by
        apply Finset.sum_congr rfl
        intro k hk
        apply Fintype.sum_equiv (finCongr (h158_pole_order_reflection n k))
        intro l
        have hc := h158_principal_coefficients_reflection n i j k hk
          (l.cast (h158_pole_order_reflection n k))
        simp only [Fin.cast_cast, Fin.cast_refl, id_eq, Fin.val_cast] at hc
        simp only [finCongr_apply, Fin.val_cast]
        by_cases hl : l.val + 1 = m
        · rw [hsign l.val hl, neg_one_mul] at hc
          simp only [hl, ite_true]
          linarith
        · simp only [hl, ite_false, neg_zero]
      _ = -A := by
        simp only [Finset.sum_neg_distrib, A, h158AggregatePrincipalCoefficient]
  change A = 0
  linarith

theorem h158_aggregate_even_zero (n : ℕ) (i j : Fin (2*n)) (m : ℕ) (hm : Even m) :
    h158AggregatePrincipalCoefficient n i j m = 0 :=
  h158_even_pole_sum_zero n i j m hm

theorem h158_aggregate_simple_zero (n : ℕ) (i j : Fin (2*n)) :
    h158AggregatePrincipalCoefficient n i j 1 = 0 := by
  simpa [h158AggregatePrincipalCoefficient] using h158_residue_sum_zero n i j

theorem h158_aggregate_above_sixteen_zero (n : ℕ) (i j : Fin (2*n))
    (m : ℕ) (hm : 16 < m) : h158AggregatePrincipalCoefficient n i j m = 0 := by
  apply Finset.sum_eq_zero
  intro k hk
  apply Finset.sum_eq_zero
  intro l hl
  have horder := h158_pole_order_le n k
  have hl := l.isLt
  rw [ite_eq_right (by omega)]

/-- Only orders 3,5,...,15 can contribute after summing over the actual poles.
After four derivatives these are exactly the odd zeta weights 7,9,...,19. -/
theorem h158_aggregate_support (n : ℕ) (i j : Fin (2*n)) (m : ℕ)
    (hm : m ∉ ({3, 5, 7, 9, 11, 13, 15} : Finset ℕ)) :
    h158AggregatePrincipalCoefficient n i j m = 0 := by
  by_cases h1 : m = 1
  · subst m
    exact h158_aggregate_simple_zero n i j
  by_cases he : Even m
  · exact h158_aggregate_even_zero n i j m he
  apply h158_aggregate_above_sixteen_zero n i j m
  simp only [Finset.mem_insert, Finset.mem_singleton] at hm
  rw [Nat.even_iff] at he
  omega

/-- The exponent-minus-one convention used by `h158OrderCoefficient`:
every odd index has zero aggregate coefficient, with no assumed identities. -/
theorem h158_odd_index_sum_zero (n : ℕ) (i j : Fin (2*n)) (s : ℕ) (hs : Odd s) :
    (∑ k ∈ h158PoleSet n, ∑ l,
      if l.val = s then h158PrincipalCoefficients n i j k l else 0) = 0 := by
  have he : Even (s + 1) := by
    obtain ⟨a, ha⟩ := hs
    exact ⟨a + 1, by omega⟩
  simpa using h158_even_pole_sum_zero n i j (s + 1) he

#print axioms h158_pole_order_reflection
#print axioms h158_principal_coefficients_reflection
#print axioms h158_even_pole_sum_zero
#print axioms h158_aggregate_support
#print axioms h158_odd_index_sum_zero

end OddZetaMixed
