import OddZetaMixed.H158GateArithmetic
import OddZetaMixed.H158Coefficients
import OddZetaMixed.H158Normalization
import OddZetaMixed.LocalReduction
import OddZetaMixed.ScalarGaussCost

/-!
# Concrete seeds for the main-prime global arithmetic

These statements apply to arbitrary primes with p^2 > 158n+2, not only
the gate progression. They prove the actual normalization floor formula
and integrality of the actual row-scaled basis and all its Taylor jets.
For every prime p > 57n, the complete actual seven-variable matrix and
its determinant have p-integral coefficients, including harmonic constants.
No local residue-count bound, full block factorization, or budget is assumed.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

private theorem seed_padic_prod {p : ℕ} [Fact p.Prime] {ι : Type*}
    (s : Finset ι) (f : ι → ℚ) (hf : ∀ a ∈ s, f a ≠ 0) :
    padicValRat p (∏ a ∈ s, f a) = ∑ a ∈ s, padicValRat p (f a) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    rw [prod_insert ha, sum_insert ha,
      padicValRat.mul (hf a (mem_insert_self a s))
        (prod_ne_zero_iff.mpr (fun b hb => hf b (mem_insert_of_mem hb))),
      ih (fun b hb => hf b (mem_insert_of_mem hb))]

theorem h158_factorial_valuation_below_square (m p : ℕ) (hp : p.Prime)
    (hm : m < p^2) : padicValRat p (m.factorial : ℚ) = (m/p : ℕ) := by
  let : Fact p.Prime := ⟨hp⟩
  rw [padicValRat.of_nat, padicValNat_factorial (Nat.log_lt_of_lt_pow' (by omega) hm)]
  norm_num [Finset.sum_Ico_succ_top]

/-- Exact signed normalization exponent in the main-prime range. The
leading factor 2 is retained and proved to be a unit in the theorem below. -/
def h158NormalizationFloor (n p : ℕ) : ℤ :=
  (∑ b ∈ range 16, ((((52-2*b)*n)/p : ℕ) : ℤ)) -
    2 * ∑ a ∈ range 5, ((((48+a)*n)/p : ℕ) : ℤ)

theorem h158Normalization_valuation_main_prime (n p : ℕ) (hn : 0 < n)
    (hp : p.Prime) (hsq : 158*n+2 < p^2) :
    padicValRat p (h158Normalization n) = h158NormalizationFloor n p := by
  let : Fact p.Prime := ⟨hp⟩
  have hp2 : 2 < p := by nlinarith [hp.two_le]
  have hf (m : ℕ) : (m.factorial : ℚ) ≠ 0 := by
    exact_mod_cast Nat.factorial_ne_zero m
  have hnum : (∏ b ∈ range 16, (((52-2*b)*n).factorial : ℚ)) ≠ 0 :=
    prod_ne_zero_iff.mpr (fun _ _ => hf _)
  have hden : (∏ a ∈ range 5, (((48+a)*n).factorial : ℚ)^2) ≠ 0 :=
    prod_ne_zero_iff.mpr (fun _ _ => pow_ne_zero _ (hf _))
  have htwo : padicValRat p 2 = 0 := by
    change padicValRat p ((2 : ℕ) : ℚ) = 0
    rw [padicValRat.of_nat,
      padicValNat.eq_zero_of_not_dvd (Nat.not_dvd_of_pos_of_lt (by omega) hp2)]
    rfl
  rw [h158Normalization, padicValRat.div (mul_ne_zero (by norm_num) hnum) hden,
    padicValRat.mul (by norm_num) hnum, htwo, zero_add,
    seed_padic_prod _ _ (fun _ _ => hf _),
    seed_padic_prod _ _ (fun _ _ => pow_ne_zero _ (hf _)), h158NormalizationFloor]
  congr 1
  · apply sum_congr rfl
    intro b hb
    apply h158_factorial_valuation_below_square _ _ hp
    have : 52-2*b ≤ 52 := Nat.sub_le _ _
    nlinarith
  · rw [Finset.mul_sum]
    apply sum_congr rfl
    intro a ha
    have ha := mem_range.mp ha
    rw [padicValRat.pow, h158_factorial_valuation_below_square _ _ hp (by nlinarith)]
    norm_num

/-- The precise scalar used to clear a factorial in the main-prime range
is itself a nonzero p-unit. -/
theorem h158_scaled_factorial_unit (m p : ℕ) (hp : p.Prime) (hm : m < p^2) :
    (p : ℚ)^(m/p) / (m.factorial : ℚ) ≠ 0 ∧
      padicValRat p ((p : ℚ)^(m/p) / (m.factorial : ℚ)) = 0 := by
  let : Fact p.Prime := ⟨hp⟩
  have hp0 : (p : ℚ) ≠ 0 := by exact_mod_cast hp.ne_zero
  have hf : (m.factorial : ℚ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero m
  refine ⟨div_ne_zero (pow_ne_zero _ hp0) hf, ?_⟩
  rw [padicValRat.div (pow_ne_zero _ hp0) hf, padicValRat.pow,
    padicValRat.self hp.one_lt, h158_factorial_valuation_below_square m p hp hm]
  ring

private theorem seed_lifts_iff (S : Subring ℚ) (P : ℚ[X]) :
    P ∈ Polynomial.liftsRing S.subtype ↔ ∀ q, P.coeff q ∈ S := by
  rw [← lifts_iff_liftsRing, lifts_iff_coeff_lifts]
  simp

private theorem seed_C_mem (S : Subring ℚ) {r : ℚ} (hr : r ∈ S) :
    C r ∈ Polynomial.liftsRing S.subtype :=
  (lifts_iff_liftsRing _ _).mp (C'_mem_lifts ⟨⟨r, hr⟩, rfl⟩)

private theorem seed_X_mem (S : Subring ℚ) :
    (X : ℚ[X]) ∈ Polynomial.liftsRing S.subtype :=
  (lifts_iff_liftsRing _ _).mp (X_mem_lifts S.subtype)

private theorem seed_comp_mem (S : Subring ℚ) {P Q : ℚ[X]}
    (hP : P ∈ Polynomial.liftsRing S.subtype)
    (hQ : Q ∈ Polynomial.liftsRing S.subtype) :
    P.comp Q ∈ Polynomial.liftsRing S.subtype := by
  obtain ⟨P', rfl⟩ := (mem_lifts _).mp ((lifts_iff_liftsRing _ _).mpr hP)
  obtain ⟨Q', rfl⟩ := (mem_lifts _).mp ((lifts_iff_liftsRing _ _).mpr hQ)
  apply (lifts_iff_liftsRing _ _).mp
  exact (mem_lifts _).mpr ⟨P'.comp Q', by rw [Polynomial.map_comp]⟩

/-- The actual basis scaled by the exact row exponents used in the global
budget. This is not a replacement monic or integer-valued basis. -/
def h158PrimeScaledBasis (n p : ℕ) (i : Fin (2*n)) : ℚ[X] :=
  C ((p : ℚ)^((2*i.val)/p)) * evenBasis i.val

theorem h158PrimeScaledBasis_coeff_nonneg (n p : ℕ) (hp : p.Prime)
    (hsq : 158*n+2 < p^2) (i : Fin (2*n)) (q : ℕ) :
    0 ≤ padicValRat p ((h158PrimeScaledBasis n p i).coeff q) := by
  let : Fact p.Prime := ⟨hp⟩
  let S := h158GateIntegralRing p
  have hi := i.isLt
  have hm : 2*i.val < p^2 := by omega
  have hscalar : (p : ℚ)^((2*i.val)/p) * (2 / ((2*i.val).factorial : ℚ)) ∈ S := by
    have hu : ((p : ℚ)^((2*i.val)/p) / ((2*i.val).factorial : ℚ)) ∈ S := by
      change 0 ≤ padicValRat p _
      rw [(h158_scaled_factorial_unit _ _ hp hm).2]
    have h := S.mul_mem (natCast_mem S 2) hu
    convert h using 1
    ring
  change (h158PrimeScaledBasis n p i).coeff q ∈ S
  apply (seed_lifts_iff S _).mp _ q
  unfold h158PrimeScaledBasis
  generalize hi' : i.val = m at hscalar ⊢
  cases m with
  | zero => simp only [mul_zero, Nat.zero_div, pow_zero, map_one, evenBasis_zero, mul_one]
            exact (Polynomial.liftsRing S.subtype).one_mem
  | succ m =>
    rw [evenBasis_succ, ← mul_assoc, ← C_mul]
    apply (Polynomial.liftsRing S.subtype).mul_mem (seed_C_mem S hscalar)
    apply (Polynomial.liftsRing S.subtype).mul_mem
      ((Polynomial.liftsRing S.subtype).pow_mem (seed_X_mem S) 2)
    apply (Polynomial.liftsRing S.subtype).prod_mem
    intro j hj
    exact (Polynomial.liftsRing S.subtype).sub_mem
      ((Polynomial.liftsRing S.subtype).pow_mem (seed_X_mem S) 2)
      (seed_C_mem S (S.pow_mem (S.add_mem (natCast_mem S j) S.one_mem) 2))

/-- All divided Taylor jets of every actual scaled basis polynomial are
p-integral at every integer anchor. There is no truncation at pole order. -/
theorem h158PrimeScaledBasis_taylor_coeff_nonneg (n p : ℕ) (hp : p.Prime)
    (hsq : 158*n+2 < p^2) (i : Fin (2*n)) (a : ℤ) (q : ℕ) :
    0 ≤ padicValRat p ((taylor (a : ℚ) (h158PrimeScaledBasis n p i)).coeff q) := by
  let : Fact p.Prime := ⟨hp⟩
  let S := h158GateIntegralRing p
  change (taylor (a : ℚ) _).coeff q ∈ S
  apply (seed_lifts_iff S _).mp _ q
  rw [taylor_apply]
  apply seed_comp_mem
  · exact (seed_lifts_iff S _).mpr (h158PrimeScaledBasis_coeff_nonneg n p hp hsq i)
  · exact (Polynomial.liftsRing S.subtype).add_mem (seed_X_mem S)
      (seed_C_mem S (intCast_mem S a))

/-- The unscaled actual basis is integral once its factorials are below p. -/
theorem h158_evenBasis_coeff_nonneg_of_large_prime (n p : ℕ) (hp : p.Prime)
    (hlarge : 4*n ≤ p) (i : Fin (2*n)) (q : ℕ) :
    0 ≤ padicValRat p ((evenBasis i.val).coeff q) := by
  let : Fact p.Prime := ⟨hp⟩
  let S := h158GateIntegralRing p
  change (evenBasis i.val).coeff q ∈ S
  apply (seed_lifts_iff S _).mp _ q
  have hinv : (((2*i.val).factorial : ℚ)⁻¹) ∈ S := by
    change 0 ≤ padicValRat p _
    rw [padicValRat.inv, h158_factorial_padicValRat_zero _ _ hp
      (by have := i.isLt; omega)]
    omega
  have hscalar : (2 / ((2*i.val).factorial : ℚ)) ∈ S := by
    rw [div_eq_mul_inv]
    exact S.mul_mem (natCast_mem S 2) hinv
  generalize hi : i.val = m at hscalar ⊢
  cases m with
  | zero => exact (Polynomial.liftsRing S.subtype).one_mem
  | succ m =>
    rw [evenBasis_succ]
    apply (Polynomial.liftsRing S.subtype).mul_mem (seed_C_mem S hscalar)
    apply (Polynomial.liftsRing S.subtype).mul_mem
      ((Polynomial.liftsRing S.subtype).pow_mem (seed_X_mem S) 2)
    apply (Polynomial.liftsRing S.subtype).prod_mem
    intro j hj
    exact (Polynomial.liftsRing S.subtype).sub_mem
      ((Polynomial.liftsRing S.subtype).pow_mem (seed_X_mem S) 2)
      (seed_C_mem S (S.pow_mem (S.add_mem (natCast_mem S j) S.one_mem) 2))

theorem h158_centeredMultiplier_coeff_nonneg_of_large_prime (n p : ℕ)
    (hp : p.Prime) (hlarge : 4*n ≤ p) (i j : Fin (2*n)) (q : ℕ) :
    0 ≤ padicValRat p ((centeredMultiplier n i j).coeff q) := by
  let : Fact p.Prime := ⟨hp⟩
  let S := h158GateIntegralRing p
  change (centeredMultiplier n i j).coeff q ∈ S
  apply (seed_lifts_iff S _).mp _ q
  apply seed_comp_mem
  · exact (Polynomial.liftsRing S.subtype).mul_mem
      ((seed_lifts_iff S _).mpr (h158_evenBasis_coeff_nonneg_of_large_prime n p hp hlarge i))
      ((seed_lifts_iff S _).mpr (h158_evenBasis_coeff_nonneg_of_large_prime n p hp hlarge j))
  · exact (Polynomial.liftsRing S.subtype).add_mem (seed_X_mem S)
      (seed_C_mem S (S.add_mem (S.mul_mem (natCast_mem S 79) (natCast_mem S n))
        S.one_mem))

/-- All Taylor coefficients of the actual normalized numerator, at every
integer pole address, without restricting the Taylor order. -/
theorem h158_localNumerator_coeff_nonneg_of_large_prime (n p : ℕ)
    (hp : p.Prime) (hlarge : 52*n+2 < p) (i j : Fin (2*n)) (k q : ℕ) :
    0 ≤ padicValRat p ((h158LocalNumerator n i j k).coeff q) := by
  let : Fact p.Prime := ⟨hp⟩
  let S := h158GateIntegralRing p
  change (h158LocalNumerator n i j k).coeff q ∈ S
  apply (seed_lifts_iff S _).mp _ q
  rw [h158LocalNumerator, taylor_apply]
  apply seed_comp_mem
  · apply (Polynomial.liftsRing S.subtype).mul_mem
    · apply (Polynomial.liftsRing S.subtype).mul_mem
      · apply seed_C_mem S
        change 0 ≤ padicValRat p (h158Normalization n)
        rw [h158Normalization_padicValRat_zero n p hp (by omega) (by omega)]
      · exact (seed_lifts_iff S _).mpr (h158Numerator_coeff_mem_subring S n)
    · exact (seed_lifts_iff S _).mpr
        (h158_centeredMultiplier_coeff_nonneg_of_large_prime n p hp (by omega) i j)
  · exact (Polynomial.liftsRing S.subtype).add_mem (seed_X_mem S)
      (seed_C_mem S (S.neg_mem (natCast_mem S k)))

/-- The actual shifted cofactor has integer coefficients, independently of p. -/
theorem h158_localCofactor_coeff_mem_subring (S : Subring ℚ) (n k q : ℕ) :
    (h158LocalCofactor n k).coeff q ∈ S := by
  apply (seed_lifts_iff S _).mp _ q
  rw [h158LocalCofactor, taylor_apply]
  apply seed_comp_mem
  · apply (Polynomial.liftsRing S.subtype).prod_mem
    intro a ha
    exact (Polynomial.liftsRing S.subtype).pow_mem
      ((Polynomial.liftsRing S.subtype).add_mem (seed_X_mem S)
        (seed_C_mem S (natCast_mem S a))) _
  · exact (Polynomial.liftsRing S.subtype).add_mem (seed_X_mem S)
      (seed_C_mem S (S.neg_mem (natCast_mem S k)))

/-- Every original principal coefficient, including all lower Laurent orders. -/
theorem h158_principal_coeff_nonneg_of_large_prime (n p : ℕ) (hp : p.Prime)
    (hlarge : 52*n+2 < p) (i j : Fin (2*n)) (k : ℕ) (hk : k ∈ h158PoleSet n)
    (l : Fin (h158PoleOrder n k)) :
    0 ≤ padicValRat p (h158PrincipalCoefficients n i j k l) := by
  let : Fact p.Prime := ⟨hp⟩
  apply h158PrincipalCoefficients_mem_subring (h158GateIntegralRing p) n i j k hk
  · intro q hq
    exact h158_localNumerator_coeff_nonneg_of_large_prime n p hp hlarge i j k q
  · intro q hq
    exact h158_localCofactor_coeff_mem_subring _ n k q
  · change 0 ≤ padicValRat p _
    rw [padicValRat.inv, h158LocalCofactor_zero_padicValRat n k p hk hp (by omega)]
    omega

theorem h158_order_coeff_nonneg_of_large_prime (n p : ℕ) (hp : p.Prime)
    (hlarge : 52*n+2 < p) (i j : Fin (2*n)) (s : ℕ) :
    0 ≤ padicValRat p (h158OrderCoefficient n i j s) := by
  let : Fact p.Prime := ⟨hp⟩
  let S := h158GateIntegralRing p
  change h158OrderCoefficient n i j s ∈ S
  apply S.sum_mem
  intro k hk
  apply S.sum_mem
  intro l hl
  split_ifs
  · exact h158_principal_coeff_nonneg_of_large_prime n p hp hlarge i j k hk l
  · exact S.zero_mem

theorem h158_zeta_coeff_nonneg_of_large_prime (n p : ℕ) (hp : p.Prime)
    (hlarge : 52*n+2 < p) (i j : Fin (2*n)) (s : ℕ) :
    0 ≤ padicValRat p (h158ZetaCoefficient n i j s) := by
  let : Fact p.Prime := ⟨hp⟩
  exact (h158GateIntegralRing p).mul_mem (natCast_mem _ _)
    (h158_order_coeff_nonneg_of_large_prime n p hp hlarge i j s)

theorem harmonicCutoff_nonneg_of_lt_prime (p s m : ℕ) (hp : p.Prime)
    (hm : m < p) : 0 ≤ padicValRat p (harmonicCutoff s m) := by
  let : Fact p.Prime := ⟨hp⟩
  let S := h158GateIntegralRing p
  change harmonicCutoff s m ∈ S
  apply S.sum_mem
  intro t ht
  have ht := mem_range.mp ht
  have hv : padicValRat p ((t : ℚ)+1) = 0 := by
    rw [← Nat.cast_one, ← Nat.cast_add, padicValRat.of_nat,
      padicValNat.eq_zero_of_not_dvd (Nat.not_dvd_of_pos_of_lt (by omega) (by omega))]
    rfl
  change 0 ≤ padicValRat p _
  rw [one_div, padicValRat.inv, padicValRat.pow, hv]
  norm_num

/-- The full rational constant, not just a harmonic remainder, is integral
at every prime strictly above 57n. -/
theorem h158_momentConstant_nonneg_of_large_prime (n p : ℕ) (hp : p.Prime)
    (hlarge : 57*n < p) (i j : Fin (2*n)) :
    0 ≤ padicValRat p (h158MomentConstant n i j) := by
  let : Fact p.Prime := ⟨hp⟩
  let S := h158GateIntegralRing p
  have hn : 0 < n := by have := i.isLt; omega
  change h158MomentConstant n i j ∈ S
  apply S.neg_mem
  apply S.sum_mem
  intro k hk
  apply S.sum_mem
  intro l hl
  have hb := h158_pole_address_bounds n k hk
  exact S.mul_mem
    (S.mul_mem (h158_principal_coeff_nonneg_of_large_prime n p hp (by omega) i j k hk l)
      (natCast_mem S _))
    (harmonicCutoff_nonneg_of_lt_prime p _ _ hp (by omega))

/-- An explicit lift of the entire actual matrix, including its constants,
to polynomials over the p-integral subring. The empty rank n=0 is included. -/
theorem h158SevenMatrix_lift_of_large_prime (n p : ℕ) (hp : p.Prime)
    (hlarge : 57*n < p) :
    letI : Fact p.Prime := ⟨hp⟩
    ∃ A : Matrix (Fin (2*n)) (Fin (2*n)) (MvPolynomial (Fin 7) (h158GateIntegralRing p)),
      ∀ i j, MvPolynomial.map (h158GateIntegralRing p).subtype (A i j) =
        h158SevenMatrix n i j := by
  let : Fact p.Prime := ⟨hp⟩
  let S := h158GateIntegralRing p
  have ha (i j : Fin (2*n)) : h158MomentConstant n i j ∈ S :=
    h158_momentConstant_nonneg_of_large_prime n p hp hlarge i j
  have hb (i j : Fin (2*n)) (s : Fin 7) : h158ZetaCoefficient n i j (2+2*s.val) ∈ S := by
    have hn : 0 < n := by have := i.isLt; omega
    exact h158_zeta_coeff_nonneg_of_large_prime n p hp (by omega) i j _
  refine ⟨fun i j => MvPolynomial.C ⟨_, ha i j⟩ +
    ∑ s : Fin 7, MvPolynomial.C ⟨_, hb i j s⟩ * MvPolynomial.X s, ?_⟩
  intro i j
  simp [h158SevenMatrix, momentMatrix, affineEntry]

theorem h158SevenMatrix_coeff_nonneg_of_large_prime (n p : ℕ) (hp : p.Prime)
    (hlarge : 57*n < p) (i j : Fin (2*n)) (m : Fin 7 →₀ ℕ) :
    0 ≤ padicValRat p ((h158SevenMatrix n i j).coeff m) := by
  let : Fact p.Prime := ⟨hp⟩
  obtain ⟨A, hA⟩ := h158SevenMatrix_lift_of_large_prime n p hp hlarge
  rw [← hA i j, MvPolynomial.coeff_map]
  exact ((A i j).coeff m).property

theorem h158SevenMatrix_det_coeff_nonneg_of_large_prime (n p : ℕ) (hp : p.Prime)
    (hlarge : 57*n < p) (m : Fin 7 →₀ ℕ) :
    0 ≤ padicValRat p ((h158SevenMatrix n).det.coeff m) := by
  let : Fact p.Prime := ⟨hp⟩
  obtain ⟨A, hA⟩ := h158SevenMatrix_lift_of_large_prime n p hp hlarge
  have he : MvPolynomial.map (h158GateIntegralRing p).subtype A.det =
      (h158SevenMatrix n).det := by
    rw [RingHom.map_det]
    congr 1
    exact funext (fun i => funext (fun j => hA i j))
  rw [← he, MvPolynomial.coeff_map]
  exact (A.det.coeff m).property

theorem h158SevenMatrix_det_gauss_nonneg_of_large_prime (n p : ℕ) (hp : p.Prime)
    (hlarge : 57*n < p) (hdet : (h158SevenMatrix n).det ≠ 0) :
    0 ≤ rationalPolynomialGaussValuation p (h158SevenMatrix n).det hdet := by
  apply Finset.le_inf'
  intro m hm
  exact h158SevenMatrix_det_coeff_nonneg_of_large_prime n p hp hlarge m

theorem h158SevenMatrix_coeff_den_prime_support (n p : ℕ) (hp : p.Prime)
    (i j : Fin (2*n)) (m : Fin 7 →₀ ℕ)
    (hdiv : p ∣ ((h158SevenMatrix n i j).coeff m).den) : p ≤ 57*n := by
  let : Fact p.Prime := ⟨hp⟩
  by_contra h
  exact h158GateIntegralRing_den_not_dvd p _
    (h158SevenMatrix_coeff_nonneg_of_large_prime n p hp (by omega) i j m) hdiv

/-- Every prime in a reduced denominator of the actual determinant is at
most 57n. No nonvanishing assumption is needed for this support statement. -/
theorem h158SevenMatrix_det_coeff_den_prime_support (n p : ℕ) (hp : p.Prime)
    (m : Fin 7 →₀ ℕ) (hdiv : p ∣ ((h158SevenMatrix n).det.coeff m).den) :
    p ≤ 57*n := by
  let : Fact p.Prime := ⟨hp⟩
  by_contra h
  exact h158GateIntegralRing_den_not_dvd p _
    (h158SevenMatrix_det_coeff_nonneg_of_large_prime n p hp (by omega) m) hdiv

/-- The actual primitive scalar has no negative valuation above the support
cutoff, on both the nonzero and zero determinant branches. -/
theorem h158PrimitiveScalar_nonneg_of_large_prime (n p : ℕ) (hp : p.Prime)
    (hlarge : 57*n < p) : 0 ≤ padicValRat p (h158PrimitiveScalar n) := by
  by_cases hdet : (h158SevenMatrix n).det = 0
  · rw [h158PrimitiveScalar_of_det_eq_zero n hdet]
    simp
  · rw [← h158PrimitiveScalar_gauss_valuation n hdet p hp]
    exact h158SevenMatrix_det_gauss_nonneg_of_large_prime n p hp hlarge hdet

theorem h158PrimitiveScalar_den_prime_support (n p : ℕ) (hp : p.Prime)
    (hdiv : p ∣ (h158PrimitiveScalar n).den) : p ≤ 57*n := by
  let : Fact p.Prime := ⟨hp⟩
  by_contra h
  exact h158GateIntegralRing_den_not_dvd p _
    (h158PrimitiveScalar_nonneg_of_large_prime n p hp (by omega)) hdiv

#print axioms h158Normalization_valuation_main_prime
#print axioms h158_scaled_factorial_unit
#print axioms h158PrimeScaledBasis_coeff_nonneg
#print axioms h158PrimeScaledBasis_taylor_coeff_nonneg
#print axioms h158_principal_coeff_nonneg_of_large_prime
#print axioms h158_momentConstant_nonneg_of_large_prime
#print axioms h158SevenMatrix_coeff_nonneg_of_large_prime
#print axioms h158SevenMatrix_det_coeff_nonneg_of_large_prime
#print axioms h158SevenMatrix_det_gauss_nonneg_of_large_prime
#print axioms h158SevenMatrix_det_coeff_den_prime_support
#print axioms h158PrimitiveScalar_nonneg_of_large_prime
#print axioms h158PrimitiveScalar_den_prime_support

end OddZetaMixed
