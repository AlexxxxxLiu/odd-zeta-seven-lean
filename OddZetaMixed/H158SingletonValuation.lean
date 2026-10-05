import OddZetaMixed.H158ClusterAnchorValuation
import OddZetaMixed.H158GlobalArithmeticSeeds
import OddZetaMixed.FormalPolynomialMinors

/-!
# The actual no-harmonic singleton plateau

The singleton condition is an explicit congruence condition on the original
pole set. The proof retains the original normalization and all Laurent
orders, including the full harmonic constant. A singleton unit cofactor
provides a second, constant valuation floor. Combining it with the counted
root floor gives the max-shaped bound used in the high-prime inventory.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.LocalJetValuation

open Polynomial Finset

/-- There is no other original pole in the selected pole's residue class. -/
def H158PoleSingleton (p n k : ℕ) : Prop :=
  ∀ a ∈ h158PoleSet n, (p : ℤ) ∣ (a : ℤ)-k → a = k

theorem atLeast_max {p : ℕ} {a b : ℤ} {x : ℚ}
    (ha : AtLeast p a x) (hb : AtLeast p b x) :
    AtLeast p (max a b) x := by
  by_cases hx : x = 0
  · exact Or.inl hx
  · exact Or.inr (max_le (of_nonzero ha hx) (of_nonzero hb hx))

theorem formalAtLeast_max {p : ℕ} {a b : ℤ} {P : SevenPolynomial}
    (ha : FormalAtLeast p a P) (hb : FormalAtLeast p b P) :
    FormalAtLeast p (max a b) P := fun m => atLeast_max (ha m) (hb m)

theorem integer_floor (p : ℕ) (a : ℤ) : AtLeast p 0 (a : ℚ) := by
  apply Or.inr
  rw [padicValRat.of_int]
  exact Int.natCast_nonneg _

theorem weighted_rising_integral {p : ℕ} [Fact p.Prime] (a x : ℚ) (m : ℕ)
    (ha : AtLeast p 0 a) (hx : AtLeast p 0 x) :
    Weighted p (taylor x (rising a m)) 0 0 := by
  simp only [rising, taylor_product, shifted_rational_linear]
  have h := weighted_prod (p := p) (range m)
    (fun j => X+C (a+(j : ℚ)+x)) (fun _ => (0 : ℤ)) 0
    (fun j _ => weighted_linear (add (add ha (nat_floor p j)) hx) le_rfl)
  simpa using h

/-- The original numerator, before its rational scalar normalization, has
integral Taylor coefficients at every integer pole address. -/
theorem h158_numerator_weighted_integral {p : ℕ} [Fact p.Prime] (n k : ℕ) :
    Weighted p (taylor (-(k : ℚ)) (h158Numerator n)) 0 0 := by
  simp only [h158Numerator, taylor_mul, taylor_product, shifted_rational_linear]
  have hc : AtLeast p 0 (79*(n : ℚ)+1+ -(k : ℚ)) := by
    simpa [sub_eq_add_neg] using integer_floor p (79*(n : ℤ)+1-k)
  have hl := weighted_linear hc (le_refl (0 : ℤ))
  have hr := weighted_prod (p := p) (range 5)
    (fun a => taylor (-(k : ℚ)) (rising 1 ((48+a)*n)) *
      taylor (-(k : ℚ)) (rising (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)) ((48+a)*n)))
    (fun _ => (0 : ℤ)) 0 (by
      intro a ha
      have hx := neg (nat_floor p k)
      have hb : AtLeast p 0 (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)) := by
        simpa using integer_floor p (158*(n : ℤ)+2-(((48+a)*n : ℕ) : ℤ))
      simpa using weighted_mul
        (weighted_rising_integral 1 (-(k : ℚ)) ((48+a)*n) (nat_floor p 1) hx)
        (weighted_rising_integral _ (-(k : ℚ)) ((48+a)*n) hb hx))
  simpa using weighted_mul hl hr

/-- Only the original normalization can contribute a negative coefficient
valuation to the scalar base numerator. -/
theorem h158_base_numerator_normalization_floor {p : ℕ} [Fact p.Prime]
    (n k : ℕ) (hn : 0 < n) :
    Weighted p (h158LocalNumerator n ⟨0, by omega⟩ ⟨0, by omega⟩ k)
      (padicValRat p (h158Normalization n)) 0 := by
  simp only [h158LocalNumerator, h158_centeredMultiplier_zero_zero, mul_one,
    taylor_mul, taylor_C]
  simpa using weighted_mul (weighted_C (slope := 0) (Or.inr le_rfl))
    (h158_numerator_weighted_integral (p := p) n k)

theorem h158_singleton_cofactor_count_zero (p n k : ℕ)
    (hsingle : H158PoleSingleton p n k) : h158CofactorCount p n k = 0 := by
  unfold h158CofactorCount
  apply Finset.sum_eq_zero
  intro a ha
  have hnd : ¬(p : ℤ) ∣ (a : ℤ)-k := fun hd =>
    (mem_erase.mp ha).1 (hsingle a (mem_erase.mp ha).2 hd)
  simp only [ite_eq_right hnd, mul_zero]

/-- Unit cofactor from the actual singleton congruences, with no size or
valuation-bound hypothesis. -/
theorem h158_singleton_cofactor_unit {p : ℕ} [Fact p.Prime]
    (n k : ℕ) (hk : k ∈ h158PoleSet n) (hsingle : H158PoleSingleton p n k) :
    padicValRat p ((h158LocalCofactor n k).coeff 0) = 0 := by
  rw [h158_cofactor_constant_valuation n k hk]
  apply Finset.sum_eq_zero
  intro a ha
  have hnd : ¬(p : ℤ) ∣ (a : ℤ)-k := fun hd =>
    (mem_erase.mp ha).1 (hsingle a (mem_erase.mp ha).2 hd)
  have hv : padicValRat p ((a : ℚ)-k) = 0 := by
    have h := padicValInt.eq_zero_of_not_dvd (p := p) hnd
    rw [show (a : ℚ)-k = (((a : ℤ)-k : ℤ) : ℚ) by push_cast; rfl,
      padicValRat.of_int, h, Nat.cast_zero]
  rw [hv, mul_zero]

/-- Finite division by the actual singleton cofactor retains the
normalization floor at every lower Laurent coefficient. -/
theorem h158_base_coefficient_normalization_floor_of_singleton
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n)
    (hk : k ∈ h158PoleSet n) (hsingle : H158PoleSingleton p n k)
    (q : ℕ) (hq : q < h158PoleOrder n k) :
    AtLeast p (padicValRat p (h158Normalization n))
      ((h158BasePrincipal n hn k).coeff q) := by
  have hN := h158_base_numerator_normalization_floor (p := p) n k hn
  have hC (v : ℕ) : AtLeast p 0 ((h158LocalCofactor n k).coeff v) :=
    Or.inr (h158_localCofactor_coeff_mem_subring (h158GateIntegralRing p) n k v)
  have h := truncated_division
    (h158LocalNumerator n ⟨0, by omega⟩ ⟨0, by omega⟩ k)
    (h158BasePrincipal n hn k) (h158LocalCofactor n k) (h158PoleOrder n k)
    (padicValRat p (h158Normalization n)) 0 0
    (h158LocalCofactor_zero_ne n k hk) (h158_singleton_cofactor_unit n k hk hsingle)
    (by intro v hv; simpa using hC v)
    (by intro v hv; simpa using hN v)
    (fun v hv => h158LocalPrincipal_coefficient_identity n _ _ k v hk hv) q hq
  simpa using h

theorem weighted_anchor_power_integral {p : ℕ} [Fact p.Prime]
    (anchor : ℤ) (k m : ℕ) :
    Weighted p (taylor (-(k : ℚ)) (taylor (-(anchor : ℚ)) (X^m))) 0 0 := by
  have hc : AtLeast p 0 (-(k : ℚ)+ -(anchor : ℚ)) := by
    simpa [sub_eq_add_neg] using integer_floor p (-(k : ℤ)-anchor)
  rw [taylor_taylor, taylor_X_pow]
  simpa using weighted_pow (weighted_linear hc (le_refl (0 : ℤ))) m

theorem h158_jetValue_anchor_normalization_floor_of_singleton
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n)
    (hk : k ∈ h158PoleSet n) (hsingle : H158PoleSingleton p n k)
    (anchor : ℤ) (m : ℕ) (l : Fin (h158PoleOrder n k)) :
    AtLeast p (padicValRat p (h158Normalization n))
      (h158JetValue n hn k l (taylor (-(anchor : ℚ)) (X^m))) := by
  have hA := h158_base_coefficient_normalization_floor_of_singleton
    (p := p) n k hn hk hsingle
  have hP := weighted_anchor_power_integral (p := p) anchor k m
  have h := truncated_weighted_mul (h158BasePrincipal n hn k)
    (taylor (-(k : ℚ)) (taylor (-(anchor : ℚ)) (X^m)))
    (h158PoleOrder n k) (padicValRat p (h158Normalization n)) 0 0
    (by intro q hq; simpa using hA q hq)
    (by intro q hq; simpa using hP q)
    (h158PoleOrder n k-(l.val+1)) (by have := l.isLt; omega)
  simpa only [h158JetValue, add_zero, zero_mul, sub_zero] using h

/-- The full pole coordinate costs nothing when its actual harmonic
cutoff is below p. This is not a replacement of the harmonic sum. -/
theorem h158_poleCoordinate_floor_no_harmonic {p : ℕ} [Fact p.Prime]
    (n k : ℕ) (hcut : k-48*n-1 < p) (l : Fin (h158PoleOrder n k)) :
    FormalAtLeast p 0 (h158PoleCoordinate n k l) := by
  unfold h158PoleCoordinate
  apply formal_affine
  · have h := mul (neg (nat_floor p ((l.val+4).choose 4)))
      (Or.inr (harmonicCutoff_nonneg_of_lt_prime p (l.val+5) (k-48*n-1)
        Fact.out hcut) : AtLeast p 0 (harmonicCutoff (l.val+5) (k-48*n-1)))
    simpa using h
  · intro s
    split_ifs
    · exact nat_floor p _
    · exact zero p 0

/-- Without a harmonic p denominator, every complete pole packet gains
five orders over the uniform harmonic floor. No singleton is needed. -/
theorem h158_polePacket_anchor_floor_no_harmonic {p : ℕ} [Fact p.Prime]
    (n k : ℕ) (hn : 0 < n) (hk : k ∈ h158PoleSet n) (hsq : 52*n < p^2)
    (hcut : k-48*n-1 < p) (anchor : ℤ)
    (ha : (p : ℤ) ∣ anchor+(k : ℤ)) (m : ℕ) (l : Fin (h158PoleOrder n k)) :
    FormalAtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
      h158DenominatorCount p n k+(m : ℤ)+1)
      (MvPolynomial.C (h158JetValue n hn k l (taylor (-(anchor : ℚ)) (X^m))) *
        h158PoleCoordinate n k l) := by
  have h := formal_C_mul
    (h158_jetValue_anchor_power_floor n k hn hk hsq anchor ha m l)
    (h158_poleCoordinate_floor_no_harmonic n k hcut l)
  intro d
  exact mono (h d) (by omega)

theorem h158_poleMap_anchor_floor_no_harmonic {p : ℕ} [Fact p.Prime]
    (n k : ℕ) (hn : 0 < n) (hk : k ∈ h158PoleSet n) (hsq : 52*n < p^2)
    (hcut : k-48*n-1 < p) (anchor : ℤ)
    (ha : (p : ℤ) ∣ anchor+(k : ℤ)) (m : ℕ) :
    FormalAtLeast p (padicValRat p (h158Normalization n)+h158NumeratorCount p n k-
      h158DenominatorCount p n k+(m : ℤ)+1)
      (h158PoleJetMap n hn k (taylor (-(anchor : ℚ)) (X^m))) := by
  change FormalAtLeast p _ (∑ l, MvPolynomial.C
    (h158JetValue n hn k l (taylor (-(anchor : ℚ)) (X^m))) * h158PoleCoordinate n k l)
  exact formal_sum _ _ _ (fun l _ =>
    h158_polePacket_anchor_floor_no_harmonic n k hn hk hsq hcut anchor ha m l)

theorem h158_singleton_poleMap_normalization_floor_no_harmonic
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n)
    (hk : k ∈ h158PoleSet n) (hsingle : H158PoleSingleton p n k)
    (hcut : k-48*n-1 < p) (anchor : ℤ) (m : ℕ) :
    FormalAtLeast p (padicValRat p (h158Normalization n))
      (h158PoleJetMap n hn k (taylor (-(anchor : ℚ)) (X^m))) := by
  change FormalAtLeast p _ (∑ l, MvPolynomial.C
    (h158JetValue n hn k l (taylor (-(anchor : ℚ)) (X^m))) * h158PoleCoordinate n k l)
  apply formal_sum
  intro l hl
  simpa only [add_zero] using formal_C_mul
    (h158_jetValue_anchor_normalization_floor_of_singleton n k hn hk hsingle anchor m l)
    (h158_poleCoordinate_floor_no_harmonic n k hcut l)

/-- Actual high-prime singleton plateau, including the complete rational
constant. Counts and pole order are the unreduced original ones; the
central numerator zero is therefore already counted exactly once. -/
theorem h158_singleton_poleMap_plateau
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n)
    (hk : k ∈ h158PoleSet n) (hsingle : H158PoleSingleton p n k)
    (hsq : 52*n < p^2) (hcut : k-48*n-1 < p)
    (anchor : ℤ) (ha : (p : ℤ) ∣ anchor+(k : ℤ)) (m : ℕ) :
    FormalAtLeast p
      (padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n k-(h158PoleOrder n k : ℤ)+1+(m : ℤ)))
      (h158PoleJetMap n hn k (taylor (-(anchor : ℚ)) (X^m))) := by
  have h0 := h158_singleton_poleMap_normalization_floor_no_harmonic
    n k hn hk hsingle hcut anchor m
  have h1 := h158_poleMap_anchor_floor_no_harmonic n k hn hk hsq hcut anchor ha m
  rw [h158_denominator_count_eq p n k hk,
    h158_singleton_cofactor_count_zero p n k hsingle, zero_add] at h1
  have h := formalAtLeast_max h0 h1
  convert h using 1
  omega

/-- Geometric singleton criterion for the original full interval of poles.
It is sufficient at every positive modulus, not just in the high band. -/
theorem h158_poleSingleton_of_interval (p n k : ℕ)
    (hleft : k < 53*n+1+p) (hright : 105*n+1 < k+p) :
    H158PoleSingleton p n k := by
  intro a ha hd
  have hab := h158_pole_address_bounds n a ha
  by_cases hka : k ≤ a
  · have hz : (a : ℤ)-k = 0 :=
      Int.eq_zero_of_dvd_of_nonneg_of_lt (by omega) (by omega) hd
    exact_mod_cast sub_eq_zero.mp hz
  · have hd' : (p : ℤ) ∣ (k : ℤ)-a := by
      rw [show (k : ℤ)-a = -((a : ℤ)-k) by ring]
      exact dvd_neg.mpr hd
    have hz : (k : ℤ)-a = 0 :=
      Int.eq_zero_of_dvd_of_nonneg_of_lt (by omega) (by omega) hd'
    exact (by exact_mod_cast sub_eq_zero.mp hz : k = a).symm

/-- The actual residue block of a singleton is precisely its pole map;
there are no hidden terms dropped from the rational coordinate. -/
theorem h158_singleton_clusterJetMap_eq {p : ℕ} (n k : ℕ)
    (hn : 0 < n) (hp : 0 < p) (hk : k ∈ h158PoleSet n)
    (hsingle : H158PoleSingleton p n k) (c : Fin p)
    (hkc : h158ResidueClass p hp k = c) :
    h158ClusterJetMap n hn (h158ResidueClass p hp) c = h158PoleJetMap n hn k := by
  have hset : (h158PoleSet n).filter (fun a => h158ResidueClass p hp a = c) = {k} := by
    ext a
    constructor
    · intro ha
      have hmem := mem_filter.mp ha
      have hd1 := residue_class_difference_dvd hp c a hmem.2
      have hd2 := residue_class_difference_dvd hp c k hkc
      have hd : (p : ℤ) ∣ (a : ℤ)-k := by
        rw [show (a : ℤ)-k = ((a : ℤ)-c.val)-((k : ℤ)-c.val) by ring]
        exact dvd_sub hd1 hd2
      exact mem_singleton.mpr (hsingle a hmem.1 hd)
    · intro ha
      rcases mem_singleton.mp ha with rfl
      exact mem_filter.mpr ⟨hk, hkc⟩
  simp only [h158ClusterJetMap, hset, Finset.sum_singleton]

/-- The plateau bound on the actual complete residue-moment matrix, in
the same indices and at the same integer anchors used by the assembly. -/
theorem h158_singleton_residueClusterMoment_plateau
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hk : k ∈ h158PoleSet n) (hsingle : H158PoleSingleton p n k)
    (hsq : 52*n < p^2) (hcut : k-48*n-1 < p)
    (c : Fin p) (hkc : h158ResidueClass p hp k = c)
    (anchor : ℤ) (ha : (p : ℤ) ∣ anchor+(c.val : ℤ)) (u v : Fin (4*n)) :
    FormalAtLeast p
      (padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n c.val-(h158PoleOrder n k : ℤ)+1+
          (u.val : ℤ)+(v.val : ℤ)))
      (h158ClusterMoment n hn (h158ResidueClass p hp) c (anchor : ℚ) u v) := by
  have h := h158_singleton_poleMap_plateau n k hn hk hsingle hsq hcut anchor
    (residue_anchor_congruence hp c anchor ha k hkc) (u.val+v.val)
  rw [h158_numerator_count_congr p n k c.val
    (residue_class_difference_dvd hp c k hkc)] at h
  simp only [h158ClusterMoment, h158_singleton_clusterJetMap_eq n k hn hp hk hsingle c hkc]
  simpa only [Nat.cast_add, add_assoc] using h

/-- High-band interval conditions directly discharge singleton, square,
and no-harmonic hypotheses for an original pole. -/
theorem h158_high_singleton_poleMap_plateau
    {p : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n)
    (hk : k ∈ h158PoleSet n) (hhigh : 26*n < p)
    (hleft : k < 53*n+1+p) (hright : 105*n+1 < k+p)
    (hcut : k < 48*n+1+p) (m : ℕ) :
    FormalAtLeast p
      (padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n k-(h158PoleOrder n k : ℤ)+1+(m : ℤ)))
      (h158PoleJetMap n hn k (taylor (k : ℚ) (X^m))) := by
  have hsq : 52*n < p^2 := by
    have hp2 := (Fact.out : p.Prime).two_le
    nlinarith
  have hcut' : k-48*n-1 < p := by
    have hp0 := (Fact.out : p.Prime).pos
    omega
  have ha : (p : ℤ) ∣ -(k : ℤ)+(k : ℤ) := by simp
  simpa only [Int.cast_neg, Int.cast_natCast, neg_neg] using
    h158_singleton_poleMap_plateau n k hn hk
      (h158_poleSingleton_of_interval p n k hleft hright) hsq hcut' (-(k : ℤ)) ha m

/-- A max of two affine entry floors gives the exact singleton hinge on
every nonprincipal minor. The proof applies the two floors separately,
so no claim about principal minors or unproved convexity is needed. -/
theorem formal_minor_plateau_floor {p r : ℕ} [Fact p.Prime]
    (M : Matrix (Fin r) (Fin r) SevenPolynomial) (nu a d : ℤ) (hd : 0 ≤ d)
    {u v : Fin r → ℕ} (hu : StrictMono u) (hv : StrictMono v)
    (hentry : ∀ i j,
      FormalAtLeast p (nu+max 0 (a+d*(u i : ℤ)+d*(v j : ℤ))) (M i j)) :
    FormalAtLeast p ((r : ℤ)*(nu+max 0 (a+d*((r : ℤ)-1)))) M.det := by
  have h0 : FormalAtLeast p ((r : ℤ)*nu) M.det := by
    have h := formal_minor_floor M nu 0 (by omega) hu hv (by
      intro i j
      have hm := le_max_left 0 (a+d*(u i : ℤ)+d*(v j : ℤ))
      simpa only [zero_mul, add_zero] using formal_mono (hentry i j) (by omega :
        nu ≤ nu+max 0 (a+d*(u i : ℤ)+d*(v j : ℤ))))
    simpa only [zero_mul, add_zero] using h
  have h1 : FormalAtLeast p
      ((r : ℤ)*(nu+a)+d*(r : ℤ)*((r : ℤ)-1)) M.det := by
    apply formal_minor_floor M (nu+a) d hd hu hv
    intro i j
    exact formal_mono (hentry i j) (by
      have h := le_max_right 0 (a+d*(u i : ℤ)+d*(v j : ℤ))
      omega)
  have h := formalAtLeast_max h0 h1
  have he : max ((r : ℤ)*nu) ((r : ℤ)*(nu+a)+d*(r : ℤ)*((r : ℤ)-1)) =
      (r : ℤ)*(nu+max 0 (a+d*((r : ℤ)-1))) := by
    have hr : 0 ≤ (r : ℤ) := Int.natCast_nonneg r
    by_cases ha : 0 ≤ a+d*((r : ℤ)-1)
    · rw [max_eq_right ha]
      rw [max_eq_right (by nlinarith [mul_nonneg hr ha])]
      ring
    · have ha' : a+d*((r : ℤ)-1) ≤ 0 := le_of_lt (lt_of_not_ge ha)
      rw [max_eq_left ha']
      rw [max_eq_left (by nlinarith [mul_nonpos_of_nonneg_of_nonpos hr ha'])]
      ring
  rw [he] at h
  exact h

/-- The high-band singleton local inventory is valid for independent row
and column selections of the actual, complete seven-variable block. -/
theorem h158_singleton_minor_plateau
    {p r : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hk : k ∈ h158PoleSet n) (hsingle : H158PoleSingleton p n k)
    (hsq : 52*n < p^2) (hcut : k-48*n-1 < p)
    (c : Fin p) (hkc : h158ResidueClass p hp k = c)
    (anchor : ℤ) (ha : (p : ℤ) ∣ anchor+(c.val : ℤ))
    (u v : Fin r → Fin (4*n))
    (hu : StrictMono (fun i => (u i).val)) (hv : StrictMono (fun i => (v i).val)) :
    FormalAtLeast p
      ((r : ℤ)*(padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n c.val-(h158PoleOrder n k : ℤ)+(r : ℤ))))
      ((h158ClusterMoment n hn (h158ResidueClass p hp) c (anchor : ℚ)).submatrix u v).det := by
  have h := formal_minor_plateau_floor
    ((h158ClusterMoment n hn (h158ResidueClass p hp) c (anchor : ℚ)).submatrix u v)
    (padicValRat p (h158Normalization n))
    (h158NumeratorCount p n c.val-(h158PoleOrder n k : ℤ)+1) 1 (by omega) hu hv
    (by
      intro i j
      simpa only [one_mul, Matrix.submatrix_apply] using
        h158_singleton_residueClusterMoment_plateau n k hn hp hk hsingle hsq hcut
          c hkc anchor ha (u i) (v j))
  have he : h158NumeratorCount p n c.val-(h158PoleOrder n k : ℤ)+1+1*((r : ℤ)-1) =
      h158NumeratorCount p n c.val-(h158PoleOrder n k : ℤ)+(r : ℤ) := by ring
  simpa only [he] using h

end OddZetaMixed.LocalJetValuation
