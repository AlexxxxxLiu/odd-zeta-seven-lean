import OddZetaMixed.LogQuadraticMidpoint

open OddZetaMixed Finset MeasureTheory

#check logQuadratic_intervalIntegrable
#check logQuadraticMidpointError_abs_le
#check integral_logQuadratic
#check integral_logQuadratic_zero
#check integral_logQuadratic_eq_phase
#check log_midpoint_sum_abs_le
#check logQuadratic_log_prod_integral_abs_le
#check logQuadratic_log_prod_abs_le
#check logQuadratic_log_prod_phase_abs_le
#check logQuadraticMidpointError_one_zero

#print axioms logQuadratic_intervalIntegrable
#print axioms logQuadraticMidpointError_abs_le
#print axioms integral_logQuadratic
#print axioms integral_logQuadratic_eq_phase
#print axioms logQuadratic_log_prod_abs_le
#print axioms logQuadratic_log_prod_phase_abs_le
#print axioms log_midpoint_sum_abs_le
#print axioms logQuadraticMidpointError_one_zero

example (m : ℕ) (hm : 1 ≤ m) (y : ℝ) :
    |(∑ j ∈ range m, Real.log (((j : ℝ)+1/2)^2+y^2)/2) -
      (∫ x : ℝ in 0..(m : ℝ), Real.log (x^2+y^2)/2)| ≤
        1+Real.log (m : ℝ) :=
  logQuadraticMidpointError_abs_le m hm y

example (m : ℕ) (hm : 1 ≤ m) :
    |Real.log (∏ j ∈ range m, ((j : ℝ)+1/2)^2)/2 -
      ((m : ℝ)*Real.log (m : ℝ)-(m : ℝ))| ≤ 1+Real.log (m : ℝ) := by
  simpa [Real.log_pow, mul_div_assoc] using logQuadratic_log_prod_abs_le m hm 0

example : logQuadraticMidpointError 1 0 = 1-Real.log 2 :=
  logQuadraticMidpointError_one_zero

example : (∫ x : ℝ in 0..1, logQuadratic 0 x) = -1 := by
  simp
