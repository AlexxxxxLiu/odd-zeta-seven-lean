import OddZetaMixed.H158Normalization
import OddZetaMixed.ExponentialRate
import OddZetaMixed.TerminalAssembly
import Mathlib.NumberTheory.Real.Irrational

/-!
# Conditional endpoint for the actual h158 objects

This module constructs the SAME cleared integer sequence under joint
rationality. Its reusable endpoint has three substantive hypotheses below.
H158GateAssembly discharges the third and exports a two-rate endpoint.
The two actual global rates are still unproved; this module is not an
unconditional Lean certification of mixed irrationality.
-/

noncomputable section

namespace OddZetaMixed

open Filter

def H158ArithmeticBound : Prop :=
  UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0}
    h158PrimitiveCost (totalBudget : ℝ)

def H158AnalyticBound : Prop :=
  UpperQuadraticExpRateOn Set.univ (fun n => Matrix.det (h158Functional n))
    (-analyticExpression)

def H158RationalGate : Prop :=
  ∀ (z : Fin 7 → ℚ) (Q : ℕ), 0 < Q →
    (∀ i, ∃ a : ℤ, (Q : ℚ)*z i = (a : ℚ)) →
    ∀ n, Nat.Prime (55*n+1) → ¬ (55*n+1) ∣ Q →
      MvPolynomial.eval z (h158SevenMatrix n).det ≠ 0

theorem natural_common_denominator_exists (z : Fin 7 → ℚ) :
    ∃ Q : ℕ, 0 < Q ∧ ∀ i, ∃ a : ℤ, (Q : ℚ)*z i = (a : ℚ) := by
  obtain ⟨Q,hQ,hden⟩ := common_denominator_exists z
  refine ⟨Q.toNat, by omega, ?_⟩
  have hcast : (Q.toNat : ℚ) = (Q : ℚ) := by
    exact_mod_cast Int.toNat_of_nonneg hQ.le
  simpa only [hcast] using hden

theorem rational_specialization_cast (n : ℕ) (z : Fin 7 → ℚ)
    (hz : ∀ i, (z i : ℝ) = sevenZetaValues i) :
    (MvPolynomial.eval z (h158SevenMatrix n).det : ℝ) =
      Matrix.det (h158Functional n) := by
  have h := MvPolynomial.eval₂_comp (algebraMap ℚ ℝ) z (h158SevenMatrix n).det
  have hv : (algebraMap ℚ ℝ) ∘ z = sevenZetaValues := funext hz
  rw [hv, h158SevenMatrix_det_eval] at h
  exact h

/-- Actual mixed-zeta assembly with three explicit application inputs.
H158GateAssembly supplies the gate. All rationality, normalization, clearing,
and same-sequence bookkeeping are proved here rather than assumed. -/
theorem h158_seven_irrational_of_rates (A B : ℝ) (hgap : A+B < 0)
    (harith : UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0}
      h158PrimitiveCost A)
    (hanalytic : UpperQuadraticExpRateOn Set.univ
      (fun n => Matrix.det (h158Functional n)) B)
    (hgate : H158RationalGate) : ∃ i : Fin 7, Irrational (sevenZetaValues i) := by
  by_contra h
  have hr (i : Fin 7) : ∃ q : ℚ, (q : ℝ) = sevenZetaValues i := by
    obtain ⟨q,hq⟩ := exists_rat_of_not_irrational (fun hi => h ⟨i,hi⟩)
    exact ⟨q,hq.symm⟩
  choose z hz using hr
  obtain ⟨Q,hQ,hden⟩ := natural_common_denominator_exists z
  let good : Set ℕ := {n | Nat.Prime (55*n+1) ∧ ¬(55*n+1) ∣ Q}
  have heval (n : ℕ) (hn : n ∈ good) :
      MvPolynomial.eval z (h158SevenMatrix n).det ≠ 0 :=
    hgate z Q hQ hden n hn.1 hn.2
  have hformal (n : ℕ) (hn : n ∈ good) : (h158SevenMatrix n).det ≠ 0 := by
    intro hzero
    exact heval n hn (by simp [hzero])
  have hactual (n : ℕ) (hn : n ∈ good) : Matrix.det (h158Functional n) ≠ 0 := by
    rw [← rational_specialization_cast n z hz]
    exact_mod_cast heval n hn
  have hpoly (n : ℕ) (hn : n ∈ good) :
      (h158PrimitivePolynomial n).eval₂ (Int.castRingHom ℚ) z ≠ 0 := by
    intro hzero
    exact heval n hn (by rw [h158PrimitiveNormalization_eval_rat, hzero, mul_zero])
  have hdenZ : ∀ i, ∃ a : ℤ, ((Q : ℤ) : ℚ)*z i = (a : ℚ) := by
    simpa using hden
  choose I hI using fun n => clear_denominators (h158PrimitivePolynomial n) z
    (Q : ℤ) (2*n) (h158PrimitivePolynomial_degree n) hdenZ
  have hQrat : (Q : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hQ
  have hQreal : (0 : ℝ) < Q := by exact_mod_cast hQ
  have hIne (n : ℕ) (hn : n ∈ good) : I n ≠ 0 := by
    intro hzero
    have he := hI n
    simp only [Int.cast_natCast, hzero, Int.cast_zero] at he
    exact (mul_ne_zero (pow_ne_zero _ hQrat) (hpoly n hn)) he
  have hIreal (n : ℕ) : (I n : ℝ) =
      (Q : ℝ)^(2*n) * (Matrix.det (h158Functional n)/(h158PrimitiveScalar n : ℝ)) := by
    have he := congrArg (fun q : ℚ => (q : ℝ)) (hI n)
    simp only [Rat.cast_mul, Rat.cast_pow, Rat.cast_intCast, Int.cast_natCast] at he
    rw [h158PrimitivePolynomial_rational_eval_actual n z hz] at he
    exact he.symm
  have hid (n : ℕ) (hn : n ∈ good) : Real.log |(I n : ℝ)| =
      h158PrimitiveCost n + Real.log |Matrix.det (h158Functional n)| +
        (2*Real.log (Q : ℝ))*(n : ℝ) := by
    have hc : (h158PrimitiveScalar n : ℝ) ≠ 0 := by
      exact_mod_cast h158PrimitiveScalar_ne_zero n
    rw [hIreal, abs_mul, abs_div, abs_pow, abs_of_pos hQreal,
      Real.log_mul (pow_ne_zero _ (ne_of_gt hQreal))
        (div_ne_zero (abs_ne_zero.mpr (hactual n hn)) (abs_ne_zero.mpr hc)),
      Real.log_div (abs_ne_zero.mpr (hactual n hn)) (abs_ne_zero.mpr hc),
      Real.log_pow]
    unfold h158PrimitiveCost
    push_cast
    ring
  have ha : UpperQuadraticRateOn good h158PrimitiveCost A := by
    intro ε hε
    exact (harith ε hε).mono fun n hn hg => hn (hformal n hg)
  have he : UpperQuadraticExpRateOn good (fun n => Matrix.det (h158Functional n))
      B := hanalytic.mono_set (by intro n hn; trivial)
  have hl := he.log_abs (Filter.Eventually.of_forall hactual)
  exact no_integer_sequence_with_rate_gap Q hQ I h158PrimitiveCost
    (fun n => Real.log |Matrix.det (h158Functional n)|) (2*Real.log (Q : ℝ))
    A B hgap
    (fun n hp hnd => hIne n ⟨hp,hnd⟩) ha hl (Filter.Eventually.of_forall hid)

/-- The original conditional endpoint is preserved with its original constants. -/
theorem h158_seven_irrational_of_three_inputs
    (harith : H158ArithmeticBound) (hanalytic : H158AnalyticBound)
    (hgate : H158RationalGate) : ∃ i : Fin 7, Irrational (sevenZetaValues i) := by
  exact h158_seven_irrational_of_rates (totalBudget : ℝ) (-analyticExpression)
    (by linarith [analytic_gap_gt]) harith hanalytic hgate

end OddZetaMixed
