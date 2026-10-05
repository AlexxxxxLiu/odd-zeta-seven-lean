import OddZetaMixed.H158GateJets

/-! Import, interface, and axiom checks for the actual arithmetic and local jets. -/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

example : h158PoleOrder 6 620 = 2 := by
  have h := h158Gate_pole_order 6 620 (by norm_num) (by norm_num) (by norm_num)
  norm_num at h ⊢
  exact h

example : h158PoleOrder 6 631 = 1 := by
  have h := h158Gate_pole_order 6 631 (by norm_num) (by norm_num) (by norm_num)
  norm_num at h ⊢
  exact h

example : h158GateWeight 6 620 ≠ 0 ∧ padicValRat 331 (h158GateWeight 6 620) = 0 := by
  exact h158GateWeight_unit 6 620 (by norm_num) (by norm_num) (by norm_num)

example : h158GateWeight 6 631 ≠ 0 ∧ padicValRat 331 (h158GateWeight 6 631) = 0 := by
  exact h158GateWeight_unit 6 631 (by norm_num) (by norm_num) (by norm_num)

/-- The parent-facing interface expands to the original principal array,
not to a replacement coefficient family. -/
example (n : ℕ) (hp : (55*n+1).Prime) (i j : Fin (2*n)) (k : ℕ)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    ∃ v : ℚ, 0 ≤ padicValRat (55*n+1) v ∧
      ((55*n+1 : ℕ) : ℚ)^2 *
        (-(∑ l : Fin (h158PoleOrder n k),
          h158PrincipalCoefficients n i j k l * ((l.val+4).choose 4 : ℚ) /
            ((55*n+1 : ℕ) : ℚ)^(l.val+5))) =
        (if k ≤ 104*n+1 then
          -(h158GateWeight n k) * (centeredMultiplier n i j).eval (-(k : ℚ))
        else h158GateWeight n k * (centeredMultiplier n i j).eval (-(k : ℚ))) +
          ((55*n+1 : ℕ) : ℚ)*v := by
  exact h158Gate_local_reduction_exists n hp i j k hlo hhi

#print axioms h158Gate_normalization_unit
#print axioms h158Gate_basis_factorial_unit
#print axioms h158Gate_pole_order
#print axioms h158Gate_harmonic_support
#print axioms h158Gate_harmonic_multiple
#print axioms h158Gate_active_card
#print axioms h158Gate_shell_cards
#print axioms h158Gate_lower_factor_count
#print axioms h158Gate_numerator_valuation
#print axioms h158GateWeight_unit
#print axioms h158Gate_top_coefficient
#print axioms h158Numerator_coeff_mem_subring
#print axioms h158Gate_evenBasis_coeff_nonneg
#print axioms h158Gate_taylor_multiplier_coeff_nonneg
#print axioms h158Gate_taylor_entry_coeff_nonneg
#print axioms h158Gate_localCofactor_coeff_nonneg
#print axioms h158Gate_localCofactor_inv_nonneg
#print axioms h158GateStrippedNumerator_coeff_mem_subring
#print axioms h158GateStrippedNumerator_zero_unit
#print axioms h158Gate_double_factorization
#print axioms h158Gate_simple_factorization
#print axioms h158GateWeight_eq_stripped
#print axioms h158GateStrippedEntry_coeff_nonneg
#print axioms h158GateFirstJet_nonneg
#print axioms h158Gate_double_jets
#print axioms h158Gate_simple_jet
#print axioms h158Gate_local_reduction_exists

end OddZetaMixed
