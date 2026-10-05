import OddZetaMixed.RateAssembly
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Zero-safe exponential rates and guarded logarithmic rates

An analytic upper bound should first bound the absolute value by an
exponential. It then remains valid when the actual determinant is zero.
In contrast, `Real.log 0 = 0`, not negative infinity. Conversion to the
logarithmic rate therefore requires actual nonvanishing on the good indices.

These are general conversion lemmas, not an analytic estimate for h158.
-/

namespace OddZetaMixed

open Filter

/-- Conversion to a logarithmic upper bound at a genuinely nonzero value. -/
theorem log_abs_le_of_abs_le_exp {x B : ℝ} (hx : x ≠ 0) (h : |x| ≤ Real.exp B) :
    Real.log |x| ≤ B :=
  (Real.log_le_iff_le_exp (abs_pos.mpr hx)).mpr h

/-- The exact zero-safe alternative to unconditionally taking logarithms. -/
theorem abs_le_exp_iff_eq_zero_or_log_abs_le (x B : ℝ) :
    |x| ≤ Real.exp B ↔ x = 0 ∨ Real.log |x| ≤ B := by
  constructor
  · intro h
    by_cases hx : x = 0
    · exact Or.inl hx
    · exact Or.inr (log_abs_le_of_abs_le_exp hx h)
  · rintro (rfl | h)
    · simpa only [abs_zero] using (Real.exp_pos B).le
    · exact Real.le_exp_of_log_le h

/-- Eventual exponential upper rate, allowing zeros and finite exceptional
indices. This is a predicate, not a proved estimate for any specific sequence. -/
def UpperQuadraticExpRateOn (good : Set ℕ) (f : ℕ → ℝ) (A : ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∀ᶠ n in atTop, n ∈ good →
    |f n| ≤ Real.exp ((A + ε) * (n : ℝ) ^ 2)

/-- In particular, an all-index exponential rate restricts to a rational gate. -/
theorem UpperQuadraticExpRateOn.mono_set {good good' : Set ℕ} {f : ℕ → ℝ} {A : ℝ}
    (hf : UpperQuadraticExpRateOn good f A) (hsub : good' ⊆ good) :
    UpperQuadraticExpRateOn good' f A := by
  intro ε hε
  exact (hf ε hε).mono fun _ hn hgood => hn (hsub hgood)

/-- Only eventual nonvanishing of the actual sequence on the same good set
is needed. Nonvanishing of a formal polynomial would not suffice. -/
theorem UpperQuadraticExpRateOn.log_abs {good : Set ℕ} {f : ℕ → ℝ} {A : ℝ}
    (hf : UpperQuadraticExpRateOn good f A)
    (hne : ∀ᶠ n in atTop, n ∈ good → f n ≠ 0) :
    UpperQuadraticRateOn good (fun n => Real.log |f n|) A := by
  intro ε hε
  filter_upwards [hf ε hε, hne] with n hn hnonzero
  intro hgood
  exact log_abs_le_of_abs_le_exp (hnonzero hgood) (hn hgood)

/-- A fixed linear contribution is absorbed into the epsilon slack of an
exponential quadratic rate. No nonvanishing assumption is used here. -/
theorem upperQuadraticExpRateOn_of_eventually_exp_quadratic_linear
    {good : Set ℕ} {f : ℕ → ℝ} {A C : ℝ}
    (hbound : ∀ᶠ n in atTop, n ∈ good →
      |f n| ≤ Real.exp (A * (n : ℝ) ^ 2 + C * (n : ℝ))) :
    UpperQuadraticExpRateOn good f A := by
  intro ε hε
  filter_upwards [hbound, upperQuadraticRateOn_linear good C ε hε] with n hn hlinear
  intro hgood
  apply (hn hgood).trans
  apply Real.exp_le_exp.mpr
  have hlin := hlinear hgood
  nlinarith

/-- Direct guarded conversion of a quadratic exponential estimate with a
linear correction to the existing logarithmic rate interface. -/
theorem upperQuadraticRateOn_log_abs_of_eventually_exp_quadratic_linear
    {good : Set ℕ} {f : ℕ → ℝ} {A C : ℝ}
    (hbound : ∀ᶠ n in atTop, n ∈ good →
      |f n| ≤ Real.exp (A * (n : ℝ) ^ 2 + C * (n : ℝ)))
    (hne : ∀ᶠ n in atTop, n ∈ good → f n ≠ 0) :
    UpperQuadraticRateOn good (fun n => Real.log |f n|) A :=
  (upperQuadraticExpRateOn_of_eventually_exp_quadratic_linear hbound).log_abs hne

end OddZetaMixed
