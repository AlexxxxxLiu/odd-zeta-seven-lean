import OddZetaMixed.H158GlobalArithmeticSeeds

/-!
# Finite support upper bound for the actual signed arithmetic cost

The omitted primes have nonpositive COST, not necessarily zero valuation.
Negative contributions at primes below the cutoff remain in the sum.
This is an exact all-index bound, not an asymptotic budget certificate.
-/

noncomputable section

namespace OddZetaMixed

open Finset

theorem padicValRat_eq_zero_outside_prime_support (c : ℚ) (hc : c ≠ 0)
    (p : ℕ) (hp : p.Prime)
    (hnot : p ∉ (c.num.natAbs * c.den).primeFactors) : padicValRat p c = 0 := by
  have hn : c.num.natAbs ≠ 0 := by simpa using Rat.num_ne_zero.mpr hc
  have hd : c.den ≠ 0 := c.den_ne_zero
  rw [Nat.primeFactors_mul hn hd, mem_union, not_or] at hnot
  have hnv : c.num.natAbs.factorization p = 0 := by
    exact Finsupp.notMem_support_iff.mp (by simpa using hnot.1)
  have hdv : c.den.factorization p = 0 := by
    exact Finsupp.notMem_support_iff.mp (by simpa using hnot.2)
  rw [Nat.factorization_def _ hp] at hnv hdv
  simp only [padicValRat_def, padicValInt, hnv, hdv, Int.ofNat_zero, sub_zero]

/-- An upper cutoff preserves every signed cost below it and discards only
nonpositive contributions above it. No denominator growth rate is assumed. -/
theorem neg_log_abs_rat_le_prime_cutoff (c : ℚ) (hc : c ≠ 0) (B : ℕ)
    (hlarge : ∀ p : ℕ, p.Prime → B < p → 0 ≤ padicValRat p c) :
    -Real.log |(c : ℝ)| ≤
      ∑ p ∈ (range (B+1)).filter Nat.Prime, -(padicValRat p c : ℝ) * Real.log p := by
  let s := (c.num.natAbs * c.den).primeFactors
  let t := (range (B+1)).filter Nat.Prime
  let f : ℕ → ℝ := fun p => -(padicValRat p c : ℝ) * Real.log p
  have he : ∑ p ∈ s, f p = ∑ p ∈ s ∪ t, f p := by
    apply Finset.sum_subset Finset.subset_union_left
    intro p hpt hps
    have hp : p.Prime := by
      have ht : p ∈ t := (mem_union.mp hpt).resolve_left hps
      exact (mem_filter.mp ht).2
    simp only [f, padicValRat_eq_zero_outside_prime_support c hc p hp hps,
      Int.cast_zero, neg_zero, zero_mul]
  rw [neg_log_abs_rat_eq_sum_padicValRat c hc]
  change (∑ p ∈ s, f p) ≤ ∑ p ∈ t, f p
  rw [he]
  apply Finset.sum_le_sum_of_subset_of_nonpos Finset.subset_union_right
  intro p hps hpt
  have hsp : p ∈ s := (mem_union.mp hps).resolve_right hpt
  have hp : p.Prime := Nat.prime_of_mem_primeFactors hsp
  have hB : B < p := by
    by_contra h
    apply hpt
    exact mem_filter.mpr ⟨mem_range.mpr (by omega), hp⟩
  have hv : (0 : ℝ) ≤ padicValRat p c := by exact_mod_cast hlarge p hp hB
  exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hv)
    (Real.log_nonneg (by exact_mod_cast hp.one_lt.le))

/-- The actual all-index cost is bounded by the signed prime sum through
57n, including the zero-determinant branch. -/
theorem h158PrimitiveCost_le_prime_cutoff (n : ℕ) :
    h158PrimitiveCost n ≤
      ∑ p ∈ (range (57*n+1)).filter Nat.Prime,
        -(padicValRat p (h158PrimitiveScalar n) : ℝ) * Real.log p := by
  exact neg_log_abs_rat_le_prime_cutoff _ (h158PrimitiveScalar_ne_zero n) _
    (h158PrimitiveScalar_nonneg_of_large_prime n)

/-- The same finite upper bound, explicitly in terms of the supported
coefficient Gauss minimum of the actual formal determinant. -/
theorem h158PrimitiveCost_le_finite_gauss_sum (n : ℕ)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    h158PrimitiveCost n ≤
      ∑ p ∈ (range (57*n+1)).filter Nat.Prime,
        -(rationalPolynomialGaussValuation p (h158SevenMatrix n).det hdet : ℝ) *
          Real.log p := by
  have he : (∑ p ∈ (range (57*n+1)).filter Nat.Prime,
      -(rationalPolynomialGaussValuation p (h158SevenMatrix n).det hdet : ℝ) *
        Real.log p) = ∑ p ∈ (range (57*n+1)).filter Nat.Prime,
      -(padicValRat p (h158PrimitiveScalar n) : ℝ) * Real.log p := by
    apply Finset.sum_congr rfl
    intro p hp
    rw [h158PrimitiveScalar_gauss_valuation n hdet p (mem_filter.mp hp).2]
  rw [he]
  exact h158PrimitiveCost_le_prime_cutoff n

end OddZetaMixed
