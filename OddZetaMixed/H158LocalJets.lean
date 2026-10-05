import OddZetaMixed.H158TopCoefficient
import Mathlib.Algebra.Polynomial.Taylor

/-!
# Exact local polynomial jets of the actual h158 entries

The denominator is the original unreduced denominator. Its complete principal
coefficients, including zero top coefficients, are retained. Congruence modulo
the pole power is derived from the actual cleared identity, not assumed.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

def h158LocalPrincipal (n : ℕ) (i j : Fin (2*n)) (k : ℕ) : ℚ[X] :=
  ∑ l : Fin (h158PoleOrder n k),
    monomial (h158PoleOrder n k - (l.val+1)) (h158PrincipalCoefficients n i j k l)

def h158LocalCofactor (n k : ℕ) : ℚ[X] :=
  taylor (-(k : ℚ)) (∏ a ∈ (h158PoleSet n).erase k,
    (X+C (a : ℚ))^h158PoleOrder n a)

def h158LocalNumerator (n : ℕ) (i j : Fin (2*n)) (k : ℕ) : ℚ[X] :=
  taylor (-(k : ℚ))
    (C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j)

theorem taylor_at_negative_linear (k : ℕ) :
    taylor (-(k : ℚ)) (X+C (k : ℚ)) = X := by
  simp only [map_add, taylor_X, taylor_C, add_assoc, ← C_add, neg_add_cancel,
    C_0, add_zero]

theorem h158LocalCofactor_zero (n k : ℕ) (hk : k ∈ h158PoleSet n) :
    (h158LocalCofactor n k).coeff 0 =
      (h158PoleComplement n k (h158PoleOrder n k-1)).eval (-(k : ℚ)) := by
  rw [h158LocalCofactor, taylor_coeff_zero, h158PoleComplement_top_eval n k hk]
  simp [eval_prod, sub_eq_add_neg, add_comm]

theorem h158LocalCofactor_zero_ne (n k : ℕ) (hk : k ∈ h158PoleSet n) :
    (h158LocalCofactor n k).coeff 0 ≠ 0 := by
  rw [h158LocalCofactor_zero n k hk]
  exact h158PoleComplement_top_eval_ne_zero n k hk

theorem h158LocalCofactor_zero_padicValRat (n k p : ℕ)
    (hk : k ∈ h158PoleSet n) (hp : p.Prime) (hlarge : 52*n < p) :
    padicValRat p ((h158LocalCofactor n k).coeff 0) = 0 := by
  rw [h158LocalCofactor_zero n k hk]
  exact h158PoleComplement_top_padicValRat n k p hk hp hlarge

private theorem shifted_other_complement_dvd (n k a l : ℕ)
    (hk : k ∈ h158PoleSet n) (hak : a ≠ k) :
    X ^ h158PoleOrder n k ∣ taylor (-(k : ℚ)) (h158PoleComplement n a l) := by
  have hmem : k ∈ (h158PoleSet n).erase a := mem_erase.mpr ⟨Ne.symm hak,hk⟩
  have hprod := Finset.dvd_prod_of_mem
    (fun b : ℕ => (X+C (b : ℚ))^h158PoleOrder n b) hmem
  have hdiv : (X+C (k : ℚ))^h158PoleOrder n k ∣ h158PoleComplement n a l :=
    dvd_mul_of_dvd_right hprod _
  have h := (taylorAlgHom (-(k : ℚ))).toRingHom.map_dvd hdiv
  change taylor (-(k : ℚ)) ((X+C (k : ℚ))^h158PoleOrder n k) ∣
    taylor (-(k : ℚ)) (h158PoleComplement n a l) at h
  simpa only [taylor_pow, taylor_at_negative_linear] using h

private theorem shifted_own_block (n : ℕ) (i j : Fin (2*n)) (k : ℕ) :
    (∑ l : Fin (h158PoleOrder n k), taylor (-(k : ℚ))
      (C (h158PrincipalCoefficients n i j k l)*h158PoleComplement n k l.val)) =
      h158LocalPrincipal n i j k * h158LocalCofactor n k := by
  simp only [h158LocalPrincipal, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro l hl
  simp only [h158PoleComplement, taylor_mul, taylor_C, taylor_pow,
    taylor_at_negative_linear, h158LocalCofactor, ← C_mul_X_pow_eq_monomial]
  ring

/-- The complete shifted numerator equals the local principal polynomial
times the local cofactor, modulo the FULL unreduced pole power. -/
theorem h158LocalPrincipal_congruence (n : ℕ) (i j : Fin (2*n)) (k : ℕ)
    (hk : k ∈ h158PoleSet n) :
    X ^ h158PoleOrder n k ∣
      h158LocalNumerator n i j k -
        h158LocalPrincipal n i j k * h158LocalCofactor n k := by
  have he := congrArg (taylor (-(k : ℚ))) (h158_cleared_partial_fractions n i j)
  simp only [map_sum] at he
  rw [← Finset.sum_erase_add _ _ hk, shifted_own_block] at he
  change X ^ h158PoleOrder n k ∣
    taylor (-(k : ℚ)) (C (h158Normalization n)*h158Numerator n*centeredMultiplier n i j) - _
  rw [he, add_sub_cancel_right]
  apply Finset.dvd_sum
  intro a ha
  apply Finset.dvd_sum
  intro l hl
  rw [taylor_mul]
  exact dvd_mul_of_dvd_right
    (shifted_other_complement_dvd n k a l.val hk (mem_erase.mp ha).1) _

/-- Every coefficient below the pole order is an exact convolution identity.
This includes all lower-order Laurent coefficients, not just the top residue. -/
theorem h158LocalPrincipal_coefficient_identity (n : ℕ) (i j : Fin (2*n))
    (k q : ℕ) (hk : k ∈ h158PoleSet n) (hq : q < h158PoleOrder n k) :
    (h158LocalNumerator n i j k).coeff q =
      (h158LocalPrincipal n i j k * h158LocalCofactor n k).coeff q := by
  have h := Polynomial.X_pow_dvd_iff.mp (h158LocalPrincipal_congruence n i j k hk) q hq
  simpa only [coeff_sub, sub_eq_zero] using h

theorem h158LocalPrincipal_coeff (n : ℕ) (i j : Fin (2*n)) (k : ℕ)
    (l : Fin (h158PoleOrder n k)) :
    (h158LocalPrincipal n i j k).coeff (h158PoleOrder n k-(l.val+1)) =
      h158PrincipalCoefficients n i j k l := by
  rw [h158LocalPrincipal, finsetSum_coeff]
  rw [Finset.sum_eq_single l]
  · simp
  · intro a ha hal
    have hne : h158PoleOrder n k-(a.val+1) ≠ h158PoleOrder n k-(l.val+1) := by
      intro he
      apply hal
      apply Fin.ext
      have ha' := a.isLt
      have hl' := l.isLt
      omega
    simp [coeff_monomial, hne]
  · simp

/-- Truncated division by a polynomial with invertible constant coefficient
preserves any specified rational subring. This is a finite induction, not a
formal inversion or a convergence assumption. -/
theorem coeff_mem_subring_of_truncated_product (S : Subring ℚ) (A B : ℚ[X])
    (r : ℕ) (hB : ∀ q < r, B.coeff q ∈ S)
    (hBinv : (B.coeff 0)⁻¹ ∈ S) (hB0 : B.coeff 0 ≠ 0)
    (hAB : ∀ q < r, (A*B).coeff q ∈ S) :
    ∀ q < r, A.coeff q ∈ S := by
  intro q
  induction q using Nat.strong_induction_on with
  | h q ih =>
    intro hq
    have he : (A*B).coeff q =
        (∑ v ∈ (Finset.antidiagonal q).erase (q,0), A.coeff v.1 * B.coeff v.2) +
          A.coeff q * B.coeff 0 := by
      rw [coeff_mul, ← Finset.sum_erase_add _ _ (by simp : (q,0) ∈ Finset.antidiagonal q)]
    have hs : (∑ v ∈ (Finset.antidiagonal q).erase (q,0),
        A.coeff v.1 * B.coeff v.2) ∈ S := by
      apply S.sum_mem
      intro v hv
      have hvn := Finset.mem_erase.mp hv
      have hvq := Finset.mem_antidiagonal.mp hvn.2
      have hvlt : v.1 < q := by
        by_contra hn
        have heq : v = (q,0) := by
          apply Prod.ext <;> omega
        exact hvn.1 heq
      exact S.mul_mem (ih v.1 hvlt (hvlt.trans hq)) (hB v.2 (by omega))
    have hm := S.mul_mem (S.sub_mem (hAB q hq) hs) hBinv
    rw [he, add_sub_cancel_left, mul_assoc, mul_inv_cancel₀ hB0, mul_one] at hm
    exact hm

/-- The actual full principal coefficient array inherits local integrality
from the shifted numerator and the invertible cofactor; no Laurent order is
dropped and the central zero coefficient is allowed. -/
theorem h158PrincipalCoefficients_mem_subring (S : Subring ℚ) (n : ℕ)
    (i j : Fin (2*n)) (k : ℕ) (hk : k ∈ h158PoleSet n)
    (hN : ∀ q < h158PoleOrder n k, (h158LocalNumerator n i j k).coeff q ∈ S)
    (hC : ∀ q < h158PoleOrder n k, (h158LocalCofactor n k).coeff q ∈ S)
    (hCinv : ((h158LocalCofactor n k).coeff 0)⁻¹ ∈ S)
    (l : Fin (h158PoleOrder n k)) : h158PrincipalCoefficients n i j k l ∈ S := by
  have h := coeff_mem_subring_of_truncated_product S
    (h158LocalPrincipal n i j k) (h158LocalCofactor n k)
    (h158PoleOrder n k) hC hCinv (h158LocalCofactor_zero_ne n k hk)
    (fun q hq => by rw [← h158LocalPrincipal_coefficient_identity n i j k q hk hq]; exact hN q hq)
  have hl : h158PoleOrder n k-(l.val+1) < h158PoleOrder n k := by
    have := l.isLt
    omega
  simpa only [h158LocalPrincipal_coeff] using h _ hl

end OddZetaMixed
