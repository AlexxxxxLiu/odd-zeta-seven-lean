import OddZetaMixed.H158JetFunctional
import OddZetaMixed.H158SevenIdentity
import Mathlib.LinearAlgebra.Matrix.Block

/-!
# Determinant-preserving changes of the actual h158 even basis

The change matrix is constructed from the even-power coefficients, not
postulated. Matching degrees and leading coefficients give a unit lower
triangular matrix. The same matrix then acts on the actual seven-coordinate
jet functional and on its specialization at the seven real zeta values.

This file establishes algebraic identities only; it asserts no contour
majorant, asymptotic rate, or irrationality conclusion.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Polynomial Finset

/-- Rows contain the coefficients of the even powers below degree `2*d`. -/
def h158EvenCoefficientMatrix {d : ℕ} (f : Fin d → ℚ[X]) :
    Matrix (Fin d) (Fin d) ℚ := fun i j => (f i).coeff (2*j.val)

def h158OriginalCoefficientMatrix (d : ℕ) : Matrix (Fin d) (Fin d) ℚ :=
  h158EvenCoefficientMatrix (fun i => evenBasis i.val)

theorem h158EvenCoefficientMatrix_lower {d : ℕ} (f : Fin d → ℚ[X])
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) :
    (h158EvenCoefficientMatrix f).IsLowerTriangular := by
  intro i j hij
  exact coeff_eq_zero_of_natDegree_lt ((hdeg i).trans_lt (by simpa using hij))

theorem h158OriginalCoefficientMatrix_lower (d : ℕ) :
    (h158OriginalCoefficientMatrix d).IsLowerTriangular :=
  h158EvenCoefficientMatrix_lower _ (fun i => (evenBasis_natDegree i.val).le)

theorem h158OriginalCoefficientMatrix_diagonal (d : ℕ) (i : Fin d) :
    h158OriginalCoefficientMatrix d i i = (evenBasis i.val).leadingCoeff := by
  change (evenBasis i.val).coeff (2*i.val) = _
  rw [← evenBasis_natDegree, coeff_natDegree]

theorem h158OriginalCoefficientMatrix_det_ne_zero (d : ℕ) :
    (h158OriginalCoefficientMatrix d).det ≠ 0 := by
  rw [Matrix.det_of_isLowerTriangular _ (h158OriginalCoefficientMatrix_lower d)]
  apply Finset.prod_ne_zero_iff.mpr
  intro i _
  rw [h158OriginalCoefficientMatrix_diagonal]
  exact ne_of_gt (evenBasis_leadingCoeff_pos i.val)

/-- The unique row transformation from the original finite even basis. -/
def h158UnitBasisChange {d : ℕ} (f : Fin d → ℚ[X]) :
    Matrix (Fin d) (Fin d) ℚ :=
  h158EvenCoefficientMatrix f * (h158OriginalCoefficientMatrix d)⁻¹

theorem h158UnitBasisChange_mul_original {d : ℕ} (f : Fin d → ℚ[X]) :
    h158UnitBasisChange f * h158OriginalCoefficientMatrix d =
      h158EvenCoefficientMatrix f := by
  exact Matrix.nonsing_inv_mul_cancel_right _ _
    (isUnit_iff_ne_zero.mpr (h158OriginalCoefficientMatrix_det_ne_zero d))

theorem h158UnitBasisChange_lower {d : ℕ} (f : Fin d → ℚ[X])
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) :
    (h158UnitBasisChange f).IsLowerTriangular := by
  let := Matrix.invertibleOfIsUnitDet (h158OriginalCoefficientMatrix d)
    (isUnit_iff_ne_zero.mpr (h158OriginalCoefficientMatrix_det_ne_zero d))
  exact (h158EvenCoefficientMatrix_lower f hdeg).mul
    (Matrix.blockTriangular_inv_of_blockTriangular
      (h158OriginalCoefficientMatrix_lower d))

theorem h158UnitBasisChange_diagonal {d : ℕ} (f : Fin d → ℚ[X])
    (hdeg : ∀ i, (f i).natDegree = 2*i.val)
    (hlead : ∀ i, (f i).leadingCoeff = (evenBasis i.val).leadingCoeff)
    (i : Fin d) : h158UnitBasisChange f i i = 1 := by
  have he := congrArg (fun M : Matrix (Fin d) (Fin d) ℚ => M i i)
    (h158UnitBasisChange_mul_original f)
  have hmul :
      (h158UnitBasisChange f * h158OriginalCoefficientMatrix d) i i =
        h158UnitBasisChange f i i * h158OriginalCoefficientMatrix d i i := by
    rw [Matrix.mul_apply, Finset.sum_eq_single i]
    · intro j _ hji
      rcases lt_or_gt_of_ne hji with hj | hj
      · rw [h158OriginalCoefficientMatrix_lower d hj, mul_zero]
      · rw [h158UnitBasisChange_lower f (fun k => (hdeg k).le) hj, zero_mul]
    · simp
  rw [hmul, h158OriginalCoefficientMatrix_diagonal] at he
  change _ = (f i).coeff (2*i.val) at he
  rw [← hdeg i, coeff_natDegree, hlead i] at he
  exact (mul_eq_right₀ (ne_of_gt (evenBasis_leadingCoeff_pos i.val))).mp he

theorem h158UnitBasisChange_det {d : ℕ} (f : Fin d → ℚ[X])
    (hdeg : ∀ i, (f i).natDegree = 2*i.val)
    (hlead : ∀ i, (f i).leadingCoeff = (evenBasis i.val).leadingCoeff) :
    (h158UnitBasisChange f).det = 1 := by
  rw [Matrix.det_of_isLowerTriangular _
    (h158UnitBasisChange_lower f (fun i => (hdeg i).le))]
  simp_rw [h158UnitBasisChange_diagonal f hdeg hlead]
  simp

private theorem basisChange_odd_coeff_zero (P : ℚ[X])
    (heven : P.comp (-X) = P) (q : ℕ) (hq : Odd q) : P.coeff q = 0 := by
  have h := congrArg (fun Q : ℚ[X] => Q.coeff q) heven
  have hc : (P.comp (-X)).coeff q = P.coeff q * (-1 : ℚ)^q := by
    simpa only [map_neg, map_one, neg_one_mul] using
      (Polynomial.comp_C_mul_X_coeff (p := P) (r := (-1 : ℚ)) (n := q))
  rw [hc, hq.neg_one_pow] at h
  linarith

/-- Exact polynomial reconstruction. Even symmetry is essential: matching
even coefficients alone would not determine an arbitrary polynomial. -/
theorem h158UnitBasisChange_polynomial {d : ℕ} (f : Fin d → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i : Fin d) :
    f i = ∑ j : Fin d, C (h158UnitBasisChange f i j) * evenBasis j.val := by
  apply Polynomial.ext
  intro q
  simp only [finsetSum_coeff, coeff_C_mul]
  rcases Nat.even_or_odd q with hq | hq
  · obtain ⟨k, hk⟩ := hq
    have hkq : q = 2*k := by omega
    subst q
    by_cases hkd : k < d
    · have he := congrArg (fun M : Matrix (Fin d) (Fin d) ℚ => M i ⟨k,hkd⟩)
        (h158UnitBasisChange_mul_original f)
      simpa only [h158EvenCoefficientMatrix, h158OriginalCoefficientMatrix,
        Matrix.mul_apply, two_mul] using he.symm
    · rw [coeff_eq_zero_of_natDegree_lt (by have := i.isLt; have := hdeg i; omega)]
      symm
      apply Finset.sum_eq_zero
      intro j _
      rw [coeff_eq_zero_of_natDegree_lt (by rw [evenBasis_natDegree]; have := j.isLt; omega),
        mul_zero]
  · rw [basisChange_odd_coeff_zero (f i) (heven i) q hq]
    symm
    apply Finset.sum_eq_zero
    intro j _
    rw [basisChange_odd_coeff_zero _ (evenBasis_comp_neg_X j.val) q hq, mul_zero]

theorem h158UnitBasisChange_unique {d : ℕ} (f : Fin d → ℚ[X])
    (A : Matrix (Fin d) (Fin d) ℚ)
    (hexp : ∀ i, f i = ∑ j : Fin d, C (A i j)*evenBasis j.val) :
    A = h158UnitBasisChange f := by
  have he : A * h158OriginalCoefficientMatrix d = h158EvenCoefficientMatrix f := by
    apply Matrix.ext
    intro i j
    have h := congrArg (fun P : ℚ[X] => P.coeff (2*j.val)) (hexp i)
    simpa only [h158EvenCoefficientMatrix, h158OriginalCoefficientMatrix,
      Matrix.mul_apply, finsetSum_coeff, coeff_C_mul] using h.symm
  rw [h158UnitBasisChange, ← he,
    Matrix.mul_nonsing_inv_cancel_right _ _
      (isUnit_iff_ne_zero.mpr (h158OriginalCoefficientMatrix_det_ne_zero d))]

/-- The same actual h158 jet map, with its original centering made explicit. -/
def h158EvenMomentMap (n : ℕ) (hn : 0 < n) : ℚ[X] →ₗ[ℚ] SevenPolynomial :=
  (h158JetLinearMap n hn).comp (taylor (79*(n : ℚ)+1))

def h158BasisMatrix (n : ℕ) (hn : 0 < n) (f : Fin (2*n) → ℚ[X]) :
    Matrix (Fin (2*n)) (Fin (2*n)) SevenPolynomial :=
  fun i j => h158EvenMomentMap n hn (f i * f j)

theorem h158BasisMatrix_original (n : ℕ) (hn : 0 < n) :
    h158BasisMatrix n hn (fun i => evenBasis i.val) = h158SevenMatrix n := by
  ext i j
  rw [h158SevenMatrix_eq_jetFunctional n hn i j]
  rfl

private theorem basisChange_linear_map_product
    {d : ℕ} (F : ℚ[X] →ₗ[ℚ] SevenPolynomial)
    (g : Fin d → ℚ[X]) (a b : Fin d → ℚ) :
    F ((∑ i, C (a i) * g i) * (∑ j, C (b j) * g j)) =
      ∑ i, ∑ j, MvPolynomial.C (a i) * F (g i*g j) * MvPolynomial.C (b j) := by
  simp only [sum_mul, mul_sum, map_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  rw [show (C (a i)*g i)*(C (b j)*g j) = C (a i*b j)*(g i*g j) by
    rw [C_mul]; ring, Polynomial.C_mul', map_smul, Algebra.smul_def]
  change MvPolynomial.C (a i*b j) * _ = _
  rw [map_mul]
  ring

/-- Exact congruence of the original seven-variable matrix, including its
harmonic constant coordinate and every lower Laurent coefficient. -/
theorem h158BasisMatrix_congruence (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) :
    h158BasisMatrix n hn f =
      (h158UnitBasisChange f).map MvPolynomial.C * h158SevenMatrix n *
        ((h158UnitBasisChange f).map MvPolynomial.C).transpose := by
  rw [← h158BasisMatrix_original n hn]
  apply Matrix.ext
  intro i j
  change h158EvenMomentMap n hn (f i*f j) = _
  rw [h158UnitBasisChange_polynomial f heven hdeg i,
    h158UnitBasisChange_polynomial f heven hdeg j,
    basisChange_linear_map_product]
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply,
    Finset.sum_mul, h158BasisMatrix]
  rw [Finset.sum_comm]

theorem h158BasisMatrix_det (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree = 2*i.val)
    (hlead : ∀ i, (f i).leadingCoeff = (evenBasis i.val).leadingCoeff) :
    (h158BasisMatrix n hn f).det = (h158SevenMatrix n).det := by
  have hdet : ((h158UnitBasisChange f).map (MvPolynomial.C : ℚ →+* SevenPolynomial)).det = 1 := by
    calc
      _ = MvPolynomial.C (h158UnitBasisChange f).det :=
        (RingHom.map_det MvPolynomial.C _).symm
      _ = 1 := by rw [h158UnitBasisChange_det f hdeg hlead, map_one]
  rw [h158BasisMatrix_congruence n hn f heven (fun i => (hdeg i).le),
    Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose, hdet, one_mul, mul_one]

/-- Real specialization of the same complete h158 linear functional. -/
def h158BasisFunctional (n : ℕ) (hn : 0 < n) (f : Fin (2*n) → ℚ[X]) :
    Matrix (Fin (2*n)) (Fin (2*n)) ℝ :=
  (h158BasisMatrix n hn f).map
    (MvPolynomial.eval₂Hom (algebraMap ℚ ℝ) sevenZetaValues)

theorem h158BasisFunctional_original (n : ℕ) (hn : 0 < n) :
    h158BasisFunctional n hn (fun i => evenBasis i.val) = h158Functional n := by
  rw [h158BasisFunctional, h158BasisMatrix_original]
  ext i j
  exact h158SevenMatrix_entry_eval n i j

theorem h158BasisFunctional_congruence (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) :
    h158BasisFunctional n hn f =
      (h158UnitBasisChange f).map (algebraMap ℚ ℝ) *
        Matrix.of (h158Functional n) *
        ((h158UnitBasisChange f).map (algebraMap ℚ ℝ)).transpose := by
  rw [h158BasisFunctional, h158BasisMatrix_congruence n hn f heven hdeg,
    Matrix.map_mul, Matrix.map_mul]
  have he : (h158SevenMatrix n).map
      (MvPolynomial.eval₂Hom (algebraMap ℚ ℝ) sevenZetaValues) = h158Functional n := by
    ext i j
    exact h158SevenMatrix_entry_eval n i j
  rw [he]
  have hc : ((h158UnitBasisChange f).map (MvPolynomial.C : ℚ →+* SevenPolynomial)).map
      (MvPolynomial.eval₂Hom (algebraMap ℚ ℝ) sevenZetaValues) =
        (h158UnitBasisChange f).map (algebraMap ℚ ℝ) := by
    ext i j
    simp
  rw [hc]
  congr 1
  ext i j
  simp

/-- The real determinant is the existing actual derivative-sum determinant,
not the determinant of an unrelated moment sequence. -/
theorem h158BasisFunctional_det (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree = 2*i.val)
    (hlead : ∀ i, (f i).leadingCoeff = (evenBasis i.val).leadingCoeff) :
    (h158BasisFunctional n hn f).det = Matrix.det (h158Functional n) := by
  calc
    _ = (MvPolynomial.eval₂Hom (algebraMap ℚ ℝ) sevenZetaValues)
        (h158BasisMatrix n hn f).det := (RingHom.map_det _ _).symm
    _ = _ := by
      rw [h158BasisMatrix_det n hn f heven hdeg hlead]
      exact h158SevenMatrix_det_eval n

/-- The full normalization `ell_i * n^(2*i)` is retained. -/
def h158ScaledMonicEven (n i : ℕ) (Q : ℚ[X]) : ℚ[X] :=
  C ((evenBasis i).leadingCoeff * (n : ℚ)^(2*i)) *
    Q.comp (C ((n : ℚ)⁻¹^2) * X^2)

theorem h158ScaledMonicEven_even (n i : ℕ) (Q : ℚ[X]) :
    (h158ScaledMonicEven n i Q).comp (-X) = h158ScaledMonicEven n i Q := by
  simp only [h158ScaledMonicEven, mul_comp, C_comp, comp_assoc, pow_comp, X_comp,
    neg_sq]

theorem h158ScaledMonicEven_natDegree (n i : ℕ) (hn : 0 < n) (Q : ℚ[X])
    (hdeg : Q.natDegree = i) :
    (h158ScaledMonicEven n i Q).natDegree = 2*i := by
  have hnq : (n : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hn
  rw [h158ScaledMonicEven,
    natDegree_C_mul (mul_ne_zero (ne_of_gt (evenBasis_leadingCoeff_pos i)) (pow_ne_zero _ hnq)),
    natDegree_comp, hdeg, natDegree_C_mul (pow_ne_zero _ (inv_ne_zero hnq)),
    natDegree_X_pow, Nat.mul_comm]

theorem h158ScaledMonicEven_leadingCoeff (n i : ℕ) (hn : 0 < n) (Q : ℚ[X])
    (hmonic : Q.Monic) (hdeg : Q.natDegree = i) :
    (h158ScaledMonicEven n i Q).leadingCoeff = (evenBasis i).leadingCoeff := by
  have hnq : (n : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hn
  have hinner : (C ((n : ℚ)⁻¹^2) * X^2).natDegree ≠ 0 := by
    rw [natDegree_C_mul (pow_ne_zero _ (inv_ne_zero hnq)), natDegree_X_pow]
    decide
  rw [h158ScaledMonicEven, leadingCoeff_mul, leadingCoeff_C,
    leadingCoeff_comp hinner, hmonic.leadingCoeff, hdeg,
    leadingCoeff_mul, leadingCoeff_C, leadingCoeff_X_pow, mul_one, one_mul,
    ← pow_mul, mul_assoc, inv_pow,
    mul_inv_cancel₀ (pow_ne_zero _ hnq), mul_one]

/-- Every monic family of the prescribed degrees gives a valid analytic
change of basis; no relation between its lower coefficients is required. -/
theorem h158ScaledMonicEven_det (n : ℕ) (hn : 0 < n)
    (Q : Fin (2*n) → ℚ[X]) (hmonic : ∀ i, (Q i).Monic)
    (hdeg : ∀ i, (Q i).natDegree = i.val) :
    (h158BasisFunctional n hn (fun i => h158ScaledMonicEven n i.val (Q i))).det =
      Matrix.det (h158Functional n) := by
  exact h158BasisFunctional_det n hn _
    (fun i => h158ScaledMonicEven_even n i.val (Q i))
    (fun i => h158ScaledMonicEven_natDegree n i.val hn (Q i) (hdeg i))
    (fun i => h158ScaledMonicEven_leadingCoeff n i.val hn (Q i) (hmonic i) (hdeg i))

/-- A rational root-pair factor from the written adaptive construction. -/
def h158AdaptivePair (delta a : ℚ) : ℚ[X] :=
  (X + C (a^2-delta^2))^2 + C (4*delta^2*a^2)

theorem h158AdaptivePair_monic (delta a : ℚ) :
    (h158AdaptivePair delta a).Monic := by
  apply ((monic_X_add_C (a^2-delta^2)).pow 2).add_of_left
  apply lt_of_le_of_lt degree_C_le
  rw [degree_pow, degree_X_add_C]
  norm_num

theorem h158AdaptivePair_natDegree (delta a : ℚ) :
    (h158AdaptivePair delta a).natDegree = 2 := by
  simp only [h158AdaptivePair, natDegree_add_C, natDegree_pow_X_add_C]

/-- Four rational pairs form a degree-eight block. The remainder is an
exact power, so different indices may use completely different root sets. -/
def h158AdaptiveMonic (i : ℕ) (delta : ℚ) (a : Fin 4 → ℚ) : ℚ[X] :=
  (∏ k, h158AdaptivePair delta (a k))^(i/8) * X^(i%8)

theorem h158AdaptiveMonic_monic (i : ℕ) (delta : ℚ) (a : Fin 4 → ℚ) :
    (h158AdaptiveMonic i delta a).Monic := by
  exact ((monic_prod_of_monic _ _ (fun k _ => h158AdaptivePair_monic delta (a k))).pow
    (i/8)).mul (monic_X.pow (i%8))

theorem h158AdaptiveMonic_natDegree (i : ℕ) (delta : ℚ) (a : Fin 4 → ℚ) :
    (h158AdaptiveMonic i delta a).natDegree = i := by
  have hp : (∏ k, h158AdaptivePair delta (a k)).Monic :=
    monic_prod_of_monic _ _ (fun k _ => h158AdaptivePair_monic delta (a k))
  have hd : (∏ k, h158AdaptivePair delta (a k)).natDegree = 8 := by
    rw [natDegree_prod_of_monic _ _ (fun k _ => h158AdaptivePair_monic delta (a k))]
    simp [h158AdaptivePair_natDegree]
  rw [h158AdaptiveMonic, (hp.pow (i/8)).natDegree_mul (monic_X.pow (i%8)),
    hp.natDegree_pow, hd, natDegree_X_pow]
  omega

/-- The written adaptive family is an actual unit-triangular change of
basis for arbitrary rational choices of the four roots in every row. -/
theorem h158AdaptiveMonic_det (n : ℕ) (hn : 0 < n)
    (a : Fin (2*n) → Fin 4 → ℚ) :
    (h158BasisFunctional n hn (fun i => h158ScaledMonicEven n i.val
      (h158AdaptiveMonic i.val (75+1/(2*(n : ℚ))) (a i)))).det =
      Matrix.det (h158Functional n) := by
  exact h158ScaledMonicEven_det n hn _
    (fun i => h158AdaptiveMonic_monic i.val _ (a i))
    (fun i => h158AdaptiveMonic_natDegree i.val _ (a i))

/-- Rowwise polynomial scaling acts on both sides of the same moment matrix. -/
theorem h158BasisMatrix_scale (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X]) (c : Fin (2*n) → ℚ) :
    h158BasisMatrix n hn (fun i => C (c i)*f i) =
      Matrix.diagonal (fun i => MvPolynomial.C (c i)) * h158BasisMatrix n hn f *
        Matrix.diagonal (fun i => MvPolynomial.C (c i)) := by
  apply Matrix.ext
  intro i j
  simp only [Matrix.mul_diagonal, Matrix.diagonal_mul, h158BasisMatrix]
  rw [show (C (c i)*f i)*(C (c j)*f j) = C (c i*c j)*(f i*f j) by
    rw [C_mul]; ring, Polynomial.C_mul', map_smul, Algebra.smul_def]
  change MvPolynomial.C (c i*c j) * _ = _
  rw [map_mul]
  ring

theorem h158BasisFunctional_scale (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X]) (c : Fin (2*n) → ℚ) :
    h158BasisFunctional n hn (fun i => C (c i)*f i) =
      Matrix.diagonal (fun i => (c i : ℝ)) * h158BasisFunctional n hn f *
        Matrix.diagonal (fun i => (c i : ℝ)) := by
  simp only [h158BasisFunctional, h158BasisMatrix_scale, Matrix.map_mul]
  congr 2 <;> ext i j <;> by_cases h : i = j <;> simp [h]

theorem h158BasisFunctional_scale_det (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X]) (c : Fin (2*n) → ℚ) :
    (h158BasisFunctional n hn (fun i => C (c i)*f i)).det =
      (∏ i, (c i : ℝ))^2 * (h158BasisFunctional n hn f).det := by
  rw [h158BasisFunctional_scale, Matrix.det_mul, Matrix.det_mul,
    Matrix.det_diagonal]
  ring

/-- Removing the normalization from the adaptive polynomials requires
charging the complete product of `ell_i^2 * n^(4*i)`. -/
theorem h158ScaledMonicEven_normalization (n : ℕ) (hn : 0 < n)
    (Q : Fin (2*n) → ℚ[X]) (hmonic : ∀ i, (Q i).Monic)
    (hdeg : ∀ i, (Q i).natDegree = i.val) :
    Matrix.det (h158Functional n) =
      (∏ i : Fin (2*n), ((evenBasis i.val).leadingCoeff : ℝ)^2 * (n : ℝ)^(4*i.val)) *
        (h158BasisFunctional n hn
          (fun i => (Q i).comp (C ((n : ℚ)⁻¹^2)*X^2))).det := by
  rw [← h158ScaledMonicEven_det n hn Q hmonic hdeg]
  change (h158BasisFunctional n hn (fun i =>
    C ((evenBasis i.val).leadingCoeff*(n : ℚ)^(2*i.val)) *
      (Q i).comp (C ((n : ℚ)⁻¹^2)*X^2))).det = _
  rw [h158BasisFunctional_scale_det]
  congr 1
  rw [← Finset.prod_pow]
  apply Finset.prod_congr rfl
  intro i _
  push_cast
  rw [mul_pow, ← pow_mul]
  congr 2
  omega

end OddZetaMixed
