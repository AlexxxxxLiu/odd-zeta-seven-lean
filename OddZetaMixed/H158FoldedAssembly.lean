import OddZetaMixed.H158ReflectionOrbits
import OddZetaMixed.H158AssembledClusters
import OddZetaMixed.H158MinorCostTransfer
import OddZetaMixed.WeightedBlockSelection

/-!
# One complete block matrix for the reflection-folded functional

Zero padding below embeds the already compressed central block. It does
not discard an integral remainder or replace signed valuation costs by zero.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed
open Finset LocalJetValuation

def h158LowerColumn (n : ℕ) (u : Fin (2*n)) : Fin (4*n) :=
  ⟨u.val, by have := u.isLt; omega⟩

theorem h158LowerColumn_injective (n : ℕ) :
    Function.Injective (h158LowerColumn n) := by
  intro u v h
  exact Fin.ext (congrArg (fun w : Fin (4*n) => w.val) h)

theorem h158_sum_lower_columns {R : Type*} [AddCommMonoid R] (n : ℕ)
    (f : Fin (4*n) → R) (h : ∀ u, 2*n ≤ u.val → f u = 0) :
    ∑ u, f u = ∑ u : Fin (2*n), f (h158LowerColumn n u) := by
  symm
  apply Fintype.sum_of_injective (h158LowerColumn n) (h158LowerColumn_injective n)
  · intro u hu
    apply h
    by_contra hn
    apply hu
    exact ⟨⟨u.val, by omega⟩, Fin.ext rfl⟩
  · intro u
    rfl

def h158PadCentralEvaluation (n p : ℕ) :
    Matrix (Fin (2*n)) (Fin (4*n)) SevenPolynomial :=
  fun i u => if h : u.val < 2*n then h158CentralEvenEvaluation n p i ⟨u.val,h⟩ else 0

def h158PadCentralMoment (n p : ℕ) (hn : 0 < n) (hp : 0 < p) :
    Matrix (Fin (4*n)) (Fin (4*n)) SevenPolynomial :=
  fun u v => if hu : u.val < 2*n then
    if hv : v.val < 2*n then h158CentralEvenMoment n p hn hp ⟨u.val,hu⟩ ⟨v.val,hv⟩ else 0
    else 0

theorem h158PadCentralEvaluation_lower (n p : ℕ) (i u : Fin (2*n)) :
    h158PadCentralEvaluation n p i (h158LowerColumn n u) =
      h158CentralEvenEvaluation n p i u := by
  change (if h : u.val < 2*n then h158CentralEvenEvaluation n p i ⟨u.val,h⟩ else 0) = _
  rw [dite_eq_left u.isLt]

theorem h158PadCentralEvaluation_upper (n p : ℕ) (i : Fin (2*n))
    (u : Fin (4*n)) (hu : 2*n ≤ u.val) :
    h158PadCentralEvaluation n p i u = 0 := by
  simp only [h158PadCentralEvaluation, not_lt.mpr hu, dite_false]

theorem h158PadCentralMoment_lower (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (u v : Fin (2*n)) :
    h158PadCentralMoment n p hn hp (h158LowerColumn n u) (h158LowerColumn n v) =
      h158CentralEvenMoment n p hn hp u v := by
  change (if hu : u.val < 2*n then if hv : v.val < 2*n then
    h158CentralEvenMoment n p hn hp ⟨u.val,hu⟩ ⟨v.val,hv⟩ else 0 else 0) = _
  rw [dite_eq_left u.isLt, dite_eq_left v.isLt]

theorem h158_central_padded_product (n p : ℕ) (hn : 0 < n) (hp : 0 < p) :
    h158PadCentralEvaluation n p * h158PadCentralMoment n p hn hp *
      (h158PadCentralEvaluation n p).transpose =
    h158CentralEvenEvaluation n p * h158CentralEvenMoment n p hn hp *
      (h158CentralEvenEvaluation n p).transpose := by
  apply Matrix.ext
  intro i j
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Finset.sum_mul]
  rw [h158_sum_lower_columns n _ (by
    intro u hu
    simp only [h158PadCentralEvaluation_upper n p j u hu, mul_zero, sum_const_zero])]
  apply sum_congr rfl
  intro u hu
  rw [h158_sum_lower_columns n _ (by
    intro v hv
    simp only [h158PadCentralEvaluation_upper n p i v hv, zero_mul])]
  simp only [h158PadCentralEvaluation_lower, h158PadCentralMoment_lower]

theorem h158PadCentralMoment_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (u v : Fin (4*n)) :
    FormalAtLeast p (-h158ClassCost p n (h158CentralClass n p hp)+
      2*(u.val : ℤ)+2*(v.val : ℤ)) (h158PadCentralMoment n p hn hp u v) := by
  unfold h158PadCentralMoment
  split_ifs with hu hv
  · exact h158CentralEvenMoment_floor n hn hp hsq ⟨u.val,hu⟩ ⟨v.val,hv⟩
  · exact formal_zero _ _
  · exact formal_zero _ _

abbrev H158PairClass (n p : ℕ) (hp : 0 < p) :=
  {c : Fin p // c < h158ReflectionClass n p hp c}

abbrev H158OrbitClass (n p : ℕ) (hp : 0 < p) := Option (H158PairClass n p hp)

def h158FoldedEvaluation (n p : ℕ) (hp : 0 < p) (c : H158OrbitClass n p hp) :
    Matrix (Fin (2*n)) (Fin (4*n)) SevenPolynomial :=
  match c with
  | none => h158PadCentralEvaluation n p
  | some c => h158ScaledTaylorEvaluation n p (-(c.val.val : ℚ))

def h158FoldedMoment (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (c : H158OrbitClass n p hp) : Matrix (Fin (4*n)) (Fin (4*n)) SevenPolynomial :=
  match c with
  | none => h158PadCentralMoment n p hn hp
  | some c => h158PairMoment n p hn hp c.val

def h158FoldedWeight (n p : ℕ) (hp : 0 < p) (c : H158OrbitClass n p hp) : ℤ :=
  match c with
  | none => h158ClassCost p n (h158CentralClass n p hp)
  | some c => max (h158ClassCost p n c.val)
      (h158ClassCost p n (h158ReflectionClass n p hp c.val))

def h158FoldedSpacing (n p : ℕ) (hp : 0 < p) (c : H158OrbitClass n p hp) : ℤ :=
  match c with | none => 2 | some _ => 1

theorem h158FoldedSpacing_nonneg (n p : ℕ) (hp : 0 < p)
    (c : H158OrbitClass n p hp) : 0 ≤ h158FoldedSpacing n p hp c := by
  cases c <;> norm_num [h158FoldedSpacing]

theorem h158FoldedMoment_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (c : H158OrbitClass n p hp) (u v : Fin (4*n)) :
    FormalAtLeast p (-h158FoldedWeight n p hp c+
      h158FoldedSpacing n p hp c*(u.val : ℤ)+
      h158FoldedSpacing n p hp c*(v.val : ℤ)) (h158FoldedMoment n p hn hp c u v) := by
  cases c with
  | none => exact h158PadCentralMoment_floor n hn hp hsq u v
  | some c => simpa only [h158FoldedWeight, h158FoldedSpacing, h158FoldedMoment, one_mul]
      using h158PairMoment_floor n hn hp hsq c.val u v

theorem h158_scaled_folded_sum {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2) :
    h158RowDiagonal n p * h158SevenMatrix n * h158RowDiagonal n p =
      ∑ c : H158OrbitClass n p hp, h158FoldedEvaluation n p hp c *
        h158FoldedMoment n p hn hp c * (h158FoldedEvaluation n p hp c).transpose := by
  rw [h158_scaled_reflection_orbit_factorization n hn hp hp2, Fintype.sum_option]
  simp only [h158FoldedEvaluation, h158FoldedMoment, h158_central_padded_product]
  rw [add_comm]
  congr 1
  exact Finset.sum_subtype _ (fun c => by simp) _

theorem h158FoldedEvaluation_coeff_nonneg (n p : ℕ) (hp : p.Prime)
    (hsq : 158*n+2 < p^2) (c : H158OrbitClass n p hp.pos)
    (i : Fin (2*n)) (u : Fin (4*n)) (m : Fin 7 →₀ ℕ) :
    0 ≤ padicValRat p ((h158FoldedEvaluation n p hp.pos c i u).coeff m) := by
  cases c with
  | none =>
    simp only [h158FoldedEvaluation, h158PadCentralEvaluation]
    split_ifs with hu
    · have h := h158ScaledTaylorEvaluation_coeff_nonneg n p hp hsq
        (-(79*(n : ℤ)+1)) i (h158EvenJet n ⟨u.val,hu⟩) m
      simpa only [Int.cast_neg, Int.cast_add, Int.cast_mul, Int.cast_ofNat,
        Int.cast_natCast, Int.cast_one, h158CentralEvenEvaluation,
        Matrix.submatrix_apply, id_eq] using h
    · simp
  | some c =>
    have h := h158ScaledTaylorEvaluation_coeff_nonneg n p hp hsq
      (-(c.val.val : ℤ)) i u m
    simpa only [h158FoldedEvaluation, Int.cast_neg, Int.cast_natCast] using h

abbrev H158FoldedColumn (n p : ℕ) (hp : 0 < p) := H158OrbitClass n p hp × Fin (4*n)

def h158FoldedAssembledEvaluation (n p : ℕ) (hp : 0 < p) :
    Matrix (Fin (2*n)) (H158FoldedColumn n p hp) SevenPolynomial :=
  fun i u => h158FoldedEvaluation n p hp u.1 i u.2

def h158FoldedAssembledMoment (n p : ℕ) (hn : 0 < n) (hp : 0 < p) :
    Matrix (H158FoldedColumn n p hp) (H158FoldedColumn n p hp) SevenPolynomial :=
  FormalBlockSelection.blockMatrix (h158FoldedMoment n p hn hp)

theorem h158_scaled_folded_assembled_factorization {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2) :
    h158RowDiagonal n p * h158SevenMatrix n * h158RowDiagonal n p =
      h158FoldedAssembledEvaluation n p hp * h158FoldedAssembledMoment n p hn hp *
        (h158FoldedAssembledEvaluation n p hp).transpose := by
  rw [h158_scaled_folded_sum n hn hp hp2]
  exact (assembled_product_eq_sum (h158FoldedEvaluation n p hp)
    (h158FoldedMoment n p hn hp)).symm

def h158FoldedColumnEquiv (n p : ℕ) (hp : 0 < p) :
    H158FoldedColumn n p hp ≃ Fin (Fintype.card (H158FoldedColumn n p hp)) :=
  Fintype.equivFin _

def h158FoldedEvaluationFin (n p : ℕ) (hp : 0 < p) :
    Matrix (Fin (2*n)) (Fin (Fintype.card (H158FoldedColumn n p hp))) SevenPolynomial :=
  (h158FoldedAssembledEvaluation n p hp).submatrix id (h158FoldedColumnEquiv n p hp).symm

def h158FoldedMomentFin (n p : ℕ) (hn : 0 < n) (hp : 0 < p) :
    Matrix (Fin (Fintype.card (H158FoldedColumn n p hp)))
      (Fin (Fintype.card (H158FoldedColumn n p hp))) SevenPolynomial :=
  (h158FoldedAssembledMoment n p hn hp).submatrix
    (h158FoldedColumnEquiv n p hp).symm (h158FoldedColumnEquiv n p hp).symm

theorem h158_scaled_folded_fin_factorization {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2) :
    h158RowDiagonal n p * h158SevenMatrix n * h158RowDiagonal n p =
      h158FoldedEvaluationFin n p hp * h158FoldedMomentFin n p hn hp *
        (h158FoldedEvaluationFin n p hp).transpose := by
  rw [h158_scaled_folded_assembled_factorization n hn hp hp2]
  change _ = (h158FoldedAssembledEvaluation n p hp).submatrix id (h158FoldedColumnEquiv n p hp).symm *
      (h158FoldedAssembledMoment n p hn hp).submatrix
        (h158FoldedColumnEquiv n p hp).symm (h158FoldedColumnEquiv n p hp).symm *
      (h158FoldedAssembledEvaluation n p hp).transpose.submatrix
        (h158FoldedColumnEquiv n p hp).symm id
  rw [Matrix.submatrix_mul_equiv, Matrix.submatrix_mul_equiv, Matrix.submatrix_id_id]

theorem h158FoldedEvaluationFin_coeff_nonneg (n p : ℕ) (hp : p.Prime)
    (hsq : 158*n+2 < p^2) (i : Fin (2*n))
    (u : Fin (Fintype.card (H158FoldedColumn n p hp.pos))) (m : Fin 7 →₀ ℕ) :
    0 ≤ padicValRat p ((h158FoldedEvaluationFin n p hp.pos i u).coeff m) :=
  h158FoldedEvaluation_coeff_nonneg n p hp hsq
    ((h158FoldedColumnEquiv n p hp.pos).symm u).1 i
    ((h158FoldedColumnEquiv n p hp.pos).symm u).2 m

theorem h158_folded_minor_allocation_floor {p r : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (f g : Fin r → H158FoldedColumn n p hp)
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p (WeightedBlockSelection.weightedAllocationFloor
      (h158FoldedWeight n p hp) (h158FoldedSpacing n p hp) f)
      ((h158FoldedAssembledMoment n p hn hp).submatrix f g).det :=
  WeightedBlockSelection.formal_block_minor_weighted_allocation_floor
    (h158FoldedMoment n p hn hp) (h158FoldedWeight n p hp) (h158FoldedSpacing n p hp)
    (h158FoldedSpacing_nonneg n p hp) (h158FoldedMoment_floor n hn hp hsq) f g hf hg

theorem h158_folded_det_floor_of_allocation_bound {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2) (hsq : 158*n+2 < p^2)
    (L : ℤ)
    (halloc : ∀ k : H158OrbitClass n p hp → ℕ,
      (∑ c, k c) = 2*n → (∀ c, k c ≤ 4*n) →
      L ≤ ∑ c, (-(k c : ℤ)*h158FoldedWeight n p hp c+
        h158FoldedSpacing n p hp c*(k c : ℤ)*((k c : ℤ)-1))) :
    FormalAtLeast p (L-(h158RowFee n p : ℤ)) (h158SevenMatrix n).det := by
  apply h158_det_floor_of_scaled_floor n p (Fact.out : p.Prime) L
  rw [h158_scaled_folded_fin_factorization n hn hp hp2]
  apply formal_det_mul_mul_transpose_floor _ _ L
  · intro i u m
    exact Or.inr (h158FoldedEvaluationFin_coeff_nonneg n p (Fact.out : p.Prime) hsq i u m)
  · intro f g hf hg
    exact WeightedBlockSelection.formal_block_minor_floor_of_weighted_allocation_bound
      (h158FoldedMoment n p hn hp) (h158FoldedWeight n p hp) (h158FoldedSpacing n p hp)
      (h158FoldedSpacing_nonneg n p hp)
      (h158FoldedMoment_floor n hn hp (by omega)) L halloc
      ((h158FoldedColumnEquiv n p hp).symm ∘ f)
      ((h158FoldedColumnEquiv n p hp).symm ∘ g)
      ((h158FoldedColumnEquiv n p hp).symm.injective.comp hf)
      ((h158FoldedColumnEquiv n p hp).symm.injective.comp hg)

end OddZetaMixed
