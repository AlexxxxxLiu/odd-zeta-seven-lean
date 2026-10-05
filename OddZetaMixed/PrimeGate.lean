import Mathlib.NumberTheory.PrimesCongruentOne

/-!
# The prime gate

For each fixed positive natural number `Q`, there are infinitely many indices `n`
such that `55 * n + 1` is prime and does not divide `Q`. The only prime-infinitude
input is Mathlib's elementary cyclotomic theorem `Nat.exists_prime_gt_modEq_one`.
-/

namespace OddZetaMixed

/-- The prime gate has a witness above every prescribed index bound. -/
theorem exists_prime_gate_above (Q N : ℕ) (hQ : 0 < Q) :
    ∃ n : ℕ, N < n ∧ Nat.Prime (55 * n + 1) ∧ ¬ (55 * n + 1) ∣ Q := by
  obtain ⟨p, hp, hbound, hmod⟩ :=
    Nat.exists_prime_gt_modEq_one (max (55 * N + 1) Q) (by decide : 55 ≠ 0)
  have hNp : 55 * N + 1 < p := lt_of_le_of_lt (le_max_left _ _) hbound
  have hQp : Q < p := lt_of_le_of_lt (le_max_right _ _) hbound
  have hrem : p % 55 = 1 := by
    simpa [Nat.ModEq] using hmod
  have heq : 55 * (p / 55) + 1 = p := by
    simpa [hrem] using Nat.div_add_mod p 55
  refine ⟨p / 55, by omega, ?_, ?_⟩
  · simpa only [heq] using hp
  · rw [heq]
    intro hdvd
    exact (not_le_of_gt hQp) (Nat.le_of_dvd hQ hdvd)

/-- For any fixed positive `Q`, infinitely many indices pass the prime gate. -/
theorem infinite_prime_gate (Q : ℕ) (hQ : 0 < Q) :
    Set.Infinite {n : ℕ | Nat.Prime (55 * n + 1) ∧ ¬ (55 * n + 1) ∣ Q} := by
  apply Set.infinite_iff_exists_gt.mpr
  intro N
  obtain ⟨n, hn, hp, hQn⟩ := exists_prime_gate_above Q N hQ
  exact ⟨n, ⟨hp, hQn⟩, hn⟩

#print axioms exists_prime_gate_above
#print axioms infinite_prime_gate

end OddZetaMixed
