import OddZetaMixed.H158Protected

/-! Scoped interface checks and axiom audit for the protected-zero bridge. -/

namespace OddZetaMixed

example (n : ℕ) (i j : Fin (2 * n)) (k r : ℕ)
    (hk : 1 ≤ k) (hkn : k ≤ 48 * n) (hr : r ≤ 4) :
    iteratedDeriv r (h158EntryReal n i j) (-(k : ℝ)) = 0 :=
  h158EntryReal_iteratedDeriv_protected n i j k r hk hkn hr

example (n : ℕ) (i j : Fin (2 * n)) (k : ℕ)
    (hk : 1 ≤ k) (hkn : k ≤ 48 * n) :
    iteratedDeriv 4 (h158EntryReal n i j) (-(k : ℝ)) / 24 = 0 :=
  h158EntryReal_dividedFourthDerivative_protected n i j k hk hkn

example (n : ℕ) (i j : Fin (2 * n)) :
    (∑' v : ℕ, iteratedDeriv 4 (h158EntryReal n i j)
      ((v : ℝ) - 48 * (n : ℝ)) / 24) =
      ∑' v : ℕ, iteratedDeriv 4 (h158EntryReal n i j) (v : ℝ) / 24 :=
  h158Functional_eq_nonnegative_sum n i j

example (n : ℕ) (i j : Fin (2 * n)) :
    HasSum (fun v : ℕ => iteratedDeriv 4 (h158EntryReal n i j) (v : ℝ) / 24)
      (h158Functional n i j) :=
  hasSum_h158EntryReal_fourthDerivative_nonnegative n i j

#print axioms h158_protected_in_halfline
#print axioms h158_denominator_eval_ne_zero_at_protected
#print axioms h158_contDiffAt_polynomial_quotient
#print axioms h158EntryReal_contDiffAt
#print axioms h158EntryReal_protected_factorization
#print axioms h158EntryReal_iteratedDeriv_protected
#print axioms h158EntryReal_fourthDerivative_protected
#print axioms h158EntryReal_dividedFourthDerivative_protected
#print axioms h158EntryReal_fourthDerivative_protected_index
#print axioms h158EntryReal_protected_prefix_sum
#print axioms summable_h158EntryReal_fourthDerivative_nonnegative
#print axioms h158Functional_eq_nonnegative_sum
#print axioms hasSum_h158EntryReal_fourthDerivative_nonnegative

end OddZetaMixed
