import OddZetaMixed.H158PartialFractions

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

def h158PoleComplement (n k l : ℕ) : ℚ[X] :=
  (X+C (k : ℚ))^(h158PoleOrder n k-(l+1)) *
    ∏ a ∈ (h158PoleSet n).erase k, (X+C (a : ℚ))^(h158PoleOrder n a)

theorem h158PoleComplement_monic (n k l : ℕ) : (h158PoleComplement n k l).Monic := by
  apply ((monic_X_add_C _).pow _).mul
  apply monic_prod_of_monic
  intro a ha
  exact (monic_X_add_C _).pow _

theorem h158PoleComplement_mul (n k l : ℕ) (hk : k ∈ h158PoleSet n)
    (hl : l < h158PoleOrder n k) :
    (X+C (k : ℚ))^(l+1) * h158PoleComplement n k l = h158Denominator n := by
  rw [h158PoleComplement, ← mul_assoc, ← pow_add, Nat.add_sub_of_le (by omega)]
  exact (Finset.mul_prod_erase (h158PoleSet n)
    (fun a : ℕ => (X+C (a : ℚ))^(h158PoleOrder n a)) hk).trans
      (h158_denominator_powers n).symm

theorem h158PoleComplement_degree (n k l : ℕ) (hk : k ∈ h158PoleSet n)
    (hl : l < h158PoleOrder n k) :
    (h158PoleComplement n k l).natDegree + (l+1) = 592*n+16 := by
  have h := congrArg Polynomial.natDegree (h158PoleComplement_mul n k l hk hl)
  rw [natDegree_mul ((monic_X_add_C _).pow _).ne_zero
    (h158PoleComplement_monic n k l).ne_zero,
    (monic_X_add_C _).natDegree_pow, natDegree_X_add_C, mul_one,
    h158Denominator_degree] at h
  omega

theorem h158PrincipalTerm_clear (n k l : ℕ) (hk : k ∈ h158PoleSet n)
    (hl : l < h158PoleOrder n k) (a : ℚ) :
    algebraMap ℚ[X] (RatFunc ℚ) (h158Denominator n) * h158PrincipalTerm k l a =
      algebraMap ℚ[X] (RatFunc ℚ) (C a * h158PoleComplement n k l) := by
  have hne : algebraMap ℚ[X] (RatFunc ℚ) ((X+C (k : ℚ))^(l+1)) ≠ 0 := by
    simpa only [map_zero] using (IsFractionRing.injective ℚ[X] (RatFunc ℚ)).ne
      ((monic_X_add_C (k : ℚ)).pow (l+1)).ne_zero
  rw [← h158PoleComplement_mul n k l hk hl]
  simp only [map_mul, h158PrincipalTerm]
  field_simp

/-- Clearing the actual partial-fraction identity gives an identity in Q[X]. -/
theorem h158_cleared_partial_fractions (n : ℕ) (i j : Fin (2*n)) :
    C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j =
      ∑ k ∈ h158PoleSet n, ∑ l,
        C (h158PrincipalCoefficients n i j k l) * h158PoleComplement n k l.val := by
  apply IsFractionRing.injective ℚ[X] (RatFunc ℚ)
  have h := congrArg (fun f : RatFunc ℚ =>
    algebraMap ℚ[X] (RatFunc ℚ) (h158Denominator n) * f)
      (h158PrincipalCoefficients_spec n i j)
  have hd : algebraMap ℚ[X] (RatFunc ℚ) (h158Denominator n) ≠ 0 := by
    simpa only [map_zero] using (IsFractionRing.injective ℚ[X] (RatFunc ℚ)).ne
      (h158Denominator_monic n).ne_zero
  simp only [Finset.mul_sum] at h
  have heach : (∑ k ∈ h158PoleSet n, ∑ l,
      algebraMap ℚ[X] (RatFunc ℚ) (h158Denominator n) *
      h158PrincipalTerm k l.val (h158PrincipalCoefficients n i j k l)) =
      algebraMap ℚ[X] (RatFunc ℚ) (∑ k ∈ h158PoleSet n, ∑ l,
        C (h158PrincipalCoefficients n i j k l) * h158PoleComplement n k l.val) := by
    simp only [map_sum]
    apply Finset.sum_congr rfl
    intro k hk
    apply Finset.sum_congr rfl
    intro l hl
    exact h158PrincipalTerm_clear n k l.val hk l.isLt _
  rw [heach] at h
  calc
    _ = algebraMap ℚ[X] (RatFunc ℚ) (h158Denominator n) * matrixEntryKernel n i j := by
      simp only [matrixEntryKernel, h158Kernel, map_mul]
      field_simp
    _ = _ := h

theorem h158PoleComplement_top_coeff (n k l : ℕ) (hk : k ∈ h158PoleSet n)
    (hl : l < h158PoleOrder n k) :
    (h158PoleComplement n k l).coeff (592*n+15) = if l=0 then 1 else 0 := by
  have hd := h158PoleComplement_degree n k l hk hl
  by_cases hl0 : l=0
  · rw [ite_eq_left_iff.mpr (fun h => (h hl0).elim)]
    have he : (h158PoleComplement n k l).natDegree = 592*n+15 := by omega
    rw [← he]
    exact (h158PoleComplement_monic n k l).coeff_natDegree
  · rw [ite_eq_right_iff.mpr (fun h => (hl0 h).elim)]
    exact coeff_eq_zero_of_natDegree_lt (by omega)

theorem h158_entry_numerator_top_coeff (n : ℕ) (i j : Fin (2*n)) :
    (C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j).coeff
      (592*n+15) = 0 := by
  apply coeff_eq_zero_of_natDegree_lt
  rw [natDegree_mul
    (mul_ne_zero (by simpa using h158Normalization_ne_zero n) (h158Numerator_monic n).ne_zero)
    (centeredMultiplier_ne_zero n i j), natDegree_C_mul (h158Normalization_ne_zero n),
    h158Numerator_degree, centeredMultiplier_degree]
  have hi := i.isLt
  have hj := j.isLt
  omega

/-- The simple-pole coefficient sum vanishes, so the fourth derivative's
potential zeta(5) term cancels for the actual matrix entries. -/
theorem h158_residue_sum_zero (n : ℕ) (i j : Fin (2*n)) :
    (∑ k ∈ h158PoleSet n, ∑ l,
      if l.val=0 then h158PrincipalCoefficients n i j k l else 0) = 0 := by
  have h := congrArg (fun p : ℚ[X] => p.coeff (592*n+15))
    (h158_cleared_partial_fractions n i j)
  rw [h158_entry_numerator_top_coeff] at h
  simp only [finsetSum_coeff, coeff_C_mul] at h
  symm
  convert h using 1
  apply Finset.sum_congr rfl
  intro k hk
  apply Finset.sum_congr rfl
  intro l hl
  rw [h158PoleComplement_top_coeff n k l.val hk l.isLt]
  split_ifs <;> simp

end OddZetaMixed
