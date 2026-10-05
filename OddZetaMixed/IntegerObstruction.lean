import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic
import OddZetaMixed.DenominatorClearing

/-!
# Integer obstruction for the mixed odd-zeta argument

These are general terminal lemmas for Section 5 of
`work/odd_zeta_global_budget_20261005.md`. The analytic estimate, the
construction of the integer sequence, and its nonvanishing on good indices
are explicit hypotheses, not assertions about zeta values.
-/

namespace OddZetaMixed

open Filter

/-- An integer with real absolute value strictly below one is zero. -/
theorem int_eq_zero_of_abs_lt_one {z : ℤ} (h : |(z : ℝ)| < 1) : z = 0 := by
  have hz : |z| < (1 : ℤ) := by exact_mod_cast h
  have : -1 < z ∧ z < 1 := abs_lt.mp hz
  omega

/-- Every nonzero integer has real absolute value at least one. -/
theorem one_le_abs_intCast {z : ℤ} (hz : z ≠ 0) : 1 ≤ |(z : ℝ)| := by
  by_contra h
  exact hz (int_eq_zero_of_abs_lt_one (lt_of_not_ge h))

/-- An eventually small integer sequence is eventually zero. -/
theorem eventually_eq_zero_of_eventually_abs_lt_one (I : ℕ → ℤ)
    (hsmall : ∀ᶠ n in atTop, |(I n : ℝ)| < 1) :
    ∀ᶠ n in atTop, I n = 0 :=
  hsmall.mono fun _ hn => int_eq_zero_of_abs_lt_one hn

/-- Here nonzero means nonzero at every index, not merely a nonzero function. -/
theorem integer_obstruction (I : ℕ → ℤ) (hnonzero : ∀ n, I n ≠ 0)
    (hsmall : ∀ᶠ n in atTop, |(I n : ℝ)| < 1) : False := by
  obtain ⟨n, hn⟩ := (eventually_eq_zero_of_eventually_abs_lt_one I hsmall).exists
  exact hnonzero n hn

/-- Only unbounded good indices need to be nonzero or satisfy the eventual bound. -/
theorem integer_obstruction_of_unbounded_good (I : ℕ → ℤ) (good : Set ℕ)
    (hgood : ∀ N, ∃ n, N ≤ n ∧ n ∈ good)
    (hnonzero : ∀ n ∈ good, I n ≠ 0)
    (hsmall : ∀ᶠ n in atTop, n ∈ good → |(I n : ℝ)| < 1) : False := by
  obtain ⟨N, hN⟩ := eventually_atTop.1 hsmall
  obtain ⟨n, hn, hngood⟩ := hgood N
  exact hnonzero n hngood (int_eq_zero_of_abs_lt_one (hN n hn hngood))

/-- An infinite set of natural-number indices is enough for the obstruction. -/
theorem integer_obstruction_of_infinite_good (I : ℕ → ℤ) (good : Set ℕ)
    (hgood : good.Infinite) (hnonzero : ∀ n ∈ good, I n ≠ 0)
    (hsmall : ∀ᶠ n in atTop, n ∈ good → |(I n : ℝ)| < 1) : False := by
  apply integer_obstruction_of_unbounded_good I good _ hnonzero hsmall
  intro N
  obtain ⟨n, hngood, hn⟩ := hgood.exists_gt N
  exact ⟨n, hn.le, hngood⟩

/-- Quadratic decay dominates any fixed linear contribution, of either sign. -/
theorem eventually_exp_neg_quadratic_add_linear_lt_one {c : ℝ} (hc : 0 < c)
    (C : ℝ) :
    ∀ᶠ n : ℕ in atTop, Real.exp (-c * (n : ℝ) ^ 2 + C * (n : ℝ)) < 1 := by
  obtain ⟨N, hN⟩ := exists_nat_gt (max 0 (C / c))
  filter_upwards [eventually_ge_atTop N] with n hn
  have hlarge : max 0 (C / c) < (n : ℝ) :=
    hN.trans_le (by exact_mod_cast hn)
  have hnpos : (0 : ℝ) < n := (le_max_left _ _).trans_lt hlarge
  have hCn : C < (n : ℝ) * c :=
    (div_lt_iff₀ hc).mp ((le_max_right _ _).trans_lt hlarge)
  apply Real.exp_lt_one_iff.mpr
  nlinarith [mul_pos (sub_pos.mpr hCn) hnpos]

/-- Terminal contradiction for a quadratically decaying integer sequence on
unbounded good indices. The bound is required only eventually on those indices. -/
theorem integer_obstruction_of_unbounded_good_exp (I : ℕ → ℤ) (good : Set ℕ)
    (hgood : ∀ N, ∃ n, N ≤ n ∧ n ∈ good)
    (hnonzero : ∀ n ∈ good, I n ≠ 0) {c : ℝ} (hc : 0 < c) (C : ℝ)
    (hbound : ∀ᶠ n in atTop, n ∈ good →
      |(I n : ℝ)| ≤ Real.exp (-c * (n : ℝ) ^ 2 + C * (n : ℝ))) : False := by
  apply integer_obstruction_of_unbounded_good I good hgood hnonzero
  filter_upwards [hbound, eventually_exp_neg_quadratic_add_linear_lt_one hc C]
    with n hn hsmall
  exact fun hngood => (hn hngood).trans_lt hsmall

/-- Infinite-good-index version of the terminal exponential obstruction. -/
theorem integer_obstruction_of_infinite_good_exp (I : ℕ → ℤ) (good : Set ℕ)
    (hgood : good.Infinite) (hnonzero : ∀ n ∈ good, I n ≠ 0)
    {c : ℝ} (hc : 0 < c) (C : ℝ)
    (hbound : ∀ᶠ n in atTop, n ∈ good →
      |(I n : ℝ)| ≤ Real.exp (-c * (n : ℝ) ^ 2 + C * (n : ℝ))) : False := by
  apply integer_obstruction_of_infinite_good I good hgood hnonzero
  filter_upwards [hbound, eventually_exp_neg_quadratic_add_linear_lt_one hc C]
    with n hn hsmall
  exact fun hngood => (hn hngood).trans_lt hsmall

/-- Logarithmic version on unbounded good indices. Positivity of the absolute
value is established from nonvanishing before converting the logarithmic bound. -/
theorem integer_obstruction_of_unbounded_good_log (I : ℕ → ℤ) (good : Set ℕ)
    (hgood : ∀ N, ∃ n, N ≤ n ∧ n ∈ good)
    (hnonzero : ∀ n ∈ good, I n ≠ 0) {c : ℝ} (hc : 0 < c) (C : ℝ)
    (hbound : ∀ᶠ n in atTop, n ∈ good →
      Real.log |(I n : ℝ)| ≤ -c * (n : ℝ) ^ 2 + C * (n : ℝ)) : False := by
  apply integer_obstruction_of_unbounded_good_exp I good hgood hnonzero hc C
  filter_upwards [hbound] with n hn
  intro hngood
  have hpos : 0 < |(I n : ℝ)| :=
    zero_lt_one.trans_le (one_le_abs_intCast (hnonzero n hngood))
  exact (Real.log_le_iff_le_exp hpos).mp (hn hngood)

/-- Infinite-good-index logarithmic obstruction; nothing is required of the
logarithm at indices outside `good`, where the integer is allowed to be zero. -/
theorem integer_obstruction_of_infinite_good_log (I : ℕ → ℤ) (good : Set ℕ)
    (hgood : good.Infinite) (hnonzero : ∀ n ∈ good, I n ≠ 0)
    {c : ℝ} (hc : 0 < c) (C : ℝ)
    (hbound : ∀ᶠ n in atTop, n ∈ good →
      Real.log |(I n : ℝ)| ≤ -c * (n : ℝ) ^ 2 + C * (n : ℝ)) : False := by
  apply integer_obstruction_of_unbounded_good_log I good _ hnonzero hc C hbound
  intro N
  obtain ⟨n, hngood, hn⟩ := hgood.exists_gt N
  exact ⟨n, hn.le, hngood⟩

/-- The degree-`2n` polynomial version of the terminal mechanism. Neither the
nonvanishing hypothesis nor the analytic bound is proved here for a zeta
specialization; both must be supplied for the same polynomial sequence. -/
theorem polynomial_obstruction_of_infinite_good_exp {σ : Type*}
    (P : ℕ → MvPolynomial σ ℤ) (hdegree : ∀ n, (P n).totalDegree ≤ 2 * n)
    (x : σ → ℚ) (Q : ℤ) (hQ : Q ≠ 0)
    (hden : ∀ i, ∃ a : ℤ, (Q : ℚ) * x i = (a : ℚ)) (good : Set ℕ)
    (hgood : good.Infinite)
    (hnonzero : ∀ n ∈ good, (P n).eval₂ (Int.castRingHom ℚ) x ≠ 0)
    {c : ℝ} (hc : 0 < c) (C : ℝ)
    (hbound : ∀ᶠ n in atTop, n ∈ good →
      |(((Q : ℚ) ^ (2 * n) * (P n).eval₂ (Int.castRingHom ℚ) x : ℚ) : ℝ)| ≤
        Real.exp (-c * (n : ℝ) ^ 2 + C * (n : ℝ))) : False := by
  choose I hI using fun n => clear_denominators (P n) x Q (2 * n) (hdegree n) hden
  have hIreal (n : ℕ) : (I n : ℝ) =
      (((Q : ℚ) ^ (2 * n) * (P n).eval₂ (Int.castRingHom ℚ) x : ℚ) : ℝ) := by
    exact_mod_cast (hI n).symm
  refine integer_obstruction_of_infinite_good_exp I good hgood ?_ hc C ?_
  · intro n hn hz
    have hQrat : (Q : ℚ) ≠ 0 := by exact_mod_cast hQ
    have hne := mul_ne_zero (pow_ne_zero (2 * n) hQrat) (hnonzero n hn)
    apply hne
    rw [hI n, hz, Int.cast_zero]
  · filter_upwards [hbound] with n hn
    simpa only [hIreal n] using hn

end OddZetaMixed
