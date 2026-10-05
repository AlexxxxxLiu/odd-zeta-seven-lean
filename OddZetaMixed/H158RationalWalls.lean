import OddZetaMixed.H158GlobalMajorant

/-!
# Rational cell walls cannot persist among generic large primes

This removes only a FIXED finite set of rational p/n values. It does not
discard the residue-direction strip endpoints, which require a local fee.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset Filter

theorem prime_ratio_dvd_numerator {p n : ℕ} (hp : p.Prime) (hn : 0 < n)
    (hpn : ¬p ∣ n) (q : ℚ) (hq : (p : ℚ)/n = q) : p ∣ q.num.natAbs := by
  have hnQ : (0 : ℚ) < n := by exact_mod_cast hn
  have hpQ : (0 : ℚ) < p := by exact_mod_cast hp.pos
  have hqp : 0 < q := by rw [← hq]; exact div_pos hpQ hnQ
  have hnum : 0 < q.num := Rat.num_pos.mpr hqp
  have hnumQ : (q.num.natAbs : ℚ) = (q.num : ℚ) := by
    have he : (q.num.natAbs : ℤ) = q.num := by
      rw [Int.natCast_natAbs, abs_of_nonneg hnum.le]
    simpa only [Int.cast_natCast] using congrArg (fun z : ℤ => (z : ℚ)) he
  have he : (p : ℚ)*(q.den : ℚ) = (n : ℚ)*(q.num.natAbs : ℚ) := by
    rw [hnumQ]
    have hd : (q.den : ℚ) ≠ 0 := by exact_mod_cast q.den_ne_zero
    have hq' : (p : ℚ)/n = (q.num : ℚ)/(q.den : ℚ) := by rwa [q.num_div_den]
    field_simp at hq'
    nlinarith
  have heN : p*q.den = n*q.num.natAbs := by exact_mod_cast he
  have hd : p ∣ n*q.num.natAbs := by rw [← heN]; exact dvd_mul_right _ _
  exact (hp.dvd_mul.mp hd).resolve_left hpn

theorem prime_ratio_ne_of_numerator_lt {p n : ℕ} (hp : p.Prime) (hn : 0 < n)
    (hpn : ¬p ∣ n) (q : ℚ) (hq : q.num.natAbs < p) : (p : ℚ)/n ≠ q := by
  intro he
  have hqp : 0 < q := by
    rw [← he]
    exact div_pos (by exact_mod_cast hp.pos) (by exact_mod_cast hn)
  have hnum : q.num.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr (Rat.num_pos.mpr hqp).ne'
  have hle := Nat.le_of_dvd (Nat.pos_of_ne_zero hnum) (prime_ratio_dvd_numerator hp hn hpn q he)
  omega

theorem h158_eventually_avoid_rational_walls (walls : Finset ℚ) :
    ∀ᶠ n : ℕ in atTop, ∀ p, p.Prime → 158*n+2 < p^2 → ¬p ∣ n →
      ∀ q ∈ walls, (p : ℚ)/n ≠ q := by
  let K := walls.sup (fun q => q.num.natAbs)
  filter_upwards [eventually_ge_atTop (K^2), eventually_gt_atTop (0 : ℕ)] with n hn hn0
  intro p hp hs hpn q hq
  have hqK : q.num.natAbs ≤ K := le_sup (f := fun q : ℚ => q.num.natAbs) hq
  have hKp : K < p := by
    by_contra h
    have hpK : p ≤ K := by omega
    have hpK2 : p^2 ≤ K^2 := Nat.pow_le_pow_left hpK 2
    omega
  exact prime_ratio_ne_of_numerator_lt hp hn0 hpn q (hqK.trans_lt hKp)

theorem h158_eventually_open_cell {ι : Type*} (cells : Finset ι)
    (left right : ι → ℚ) :
    ∀ᶠ n : ℕ in atTop, ∀ p, p.Prime → 158*n+2 < p^2 → ¬p ∣ n →
      ∀ i ∈ cells, left i ≤ (p : ℚ)/n → (p : ℚ)/n ≤ right i →
        left i < (p : ℚ)/n ∧ (p : ℚ)/n < right i := by
  classical
  have ht := h158_eventually_avoid_rational_walls (cells.image left ∪ cells.image right)
  filter_upwards [ht] with n hn
  intro p hp hs hpn i hi hl hr
  have hleft := hn p hp hs hpn (left i)
    (mem_union_left _ (mem_image_of_mem _ hi))
  have hright := hn p hp hs hpn (right i)
    (mem_union_right _ (mem_image_of_mem _ hi))
  exact ⟨lt_of_le_of_ne hl hleft.symm, lt_of_le_of_ne hr hright⟩

#print axioms h158_eventually_avoid_rational_walls
#print axioms h158_eventually_open_cell

end OddZetaMixed
