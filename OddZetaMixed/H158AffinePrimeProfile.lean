import OddZetaMixed.H158PrimeProfileRate

/-!
# Rational affine data as an actual prime-weighted profile

Checks on the rational endpoints provide continuity, nonnegativity and an
exact integral. Arithmetic soundness is separate: the final interface still
requires a bound on the actual primitive scalar, not only a data check.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset Filter

structure H158AffinePrimeCell where
  left : ℚ
  right : ℚ
  constant : ℚ
  slope : ℚ
  deriving DecidableEq

namespace H158AffinePrimeCell

def atRat (c : H158AffinePrimeCell) (x : ℚ) : ℚ := c.constant+c.slope*x
def weight (c : H158AffinePrimeCell) (x : ℝ) : ℝ := (c.slope : ℝ)*x+c.constant
def integral (c : H158AffinePrimeCell) : ℚ :=
  c.constant*(c.right-c.left)+c.slope*(c.right^2-c.left^2)/2

def check (c : H158AffinePrimeCell) : Prop :=
  0 < c.left ∧ c.left ≤ c.right ∧ c.right ≤ 57 ∧
    0 ≤ c.atRat c.left ∧ 0 ≤ c.atRat c.right

instance (c : H158AffinePrimeCell) : Decidable c.check :=
  inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _ ∧ _))

theorem weight_atRat (c : H158AffinePrimeCell) (x : ℚ) :
    c.weight (x : ℝ) = (c.atRat x : ℝ) := by
  simp only [weight, atRat, Rat.cast_add, Rat.cast_mul]
  ring

theorem weight_continuous (c : H158AffinePrimeCell) : Continuous c.weight := by
  unfold weight
  fun_prop

theorem weight_nonneg (c : H158AffinePrimeCell) (h : c.check)
    (x : ℝ) (hx : x ∈ Set.Icc (c.left : ℝ) (c.right : ℝ)) : 0 ≤ c.weight x := by
  have hl : (0 : ℝ) ≤ c.constant+c.slope*(c.left : ℝ) := by
    exact_mod_cast h.2.2.2.1
  have hr : (0 : ℝ) ≤ c.constant+c.slope*(c.right : ℝ) := by
    exact_mod_cast h.2.2.2.2
  unfold weight
  by_cases hs : (0 : ℝ) ≤ c.slope
  · nlinarith [mul_nonneg hs (sub_nonneg.mpr hx.1)]
  · nlinarith [mul_nonneg (neg_nonneg.mpr (le_of_not_ge hs)) (sub_nonneg.mpr hx.2)]

theorem integral_weight (c : H158AffinePrimeCell) :
    (∫ x in (c.left : ℝ)..(c.right : ℝ), c.weight x) = (c.integral : ℝ) := by
  unfold weight
  rw [OddZetaPNT.h158_integral_affine]
  simp only [integral, Rat.cast_add, Rat.cast_mul, Rat.cast_sub,
    Rat.cast_div, Rat.cast_pow, Rat.cast_ofNat]
  ring

end H158AffinePrimeCell

def h158AffineProfile {ι : Type*} (s : Finset ι) (c : ι → H158AffinePrimeCell)
    (cut small C : ℝ) (n p : ℕ) : ℝ :=
  h158PiecewisePrimeProfile s (fun i => (c i).weight)
    (fun i => (c i).left) (fun i => (c i).right) cut small C n p

theorem h158AffineProfile_rate {ι : Type*} (s : Finset ι) (c : ι → H158AffinePrimeCell)
    (cut small C : ℝ) (hcut : 0 < cut) (hcut57 : cut ≤ 57)
    (hc : ∀ i ∈ s, (c i).check) :
    Tendsto (fun n : ℕ => h158ProfilePrimeSum n (h158AffineProfile s c cut small C n)/(n : ℝ)^2)
      atTop (nhds (small*cut+((∑ i ∈ s, (c i).integral : ℚ) : ℝ))) := by
  have ht := h158PiecewisePrimeProfile_ratio_limit s (fun i => (c i).weight)
    (fun i => (c i).left) (fun i => (c i).right) cut small C hcut hcut57
    (fun i hi => by exact_mod_cast (hc i hi).1)
    (fun i hi => by exact_mod_cast (hc i hi).2.1)
    (fun i hi => by exact_mod_cast (hc i hi).2.2.1)
    (fun i hi => (c i).weight_continuous.continuousOn)
  simp_rw [H158AffinePrimeCell.integral_weight] at ht
  change Tendsto (fun n : ℕ => h158ProfilePrimeSum n
    (h158PiecewisePrimeProfile s (fun i => (c i).weight)
      (fun i => (c i).left) (fun i => (c i).right) cut small C n)/(n : ℝ)^2)
    atTop (nhds (small*cut+((∑ i ∈ s, (c i).integral : ℚ) : ℝ)))
  simpa only [Rat.cast_sum] using ht

/-- A finite rational profile check does not replace `hlocal`. -/
theorem h158PrimitiveCost_rate_of_affine_profile {ι : Type*} (s : Finset ι)
    (c : ι → H158AffinePrimeCell) (cut small C : ℝ)
    (hcut : 0 < cut) (hcut57 : cut ≤ 57) (hsmall : 0 ≤ small) (hC : 0 ≤ C)
    (hc : ∀ i ∈ s, (c i).check)
    (hlocal : ∀ᶠ n : ℕ in atTop, (h158SevenMatrix n).det ≠ 0 →
      ∀ p, p.Prime → p ≤ 57*n → 158*n+2 < p^2 → ¬p ∣ n →
        (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤
          h158AffineProfile s c cut small C n p) :
    UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0} h158PrimitiveCost
      (small*cut+((∑ i ∈ s, (c i).integral : ℚ) : ℝ)) := by
  have ht := h158PrimitiveCost_rate_of_piecewise_profile s (fun i => (c i).weight)
    (fun i => (c i).left) (fun i => (c i).right) cut small C hcut hcut57 hsmall hC
    (fun i hi => by exact_mod_cast (hc i hi).1)
    (fun i hi => by exact_mod_cast (hc i hi).2.1)
    (fun i hi => by exact_mod_cast (hc i hi).2.2.1)
    (fun i hi => (c i).weight_continuous.continuousOn)
    (fun i hi => (c i).weight_nonneg (hc i hi)) hlocal
  simp_rw [H158AffinePrimeCell.integral_weight] at ht
  simpa only [Rat.cast_sum] using ht

#print axioms h158AffineProfile_rate
#print axioms h158PrimitiveCost_rate_of_affine_profile

end OddZetaMixed
