import OddZetaMixed.H158BasisChange
import OddZetaMixed.H158IntegralDetBound

/-!
# Complete contour bounds after the actual h158 change of basis

The new integral is proved to be a finite linear combination of the already
established actual contour integrals. The original base kernel, contour
orientation, and residue normalization are retained. No integral identity or
uniform moment estimate is an additional assumption.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Polynomial Finset MeasureTheory

/-- A polynomial in the centered variable, evaluated on the original line. -/
def h158BasisContourValue (n : ℕ) (P : ℚ[X]) (y : ℝ) : ℂ :=
  aeval (h158ContourPoint n y) (P.comp (X+C (79*(n : ℚ)+1)))

theorem h158BasisContourValue_original (n i : ℕ) (y : ℝ) :
    h158BasisContourValue n (evenBasis i) y = h158ContourBasis n i y := rfl

theorem h158BasisContourValue_expansion (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i : Fin (2*n)) (y : ℝ) :
    h158BasisContourValue n (f i) y =
      ∑ a : Fin (2*n), (h158UnitBasisChange f i a : ℂ) * h158ContourBasis n a.val y := by
  rw [h158BasisContourValue, h158UnitBasisChange_polynomial f heven hdeg i]
  simp only [Polynomial.sum_comp, mul_comp, C_comp, map_sum, map_mul, aeval_C,
    h158ContourBasis]
  simp

/-- The base integrand still includes the upward contour Jacobian `I`. -/
def h158BasisVerticalIntegrand (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (i j : Fin (2*n)) (y : ℝ) : ℂ :=
  h158VerticalIntegrand n 0 0 y *
    h158BasisContourValue n (f i) y * h158BasisContourValue n (f j) y

theorem h158BasisVerticalIntegrand_expansion (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i j : Fin (2*n)) (y : ℝ) :
    h158BasisVerticalIntegrand n f i j y =
      ∑ a : Fin (2*n), ∑ b : Fin (2*n),
        (h158UnitBasisChange f i a : ℂ) * h158VerticalIntegrand n a b y *
          (h158UnitBasisChange f j b : ℂ) := by
  rw [h158BasisVerticalIntegrand,
    h158BasisContourValue_expansion n f heven hdeg i y,
    h158BasisContourValue_expansion n f heven hdeg j y]
  simp only [mul_sum, sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro b _
  rw [h158VerticalIntegrand_factorization n a b y]
  ring

theorem h158BasisVerticalIntegrand_integrable (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i j : Fin (2*n)) :
    Integrable (h158BasisVerticalIntegrand n f i j) := by
  change Integrable (fun y : ℝ => h158BasisVerticalIntegrand n f i j y)
  simp_rw [h158BasisVerticalIntegrand_expansion n f heven hdeg i j]
  apply integrable_finsetSum
  intro a _
  apply integrable_finsetSum
  intro b _
  exact ((h158VerticalIntegrand_integrable n a b).const_mul _).mul_const _

theorem h158BasisVerticalIntegrand_continuous (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i j : Fin (2*n)) :
    Continuous (h158BasisVerticalIntegrand n f i j) := by
  change Continuous (fun y : ℝ => h158BasisVerticalIntegrand n f i j y)
  simp_rw [h158BasisVerticalIntegrand_expansion n f heven hdeg i j]
  apply continuous_finsetSum
  intro a _
  apply continuous_finsetSum
  intro b _
  exact ((h158VerticalIntegrand_continuous n a b).const_mul _).mul_const _

def h158BasisVerticalIntegral (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (i j : Fin (2*n)) : ℂ := ∫ y : ℝ, h158BasisVerticalIntegrand n f i j y

def h158BasisNormalizedVerticalIntegral (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (i j : Fin (2*n)) : ℂ :=
  -(h158BasisVerticalIntegral n f i j) / (2*(Real.pi : ℂ)*Complex.I)

theorem h158BasisFunctional_complex_expansion (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X]) (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i j : Fin (2*n)) :
    (h158BasisFunctional n hn f i j : ℂ) =
      ∑ a : Fin (2*n), ∑ b : Fin (2*n),
        (h158UnitBasisChange f i a : ℂ) * (h158Functional n a b : ℂ) *
          (h158UnitBasisChange f j b : ℂ) := by
  rw [h158BasisFunctional_congruence n hn f heven hdeg]
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply, Matrix.of_apply,
    Finset.sum_mul, Complex.ofReal_sum, Complex.ofReal_mul]
  rw [Finset.sum_comm]
  simp

/-- The complete changed integral equals the same actual changed functional.
This is derived from the old integrals, not supplied as a new hypothesis. -/
theorem h158BasisVerticalIntegral_eq_functional (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X]) (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i j : Fin (2*n)) :
    h158BasisVerticalIntegral n f i j =
      -(2*(Real.pi : ℂ)*Complex.I) * (h158BasisFunctional n hn f i j : ℂ) := by
  have hint (a b : Fin (2*n)) : Integrable (fun y : ℝ =>
      (h158UnitBasisChange f i a : ℂ) * h158VerticalIntegrand n a b y *
        (h158UnitBasisChange f j b : ℂ)) :=
    ((h158VerticalIntegrand_integrable n a b).const_mul _).mul_const _
  calc
    _ = ∑ a : Fin (2*n), ∑ b : Fin (2*n), ∫ y : ℝ,
        (h158UnitBasisChange f i a : ℂ) * h158VerticalIntegrand n a b y *
          (h158UnitBasisChange f j b : ℂ) := by
      unfold h158BasisVerticalIntegral
      simp_rw [h158BasisVerticalIntegrand_expansion n f heven hdeg i j]
      rw [integral_finsetSum _ (fun a _ => integrable_finsetSum _ (fun b _ => hint a b))]
      apply Finset.sum_congr rfl
      intro a _
      exact integral_finsetSum _ (fun b _ => hint a b)
    _ = ∑ a : Fin (2*n), ∑ b : Fin (2*n),
        (h158UnitBasisChange f i a : ℂ) * h158VerticalIntegral n a b *
          (h158UnitBasisChange f j b : ℂ) := by
      simp only [integral_mul_const, integral_const_mul, h158VerticalIntegral]
    _ = _ := by
      rw [h158BasisFunctional_complex_expansion n hn f heven hdeg i j]
      simp_rw [h158VerticalIntegral_eq_functional, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro a _
      apply Finset.sum_congr rfl
      intro b _
      ring

theorem h158BasisNormalizedVerticalIntegral_eq_functional (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X]) (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i j : Fin (2*n)) :
    h158BasisNormalizedVerticalIntegral n f i j = (h158BasisFunctional n hn f i j : ℂ) := by
  rw [h158BasisNormalizedVerticalIntegral,
    h158BasisVerticalIntegral_eq_functional n hn f heven hdeg i j]
  have hp := Complex.two_pi_I_ne_zero
  field_simp

def h158BasisAbsoluteIntegral (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (i j : Fin (2*n)) : ℝ := ∫ y : ℝ, ‖h158BasisVerticalIntegrand n f i j y‖

/-- The modulus weight is exactly the original weight, including `1/(2*pi)`. -/
def h158BasisModulusMoment (n : ℕ) (P : ℚ[X]) : ℝ :=
  ∫ y : ℝ, h158ModulusWeight n y * ‖h158BasisContourValue n P y‖^2

theorem h158BasisModulusMoment_original (n i : ℕ) :
    h158BasisModulusMoment n (evenBasis i) = h158ModulusMoment n i := rfl

theorem h158BasisModulusMoment_nonneg (n : ℕ) (P : ℚ[X]) :
    0 ≤ h158BasisModulusMoment n P := by
  apply integral_nonneg
  intro y
  exact mul_nonneg (h158ModulusWeight_nonneg n y) (sq_nonneg _)

theorem h158BasisModulusProduct_eq_absolute (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (i j : Fin (2*n)) (y : ℝ) :
    h158ModulusWeight n y * ‖h158BasisContourValue n (f i) y‖ *
        ‖h158BasisContourValue n (f j) y‖ =
      ‖h158BasisVerticalIntegrand n f i j y‖ / (2*Real.pi) := by
  simp only [h158BasisVerticalIntegrand, norm_mul, h158ModulusWeight]
  ring

theorem h158BasisModulusDensity_eq_diagonal (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (i : Fin (2*n)) (y : ℝ) :
    h158ModulusWeight n y * ‖h158BasisContourValue n (f i) y‖^2 =
      ‖h158BasisVerticalIntegrand n f i i y‖ / (2*Real.pi) := by
  simpa only [pow_two, mul_assoc] using h158BasisModulusProduct_eq_absolute n f i i y

theorem h158BasisModulusProduct_integrable (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i j : Fin (2*n)) :
    Integrable (fun y : ℝ => h158ModulusWeight n y * ‖h158BasisContourValue n (f i) y‖ *
      ‖h158BasisContourValue n (f j) y‖) := by
  simp_rw [h158BasisModulusProduct_eq_absolute]
  exact (h158BasisVerticalIntegrand_integrable n f heven hdeg i j).norm.div_const _

theorem h158BasisModulusDensity_integrable (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i : Fin (2*n)) :
    Integrable (fun y : ℝ =>
      h158ModulusWeight n y * ‖h158BasisContourValue n (f i) y‖^2) := by
  simp_rw [h158BasisModulusDensity_eq_diagonal n f i]
  exact (h158BasisVerticalIntegrand_integrable n f heven hdeg i i).norm.div_const _

theorem h158BasisFunctional_abs_le_absoluteIntegral (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X]) (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i j : Fin (2*n)) :
    |h158BasisFunctional n hn f i j| ≤ h158BasisAbsoluteIntegral n f i j / (2*Real.pi) := by
  have h := norm_integral_le_integral_norm (μ := volume) (h158BasisVerticalIntegrand n f i j)
  change ‖h158BasisVerticalIntegral n f i j‖ ≤ h158BasisAbsoluteIntegral n f i j at h
  simp only [h158BasisVerticalIntegral_eq_functional n hn f heven hdeg i j,
    norm_mul, norm_neg, Complex.norm_I, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos Real.pi_pos, mul_one] at h
  norm_num at h
  exact (le_div_iff₀ (by positivity : 0 < 2*Real.pi)).mpr (by nlinarith [h])

def h158BasisModulusAmplitude (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (i : Fin (2*n)) (y : ℝ) : ℝ :=
  Real.sqrt (‖h158BasisVerticalIntegrand n f i i y‖ / (2*Real.pi))

theorem h158BasisModulusAmplitude_nonneg (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (i : Fin (2*n)) (y : ℝ) : 0 ≤ h158BasisModulusAmplitude n f i y := Real.sqrt_nonneg _

theorem h158BasisModulusAmplitude_sq (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (i : Fin (2*n)) (y : ℝ) :
    h158BasisModulusAmplitude n f i y^2 =
      h158ModulusWeight n y * ‖h158BasisContourValue n (f i) y‖^2 := by
  rw [h158BasisModulusDensity_eq_diagonal, h158BasisModulusAmplitude]
  exact Real.sq_sqrt (by positivity)

theorem h158BasisModulusAmplitude_factorization (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (i : Fin (2*n)) (y : ℝ) :
    h158BasisModulusAmplitude n f i y =
      Real.sqrt (h158ModulusWeight n y) * ‖h158BasisContourValue n (f i) y‖ := by
  rw [h158BasisModulusAmplitude, ← h158BasisModulusDensity_eq_diagonal,
    Real.sqrt_mul (h158ModulusWeight_nonneg n y), Real.sqrt_sq (norm_nonneg _)]

theorem h158BasisModulusAmplitude_continuous (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i : Fin (2*n)) :
    Continuous (h158BasisModulusAmplitude n f i) :=
  ((h158BasisVerticalIntegrand_continuous n f heven hdeg i i).norm.div_const _).sqrt

theorem h158BasisModulusAmplitude_memLp (n : ℕ) (f : Fin (2*n) → ℚ[X])
    (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i : Fin (2*n)) :
    MemLp (h158BasisModulusAmplitude n f i) 2 volume := by
  apply (memLp_two_iff_integrable_sq
    (h158BasisModulusAmplitude_continuous n f heven hdeg i).aestronglyMeasurable).mpr
  simp_rw [h158BasisModulusAmplitude_sq]
  exact h158BasisModulusDensity_integrable n f heven hdeg i

theorem h158BasisNormalizedAbsoluteIntegrand_eq_amplitudes (n : ℕ)
    (f : Fin (2*n) → ℚ[X]) (i j : Fin (2*n)) (y : ℝ) :
    ‖h158BasisVerticalIntegrand n f i j y‖ / (2*Real.pi) =
      h158BasisModulusAmplitude n f i y * h158BasisModulusAmplitude n f j y := by
  rw [← h158BasisModulusProduct_eq_absolute,
    h158BasisModulusAmplitude_factorization, h158BasisModulusAmplitude_factorization]
  have hs := Real.sq_sqrt (h158ModulusWeight_nonneg n y)
  linear_combination
    -(‖h158BasisContourValue n (f i) y‖ * ‖h158BasisContourValue n (f j) y‖) * hs

theorem h158BasisAbsoluteIntegral_le_modulusMoments (n : ℕ)
    (f : Fin (2*n) → ℚ[X]) (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i j : Fin (2*n)) :
    h158BasisAbsoluteIntegral n f i j / (2*Real.pi) ≤
      Real.sqrt (h158BasisModulusMoment n (f i)) *
        Real.sqrt (h158BasisModulusMoment n (f j)) := by
  have hpq : (2 : ℝ).HolderConjugate 2 := by constructor <;> norm_num
  have hi : MemLp (h158BasisModulusAmplitude n f i) (ENNReal.ofReal (2 : ℝ)) volume := by
    simpa using h158BasisModulusAmplitude_memLp n f heven hdeg i
  have hj : MemLp (h158BasisModulusAmplitude n f j) (ENNReal.ofReal (2 : ℝ)) volume := by
    simpa using h158BasisModulusAmplitude_memLp n f heven hdeg j
  have h := integral_mul_le_Lp_mul_Lq_of_nonneg hpq
    (Filter.Eventually.of_forall (h158BasisModulusAmplitude_nonneg n f i))
    (Filter.Eventually.of_forall (h158BasisModulusAmplitude_nonneg n f j)) hi hj
  simp only [Real.rpow_two, h158BasisModulusAmplitude_sq, ← Real.sqrt_eq_rpow] at h
  change (∫ y : ℝ, h158BasisModulusAmplitude n f i y * h158BasisModulusAmplitude n f j y) ≤ _ at h
  simpa only [← h158BasisNormalizedAbsoluteIntegrand_eq_amplitudes, integral_div,
    h158BasisAbsoluteIntegral, h158BasisModulusMoment] using h

theorem h158BasisFunctional_abs_le_modulusMoments (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X]) (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) (i j : Fin (2*n)) :
    |h158BasisFunctional n hn f i j| ≤
      Real.sqrt (h158BasisModulusMoment n (f i)) *
        Real.sqrt (h158BasisModulusMoment n (f j)) :=
  (h158BasisFunctional_abs_le_absoluteIntegral n hn f heven hdeg i j).trans
    (h158BasisAbsoluteIntegral_le_modulusMoments n f heven hdeg i j)

/-- A complete changed-basis determinant bound, with no unknown analytic
majorant or contour identity supplied as an input. -/
theorem h158BasisFunctional_det_abs_le_modulusMoments (n : ℕ) (hn : 0 < n)
    (f : Fin (2*n) → ℚ[X]) (heven : ∀ i, (f i).comp (-X) = f i)
    (hdeg : ∀ i, (f i).natDegree ≤ 2*i.val) :
    |(h158BasisFunctional n hn f).det| ≤
      ((2*n).factorial : ℝ) * ∏ i : Fin (2*n), h158BasisModulusMoment n (f i) := by
  have h := h158_det_abs_le_factorized (h158BasisFunctional n hn f)
    (fun i => Real.sqrt (h158BasisModulusMoment n (f i))) (fun _ => Real.sqrt_nonneg _)
    (h158BasisFunctional_abs_le_modulusMoments n hn f heven hdeg)
  simpa only [Real.sq_sqrt (h158BasisModulusMoment_nonneg n _)] using h

theorem h158BasisContourValue_scale (n : ℕ) (P : ℚ[X]) (c : ℚ) (y : ℝ) :
    h158BasisContourValue n (C c*P) y = (c : ℂ)*h158BasisContourValue n P y := by
  simp [h158BasisContourValue, mul_comp]

/-- Exact moment scaling retains the squared modulus of every scalar. -/
theorem h158BasisModulusMoment_scale (n : ℕ) (P : ℚ[X]) (c : ℚ) :
    h158BasisModulusMoment n (C c*P) = (c : ℝ)^2*h158BasisModulusMoment n P := by
  unfold h158BasisModulusMoment
  simp_rw [h158BasisContourValue_scale, norm_mul, mul_pow, Complex.norm_ratCast, sq_abs]
  rw [← integral_const_mul]
  congr 1
  funext y
  ring

theorem h158ScaledMonicEven_modulusMoment (n i : ℕ) (Q : ℚ[X]) :
    h158BasisModulusMoment n (h158ScaledMonicEven n i Q) =
      (((evenBasis i).leadingCoeff : ℝ)^2*(n : ℝ)^(4*i)) *
        h158BasisModulusMoment n (Q.comp (C ((n : ℚ)⁻¹^2)*X^2)) := by
  rw [h158ScaledMonicEven, h158BasisModulusMoment_scale]
  congr 1
  push_cast
  rw [mul_pow, ← pow_mul]
  congr 2
  omega

theorem h158MonicComposition_even (n : ℕ) (Q : ℚ[X]) :
    (Q.comp (C ((n : ℚ)⁻¹^2)*X^2)).comp (-X) =
      Q.comp (C ((n : ℚ)⁻¹^2)*X^2) := by
  simp only [comp_assoc, mul_comp, C_comp, pow_comp, X_comp, neg_sq]

theorem h158MonicComposition_natDegree (n i : ℕ) (hn : 0 < n) (Q : ℚ[X])
    (hdeg : Q.natDegree = i) :
    (Q.comp (C ((n : ℚ)⁻¹^2)*X^2)).natDegree = 2*i := by
  have hnq : (n : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hn
  rw [natDegree_comp, hdeg, natDegree_C_mul (pow_ne_zero _ (inv_ne_zero hnq)),
    natDegree_X_pow, Nat.mul_comm]

/-- The unscaled moments on the right of the normalized bound are genuine
finite integrals as well, not merely totalized integral expressions. -/
theorem h158MonicComposition_modulusProduct_integrable (n : ℕ) (hn : 0 < n)
    (Q : Fin (2*n) → ℚ[X]) (hdeg : ∀ i, (Q i).natDegree = i.val)
    (i j : Fin (2*n)) :
    Integrable (fun y : ℝ => h158ModulusWeight n y *
      ‖h158BasisContourValue n ((Q i).comp (C ((n : ℚ)⁻¹^2)*X^2)) y‖ *
      ‖h158BasisContourValue n ((Q j).comp (C ((n : ℚ)⁻¹^2)*X^2)) y‖) := by
  exact h158BasisModulusProduct_integrable n _
    (fun k => h158MonicComposition_even n (Q k))
    (fun k => (h158MonicComposition_natDegree n k.val hn (Q k) (hdeg k)).le) i j

theorem h158MonicComposition_modulusDensity_integrable (n : ℕ) (hn : 0 < n)
    (Q : Fin (2*n) → ℚ[X]) (hdeg : ∀ i, (Q i).natDegree = i.val)
    (i : Fin (2*n)) :
    Integrable (fun y : ℝ => h158ModulusWeight n y *
      ‖h158BasisContourValue n ((Q i).comp (C ((n : ℚ)⁻¹^2)*X^2)) y‖^2) := by
  simpa only [pow_two, mul_assoc] using
    h158MonicComposition_modulusProduct_integrable n hn Q hdeg i i

/-- Actual determinant bound for any monic family, with the complete
normalization product outside the unscaled modulus moments. -/
theorem h158ScaledMonicEven_det_abs_le_modulusMoments (n : ℕ) (hn : 0 < n)
    (Q : Fin (2*n) → ℚ[X]) (hmonic : ∀ i, (Q i).Monic)
    (hdeg : ∀ i, (Q i).natDegree = i.val) :
    |Matrix.det (h158Functional n)| ≤
      ((2*n).factorial : ℝ) *
        (∏ i : Fin (2*n), ((evenBasis i.val).leadingCoeff : ℝ)^2*(n : ℝ)^(4*i.val)) *
        ∏ i : Fin (2*n), h158BasisModulusMoment n
          ((Q i).comp (C ((n : ℚ)⁻¹^2)*X^2)) := by
  have h := h158BasisFunctional_det_abs_le_modulusMoments n hn
    (fun i => h158ScaledMonicEven n i.val (Q i))
    (fun i => h158ScaledMonicEven_even n i.val (Q i))
    (fun i => (h158ScaledMonicEven_natDegree n i.val hn (Q i) (hdeg i)).le)
  rw [h158ScaledMonicEven_det n hn Q hmonic hdeg] at h
  simpa only [h158ScaledMonicEven_modulusMoment, Finset.prod_mul_distrib, mul_assoc] using h

/-- The adaptive family satisfies the complete-contour identity for every
rational choice of its four root heights in each row. -/
theorem h158AdaptiveMonic_normalizedVerticalIntegral (n : ℕ) (hn : 0 < n)
    (a : Fin (2*n) → Fin 4 → ℚ) (i j : Fin (2*n)) :
    h158BasisNormalizedVerticalIntegral n
      (fun k => h158ScaledMonicEven n k.val
        (h158AdaptiveMonic k.val (75+1/(2*(n : ℚ))) (a k))) i j =
      (h158BasisFunctional n hn
        (fun k => h158ScaledMonicEven n k.val
          (h158AdaptiveMonic k.val (75+1/(2*(n : ℚ))) (a k))) i j : ℂ) := by
  exact h158BasisNormalizedVerticalIntegral_eq_functional n hn _
    (fun k => h158ScaledMonicEven_even n k.val _)
    (fun k => (h158ScaledMonicEven_natDegree n k.val hn _
      (h158AdaptiveMonic_natDegree k.val _ (a k))).le) i j

theorem h158AdaptiveMonic_modulusDensity_integrable (n : ℕ) (hn : 0 < n)
    (a : Fin (2*n) → Fin 4 → ℚ) (i : Fin (2*n)) :
    Integrable (fun y : ℝ => h158ModulusWeight n y *
      ‖h158BasisContourValue n
        ((h158AdaptiveMonic i.val (75+1/(2*(n : ℚ))) (a i)).comp
          (C ((n : ℚ)⁻¹^2)*X^2)) y‖^2) := by
  exact h158MonicComposition_modulusDensity_integrable n hn _
    (fun k => h158AdaptiveMonic_natDegree k.val _ (a k)) i

/-- This is the actual original h158 determinant, bounded using the adaptive
family and the unchanged complete modulus weight. No asymptotic estimate. -/
theorem h158AdaptiveMonic_det_abs_le_modulusMoments (n : ℕ) (hn : 0 < n)
    (a : Fin (2*n) → Fin 4 → ℚ) :
    |Matrix.det (h158Functional n)| ≤
      ((2*n).factorial : ℝ) *
        (∏ i : Fin (2*n), ((evenBasis i.val).leadingCoeff : ℝ)^2*(n : ℝ)^(4*i.val)) *
        ∏ i : Fin (2*n), h158BasisModulusMoment n
          ((h158AdaptiveMonic i.val (75+1/(2*(n : ℚ))) (a i)).comp
            (C ((n : ℚ)⁻¹^2)*X^2)) := by
  have h := h158BasisFunctional_det_abs_le_modulusMoments n hn
    (fun i => h158ScaledMonicEven n i.val
      (h158AdaptiveMonic i.val (75+1/(2*(n : ℚ))) (a i)))
    (fun i => h158ScaledMonicEven_even n i.val _)
    (fun i => (h158ScaledMonicEven_natDegree n i.val hn _
      (h158AdaptiveMonic_natDegree i.val _ (a i))).le)
  rw [h158AdaptiveMonic_det n hn a] at h
  simpa only [h158ScaledMonicEven_modulusMoment, Finset.prod_mul_distrib, mul_assoc] using h

-- Regression checks: the old basis and signed scalar normalization are retained.
example (n : ℕ) (hn : 0 < n) :
    |Matrix.det (h158Functional n)| ≤
      ((2*n).factorial : ℝ) * ∏ i : Fin (2*n), h158ModulusMoment n i := by
  simpa only [h158BasisFunctional_original, h158BasisModulusMoment_original] using
    h158BasisFunctional_det_abs_le_modulusMoments n hn (fun i => evenBasis i.val)
      (fun i => evenBasis_comp_neg_X i.val) (fun i => (evenBasis_natDegree i.val).le)

example (n : ℕ) (P : ℚ[X]) :
    h158BasisModulusMoment n (C (-3)*P) = 9*h158BasisModulusMoment n P := by
  rw [h158BasisModulusMoment_scale]
  norm_num

example (n : ℕ) : h158BasisModulusMoment n 0 = 0 := by
  simp [h158BasisModulusMoment, h158BasisContourValue]

#print axioms h158BasisVerticalIntegrand_integrable
#print axioms h158BasisNormalizedVerticalIntegral_eq_functional
#print axioms h158BasisModulusProduct_integrable
#print axioms h158BasisModulusDensity_integrable
#print axioms h158BasisFunctional_det_abs_le_modulusMoments
#print axioms h158ScaledMonicEven_modulusMoment
#print axioms h158MonicComposition_modulusDensity_integrable
#print axioms h158AdaptiveMonic_normalizedVerticalIntegral
#print axioms h158AdaptiveMonic_modulusDensity_integrable
#print axioms h158AdaptiveMonic_det_abs_le_modulusMoments

end OddZetaMixed
