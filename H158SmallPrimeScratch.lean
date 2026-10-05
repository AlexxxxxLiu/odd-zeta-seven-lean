import OddZetaMixed.H158SmallPrimeBudget
import Mathlib.Tactic.NormNum.NatSqrt

/-!
Sidecar regression: ten general signature checks, two concrete endpoint
checks, and six transitive axiom reports. No parent aggregator is imported.
-/

set_option autoImplicit false

open OddZetaMixed OddZetaMixed.LocalJetValuation
open OddZetaMixed.H158SmallPrimeBudget Filter

-- 1. The numerator floor is attached to the actual local numerator.
example {p M : ℕ} [Fact p.Prime] (n k : ℕ) (i j : Fin (2*n))
    (hk : k ∈ h158PoleSet n) (hM : 158*n+2 < p^M) :
    Weighted p (h158LocalNumerator n i j k) (factorialMass p n) M :=
  localNumerator_weighted n k i j hk hM

-- 2. The pole-order cancellation is retained in the actual coefficients.
example {p M : ℕ} [Fact p.Prime] (n k : ℕ) (i j : Fin (2*n))
    (hk : k ∈ h158PoleSet n) (hM : 158*n+2 < p^M)
    (l : Fin (h158PoleOrder n k)) :
    AtLeast p (((l.val : ℤ)+1-32)*(M : ℤ)) (h158PrincipalCoefficients n i j k l) :=
  principalCoefficient_floor n k i j hk hM l

-- 3. A stronger entry floor holds throughout p <= h0.
example {p : ℕ} [Fact p.Prime] (n : ℕ) (i j : Fin (2*n))
    (hpH : p ≤ 158*n+2) :
    FormalAtLeast p (-72*(Nat.log p (158*n+2) : ℤ)) (h158SevenMatrix n i j) :=
  matrixEntry_floor_log n i j hpH

-- 4. The requested small-prime entry floor needs no supplied bound.
example {p : ℕ} [Fact p.Prime] (n : ℕ) (i j : Fin (2*n))
    (hpH : p^2 ≤ 158*n+2) :
    FormalAtLeast p (-85*(Nat.log p (158*n+2) : ℤ)) (h158SevenMatrix n i j) :=
  matrixEntry_small_prime_floor n i j hpH

-- 5. This controls actual reduced rational coefficient denominators.
example {p : ℕ} [Fact p.Prime] (n : ℕ) (i j : Fin (2*n))
    (hpH : p^2 ≤ 158*n+2) (m : Fin 7 →₀ ℕ) :
    padicValNat p ((h158SevenMatrix n i j).coeff m).den ≤ 85*Nat.log p (158*n+2) :=
  matrixEntry_coefficient_den_bound n i j hpH m

-- 6. The determinant has exactly rank 2n, not an independent rank input.
example {p : ℕ} [Fact p.Prime] (n : ℕ) (hpH : p^2 ≤ 158*n+2) :
    FormalAtLeast p (-170*(n : ℤ)*(Nat.log p (158*n+2) : ℤ)) (h158SevenMatrix n).det :=
  determinant_small_prime_floor n hpH

-- 7. The scalar is the actual primitive normalization scalar.
example {p : ℕ} [Fact p.Prime] (n : ℕ) (hpH : p^2 ≤ 158*n+2)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    -padicValRat p (h158PrimitiveScalar n) ≤ 170*(n : ℤ)*(Nat.log p (158*n+2) : ℤ) :=
  primitiveCost_small_prime_bound n hpH hdet

-- 8. The complete finite signed sum has an explicit elementary majorant.
example (n : ℕ) (hdet : (h158SevenMatrix n).det ≠ 0) :
    smallPrimeCost n ≤
      170*(n : ℝ)*(Nat.sqrt (158*n+2) : ℝ)*Real.log (158*n+2 : ℕ) :=
  smallPrimeCost_le n hdet

-- 9. The positive elementary majorant is subquadratic.
example (ε : ℝ) (hε : 0 < ε) :
    ∀ᶠ n : ℕ in atTop,
      170*(n : ℝ)*(Nat.sqrt (158*n+2) : ℝ)*Real.log (158*n+2 : ℕ) ≤ ε*(n : ℝ)^2 :=
  smallPrimeMajorant_subquadratic ε hε

-- 10. This is an upper rate on the actual nonzero determinants.
example : UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0} smallPrimeCost 0 :=
  smallPrimeCost_upperQuadraticRate

-- 11. The finite prime range is exactly p <= floor(sqrt(160)) at n = 1.
example : smallPrimeSet 1 = {2, 3, 5, 7, 11} := by
  unfold smallPrimeSet
  rw [show Nat.sqrt (158*1+2) = 12 by norm_num]
  decide

-- 12. At n = 0 the signed sum is empty, without any determinant hypothesis.
example : smallPrimeCost 0 = 0 := by
  have h : smallPrimeSet 0 = ∅ := by
    unfold smallPrimeSet
    rw [show Nat.sqrt (158*0+2) = 1 by norm_num]
    decide
  simp only [smallPrimeCost, h, Finset.sum_empty]

#print axioms matrixEntry_coefficient_den_bound
#print axioms determinant_small_prime_floor
#print axioms primitiveCost_small_prime_bound
#print axioms smallPrimeCost_le
#print axioms smallPrimeMajorant_subquadratic
#print axioms smallPrimeCost_upperQuadraticRate
