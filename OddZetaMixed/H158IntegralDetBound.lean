import OddZetaMixed.H158RectangleResidues
import Mathlib.LinearAlgebra.Matrix.AbsoluteValue
import Mathlib.MeasureTheory.Function.L2Space

/-!
# Complete absolute-integral bounds for the actual h158 determinant

All integrals below are over the complete vertical line at fixed `n`. The
residue normalization is explicitly `1 / (2*pi)`. Positivity is used only for
real modulus densities, never for the complex contour kernel. This module
does not assert a uniform-in-`n` rate or a numerical quadrature certificate.
-/

noncomputable section

namespace OddZetaMixed

open MeasureTheory Polynomial
open scoped BigOperators

/-- Complete, unnormalized absolute integral of the actual vertical entry. -/
def h158AbsoluteIntegral (n i j : ℕ) : ℝ :=
  ∫ y : ℝ, ‖h158VerticalIntegrand n i j y‖

theorem h158AbsoluteIntegrand_integrable (n : ℕ) (i j : Fin (2 * n)) :
    Integrable (fun y : ℝ => ‖h158VerticalIntegrand n i j y‖) :=
  (h158VerticalIntegrand_integrable n i j).norm

theorem h158AbsoluteIntegral_nonneg (n i j : ℕ) :
    0 ≤ h158AbsoluteIntegral n i j := integral_nonneg fun _ => norm_nonneg _

/-- The contour Jacobian has modulus one; the normalization is exactly `2*pi`. -/
theorem h158Functional_abs_le_absoluteIntegral (n : ℕ) (i j : Fin (2 * n)) :
    |h158Functional n i j| ≤ h158AbsoluteIntegral n i j / (2 * Real.pi) := by
  have h := norm_integral_le_integral_norm (μ := volume) (h158VerticalIntegrand n i j)
  change ‖h158VerticalIntegral n i j‖ ≤ h158AbsoluteIntegral n i j at h
  simp only [h158VerticalIntegral_eq_functional, norm_mul, norm_neg,
    Complex.norm_I, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos Real.pi_pos, mul_one] at h
  norm_num at h
  exact (le_div_iff₀ (by positivity : 0 < 2 * Real.pi)).mpr (by nlinarith [h])

/-- A factorized Leibniz bound, allowing zero row bounds. No matrix positivity. -/
theorem h158_det_abs_le_factorized {k : ℕ} (A : Matrix (Fin k) (Fin k) ℝ)
    (b : Fin k → ℝ) (_hb : ∀ i, 0 ≤ b i)
    (hA : ∀ i j, |A i j| ≤ b i * b j) :
    |A.det| ≤ (k.factorial : ℝ) * ∏ i, (b i) ^ 2 := by
  let abv : AbsoluteValue ℝ ℝ := AbsoluteValue.abs
  change abv A.det ≤ _
  calc
    abv A.det = abv (∑ σ : Equiv.Perm (Fin k),
        Equiv.Perm.sign σ • ∏ i, A (σ i) i) := congrArg abv (Matrix.det_apply A)
    _ ≤ ∑ σ : Equiv.Perm (Fin k), abv (Equiv.Perm.sign σ • ∏ i, A (σ i) i) :=
      abv.sum_le _ _
    _ = ∑ σ : Equiv.Perm (Fin k), ∏ i, |A (σ i) i| := by
      apply Finset.sum_congr rfl
      intro σ _
      rw [abv.map_units_int_smul, abv.map_prod]
      rfl
    _ ≤ ∑ σ : Equiv.Perm (Fin k), ∏ i, (b (σ i) * b i) := by
      apply Finset.sum_le_sum
      intro σ _
      exact Finset.prod_le_prod₀ (fun _ _ => abs_nonneg _) (fun i _ => hA (σ i) i)
    _ = ∑ _σ : Equiv.Perm (Fin k), ∏ i, (b i) ^ 2 := by
      apply Finset.sum_congr rfl
      intro σ _
      rw [Finset.prod_mul_distrib, Equiv.prod_comp σ, ← Finset.prod_mul_distrib]
      simp only [← sq]
    _ = _ := by simp [Fintype.card_perm, nsmul_eq_mul]

/-- Interface for normalized absolute-integral certificates. -/
theorem h158Functional_det_abs_le_of_absoluteIntegral (n : ℕ)
    (b : Fin (2 * n) → ℝ) (hb : ∀ i, 0 ≤ b i)
    (hbound : ∀ i j : Fin (2 * n),
      h158AbsoluteIntegral n i j / (2 * Real.pi) ≤ b i * b j) :
    |Matrix.det (h158Functional n)| ≤ ((2 * n).factorial : ℝ) * ∏ i, (b i) ^ 2 := by
  exact h158_det_abs_le_factorized _ b hb fun i j =>
    (h158Functional_abs_le_absoluteIntegral n i j).trans (hbound i j)

/-- Equivalent interface with the residue normalization on the supplied bound. -/
theorem h158Functional_det_abs_le_of_rawIntegral (n : ℕ)
    (b : Fin (2 * n) → ℝ) (hb : ∀ i, 0 ≤ b i)
    (hbound : ∀ i j : Fin (2 * n),
      h158AbsoluteIntegral n i j ≤ (2 * Real.pi) * (b i * b j)) :
    |Matrix.det (h158Functional n)| ≤ ((2 * n).factorial : ℝ) * ∏ i, (b i) ^ 2 := by
  apply h158Functional_det_abs_le_of_absoluteIntegral n b hb
  intro i j
  exact (div_le_iff₀ (by positivity : 0 < 2 * Real.pi)).mpr (by
    simpa only [mul_comm (2 * Real.pi)] using hbound i j)

/-- The genuine centered even polynomial evaluated on the contour. -/
def h158ContourBasis (n i : ℕ) (y : ℝ) : ℂ :=
  aeval (h158ContourPoint n y)
    ((evenBasis i).comp (X + C (79 * (n : ℚ) + 1)))

/-- Nonnegative base density, including the residue normalization. -/
def h158ModulusWeight (n : ℕ) (y : ℝ) : ℝ :=
  ‖h158VerticalIntegrand n 0 0 y‖ / (2 * Real.pi)

theorem h158ModulusWeight_nonneg (n : ℕ) (y : ℝ) :
    0 ≤ h158ModulusWeight n y := by unfold h158ModulusWeight; positivity

theorem h158VerticalIntegrand_factorization (n i j : ℕ) (y : ℝ) :
    h158VerticalIntegrand n i j y = h158VerticalIntegrand n 0 0 y *
      h158ContourBasis n i y * h158ContourBasis n j y := by
  simp only [h158VerticalIntegrand, h158ContourIntegrand, h158EntryComplex,
    centeredMultiplier, evenBasis, mul_comp, map_mul, one_comp,
    mul_one, h158ContourBasis]
  ring

/-- Actual positive modulus moment, not a signed or complex measure moment. -/
def h158ModulusMoment (n i : ℕ) : ℝ :=
  ∫ y : ℝ, h158ModulusWeight n y * ‖h158ContourBasis n i y‖ ^ 2

theorem h158ModulusDensity_eq_diagonal (n i : ℕ) (y : ℝ) :
    h158ModulusWeight n y * ‖h158ContourBasis n i y‖ ^ 2 =
      ‖h158VerticalIntegrand n i i y‖ / (2 * Real.pi) := by
  rw [h158VerticalIntegrand_factorization n i i, norm_mul, norm_mul]
  unfold h158ModulusWeight
  ring

/-- Integrability follows from the already proved actual diagonal radial bound. -/
theorem h158ModulusDensity_integrable (n : ℕ) (i : Fin (2 * n)) :
    Integrable (fun y : ℝ => h158ModulusWeight n y * ‖h158ContourBasis n i y‖ ^ 2) := by
  simp_rw [h158ModulusDensity_eq_diagonal]
  exact (h158AbsoluteIntegrand_integrable n i i).div_const _

theorem h158ModulusMoment_nonneg (n i : ℕ) : 0 ≤ h158ModulusMoment n i := by
  apply integral_nonneg
  intro y
  exact mul_nonneg (h158ModulusWeight_nonneg n y) (sq_nonneg _)

theorem h158ModulusMoment_eq_absoluteIntegral (n i : ℕ) :
    h158ModulusMoment n i = h158AbsoluteIntegral n i i / (2 * Real.pi) := by
  simp only [h158ModulusMoment, h158ModulusDensity_eq_diagonal,
    integral_div, h158AbsoluteIntegral]

/-- Square-root amplitude of the actual positive diagonal modulus density. -/
def h158ModulusAmplitude (n i : ℕ) (y : ℝ) : ℝ :=
  Real.sqrt (‖h158VerticalIntegrand n i i y‖ / (2 * Real.pi))

theorem h158ModulusAmplitude_nonneg (n i : ℕ) (y : ℝ) :
    0 ≤ h158ModulusAmplitude n i y := Real.sqrt_nonneg _

theorem h158ModulusAmplitude_sq (n i : ℕ) (y : ℝ) :
    h158ModulusAmplitude n i y ^ 2 =
      h158ModulusWeight n y * ‖h158ContourBasis n i y‖ ^ 2 := by
  rw [h158ModulusDensity_eq_diagonal, h158ModulusAmplitude]
  exact Real.sq_sqrt (by positivity)

theorem h158ModulusAmplitude_factorization (n i : ℕ) (y : ℝ) :
    h158ModulusAmplitude n i y =
      Real.sqrt (h158ModulusWeight n y) * ‖h158ContourBasis n i y‖ := by
  rw [h158ModulusAmplitude, ← h158ModulusDensity_eq_diagonal,
    Real.sqrt_mul (h158ModulusWeight_nonneg n y), Real.sqrt_sq (norm_nonneg _)]

theorem h158ModulusAmplitude_continuous (n i : ℕ) :
    Continuous (h158ModulusAmplitude n i) :=
  ((h158VerticalIntegrand_continuous n i i).norm.div_const _).sqrt

theorem h158ModulusAmplitude_memLp (n : ℕ) (i : Fin (2 * n)) :
    MemLp (h158ModulusAmplitude n i) 2 volume := by
  apply (memLp_two_iff_integrable_sq
    (h158ModulusAmplitude_continuous n i).aestronglyMeasurable).mpr
  simp_rw [h158ModulusAmplitude_sq]
  exact h158ModulusDensity_integrable n i

theorem h158NormalizedAbsoluteIntegrand_eq_amplitudes (n i j : ℕ) (y : ℝ) :
    ‖h158VerticalIntegrand n i j y‖ / (2 * Real.pi) =
      h158ModulusAmplitude n i y * h158ModulusAmplitude n j y := by
  rw [h158VerticalIntegrand_factorization n i j, norm_mul, norm_mul,
    h158ModulusAmplitude_factorization, h158ModulusAmplitude_factorization]
  have hs := Real.sq_sqrt (h158ModulusWeight_nonneg n y)
  unfold h158ModulusWeight at hs
  unfold h158ModulusWeight
  linear_combination -(‖h158ContourBasis n i y‖ * ‖h158ContourBasis n j y‖) * hs

/-- Cauchy--Schwarz for actual, complete absolute integrals. -/
theorem h158AbsoluteIntegral_le_modulusMoments (n : ℕ) (i j : Fin (2 * n)) :
    h158AbsoluteIntegral n i j / (2 * Real.pi) ≤
      Real.sqrt (h158ModulusMoment n i) * Real.sqrt (h158ModulusMoment n j) := by
  have hpq : (2 : ℝ).HolderConjugate 2 := by
    constructor <;> norm_num
  have hi : MemLp (h158ModulusAmplitude n i) (ENNReal.ofReal (2 : ℝ)) volume := by
    simpa using h158ModulusAmplitude_memLp n i
  have hj : MemLp (h158ModulusAmplitude n j) (ENNReal.ofReal (2 : ℝ)) volume := by
    simpa using h158ModulusAmplitude_memLp n j
  have h := integral_mul_le_Lp_mul_Lq_of_nonneg hpq
    (Filter.Eventually.of_forall (h158ModulusAmplitude_nonneg n i))
    (Filter.Eventually.of_forall (h158ModulusAmplitude_nonneg n j)) hi hj
  simp only [Real.rpow_two, h158ModulusAmplitude_sq, ← Real.sqrt_eq_rpow] at h
  change (∫ y : ℝ, h158ModulusAmplitude n i y * h158ModulusAmplitude n j y) ≤ _ at h
  simpa only [← h158NormalizedAbsoluteIntegrand_eq_amplitudes, integral_div,
    h158AbsoluteIntegral, h158ModulusMoment] using h

theorem h158Functional_abs_le_modulusMoments (n : ℕ) (i j : Fin (2 * n)) :
    |h158Functional n i j| ≤
      Real.sqrt (h158ModulusMoment n i) * Real.sqrt (h158ModulusMoment n j) :=
  (h158Functional_abs_le_absoluteIntegral n i j).trans
    (h158AbsoluteIntegral_le_modulusMoments n i j)

/-- Unconditional determinant majorant by finite, nonnegative actual moments. -/
theorem h158Functional_det_abs_le_modulusMoments (n : ℕ) :
    |Matrix.det (h158Functional n)| ≤
      ((2 * n).factorial : ℝ) * ∏ i : Fin (2 * n), h158ModulusMoment n i := by
  have h := h158Functional_det_abs_le_of_absoluteIntegral n
    (fun i => Real.sqrt (h158ModulusMoment n i)) (fun _ => Real.sqrt_nonneg _)
    (h158AbsoluteIntegral_le_modulusMoments n)
  simpa only [Real.sq_sqrt (h158ModulusMoment_nonneg n _)] using h

/-- The same unconditional bound displaying every `1/(2*pi)` factor. -/
theorem h158Functional_det_abs_le_diagonalAbsoluteIntegrals (n : ℕ) :
    |Matrix.det (h158Functional n)| ≤ ((2 * n).factorial : ℝ) /
      (2 * Real.pi) ^ (2 * n) *
        ∏ i : Fin (2 * n), h158AbsoluteIntegral n i i := by
  have h := h158Functional_det_abs_le_modulusMoments n
  simp only [h158ModulusMoment_eq_absoluteIntegral, Finset.prod_div_distrib,
    Finset.prod_const, Finset.card_univ, Fintype.card_fin] at h
  convert h using 1
  ring

/-- Independent complete-integral upper bounds may be substituted momentwise. -/
theorem h158Functional_det_abs_le_of_modulusMoment_bounds (n : ℕ)
    (B : Fin (2 * n) → ℝ) (hB : ∀ i : Fin (2 * n), h158ModulusMoment n i ≤ B i) :
    |Matrix.det (h158Functional n)| ≤ ((2 * n).factorial : ℝ) * ∏ i, B i := by
  apply (h158Functional_det_abs_le_modulusMoments n).trans
  apply mul_le_mul_of_nonneg_left _ (Nat.cast_nonneg _)
  exact Finset.prod_le_prod₀ (fun _ _ => h158ModulusMoment_nonneg _ _) (fun i _ => hB i)

/-- A standard real majorant interface; integrability is required of the supplied
majorant and already proved for the actual modulus density. -/
theorem h158ModulusMoment_le_integralMajorant (n : ℕ) (i : Fin (2 * n))
    (g : ℝ → ℝ) (hg : Integrable g)
    (hbound : ∀ᵐ y, h158ModulusWeight n y * ‖h158ContourBasis n i y‖ ^ 2 ≤ g y) :
    h158ModulusMoment n i ≤ ∫ y : ℝ, g y :=
  integral_mono_ae (h158ModulusDensity_integrable n i) hg hbound

end OddZetaMixed
