import Mathlib.Algebra.Order.AddGroupWithTop
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.RingTheory.Valuation.Basic
import Mathlib.Tactic

/-!
# Rectangular determinant expansion with exact-rank selections

Expand the rows of `A * B` by multilinearity, then remove every selection
with a repeated row using alternation. The surviving functions `Fin r -> Fin m`
are injective, so they select exactly `r` distinct directions. There is no
grouping into unordered Cauchy--Binet subsets and no additional remainder.

The valuation consequence assumes nonnegative valuations of the entries of
`A`, not an ordering on the coefficient ring. The minor bound `L : Int` may
have either sign; no zero-padding or clamping is used.
-/

namespace OddZetaMixed.RectangularExpansion

variable {R : Type*} [CommRing R] {r m : Nat}

/-- The row-multilinear expansion, indexed by all choices of one direction
for each of the `r` rows. This also holds when either dimension is zero. -/
theorem det_mul_eq_sum_functions (A : Matrix (Fin r) (Fin m) R)
    (B : Matrix (Fin m) (Fin r) R) :
    (A * B).det = Finset.univ.sum (fun f : Fin r -> Fin m =>
      (Finset.univ.prod (fun i => A i (f i))) * (B.submatrix f id).det) := by
  classical
  let D := (Matrix.detRowAlternating (R := R) (n := Fin r)).toMultilinearMap
  have hmul : A * B = fun i => Finset.univ.sum (fun j => A i j • B j) := by
    ext i k
    simp [Matrix.mul_apply, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
  change D (A * B) = _
  rw [hmul, D.map_sum]
  apply Finset.sum_congr rfl
  intro f _
  rw [D.map_smul_univ]
  rfl

/-- A noninjective row selection has two equal rows and zero determinant. -/
theorem det_submatrix_eq_zero_of_not_injective (B : Matrix (Fin m) (Fin r) R)
    (f : Fin r -> Fin m) (hf : Not (Function.Injective f)) :
    (B.submatrix f id).det = 0 := by
  classical
  obtain ⟨i, j, hij, hne⟩ := Function.not_injective_iff.mp hf
  exact Matrix.det_zero_of_row_eq hne (congrArg B hij)

/-- Only injective choices contribute; each term still has exactly `r` factors. -/
theorem det_mul_eq_sum_injective (A : Matrix (Fin r) (Fin m) R)
    (B : Matrix (Fin m) (Fin r) R) :
    (A * B).det = (Finset.univ.filter (fun f : Fin r -> Fin m =>
      Function.Injective f)).sum (fun f =>
        (Finset.univ.prod (fun i => A i (f i))) * (B.submatrix f id).det) := by
  classical
  rw [det_mul_eq_sum_functions, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro f _
  by_cases hf : Function.Injective f
  · simp [hf]
  · simp [hf, det_submatrix_eq_zero_of_not_injective B f hf]

/-- The distinct directions selected by a surviving term have cardinality `r`. -/
theorem selected_rows_card (f : Fin r -> Fin m) (hf : Function.Injective f) :
    (Finset.univ.image f).card = r := by
  rw [Finset.card_image_of_injective _ hf]
  simp

/-- If fewer than `r` directions are available, every expansion term vanishes. -/
theorem det_mul_eq_zero_of_inner_lt (A : Matrix (Fin r) (Fin m) R)
    (B : Matrix (Fin m) (Fin r) R) (hm : m < r) :
    (A * B).det = 0 := by
  classical
  rw [det_mul_eq_sum_functions]
  apply Finset.sum_eq_zero
  intro f _
  have hf : Not (Function.Injective f) := by
    intro hinj
    have hcard := Fintype.card_le_of_injective f hinj
    simp only [Fintype.card_fin] at hcard
    omega
  rw [det_submatrix_eq_zero_of_not_injective B f hf, mul_zero]

section Valuation

variable (v : AddValuation R (WithTop Int))

/-- Products of valuation-integral coefficients remain valuation-integral. -/
theorem selection_product_valuation_nonneg (A : Matrix (Fin r) (Fin m) R)
    (hA : forall i j, 0 <= v (A i j)) (f : Fin r -> Fin m) :
    0 <= v (Finset.univ.prod (fun i => A i (f i))) := by
  apply le_trans (Finset.sum_nonneg (fun i _ => hA i (f i)))
  exact Finset.sum_apply_le_apply_prod Finset.univ v (by simp)
    (fun x y => (v.map_mul x y).symm.le)

/-- An integral coefficient product cannot lower the signed minor bound. -/
theorem selection_term_valuation_lower (A : Matrix (Fin r) (Fin m) R)
    (B : Matrix (Fin m) (Fin r) R) (L : Int)
    (hA : forall i j, 0 <= v (A i j)) (f : Fin r -> Fin m)
    (hB : (L : WithTop Int) <= v (B.submatrix f id).det) :
    (L : WithTop Int) <=
      v ((Finset.univ.prod (fun i => A i (f i))) * (B.submatrix f id).det) := by
  rw [v.map_mul]
  simpa only [zero_add] using
    add_le_add (selection_product_valuation_nonneg v A hA f) hB

/-- If `A` is valuation-integral and every distinct `r`-row minor of `B`
has valuation at least `L`, then so does `det (A * B)`. No sign restriction
on `L` or nonvanishing assumption is needed. -/
theorem det_mul_valuation_lower (A : Matrix (Fin r) (Fin m) R)
    (B : Matrix (Fin m) (Fin r) R) (L : Int)
    (hA : forall i j, 0 <= v (A i j))
    (hB : forall f : Fin r -> Fin m, Function.Injective f ->
      (L : WithTop Int) <= v (B.submatrix f id).det) :
    (L : WithTop Int) <= v (A * B).det := by
  classical
  rw [det_mul_eq_sum_injective]
  apply v.map_le_sum
  intro f hf
  exact selection_term_valuation_lower v A B L hA f (hB f (Finset.mem_filter.mp hf).2)

/-- The corresponding signed cost upper bound when the determinant valuation
is finite. In particular, positive `L` yields a genuinely negative cost. -/
theorem det_mul_cost_upper_of_finite (A : Matrix (Fin r) (Fin m) R)
    (B : Matrix (Fin m) (Fin r) R) (L z : Int)
    (hA : forall i j, 0 <= v (A i j))
    (hB : forall f : Fin r -> Fin m, Function.Injective f ->
      (L : WithTop Int) <= v (B.submatrix f id).det)
    (hfinite : v (A * B).det = (z : WithTop Int)) : -z <= -L := by
  have h := det_mul_valuation_lower v A B L hA hB
  rw [hfinite, WithTop.coe_le_coe] at h
  omega

/-- The complete factorization `V * W * V.transpose` inherits a signed lower
bound from all `r`-by-`r` minors of `W`. Row and column selections are independent,
so nonprincipal minors are included. No symmetry of `W`, sign restriction on
`L`, nonvanishing assumption, or additional remainder is used. -/
theorem det_mul_mul_transpose_valuation_lower (V : Matrix (Fin r) (Fin m) R)
    (W : Matrix (Fin m) (Fin m) R) (L : Int)
    (hV : forall i j, 0 <= v (V i j))
    (hW : forall f g : Fin r -> Fin m, Function.Injective f -> Function.Injective g ->
      (L : WithTop Int) <= v (W.submatrix f g).det) :
    (L : WithTop Int) <= v (V * W * V.transpose).det := by
  rw [Matrix.mul_assoc]
  apply det_mul_valuation_lower v V (W * V.transpose) L hV
  intro f hf
  have hright : (L : WithTop Int) <= v (V * (W.submatrix f id).transpose).det := by
    apply det_mul_valuation_lower v V (W.submatrix f id).transpose L hV
    intro g hg
    change (L : WithTop Int) <= v (W.submatrix f g).transpose.det
    rw [Matrix.det_transpose]
    exact hW f g hf hg
  have hrows : (W * V.transpose).submatrix f id =
      (W.submatrix f id) * V.transpose := by
    ext i j
    rfl
  rw [hrows, <- Matrix.det_transpose, Matrix.transpose_mul, Matrix.transpose_transpose]
  exact hright

/-- Transfer to a matrix only through an exact factorization, with no
unspecified integral remainder. -/
theorem det_valuation_lower_of_factorization (H : Matrix (Fin r) (Fin r) R)
    (V : Matrix (Fin r) (Fin m) R) (W : Matrix (Fin m) (Fin m) R) (L : Int)
    (hfactor : H = V * W * V.transpose)
    (hV : forall i j, 0 <= v (V i j))
    (hW : forall f g : Fin r -> Fin m, Function.Injective f -> Function.Injective g ->
      (L : WithTop Int) <= v (W.submatrix f g).det) :
    (L : WithTop Int) <= v H.det := by
  rw [hfactor]
  exact det_mul_mul_transpose_valuation_lower v V W L hV hW

end Valuation

end OddZetaMixed.RectangularExpansion
