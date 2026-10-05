import OddZetaMixed.HalfIntegerGammaEstimate

open OddZetaMixed Complex

#check halfIntegerGammaMain
#check halfIntegerGammaPhase
#check log_gamma_half_add_nat_norm_eq_main_add_error
#check log_gamma_half_add_nat_norm_estimate
#check log_gamma_three_half_add_nat_norm_estimate
#check gamma_norm_real_add_imaginary_neg
#check halfIntegerGammaMain_mul
#check log_norm_real_add_imaginary_mul
#check log_gamma_half_mul_norm_estimate
#check log_gamma_three_half_mul_norm_estimate

#print axioms log_gamma_half_add_nat_norm_estimate
#print axioms log_gamma_three_half_add_nat_norm_estimate
#print axioms log_gamma_half_mul_norm_estimate
#print axioms log_gamma_three_half_mul_norm_estimate
#print axioms gamma_norm_real_add_imaginary_neg

example (m : ℕ) (hm : 1 ≤ m) (y : ℝ) (hy : 0 ≤ y) :
    |Real.log ‖Complex.Gamma ((m : ℂ)+1/2+(y : ℂ)*I)‖-
      ((m : ℝ)/2*Real.log ((m : ℝ)^2+y^2)-(m : ℝ)-
        y*Real.arctan (y/(m : ℝ))+Real.log (2*Real.pi)/2)| ≤
          2+Real.log (m : ℝ) := by
  simpa [halfIntegerGammaMain, div_mul_eq_mul_div] using
    log_gamma_half_add_nat_norm_estimate_of_nonneg m hm y hy

example (m : ℕ) (hm : 1 ≤ m) :
    |Real.log ‖Complex.Gamma ((m : ℂ)+1/2)‖-
      ((m : ℝ)*Real.log (m : ℝ)-(m : ℝ)+Real.log (2*Real.pi)/2)| ≤
        2+Real.log (m : ℝ) := by
  simpa [halfIntegerGammaMain, Real.log_pow, mul_div_assoc] using
    log_gamma_half_add_nat_norm_estimate m hm 0

example (m : ℕ) (hm : 1 ≤ m) :
    |Real.log ‖Complex.Gamma ((m : ℂ)+3/2)‖-
      ((m : ℝ)*Real.log (m : ℝ)-(m : ℝ)+Real.log (2*Real.pi)/2+
        Real.log (m : ℝ))| ≤ 3+Real.log (m : ℝ) := by
  simpa [halfIntegerGammaMain, Real.log_pow, mul_div_assoc] using
    log_gamma_three_half_add_nat_norm_estimate m hm 0

example (a n : ℕ) (ha : 1 ≤ a) (hn : 1 ≤ n) (s : ℝ) :
    |Real.log ‖Complex.Gamma ((a : ℂ)*(n : ℂ)+1/2-(n : ℂ)*(s : ℂ)*I)‖-
      ((n : ℝ)*((a : ℝ)*Real.log (n : ℝ)+halfIntegerGammaPhase a s)+
        Real.log (2*Real.pi)/2)| ≤ 2+Real.log (a : ℝ)+Real.log (n : ℝ) := by
  simpa [halfIntegerGammaPhase_neg, sub_eq_add_neg] using
    log_gamma_half_mul_norm_estimate a n ha hn (-s)

example (a n : ℕ) (ha : 1 ≤ a) (hn : 1 ≤ n) (s : ℝ) :
    |Real.log ‖Complex.Gamma ((a : ℂ)*(n : ℂ)+3/2-(n : ℂ)*(s : ℂ)*I)‖-
      ((n : ℝ)*((a : ℝ)*Real.log (n : ℝ)+halfIntegerGammaPhase a s)+
        Real.log (2*Real.pi)/2+Real.log (n : ℝ)+
          Real.log ‖(a : ℂ)+(s : ℂ)*I‖)| ≤
            3+Real.log (a : ℝ)+Real.log (n : ℝ) := by
  have h := log_gamma_three_half_mul_norm_estimate a n ha hn (-s)
  have he := norm_real_add_imaginary_neg (a : ℝ) s
  norm_cast at he
  rw [he] at h
  simpa [halfIntegerGammaPhase_neg, sub_eq_add_neg] using h
