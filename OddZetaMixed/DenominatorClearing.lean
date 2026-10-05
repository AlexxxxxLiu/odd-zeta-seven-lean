import Mathlib.Algebra.MvPolynomial.Degrees
import Mathlib.Algebra.MvPolynomial.Eval
import Mathlib.RingTheory.Localization.FractionRing
import Mathlib.RingTheory.Localization.Integer
import Mathlib.Tactic
import OddZetaMixed.MomentMatrix

/-!
# Clearing denominators of integer multivariate polynomials

The main theorem uses the total degree, not a separate degree bound in each
variable. A nonzero scalar normalization transfers the moment determinant's
degree bound to its integer polynomial. The final corollaries provide the
arithmetic step with normalization and nonvanishing as explicit hypotheses.
They do not assert any analytic or zeta-value input.
-/

namespace OddZetaMixed

open scoped BigOperators

/-- A finite family of rationals has a positive integer common denominator. -/
theorem common_denominator_exists {ι : Type*} [Finite ι] (z : ι → ℚ) :
    ∃ Q : ℤ, 0 < Q ∧ ∀ i, ∃ a : ℤ, (Q : ℚ) * z i = (a : ℚ) := by
  obtain ⟨Q, hQ⟩ :=
    IsLocalization.exist_integer_multiples_of_finite (Submonoid.pos ℤ) z
  refine ⟨Q, Q.property, ?_⟩
  intro i
  obtain ⟨a, ha⟩ := hQ i
  refine ⟨a, ?_⟩
  simpa only [Algebra.smul_def, eq_intCast] using ha.symm

/-- The same common-denominator statement for a list, including the empty list. -/
theorem list_common_denominator_exists (zs : List ℚ) :
    ∃ Q : ℤ, 0 < Q ∧ ∀ z ∈ zs, ∃ a : ℤ, (Q : ℚ) * z = (a : ℚ) := by
  obtain ⟨Q, hQ⟩ :=
    IsLocalization.exist_integer_multiples (Submonoid.pos ℤ) zs.toFinset id
  refine ⟨Q, Q.property, ?_⟩
  intro z hz
  obtain ⟨a, ha⟩ := hQ z (List.mem_toFinset.mpr hz)
  refine ⟨a, ?_⟩
  simpa only [Algebra.smul_def, eq_intCast, id_eq] using ha.symm

/-- Multiplying an evaluation by the common denominator to any upper bound on
the total degree gives an integer. No finiteness assumption on the variable
type is needed, since a polynomial has finite support. Even `Q = 0` is allowed. -/
theorem clear_denominators {σ : Type*} (P : MvPolynomial σ ℤ) (z : σ → ℚ)
    (Q : ℤ) (d : ℕ) (hdegree : P.totalDegree ≤ d)
    (hz : ∀ i, ∃ a : ℤ, (Q : ℚ) * z i = (a : ℚ)) :
    ∃ a : ℤ, (Q : ℚ) ^ d * P.eval₂ (Int.castRingHom ℚ) z = (a : ℚ) := by
  classical
  choose a ha using hz
  refine ⟨∑ m ∈ P.support,
    P.coeff m * Q ^ (d - m.sum (fun _ e => e)) * ∏ i ∈ m.support, a i ^ m i, ?_⟩
  rw [MvPolynomial.eval₂_eq, Finset.mul_sum]
  simp only [Int.cast_sum, Int.cast_mul, Int.cast_pow, Int.cast_prod]
  apply Finset.sum_congr rfl
  intro m hm
  have hmdegree : (∑ i ∈ m.support, m i) ≤ d :=
    (MvPolynomial.le_totalDegree hm).trans hdegree
  have hprod : (∏ i ∈ m.support, (a i : ℚ) ^ m i) =
      (Q : ℚ) ^ (∑ i ∈ m.support, m i) * ∏ i ∈ m.support, z i ^ m i := by
    simp_rw [← ha, mul_pow]
    rw [Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum]
  rw [hprod]
  change (Q : ℚ) ^ d * ((P.coeff m : ℚ) * ∏ i ∈ m.support, z i ^ m i) =
    (P.coeff m : ℚ) * (Q : ℚ) ^ (d - ∑ i ∈ m.support, m i) *
      ((Q : ℚ) ^ (∑ i ∈ m.support, m i) * ∏ i ∈ m.support, z i ^ m i)
  have hpow : (Q : ℚ) ^ (d - ∑ i ∈ m.support, m i) *
      (Q : ℚ) ^ (∑ i ∈ m.support, m i) = (Q : ℚ) ^ d := by
    rw [← pow_add, Nat.sub_add_cancel hmdegree]
  calc
    _ = (P.coeff m : ℚ) *
        ((Q : ℚ) ^ (d - ∑ i ∈ m.support, m i) *
          (Q : ℚ) ^ (∑ i ∈ m.support, m i)) * ∏ i ∈ m.support, z i ^ m i := by
      rw [hpow]
      ring
    _ = _ := by ring

/-- A nonzero common denominator preserves nonvanishing of the evaluation. -/
theorem clear_denominators_nonzero {σ : Type*} (P : MvPolynomial σ ℤ)
    (z : σ → ℚ) (Q : ℤ) (d : ℕ) (hQ : Q ≠ 0)
    (hdegree : P.totalDegree ≤ d)
    (hz : ∀ i, ∃ a : ℤ, (Q : ℚ) * z i = (a : ℚ))
    (hne : P.eval₂ (Int.castRingHom ℚ) z ≠ 0) :
    ∃ a : ℤ, a ≠ 0 ∧ (Q : ℚ) ^ d * P.eval₂ (Int.castRingHom ℚ) z = (a : ℚ) := by
  obtain ⟨a, ha⟩ := clear_denominators P z Q d hdegree hz
  refine ⟨a, ?_, ha⟩
  intro hzero
  have hQ' : (Q : ℚ) ≠ 0 := by exact_mod_cast hQ
  have : (Q : ℚ) ^ d * P.eval₂ (Int.castRingHom ℚ) z ≠ 0 :=
    mul_ne_zero (pow_ne_zero _ hQ') hne
  apply this
  simpa [hzero] using ha

/-- The cleared nonzero evaluation has absolute value at least one. -/
theorem one_le_abs_cleared_evaluation {σ : Type*} (P : MvPolynomial σ ℤ)
    (z : σ → ℚ) (Q : ℤ) (d : ℕ) (hQ : Q ≠ 0)
    (hdegree : P.totalDegree ≤ d)
    (hz : ∀ i, ∃ a : ℤ, (Q : ℚ) * z i = (a : ℚ))
    (hne : P.eval₂ (Int.castRingHom ℚ) z ≠ 0) :
    1 ≤ |(Q : ℚ) ^ d * P.eval₂ (Int.castRingHom ℚ) z| := by
  obtain ⟨a, hane, ha⟩ := clear_denominators_nonzero P z Q d hQ hdegree hz hne
  rw [ha]
  have habs : (1 : ℤ) ≤ |a| := by
    have : (0 : ℤ) < |a| := abs_pos.mpr hane
    omega
  exact_mod_cast habs

/-- Arithmetic consequence for the primitive polynomial in the seven-value
determinant argument. Primitivity is not needed for denominator clearing itself. -/
theorem primitive_specialization_nonzero_integer (n : ℕ)
    (P : MvPolynomial (Fin 7) ℤ) (z : Fin 7 → ℚ) (Q : ℤ) (hQ : Q ≠ 0)
    (hdegree : P.totalDegree ≤ 2 * n)
    (hz : ∀ i, ∃ a : ℤ, (Q : ℚ) * z i = (a : ℚ))
    (hne : P.eval₂ (Int.castRingHom ℚ) z ≠ 0) :
    ∃ a : ℤ, a ≠ 0 ∧
      (Q : ℚ) ^ (2 * n) * P.eval₂ (Int.castRingHom ℚ) z = (a : ℚ) :=
  clear_denominators_nonzero P z Q (2 * n) hQ hdegree hz hne

/-- A supplied nonzero determinant and its primitive normalization identity imply
the nonzero integer consequence. The determinant identity and degree estimate
are hypotheses, not claims about any particular zeta construction. -/
theorem primitive_determinant_nonzero_integer (n : ℕ)
    (P : MvPolynomial (Fin 7) ℤ) (z : Fin 7 → ℚ) (Q D g : ℤ) (delta : ℚ)
    (hQ : Q ≠ 0) (hdegree : P.totalDegree ≤ 2 * n)
    (hz : ∀ i, ∃ a : ℤ, (Q : ℚ) * z i = (a : ℚ))
    (hdet : delta = (g : ℚ) / (D : ℚ) ^ (2 * n) * P.eval₂ (Int.castRingHom ℚ) z)
    (hne : delta ≠ 0) :
    ∃ a : ℤ, a ≠ 0 ∧
      (Q : ℚ) ^ (2 * n) * P.eval₂ (Int.castRingHom ℚ) z = (a : ℚ) := by
  apply primitive_specialization_nonzero_integer n P z Q hQ hdegree hz
  intro hzero
  apply hne
  simpa [hzero] using hdet

/-- A nonzero scalar normalization preserves the exact total degree, including
when the normalized polynomial is zero. -/
theorem normalized_integral_totalDegree {σ : Type*} (P : MvPolynomial σ ℤ)
    (F : MvPolynomial σ ℚ) (c : ℚ) (hc : c ≠ 0)
    (hnorm : F = MvPolynomial.C c * P.map (Int.castRingHom ℚ)) :
    P.totalDegree = F.totalDegree := by
  have hs : F.support = P.support := by
    rw [hnorm, MvPolynomial.C_mul', MvPolynomial.support_smul_eq hc,
      MvPolynomial.support_map_of_injective P Int.cast_injective]
  simp only [MvPolynomial.totalDegree, hs]

/-- Evaluation preserves the supplied polynomial normalization identity. -/
theorem normalized_integral_eval {σ : Type*} (P : MvPolynomial σ ℤ)
    (F : MvPolynomial σ ℚ) (c : ℚ)
    (hnorm : F = MvPolynomial.C c * P.map (Int.castRingHom ℚ)) (z : σ → ℚ) :
    MvPolynomial.eval z F = c * P.eval₂ (Int.castRingHom ℚ) z := by
  simp only [hnorm, MvPolynomial.eval_mul, MvPolynomial.eval_C, MvPolynomial.eval_map]

/-- An integral scalar normalization of an affine determinant has degree at most
its rank. The degree bound is derived from the entries, not assumed for `P`. -/
theorem normalized_determinant_degree_le {r : ℕ}
    (H : Matrix (Fin r) (Fin r) SevenPolynomial) (P : MvPolynomial (Fin 7) ℤ)
    (c : ℚ) (hc : c ≠ 0) (hH : ∀ i j, (H i j).totalDegree ≤ 1)
    (hnorm : H.det = MvPolynomial.C c * P.map (Int.castRingHom ℚ)) :
    P.totalDegree ≤ r := by
  rw [normalized_integral_totalDegree P H.det c hc hnorm]
  exact determinant_degree_le H hH

/-- The primitive normalization of the same moment determinant has degree at
most `2 * n`, without a separate degree hypothesis on the integral polynomial. -/
theorem normalized_momentMatrix_degree (n : ℕ)
    (a : Matrix (Fin (2 * n)) (Fin (2 * n)) ℚ)
    (b : Fin 7 → Matrix (Fin (2 * n)) (Fin (2 * n)) ℚ)
    (P : MvPolynomial (Fin 7) ℤ) (c : ℚ) (hc : c ≠ 0)
    (hnorm : (momentMatrix n a b).det =
      MvPolynomial.C c * P.map (Int.castRingHom ℚ)) :
    P.totalDegree ≤ 2 * n := by
  rw [normalized_integral_totalDegree P _ c hc hnorm]
  exact momentMatrix_degree n a b

/-- The numeric determinant, polynomial degree, and integer witness all refer
to the same affine moment matrix. No zeta or analytic input is asserted. -/
theorem normalized_momentMatrix_nonzero_integer (n : ℕ)
    (a : Matrix (Fin (2 * n)) (Fin (2 * n)) ℚ)
    (b : Fin 7 → Matrix (Fin (2 * n)) (Fin (2 * n)) ℚ)
    (P : MvPolynomial (Fin 7) ℤ) (c : ℚ) (hc : c ≠ 0)
    (hnorm : (momentMatrix n a b).det =
      MvPolynomial.C c * P.map (Int.castRingHom ℚ))
    (z : Fin 7 → ℚ) (Q : ℤ) (hQ : Q ≠ 0)
    (hz : ∀ i, ∃ k : ℤ, (Q : ℚ) * z i = (k : ℚ))
    (hne : Matrix.det (fun i j => a i j + ∑ k, b k i j * z k) ≠ 0) :
    ∃ k : ℤ, k ≠ 0 ∧
      (Q : ℚ) ^ (2 * n) * P.eval₂ (Int.castRingHom ℚ) z = (k : ℚ) := by
  apply primitive_specialization_nonzero_integer n P z Q hQ
    (normalized_momentMatrix_degree n a b P c hc hnorm) hz
  intro hzero
  apply hne
  rw [← momentMatrix_eval n a b z, normalized_integral_eval P _ c hnorm z, hzero,
    mul_zero]

end OddZetaMixed

#print axioms OddZetaMixed.common_denominator_exists
#print axioms OddZetaMixed.list_common_denominator_exists
#print axioms OddZetaMixed.clear_denominators
#print axioms OddZetaMixed.clear_denominators_nonzero
#print axioms OddZetaMixed.one_le_abs_cleared_evaluation
#print axioms OddZetaMixed.primitive_specialization_nonzero_integer
#print axioms OddZetaMixed.primitive_determinant_nonzero_integer
#print axioms OddZetaMixed.normalized_integral_totalDegree
#print axioms OddZetaMixed.normalized_integral_eval
#print axioms OddZetaMixed.normalized_determinant_degree_le
#print axioms OddZetaMixed.normalized_momentMatrix_degree
#print axioms OddZetaMixed.normalized_momentMatrix_nonzero_integer
