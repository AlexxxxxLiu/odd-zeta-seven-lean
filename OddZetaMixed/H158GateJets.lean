import OddZetaMixed.H158GateArithmetic

/-!
# Actual simple and double gate jets

The local reduction below uses the original principal coefficient array.
After scaling by p^2, its error is p times a proved integral rational.
No residue-field congruence or matrix reduction is assumed.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

/-- The numerator remaining after the counted u-p factors are stripped,
including the actual normalization and matrix-entry multiplier. -/
def h158GateStrippedEntry (n : ℕ) (i j : Fin (2*n)) (k : ℕ) : ℚ[X] :=
  C (h158Normalization n) * h158GateStrippedNumerator n k *
    taylor (-(k : ℚ)) (centeredMultiplier n i j)

theorem h158GateStrippedEntry_coeff_nonneg (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (k q : ℕ) :
    0 ≤ padicValRat (55*n+1) ((h158GateStrippedEntry n i j k).coeff q) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  change (h158GateStrippedEntry n i j k).coeff q ∈ S
  rw [h158GateStrippedEntry, coeff_mul]
  apply S.sum_mem
  intro a ha
  apply S.mul_mem
  · rw [coeff_C_mul]
    apply S.mul_mem
    · change 0 ≤ padicValRat (55*n+1) (h158Normalization n)
      rw [(h158Gate_normalization_unit n hp).2]
    · exact h158GateStrippedNumerator_coeff_mem_subring S n k a.1
  · exact h158Gate_taylor_multiplier_coeff_nonneg n hp i j k a.2

theorem h158Gate_localNumerator_factorization (n : ℕ) (i j : Fin (2*n)) (k : ℕ)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    h158LocalNumerator n i j k =
      (X-C ((55*n+1 : ℕ) : ℚ))^h158GateMultiplicity n k *
        h158GateStrippedEntry n i j k := by
  simp only [h158LocalNumerator, taylor_mul, taylor_C, h158GateStrippedEntry]
  rw [h158Gate_shifted_numerator_factorization n k hlo hhi]
  ring

theorem h158GateStrippedEntry_zero_div (n : ℕ) (i j : Fin (2*n)) (k : ℕ)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    (h158GateStrippedEntry n i j k).coeff 0 / (h158LocalCofactor n k).coeff 0 =
      h158GateWeight n k * (centeredMultiplier n i j).eval (-(k : ℚ)) := by
  rw [h158GateWeight_eq_stripped n k hlo hhi]
  simp only [h158GateStrippedEntry, mul_coeff_zero, coeff_C_zero, taylor_coeff_zero]
  ring

/-- The actual first Taylor coefficient of the stripped local quotient;
the cofactor derivative is included. -/
def h158GateFirstJet (n : ℕ) (i j : Fin (2*n)) (k : ℕ) : ℚ :=
  ((h158GateStrippedEntry n i j k).coeff 1 -
      (h158GateStrippedEntry n i j k).coeff 0 / (h158LocalCofactor n k).coeff 0 *
        (h158LocalCofactor n k).coeff 1) / (h158LocalCofactor n k).coeff 0

theorem h158GateFirstJet_nonneg (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (k : ℕ) (hk : k ∈ h158PoleSet n) :
    0 ≤ padicValRat (55*n+1) (h158GateFirstJet n i j k) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  change h158GateFirstJet n i j k ∈ S
  have hA (q : ℕ) : (h158GateStrippedEntry n i j k).coeff q ∈ S :=
    h158GateStrippedEntry_coeff_nonneg n hp i j k q
  have hC (q : ℕ) : (h158LocalCofactor n k).coeff q ∈ S :=
    h158Gate_localCofactor_coeff_nonneg n hp k q
  have hi : ((h158LocalCofactor n k).coeff 0)⁻¹ ∈ S :=
    h158Gate_localCofactor_inv_nonneg n hp k hk
  unfold h158GateFirstJet
  simp only [div_eq_mul_inv]
  exact S.mul_mem (S.sub_mem (hA 1) (S.mul_mem (S.mul_mem (hA 0) hi) (hC 1))) hi

/-- Exact double-pole coefficients in the actual local principal polynomial:
its constant is b2 and its linear coefficient is b1. -/
theorem h158Gate_double_jets (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (k : ℕ)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 104*n+1) :
    (h158LocalPrincipal n i j k).coeff 0 =
      ((55*n+1 : ℕ) : ℚ)^4 *
        (h158GateWeight n k * (centeredMultiplier n i j).eval (-(k : ℚ))) ∧
    (h158LocalPrincipal n i j k).coeff 1 =
      -4*((55*n+1 : ℕ) : ℚ)^3 *
        (h158GateWeight n k * (centeredMultiplier n i j).eval (-(k : ℚ))) +
      ((55*n+1 : ℕ) : ℚ)^4 * h158GateFirstJet n i j k := by
  have hn := h158Gate_index_pos n hp
  have hhi' : k ≤ 105*n+1 := by omega
  have hk := (h158PoleSet_mem_iff n k).mpr (by constructor <;> omega)
  have ho : h158PoleOrder n k = 2 := by
    rw [h158Gate_pole_order n k hn hlo hhi', ite_eq_left hhi]
  have hC := h158LocalCofactor_zero_ne n k hk
  have hfac := h158Gate_localNumerator_factorization n i j k hlo hhi'
  have hm : h158GateMultiplicity n k = 4 := by simp [h158GateMultiplicity, hhi]
  rw [hm] at hfac
  have he0 := h158LocalPrincipal_coefficient_identity n i j k 0 hk (by omega)
  have he1 := h158LocalPrincipal_coefficient_identity n i j k 1 hk (by omega)
  rw [hfac] at he0
  simp only [mul_coeff_zero] at he0
  rw [hfac, mul_coeff_one, mul_coeff_one] at he1
  have hpow0 : ((X-C ((55*n+1 : ℕ) : ℚ))^4).coeff 0 = ((55*n+1 : ℕ) : ℚ)^4 := by
    simp only [coeff_zero_eq_eval_zero, eval_pow, eval_sub, eval_X, eval_C, zero_sub]
    ring
  have hpow1 : ((X-C ((55*n+1 : ℕ) : ℚ))^4).coeff 1 = -4*((55*n+1 : ℕ) : ℚ)^3 := by
    norm_num [pow_succ, mul_coeff_one, mul_coeff_zero, coeff_sub, coeff_one]
    ring
  rw [hpow0] at he0
  rw [hpow0, hpow1] at he1
  have hV := h158GateStrippedEntry_zero_div n i j k hlo hhi'
  rw [← hV]
  have hb0 : (h158LocalPrincipal n i j k).coeff 0 =
      ((55*n+1 : ℕ) : ℚ)^4 *
        ((h158GateStrippedEntry n i j k).coeff 0 / (h158LocalCofactor n k).coeff 0) := by
    apply mul_right_cancel₀ hC
    field_simp
    exact he0.symm
  refine ⟨hb0, ?_⟩
  have hb1 : (h158LocalPrincipal n i j k).coeff 1 =
      (((55*n+1 : ℕ) : ℚ)^4 * (h158GateStrippedEntry n i j k).coeff 1 -
        4*((55*n+1 : ℕ) : ℚ)^3 * (h158GateStrippedEntry n i j k).coeff 0 -
        (h158LocalPrincipal n i j k).coeff 0 * (h158LocalCofactor n k).coeff 1) /
      (h158LocalCofactor n k).coeff 0 := by
    apply (eq_div_iff hC).mpr
    linarith
  rw [hb1, hb0]
  unfold h158GateFirstJet
  ring

theorem h158Gate_simple_jet (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (k : ℕ)
    (hlo : 104*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    (h158LocalPrincipal n i j k).coeff 0 =
      -((55*n+1 : ℕ) : ℚ)^3 *
        (h158GateWeight n k * (centeredMultiplier n i j).eval (-(k : ℚ))) := by
  have hn := h158Gate_index_pos n hp
  have hlo' : 103*n+2 ≤ k := by omega
  have hk := (h158PoleSet_mem_iff n k).mpr (by constructor <;> omega)
  have ho : h158PoleOrder n k = 1 := by
    rw [h158Gate_pole_order n k hn hlo' hhi, ite_eq_right (by omega)]
  have h := h158LocalPrincipal_coeff n i j k (h158TopPoleIndex n k hk)
  have ht := h158Gate_top_coefficient n k i j hk hp
  have hm : h158GateMultiplicity n k = 3 := by
    rw [h158GateMultiplicity, ite_eq_right (by omega)]
  have hidx : h158PoleOrder n k - ((h158TopPoleIndex n k hk).val+1) = 0 := by
    simp [h158TopPoleIndex, ho]
  rw [hidx] at h
  rw [h, ht, hm]
  ring

/-- The singular harmonic contribution at one actual pole, with all
original principal coefficients and binomial derivative weights retained. -/
def h158GateLocalSingular (n : ℕ) (i j : Fin (2*n)) (k : ℕ) : ℚ :=
  -(∑ l : Fin (h158PoleOrder n k),
    h158PrincipalCoefficients n i j k l * ((l.val+4).choose 4 : ℚ) /
      ((55*n+1 : ℕ) : ℚ)^(l.val+5))

private theorem gate_local_singular_double (n : ℕ) (i j : Fin (2*n)) (k : ℕ)
    (ho : h158PoleOrder n k = 2) :
    h158GateLocalSingular n i j k =
      -((h158LocalPrincipal n i j k).coeff 1 / ((55*n+1 : ℕ) : ℚ)^5 +
        5*(h158LocalPrincipal n i j k).coeff 0 / ((55*n+1 : ℕ) : ℚ)^6) := by
  unfold h158GateLocalSingular
  simp_rw [← h158LocalPrincipal_coeff]
  rw [ho]
  norm_num [Fin.sum_univ_two]
  ring

private theorem gate_local_singular_simple (n : ℕ) (i j : Fin (2*n)) (k : ℕ)
    (ho : h158PoleOrder n k = 1) :
    h158GateLocalSingular n i j k =
      -(h158LocalPrincipal n i j k).coeff 0 / ((55*n+1 : ℕ) : ℚ)^5 := by
  unfold h158GateLocalSingular
  simp_rw [← h158LocalPrincipal_coeff]
  rw [ho]
  simp
  ring

/-- Exact active-pole reduction for the parent sum. The error is p times
an explicitly integral rational, not an assumed modular identity. -/
theorem h158Gate_local_reduction_exists (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (k : ℕ)
    (hlo : 103*n+2 ≤ k) (hhi : k ≤ 105*n+1) :
    ∃ v : ℚ, 0 ≤ padicValRat (55*n+1) v ∧
      ((55*n+1 : ℕ) : ℚ)^2 * h158GateLocalSingular n i j k =
        (if k ≤ 104*n+1 then
          -(h158GateWeight n k) * (centeredMultiplier n i j).eval (-(k : ℚ))
        else h158GateWeight n k * (centeredMultiplier n i j).eval (-(k : ℚ))) +
        ((55*n+1 : ℕ) : ℚ)*v := by
  have hn := h158Gate_index_pos n hp
  have hp0 : ((55*n+1 : ℕ) : ℚ) ≠ 0 := by exact_mod_cast hp.ne_zero
  have hk := (h158PoleSet_mem_iff n k).mpr (by constructor <;> omega)
  have ho := h158Gate_pole_order n k hn hlo hhi
  by_cases hd : k ≤ 104*n+1
  · rw [ite_eq_left hd] at ho ⊢
    refine ⟨-h158GateFirstJet n i j k, ?_, ?_⟩
    · rw [padicValRat.neg]
      exact h158GateFirstJet_nonneg n hp i j k hk
    · rw [gate_local_singular_double n i j k ho]
      obtain ⟨h0, h1⟩ := h158Gate_double_jets n hp i j k hlo hd
      rw [h0, h1]
      field_simp
      ring
  · rw [ite_eq_right hd] at ho ⊢
    refine ⟨0, by simp, ?_⟩
    rw [gate_local_singular_simple n i j k ho,
      h158Gate_simple_jet n hp i j k (by omega) hhi]
    field_simp
    ring

end OddZetaMixed
