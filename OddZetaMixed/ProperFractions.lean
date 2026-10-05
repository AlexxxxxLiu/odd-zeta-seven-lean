import Mathlib.FieldTheory.RatFunc.Degree
import Mathlib.Algebra.Polynomial.PartialFractions
import Mathlib.Tactic

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

/-- Zero is separated because RatFunc.intDegree assigns it degree zero. -/
def StrictlyProper (f : RatFunc ℚ) : Prop := f = 0 ∨ f.intDegree < 0

theorem StrictlyProper.add {f g : RatFunc ℚ} (hf : StrictlyProper f)
    (hg : StrictlyProper g) : StrictlyProper (f+g) := by
  rcases hf with rfl | hf
  · simpa using hg
  rcases hg with rfl | hg
  · exact Or.inr (by simpa using hf)
  by_cases hfg : f+g=0
  · exact Or.inl hfg
  · right
    apply lt_of_le_of_lt (RatFunc.intDegree_add_le (by intro h; simp [h] at hg) hfg)
    exact max_lt hf hg

theorem StrictlyProper.neg {f : RatFunc ℚ} (hf : StrictlyProper f) :
    StrictlyProper (-f) := by
  rcases hf with rfl | hf
  · exact Or.inl (neg_zero)
  · exact Or.inr (by simpa using hf)

theorem strictlyProper_sum {ι : Type*} (s : Finset ι) (f : ι → RatFunc ℚ)
    (hf : ∀ i ∈ s, StrictlyProper (f i)) : StrictlyProper (∑ i ∈ s, f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => exact Or.inl (by simp)
  | @insert i s hi ih =>
    rw [Finset.sum_insert hi]
    exact (hf i (by simp)).add (ih (fun j hj => hf j (by simp [hj])))

theorem strictlyProper_principal (c a : ℚ) (j : ℕ) :
    StrictlyProper (algebraMap ℚ[X] (RatFunc ℚ) (C c) /
      algebraMap ℚ[X] (RatFunc ℚ) ((X+C a)^(j+1))) := by
  by_cases hc : c=0
  · left; simp [hc]
  · right
    have hi := IsFractionRing.injective ℚ[X] (RatFunc ℚ)
    have hcn : C c ≠ 0 := by simpa
    have hdn := (monic_X_add_C a).pow (j+1) |>.ne_zero
    rw [RatFunc.intDegree_div (by simpa only [map_zero] using hi.ne hcn)
      (by simpa only [map_zero] using hi.ne hdn),
      RatFunc.intDegree_polynomial, RatFunc.intDegree_polynomial,
      natDegree_C, (monic_X_add_C a).natDegree_pow, natDegree_X_add_C]
    have := Int.natCast_nonneg j
    push_cast
    omega

theorem strictlyProper_polynomial_iff (q : ℚ[X]) :
    StrictlyProper (algebraMap ℚ[X] (RatFunc ℚ) q) ↔ q=0 := by
  constructor
  · intro h
    rcases h with h | h
    · exact (IsFractionRing.injective ℚ[X] (RatFunc ℚ)) (by simpa using h)
    · rw [RatFunc.intDegree_polynomial] at h
      exact (not_lt_of_ge (Int.natCast_nonneg _) h).elim
  · intro h; left; simp [h]

theorem quotient_eq_zero_of_strictlyProper (f r : RatFunc ℚ) (q : ℚ[X])
    (hf : StrictlyProper f) (hr : StrictlyProper r)
    (h : f = algebraMap ℚ[X] (RatFunc ℚ) q + r) : q=0 := by
  apply (strictlyProper_polynomial_iff q).mp
  have heq : algebraMap ℚ[X] (RatFunc ℚ) q = f + -r := by rw [h]; ring
  rw [heq]
  exact hf.add hr.neg

end OddZetaMixed
