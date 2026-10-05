import OddZetaMixed.H158Residues
import Mathlib.NumberTheory.Padics.PadicVal.Basic

/-!
# The actual highest unreduced pole-order coefficient

Evaluation of the proved cleared partial-fraction identity isolates the highest
unreduced pole order. Its cofactor is nonzero at the pole, but the coefficient
itself may vanish, in particular at the center of the h158 reflection.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

/-- The coefficient index for the highest order in the unreduced denominator. -/
def h158TopPoleIndex (n k : ℕ) (hk : k ∈ h158PoleSet n) : Fin (h158PoleOrder n k) :=
  ⟨h158PoleOrder n k - 1, by have := h158_pole_order_positive n k hk; omega⟩

/-- The pole cofactor evaluates to the product of the actual integer address differences. -/
theorem h158PoleComplement_top_eval (n k : ℕ) (hk : k ∈ h158PoleSet n) :
    (h158PoleComplement n k (h158PoleOrder n k - 1)).eval (-(k : ℚ)) =
      ∏ a ∈ (h158PoleSet n).erase k, ((a : ℚ) - k) ^ h158PoleOrder n a := by
  have hr := h158_pole_order_positive n k hk
  have he : h158PoleOrder n k - (h158PoleOrder n k - 1 + 1) = 0 := by omega
  rw [h158PoleComplement, he, pow_zero, one_mul]
  simp [eval_prod, sub_eq_add_neg, add_comm]

/-- No other pole address equals `k`, so the top-order cofactor is nonzero at `-k`. -/
theorem h158PoleComplement_top_eval_ne_zero (n k : ℕ) (hk : k ∈ h158PoleSet n) :
    (h158PoleComplement n k (h158PoleOrder n k - 1)).eval (-(k : ℚ)) ≠ 0 := by
  rw [h158PoleComplement_top_eval n k hk]
  apply Finset.prod_ne_zero_iff.mpr
  intro a ha
  apply pow_ne_zero
  intro h
  have hak : a = k := by exact_mod_cast sub_eq_zero.mp h
  exact (Finset.mem_erase.mp ha).1 hak

private theorem h158PoleComplement_eval_other (n k a l : ℕ)
    (hk : k ∈ h158PoleSet n) (hak : a ≠ k) :
    (h158PoleComplement n a l).eval (-(k : ℚ)) = 0 := by
  rw [h158PoleComplement, eval_mul]
  have hz : (∏ b ∈ (h158PoleSet n).erase a,
      (X + C (b : ℚ)) ^ h158PoleOrder n b).eval (-(k : ℚ)) = 0 := by
    rw [eval_prod]
    apply Finset.prod_eq_zero (Finset.mem_erase.mpr ⟨Ne.symm hak, hk⟩)
    simp [Nat.ne_of_gt (h158_pole_order_positive n k hk)]
  rw [hz, mul_zero]

private theorem h158PoleComplement_eval_below (n k l : ℕ)
    (hl : l + 1 < h158PoleOrder n k) :
    (h158PoleComplement n k l).eval (-(k : ℚ)) = 0 := by
  have he : h158PoleOrder n k - (l + 1) ≠ 0 := by omega
  simp [h158PoleComplement, he]

/-- Evaluating the actual cleared identity kills all terms except the highest
unreduced pole-order coefficient at the selected pole. -/
theorem h158PrincipalCoefficients_top_mul_cofactor (n k : ℕ) (i j : Fin (2 * n))
    (hk : k ∈ h158PoleSet n) :
    h158PrincipalCoefficients n i j k (h158TopPoleIndex n k hk) *
        (h158PoleComplement n k (h158PoleOrder n k - 1)).eval (-(k : ℚ)) =
      (C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j).eval
        (-(k : ℚ)) := by
  have h := congrArg (Polynomial.eval (-(k : ℚ))) (h158_cleared_partial_fractions n i j)
  simp only [eval_finsetSum, eval_mul, eval_C] at h
  have hsum : (∑ a ∈ h158PoleSet n, ∑ l,
      h158PrincipalCoefficients n i j a l * (h158PoleComplement n a l.val).eval (-(k : ℚ))) =
      h158PrincipalCoefficients n i j k (h158TopPoleIndex n k hk) *
        (h158PoleComplement n k (h158PoleOrder n k - 1)).eval (-(k : ℚ)) := by
    rw [Finset.sum_eq_single k]
    · rw [Finset.sum_eq_single (h158TopPoleIndex n k hk)]
      · rfl
      · intro l _ hne
        have hval : l.val ≠ h158PoleOrder n k - 1 := by
          intro he
          apply hne
          exact Fin.ext he
        have hl : l.val + 1 < h158PoleOrder n k := by have := l.isLt; omega
        rw [h158PoleComplement_eval_below n k l.val hl, mul_zero]
      · simp
    · intro a _ hak
      apply Finset.sum_eq_zero
      intro l _
      rw [h158PoleComplement_eval_other n k a l.val hk hak, mul_zero]
    · exact fun hnot => (hnot hk).elim
  rw [hsum] at h
  simpa only [eval_mul, eval_C] using h.symm

/-- The actual chosen highest-order coefficient is the original normalized entry
numerator evaluated at the pole, divided by its nonzero pole cofactor. No
nonvanishing of the numerator or of this coefficient is assumed. -/
theorem h158PrincipalCoefficients_top_eq (n k : ℕ) (i j : Fin (2 * n))
    (hk : k ∈ h158PoleSet n) :
    h158PrincipalCoefficients n i j k (h158TopPoleIndex n k hk) =
      (C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j).eval
          (-(k : ℚ)) /
        (h158PoleComplement n k (h158PoleOrder n k - 1)).eval (-(k : ℚ)) := by
  apply (eq_div_iff (h158PoleComplement_top_eval_ne_zero n k hk)).mpr
  exact h158PrincipalCoefficients_top_mul_cofactor n k i j hk

/-- The top unreduced coefficient at the reflection center vanishes; the
cofactor remains nonzero there. This retains the actual central cancellation. -/
theorem h158PrincipalCoefficients_top_center (n : ℕ) (i j : Fin (2 * n))
    (hk : 79 * n + 1 ∈ h158PoleSet n) :
    h158PrincipalCoefficients n i j (79 * n + 1) (h158TopPoleIndex n (79 * n + 1) hk) = 0 := by
  rw [h158PrincipalCoefficients_top_eq n (79 * n + 1) i j hk]
  simp [h158Numerator]

private theorem h158_pole_difference_padicValRat_zero (n p a k : ℕ)
    (ha : a ∈ h158PoleSet n) (hk : k ∈ h158PoleSet n) (hak : a ≠ k)
    (hp : 52 * n < p) : padicValRat p ((a : ℚ) - k) = 0 := by
  have hab := h158_pole_address_bounds n a ha
  have hkb := h158_pole_address_bounds n k hk
  by_cases hka : k ≤ a
  · have hnot : ¬ p ∣ a - k := Nat.not_dvd_of_pos_of_lt (by omega) (by omega)
    rw [← Nat.cast_sub hka, padicValRat.of_nat, padicValNat.eq_zero_of_not_dvd hnot]
    rfl
  · have hak' : a ≤ k := by omega
    have he : (a : ℚ) - k = -((k - a : ℕ) : ℚ) := by
      rw [Nat.cast_sub hak']
      ring
    have hnot : ¬ p ∣ k - a := Nat.not_dvd_of_pos_of_lt (by omega) (by omega)
    rw [he, padicValRat.neg, padicValRat.of_nat, padicValNat.eq_zero_of_not_dvd hnot]
    rfl

/-- The actual top-order pole cofactor is a p-unit for every prime `p > 52n`.
Its nonvanishing is proved separately, so this does not use the zero convention
of `padicValRat` to assert a unit property. -/
theorem h158PoleComplement_top_padicValRat (n k p : ℕ) (hk : k ∈ h158PoleSet n)
    (hp : p.Prime) (hlarge : 52 * n < p) :
    padicValRat p
      ((h158PoleComplement n k (h158PoleOrder n k - 1)).eval (-(k : ℚ))) = 0 := by
  let : Fact p.Prime := ⟨hp⟩
  rw [h158PoleComplement_top_eval n k hk]
  have hprod : (∏ a ∈ (h158PoleSet n).erase k, ((a : ℚ) - k) ^ h158PoleOrder n a) ≠ 0 ∧
      padicValRat p
        (∏ a ∈ (h158PoleSet n).erase k, ((a : ℚ) - k) ^ h158PoleOrder n a) = 0 := by
    apply Finset.prod_induction _ (fun q : ℚ => q ≠ 0 ∧ padicValRat p q = 0)
    · intro a b ha hb
      exact ⟨mul_ne_zero ha.1 hb.1, by rw [padicValRat.mul ha.1 hb.1, ha.2, hb.2, add_zero]⟩
    · simp
    · intro a ha
      have hak : a ≠ k := (Finset.mem_erase.mp ha).1
      have hdiff : (a : ℚ) - k ≠ 0 := by
        intro h
        apply hak
        exact_mod_cast sub_eq_zero.mp h
      refine ⟨pow_ne_zero _ hdiff, ?_⟩
      rw [padicValRat.pow, h158_pole_difference_padicValRat_zero n p a k
        (Finset.mem_erase.mp ha).2 hk hak hlarge, mul_zero]
  exact hprod.2

#print axioms h158PoleComplement_top_eval_ne_zero
#print axioms h158PrincipalCoefficients_top_eq
#print axioms h158PrincipalCoefficients_top_center
#print axioms h158PoleComplement_top_padicValRat

end OddZetaMixed
