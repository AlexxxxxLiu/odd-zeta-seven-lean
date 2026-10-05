import OddZetaMixed.Budget
import Mathlib.Order.Filter.AtTopBot.Basic
import Mathlib.Tactic

noncomputable section

namespace OddZetaMixed

open Filter

/-- Eventual upper quadratic rate, only at the relevant subsequence indices.
This is a predicate, not an assertion that a particular determinant satisfies it. -/
def UpperQuadraticRateOn (good : Set ℕ) (f : ℕ → ℝ) (A : ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∀ᶠ n in atTop, n ∈ good → f n ≤ (A+ε)*(n : ℝ)^2

theorem UpperQuadraticRateOn.add {good : Set ℕ} {f g : ℕ → ℝ} {A B : ℝ}
    (hf : UpperQuadraticRateOn good f A) (hg : UpperQuadraticRateOn good g B) :
    UpperQuadraticRateOn good (fun n => f n + g n) (A+B) := by
  intro ε hε
  filter_upwards [hf (ε/2) (by positivity), hg (ε/2) (by positivity)] with n hn hm
  intro hgood
  have h1 := hn hgood
  have h2 := hm hgood
  nlinarith

theorem UpperQuadraticRateOn.congr {good : Set ℕ} {f g : ℕ → ℝ} {A : ℝ}
    (hf : UpperQuadraticRateOn good f A)
    (hfg : ∀ᶠ n in atTop, n ∈ good → f n = g n) : UpperQuadraticRateOn good g A := by
  intro ε hε
  filter_upwards [hf ε hε, hfg] with n hn heq
  intro hgood
  rw [← heq hgood]
  exact hn hgood

theorem upperQuadraticRateOn_linear (good : Set ℕ) (C : ℝ) :
    UpperQuadraticRateOn good (fun n => C*(n : ℝ)) 0 := by
  intro ε hε
  obtain ⟨N, hN⟩ := exists_nat_gt (max 0 (C/ε))
  filter_upwards [eventually_ge_atTop N] with n hn
  intro _
  have hlarge : max 0 (C/ε) < (n : ℝ) := hN.trans_le (by exact_mod_cast hn)
  have hC : C < (n : ℝ)*ε := (div_lt_iff₀ hε).mp ((le_max_right _ _).trans_lt hlarge)
  have hnp : (0 : ℝ) ≤ n := Nat.cast_nonneg _
  nlinarith [mul_nonneg (sub_nonneg.mpr hC.le) hnp]

theorem global_arithmetic_rate {good : Set ℕ} {lo mid hi rem S : ℕ → ℝ}
    (hlo : UpperQuadraticRateOn good lo (lowBudget : ℝ))
    (hmid : UpperQuadraticRateOn good mid (middleBudget : ℝ))
    (hhi : UpperQuadraticRateOn good hi (highBudget : ℝ))
    (hrem : UpperQuadraticRateOn good rem 0)
    (hid : ∀ᶠ n in atTop, n ∈ good → S n = lo n + mid n + hi n + rem n) :
    UpperQuadraticRateOn good S (totalBudget : ℝ) := by
  have h := ((hlo.add hmid).add hhi).add hrem
  have hc : ((lowBudget : ℝ)+(middleBudget : ℝ)+(highBudget : ℝ)+0) =
      (totalBudget : ℝ) := by simp [totalBudget]
  rw [hc] at h
  exact h.congr (hid.mono (fun _ hn hgood => (hn hgood).symm))

/-- The positive rational-input denominator contributes a linear, not quadratic, rate. -/
theorem same_sequence_negative_rate {good : Set ℕ} {S L logI : ℕ → ℝ} (C : ℝ)
    (harith : UpperQuadraticRateOn good S (totalBudget : ℝ))
    (hanalytic : UpperQuadraticRateOn good L (-analyticExpression))
    (hid : ∀ᶠ n in atTop, n ∈ good → logI n = S n + L n + C*(n : ℝ)) :
    ∀ᶠ n in atTop, n ∈ good → logI n ≤ -(19 : ℝ)*(n : ℝ)^2 := by
  have h := (harith.add hanalytic).add (upperQuadraticRateOn_linear good C)
  have h' := h.congr (hid.mono (fun _ hn hgood => (hn hgood).symm))
  have hrate := h' (1/4) (by norm_num)
  filter_upwards [hrate] with n hn
  intro hgood
  have hgap := analytic_gap_gt
  have hcoeff : (totalBudget : ℝ) + -analyticExpression + 0 + 1/4 ≤ -19 := by linarith
  exact (hn hgood).trans (mul_le_mul_of_nonneg_right hcoeff (sq_nonneg _))

end OddZetaMixed
