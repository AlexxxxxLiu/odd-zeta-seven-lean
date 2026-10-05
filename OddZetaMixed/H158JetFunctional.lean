import OddZetaMixed.H158LocalJets
import OddZetaMixed.H158Coefficients

/-!
# Actual principal coefficients as a polynomial-jet functional

The base principal polynomial is extracted from the original E_0 E_0 entry.
Multiplication by each actual centered multiplier is proved modulo the full
pole power. The resulting formula retains every lower Laurent coefficient.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

theorem coeff_eq_of_truncated_mul (A B C : ℚ[X]) (r : ℕ)
    (hC : C.coeff 0 ≠ 0)
    (he : ∀ q < r, (A*C).coeff q = (B*C).coeff q) :
    ∀ q < r, A.coeff q = B.coeff q := by
  intro q
  induction q using Nat.strong_induction_on with
  | h q ih =>
    intro hq
    have hz : ((A-B)*C).coeff q = 0 := by
      rw [sub_mul, coeff_sub, he q hq, sub_self]
    have hs : ((A-B)*C).coeff q = (A.coeff q-B.coeff q)*C.coeff 0 := by
      rw [coeff_mul, Finset.sum_eq_single (q,0)]
      · simp
      · intro v hv hne
        have hvq := Finset.mem_antidiagonal.mp hv
        have hvlt : v.1 < q := by
          by_contra hn
          apply hne
          apply Prod.ext <;> omega
        simp [coeff_sub, ih v.1 hvlt (hvlt.trans hq)]
      · simp
    rw [hs] at hz
    exact sub_eq_zero.mp ((mul_eq_zero.mp hz).resolve_right hC)

def h158BasePrincipal (n : ℕ) (hn : 0 < n) (k : ℕ) : ℚ[X] :=
  h158LocalPrincipal n ⟨0, by omega⟩ ⟨0, by omega⟩ k

theorem h158_centeredMultiplier_zero_zero (n : ℕ) : centeredMultiplier n 0 0 = 1 := by
  simp [centeredMultiplier]

/-- The local numerator for every actual entry is the base local numerator
times the full translated multiplier, including all its Taylor orders. -/
theorem h158LocalNumerator_eq_base_mul (n : ℕ) (hn : 0 < n)
    (i j : Fin (2*n)) (k : ℕ) :
    h158LocalNumerator n i j k =
      h158LocalNumerator n ⟨0, by omega⟩ ⟨0, by omega⟩ k *
        taylor (-(k : ℚ)) (centeredMultiplier n i j) := by
  simp only [h158LocalNumerator, h158_centeredMultiplier_zero_zero, mul_one,
    taylor_mul]

/-- A multiplication identity for the original finite principal arrays.
No nonzero coefficient or top-order-only approximation is assumed. -/
theorem h158LocalPrincipal_eq_base_mul_coeff (n : ℕ) (hn : 0 < n)
    (i j : Fin (2*n)) (k : ℕ) (hk : k ∈ h158PoleSet n)
    (q : ℕ) (hq : q < h158PoleOrder n k) :
    (h158LocalPrincipal n i j k).coeff q =
      (h158BasePrincipal n hn k *
        taylor (-(k : ℚ)) (centeredMultiplier n i j)).coeff q := by
  let T := taylor (-(k : ℚ)) (centeredMultiplier n i j)
  have h0 := h158LocalPrincipal_congruence n ⟨0, by omega⟩ ⟨0, by omega⟩ k hk
  have hij := h158LocalPrincipal_congruence n i j k hk
  have hm := dvd_mul_of_dvd_left h0 T
  have hd := dvd_sub hm hij
  have he :
      (h158LocalNumerator n ⟨0, by omega⟩ ⟨0, by omega⟩ k -
        h158BasePrincipal n hn k * h158LocalCofactor n k) * T -
      (h158LocalNumerator n i j k -
        h158LocalPrincipal n i j k * h158LocalCofactor n k) =
      (h158LocalPrincipal n i j k - h158BasePrincipal n hn k * T) *
        h158LocalCofactor n k := by
    rw [h158LocalNumerator_eq_base_mul n hn i j k]
    change (_-_*_)*T-(_*T-_*_) = _
    ring
  change X^h158PoleOrder n k ∣
    (h158LocalNumerator n ⟨0, by omega⟩ ⟨0, by omega⟩ k -
      h158BasePrincipal n hn k * h158LocalCofactor n k) * T - _ at hd
  rw [he] at hd
  apply coeff_eq_of_truncated_mul _ _ (h158LocalCofactor n k)
    (h158PoleOrder n k) (h158LocalCofactor_zero_ne n k hk) _ q hq
  intro v hv
  have h := Polynomial.X_pow_dvd_iff.mp hd v hv
  simpa only [sub_mul, coeff_sub, sub_eq_zero] using h

theorem h158PrincipalCoefficients_eq_base_jet (n : ℕ) (hn : 0 < n)
    (i j : Fin (2*n)) (k : ℕ) (hk : k ∈ h158PoleSet n)
    (l : Fin (h158PoleOrder n k)) :
    h158PrincipalCoefficients n i j k l =
      (h158BasePrincipal n hn k *
        taylor (-(k : ℚ)) (centeredMultiplier n i j)).coeff
          (h158PoleOrder n k-(l.val+1)) := by
  rw [← h158LocalPrincipal_coeff n i j k l]
  exact h158LocalPrincipal_eq_base_mul_coeff n hn i j k hk _ (by have := l.isLt; omega)

theorem affineEntry_sum {ι : Type*} (s : Finset ι) (a : ι → ℚ)
    (b : ι → Fin 7 → ℚ) :
    affineEntry (∑ x ∈ s, a x) (fun j => ∑ x ∈ s, b x j) =
      ∑ x ∈ s, affineEntry (a x) (b x) := by
  simp only [affineEntry, map_sum, Finset.sum_add_distrib, Finset.sum_mul]
  rw [Finset.sum_comm]

theorem affineEntry_scale (c a : ℚ) (b : Fin 7 → ℚ) :
    affineEntry (c*a) (fun s => c*b s) =
      MvPolynomial.C c * affineEntry a b := by
  simp only [affineEntry, map_mul, mul_add, Finset.mul_sum, mul_assoc]

def h158PoleCoordinate (n k : ℕ) (l : Fin (h158PoleOrder n k)) : SevenPolynomial :=
  affineEntry (-((l.val+4).choose 4 : ℚ) * harmonicCutoff (l.val+5) (k-48*n-1))
    (fun s => if l.val = 2+2*s.val then (((2+2*s.val)+4).choose 4 : ℚ) else 0)

/-- Finite regrouping of every actual entry, including the full constant
coordinate. No specialization of the seven formal variables is used. -/
theorem h158SevenMatrix_eq_pole_sum (n : ℕ) (i j : Fin (2*n)) :
    h158SevenMatrix n i j = ∑ k ∈ h158PoleSet n, ∑ l,
      MvPolynomial.C (h158PrincipalCoefficients n i j k l) * h158PoleCoordinate n k l := by
  have ha : h158MomentConstant n i j = ∑ k ∈ h158PoleSet n, ∑ l,
      h158PrincipalCoefficients n i j k l *
        (-((l.val+4).choose 4 : ℚ) * harmonicCutoff (l.val+5) (k-48*n-1)) := by
    simp only [h158MomentConstant, ← Finset.sum_neg_distrib]
    apply sum_congr rfl
    intro k hk
    apply sum_congr rfl
    intro l hl
    ring
  have hb (s : Fin 7) : h158ZetaCoefficient n i j (2+2*s.val) =
      ∑ k ∈ h158PoleSet n, ∑ l, h158PrincipalCoefficients n i j k l *
        (if l.val = 2+2*s.val then (((2+2*s.val)+4).choose 4 : ℚ) else 0) := by
    simp only [h158ZetaCoefficient, h158OrderCoefficient, Finset.mul_sum]
    apply sum_congr rfl
    intro k hk
    apply sum_congr rfl
    intro l hl
    split_ifs <;> ring
  change affineEntry (h158MomentConstant n i j)
    (fun s => h158ZetaCoefficient n i j (2+2*s.val)) = _
  simp_rw [ha, hb]
  rw [affineEntry_sum]
  apply sum_congr rfl
  intro k hk
  rw [affineEntry_sum]
  apply sum_congr rfl
  intro l hl
  exact affineEntry_scale _ _ _

def h158JetValue (n : ℕ) (hn : 0 < n) (k : ℕ)
    (l : Fin (h158PoleOrder n k)) (P : ℚ[X]) : ℚ :=
  (h158BasePrincipal n hn k * taylor (-(k : ℚ)) P).coeff
    (h158PoleOrder n k-(l.val+1))

def h158JetFunctional (n : ℕ) (hn : 0 < n) (P : ℚ[X]) : SevenPolynomial :=
  ∑ k ∈ h158PoleSet n, ∑ l,
    MvPolynomial.C (h158JetValue n hn k l P) * h158PoleCoordinate n k l

theorem h158JetValue_add (n : ℕ) (hn : 0 < n) (k : ℕ)
    (l : Fin (h158PoleOrder n k)) (P Q : ℚ[X]) :
    h158JetValue n hn k l (P+Q) = h158JetValue n hn k l P + h158JetValue n hn k l Q := by
  simp only [h158JetValue, map_add, mul_add, coeff_add]

theorem h158JetValue_scale (n : ℕ) (hn : 0 < n) (k : ℕ)
    (l : Fin (h158PoleOrder n k)) (c : ℚ) (P : ℚ[X]) :
    h158JetValue n hn k l (C c*P) = c*h158JetValue n hn k l P := by
  simp only [h158JetValue, taylor_mul, taylor_C]
  rw [show h158BasePrincipal n hn k * (C c*taylor (-(k : ℚ)) P) =
    C c*(h158BasePrincipal n hn k * taylor (-(k : ℚ)) P) by ring, coeff_C_mul]

theorem h158JetFunctional_add (n : ℕ) (hn : 0 < n) (P Q : ℚ[X]) :
    h158JetFunctional n hn (P+Q) = h158JetFunctional n hn P + h158JetFunctional n hn Q := by
  simp only [h158JetFunctional, h158JetValue_add, map_add, add_mul, sum_add_distrib]

theorem h158JetFunctional_scale (n : ℕ) (hn : 0 < n) (c : ℚ) (P : ℚ[X]) :
    h158JetFunctional n hn (C c*P) = MvPolynomial.C c*h158JetFunctional n hn P := by
  simp only [h158JetFunctional, h158JetValue_scale, map_mul, mul_assoc, mul_sum]

/-- The original seven-variable matrix is the same proved linear jet
functional on the original centered products, not a newly chosen model. -/
theorem h158SevenMatrix_eq_jetFunctional (n : ℕ) (hn : 0 < n)
    (i j : Fin (2*n)) :
    h158SevenMatrix n i j = h158JetFunctional n hn (centeredMultiplier n i j) := by
  rw [h158SevenMatrix_eq_pole_sum]
  apply sum_congr rfl
  intro k hk
  apply sum_congr rfl
  intro l hl
  rw [h158PrincipalCoefficients_eq_base_jet n hn i j k hk l]
  rfl

def h158JetLinearMap (n : ℕ) (hn : 0 < n) : ℚ[X] →ₗ[ℚ] SevenPolynomial where
  toFun := h158JetFunctional n hn
  map_add' := h158JetFunctional_add n hn
  map_smul' c P := by
    change h158JetFunctional n hn (c • P) = c • h158JetFunctional n hn P
    rw [← Polynomial.C_mul', h158JetFunctional_scale]
    exact MvPolynomial.C_mul'

/-- Reconstruction uses every coefficient below a genuine degree bound,
not merely the pole-order range. -/
theorem polynomial_eq_fin_sum (P : ℚ[X]) (d : ℕ) (hP : P.natDegree < d) :
    P = ∑ u : Fin d, C (P.coeff u.val) * X^u.val := by
  exact (P.as_sum_range_C_mul_X_pow' hP).trans
    (Fin.sum_univ_eq_sum_range (fun k : ℕ => C (P.coeff k)*X^k) d).symm

theorem polynomial_linearFunctional_product (F : ℚ[X] →ₗ[ℚ] SevenPolynomial)
    (P Q : ℚ[X]) (d : ℕ) (hP : P.natDegree < d) (hQ : Q.natDegree < d) :
    F (P*Q) = ∑ u : Fin d, ∑ v : Fin d,
      MvPolynomial.C (P.coeff u.val) * F (X^(u.val+v.val)) *
        MvPolynomial.C (Q.coeff v.val) := by
  conv_lhs => rw [polynomial_eq_fin_sum P d hP, polynomial_eq_fin_sum Q d hQ]
  simp only [sum_mul, mul_sum, map_sum]
  rw [Finset.sum_comm]
  apply sum_congr rfl
  intro u hu
  apply sum_congr rfl
  intro v hv
  rw [show (C (P.coeff u.val)*X^u.val)*(C (Q.coeff v.val)*X^v.val) =
    C (P.coeff u.val*Q.coeff v.val)*X^(u.val+v.val) by rw [C_mul, pow_add]; ring,
    Polynomial.C_mul', map_smul, Algebra.smul_def]
  change MvPolynomial.C (P.coeff u.val * Q.coeff v.val) * _ = _
  rw [map_mul]
  ring

theorem polynomial_linearFunctional_taylor_product
    (F : ℚ[X] →ₗ[ℚ] SevenPolynomial) (P Q : ℚ[X]) (a : ℚ)
    (d : ℕ) (hP : P.natDegree < d) (hQ : Q.natDegree < d) :
    F (P*Q) = ∑ u : Fin d, ∑ v : Fin d,
      MvPolynomial.C ((taylor a P).coeff u.val) *
        F (taylor (-a) (X^(u.val+v.val))) *
          MvPolynomial.C ((taylor a Q).coeff v.val) := by
  have h := polynomial_linearFunctional_product (F.comp (taylor (-a)))
    (taylor a P) (taylor a Q) d (by simpa using hP) (by simpa using hQ)
  simpa only [LinearMap.comp_apply, ← taylor_mul, taylor_taylor,
    neg_add_cancel, taylor_zero] using h

def h158CenteredBasis (n : ℕ) (i : Fin (2*n)) : ℚ[X] :=
  (evenBasis i.val).comp (X+C (79*(n : ℚ)+1))

theorem h158CenteredBasis_degree (n : ℕ) (i : Fin (2*n)) :
    (h158CenteredBasis n i).natDegree < 4*n := by
  rw [h158CenteredBasis, natDegree_comp, evenBasis_natDegree, natDegree_X_add_C, mul_one]
  have := i.isLt
  omega

def h158TaylorEvaluation (n : ℕ) (a : ℚ) :
    Matrix (Fin (2*n)) (Fin (4*n)) SevenPolynomial :=
  fun i u => MvPolynomial.C ((taylor a (h158CenteredBasis n i)).coeff u.val)

def h158TaylorMoment (n : ℕ) (hn : 0 < n) (a : ℚ) :
    Matrix (Fin (4*n)) (Fin (4*n)) SevenPolynomial :=
  fun u v => h158JetFunctional n hn (taylor (-a) (X^(u.val+v.val)))

/-- Exact all-jet factorization of the actual formal matrix at ANY rational
anchor. This alone is not the collision-class valuation or selection bound. -/
theorem h158SevenMatrix_taylor_factorization (n : ℕ) (hn : 0 < n) (a : ℚ) :
    h158SevenMatrix n = h158TaylorEvaluation n a * h158TaylorMoment n hn a *
      (h158TaylorEvaluation n a).transpose := by
  apply Matrix.ext
  intro i j
  rw [h158SevenMatrix_eq_jetFunctional n hn i j]
  have hprod : centeredMultiplier n i j = h158CenteredBasis n i * h158CenteredBasis n j := by
    simp only [centeredMultiplier, h158CenteredBasis, mul_comp]
  rw [hprod]
  have h := polynomial_linearFunctional_taylor_product (h158JetLinearMap n hn)
    (h158CenteredBasis n i) (h158CenteredBasis n j) a (4*n)
    (h158CenteredBasis_degree n i) (h158CenteredBasis_degree n j)
  change h158JetFunctional n hn (_*_) = _ at h
  rw [h]
  simp only [Matrix.mul_apply, Matrix.transpose_apply, sum_mul,
    h158TaylorEvaluation, h158TaylorMoment]
  rw [Finset.sum_comm]
  rfl

end OddZetaMixed
