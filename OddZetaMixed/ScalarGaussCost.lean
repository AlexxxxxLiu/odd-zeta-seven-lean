import OddZetaMixed.PrimitiveNormalization
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Exact scalar cost of primitive normalization

The Gauss valuation is the minimum over the nonzero coefficient support of a
nonzero rational polynomial. For a primitive integral scalar normal form, it
equals the valuation of the scalar. The scalar's real logarithm is recovered
from a finite sum over the primes dividing its numerator or denominator.
These are exact identities, with no asymptotic or specialization inputs.
-/

namespace OddZetaMixed

/-- The actual finite minimum of the valuations of nonzero coefficients.
The nonzero hypothesis excludes an empty support, not just zero coefficients. -/
noncomputable def rationalPolynomialGaussValuation {σ : Type*} (p : ℕ)
    (F : MvPolynomial σ ℚ) (hF : F ≠ 0) : ℤ :=
  F.support.inf' (MvPolynomial.support_nonempty.mpr hF)
    (fun m => padicValRat p (F.coeff m))

/-- A primitive scalar normal form attains its scalar valuation on the
nonzero coefficient support, and every supported coefficient has at least
that valuation. -/
theorem primitive_scalar_coefficient_valuation_isLeast {σ : Type*}
    (F : MvPolynomial σ ℚ) (P : MvPolynomial σ ℤ)
    (hprimitive : integerPolynomialContent P = 1)
    (c : ℚ) (hc : c ≠ 0)
    (hnorm : F = MvPolynomial.C c * P.map (Int.castRingHom ℚ))
    (p : ℕ) (hp : p.Prime) :
    IsLeast ((fun m => padicValRat p (F.coeff m)) ''
      (F.support : Set (σ →₀ ℕ))) (padicValRat p c) := by
  let : Fact p.Prime := ⟨hp⟩
  have hs : F.support = P.support := by
    rw [hnorm, MvPolynomial.C_mul', MvPolynomial.support_smul_eq hc,
      MvPolynomial.support_map_of_injective P Int.cast_injective]
  have hcoeff (m : σ →₀ ℕ) : F.coeff m = c * (P.coeff m : ℚ) := by
    simp [hnorm, MvPolynomial.coeff_C_mul, MvPolynomial.coeff_map]
  have hval (m : σ →₀ ℕ) (hm : m ∈ P.support) :
      padicValRat p (F.coeff m) = padicValRat p c +
        padicValRat p (P.coeff m : ℚ) := by
    rw [hcoeff, padicValRat.mul hc]
    exact_mod_cast MvPolynomial.mem_support_iff.mp hm
  obtain ⟨⟨m, hm, hmin⟩, hlower⟩ :=
    primitive_coefficient_valuation_min P hprimitive p hp
  constructor
  · refine ⟨m, hs.symm ▸ hm, ?_⟩
    change padicValRat p (F.coeff m) = padicValRat p c
    change padicValRat p (P.coeff m : ℚ) = 0 at hmin
    rw [hval m hm, hmin, add_zero]
  · rintro _ ⟨k, hk, rfl⟩
    have hkP : k ∈ P.support := hs ▸ hk
    change padicValRat p c ≤ padicValRat p (F.coeff k)
    rw [hval k hkP]
    exact le_add_of_nonneg_right (hlower ⟨k, hkP, rfl⟩)

/-- The numerical Gauss minimum equals the primitive normalization scalar's
valuation. In particular, the minimum is not a separately assumed input. -/
theorem primitive_scalar_gauss_valuation {σ : Type*}
    (F : MvPolynomial σ ℚ) (hF : F ≠ 0) (P : MvPolynomial σ ℤ)
    (hprimitive : integerPolynomialContent P = 1)
    (c : ℚ) (hc : c ≠ 0)
    (hnorm : F = MvPolynomial.C c * P.map (Int.castRingHom ℚ))
    (p : ℕ) (hp : p.Prime) :
    rationalPolynomialGaussValuation p F hF = padicValRat p c := by
  obtain ⟨⟨m, hm, hmin⟩, hlower⟩ :=
    primitive_scalar_coefficient_valuation_isLeast F P hprimitive c hc hnorm p hp
  apply le_antisymm
  · exact hmin ▸ Finset.inf'_le (fun k => padicValRat p (F.coeff k)) hm
  · exact Finset.le_inf' _ _ (fun k hk => hlower ⟨k, hk, rfl⟩)

private theorem log_nat_factorization_over (n : ℕ) (s : Finset ℕ)
    (hs : n.primeFactors ⊆ s) :
    Real.log (n : ℝ) = ∑ p ∈ s, (n.factorization p : ℝ) * Real.log p := by
  rw [Real.log_nat_eq_sum_factorization, Finsupp.sum, Nat.support_factorization]
  exact Finset.sum_subset hs (fun p _ hp => by
    have hzero : n.factorization p = 0 := Finsupp.notMem_support_iff.mp hp
    simp [hzero])

/-- Exact finite rational factorization formula, with the sign retained in
the valuations and removed from the real logarithm by absolute value. -/
theorem log_abs_rat_eq_sum_padicValRat (c : ℚ) (hc : c ≠ 0) :
    Real.log |(c : ℝ)| =
      ∑ p ∈ (c.num.natAbs * c.den).primeFactors,
        (padicValRat p c : ℝ) * Real.log p := by
  have hn : c.num.natAbs ≠ 0 := by
    simpa using Rat.num_ne_zero.mpr hc
  have hd : c.den ≠ 0 := c.den_ne_zero
  have hs : (c.num.natAbs * c.den).primeFactors =
      c.num.natAbs.primeFactors ∪ c.den.primeFactors := Nat.primeFactors_mul hn hd
  have hnlog := log_nat_factorization_over c.num.natAbs
    (c.num.natAbs * c.den).primeFactors (by rw [hs]; exact Finset.subset_union_left)
  have hdlog := log_nat_factorization_over c.den
    (c.num.natAbs * c.den).primeFactors (by rw [hs]; exact Finset.subset_union_right)
  have habs : |(c : ℝ)| = (c.num.natAbs : ℝ) / (c.den : ℝ) := by
    rw [Rat.cast_def, abs_div]
    simp
  rw [habs, Real.log_div (by exact_mod_cast hn) (by exact_mod_cast hd),
    hnlog, hdlog, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  have hp' : p.Prime := Nat.prime_of_mem_primeFactors hp
  rw [Nat.factorization_def _ hp', Nat.factorization_def _ hp',
    padicValRat_def, padicValInt]
  simp only [Int.cast_sub, Int.cast_natCast]
  ring

/-- The exact global normalization cost, summed only over the primes
dividing the rational scalar's numerator or denominator. -/
theorem neg_log_abs_rat_eq_sum_padicValRat (c : ℚ) (hc : c ≠ 0) :
    -Real.log |(c : ℝ)| =
      ∑ p ∈ (c.num.natAbs * c.den).primeFactors,
        -(padicValRat p c : ℝ) * Real.log p := by
  simpa only [Finset.sum_neg_distrib, neg_mul] using
    congrArg Neg.neg (log_abs_rat_eq_sum_padicValRat c hc)

/-- The global scalar cost expressed by the actual coefficient Gauss minima
of the same rational polynomial, not an independently supplied valuation. -/
theorem primitive_scalar_gauss_cost {σ : Type*}
    (F : MvPolynomial σ ℚ) (hF : F ≠ 0) (P : MvPolynomial σ ℤ)
    (hprimitive : integerPolynomialContent P = 1)
    (c : ℚ) (hc : c ≠ 0)
    (hnorm : F = MvPolynomial.C c * P.map (Int.castRingHom ℚ)) :
    -Real.log |(c : ℝ)| =
      ∑ p ∈ (c.num.natAbs * c.den).primeFactors,
        -(rationalPolynomialGaussValuation p F hF : ℝ) * Real.log p := by
  rw [neg_log_abs_rat_eq_sum_padicValRat c hc]
  apply Finset.sum_congr rfl
  intro p hp
  rw [primitive_scalar_gauss_valuation F hF P hprimitive c hc hnorm p
    (Nat.prime_of_mem_primeFactors hp)]

/-- The constructed primitive normalization supplies both the local Gauss
identity at every prime and its exact finite global scalar cost. -/
theorem exists_primitive_normalization_with_gauss_cost {σ : Type*}
    (F : MvPolynomial σ ℚ) (hF : F ≠ 0) :
    ∃ c : ℚ, c ≠ 0 ∧ ∃ P : MvPolynomial σ ℤ,
      P ≠ 0 ∧ integerPolynomialContent P = 1 ∧
      F = MvPolynomial.C c * P.map (Int.castRingHom ℚ) ∧
      P.totalDegree = F.totalDegree ∧
      (∀ p : ℕ, p.Prime → rationalPolynomialGaussValuation p F hF = padicValRat p c) ∧
      -Real.log |(c : ℝ)| =
        ∑ p ∈ (c.num.natAbs * c.den).primeFactors,
          -(rationalPolynomialGaussValuation p F hF : ℝ) * Real.log p := by
  obtain ⟨c, hc, P, hP, hprimitive, hnorm, hdegree⟩ :=
    exists_primitive_normalization F hF
  exact ⟨c, hc, P, hP, hprimitive, hnorm, hdegree,
    primitive_scalar_gauss_valuation F hF P hprimitive c hc hnorm,
    primitive_scalar_gauss_cost F hF P hprimitive c hc hnorm⟩

end OddZetaMixed

#print axioms OddZetaMixed.primitive_scalar_coefficient_valuation_isLeast
#print axioms OddZetaMixed.primitive_scalar_gauss_valuation
#print axioms OddZetaMixed.log_abs_rat_eq_sum_padicValRat
#print axioms OddZetaMixed.neg_log_abs_rat_eq_sum_padicValRat
#print axioms OddZetaMixed.primitive_scalar_gauss_cost
#print axioms OddZetaMixed.exists_primitive_normalization_with_gauss_cost
