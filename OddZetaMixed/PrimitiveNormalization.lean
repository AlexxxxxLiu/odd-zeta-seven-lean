import OddZetaMixed.DenominatorClearing
import Mathlib.Algebra.GCDMonoid.Finset
import Mathlib.NumberTheory.Padics.PadicVal.Basic

/-!
# Primitive normalization of rational multivariate polynomials

The content is the normalized integer gcd of every nonzero coefficient.
Clearing the finite set of coefficient denominators and extracting this gcd
constructs a primitive integer polynomial and a nonzero rational scalar.
No determinant identity, arithmetic rate, or specialization is assumed here.
-/

namespace OddZetaMixed

/-- The normalized gcd of all coefficients, including every mixed monomial. -/
noncomputable def integerPolynomialContent {σ : Type*} (P : MvPolynomial σ ℤ) : ℤ :=
  P.support.gcd P.coeff

@[simp]
theorem integerPolynomialContent_zero {σ : Type*} :
    integerPolynomialContent (0 : MvPolynomial σ ℤ) = 0 := by
  simp [integerPolynomialContent]

theorem integerPolynomialContent_nonneg {σ : Type*} (P : MvPolynomial σ ℤ) :
    0 ≤ integerPolynomialContent P :=
  Finset.Int.finsetGcd_nonneg

theorem integerPolynomialContent_dvd_coeff {σ : Type*} (P : MvPolynomial σ ℤ)
    (m : σ →₀ ℕ) : integerPolynomialContent P ∣ P.coeff m := by
  classical
  by_cases hm : m ∈ P.support
  · exact Finset.gcd_dvd hm
  · rw [MvPolynomial.notMem_support_iff.mp hm]
    exact dvd_zero _

theorem integerPolynomialContent_ne_zero {σ : Type*} (P : MvPolynomial σ ℤ)
    (hP : P ≠ 0) : integerPolynomialContent P ≠ 0 := by
  obtain ⟨m, hm⟩ := MvPolynomial.support_nonempty.mpr hP
  exact Finset.gcd_ne_zero_iff.mpr ⟨m, hm, MvPolynomial.mem_support_iff.mp hm⟩

/-- Every nonzero integer polynomial has a primitive part after dividing out
its normalized coefficient gcd. This is an existence theorem, not an input. -/
theorem exists_integer_primitive_part {σ : Type*} (A : MvPolynomial σ ℤ)
    (hA : A ≠ 0) :
    ∃ P : MvPolynomial σ ℤ,
      A = MvPolynomial.C (integerPolynomialContent A) * P ∧
      integerPolynomialContent P = 1 ∧ P ≠ 0 := by
  have hg := integerPolynomialContent_ne_zero A hA
  have hdvd : MvPolynomial.C (integerPolynomialContent A) ∣ A :=
    (MvPolynomial.C_dvd_iff_dvd_coeff _ _).mpr (integerPolynomialContent_dvd_coeff A)
  obtain ⟨P, hP⟩ := hdvd
  have hs : A.support = P.support := by
    rw [hP, MvPolynomial.C_mul', MvPolynomial.support_smul_eq hg]
  have hcoeff (m : σ →₀ ℕ) :
      A.coeff m = integerPolynomialContent A * P.coeff m := by
    simpa only [MvPolynomial.coeff_C_mul] using
      congrArg (fun B : MvPolynomial σ ℤ => B.coeff m) hP
  obtain ⟨m, hm⟩ := MvPolynomial.support_nonempty.mpr hA
  have hprimitive : A.support.gcd P.coeff = 1 :=
    Finset.extract_gcd' A.coeff P.coeff
      ⟨m, hm, MvPolynomial.mem_support_iff.mp hm⟩ (fun m _ => hcoeff m)
  refine ⟨P, hP, ?_, ?_⟩
  · simpa only [integerPolynomialContent, hs] using hprimitive
  · intro hzero
    exact hA (by simpa [hzero] using hP)

/-- A positive common denominator clears all rational polynomial coefficients. -/
theorem exists_integer_coefficient_multiple {σ : Type*} (F : MvPolynomial σ ℚ) :
    ∃ D : ℤ, 0 < D ∧ ∃ A : MvPolynomial σ ℤ,
      A.map (Int.castRingHom ℚ) = MvPolynomial.C (D : ℚ) * F := by
  classical
  obtain ⟨D, hD⟩ :=
    IsLocalization.exist_integer_multiples (Submonoid.pos ℤ) F.support F.coeff
  refine ⟨D, D.property, ?_⟩
  apply MvPolynomial.mem_range_map_iff_coeffs_subset.mpr
  intro b hb
  obtain ⟨m, _, rfl⟩ := MvPolynomial.mem_coeffs_iff.mp hb
  rw [MvPolynomial.coeff_C_mul]
  by_cases hm : m ∈ F.support
  · obtain ⟨a, ha⟩ := hD m hm
    refine ⟨a, ?_⟩
    simpa only [Algebra.smul_def, eq_intCast] using ha
  · refine ⟨0, ?_⟩
    simp [MvPolynomial.notMem_support_iff.mp hm]

/-- Actual primitive normalization for a nonzero rational polynomial. The
identity and exact degree equality are conclusions, not hypotheses. -/
theorem exists_primitive_normalization {σ : Type*} (F : MvPolynomial σ ℚ)
    (hF : F ≠ 0) :
    ∃ c : ℚ, c ≠ 0 ∧ ∃ P : MvPolynomial σ ℤ,
      P ≠ 0 ∧ integerPolynomialContent P = 1 ∧
      F = MvPolynomial.C c * P.map (Int.castRingHom ℚ) ∧
      P.totalDegree = F.totalDegree := by
  obtain ⟨D, hD, A, hA⟩ := exists_integer_coefficient_multiple F
  have hD' : (D : ℚ) ≠ 0 := by exact_mod_cast hD.ne'
  have hCD : (MvPolynomial.C (D : ℚ) : MvPolynomial σ ℚ) ≠ 0 := by
    simpa using hD'
  have hAne : A ≠ 0 := by
    intro hzero
    apply mul_ne_zero hCD hF
    simpa [hzero] using hA.symm
  obtain ⟨P, hAP, hprimitive, hP⟩ := exists_integer_primitive_part A hAne
  let g := integerPolynomialContent A
  have hg : g ≠ 0 := integerPolynomialContent_ne_zero A hAne
  have hg' : (g : ℚ) ≠ 0 := by exact_mod_cast hg
  have hc : (g : ℚ) / (D : ℚ) ≠ 0 := div_ne_zero hg' hD'
  have hscalar : (D : ℚ) * ((g : ℚ) / (D : ℚ)) = g := by field_simp
  have hnorm : F = MvPolynomial.C ((g : ℚ) / (D : ℚ)) *
      P.map (Int.castRingHom ℚ) := by
    apply mul_left_cancel₀ hCD
    rw [← mul_assoc, ← MvPolynomial.C_mul, hscalar, ← hA, hAP]
    simp only [map_mul, MvPolynomial.map_C]
    rfl
  exact ⟨_, hc, P, hP, hprimitive, hnorm,
    normalized_integral_totalDegree P F _ hc hnorm⟩

/-- Seven-variable interface for the mixed determinant construction. -/
theorem exists_seven_primitive_normalization (F : SevenPolynomial) (hF : F ≠ 0) :
    ∃ c : ℚ, c ≠ 0 ∧ ∃ P : MvPolynomial (Fin 7) ℤ,
      P ≠ 0 ∧ integerPolynomialContent P = 1 ∧
      F = MvPolynomial.C c * P.map (Int.castRingHom ℚ) ∧
      P.totalDegree = F.totalDegree :=
  exists_primitive_normalization F hF

/-- Every prime misses at least one supported coefficient of a primitive
integer polynomial. In particular, that coefficient is nonzero. -/
theorem primitive_prime_coefficient_witness {σ : Type*} (P : MvPolynomial σ ℤ)
    (hprimitive : integerPolynomialContent P = 1) (p : ℕ) (hp : p.Prime) :
    ∃ m ∈ P.support, ¬ (p : ℤ) ∣ P.coeff m := by
  classical
  by_contra h
  push Not at h
  have hdvd : (p : ℤ) ∣ integerPolynomialContent P := Finset.dvd_gcd h
  rw [hprimitive] at hdvd
  exact hp.not_dvd_one (by exact_mod_cast hdvd)

/-- The minimum of the p-adic valuations of all nonzero coefficients is zero.
Using support avoids the totalized value of `padicValRat` at zero. -/
theorem primitive_coefficient_valuation_min {σ : Type*} (P : MvPolynomial σ ℤ)
    (hprimitive : integerPolynomialContent P = 1) (p : ℕ) (hp : p.Prime) :
    IsLeast ((fun m => padicValRat p (P.coeff m : ℚ)) ''
      (P.support : Set (σ →₀ ℕ))) 0 := by
  obtain ⟨m, hm, hpm⟩ := primitive_prime_coefficient_witness P hprimitive p hp
  constructor
  · refine ⟨m, hm, ?_⟩
    simp only [padicValRat.of_int, padicValInt.eq_zero_of_not_dvd hpm, Nat.cast_zero]
  · rintro _ ⟨m, _, rfl⟩
    change 0 ≤ padicValRat p (P.coeff m : ℚ)
    rw [padicValRat.of_int]
    exact Int.natCast_nonneg _

end OddZetaMixed

#print axioms OddZetaMixed.integerPolynomialContent_zero
#print axioms OddZetaMixed.integerPolynomialContent_nonneg
#print axioms OddZetaMixed.integerPolynomialContent_dvd_coeff
#print axioms OddZetaMixed.integerPolynomialContent_ne_zero
#print axioms OddZetaMixed.exists_integer_primitive_part
#print axioms OddZetaMixed.exists_integer_coefficient_multiple
#print axioms OddZetaMixed.exists_primitive_normalization
#print axioms OddZetaMixed.exists_seven_primitive_normalization
#print axioms OddZetaMixed.primitive_prime_coefficient_witness
#print axioms OddZetaMixed.primitive_coefficient_valuation_min
