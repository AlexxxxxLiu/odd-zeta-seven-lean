import OddZetaMixed.Budget

/-!
# A conservative comparison for the uncapped high-prime model

These are exact comparisons of constants, not proofs of arithmetic or
analytic application rates. In particular the low ceiling74 must still be
established for the actual low-prime cost before this budget can be used.
-/

namespace OddZetaMixed

def h158UncappedHighBudget : ℚ := 102751231/203490
def h158ConservativeLowCeiling : ℚ := 74
def h158ConservativeMiddleCeiling : ℚ := 433
def h158ConservativeHighCeiling : ℚ := 505
def h158ConservativeBudget : ℚ :=
  h158ConservativeLowCeiling+h158ConservativeMiddleCeiling+h158ConservativeHighCeiling

theorem h158UncappedHighBudget_lt :
    h158UncappedHighBudget < h158ConservativeHighCeiling := by
  norm_num [h158UncappedHighBudget, h158ConservativeHighCeiling]

theorem h158MiddleBudget_lt_conservative :
    middleBudget < h158ConservativeMiddleCeiling := by
  norm_num [middleBudget, h158ConservativeMiddleCeiling]

theorem h158ConservativeBudget_eq : h158ConservativeBudget = 1012 := by
  norm_num [h158ConservativeBudget, h158ConservativeLowCeiling,
    h158ConservativeMiddleCeiling, h158ConservativeHighCeiling]

theorem h158ConservativeBudget_gap :
    (5/2 : ℝ) < analyticExpression-(h158ConservativeBudget : ℝ) := by
  have hq : (5/2 : ℝ) < (safeDecay : ℝ)-(h158ConservativeBudget : ℝ) := by
    norm_num [safeDecay, h158ConservativeBudget_eq]
  linarith [safeDecay_lt_analyticExpression]

-- A uniform slack1 in each row ceiling would cost2 in the quadratic rate.
theorem h158ConservativeBudget_slack_gap :
    (1/2 : ℝ) < analyticExpression-2-(h158ConservativeBudget : ℝ) := by
  linarith [h158ConservativeBudget_gap]

end OddZetaMixed
