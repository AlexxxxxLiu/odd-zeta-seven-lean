import OddZetaMixed.H158Poles
import OddZetaMixed.ProperFractions

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

theorem constant_of_degree_lt_one (p : ℚ[X]) (hp : p.degree < 1) :
    p = C (p.coeff 0) := by
  have hcoeff := (degree_lt_iff_coeff_zero p 1).mp hp
  ext j
  by_cases hj : j=0
  · simp [hj]
  · simp [coeff_C, hj, hcoeff j (by omega)]

def h158PrincipalTerm (k l : ℕ) (a : ℚ) : RatFunc ℚ :=
  algebraMap ℚ[X] (RatFunc ℚ) (C a) /
    algebraMap ℚ[X] (RatFunc ℚ) ((X+C (k : ℚ))^(l+1))

/-- Actual finite partial fractions of a rank-2n entry. There is no quotient
polynomial and no assumed coefficient identity. The degree bound removes it. -/
theorem h158_partial_fractions (n : ℕ) (i j : Fin (2*n)) :
    ∃ b : (k : ℕ) → Fin (h158PoleOrder n k) → ℚ,
      matrixEntryKernel n i j =
        ∑ k ∈ h158PoleSet n, ∑ l, h158PrincipalTerm k l.val (b k l) := by
  let f := C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j
  let g : ℕ → ℚ[X] := fun k => X+C (k : ℚ)
  let gi : ℕ → RatFunc ℚ := fun k => (algebraMap ℚ[X] (RatFunc ℚ) (g k))⁻¹
  have hgi (k : ℕ) (_hk : k ∈ h158PoleSet n) :
      gi k * algebraMap ℚ[X] (RatFunc ℚ) (g k) = 1 := by
    apply inv_mul_cancel₀
    have hz := (monic_X_add_C (k : ℚ)).ne_zero
    simpa only [map_zero, g] using (IsFractionRing.injective ℚ[X] (RatFunc ℚ)).ne hz
  obtain ⟨q, r, hr, heq⟩ :=
    mul_prod_pow_inverse_eq_quo_add_sum_rem_mul_pow_inverse f
      (fun k (_ : k ∈ h158PoleSet n) => monic_X_add_C (k : ℚ))
      (h158_pole_factors_coprime n) (h158PoleOrder n) hgi
  let b : (k : ℕ) → Fin (h158PoleOrder n k) → ℚ := fun k l => (r k l).coeff 0
  have hconstant (k : ℕ) (hk : k ∈ h158PoleSet n) (l : Fin (h158PoleOrder n k)) :
      r k l = C (b k l) := by
    apply constant_of_degree_lt_one
    simpa only [degree_X_add_C] using hr k hk l
  have hprod : (∏ k ∈ h158PoleSet n, gi k ^ h158PoleOrder n k) =
      (algebraMap ℚ[X] (RatFunc ℚ) (h158Denominator n))⁻¹ := by
    rw [h158_denominator_powers, map_prod]
    simp only [gi, g, map_pow, Finset.prod_inv_distrib, inv_pow]
  have hleft : algebraMap ℚ[X] (RatFunc ℚ) f *
      ∏ k ∈ h158PoleSet n, gi k ^ h158PoleOrder n k = matrixEntryKernel n i j := by
    rw [hprod]
    simp only [f, map_mul, matrixEntryKernel, h158Kernel, div_eq_mul_inv]
    ring
  have hsum : (∑ k ∈ h158PoleSet n, ∑ l,
      algebraMap ℚ[X] (RatFunc ℚ) (r k l) * gi k ^ (l.val+1)) =
      ∑ k ∈ h158PoleSet n, ∑ l, h158PrincipalTerm k l.val (b k l) := by
    apply Finset.sum_congr rfl
    intro k hk
    apply Finset.sum_congr rfl
    intro l hl
    rw [hconstant k hk l]
    simp only [h158PrincipalTerm, gi, g, div_eq_mul_inv, map_pow, inv_pow]
  rw [hleft, hsum] at heq
  have hf : StrictlyProper (matrixEntryKernel n i j) := Or.inr (by
    have hdeg := rank_two_entry_degree_bound n i j
    have := Int.natCast_nonneg n
    omega)
  have hs : StrictlyProper (∑ k ∈ h158PoleSet n, ∑ l,
      h158PrincipalTerm k l.val (b k l)) := by
    apply strictlyProper_sum
    intro k hk
    apply strictlyProper_sum
    intro l hl
    exact strictlyProper_principal _ _ _
  have hq := quotient_eq_zero_of_strictlyProper _ _ _ hf hs heq
  exact ⟨b, by simpa only [hq, map_zero, zero_add] using heq⟩

def h158PrincipalCoefficients (n : ℕ) (i j : Fin (2*n)) :
    (k : ℕ) → Fin (h158PoleOrder n k) → ℚ :=
  Classical.choose (h158_partial_fractions n i j)

theorem h158PrincipalCoefficients_spec (n : ℕ) (i j : Fin (2*n)) :
    matrixEntryKernel n i j = ∑ k ∈ h158PoleSet n, ∑ l,
      h158PrincipalTerm k l.val (h158PrincipalCoefficients n i j k l) :=
  Classical.choose_spec (h158_partial_fractions n i j)

theorem h158_principal_coefficients_unique (n : ℕ)
    (a b : (k : ℕ) → Fin (h158PoleOrder n k) → ℚ)
    (h : (∑ k ∈ h158PoleSet n, ∑ l, h158PrincipalTerm k l.val (a k l)) =
      ∑ k ∈ h158PoleSet n, ∑ l, h158PrincipalTerm k l.val (b k l)) :
    ∀ k ∈ h158PoleSet n, a k = b k := by
  let gi : ℕ → RatFunc ℚ := fun k =>
    (algebraMap ℚ[X] (RatFunc ℚ) (X+C (k : ℚ)))⁻¹
  have hgi (k : ℕ) (_hk : k ∈ h158PoleSet n) :
      gi k * algebraMap ℚ[X] (RatFunc ℚ) (X+C (k : ℚ)) = 1 := by
    apply inv_mul_cancel₀
    simpa only [map_zero] using (IsFractionRing.injective ℚ[X] (RatFunc ℚ)).ne
      (monic_X_add_C (k : ℚ)).ne_zero
  have hc (c : ℚ) (k : ℕ) : (C c).degree < (X+C (k : ℚ)).degree :=
    degree_C_le.trans_lt (by rw [degree_X_add_C]; norm_num)
  have heq : algebraMap ℚ[X] (RatFunc ℚ) 0 +
      (∑ k ∈ h158PoleSet n, ∑ l, algebraMap ℚ[X] (RatFunc ℚ) (C (a k l)) *
        gi k ^ (l.val+1)) = algebraMap ℚ[X] (RatFunc ℚ) 0 +
      ∑ k ∈ h158PoleSet n, ∑ l, algebraMap ℚ[X] (RatFunc ℚ) (C (b k l)) *
        gi k ^ (l.val+1) := by
    simpa only [map_zero, zero_add, h158PrincipalTerm, gi, div_eq_mul_inv,
      map_pow, inv_pow] using h
  have hu := quo_add_sum_rem_mul_pow_inverse_unique
    (fun k (_ : k ∈ h158PoleSet n) => monic_X_add_C (k : ℚ))
    (h158_pole_factors_coprime n) hgi (fun k hk l => hc (a k l) k)
      (fun k hk l => hc (b k l) k) heq
  intro k hk
  funext l
  have hl := congrArg (fun f : Fin (h158PoleOrder n k) → ℚ[X] => (f l).coeff 0)
    (hu.2 k hk)
  simpa using hl

end OddZetaMixed
