import OddZetaMixed.H158Functional
import Mathlib.Analysis.Calculus.ContDiff.Polynomial

/-!
# Protected zeros of the actual h158 derivative functional

The fifth-power numerator factor persists in the real quotient. The remaining
factor is smooth near every protected point because the original denominator
is positive there. The iterated product rule therefore kills every derivative
of order at most four, with both the h158 normalization and the division by
`4! = 24` unchanged.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset
open scoped Topology

/-- Every protected point lies strictly to the right of every pole. -/
theorem h158_protected_in_halfline (n k : ℕ) (hkn : k ≤ 48 * n) :
    -(53 * (n : ℝ) + 1) < -(k : ℝ) := by
  have hkn' : (k : ℝ) ≤ 48 * (n : ℝ) := by exact_mod_cast hkn
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  linarith

/-- Nonvanishing of the actual real denominator at a protected point. -/
theorem h158_denominator_eval_ne_zero_at_protected (n k : ℕ)
    (hkn : k ≤ 48 * n) : aeval (-(k : ℝ)) (h158Denominator n) ≠ 0 :=
  ne_of_gt (h158_denominator_eval_pos n _ (h158_protected_in_halfline n k hkn))

/-- Polynomial quotients with the original h158 denominator are locally smooth. -/
theorem h158_contDiffAt_polynomial_quotient (n : ℕ) (P : ℚ[X])
    (r : ℕ) (x : ℝ) (hx : -(53 * (n : ℝ) + 1) < x) :
    ContDiffAt ℝ r (fun t : ℝ => aeval t P / aeval t (h158Denominator n)) x := by
  exact (P.contDiff_aeval r).contDiffAt.div
    ((h158Denominator n).contDiff_aeval r).contDiffAt
    (ne_of_gt (h158_denominator_eval_pos n x hx))

/-- Smoothness of the actual normalized entry on the summation halfline. -/
theorem h158EntryReal_contDiffAt (n i j r : ℕ) (x : ℝ)
    (hx : -(53 * (n : ℝ) + 1) < x) :
    ContDiffAt ℝ r (h158EntryReal n i j) x :=
  h158_contDiffAt_polynomial_quotient n
    (C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j) r x hx

/-- Exact real factorization, together with smoothness of its quotient factor.
The polynomial `P` includes the original normalization and centered multiplier.
The algebraic identity is global; smoothness is only needed at the protected point. -/
theorem h158EntryReal_protected_factorization (n i j k : ℕ)
    (hk : 1 ≤ k) (hkn : k ≤ 48 * n) :
    ∃ P : ℚ[X],
      h158EntryReal n i j = (fun x : ℝ =>
        (x + (k : ℝ)) ^ 5 * (aeval x P / aeval x (h158Denominator n))) ∧
      ∀ r : ℕ, ContDiffAt ℝ r
        (fun x : ℝ => aeval x P / aeval x (h158Denominator n)) (-(k : ℝ)) := by
  obtain ⟨Q, hQ⟩ := protected_fifth_power_dvd n k hk hkn
  refine ⟨C (h158Normalization n) * Q * centeredMultiplier n i j, ?_, ?_⟩
  · funext x
    simp only [h158EntryReal, hQ, map_mul, map_pow, map_add, aeval_X, aeval_C]
    push_cast
    ring
  · intro r
    exact h158_contDiffAt_polynomial_quotient n _ r _
      (h158_protected_in_halfline n k hkn)

private theorem iteratedDeriv_shifted_pow_mul_eq_zero (p r : ℕ) (a : ℝ)
    (g : ℝ → ℝ) (hr : r < p) (hg : ContDiffAt ℝ r g (-a)) :
    iteratedDeriv r (fun x : ℝ => (x + a) ^ p * g x) (-a) = 0 := by
  have hf : ContDiffAt ℝ r (fun x : ℝ => (x + a) ^ p) (-a) :=
    (contDiffAt_id.add contDiffAt_const).pow p
  rw [iteratedDeriv_fun_mul hf hg]
  apply Finset.sum_eq_zero
  intro s hs
  have hsp : s ≠ p := by simp only [mem_range] at hs; omega
  have hz : iteratedDeriv s (fun x : ℝ => (x + a) ^ p) (-a) = 0 := by
    rw [iteratedDeriv_comp_add_const s (fun x : ℝ => x ^ p) a]
    simp only [neg_add_cancel, iteratedDeriv_fun_pow_zero, hsp, ite_false, Nat.cast_zero]
  rw [hz, mul_zero, zero_mul]

/-- All derivatives through order four of the actual real quotient vanish at
each protected negative integer. No vanishing or smoothness is assumed. -/
theorem h158EntryReal_iteratedDeriv_protected (n : ℕ) (i j : Fin (2 * n))
    (k r : ℕ) (hk : 1 ≤ k) (hkn : k ≤ 48 * n) (hr : r ≤ 4) :
    iteratedDeriv r (h158EntryReal n i j) (-(k : ℝ)) = 0 := by
  obtain ⟨P, hP, hsmooth⟩ := h158EntryReal_protected_factorization n i j k hk hkn
  rw [hP]
  exact iteratedDeriv_shifted_pow_mul_eq_zero 5 r (k : ℝ) _ (by omega) (hsmooth r)

/-- The actual fourth derivative vanishes at every protected negative integer. -/
theorem h158EntryReal_fourthDerivative_protected (n : ℕ) (i j : Fin (2 * n))
    (k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ 48 * n) :
    iteratedDeriv 4 (h158EntryReal n i j) (-(k : ℝ)) = 0 :=
  h158EntryReal_iteratedDeriv_protected n i j k 4 hk hkn (by omega)

/-- Vanishing with the exact divided-derivative normalization of `h158Functional`. -/
theorem h158EntryReal_dividedFourthDerivative_protected (n : ℕ)
    (i j : Fin (2 * n)) (k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ 48 * n) :
    iteratedDeriv 4 (h158EntryReal n i j) (-(k : ℝ)) / 24 = 0 := by
  rw [h158EntryReal_fourthDerivative_protected n i j k hk hkn, zero_div]

/-- Each discarded term in the original indexing is a protected zero. -/
theorem h158EntryReal_fourthDerivative_protected_index (n : ℕ)
    (i j : Fin (2 * n)) (v : ℕ) (hv : v < 48 * n) :
    iteratedDeriv 4 (h158EntryReal n i j) ((v : ℝ) - 48 * (n : ℝ)) / 24 = 0 := by
  have hx : (v : ℝ) - 48 * (n : ℝ) = -((48 * n - v : ℕ) : ℝ) := by
    rw [Nat.cast_sub (Nat.le_of_lt hv)]
    push_cast
    ring
  rw [hx]
  exact h158EntryReal_dividedFourthDerivative_protected n i j (48 * n - v)
    (by omega) (Nat.sub_le _ _)

/-- The full finite prefix from `-48*n` through `-1` contributes zero. -/
theorem h158EntryReal_protected_prefix_sum (n : ℕ) (i j : Fin (2 * n)) :
    (∑ v ∈ range (48 * n),
      iteratedDeriv 4 (h158EntryReal n i j) ((v : ℝ) - 48 * (n : ℝ)) / 24) = 0 := by
  apply Finset.sum_eq_zero
  intro v hv
  exact h158EntryReal_fourthDerivative_protected_index n i j v (mem_range.mp hv)

/-- The normalized derivative series starting at zero is convergent. -/
theorem summable_h158EntryReal_fourthDerivative_nonnegative (n : ℕ)
    (i j : Fin (2 * n)) :
    Summable (fun v : ℕ => iteratedDeriv 4 (h158EntryReal n i j) (v : ℝ) / 24) := by
  have h := (summable_nat_add_iff (48 * n)).mpr
    (summable_h158EntryReal_fourthDerivative n i j)
  simpa only [Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat, add_sub_cancel_right] using h

/-- Actual cutoff shift: removing the protected negative integers leaves exactly
the same functional, including its original normalization and the factor `1/24`. -/
theorem h158Functional_eq_nonnegative_sum (n : ℕ) (i j : Fin (2 * n)) :
    h158Functional n i j =
      ∑' v : ℕ, iteratedDeriv 4 (h158EntryReal n i j) (v : ℝ) / 24 := by
  have h := (summable_h158EntryReal_fourthDerivative n i j).sum_add_tsum_nat_add (48 * n)
  rw [h158EntryReal_protected_prefix_sum, zero_add] at h
  simpa only [h158Functional, Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat,
    add_sub_cancel_right] using h.symm

/-- A `HasSum` certificate for the actual derivative series with cutoff zero. -/
theorem hasSum_h158EntryReal_fourthDerivative_nonnegative (n : ℕ)
    (i j : Fin (2 * n)) :
    HasSum (fun v : ℕ => iteratedDeriv 4 (h158EntryReal n i j) (v : ℝ) / 24)
      (h158Functional n i j) := by
  rw [h158Functional_eq_nonnegative_sum]
  exact (summable_h158EntryReal_fourthDerivative_nonnegative n i j).hasSum

end OddZetaMixed
