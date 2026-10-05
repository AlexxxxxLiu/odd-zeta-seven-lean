import OddZetaMixed.KernelBasis
import Mathlib.Algebra.BigOperators.Intervals

/-!
# Reflection of the actual h158 kernel

The reflection is `X ↦ -X - (158n + 2)`, centered at `-(79n + 1)`.
Rising-factorial reflection proves the numerator odd and denominator even directly
from their five and sixteen blocks, respectively, for every natural number `n`.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

/-- Reversing all `k` linear factors gives the exact rising-factorial reflection. -/
theorem rising_reflection (a s : ℚ) (k : ℕ) :
    (rising a k).comp (-X - C s) =
      (-1 : ℚ[X]) ^ k * rising (s - a - k + 1) k := by
  simp only [rising, Polynomial.prod_comp, add_comp, X_comp, C_comp]
  calc
    ∏ j ∈ range k, (-X - C s + C (a + j)) =
        ∏ j ∈ range k,
          (-1 : ℚ[X]) * (X + C (s - a - k + 1 + (k - 1 - j : ℕ))) := by
      apply Finset.prod_congr rfl
      intro j hj
      have hjk : j < k := mem_range.mp hj
      have hcast : ((k - 1 - j : ℕ) : ℚ) = (k : ℚ) - 1 - j := by
        rw [Nat.cast_sub (by omega : j ≤ k - 1),
          Nat.cast_sub (by omega : 1 ≤ k), Nat.cast_one]
      rw [hcast]
      simp only [map_add, map_sub, map_one]
      ring
    _ = (-1 : ℚ[X]) ^ k * ∏ j ∈ range k, (X + C (s - a - k + 1 + j)) := by
      rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_range,
        Finset.prod_range_reflect (fun j : ℕ => (X : ℚ[X]) + C (s - a - k + 1 + j)) k]

/-- A pair of rising blocks with reflected endpoints is reflection-even. -/
theorem rising_pair_reflection (s : ℚ) (k : ℕ) :
    (rising 1 k * rising (s - k) k).comp (-X - C s) =
      rising 1 k * rising (s - k) k := by
  rw [mul_comp, rising_reflection, rising_reflection,
    show s - 1 - k + 1 = s - k by ring,
    show s - (s - k) - k + 1 = (1 : ℚ) by ring]
  have hsign : (-1 : ℚ[X]) ^ k * (-1 : ℚ[X]) ^ k = 1 := by
    rw [← mul_pow]
    simp
  calc
    _ = ((-1 : ℚ[X]) ^ k * (-1 : ℚ[X]) ^ k) *
        (rising 1 k * rising (s - k) k) := by ring
    _ = _ := by rw [hsign, one_mul]

/-- All five paired numerator blocks are reflection-even; the central factor is odd. -/
theorem h158Numerator_reflection (n : ℕ) :
    (h158Numerator n).comp (-X - C (158 * (n : ℚ) + 2)) = -h158Numerator n := by
  have hcenter : (X + C (79 * (n : ℚ) + 1)).comp
      (-X - C (158 * (n : ℚ) + 2)) = -(X + C (79 * (n : ℚ) + 1)) := by
    rw [add_comp, X_comp, C_comp]
    simp only [map_add, map_mul, map_ofNat, map_one]
    ring
  unfold h158Numerator
  rw [mul_comp, hcenter, Polynomial.prod_comp]
  simp only [rising_pair_reflection, neg_mul]

/-- Each of the sixteen denominator blocks has odd length. -/
theorem h158Denominator_block_odd (n b : ℕ) (hb : b < 16) :
    Odd ((52 - 2 * b) * n + 1) := by
  refine ⟨(26 - b) * n, ?_⟩
  rw [show 52 - 2 * b = 2 * (26 - b) by omega]
  ring

/-- Each denominator block is individually reflection-odd. -/
theorem h158Denominator_block_reflection (n b : ℕ) (hb : b < 16) :
    (rising (((53 + b) * n : ℕ) + 1) ((52 - 2 * b) * n + 1)).comp
        (-X - C (158 * (n : ℚ) + 2)) =
      -rising (((53 + b) * n : ℕ) + 1) ((52 - 2 * b) * n + 1) := by
  have hstart : 158 * (n : ℚ) + 2 - (((53 + b) * n : ℕ) + 1) -
      (((52 - 2 * b) * n + 1 : ℕ) : ℚ) + 1 = (((53 + b) * n : ℕ) + 1) := by
    simp only [Nat.cast_add, Nat.cast_mul, Nat.cast_sub (by omega : 2 * b ≤ 52),
      Nat.cast_one, Nat.cast_ofNat]
    ring
  rw [rising_reflection, hstart, (h158Denominator_block_odd n b hb).neg_one_pow,
    neg_one_mul]

/-- The sixteen odd denominator blocks together are reflection-even. -/
theorem h158Denominator_reflection (n : ℕ) :
    (h158Denominator n).comp (-X - C (158 * (n : ℚ) + 2)) = h158Denominator n := by
  unfold h158Denominator
  rw [Polynomial.prod_comp]
  calc
    _ = ∏ b ∈ range 16, -rising (((53 + b) * n : ℕ) + 1) ((52 - 2 * b) * n + 1) := by
      apply Finset.prod_congr rfl
      intro b hb
      exact h158Denominator_block_reflection n b (mem_range.mp hb)
    _ = _ := by rw [Finset.prod_neg]; norm_num

/-- The actual normalized rational function is reflection-odd, expressed through
the reflected polynomial numerator and denominator rather than `RatFunc.comp`. -/
theorem h158Kernel_reflection (n : ℕ) :
    algebraMap ℚ[X] (RatFunc ℚ)
        ((C (h158Normalization n) * h158Numerator n).comp
          (-X - C (158 * (n : ℚ) + 2))) /
      algebraMap ℚ[X] (RatFunc ℚ)
        ((h158Denominator n).comp (-X - C (158 * (n : ℚ) + 2))) =
      -h158Kernel n := by
  simp only [mul_comp, C_comp, h158Numerator_reflection, h158Denominator_reflection,
    mul_neg, map_neg, neg_div, h158Kernel]

/-- The existing multiplier `E_i(X+c) E_j(X+c)`, with `c = 79n+1`,
is reflection-even for all basis indices. -/
theorem centeredMultiplier_reflection (n i j : ℕ) :
    (centeredMultiplier n i j).comp (-X - C (158 * (n : ℚ) + 2)) =
      centeredMultiplier n i j := by
  apply Polynomial.funext
  intro t
  simp only [centeredMultiplier, eval_comp, eval_mul, eval_add, eval_X, eval_C,
    eval_sub, eval_neg]
  rw [show -t - (158 * (n : ℚ) + 2) + (79 * (n : ℚ) + 1) =
      -(t + (79 * (n : ℚ) + 1)) by ring,
    evenBasis_eval_neg, evenBasis_eval_neg]

/-- Pointwise reflection of the actual centered multiplier. -/
theorem centeredMultiplier_eval_reflection (n i j : ℕ) (t : ℚ) :
    (centeredMultiplier n i j).eval (-158 * (n : ℚ) - 2 - t) =
      (centeredMultiplier n i j).eval t := by
  have h := congrArg (Polynomial.eval t) (centeredMultiplier_reflection n i j)
  rw [show -158 * (n : ℚ) - 2 - t = -t - (158 * (n : ℚ) + 2) by ring]
  simpa only [eval_comp, eval_sub, eval_neg, eval_X, eval_C] using h

/-- The full existing matrix-entry kernel is reflection-odd, with its actual
centered multiplier included in the polynomial numerator. -/
theorem matrixEntryKernel_reflection (n i j : ℕ) :
    algebraMap ℚ[X] (RatFunc ℚ)
        ((C (h158Normalization n) * h158Numerator n * centeredMultiplier n i j).comp
          (-X - C (158 * (n : ℚ) + 2))) /
      algebraMap ℚ[X] (RatFunc ℚ)
        ((h158Denominator n).comp (-X - C (158 * (n : ℚ) + 2))) =
      -matrixEntryKernel n i j := by
  rw [mul_comp, centeredMultiplier_reflection, map_mul, mul_div_right_comm,
    h158Kernel_reflection, neg_mul]
  rfl

#print axioms rising_reflection
#print axioms h158Numerator_reflection
#print axioms h158Denominator_reflection
#print axioms h158Kernel_reflection
#print axioms centeredMultiplier_reflection
#print axioms matrixEntryKernel_reflection

end OddZetaMixed
