import Mathlib.Tactic
import Mathlib.Analysis.Complex.ExponentialBounds

namespace OddZetaMixed

def lowBudget : ℚ := 1297 / 20
def middleBudget : ℚ := 1254667015242580091356706417 / 2900481066079438042309680
def highBudget : ℚ := 101307421 / 203490
def totalBudget : ℚ := lowBudget + middleBudget + highBudget
def safeDecay : ℚ := 25363143 / 25000

theorem totalBudget_exact :
    totalBudget = 20207366444809198876116205859 / 20303367462556066296167760 := by
  norm_num [totalBudget, lowBudget, middleBudget, highBudget]

theorem totalBudget_lt : totalBudget < 995272 / 1000 := by
  norm_num [totalBudget, lowBudget, middleBudget, highBudget]

theorem gap_gt : (77 / 4 : ℚ) < safeDecay - totalBudget := by
  norm_num [safeDecay, totalBudget, lowBudget, middleBudget, highBudget]

theorem refined_gap_gt : (482 / 25 : ℚ) < safeDecay - (totalBudget - 1 / 30) := by
  norm_num [safeDecay, totalBudget, lowBudget, middleBudget, highBudget]

noncomputable def analyticExpression : ℝ := 8123483 / 8000 - 12 + 8 * Real.log 4

/-- This rounding is proved with the library's rational logarithm bounds, not Arb output. -/
theorem safeDecay_lt_analyticExpression : (safeDecay : ℝ) < analyticExpression := by
  have hlog : Real.log 4 = 2 * Real.log 2 := by
    calc
      Real.log 4 = Real.log ((2 : ℝ)^2) := by norm_num
      _ = 2 * Real.log 2 := by rw [Real.log_pow]; norm_num
  have h := Real.log_two_gt_d9
  norm_num [safeDecay, analyticExpression, hlog]
  linarith

theorem analytic_gap_gt : (77 / 4 : ℝ) < analyticExpression - (totalBudget : ℝ) := by
  have h : (77 / 4 : ℝ) < (safeDecay : ℝ) - (totalBudget : ℝ) := by
    norm_num [safeDecay, totalBudget, lowBudget, middleBudget, highBudget]
  linarith [safeDecay_lt_analyticExpression]

end OddZetaMixed
