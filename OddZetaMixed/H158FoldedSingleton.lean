import OddZetaMixed.H158ReflectionOrbits
import OddZetaMixed.H158SingletonValuation
import OddZetaMixed.FormalBlockSelection
import OddZetaMixed.H158GateCoefficients

/-!
# Singleton plateaus for the actual reflection-folded blocks

The ordinary pair estimate requires the singleton condition and the complete
harmonic cutoff condition on BOTH poles. The central estimate uses the
actual even-column block at its true anchor. All estimates concern the
original seven-variable coefficients, not a specialization or model matrix.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Polynomial Finset LocalJetValuation

theorem h158ResidueClass_eq_intResidue (p : ℕ) (hp : 0 < p) (k : ℕ) :
    h158ResidueClass p hp k = h158IntResidue p hp (k : ℤ) := by
  apply Fin.ext
  change k % p = ((k : ℤ) : ZMod p).val
  simp only [Int.cast_natCast, ZMod.val_natCast]

theorem h158ReflectedPole_residueClass (n p k : ℕ) (hp : 0 < p)
    (hk : k ∈ h158PoleSet n) :
    h158ResidueClass p hp (h158ReflectedPole n k) =
      h158ReflectionClass n p hp (h158ResidueClass p hp k) := by
  have hb := h158_pole_address_bounds n k hk
  have hle : k ≤ 158*n+2 := by omega
  rw [h158ResidueClass_eq_intResidue]
  apply (h158IntResidue_eq_iff p hp _ _).2
  simp only [h158ResidueClass, h158ReflectedPole, Int.cast_sub, Int.cast_add,
    Int.cast_mul, Int.cast_ofNat, Int.cast_natCast, Nat.cast_sub hle,
    Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat, ZMod.natCast_mod]

theorem h158Center_residueClass (n p : ℕ) (hp : 0 < p) :
    h158ResidueClass p hp (79*n+1) = h158CentralClass n p hp := by
  rw [h158ResidueClass_eq_intResidue]
  simp only [h158CentralClass, Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat, Nat.cast_one]

/-- Rewrite the already proved actual singleton estimate with the root
count at the pole, rather than its residue representative. -/
theorem h158_singleton_block_plateau_at_pole
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hk : k ∈ h158PoleSet n) (hsingle : H158PoleSingleton p n k)
    (hsq : 52*n < p^2) (hcut : k-48*n-1 < p)
    (c : Fin p) (hkc : h158ResidueClass p hp k = c)
    (anchor : ℤ) (ha : (p : ℤ) ∣ anchor+(c.val : ℤ))
    (u v : Fin (4*n)) :
    FormalAtLeast p
      (padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n k-(h158PoleOrder n k : ℤ)+1+
          (u.val : ℤ)+(v.val : ℤ)))
      (h158ClusterMoment n hn (h158ResidueClass p hp) c (anchor : ℚ) u v) := by
  have h := h158_singleton_residueClusterMoment_plateau
    n k hn hp hk hsingle hsq hcut c hkc anchor ha u v
  rwa [← h158_numerator_count_congr p n k c.val
    (residue_class_difference_dvd hp c k hkc)] at h

/-- The two actual orbit packets are separately certified. In particular,
a no-harmonic estimate on one side is never transferred to the other. -/
theorem h158PairMoment_singleton_plateau
    {p : ℕ} [Fact p.Prime] (n k k' : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hk : k ∈ h158PoleSet n) (hk' : k' ∈ h158PoleSet n)
    (hsingle : H158PoleSingleton p n k) (hsingle' : H158PoleSingleton p n k')
    (hsq : 52*n < p^2) (hcut : k-48*n-1 < p) (hcut' : k'-48*n-1 < p)
    (c : Fin p) (hkc : h158ResidueClass p hp k = c)
    (hk'c : h158ResidueClass p hp k' = h158ReflectionClass n p hp c)
    (u v : Fin (4*n)) :
    FormalAtLeast p
      (padicValRat p (h158Normalization n)+
        max 0 (min (h158NumeratorCount p n k-(h158PoleOrder n k : ℤ))
          (h158NumeratorCount p n k'-(h158PoleOrder n k' : ℤ))+1+
          (u.val : ℤ)+(v.val : ℤ)))
      (h158PairMoment n p hn hp c u v) := by
  have h1 := h158_singleton_block_plateau_at_pole n k hn hp hk hsingle hsq hcut
    c hkc (-(c.val : ℤ)) (by simp) u v
  have h2 := h158_singleton_block_plateau_at_pole n k' hn hp hk' hsingle' hsq hcut'
    (h158ReflectionClass n p hp c) hk'c (-(158*(n : ℤ)+2)+(c.val : ℤ))
    (h158ReflectionClass_congruent n p hp c) u v
  simp only [Int.cast_neg, Int.cast_add, Int.cast_mul, Int.cast_ofNat,
    Int.cast_natCast] at h1 h2
  unfold h158PairMoment
  apply formal_add
  · apply formal_mono h1
    have hmin := min_le_left (h158NumeratorCount p n k-(h158PoleOrder n k : ℤ))
      (h158NumeratorCount p n k'-(h158PoleOrder n k' : ℤ))
    omega
  · apply formal_mono (formal_sign_conjugate_floor _ u v _ h2)
    have hmin := min_le_right (h158NumeratorCount p n k-(h158PoleOrder n k : ℤ))
      (h158NumeratorCount p n k'-(h158PoleOrder n k' : ℤ))
    omega

/-- Concrete reflection-address version. Both singleton and both harmonic
conditions remain explicit in the signature. -/
theorem h158PairMoment_reflected_singleton_plateau
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hk : k ∈ h158PoleSet n)
    (hsingle : H158PoleSingleton p n k)
    (hsingle' : H158PoleSingleton p n (h158ReflectedPole n k))
    (hsq : 52*n < p^2) (hcut : k-48*n-1 < p)
    (hcut' : h158ReflectedPole n k-48*n-1 < p) (u v : Fin (4*n)) :
    FormalAtLeast p
      (padicValRat p (h158Normalization n)+
        max 0 (min (h158NumeratorCount p n k-(h158PoleOrder n k : ℤ))
          (h158NumeratorCount p n (h158ReflectedPole n k)-
            (h158PoleOrder n (h158ReflectedPole n k) : ℤ))+1+
          (u.val : ℤ)+(v.val : ℤ)))
      (h158PairMoment n p hn hp (h158ResidueClass p hp k) u v) :=
  h158PairMoment_singleton_plateau n k (h158ReflectedPole n k) hn hp hk
    ((h158_pole_mem_reflection n k).mpr hk) hsingle hsingle' hsq hcut hcut'
    (h158ResidueClass p hp k) rfl (h158ReflectedPole_residueClass n p k hp hk) u v

/-- The fixed orbit uses its unique actual central pole and twice the jet
index. Its central numerator zero is retained in the unreduced count. -/
theorem h158CentralEvenMoment_singleton_plateau
    {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hsingle : H158PoleSingleton p n (79*n+1)) (hsq : 52*n < p^2)
    (hcut : (79*n+1)-48*n-1 < p) (u v : Fin (2*n)) :
    FormalAtLeast p
      (padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n (79*n+1)-(h158PoleOrder n (79*n+1) : ℤ)+1+
          2*(u.val : ℤ)+2*(v.val : ℤ)))
      (h158CentralEvenMoment n p hn hp u v) := by
  have hk : 79*n+1 ∈ h158PoleSet n :=
    (h158PoleSet_mem_iff n (79*n+1)).mpr (by constructor <;> omega)
  have h := h158_singleton_block_plateau_at_pole n (79*n+1) hn hp hk hsingle hsq hcut
    (h158CentralClass n p hp) (h158Center_residueClass n p hp)
    (-(79*(n : ℤ)+1)) (h158CentralClass_congruent n p hp)
    (h158EvenJet n u) (h158EvenJet n v)
  simpa only [h158CentralEvenMoment, Matrix.submatrix_apply, h158EvenJet,
    Int.cast_neg, Int.cast_add, Int.cast_mul, Int.cast_ofNat, Int.cast_natCast,
    Int.cast_one, Nat.cast_mul, Nat.cast_ofNat] using h

/-- In the high band p>31n all central singleton and cutoff conditions
follow from the original pole interval and the exact cutoff 31n. -/
theorem h158CentralEvenMoment_plateau_of_high_prime
    {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hhigh : 31*n < p) (u v : Fin (2*n)) :
    FormalAtLeast p
      (padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n (79*n+1)-(h158PoleOrder n (79*n+1) : ℤ)+1+
          2*(u.val : ℤ)+2*(v.val : ℤ)))
      (h158CentralEvenMoment n p hn hp u v) := by
  apply h158CentralEvenMoment_singleton_plateau n hn hp
  · exact h158_poleSingleton_of_interval p n (79*n+1) (by omega) (by omega)
  · have hp2 := (Fact.out : p.Prime).two_le
    nlinarith
  · omega

namespace LocalJetValuation

theorem twice_sum_injective_indices_lower {r : ℕ} (f : Fin r → ℕ)
    (hf : Function.Injective f) :
    (r : ℤ)*((r : ℤ)-1) ≤ 2*∑ i, (f i : ℤ) := by
  classical
  have hc : (univ.image f).card = r := by
    rw [card_image_of_injective _ hf]
    simp
  have hs : (∑ j ∈ univ.image f, (j : ℤ)) = ∑ i, (f i : ℤ) := by
    exact sum_image (fun _ _ _ _ h => hf h)
  have h := FormalBlockSelection.twice_sum_nat_set_lower (univ.image f)
  rwa [hc, hs] at h

/-- Arbitrarily ordered independent selections: injectivity alone gives
the jet-spacing charge. Neither selection needs to be principal or sorted. -/
theorem formal_minor_plateau_floor_injective {p r : ℕ} [Fact p.Prime]
    (M : Matrix (Fin r) (Fin r) SevenPolynomial) (nu a d : ℤ) (hd : 0 ≤ d)
    {u v : Fin r → ℕ} (hu : Function.Injective u) (hv : Function.Injective v)
    (hentry : ∀ i j,
      FormalAtLeast p (nu+max 0 (a+d*(u i : ℤ)+d*(v j : ℤ))) (M i j)) :
    FormalAtLeast p ((r : ℤ)*(nu+max 0 (a+d*((r : ℤ)-1)))) M.det := by
  classical
  apply formal_determinant_lower_of_termwise
  intro sigma
  have hprod := formal_prod univ (fun i => M (sigma i) i)
    (fun i => nu+max 0 (a+d*(u (sigma i) : ℤ)+d*(v i : ℤ)))
    (fun i _ => hentry (sigma i) i)
  apply formal_mono hprod
  have hrow := twice_sum_injective_indices_lower (fun i => u (sigma i))
    (hu.comp sigma.injective)
  have hcol := twice_sum_injective_indices_lower v hv
  have hindices : (r : ℤ)*((r : ℤ)-1) ≤
      (∑ i, (u (sigma i) : ℤ))+(∑ i, (v i : ℤ)) := by linarith
  have hweighted := mul_le_mul_of_nonneg_left hindices hd
  have hnonneg : 0 ≤ ∑ i, max 0 (a+d*(u (sigma i) : ℤ)+d*(v i : ℤ)) :=
    sum_nonneg (fun _ _ => le_max_left _ _)
  have hlinear : (r : ℤ)*a+d*(∑ i, (u (sigma i) : ℤ))+d*(∑ i, (v i : ℤ)) ≤
      ∑ i, max 0 (a+d*(u (sigma i) : ℤ)+d*(v i : ℤ)) := by
    calc
      _ = ∑ i, (a+d*(u (sigma i) : ℤ)+d*(v i : ℤ)) := by
        simp only [sum_add_distrib, sum_const, card_univ, Fintype.card_fin,
          nsmul_eq_mul, mul_sum]
      _ ≤ _ := sum_le_sum (fun _ _ => le_max_right _ _)
  have hsum : (∑ i, (nu+max 0 (a+d*(u (sigma i) : ℤ)+d*(v i : ℤ)))) =
      (r : ℤ)*nu+(∑ i, max 0 (a+d*(u (sigma i) : ℤ)+d*(v i : ℤ))) := by
    rw [sum_add_distrib, sum_const, card_univ, Fintype.card_fin, nsmul_eq_mul]
  rw [hsum]
  by_cases ha : 0 ≤ a+d*((r : ℤ)-1)
  · rw [max_eq_right ha]
    nlinarith
  · rw [max_eq_left (le_of_lt (lt_of_not_ge ha)), add_zero]
    exact le_add_of_nonneg_right hnonneg

end LocalJetValuation

/-- Independent minors of the actual paired block. Both harmonic cutoffs
are required inputs inherited from the actual entry theorem. -/
theorem h158PairMoment_singleton_minor_plateau
    {p r : ℕ} [Fact p.Prime] (n k k' : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hk : k ∈ h158PoleSet n) (hk' : k' ∈ h158PoleSet n)
    (hsingle : H158PoleSingleton p n k) (hsingle' : H158PoleSingleton p n k')
    (hsq : 52*n < p^2) (hcut : k-48*n-1 < p) (hcut' : k'-48*n-1 < p)
    (c : Fin p) (hkc : h158ResidueClass p hp k = c)
    (hk'c : h158ResidueClass p hp k' = h158ReflectionClass n p hp c)
    (u v : Fin r → Fin (4*n)) (hu : Function.Injective u) (hv : Function.Injective v) :
    FormalAtLeast p
      ((r : ℤ)*(padicValRat p (h158Normalization n)+
        max 0 (min (h158NumeratorCount p n k-(h158PoleOrder n k : ℤ))
          (h158NumeratorCount p n k'-(h158PoleOrder n k' : ℤ))+(r : ℤ))))
      ((h158PairMoment n p hn hp c).submatrix u v).det := by
  have hui : Function.Injective (fun i => (u i).val) := Fin.val_injective.comp hu
  have hvi : Function.Injective (fun i => (v i).val) := Fin.val_injective.comp hv
  have h := formal_minor_plateau_floor_injective
    ((h158PairMoment n p hn hp c).submatrix u v)
    (padicValRat p (h158Normalization n))
    (min (h158NumeratorCount p n k-(h158PoleOrder n k : ℤ))
      (h158NumeratorCount p n k'-(h158PoleOrder n k' : ℤ))+1) 1 (by omega) hui hvi
    (by
      intro i j
      simpa only [one_mul, Matrix.submatrix_apply] using
        h158PairMoment_singleton_plateau n k k' hn hp hk hk' hsingle hsingle'
          hsq hcut hcut' c hkc hk'c (u i) (v j))
  have he (a : ℤ) : a+1+1*((r : ℤ)-1) = a+(r : ℤ) := by ring
  simpa only [he] using h

/-- Independent minors of the actual compressed central block. Its doubled
spacing changes the hinge from z-o+r to z-o+2r-1. -/
theorem h158CentralEvenMoment_singleton_minor_plateau
    {p r : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hsingle : H158PoleSingleton p n (79*n+1)) (hsq : 52*n < p^2)
    (hcut : (79*n+1)-48*n-1 < p)
    (u v : Fin r → Fin (2*n)) (hu : Function.Injective u) (hv : Function.Injective v) :
    FormalAtLeast p
      ((r : ℤ)*(padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n (79*n+1)-(h158PoleOrder n (79*n+1) : ℤ)+
          2*(r : ℤ)-1)))
      ((h158CentralEvenMoment n p hn hp).submatrix u v).det := by
  have hui : Function.Injective (fun i => (u i).val) := Fin.val_injective.comp hu
  have hvi : Function.Injective (fun i => (v i).val) := Fin.val_injective.comp hv
  have h := formal_minor_plateau_floor_injective
    ((h158CentralEvenMoment n p hn hp).submatrix u v)
    (padicValRat p (h158Normalization n))
    (h158NumeratorCount p n (79*n+1)-(h158PoleOrder n (79*n+1) : ℤ)+1)
    2 (by omega) hui hvi
    (by
      intro i j
      exact h158CentralEvenMoment_singleton_plateau n hn hp hsingle hsq hcut (u i) (v j))
  have he (a : ℤ) : a+1+2*((r : ℤ)-1) = a+2*(r : ℤ)-1 := by ring
  simpa only [he] using h

/-- High-prime central minors require no additional supplied valuation or
singleton assumptions. -/
theorem h158CentralEvenMoment_minor_plateau_of_high_prime
    {p r : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hhigh : 31*n < p) (u v : Fin r → Fin (2*n))
    (hu : Function.Injective u) (hv : Function.Injective v) :
    FormalAtLeast p
      ((r : ℤ)*(padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n (79*n+1)-(h158PoleOrder n (79*n+1) : ℤ)+
          2*(r : ℤ)-1)))
      ((h158CentralEvenMoment n p hn hp).submatrix u v).det := by
  apply h158CentralEvenMoment_singleton_minor_plateau n hn hp
    (h158_poleSingleton_of_interval p n (79*n+1) (by omega) (by omega))
    _ (by omega) u v hu hv
  have hp2 := (Fact.out : p.Prime).two_le
  nlinarith

/-- A full harmonic cutoff containing exactly one positive multiple of p
has its exact negative order. This tests the actual rational coordinate,
not merely the numerical cutoff predicate. -/
theorem harmonicCutoff_valuation_one_prime
    {p : ℕ} [Fact p.Prime] (s m : ℕ) (hs : 0 < s)
    (hlo : p ≤ m) (hhi : m < 2*p) :
    padicValRat p (harmonicCutoff s m) = -(s : ℤ) := by
  have hp := (Fact.out : p.Prime)
  have hreg := harmonicRegularPart_pintegral p s m hp hhi
  have hsing : padicValRat p (1/(p : ℚ)^s) = -(s : ℤ) := by
    simpa only [one_div] using padicValRat.self_pow_inv s
  rw [harmonicCutoff_split_at_prime p s m hp.pos, ite_eq_left hlo]
  by_cases hz : harmonicRegularPart p s m = 0
  · simpa only [hz, add_zero] using hsing
  have hsum : 1/(p : ℚ)^s+harmonicRegularPart p s m ≠ 0 := by
    intro hzero
    have he : 1/(p : ℚ)^s = -harmonicRegularPart p s m :=
      eq_neg_of_add_eq_zero_left hzero
    rw [he, padicValRat.neg] at hsing
    have hs' : (0 : ℤ) < (s : ℤ) := by exact_mod_cast hs
    omega
  rw [padicValRat.add_eq_of_lt hsum
    (div_ne_zero one_ne_zero (pow_ne_zero s (Nat.cast_ne_zero.mpr hp.ne_zero))) hz (by
    rw [hsing]
    have hs' : (0 : ℤ) < (s : ℤ) := by exact_mod_cast hs
    omega)]
  exact hsing

namespace FoldedSingletonRegression

private instance prime37 : Fact (Nat.Prime 37) := ⟨by norm_num⟩
private instance prime127 : Fact (Nat.Prime 127) := ⟨by norm_num⟩

theorem n4p127_both_singletons :
    H158PoleSingleton 127 4 295 ∧ H158PoleSingleton 127 4 339 :=
  ⟨h158_poleSingleton_of_interval 127 4 295 (by norm_num) (by norm_num),
    h158_poleSingleton_of_interval 127 4 339 (by norm_num) (by norm_num)⟩

theorem n4p127_actual_reflection : h158ReflectedPole 4 295 = 339 := by
  norm_num [h158ReflectedPole]

theorem n4p127_actual_pair_representative :
    h158ResidueClass 127 (by norm_num) 295 <
      h158ReflectionClass 4 127 (by norm_num) (h158ResidueClass 127 (by norm_num) 295) := by
  have hk : 295 ∈ h158PoleSet 4 :=
    (h158PoleSet_mem_iff 4 295).mpr (by norm_num)
  rw [← h158ReflectedPole_residueClass 4 127 295 (by norm_num) hk,
    n4p127_actual_reflection]
  change 295 % 127 < 339 % 127
  norm_num

theorem n4p127_cutoffs :
    295-48*4-1 = 102 ∧ 339-48*4-1 = 146 ∧
      295-48*4-1 < 127 ∧ ¬339-48*4-1 < 127 := by norm_num

theorem n4p127_both_cutoffs_rejected :
    ¬(295-48*4-1 < 127 ∧ h158ReflectedPole 4 295-48*4-1 < 127) := by
  rw [n4p127_actual_reflection]
  norm_num

theorem n4p127_left_actual_coordinate_integral (l : Fin (h158PoleOrder 4 295)) :
    FormalAtLeast 127 0 (h158PoleCoordinate 4 295 l) :=
  h158_poleCoordinate_floor_no_harmonic 4 295 (by norm_num) l

theorem n4p127_right_actual_harmonic_valuation :
    padicValRat 127 (harmonicCutoff 5 (339-48*4-1)) = -5 :=
  harmonicCutoff_valuation_one_prime 5 (339-48*4-1) (by norm_num)
    (by norm_num) (by norm_num)

/-- The reflected pole has a genuine nonintegral formal constant. Thus
one-sided harmonic integrality cannot be transported across reflection. -/
theorem n4p127_right_actual_coordinate_not_integral :
    ¬FormalAtLeast 127 0 (h158PoleCoordinate 4 339
      ⟨0, h158_pole_order_positive 4 339
        ((h158PoleSet_mem_iff 4 339).mpr (by norm_num))⟩) := by
  have hnone (s : Fin 7) : ¬(0 = 2+2*s.val) := by omega
  have he : h158PoleCoordinate 4 339
      ⟨0, h158_pole_order_positive 4 339
        ((h158PoleSet_mem_iff 4 339).mpr (by norm_num))⟩ =
      MvPolynomial.C (-(harmonicCutoff 5 (339-48*4-1))) := by
    simp [h158PoleCoordinate, affineEntry, hnone]
  rw [he]
  intro h
  have h0 := h 0
  simp only [MvPolynomial.coeff_C, ite_true] at h0
  have hv : padicValRat 127 (-(harmonicCutoff 5 (339-48*4-1))) = -5 := by
    rw [padicValRat.neg, n4p127_right_actual_harmonic_valuation]
  rcases h0 with hz | hval
  · rw [hz] at hv
    norm_num at hv
  · omega

/-- Positive control: both sides of a genuine reflected pair meet the
singleton and harmonic predicates, and certify the actual paired entry. -/
theorem n1p37_actual_pair_entry (u v : Fin 4) :
    FormalAtLeast 37
      (padicValRat 37 (h158Normalization 1)+
        max 0 (min (h158NumeratorCount 37 1 76-(h158PoleOrder 1 76 : ℤ))
          (h158NumeratorCount 37 1 84-(h158PoleOrder 1 84 : ℤ))+1+
          (u.val : ℤ)+(v.val : ℤ)))
      (h158PairMoment 1 37 (by norm_num) (by norm_num)
        (h158ResidueClass 37 (by norm_num) 76) u v) := by
  have hk : 76 ∈ h158PoleSet 1 := (h158PoleSet_mem_iff 1 76).mpr (by norm_num)
  have he : h158ReflectedPole 1 76 = 84 := by norm_num [h158ReflectedPole]
  apply h158PairMoment_singleton_plateau 1 76 84 (by norm_num) (by norm_num) hk
    ((h158PoleSet_mem_iff 1 84).mpr (by norm_num))
    (h158_poleSingleton_of_interval 37 1 76 (by norm_num) (by norm_num))
    (h158_poleSingleton_of_interval 37 1 84 (by norm_num) (by norm_num))
    (by norm_num) (by norm_num) (by norm_num) _ rfl
  simpa only [he] using h158ReflectedPole_residueClass 1 37 76 (by norm_num) hk

private def pairRows (i : Fin 2) : Fin 4 := ⟨i.val, by omega⟩
private def pairCols (i : Fin 2) : Fin 4 := ⟨3-i.val, by omega⟩

/-- Rows {0,1} and columns {3,2} are distinct sets, and the columns are
deliberately unsorted. The bound concerns this actual paired minor. -/
theorem n1p37_actual_nonprincipal_pair_minor :
    FormalAtLeast 37
      (2*(padicValRat 37 (h158Normalization 1)+
        max 0 (min (h158NumeratorCount 37 1 76-(h158PoleOrder 1 76 : ℤ))
          (h158NumeratorCount 37 1 84-(h158PoleOrder 1 84 : ℤ))+2)))
      ((h158PairMoment 1 37 (by norm_num) (by norm_num)
        (h158ResidueClass 37 (by norm_num) 76)).submatrix pairRows pairCols).det := by
  have hk : 76 ∈ h158PoleSet 1 := (h158PoleSet_mem_iff 1 76).mpr (by norm_num)
  have he : h158ReflectedPole 1 76 = 84 := by norm_num [h158ReflectedPole]
  have hc : h158ResidueClass 37 (by norm_num) 84 =
      h158ReflectionClass 1 37 (by norm_num) (h158ResidueClass 37 (by norm_num) 76) := by
    simpa only [he] using h158ReflectedPole_residueClass 1 37 76 (by norm_num) hk
  have hu : Function.Injective pairRows := by
    intro i j hij
    apply Fin.ext
    exact congrArg (fun x : Fin 4 => x.val) hij
  have hv : Function.Injective pairCols := by
    intro i j hij
    have heq := congrArg Fin.val hij
    simp only [pairCols] at heq
    apply Fin.ext
    omega
  exact h158PairMoment_singleton_minor_plateau 1 76 84 (by norm_num) (by norm_num) hk
    ((h158PoleSet_mem_iff 1 84).mpr (by norm_num))
    (h158_poleSingleton_of_interval 37 1 76 (by norm_num) (by norm_num))
    (h158_poleSingleton_of_interval 37 1 84 (by norm_num) (by norm_num))
    (by norm_num) (by norm_num) (by norm_num) _ rfl hc pairRows pairCols hu hv

/-- Different, unsorted column selection exercises the independent-minor
theorem on the actual central even block. -/
theorem n1p37_central_swapped_minor :
    FormalAtLeast 37
      (2*(padicValRat 37 (h158Normalization 1)+
        max 0 (h158NumeratorCount 37 1 80-(h158PoleOrder 1 80 : ℤ)+3)))
      ((h158CentralEvenMoment 1 37 (by norm_num) (by norm_num)).submatrix
        (fun i : Fin 2 => i) (Equiv.swap (0 : Fin 2) 1)).det := by
  have h := h158CentralEvenMoment_minor_plateau_of_high_prime (p := 37) 1
    (by norm_num) (by norm_num) (by norm_num)
    (fun i : Fin 2 => i) (Equiv.swap (0 : Fin 2) 1)
    Function.injective_id (Equiv.swap (0 : Fin 2) 1).injective
  have he (a : ℤ) : a+2*(2 : ℤ)-1 = a+3 := by ring
  simpa only [Nat.cast_ofNat, he] using h

end FoldedSingletonRegression

#print axioms h158PairMoment_singleton_plateau
#print axioms h158PairMoment_reflected_singleton_plateau
#print axioms h158CentralEvenMoment_singleton_plateau
#print axioms h158CentralEvenMoment_plateau_of_high_prime
#print axioms LocalJetValuation.formal_minor_plateau_floor_injective
#print axioms h158PairMoment_singleton_minor_plateau
#print axioms h158CentralEvenMoment_singleton_minor_plateau
#print axioms h158CentralEvenMoment_minor_plateau_of_high_prime
#print axioms FoldedSingletonRegression.n4p127_right_actual_coordinate_not_integral
#print axioms FoldedSingletonRegression.n1p37_actual_pair_entry
#print axioms FoldedSingletonRegression.n1p37_actual_nonprincipal_pair_minor
#print axioms FoldedSingletonRegression.n1p37_central_swapped_minor

end OddZetaMixed
