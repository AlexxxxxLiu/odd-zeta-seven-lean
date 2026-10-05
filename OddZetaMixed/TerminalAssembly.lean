import OddZetaMixed.RateAssembly
import OddZetaMixed.IntegerObstruction
import OddZetaMixed.PrimeGate

noncomputable section

namespace OddZetaMixed

open Filter

/-- The integer contradiction needs a strict rate gap, not a particular
choice of rational budgets. All contributions refer to the same sequence. -/
theorem no_integer_sequence_with_rate_gap (Q : ℕ) (hQ : 0 < Q)
    (I : ℕ → ℤ) (S L : ℕ → ℝ) (C A B : ℝ) (hgap : A+B < 0)
    (hne : ∀ n, Nat.Prime (55*n+1) → ¬(55*n+1) ∣ Q → I n ≠ 0)
    (harith : UpperQuadraticRateOn {n | Nat.Prime (55*n+1) ∧ ¬(55*n+1) ∣ Q} S A)
    (hanalytic : UpperQuadraticRateOn {n | Nat.Prime (55*n+1) ∧ ¬(55*n+1) ∣ Q} L B)
    (hid : ∀ᶠ n in atTop, Nat.Prime (55*n+1) ∧ ¬(55*n+1) ∣ Q →
      Real.log |(I n : ℝ)| = S n + L n + C*(n : ℝ)) : False := by
  let good : Set ℕ := {n | Nat.Prime (55*n+1) ∧ ¬(55*n+1) ∣ Q}
  have hr := (harith.add hanalytic).add (upperQuadraticRateOn_linear good C)
  have hlog := hr.congr (hid.mono fun _ hn hg => (hn hg).symm)
  have hneg := hlog (-(A+B)/2) (by linarith)
  apply integer_obstruction_of_infinite_good_log I good (infinite_prime_gate Q hQ)
    (fun n hn => hne n hn.1 hn.2) (c := -(A+B)/2) (by linarith) 0
  filter_upwards [hneg] with n hn
  intro hg
  have h := hn hg
  nlinarith

/-- Conditional assembly of the established constants and the integer obstruction.
The two rate hypotheses and the same-sequence identity are not supplied here
for h158. This is deliberately not an irrationality theorem for zeta values. -/
theorem no_integer_sequence_with_global_budget (Q : ℕ) (hQ : 0 < Q)
    (I : ℕ → ℤ) (S L : ℕ → ℝ) (C : ℝ)
    (hne : ∀ n, Nat.Prime (55*n+1) → ¬(55*n+1) ∣ Q → I n ≠ 0)
    (harith : UpperQuadraticRateOn {n | Nat.Prime (55*n+1) ∧ ¬(55*n+1) ∣ Q}
      S (totalBudget : ℝ))
    (hanalytic : UpperQuadraticRateOn {n | Nat.Prime (55*n+1) ∧ ¬(55*n+1) ∣ Q}
      L (-analyticExpression))
    (hid : ∀ᶠ n in atTop, Nat.Prime (55*n+1) ∧ ¬(55*n+1) ∣ Q →
      Real.log |(I n : ℝ)| = S n + L n + C*(n : ℝ)) : False := by
  have hneg := same_sequence_negative_rate C harith hanalytic hid
  apply integer_obstruction_of_infinite_good_log I
    {n | Nat.Prime (55*n+1) ∧ ¬(55*n+1) ∣ Q}
    (infinite_prime_gate Q hQ) (fun n hn => hne n hn.1 hn.2)
    (c := 19) (by norm_num) 0
  simpa only [zero_mul, add_zero] using hneg

end OddZetaMixed
