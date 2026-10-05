import OddZetaMixed.H158Evaluation
import OddZetaMixed.FourthDerivative
import OddZetaMixed.ZetaTail

/-!
# The actual h158 fourth-derivative functional

The proved real partial fractions agree locally on the open halfline to the
right of every pole. Their fourth derivatives therefore agree there. Finite
linearity and the proved shifted zeta tails give the sum at `t = v - 48*n`.

Every principal order is retained: the dependent index `l` represents pole
order `l.val + 1`, hence exponent `l.val + 5` after four derivatives. In
particular no parity cancellation, simple-residue cancellation, or removal of
the rational harmonic constant is performed in this module.
-/

noncomputable section

namespace OddZetaMixed

open scoped BigOperators Topology

/-- Actual partial fractions agree on a neighborhood of any point of the
summation halfline, not merely at that point. -/
theorem h158EntryReal_eventuallyEq_partial_fractions (n : ℕ) (i j : Fin (2 * n))
    (x : ℝ) (hx : -(53 * (n : ℝ) + 1) < x) :
    h158EntryReal n i j =ᶠ[𝓝 x]
      (fun t : ℝ => ∑ k ∈ h158PoleSet n, ∑ l : Fin (h158PoleOrder n k),
        (h158PrincipalCoefficients n i j k l : ℝ) / (t + (k : ℝ)) ^ (l.val + 1)) := by
  filter_upwards [isOpen_Ioi.mem_nhds hx] with t ht
  exact h158EntryReal_partial_fractions n i j t ht

/-- The normalized fourth derivative of the actual entry on the open halfline. -/
theorem h158EntryReal_fourthDerivative (n : ℕ) (i j : Fin (2 * n))
    (x : ℝ) (hx : -(53 * (n : ℝ) + 1) < x) :
    iteratedDeriv 4 (h158EntryReal n i j) x / 24 =
      ∑ k ∈ h158PoleSet n, ∑ l : Fin (h158PoleOrder n k),
        (h158PrincipalCoefficients n i j k l : ℝ) * ((l.val + 4).choose 4 : ℝ) /
          (x + (k : ℝ)) ^ (l.val + 5) := by
  have hsmooth (k : ℕ) (hk : k ∈ h158PoleSet n) :
      ContDiffAt ℝ 4 (fun t : ℝ => ∑ l : Fin (h158PoleOrder n k),
        (h158PrincipalCoefficients n i j k l : ℝ) / (t + (k : ℝ)) ^ (l.val + 1)) x := by
    apply ContDiffAt.sum
    intro l _
    exact contDiffAt_const_div_pow_add 4 (l.val + 1)
      (h158PrincipalCoefficients n i j k l : ℝ) x (k : ℝ)
      (ne_of_gt (h158_pole_translate_pos n k hk x hx))
  rw [Filter.EventuallyEq.iteratedDeriv_eq 4
    (h158EntryReal_eventuallyEq_partial_fractions n i j x hx)]
  rw [iteratedDeriv_fun_sum hsmooth, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro k hk
  simpa only [Nat.add_assoc, Nat.reduceAdd] using
    fourthDerivative_finset_sum (Finset.univ : Finset (Fin (h158PoleOrder n k)))
      (fun l => (h158PrincipalCoefficients n i j k l : ℝ))
      (fun _ => (k : ℝ)) (fun l => l.val + 1) x
      (fun _ _ => by omega)
      (fun _ _ => ne_of_gt (h158_pole_translate_pos n k hk x hx))

/-- The exact pointwise derivative identity at every index of the original sum. -/
theorem h158EntryReal_fourthDerivative_at_index (n : ℕ) (i j : Fin (2 * n)) (v : ℕ) :
    iteratedDeriv 4 (h158EntryReal n i j) ((v : ℝ) - 48 * (n : ℝ)) / 24 =
      ∑ k ∈ h158PoleSet n, ∑ l : Fin (h158PoleOrder n k),
        (h158PrincipalCoefficients n i j k l : ℝ) * ((l.val + 4).choose 4 : ℝ) /
          ((v : ℝ) - 48 * (n : ℝ) + (k : ℝ)) ^ (l.val + 5) :=
  h158EntryReal_fourthDerivative n i j _ (h158_summation_point_in_halfline n v)

/-- Summation of the actual fourth derivative, with every pole order and the
complete harmonic constant. There are no analytic input hypotheses. -/
theorem hasSum_h158EntryReal_fourthDerivative (n : ℕ) (i j : Fin (2 * n)) :
    HasSum (fun v : ℕ =>
      iteratedDeriv 4 (h158EntryReal n i j) ((v : ℝ) - 48 * (n : ℝ)) / 24)
      (∑ k ∈ h158PoleSet n, ∑ l : Fin (h158PoleOrder n k),
        (h158PrincipalCoefficients n i j k l : ℝ) * ((l.val + 4).choose 4 : ℝ) *
          (zetaNat (l.val + 5) - (harmonicCutoff (l.val + 5) (k - 48 * n - 1) : ℝ))) := by
  have hterm (k : ℕ) (hk : k ∈ h158PoleSet n) (l : Fin (h158PoleOrder n k)) :
      HasSum (fun v : ℕ =>
        (h158PrincipalCoefficients n i j k l : ℝ) * ((l.val + 4).choose 4 : ℝ) /
          ((v : ℝ) - 48 * (n : ℝ) + (k : ℝ)) ^ (l.val + 5))
        ((h158PrincipalCoefficients n i j k l : ℝ) * ((l.val + 4).choose 4 : ℝ) *
          (zetaNat (l.val + 5) - (harmonicCutoff (l.val + 5) (k - 48 * n - 1) : ℝ))) := by
    have hkstart : 48 * n < k := by
      have := (h158_pole_address_bounds n k hk).1
      omega
    simpa only [Nat.add_assoc, Nat.reduceAdd, div_eq_mul_inv, one_mul] using
      (hasSum_h158_shifted_inv_pow n k (l.val + 1) hkstart).mul_left
        ((h158PrincipalCoefficients n i j k l : ℝ) * ((l.val + 4).choose 4 : ℝ))
  have hsum := hasSum_sum (fun k hk => hasSum_sum
    (fun l (_ : l ∈ (Finset.univ : Finset (Fin (h158PoleOrder n k)))) => hterm k hk l))
  exact hsum.congr_fun (h158EntryReal_fourthDerivative_at_index n i j)

theorem summable_h158EntryReal_fourthDerivative (n : ℕ) (i j : Fin (2 * n)) :
    Summable (fun v : ℕ =>
      iteratedDeriv 4 (h158EntryReal n i j) ((v : ℝ) - 48 * (n : ℝ)) / 24) :=
  (hasSum_h158EntryReal_fourthDerivative n i j).summable

/-- The actual h158 functional entry, defined by its convergent derivative sum. -/
def h158Functional (n : ℕ) (i j : Fin (2 * n)) : ℝ :=
  ∑' v : ℕ, iteratedDeriv 4 (h158EntryReal n i j) ((v : ℝ) - 48 * (n : ℝ)) / 24

/-- Its complete, ungrouped zeta-and-harmonic evaluation. -/
theorem h158Functional_eq_pole_sum (n : ℕ) (i j : Fin (2 * n)) :
    h158Functional n i j =
      ∑ k ∈ h158PoleSet n, ∑ l : Fin (h158PoleOrder n k),
        (h158PrincipalCoefficients n i j k l : ℝ) * ((l.val + 4).choose 4 : ℝ) *
          (zetaNat (l.val + 5) - (harmonicCutoff (l.val + 5) (k - 48 * n - 1) : ℝ)) :=
  (hasSum_h158EntryReal_fourthDerivative n i j).tsum_eq

end OddZetaMixed
