import OddZetaMixed.H158AllPrimeBudget
import OddZetaMixed.H158ExceptionalPrimes
import OddZetaMixed.PrimeWeightedRates

/-!
# All-prime accounting for certified finite profile bounds

The small-prime and divisor-of-index contributions remain the actual signed
costs. Only the generic-prime profile is enlarged to the whole cutoff. This
requires a nonnegative majorant and does not silently discard exceptions.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset Filter H158SmallPrimeBudget H158ExceptionalPrimes

def h158CutoffPrimes (n : ℕ) : Finset ℕ := (range (57*n+1)).filter Nat.Prime

theorem mem_h158CutoffPrimes (n p : ℕ) :
    p ∈ h158CutoffPrimes n ↔ p.Prime ∧ p ≤ 57*n := by
  simp only [h158CutoffPrimes, mem_filter, mem_range]
  constructor
  · rintro ⟨h,hp⟩
    exact ⟨hp,by omega⟩
  · rintro ⟨hp,h⟩
    exact ⟨by omega,hp⟩

theorem h158Cutoff_small_filter (n : ℕ) (hn : 1 ≤ n) :
    (h158CutoffPrimes n).filter (fun p => p^2 ≤ 158*n+2) = smallPrimeSet n := by
  ext p
  simp only [mem_filter, mem_h158CutoffPrimes, smallPrimeSet, mem_Icc]
  constructor
  · rintro ⟨⟨hp, _⟩, hsq⟩
    exact ⟨⟨hp.one_lt.le, Nat.le_sqrt.mpr (by simpa [pow_two] using hsq)⟩,hp⟩
  · rintro ⟨⟨_, hsqrt⟩, hp⟩
    have hsq : p^2 ≤ 158*n+2 := by simpa [pow_two] using Nat.le_sqrt.mp hsqrt
    refine ⟨⟨hp, ?_⟩,hsq⟩
    by_contra h
    have hp' : 57*n+1 ≤ p := by omega
    nlinarith [sq_nonneg (n-1 : ℤ)]

theorem h158Cutoff_exceptional_filter (n : ℕ) :
    (h158CutoffPrimes n).filter (fun p => ¬ p^2 ≤ 158*n+2 ∧ p ∣ n) =
      exceptionalPrimeSet n := by
  rw [exceptionalPrimeSet_eq_bounded]
  ext p
  simp only [mem_filter, mem_h158CutoffPrimes, mem_Icc]
  constructor
  · rintro ⟨⟨hp,hp57⟩,hpsq,hpn⟩
    exact ⟨⟨hp.one_lt.le,hp57⟩,hp,hpn,by omega⟩
  · rintro ⟨⟨_,hp57⟩,hp,hpn,hsq⟩
    exact ⟨⟨hp,hp57⟩,by omega,hpn⟩

def h158ProfilePrimeSum (n : ℕ) (R : ℕ → ℝ) : ℝ :=
  ∑ p ∈ h158CutoffPrimes n, R p*Real.log p

theorem h158PrimitiveCost_le_generic_profile (n : ℕ) (hn : 1 ≤ n)
    (hdet : (h158SevenMatrix n).det ≠ 0) (R : ℕ → ℝ)
    (hR : ∀ p, p.Prime → p ≤ 57*n → 0 ≤ R p)
    (hlocal : ∀ p, p.Prime → p ≤ 57*n → 158*n+2 < p^2 → ¬p ∣ n →
      (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤ R p) :
    h158PrimitiveCost n ≤
      smallPrimeCost n+exceptionalPrimeCost n+h158ProfilePrimeSum n R := by
  have hsum := h158PrimitiveCost_le_prime_cutoff n
  change h158PrimitiveCost n ≤
    ∑ p ∈ h158CutoffPrimes n, (-(padicValRat p (h158PrimitiveScalar n)) : ℝ)*Real.log p at hsum
  apply hsum.trans
  have hterm (p : ℕ) (hp : p ∈ h158CutoffPrimes n) :
      (-(padicValRat p (h158PrimitiveScalar n)) : ℝ)*Real.log p ≤
        (if p^2 ≤ 158*n+2 then
          (-(padicValRat p (h158PrimitiveScalar n)) : ℝ)*Real.log p else 0)+
        (if ¬p^2 ≤ 158*n+2 ∧ p ∣ n then
          (-(padicValRat p (h158PrimitiveScalar n)) : ℝ)*Real.log p else 0)+
        R p*Real.log p := by
    obtain ⟨hprime,hp57⟩ := (mem_h158CutoffPrimes n p).mp hp
    have hlog : 0 ≤ Real.log (p : ℝ) :=
      Real.log_nonneg (by exact_mod_cast hprime.one_lt.le)
    have hrlog := mul_nonneg (hR p hprime hp57) hlog
    by_cases hsq : p^2 ≤ 158*n+2
    · simp only [hsq, ite_true, not_true_eq_false, false_and, ite_false, add_zero]
      linarith
    · by_cases hpn : p ∣ n
      · simp only [hsq, ite_false, not_false_eq_true, true_and, hpn, ite_true, zero_add]
        linarith
      · simp only [hsq, ite_false, not_false_eq_true, true_and, hpn, add_zero, zero_add]
        exact mul_le_mul_of_nonneg_right (hlocal p hprime hp57 (by omega) hpn) hlog
  have h := sum_le_sum hterm
  simp only [sum_add_distrib, ← sum_filter] at h
  rw [h158Cutoff_small_filter n hn, h158Cutoff_exceptional_filter] at h
  exact h

theorem upperQuadraticRateOn_of_ratio_limit (good : Set ℕ) (f : ℕ → ℝ) (A : ℝ)
    (hf : Tendsto (fun n : ℕ => f n/(n : ℝ)^2) atTop (nhds A)) :
    UpperQuadraticRateOn good f A := by
  intro ε hε
  filter_upwards [hf.eventually (eventually_lt_nhds (show A < A+ε by linarith)),
    eventually_ge_atTop (1 : ℕ)] with n hn hn1
  intro _
  have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  exact ((div_lt_iff₀ (sq_pos_of_pos hnR)).mp hn).le

/-- The actual exceptional terms have already proved zero upper rates. -/
theorem h158PrimitiveCost_rate_of_generic_profile (R : ℕ → ℕ → ℝ) (A : ℝ)
    (hR : ∀ᶠ n : ℕ in atTop, ∀ p, p.Prime → p ≤ 57*n → 0 ≤ R n p)
    (hlocal : ∀ᶠ n : ℕ in atTop, (h158SevenMatrix n).det ≠ 0 →
      ∀ p, p.Prime → p ≤ 57*n → 158*n+2 < p^2 → ¬p ∣ n →
        (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤ R n p)
    (hprofile : UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0}
      (fun n => h158ProfilePrimeSum n (R n)) A) :
    UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0} h158PrimitiveCost A := by
  have hall := (smallPrimeCost_upperQuadraticRate.add exceptionalPrimeCost_upperQuadraticRate).add hprofile
  intro ε hε
  filter_upwards [hall ε hε, hR, hlocal, eventually_ge_atTop (1 : ℕ)] with n hb hr hl hn
  intro hdet
  exact (h158PrimitiveCost_le_generic_profile n hn hdet (R n) hr (hl hdet)).trans
    (by simpa using hb hdet)

#print axioms h158PrimitiveCost_le_generic_profile
#print axioms h158PrimitiveCost_rate_of_generic_profile

end OddZetaMixed
