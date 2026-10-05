import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Tactic

/-!
# Exact finite signed-row scaling fee

All floors and the ceiling correction are natural-number divisions, taken before
casting to the rationals. No primality assumption is needed: `p` is positive and odd.
-/

namespace OddZetaMixed

open Finset

private theorem rowScaling_floor_sum_by_levels (n p : ℕ) (hp : 0 < p) :
    ∑ i ∈ range (2 * n), (2 * i) / p =
      ∑ j ∈ range (4 * n / p), (2 * n - (p * (j + 1) + 1) / 2) := by
  have hrow (i : ℕ) (hi : i ∈ range (2 * n)) :
      (∑ j ∈ range (4 * n / p), if j < (2 * i) / p then 1 else 0) = (2 * i) / p := by
    have hq : (2 * i) / p ≤ 4 * n / p :=
      Nat.div_le_div_right (by have := mem_range.mp hi; omega)
    rw [Finset.sum_boole]
    have hfilter : (range (4 * n / p)).filter (fun j => j < (2 * i) / p) =
        range ((2 * i) / p) := by
      ext j
      simp only [mem_filter, mem_range]
      omega
    simp only [hfilter, card_range, Nat.cast_id]
  have hcol (j : ℕ) :
      (∑ i ∈ range (2 * n), if j < (2 * i) / p then 1 else 0) =
        2 * n - (p * (j + 1) + 1) / 2 := by
    have hlevel (i : ℕ) : j < (2 * i) / p ↔ (p * (j + 1) + 1) / 2 ≤ i := by
      rw [Nat.lt_iff_add_one_le, Nat.le_div_iff_mul_le hp, Nat.mul_comm (j + 1) p]
      omega
    rw [Finset.sum_boole]
    have hfilter : (range (2 * n)).filter (fun i => j < (2 * i) / p) =
        Ico ((p * (j + 1) + 1) / 2) (2 * n) := by
      ext i
      simp only [mem_filter, mem_range, mem_Ico, hlevel]
      tauto
    simp only [hfilter, Nat.card_Ico, Nat.cast_id]
  calc
    _ = ∑ i ∈ range (2 * n), ∑ j ∈ range (4 * n / p),
        if j < (2 * i) / p then 1 else 0 :=
      Finset.sum_congr rfl fun i hi => (hrow i hi).symm
    _ = ∑ j ∈ range (4 * n / p), ∑ i ∈ range (2 * n),
        if j < (2 * i) / p then 1 else 0 := Finset.sum_comm
    _ = _ := Finset.sum_congr rfl fun j _ => hcol j

private theorem rowScaling_level_ceiling_le (n p j : ℕ) (hp : 0 < p)
    (hj : j < 4 * n / p) : (p * (j + 1) + 1) / 2 ≤ 2 * n := by
  have hmul : (j + 1) * p ≤ 4 * n := (Nat.le_div_iff_mul_le hp).mp (by omega)
  rw [Nat.mul_comm (j + 1) p] at hmul
  omega

private theorem rowScaling_floor_ceiling_balance (n p : ℕ) (hp : 0 < p) :
    (∑ i ∈ range (2 * n), (2 * i) / p) +
      (∑ j ∈ range (4 * n / p), (p * (j + 1) + 1) / 2) =
        2 * n * (4 * n / p) := by
  rw [rowScaling_floor_sum_by_levels n p hp, ← Finset.sum_add_distrib]
  calc
    _ = ∑ _j ∈ range (4 * n / p), 2 * n := by
      apply Finset.sum_congr rfl
      intro j hj
      exact Nat.sub_add_cancel (rowScaling_level_ceiling_le n p j hp (mem_range.mp hj))
    _ = _ := by simp [Nat.mul_comm]

private theorem rowScaling_odd_ceiling_sum (p M : ℕ) (hodd : Odd p) :
    4 * (∑ j ∈ range M, (p * (j + 1) + 1) / 2) =
      p * M * (M + 1) + 2 * ((M + 1) / 2) := by
  obtain ⟨q, rfl⟩ := hodd
  induction M with
  | zero => simp
  | succ M ih =>
    rw [sum_range_succ]
    have hterm : ((2 * q + 1) * (M + 1) + 1) / 2 =
        (M + 2) / 2 + q * (M + 1) := by
      rw [show (2 * q + 1) * (M + 1) + 1 = (M + 2) + 2 * (q * (M + 1)) by ring]
      exact Nat.add_mul_div_left _ _ (by decide : 0 < 2)
    rw [hterm]
    have hhalf : (M + 2) / 2 + (M + 1) / 2 = M + 1 := by omega
    rw [show M + 1 + 1 = M + 2 by omega]
    nlinarith

/-- The exact signed-row scaling fee. Here `M = floor(4n/p)`, and
`(M + 1) / 2` is the natural-number expression for `ceil(M/2)`. -/
theorem rowScaling_fee_exact (n p : ℕ) (hp : 0 < p) (hodd : Odd p) :
    let M := 4 * n / p
    2 * (∑ i ∈ range (2 * n), (((2 * i) / p : ℕ) : ℚ)) =
      4 * (n : ℚ) * M - (p : ℚ) * M * (M + 1) / 2 - (((M + 1) / 2 : ℕ) : ℚ) := by
  dsimp only
  have hbalance := rowScaling_floor_ceiling_balance n p hp
  have hceil := rowScaling_odd_ceiling_sum p (4 * n / p) hodd
  have hbalanceQ := congrArg (fun k : ℕ => (k : ℚ)) hbalance
  have hceilQ := congrArg (fun k : ℕ => (k : ℚ)) hceil
  push_cast at hbalanceQ hceilQ
  nlinarith

/-- Dropping the nonnegative ceiling correction gives the normalized upper fee.
The quotient `p / n` on the right is rational, while `M` still uses natural division. -/
theorem rowScaling_fee_upper (n p : ℕ) (hn : 0 < n) (hp : 0 < p) (hodd : Odd p) :
    let M := 4 * n / p
    2 * (∑ i ∈ range (2 * n), (((2 * i) / p : ℕ) : ℚ)) ≤
      (n : ℚ) * (4 * (M : ℚ) - ((p : ℚ) / n) * M * (M + 1) / 2) := by
  dsimp only
  rw [rowScaling_fee_exact n p hp hodd]
  have hnQ : (n : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hn
  set M := 4 * n / p
  calc
    _ ≤ 4 * (n : ℚ) * M - (p : ℚ) * M * (M + 1) / 2 :=
      sub_le_self _ (Nat.cast_nonneg _)
    _ = _ := by field_simp

#print axioms rowScaling_fee_exact
#print axioms rowScaling_fee_upper

end OddZetaMixed
