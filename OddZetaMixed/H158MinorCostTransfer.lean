import OddZetaMixed.H158AssembledClusters
import OddZetaMixed.FormalPolynomialMinors

/-!
# Actual determinant cost from full assembled minors

The only unproved local input in the final interface is explicitly the bound
on every assembled minor. It is not a new axiom or a global rate assertion.
The exact actual factorization, evaluation integrality, row fee and primitive
normalization are discharged using proved theorems.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed
open LocalJetValuation

theorem h158_det_floor_of_scaled_floor (n p : ℕ) (hp : p.Prime) (L : ℤ)
    (h : FormalAtLeast p L
      (h158RowDiagonal n p * h158SevenMatrix n * h158RowDiagonal n p).det) :
    FormalAtLeast p (L-(h158RowFee n p : ℤ)) (h158SevenMatrix n).det := by
  let : Fact p.Prime := ⟨hp⟩
  rw [h158_scaled_determinant] at h
  have hnonzero : (p : ℚ)^(h158RowFee n p) ≠ 0 :=
    pow_ne_zero _ (by exact_mod_cast hp.ne_zero)
  have hfloor := formal_unscale _ hnonzero _ L h
  simpa only [padicValRat.pow, padicValRat.self hp.one_lt, mul_one] using hfloor

/-- Transfer all assembled minors to all coefficients of the ACTUAL
determinant. No specialization, unknown remainder or omitted scaling fee. -/
theorem h158_det_floor_of_assembled_minor_floor (n p : ℕ) (hn : 0 < n)
    (hp : p.Prime) (hsq : 158*n+2 < p^2) (anchor : Fin p → ℤ) (L : ℤ)
    (hminor : ∀ f g : Fin (2*n) → Fin (p*(4*n)),
      Function.Injective f → Function.Injective g →
      FormalAtLeast p L ((h158AssembledMomentsFin n p hn hp.pos anchor).submatrix f g).det) :
    FormalAtLeast p (L-(h158RowFee n p : ℤ)) (h158SevenMatrix n).det := by
  let : Fact p.Prime := ⟨hp⟩
  apply h158_det_floor_of_scaled_floor n p hp L
  rw [h158_scaled_assembled_fin_factorization n p hn hp.pos anchor]
  apply formal_det_mul_mul_transpose_floor _ _ L _ hminor
  intro i j m
  exact Or.inr (h158AssembledEvaluationFin_coeff_nonneg n p hp hsq anchor i j m)

/-- Signed local cost of the true primitive scalar. Positive divisibility
gives a negative cost; it is never replaced by zero. -/
theorem h158_primitive_cost_of_assembled_minor_floor (n p : ℕ) (hn : 0 < n)
    (hp : p.Prime) (hsq : 158*n+2 < p^2) (anchor : Fin p → ℤ) (L : ℤ)
    (hdet : (h158SevenMatrix n).det ≠ 0)
    (hminor : ∀ f g : Fin (2*n) → Fin (p*(4*n)),
      Function.Injective f → Function.Injective g →
      FormalAtLeast p L ((h158AssembledMomentsFin n p hn hp.pos anchor).submatrix f g).det) :
    -padicValRat p (h158PrimitiveScalar n) ≤ (h158RowFee n p : ℤ)-L := by
  have h := formal_gauss_lower
    (h158_det_floor_of_assembled_minor_floor n p hn hp hsq anchor L hminor) hdet
  rw [h158PrimitiveScalar_gauss_valuation n hdet p hp] at h
  omega

end OddZetaMixed
