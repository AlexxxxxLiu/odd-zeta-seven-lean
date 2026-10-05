import OddZetaMixed.H158IntegerValuedJets
import OddZetaMixed.ExponentialRate
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
# Actual signed cost of primes dividing the index

The strict square condition excludes the primes handled by the small-prime
budget. The cost is not clipped. Its upper bound uses the actual cost40n
theorem and the product of distinct prime divisors, without PNT.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.H158ExceptionalPrimes

open Finset Filter H158IntegerValuedJets

def exceptionalPrimeSet (n : ℕ) : Finset ℕ :=
  n.primeFactors.filter (fun p => 158*n+2 < p^2)

/-- The full actual signed contribution, rather than a supplied majorant. -/
def exceptionalPrimeCost (n : ℕ) : ℝ :=
  ∑ p ∈ exceptionalPrimeSet n,
    (-(padicValRat p (h158PrimitiveScalar n)) : ℝ)*Real.log p

@[simp] theorem exceptionalPrimeSet_zero : exceptionalPrimeSet 0 = ∅ := by
  simp [exceptionalPrimeSet]

@[simp] theorem exceptionalPrimeSet_one : exceptionalPrimeSet 1 = ∅ := by
  simp [exceptionalPrimeSet]

@[simp] theorem exceptionalPrimeCost_zero : exceptionalPrimeCost 0 = 0 := by
  simp [exceptionalPrimeCost]

@[simp] theorem exceptionalPrimeCost_one : exceptionalPrimeCost 1 = 0 := by
  simp [exceptionalPrimeCost]

/-- This is exactly the bounded exceptional range used by the cell limit.
The n=0 case is empty on both sides; no divisor-of-zero issue is hidden. -/
theorem exceptionalPrimeSet_eq_bounded (n : ℕ) :
    exceptionalPrimeSet n = (Icc 1 (57*n)).filter
      (fun p => p.Prime ∧ p ∣ n ∧ 158*n+2 < p^2) := by
  ext p
  simp only [exceptionalPrimeSet, mem_filter, mem_Icc, Nat.mem_primeFactors]
  constructor
  · rintro ⟨⟨hp, hpn, hn⟩, hsq⟩
    have hle := Nat.le_of_dvd (Nat.pos_of_ne_zero hn) hpn
    exact ⟨⟨hp.one_lt.le, by omega⟩, hp, hpn, hsq⟩
  · rintro ⟨⟨hp1, hp57⟩, hp, hpn, hsq⟩
    refine ⟨⟨hp, hpn, ?_⟩, hsq⟩
    intro hn
    subst n
    omega

theorem primeFactors_log_sum_le (n : ℕ) (hn : 0 < n) :
    (∑ p ∈ n.primeFactors, Real.log (p : ℝ)) ≤ Real.log (n : ℝ) := by
  have hpos : 0 < ∏ p ∈ n.primeFactors, p :=
    Finset.prod_pos (fun p hp => Nat.pos_of_mem_primeFactors hp)
  have hle : (∏ p ∈ n.primeFactors, p) ≤ n :=
    Nat.le_of_dvd hn (Nat.prod_primeFactors_dvd n)
  calc
    _ = Real.log (∏ p ∈ n.primeFactors, (p : ℝ)) :=
      (Real.log_prod (fun p hp => by
        exact_mod_cast (Nat.prime_of_mem_primeFactors hp).ne_zero)).symm
    _ = Real.log ((∏ p ∈ n.primeFactors, p : ℕ) : ℝ) := by rw [Nat.cast_prod]
    _ ≤ _ := Real.log_le_log (by exact_mod_cast hpos) (by exact_mod_cast hle)

theorem exceptionalPrime_log_sum_le (n : ℕ) :
    (∑ p ∈ exceptionalPrimeSet n, Real.log (p : ℝ)) ≤ Real.log (n : ℝ) := by
  by_cases hn : n = 0
  · simp [hn]
  calc
    _ ≤ ∑ p ∈ n.primeFactors, Real.log (p : ℝ) := by
      apply sum_le_sum_of_subset_of_nonneg (filter_subset _ _)
      intro p hp hnot
      exact Real.log_nonneg (by exact_mod_cast (Nat.prime_of_mem_primeFactors hp).one_lt.le)
    _ ≤ _ := primeFactors_log_sum_le n (Nat.pos_of_ne_zero hn)

/-- Finite bound for the actual signed scalar cost, with no assumed floors. -/
theorem exceptionalPrimeCost_le (n : ℕ) (hdet : (h158SevenMatrix n).det ≠ 0) :
    exceptionalPrimeCost n ≤ 40*(n : ℝ)*Real.log (n : ℝ) := by
  have hb (p : ℕ) (hp : p ∈ exceptionalPrimeSet n) :
      (-(padicValRat p (h158PrimitiveScalar n)) : ℝ)*Real.log p ≤
        40*(n : ℝ)*Real.log p := by
    obtain ⟨hpf, hsq⟩ := mem_filter.mp hp
    have hprime := Nat.prime_of_mem_primeFactors hpf
    let : Fact p.Prime := ⟨hprime⟩
    have hc : (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤ 40*(n : ℝ) := by
      exact_mod_cast h158_primitiveCost_le_forty n hsq hdet
    exact mul_le_mul_of_nonneg_right hc
      (Real.log_nonneg (by exact_mod_cast hprime.one_lt.le))
  calc
    exceptionalPrimeCost n ≤ ∑ p ∈ exceptionalPrimeSet n, 40*(n : ℝ)*Real.log p :=
      sum_le_sum hb
    _ = 40*(n : ℝ)*(∑ p ∈ exceptionalPrimeSet n, Real.log p) := by rw [mul_sum]
    _ ≤ _ := mul_le_mul_of_nonneg_left (exceptionalPrime_log_sum_le n) (by positivity)

/-- The explicit majorant 40n log n is subquadratic by log x = o(x). -/
theorem exceptionalPrimeMajorant_subquadratic (ε : ℝ) (hε : 0 < ε) :
    ∀ᶠ n : ℕ in atTop, 40*(n : ℝ)*Real.log (n : ℝ) ≤ ε*(n : ℝ)^2 := by
  have hb := (Real.isLittleO_log_id_atTop.bound
    (show (0 : ℝ) < ε/40 by positivity)).filter_mono
    (tendsto_natCast_atTop_atTop (R := ℝ))
  filter_upwards [hb] with n hn
  change ‖Real.log (n : ℝ)‖ ≤ ε/40*‖(n : ℝ)‖ at hn
  have hn0 : (0 : ℝ) ≤ n := by positivity
  have hl : Real.log (n : ℝ) ≤ ε/40*(n : ℝ) := by
    have hb' : |Real.log (n : ℝ)| ≤ ε/40*(n : ℝ) := by
      simpa only [Real.norm_eq_abs, id_eq, abs_of_nonneg hn0] using hn
    exact (le_abs_self _).trans hb'
  calc
    _ ≤ 40*(n : ℝ)*(ε/40*(n : ℝ)) := mul_le_mul_of_nonneg_left hl (by positivity)
    _ = _ := by ring

/-- Zero upper quadratic rate on the actual nonzero formal determinants.
This is an upper rate for a signed sum, not a two-sided limit assertion. -/
theorem exceptionalPrimeCost_upperQuadraticRate :
    UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0} exceptionalPrimeCost 0 := by
  intro ε hε
  filter_upwards [exceptionalPrimeMajorant_subquadratic ε hε] with n hn
  intro hdet
  simpa only [zero_add] using (exceptionalPrimeCost_le n hdet).trans hn

section Regression

example : exceptionalPrimeCost 0 = 0 := exceptionalPrimeCost_zero

example : exceptionalPrimeCost 1 = 0 := exceptionalPrimeCost_one

example : exceptionalPrimeSet 163 = {163} := by
  have hp : Nat.Prime 163 := by norm_num
  norm_num [exceptionalPrimeSet, hp.primeFactors]

-- The square filter removes the small factor2 but keeps the large factor331.
example : exceptionalPrimeSet 662 = {331} := by
  have hp : Nat.Prime 331 := by norm_num
  have hf : Nat.primeFactors 662 = {2, 331} := by
    rw [show 662 = 2*331 by norm_num, Nat.primeFactors_mul (by norm_num) (by norm_num),
      Nat.prime_two.primeFactors, hp.primeFactors]
    rfl
  norm_num [exceptionalPrimeSet, hf, Finset.filter_insert]

-- The parent-facing bounded range has the SAME actual signed sum.
example (n : ℕ) (hdet : (h158SevenMatrix n).det ≠ 0) :
    (∑ p ∈ (Icc 1 (57*n)).filter (fun p => p.Prime ∧ p ∣ n ∧ 158*n+2 < p^2),
      (-(padicValRat p (h158PrimitiveScalar n)) : ℝ)*Real.log p) ≤
        40*(n : ℝ)*Real.log (n : ℝ) := by
  simpa only [exceptionalPrimeCost, exceptionalPrimeSet_eq_bounded] using
    exceptionalPrimeCost_le n hdet

end Regression

#print axioms exceptionalPrimeSet_eq_bounded
#print axioms primeFactors_log_sum_le
#print axioms exceptionalPrime_log_sum_le
#print axioms exceptionalPrimeCost_le
#print axioms exceptionalPrimeMajorant_subquadratic
#print axioms exceptionalPrimeCost_upperQuadraticRate

end OddZetaMixed.H158ExceptionalPrimes
