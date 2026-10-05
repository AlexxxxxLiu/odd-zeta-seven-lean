import OddZetaMixed.RationalLogBounds

/-!
# Finite checks of the rational logarithm interface

All certificate decisions below are reduced by the Lean kernel. No native
decision procedure or floating-point logarithm is used. The rounded examples
exercise the intended twelve-term, common-denominator compact-cell interface.
-/

set_option autoImplicit false

namespace OddZetaMixed.RationalLogBounds

example : argument 1 = 0 ∧ argument 2 = 1/3 := by
  norm_num [argument]

example : mantissa (1/3) (-2) = 4/3 := by
  norm_num [mantissa]

example : logTwoLower 1 = 2/3 ∧ logTwoUpper 1 = 3/4 := by
  norm_num [logTwoLower, logTwoUpper, unitLower, unitUpper, argument,
    atanhLower, atanhUpper, atanhError, Finset.sum_range_succ]

example : check 1 0 0 0 0 = true := by decide +kernel

example : check 2 0 6 (69314/100000) (69315/100000) = true := by decide +kernel

example : check 3 1 6 (109861/100000) (109862/100000) = true := by decide +kernel

example : check (1/3) (-2) 6 (-109862/100000) (-109861/100000) = true := by decide +kernel

theorem logTwo_checked :
    (69314/100000 : ℝ) ≤ Real.log 2 ∧ Real.log 2 ≤ (69315/100000 : ℝ) := by
  simpa using of_check 2 0 6 (69314/100000) (69315/100000) (by decide +kernel)

theorem logThird_checked : (-109862/100000 : ℝ) ≤ Real.log (1/3) ∧
    Real.log (1/3) ≤ (-109861/100000 : ℝ) := by
  simpa using of_check (1/3) (-2) 6 (-109862/100000) (-109861/100000) (by decide +kernel)

example : checkRounded 2 0 12 (10^12) (6931471805/10^10) (6931471806/10^10) = true := by
  decide +kernel

example : checkRounded 3 1 12 (10^12) (10986122886/10^10) (10986122888/10^10) = true := by
  decide +kernel

example : checkRounded (1/3) (-2) 12 (10^12)
    (-10986122888/10^10) (-10986122886/10^10) = true := by
  decide +kernel

example : checkRounded 154 7 12 (10^12)
    (50369526023/10^10) (50369526027/10^10) = true := by
  decide +kernel

theorem log154_checked : (50369526023/10^10 : ℝ) ≤ Real.log 154 ∧
    Real.log 154 ≤ (50369526027/10^10 : ℝ) := by
  convert of_checkRounded 154 7 12 (10^12)
    (50369526023/10^10) (50369526027/10^10) (by decide +kernel) using 1 <;> norm_num

/-- Twenty phase-like arguments `a^2+s^2`, across a scale boundary. The wide
witnesses test evaluation cost only, not any compact phase ceiling. -/
theorem phaseLike_batch_checked : ∀ j : Fin 20,
    checkRounded ((86+(j.val : ℚ))^2+9/4) (if j.val < 5 then 12 else 13)
      12 (10^12) 0 100 = true := by
  decide +kernel

-- Invalid positivity, scale, denominator, and enclosure claims are rejected.
example : check 0 0 6 (-1) 1 = false := by decide +kernel
example : check (-1) 0 6 (-1) 1 = false := by decide +kernel
example : check 2 3 6 0 1 = false := by decide +kernel
example : checkRounded 2 0 12 0 0 1 = false := by decide +kernel
example : checkRounded 2 0 12 (10^12) 0 0 = false := by decide +kernel

#print axioms atanh_sound
#print axioms argument_mem
#print axioms logTwo_sound
#print axioms sound
#print axioms of_check
#print axioms roundedAtanh_outer
#print axioms rounded_sound
#print axioms of_checkRounded
#print axioms logTwo_checked
#print axioms logThird_checked
#print axioms log154_checked
#print axioms phaseLike_batch_checked

end OddZetaMixed.RationalLogBounds
