import OddZetaMixed.H158Residues
import OddZetaMixed.ZetaTail

/-!
# Real evaluation of the actual h158 partial fractions

Evaluation is taken only to the right of every pole.  The identity is obtained
from the cleared polynomial identity, so no evaluation of a rational function
at a pole or unproved analytic decomposition is used.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

def h158EntryReal (n i j : ℕ) (x : ℝ) : ℝ :=
  aeval x (C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j) /
    aeval x (h158Denominator n)

theorem h158_pole_translate_pos (n k : ℕ) (hk : k ∈ h158PoleSet n)
    (x : ℝ) (hx : -(53*(n:ℝ)+1) < x) : 0 < x+(k:ℝ) := by
  have hb := (h158_pole_address_bounds n k hk).1
  have hb' : 53*(n:ℝ)+1 ≤ (k:ℝ) := by exact_mod_cast hb
  linarith

theorem h158_denominator_eval_pos (n : ℕ) (x : ℝ)
    (hx : -(53*(n:ℝ)+1) < x) : 0 < aeval x (h158Denominator n) := by
  rw [h158_denominator_powers]
  simp only [map_prod, map_pow, map_add, aeval_X, map_natCast]
  exact Finset.prod_pos fun k hk => pow_pos (h158_pole_translate_pos n k hk x hx) _

theorem h158PoleComplement_eval (n k l : ℕ) (hk : k ∈ h158PoleSet n)
    (hl : l < h158PoleOrder n k) (x : ℝ) (hx : -(53*(n:ℝ)+1) < x) :
    aeval x (h158PoleComplement n k l) =
      aeval x (h158Denominator n)/(x+(k:ℝ))^(l+1) := by
  have h := congrArg (fun P : ℚ[X] => aeval x P) (h158PoleComplement_mul n k l hk hl)
  simp only [map_mul, map_pow, map_add, aeval_X, map_natCast] at h
  exact (eq_div_iff (pow_ne_zero _ (ne_of_gt (h158_pole_translate_pos n k hk x hx)))).mpr
    (by simpa only [mul_comm] using h)

/-- Pointwise partial fractions for every real point in the summation half-line. -/
theorem h158EntryReal_partial_fractions (n : ℕ) (i j : Fin (2*n))
    (x : ℝ) (hx : -(53*(n:ℝ)+1) < x) :
    h158EntryReal n i j x = ∑ k ∈ h158PoleSet n, ∑ l,
      (h158PrincipalCoefficients n i j k l : ℝ)/(x+(k:ℝ))^(l.val+1) := by
  unfold h158EntryReal
  rw [h158_cleared_partial_fractions]
  simp only [map_sum, map_mul, aeval_C, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro k hk
  apply Finset.sum_congr rfl
  intro l hl
  rw [h158PoleComplement_eval n k l.val hk l.isLt x hx]
  have hd := ne_of_gt (h158_denominator_eval_pos n x hx)
  have hp := pow_ne_zero (l.val+1) (ne_of_gt (h158_pole_translate_pos n k hk x hx))
  field_simp
  simp

theorem h158_summation_point_in_halfline (n v : ℕ) :
    -(53*(n:ℝ)+1) < (v:ℝ)-48*(n:ℝ) := by
  have hn : (0:ℝ) ≤ n := Nat.cast_nonneg n
  have hv : (0:ℝ) ≤ v := Nat.cast_nonneg v
  linarith

theorem h158EntryReal_partial_fractions_at_index (n : ℕ) (i j : Fin (2*n)) (v : ℕ) :
    h158EntryReal n i j ((v:ℝ)-48*(n:ℝ)) = ∑ k ∈ h158PoleSet n, ∑ l,
      (h158PrincipalCoefficients n i j k l : ℝ)/
        ((v:ℝ)-48*(n:ℝ)+(k:ℝ))^(l.val+1) :=
  h158EntryReal_partial_fractions n i j _ (h158_summation_point_in_halfline n v)

end OddZetaMixed
