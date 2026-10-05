import OddZetaMixed.H158GammaKernel
import OddZetaMixed.HalfIntegerGammaEstimate
import OddZetaMixed.H158PhaseTail
import OddZetaMixed.H158FactorialNormalization

/-!
# Uniform Gamma inventory bound for the h158 density

The 52 complex factors have errors bounded before taking any growing-index
limit. Polynomial losses in the index and in height are kept explicitly.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset Complex

def h158HalfGammaMain (a n : ℕ) (s : ℝ) : ℝ :=
  (n : ℝ)*((a : ℝ)*Real.log (n : ℝ)+halfIntegerGammaPhase a s)+
    Real.log (2*Real.pi)/2

def h158ThreeHalfGammaMain (a n : ℕ) (s : ℝ) : ℝ :=
  h158HalfGammaMain a n s + Real.log (n : ℝ) +
    Real.log ‖(a : ℂ)+(s : ℂ)*I‖

def h158GammaError (n : ℕ) : ℝ := 3+Real.log 154+Real.log (n : ℝ)

theorem h158GammaHalf_log_bounds (a n : ℕ) (ha : 1 ≤ a) (ha' : a ≤ 154)
    (hn : 1 ≤ n) (s : ℝ) :
    h158HalfGammaMain a n s-h158GammaError n ≤
        Real.log ‖h158GammaHalf (a*n) ((n : ℝ)*s)‖ ∧
      Real.log ‖h158GammaHalf (a*n) ((n : ℝ)*s)‖ ≤
        h158HalfGammaMain a n s+h158GammaError n := by
  have h := log_gamma_half_mul_norm_estimate a n ha hn s
  have hlog : Real.log (a : ℝ) ≤ Real.log 154 :=
    Real.log_le_log (by exact_mod_cast (show 0 < a by omega)) (by exact_mod_cast ha')
  simp only [h158GammaHalf, Nat.cast_mul, ofReal_mul, ofReal_natCast]
  dsimp [h158HalfGammaMain, h158GammaError]
  exact ⟨by linarith [(abs_le.mp h).1], by linarith [(abs_le.mp h).2]⟩

theorem h158GammaThreeHalf_log_bounds (a n : ℕ) (ha : 1 ≤ a) (ha' : a ≤ 154)
    (hn : 1 ≤ n) (s : ℝ) :
    h158ThreeHalfGammaMain a n s-h158GammaError n ≤
        Real.log ‖h158GammaThreeHalves (a*n) ((n : ℝ)*s)‖ ∧
      Real.log ‖h158GammaThreeHalves (a*n) ((n : ℝ)*s)‖ ≤
        h158ThreeHalfGammaMain a n s+h158GammaError n := by
  have h := log_gamma_three_half_mul_norm_estimate a n ha hn s
  have hlog : Real.log (a : ℝ) ≤ Real.log 154 :=
    Real.log_le_log (by exact_mod_cast (show 0 < a by omega)) (by exact_mod_cast ha')
  simp only [h158GammaThreeHalves, Nat.cast_mul, ofReal_mul, ofReal_natCast]
  dsimp [h158ThreeHalfGammaMain, h158HalfGammaMain, h158GammaError]
  exact ⟨by linarith [(abs_le.mp h).1], by linarith [(abs_le.mp h).2]⟩

def h158GammaInventoryMain (n : ℕ) (s : ℝ) : ℝ :=
  5*h158ThreeHalfGammaMain 154 n s + 5*h158HalfGammaMain 4 n s +
    ∑ j ∈ range 21,
      (h158HalfGammaMain (44+j) n s-h158ThreeHalfGammaMain (106-j) n s)

theorem log_h158PositiveGammaKernel_le_inventory (n : ℕ) (hn : 1 ≤ n) (s : ℝ) :
    Real.log ‖h158PositiveGammaKernel n (h158ContourPoint n ((n : ℝ)*s))‖ ≤
      h158GammaInventoryMain n s+52*h158GammaError n := by
  rw [log_h158PositiveGammaKernel_contour]
  have htop := (h158GammaThreeHalf_log_bounds 154 n (by norm_num) (by norm_num) hn s).2
  have hbase := (h158GammaHalf_log_bounds 4 n (by norm_num) (by norm_num) hn s).2
  have hsum : (∑ j ∈ range 21,
      (Real.log ‖h158GammaHalf ((44+j)*n) ((n : ℝ)*s)‖-
        Real.log ‖h158GammaThreeHalves ((106-j)*n) ((n : ℝ)*s)‖)) ≤
      (∑ j ∈ range 21,
        (h158HalfGammaMain (44+j) n s-h158ThreeHalfGammaMain (106-j) n s)) +
        42*h158GammaError n := by
    calc
      _ ≤ ∑ j ∈ range 21,
          (h158HalfGammaMain (44+j) n s-h158ThreeHalfGammaMain (106-j) n s +
            2*h158GammaError n) := by
        apply sum_le_sum
        intro j hj
        have hj' : j < 21 := mem_range.mp hj
        have hl := (h158GammaHalf_log_bounds (44+j) n (by omega) (by omega) hn s).2
        have hr := (h158GammaThreeHalf_log_bounds (106-j) n (by omega) (by omega) hn s).1
        linarith
      _ = _ := by rw [sum_add_distrib]; simp; ring
  unfold h158GammaInventoryMain
  linarith

theorem h158GammaInventoryMain_eq_phase (n : ℕ) (s : ℝ) :
    h158GammaInventoryMain n s =
      (n : ℝ)*(h158Phase s-h158PhaseConstant-3*Real.pi*s-
        92*Real.log (n : ℝ)+92) + 5*Real.log (2*Real.pi)-16*Real.log (n : ℝ) +
      5*Real.log ‖(154 : ℂ)+(s : ℂ)*I‖ -
        ∑ j ∈ range 21, Real.log ‖((106-j : ℕ) : ℂ)+(s : ℂ)*I‖ := by
  unfold h158GammaInventoryMain h158ThreeHalfGammaMain h158HalfGammaMain
    halfIntegerGammaPhase h158Phase h158PhaseX
  rw [← Finset.Ico_add_one_right_eq_Icc, Finset.sum_Ico_eq_sum_range]
  norm_num [Finset.sum_range_succ]
  ring

theorem norm_real_add_imaginary_upper (a s : ℝ) (ha : 1 ≤ a) (hs : 0 ≤ s) :
    ‖(a : ℂ)+(s : ℂ)*I‖ ≤ a*(1+s) := by
  calc
    _ ≤ ‖(a : ℂ)‖+‖(s : ℂ)*I‖ := norm_add_le _ _
    _ = a+s := by simp [abs_of_nonneg (by linarith : 0 ≤ a), abs_of_nonneg hs]
    _ ≤ _ := by nlinarith

theorem log_norm_real_add_imaginary_nonneg (a s : ℝ) (ha : 1 ≤ a) :
    0 ≤ Real.log ‖(a : ℂ)+(s : ℂ)*I‖ := by
  apply Real.log_nonneg
  have h := Complex.abs_re_le_norm ((a : ℂ)+(s : ℂ)*I)
  simp only [add_re, ofReal_re, mul_re, ofReal_im, I_re, I_im,
    mul_zero, zero_mul, sub_zero, add_zero] at h
  rw [abs_of_nonneg (by linarith : 0 ≤ a)] at h
  exact ha.trans h

theorem log_h158PositiveGammaKernel_le_phase (n : ℕ) (hn : 1 ≤ n)
    (s : ℝ) (hs : 0 ≤ s) :
    Real.log ‖h158PositiveGammaKernel n (h158ContourPoint n ((n : ℝ)*s))‖ ≤
      (n : ℝ)*(h158Phase s-h158PhaseConstant-3*Real.pi*s-
        92*Real.log (n : ℝ)+92) + 5*Real.log (2*Real.pi)-16*Real.log (n : ℝ) +
        5*(Real.log 154+Real.log (1+s)) + 52*h158GammaError n := by
  have h := log_h158PositiveGammaKernel_le_inventory n hn s
  rw [h158GammaInventoryMain_eq_phase] at h
  have ht : Real.log ‖(154 : ℂ)+(s : ℂ)*I‖ ≤ Real.log 154+Real.log (1+s) := by
    have hne : (154 : ℂ)+(s : ℂ)*I ≠ 0 := by
      intro he
      have hr := congrArg Complex.re he
      norm_num at hr
    have hb := Real.log_le_log (norm_pos_iff.mpr hne)
      (norm_real_add_imaginary_upper 154 s (by norm_num) hs)
    rw [Real.log_mul (by norm_num : (154 : ℝ) ≠ 0) (by positivity : 1+s ≠ 0)] at hb
    exact hb
  have hd : 0 ≤ ∑ j ∈ range 21, Real.log ‖((106-j : ℕ) : ℂ)+(s : ℂ)*I‖ := by
    apply sum_nonneg
    intro j hj
    have hj' := mem_range.mp hj
    have hh := log_norm_real_add_imaginary_nonneg ((106-j : ℕ) : ℝ) s
      (by exact_mod_cast (show 1 ≤ 106-j by omega))
    simpa only [ofReal_natCast] using hh
  linarith

theorem complex_cos_norm_le_exp_abs_im (z : ℂ) :
    ‖Complex.cos z‖ ≤ Real.exp |z.im| := by
  rw [Complex.cos, norm_div]
  norm_num only [Complex.norm_ofNat]
  have h := norm_add_le (Complex.exp (z*I)) (Complex.exp (-z*I))
  simp only [Complex.norm_exp, mul_re, I_re, I_im, mul_zero, mul_one,
    zero_sub, neg_im, neg_neg] at h
  have hpos := Real.exp_le_exp.mpr (le_abs_self z.im)
  have hneg := Real.exp_le_exp.mpr (neg_le_abs z.im)
  linarith

theorem h158_trig_numerator_norm_le (n : ℕ) (y : ℝ) (hy : 0 ≤ y) :
    ‖Complex.cos ((Real.pi : ℂ)*h158ContourPoint n y)^3+
      2*Complex.cos ((Real.pi : ℂ)*h158ContourPoint n y)‖ ≤
        3*Real.exp (3*Real.pi*y) := by
  let z := (Real.pi : ℂ)*h158ContourPoint n y
  have him : z.im = Real.pi*y := by simp [z, h158ContourPoint]
  have hc : ‖Complex.cos z‖ ≤ Real.exp (Real.pi*y) := by
    simpa only [him, abs_of_nonneg (mul_nonneg Real.pi_pos.le hy)] using
      complex_cos_norm_le_exp_abs_im z
  have he : 1 ≤ Real.exp (Real.pi*y) := Real.one_le_exp (by positivity)
  have hp : Real.exp (3*Real.pi*y) = Real.exp (Real.pi*y)^3 := by
    rw [show 3*Real.pi*y = Real.pi*y+Real.pi*y+Real.pi*y by ring,
      Real.exp_add, Real.exp_add]
    ring
  rw [hp]
  calc
    _ ≤ ‖Complex.cos z‖^3+2*‖Complex.cos z‖ := by
      have htri := norm_add_le ((Complex.cos z)^3) (2*Complex.cos z)
      rw [Complex.norm_pow, norm_mul] at htri
      norm_num only [Complex.norm_ofNat] at htri
      exact htri
    _ ≤ Real.exp (Real.pi*y)^3+2*Real.exp (Real.pi*y) := by gcongr
    _ ≤ _ := by nlinarith [pow_le_pow_right₀ he (show 1 ≤ 3 by omega)]

theorem h158_center_norm_le (n : ℕ) (hn : 1 ≤ n) (s : ℝ) (hs : 0 ≤ s) :
    ‖h158ContourPoint n ((n : ℝ)*s)+79*(n : ℂ)+1‖ ≤
      76*(n : ℝ)*(1+s) := by
  have hnR : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have he : h158ContourPoint n ((n : ℝ)*s)+79*(n : ℂ)+1 =
      ((75*(n : ℝ)+1/2 : ℝ) : ℂ)+(((n : ℝ)*s : ℝ) : ℂ)*I := by
    unfold h158ContourPoint h158ContourAbscissa
    push_cast
    ring
  rw [he]
  calc
    _ ≤ ‖((75*(n : ℝ)+1/2 : ℝ) : ℂ)‖+‖(((n : ℝ)*s : ℝ) : ℂ)*I‖ := norm_add_le _ _
    _ = 75*(n : ℝ)+1/2+(n : ℝ)*s := by
      simp only [Complex.norm_real, Real.norm_eq_abs, norm_mul, Complex.norm_I,
        mul_one, abs_of_nonneg (by positivity : 0 ≤ 75*(n : ℝ)+1/2),
        abs_of_nonneg (show (0 : ℝ) ≤ n by positivity), abs_of_nonneg hs]
    _ ≤ _ := by nlinarith [mul_nonneg (show (0 : ℝ) ≤ n by positivity) hs]

def h158DensityLogConstant : ℝ :=
  h158NormalizationLogConstant+172+5*Real.log (2*Real.pi)+57*Real.log 154

def h158DensityConstant : ℝ := 76*Real.exp h158DensityLogConstant

theorem h158DensityConstant_pos : 0 < h158DensityConstant := by
  unfold h158DensityConstant
  positivity

theorem h158_gamma_log_envelope (n : ℕ) (hn : 1 ≤ n) (s : ℝ) (hs : 0 ≤ s) :
    Real.log (h158Normalization n : ℝ)+
      Real.log ‖h158PositiveGammaKernel n (h158ContourPoint n ((n : ℝ)*s))‖ +
        3*Real.pi*(n : ℝ)*s ≤
      h158DensityLogConstant+39*Real.log (n : ℝ)+5*Real.log (1+s)+
        (n : ℝ)*h158Phase s := by
  have hN := (h158Normalization_log_bounds n (by omega)).2
  have hG := log_h158PositiveGammaKernel_le_phase n hn s hs
  dsimp [h158NormalizationLogMain, h158GammaError, h158DensityLogConstant] at *
  linarith

theorem h158_gamma_exp_envelope (n : ℕ) (hn : 1 ≤ n) (s : ℝ) (hs : 0 ≤ s) :
    (h158Normalization n : ℝ)*
      ‖h158PositiveGammaKernel n (h158ContourPoint n ((n : ℝ)*s))‖ *
        Real.exp (3*Real.pi*(n : ℝ)*s) ≤
      Real.exp h158DensityLogConstant*(n : ℝ)^39*(1+s)^5*
        Real.exp ((n : ℝ)*h158Phase s) := by
  have h := Real.exp_le_exp.mpr (h158_gamma_log_envelope n hn s hs)
  have hG := norm_pos_iff.mpr (h158PositiveGammaKernel_contour_ne_zero n ((n : ℝ)*s))
  have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hsR : 0 < 1+s := by positivity
  have hpow (a : ℝ) (ha : 0 < a) (k : ℕ) :
      Real.exp ((k : ℝ)*Real.log a) = a^k := by
    rw [← Real.log_pow, Real.exp_log (pow_pos ha k)]
  have hp39 : Real.exp (39*Real.log (n : ℝ)) = (n : ℝ)^39 :=
    hpow (n : ℝ) hnR 39
  have hp5 : Real.exp (5*Real.log (1+s)) = (1+s)^5 := hpow (1+s) hsR 5
  simpa only [Real.exp_add, Real.exp_log (h158Normalization_real_pos n),
    Real.exp_log hG, hp39, hp5] using h

/-- A coarser polynomial envelope is sufficient for the quadratic rate.
The constant and exponents are independent of both the index and height. -/
theorem h158ModulusWeight_uniform_envelope (n : ℕ) (hn : 1 ≤ n)
    (s : ℝ) (hs : 0 ≤ s) :
    h158ModulusWeight n ((n : ℝ)*s) ≤
      h158DensityConstant*(n : ℝ)^40*(1+s)^6*
        Real.exp ((n : ℝ)*h158Phase s) := by
  have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hN := (h158Normalization_real_pos n).le
  have hG := h158_gamma_exp_envelope n hn s hs
  have hcenter := h158_center_norm_le n hn s hs
  have htrig := h158_trig_numerator_norm_le n ((n : ℝ)*s) (by positivity)
  rw [h158ModulusWeight_gamma, abs_of_nonneg hN]
  have hmult :
      (h158Normalization n : ℝ)*
        ‖h158ContourPoint n ((n : ℝ)*s)+79*(n : ℂ)+1‖ *
        ‖h158PositiveGammaKernel n (h158ContourPoint n ((n : ℝ)*s))‖ *
        ‖Complex.cos ((Real.pi : ℂ)*h158ContourPoint n ((n : ℝ)*s))^3+
          2*Complex.cos ((Real.pi : ℂ)*h158ContourPoint n ((n : ℝ)*s))‖ ≤
      3*(76*(n : ℝ)*(1+s))*
        ((h158Normalization n : ℝ)*
          ‖h158PositiveGammaKernel n (h158ContourPoint n ((n : ℝ)*s))‖ *
          Real.exp (3*Real.pi*(n : ℝ)*s)) := by
    calc
      _ ≤ (h158Normalization n : ℝ)*(76*(n : ℝ)*(1+s))*
          ‖h158PositiveGammaKernel n (h158ContourPoint n ((n : ℝ)*s))‖ *
          (3*Real.exp (3*Real.pi*((n : ℝ)*s))) := by gcongr
      _ = _ := by ring
  have hbound : (h158Normalization n : ℝ)*
      ‖h158PositiveGammaKernel n (h158ContourPoint n ((n : ℝ)*s))‖ *
        Real.exp (3*Real.pi*(n : ℝ)*s) ≥ 0 := by positivity
  calc
    _ ≤ (3*(76*(n : ℝ)*(1+s))*
        ((h158Normalization n : ℝ)*
          ‖h158PositiveGammaKernel n (h158ContourPoint n ((n : ℝ)*s))‖ *
          Real.exp (3*Real.pi*(n : ℝ)*s))) / (6*Real.pi) := by
      exact div_le_div_of_nonneg_right hmult (by positivity)
    _ ≤ (76*(n : ℝ)*(1+s))*
        ((h158Normalization n : ℝ)*
          ‖h158PositiveGammaKernel n (h158ContourPoint n ((n : ℝ)*s))‖ *
          Real.exp (3*Real.pi*(n : ℝ)*s)) := by
      apply (div_le_iff₀ (by positivity : 0 < 6*Real.pi)).mpr
      have hx : 0 ≤ 76*(n : ℝ)*(1+s)*
          ((h158Normalization n : ℝ)*
            ‖h158PositiveGammaKernel n (h158ContourPoint n ((n : ℝ)*s))‖ *
            Real.exp (3*Real.pi*(n : ℝ)*s)) := by positivity
      nlinarith [Real.pi_gt_three]
    _ ≤ (76*(n : ℝ)*(1+s))*(Real.exp h158DensityLogConstant*(n : ℝ)^39*
        (1+s)^5*Real.exp ((n : ℝ)*h158Phase s)) :=
      mul_le_mul_of_nonneg_left hG (by positivity)
    _ = _ := by unfold h158DensityConstant; ring

theorem h158GammaThreeHalves_norm_neg (m : ℕ) (y : ℝ) :
    ‖h158GammaThreeHalves m (-y)‖ = ‖h158GammaThreeHalves m y‖ := by
  have h : (m : ℂ)+3/2+((-y : ℝ) : ℂ)*I =
      starRingEnd ℂ ((m : ℂ)+3/2+(y : ℂ)*I) := by
    apply Complex.ext <;> norm_num [map_ofNat]
  rw [h158GammaThreeHalves, h, Complex.Gamma_conj]
  simp [h158GammaThreeHalves]

theorem h158PositiveGammaKernel_norm_neg (n : ℕ) (y : ℝ) :
    ‖h158PositiveGammaKernel n (h158ContourPoint n (-y))‖ =
      ‖h158PositiveGammaKernel n (h158ContourPoint n y)‖ := by
  simp only [h158PositiveGammaKernel_contour, norm_mul, Complex.norm_pow,
    norm_prod, norm_div, h158GammaThreeHalves_norm_neg, h158GammaHalf_norm_neg]

theorem h158ContourPoint_neg_conj (n : ℕ) (y : ℝ) :
    h158ContourPoint n (-y) = starRingEnd ℂ (h158ContourPoint n y) := by
  simp [h158ContourPoint]

theorem h158ModulusWeight_neg (n : ℕ) (y : ℝ) :
    h158ModulusWeight n (-y) = h158ModulusWeight n y := by
  simp only [h158ModulusWeight_gamma, h158PositiveGammaKernel_norm_neg]
  have hcenter : h158ContourPoint n (-y)+79*(n : ℂ)+1 =
      starRingEnd ℂ (h158ContourPoint n y+79*(n : ℂ)+1) := by
    norm_num [h158ContourPoint_neg_conj, map_ofNat]
  have htrig : Complex.cos ((Real.pi : ℂ)*h158ContourPoint n (-y))^3+
      2*Complex.cos ((Real.pi : ℂ)*h158ContourPoint n (-y)) =
      starRingEnd ℂ (Complex.cos ((Real.pi : ℂ)*h158ContourPoint n y)^3+
        2*Complex.cos ((Real.pi : ℂ)*h158ContourPoint n y)) := by
    norm_num [h158ContourPoint_neg_conj, ← Complex.cos_conj, map_ofNat]
  rw [hcenter, htrig]
  rw [Complex.norm_conj, Complex.norm_conj]

theorem h158ModulusWeight_abs (n : ℕ) (y : ℝ) :
    h158ModulusWeight n |y| = h158ModulusWeight n y := by
  rcases le_total 0 y with hy | hy
  · rw [abs_of_nonneg hy]
  · rw [abs_of_nonpos hy, h158ModulusWeight_neg]

theorem h158ModulusWeight_uniform_envelope_abs (n : ℕ) (hn : 1 ≤ n) (s : ℝ) :
    h158ModulusWeight n ((n : ℝ)*s) ≤
      h158DensityConstant*(n : ℝ)^40*(1+|s|)^6*
        Real.exp ((n : ℝ)*h158Phase |s|) := by
  have h := h158ModulusWeight_uniform_envelope n hn |s| (abs_nonneg s)
  have he : (n : ℝ)*|s| = |(n : ℝ)*s| := by
    rw [abs_mul, abs_of_nonneg (show (0 : ℝ) ≤ (n : ℝ) by positivity)]
  rwa [he, h158ModulusWeight_abs] at h

#print axioms h158ModulusWeight_uniform_envelope
#print axioms h158ModulusWeight_uniform_envelope_abs

end OddZetaMixed
