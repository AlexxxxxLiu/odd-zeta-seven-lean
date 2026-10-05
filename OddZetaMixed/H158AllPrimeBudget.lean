import OddZetaMixed.H158ThresholdBudget
import OddZetaMixed.H158SmallPrimeBudget
import OddZetaMixed.H158FiniteCost
import OddZetaMixed.H158IntegerValuedJets

/-!
# An explicit all-prime upper formula for the actual arithmetic cost

This combines proved small-prime denominators, the full reflection-folded
threshold bound, and the integral upper tail. No prime is omitted. Passing
from this finite formula to the target quadratic constant still requires
the sharper high-band inventory and the certified cell limit argument.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed
open Finset

def h158ExplicitPrimeCost (n p : ℕ) (tau : ℚ) : ℤ :=
  if p^2 ≤ 158*n+2 then 170*(n : ℤ)*(Nat.log p (158*n+2) : ℤ)
  else if hp : 0 < p then min (40*(n : ℤ)) (h158FoldedThresholdCost n p hp tau) else 0

theorem h158_primitive_cost_le_explicit_prime_cost (n p : ℕ) (hn : 0 < n)
    (hp : p.Prime) (tau : ℚ) (hdet : (h158SevenMatrix n).det ≠ 0) :
    -padicValRat p (h158PrimitiveScalar n) ≤ h158ExplicitPrimeCost n p tau := by
  let : Fact p.Prime := ⟨hp⟩
  unfold h158ExplicitPrimeCost
  split_ifs with hsmall hp0
  · exact H158SmallPrimeBudget.primitiveCost_small_prime_bound n hsmall hdet
  · have hp2 : p ≠ 2 := by
      intro he
      subst p
      norm_num at hsmall
      omega
    exact le_min (H158IntegerValuedJets.h158_primitiveCost_le_forty n (by omega) hdet)
      (h158_primitive_cost_folded_threshold n hn hp0 hp2 (by omega) tau hdet)
  · exact (hp0 hp.pos).elim

def h158ExplicitArithmeticBudget (n : ℕ) (tau : ℕ → ℚ) : ℝ :=
  ∑ p ∈ (range (57*n+1)).filter Nat.Prime,
    (h158ExplicitPrimeCost n p (tau p) : ℝ)*Real.log p

/-- An all-index bound with no supplied local divisibility, minor, or
allocation hypotheses. The rational thresholds may be chosen arbitrarily. -/
theorem h158PrimitiveCost_le_explicit_budget (n : ℕ) (hn : 0 < n)
    (tau : ℕ → ℚ) (hdet : (h158SevenMatrix n).det ≠ 0) :
    h158PrimitiveCost n ≤ h158ExplicitArithmeticBudget n tau := by
  apply (h158PrimitiveCost_le_prime_cutoff n).trans
  apply sum_le_sum
  intro p hp
  have hprime := (mem_filter.mp hp).2
  have h := h158_primitive_cost_le_explicit_prime_cost n p hn hprime (tau p) hdet
  have hreal : -(padicValRat p (h158PrimitiveScalar n) : ℝ) ≤
      (h158ExplicitPrimeCost n p (tau p) : ℝ) := by exact_mod_cast h
  exact mul_le_mul_of_nonneg_right hreal
    (Real.log_nonneg (by exact_mod_cast hprime.one_lt.le))

end OddZetaMixed
