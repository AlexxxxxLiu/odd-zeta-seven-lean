import OddZetaMixed.H158IntegralDetBound
import OddZetaMixed.HalfIntegerGamma

/-!
# Gamma representation of the actual h158 kernel

The original rational polynomial products are retained. This file connects
them to Gamma factors before making any uniform asymptotic estimate.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset Complex

theorem gamma_integer_shift_ne_zero (z : ℂ)
    (hz : ∀ q : ℤ, z ≠ (q : ℂ)) (a : ℤ) :
    Complex.Gamma (z + (a : ℂ)) ≠ 0 := by
  apply Complex.Gamma_ne_zero
  intro m hm
  apply hz (-(m : ℤ) - a)
  push_cast
  linear_combination hm

theorem rising_complex_eval_gamma (z : ℂ)
    (hz : ∀ q : ℤ, z ≠ (q : ℂ)) (a : ℤ) (k : ℕ) :
    aeval z (rising (a : ℚ) k) =
      Complex.Gamma (z + (a : ℂ) + (k : ℂ)) / Complex.Gamma (z + (a : ℂ)) := by
  have havoid : ∀ j : ℕ, z + (a : ℂ) ≠ -(j : ℂ) := by
    intro j hj
    apply hz (-(j : ℤ) - a)
    push_cast
    linear_combination hj
  rw [Complex.Gamma_add_nat_div_Gamma_eq _ havoid]
  induction k with
  | zero => simp [rising, ascPochhammer_zero]
  | succ k ih =>
    rw [rising, prod_range_succ, map_mul]
    change aeval z (rising (a : ℚ) k) * _ = _
    rw [ih, ascPochhammer_succ_right]
    simp only [eval_mul, eval_add, eval_X, eval_natCast, map_add,
      aeval_X, aeval_C, map_intCast]
    push_cast
    ring

def h158GammaLeft (n a : ℕ) (z : ℂ) : ℂ :=
  Complex.Gamma (z + ((48 + a) * n : ℕ) + 1)

def h158GammaRight (n a : ℕ) (z : ℂ) : ℂ :=
  Complex.Gamma (z + (158 * (n : ℂ) + 2 - ((48 + a) * n : ℕ)))

def h158GammaDenStart (n b : ℕ) (z : ℂ) : ℂ :=
  Complex.Gamma (z + ((53 + b) * n : ℕ) + 1)

def h158GammaDenEnd (n b : ℕ) (z : ℂ) : ℂ :=
  Complex.Gamma (z + ((53 + b) * n : ℕ) + ((52 - 2 * b) * n : ℕ) + 2)

theorem h158_left_rising_gamma (n a : ℕ) (z : ℂ)
    (hz : ∀ q : ℤ, z ≠ (q : ℂ)) :
    aeval z (rising 1 ((48 + a) * n)) =
      h158GammaLeft n a z / Complex.Gamma (z + 1) := by
  simpa [h158GammaLeft, add_comm, add_left_comm, add_assoc] using
    rising_complex_eval_gamma z hz 1 ((48 + a) * n)

theorem h158_right_rising_gamma (n a : ℕ) (z : ℂ)
    (hz : ∀ q : ℤ, z ≠ (q : ℂ)) :
    aeval z (rising (158 * (n : ℚ) + 2 - (((48 + a) * n : ℕ) : ℚ))
      ((48 + a) * n)) =
      Complex.Gamma (z + 158 * (n : ℂ) + 2) / h158GammaRight n a z := by
  have h := rising_complex_eval_gamma z hz
    (158 * (n : ℤ) + 2 - (((48 + a) * n : ℕ) : ℤ)) ((48 + a) * n)
  dsimp [h158GammaRight]
  push_cast at h ⊢
  convert h using 1
  congr 1
  congr 1
  ring

theorem h158_den_rising_gamma (n b : ℕ) (z : ℂ)
    (hz : ∀ q : ℤ, z ≠ (q : ℂ)) :
    aeval z (rising (((53 + b) * n : ℕ) + 1) ((52 - 2 * b) * n + 1)) =
      h158GammaDenEnd n b z / h158GammaDenStart n b z := by
  have h := rising_complex_eval_gamma z hz
    (((53 + b) * n : ℕ) + 1) ((52 - 2 * b) * n + 1)
  dsimp [h158GammaDenEnd, h158GammaDenStart]
  push_cast at h ⊢
  convert h using 1
  congr 1 <;> congr 1 <;> ring

theorem h158EntryComplex_base_gamma_ratios (n : ℕ) (z : ℂ)
    (hz : ∀ q : ℤ, z ≠ (q : ℂ)) :
    h158EntryComplex n 0 0 z =
      (h158Normalization n : ℂ) * (z + 79 * (n : ℂ) + 1) *
        (∏ a ∈ range 5, (h158GammaLeft n a z / Complex.Gamma (z + 1)) *
          (Complex.Gamma (z + 158 * (n : ℂ) + 2) / h158GammaRight n a z)) /
        (∏ b ∈ range 16, h158GammaDenEnd n b z / h158GammaDenStart n b z) := by
  simp only [h158EntryComplex, centeredMultiplier, evenBasis,
    one_comp, mul_one, h158Numerator, h158Denominator, map_mul, map_prod,
    map_add, aeval_X, aeval_C]
  simp_rw [h158_left_rising_gamma n _ z hz, h158_right_rising_gamma n _ z hz,
    h158_den_rising_gamma n _ z hz]
  have halg (q : ℚ) : (algebraMap ℚ ℂ) q = (q : ℂ) := rfl
  simp_rw [halg]
  push_cast
  ring

theorem h158ContourPoint_ne_integer (n : ℕ) (y : ℝ) (q : ℤ) :
    h158ContourPoint n y ≠ (q : ℂ) := by
  intro h
  apply h158ContourAbscissa_ne_int n q
  simpa only [h158ContourPoint_re, Complex.intCast_re] using congrArg Complex.re h

theorem sin_pi_ne_zero_of_noninteger (z : ℂ)
    (hz : ∀ q : ℤ, z ≠ (q : ℂ)) :
    Complex.sin ((Real.pi : ℂ) * z) ≠ 0 := by
  intro hs
  obtain ⟨q, hq⟩ := Complex.sin_eq_zero_iff.mp hs
  apply hz q
  apply mul_left_cancel₀ (show (Real.pi : ℂ) ≠ 0 by exact_mod_cast Real.pi_ne_zero)
  simpa only [mul_comm] using hq

theorem gamma_add_one_inv_reflection (z : ℂ)
    (hz : ∀ q : ℤ, z ≠ (q : ℂ)) :
    (Complex.Gamma (z + 1))⁻¹ =
      -(Complex.Gamma (-z)) * Complex.sin ((Real.pi : ℂ) * z) / (Real.pi : ℂ) := by
  have hg : Complex.Gamma (z + 1) ≠ 0 := by
    simpa using gamma_integer_shift_ne_zero z hz 1
  have hs := sin_pi_ne_zero_of_noninteger z hz
  have hs' : Complex.sin (z * (Real.pi : ℂ)) ≠ 0 := by simpa only [mul_comm] using hs
  have hp : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  have h := Complex.Gamma_mul_Gamma_one_sub (-z)
  rw [sub_neg_eq_add, add_comm (1 : ℂ) z, mul_neg, Complex.sin_neg] at h
  field_simp [hg, hs, hs', hp] at h ⊢
  linear_combination h

def h158PositiveGammaKernel (n : ℕ) (z : ℂ) : ℂ :=
  Complex.Gamma (z + 158 * (n : ℂ) + 2) ^ 5 * Complex.Gamma (-z) ^ 5 *
    (∏ a ∈ range 5, h158GammaLeft n a z / h158GammaRight n a z) *
    (∏ b ∈ range 16, h158GammaDenStart n b z / h158GammaDenEnd n b z)

theorem h158EntryComplex_base_gamma (n : ℕ) (z : ℂ)
    (hz : ∀ q : ℤ, z ≠ (q : ℂ)) :
    h158EntryComplex n 0 0 z =
      -(h158Normalization n : ℂ) * (z + 79 * (n : ℂ) + 1) *
        h158PositiveGammaKernel n z * Complex.sin ((Real.pi : ℂ) * z) ^ 5 /
          (Real.pi : ℂ) ^ 5 := by
  rw [h158EntryComplex_base_gamma_ratios n z hz]
  simp only [h158PositiveGammaKernel, div_eq_mul_inv, prod_mul_distrib,
    prod_const, card_range, prod_inv_distrib, mul_inv_rev, inv_inv]
  rw [gamma_add_one_inv_reflection z hz]
  ring

theorem h158ContourIntegrand_base_gamma (n : ℕ) (z : ℂ)
    (hz : ∀ q : ℤ, z ≠ (q : ℂ)) :
    h158ContourIntegrand n 0 0 z =
      -(h158Normalization n : ℂ) * (z + 79 * (n : ℂ) + 1) *
        h158PositiveGammaKernel n z *
        (Complex.cos ((Real.pi : ℂ) * z) ^ 3 +
          2 * Complex.cos ((Real.pi : ℂ) * z)) / 3 := by
  have hs := sin_pi_ne_zero_of_noninteger z hz
  have hs' : Complex.sin (z * (Real.pi : ℂ)) ≠ 0 := by simpa only [mul_comm] using hs
  have hp : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  rw [h158ContourIntegrand, h158EntryComplex_base_gamma n z hz,
    h158ContourKernel_eq z hs]
  field_simp [hs, hs', hp]

theorem h158ModulusWeight_gamma (n : ℕ) (y : ℝ) :
    h158ModulusWeight n y =
      |(h158Normalization n : ℝ)| *
        ‖h158ContourPoint n y + 79 * (n : ℂ) + 1‖ *
        ‖h158PositiveGammaKernel n (h158ContourPoint n y)‖ *
        ‖Complex.cos ((Real.pi : ℂ) * h158ContourPoint n y) ^ 3 +
          2 * Complex.cos ((Real.pi : ℂ) * h158ContourPoint n y)‖ / (6 * Real.pi) := by
  rw [h158ModulusWeight, h158VerticalIntegrand,
    h158ContourIntegrand_base_gamma n _ (h158ContourPoint_ne_integer n y)]
  simp only [norm_mul, norm_div, norm_neg, Complex.norm_I, mul_one,
    Complex.norm_ofNat, Complex.norm_ratCast]
  rw [← Rat.cast_abs]
  ring

def h158GammaHalf (m : ℕ) (y : ℝ) : ℂ :=
  Complex.Gamma ((m : ℂ) + 1 / 2 + (y : ℂ) * I)

def h158GammaThreeHalves (m : ℕ) (y : ℝ) : ℂ :=
  Complex.Gamma ((m : ℂ) + 3 / 2 + (y : ℂ) * I)

theorem h158GammaHalf_ne_zero (m : ℕ) (y : ℝ) : h158GammaHalf m y ≠ 0 := by
  apply Complex.Gamma_ne_zero_of_re_pos
  norm_num
  positivity

theorem h158GammaThreeHalves_ne_zero (m : ℕ) (y : ℝ) :
    h158GammaThreeHalves m y ≠ 0 := by
  apply Complex.Gamma_ne_zero_of_re_pos
  norm_num
  positivity

theorem h158GammaLeft_contour (n a : ℕ) (y : ℝ) :
    h158GammaLeft n a (h158ContourPoint n y) = h158GammaHalf ((44 + a) * n) y := by
  unfold h158GammaLeft h158GammaHalf h158ContourPoint h158ContourAbscissa
  congr 1
  push_cast
  ring

theorem h158GammaRight_contour (n a : ℕ) (ha : a < 5) (y : ℝ) :
    h158GammaRight n a (h158ContourPoint n y) =
      h158GammaThreeHalves ((106 - a) * n) y := by
  unfold h158GammaRight h158GammaThreeHalves h158ContourPoint h158ContourAbscissa
  congr 1
  push_cast [Nat.cast_sub (by omega : a ≤ 106)]
  ring

theorem h158GammaDenStart_contour (n b : ℕ) (y : ℝ) :
    h158GammaDenStart n b (h158ContourPoint n y) =
      h158GammaHalf ((49 + b) * n) y := by
  unfold h158GammaDenStart h158GammaHalf h158ContourPoint h158ContourAbscissa
  congr 1
  push_cast
  ring

theorem h158GammaDenEnd_contour (n b : ℕ) (hb : b < 16) (y : ℝ) :
    h158GammaDenEnd n b (h158ContourPoint n y) =
      h158GammaThreeHalves ((101 - b) * n) y := by
  unfold h158GammaDenEnd h158GammaThreeHalves h158ContourPoint h158ContourAbscissa
  congr 1
  push_cast [Nat.cast_sub (by omega : 2 * b ≤ 52), Nat.cast_sub (by omega : b ≤ 101)]
  ring

theorem h158PositiveGammaKernel_contour (n : ℕ) (y : ℝ) :
    h158PositiveGammaKernel n (h158ContourPoint n y) =
      h158GammaThreeHalves (154 * n) y ^ 5 * h158GammaHalf (4 * n) (-y) ^ 5 *
        ∏ j ∈ range 21,
          h158GammaHalf ((44 + j) * n) y / h158GammaThreeHalves ((106 - j) * n) y := by
  have htop : Complex.Gamma (h158ContourPoint n y + 158 * (n : ℂ) + 2) =
      h158GammaThreeHalves (154 * n) y := by
    unfold h158GammaThreeHalves h158ContourPoint h158ContourAbscissa
    congr 1
    push_cast
    ring
  have hneg : Complex.Gamma (-h158ContourPoint n y) = h158GammaHalf (4 * n) (-y) := by
    unfold h158GammaHalf h158ContourPoint h158ContourAbscissa
    congr 1
    push_cast
    ring
  unfold h158PositiveGammaKernel
  rw [htop, hneg]
  have hleft : (∏ a ∈ range 5, h158GammaLeft n a (h158ContourPoint n y) /
      h158GammaRight n a (h158ContourPoint n y)) =
      ∏ a ∈ range 5, h158GammaHalf ((44 + a) * n) y /
        h158GammaThreeHalves ((106 - a) * n) y := by
    apply prod_congr rfl
    intro a ha
    rw [h158GammaLeft_contour, h158GammaRight_contour n a (mem_range.mp ha)]
  have hright : (∏ b ∈ range 16, h158GammaDenStart n b (h158ContourPoint n y) /
      h158GammaDenEnd n b (h158ContourPoint n y)) =
      ∏ b ∈ range 16, h158GammaHalf ((44 + (5 + b)) * n) y /
        h158GammaThreeHalves ((106 - (5 + b)) * n) y := by
    apply prod_congr rfl
    intro b hb
    rw [h158GammaDenStart_contour, h158GammaDenEnd_contour n b (mem_range.mp hb)]
    rw [show 44 + (5 + b) = 49 + b by omega,
      show 106 - (5 + b) = 101 - b by omega]
  rw [hleft, hright]
  rw [show (21 : ℕ) = 5 + 16 by norm_num, prod_range_add]
  ring

theorem h158GammaHalf_norm_neg (m : ℕ) (y : ℝ) :
    ‖h158GammaHalf m (-y)‖ = ‖h158GammaHalf m y‖ := by
  have h : (m : ℂ) + 1 / 2 + ((-y : ℝ) : ℂ) * I =
      starRingEnd ℂ ((m : ℂ) + 1 / 2 + (y : ℂ) * I) := by
    apply Complex.ext <;> simp
  rw [h158GammaHalf, h, Complex.Gamma_conj]
  simp [h158GammaHalf]

theorem h158PositiveGammaKernel_contour_ne_zero (n : ℕ) (y : ℝ) :
    h158PositiveGammaKernel n (h158ContourPoint n y) ≠ 0 := by
  rw [h158PositiveGammaKernel_contour]
  exact mul_ne_zero
    (mul_ne_zero (pow_ne_zero _ (h158GammaThreeHalves_ne_zero _ _))
      (pow_ne_zero _ (h158GammaHalf_ne_zero _ _)))
    (prod_ne_zero_iff.mpr fun j _ => div_ne_zero (h158GammaHalf_ne_zero _ _)
      (h158GammaThreeHalves_ne_zero _ _))

theorem log_h158PositiveGammaKernel_contour (n : ℕ) (y : ℝ) :
    Real.log ‖h158PositiveGammaKernel n (h158ContourPoint n y)‖ =
      5 * Real.log ‖h158GammaThreeHalves (154 * n) y‖ +
      5 * Real.log ‖h158GammaHalf (4 * n) y‖ +
      ∑ j ∈ range 21,
        (Real.log ‖h158GammaHalf ((44 + j) * n) y‖ -
          Real.log ‖h158GammaThreeHalves ((106 - j) * n) y‖) := by
  have hh (m : ℕ) (s : ℝ) : ‖h158GammaHalf m s‖ ≠ 0 :=
    norm_ne_zero_iff.mpr (h158GammaHalf_ne_zero m s)
  have ht (m : ℕ) (s : ℝ) : ‖h158GammaThreeHalves m s‖ ≠ 0 :=
    norm_ne_zero_iff.mpr (h158GammaThreeHalves_ne_zero m s)
  rw [h158PositiveGammaKernel_contour]
  simp only [norm_mul, norm_pow, norm_prod, norm_div, h158GammaHalf_norm_neg]
  rw [Real.log_mul (mul_ne_zero (pow_ne_zero _ (ht _ _)) (pow_ne_zero _ (hh _ _)))
    (prod_ne_zero_iff.mpr fun j _ => div_ne_zero (hh _ _) (ht _ _)),
    Real.log_mul (pow_ne_zero _ (ht _ _)) (pow_ne_zero _ (hh _ _)),
    Real.log_pow, Real.log_pow,
    Real.log_prod (fun j _ => div_ne_zero (hh _ _) (ht _ _))]
  simp_rw [Real.log_div (hh _ _) (ht _ _)]
  norm_num

end OddZetaMixed
