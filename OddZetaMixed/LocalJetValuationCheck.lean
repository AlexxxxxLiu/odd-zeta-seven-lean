import OddZetaMixed.LocalJetValuation
import OddZetaMixed.H158JetFunctional
import OddZetaMixed.H158GlobalArithmeticSeeds
import OddZetaMixed.TrustAudit

noncomputable section

open Polynomial OddZetaMixed OddZetaMixed.LocalJetValuation

-- Zero is accepted at any positive floor, but its library valuation is zero.
example : AtLeast 5 1000 (0 : ℚ) := zero 5 1000
example : padicValRat 5 (0 : ℚ) = 0 := by simp
example : ¬(1 ≤ padicValRat 5 (0 : ℚ)) := by norm_num
example : rootCredit 5 (0 : ℚ) = 1 := by simp [rootCredit]

-- Integer credits are exact residue indicators, including negative roots.
example : rootCredit 5 (-25 : ℚ) = 1 := by
  let : Fact (Nat.Prime 5) := ⟨by norm_num⟩
  convert rootCredit_int (p := 5) (-25) using 1 <;> norm_num
example : rootCredit 5 (7 : ℚ) = 0 := by
  let : Fact (Nat.Prime 5) := ⟨by norm_num⟩
  convert rootCredit_int (p := 5) 7 using 1 <;> norm_num

-- Nonunit divisor test: p^2/(p+X) = p-X modulo X^2. The loss v_p(C0)=1
-- is mandatory; assuming a unit divisor would produce the wrong floor.
example (p : ℕ) [Fact p.Prime] :
    AtLeast p 0 (((C (p : ℚ))-X).coeff 1) := by
  have hp : p.Prime := Fact.out
  have hpq : (p : ℚ) ≠ 0 := by exact_mod_cast hp.ne_zero
  have hN : Weighted p (C ((p : ℚ)^2)) 2 1 := by
    apply weighted_C
    apply Or.inr
    rw [padicValRat.pow, padicValRat.self hp.one_lt]
    norm_num
  have hC : Weighted p (C (p : ℚ)+X) 1 1 := by
    simpa only [add_comm] using (weighted_linear (slope := 1)
      (Or.inr (le_of_eq (padicValRat.self hp.one_lt).symm) : AtLeast p 1 (p : ℚ))
      le_rfl)
  have hC0 : (C (p : ℚ)+X).coeff 0 ≠ 0 := by simpa using hpq
  have hCval : padicValRat p ((C (p : ℚ)+X).coeff 0) = 1 := by
    simpa only [coeff_add, coeff_C_zero, coeff_X_zero, add_zero] using
      padicValRat.self hp.one_lt
  have he (q : ℕ) (hq : q < 2) :
      (C ((p : ℚ)^2)).coeff q = ((C (p : ℚ)-X)*(C (p : ℚ)+X)).coeff q := by
    have hprod : (C (p : ℚ)-X)*(C (p : ℚ)+X) = C ((p : ℚ)^2)-X^2 := by
      rw [map_pow]
      ring
    rw [hprod, coeff_sub, coeff_X_pow]
    simp [show q ≠ 2 by omega]
  have h := truncated_division (C ((p : ℚ)^2)) (C (p : ℚ)-X) (C (p : ℚ)+X)
    2 2 1 1 hC0 hCval (fun q _ => hC q) (fun q _ => hN q) he 1 (by omega)
  norm_num at h ⊢
  exact h

-- The existing base-jet definition is the very same polynomial being bounded.
example (p n k : ℕ) [Fact p.Prime] (hn : 0 < n)
    (hk : k ∈ h158PoleSet n) (hsq : 52*n < p^2) (q : ℕ)
    (hq : q < h158PoleOrder n k) :
    AtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
      h158CofactorCount p n k-(q : ℤ)) ((h158BasePrincipal n hn k).coeff q) := by
  simpa only [h158BasePrincipal, h158_numerator_credit_eq_count] using
    h158_base_coefficient_floor (p := p) n k hn hk hsq q hq

-- The original normalization can be replaced by its already proved floor sum.
example (p n k : ℕ) [Fact p.Prime] (hn : 0 < n)
    (hk : k ∈ h158PoleSet n) (hsq : 158*n+2 < p^2)
    (l : Fin (h158PoleOrder n k)) :
    AtLeast p (h158NormalizationFloor n p+h158NumeratorCount p n k-
      h158CofactorCount p n k-(h158PoleOrder n k : ℤ)+(l.val : ℤ)+1)
      (h158PrincipalCoefficients n ⟨0, by omega⟩ ⟨0, by omega⟩ k l) := by
  rw [← h158Normalization_valuation_main_prime n p hn Fact.out hsq]
  exact h158_base_laurent_floor_from_counts n k hn hk (by omega) l

-- The actual protected central top coefficient satisfies every floor.
example (p n : ℕ) (i j : Fin (2*n))
    (hk : 79*n+1 ∈ h158PoleSet n) :
    AtLeast p 1000 (h158PrincipalCoefficients n i j (79*n+1)
      (h158TopPoleIndex n (79*n+1) hk)) := by
  rw [h158PrincipalCoefficients_top_center n i j hk]
  exact zero p 1000

-- The anchor is the coordinate -2, congruent to the actual pole -7 mod 5.
example : Weighted 5 (taylor (-7 : ℚ) (taylor (2 : ℚ) (X^3))) 3 1 := by
  let : Fact (Nat.Prime 5) := ⟨by norm_num⟩
  simpa using weighted_anchor_power (p := 5) (-2) 7 3 (by norm_num)
example : ¬(5 : ℤ) ∣ 2+7 := by norm_num

-- Finite harmonic cutoff is fully included, even just below the p^2 boundary.
example : AtLeast 5 (-7) (harmonicCutoff 7 24) := by
  let : Fact (Nat.Prime 5) := ⟨by norm_num⟩
  simpa using harmonic_floor (p := 5) 7 24 (by norm_num)

-- The actual residue-block theorem can be consumed coefficientwise directly.
example (p n : ℕ) [Fact p.Prime] (hn : 0 < n) (hp : 0 < p)
    (hsq : 158*n+2 < p^2) (c : Fin p) (u v : Fin (4*n))
    (m : Fin 7 →₀ ℕ) :
    AtLeast p (h158NormalizationFloor n p+h158NumeratorCount p n c.val-
      h158DenominatorCount p n c.val-4+(u.val : ℤ)+(v.val : ℤ))
      ((h158ClusterMoment n hn (h158ResidueClass p hp) c (-(c.val : ℚ)) u v).coeff m) := by
  rw [← h158Normalization_valuation_main_prime n p hn Fact.out hsq]
  exact h158_residueClusterMoment_floor n hn hp (by omega) c u v m

-- Nonzero formal packets also yield a genuine Gauss-minimum lower bound.
example (p n : ℕ) [Fact p.Prime] (hn : 0 < n) (hp : 0 < p)
    (hsq : 57*n < p^2) (c : Fin p) (u v : Fin (4*n))
    (hP : h158ClusterMoment n hn (h158ResidueClass p hp) c (-(c.val : ℚ)) u v ≠ 0) :
    padicValRat p (h158Normalization n)+h158NumeratorCount p n c.val-
      h158DenominatorCount p n c.val-4+(u.val : ℤ)+(v.val : ℤ) ≤
      rationalPolynomialGaussValuation p
        (h158ClusterMoment n hn (h158ResidueClass p hp) c (-(c.val : ℚ)) u v) hP :=
  formal_gauss_lower (h158_residueClusterMoment_floor n hn hp hsq c u v) hP

#check truncated_division
#check h158_base_laurent_floor_from_counts
#check h158_base_laurent_floor_from_class_counts
#print axioms OddZetaMixed.LocalJetValuation.truncated_division
#print axioms OddZetaMixed.LocalJetValuation.h158_base_laurent_floor_from_counts
#print axioms OddZetaMixed.LocalJetValuation.h158_base_laurent_floor_from_class_counts
#check h158_jetValue_anchor_power_floor
#check h158_residueClusterMoment_floor
#print axioms OddZetaMixed.LocalJetValuation.h158_residueClusterMoment_floor
audit_project_axioms OddZetaMixed.LocalJetValuation
