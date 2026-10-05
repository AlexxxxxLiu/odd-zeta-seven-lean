import OddZetaMixed.H158FoldedAssembly
import OddZetaMixed.H158FoldedSingleton

/-!
# Hybrid singleton plateaus in the actual folded determinant

Each selected plateau has an arithmetic witness for the original poles.
Unselected blocks retain the generic linear floor. Central padding is zero,
including independently selected upper rows or columns. The final interface
is a finite allocation inequality, not an assumed global arithmetic rate.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset LocalJetValuation FormalBlockSelection

namespace FoldedHybrid

structure JetProfile where
  base : ℤ
  offset : ℤ
  spacing : ℤ
  plateau : Bool
  spacing_nonneg : 0 ≤ spacing

def JetProfile.entryFloor (P : JetProfile) (u v : ℕ) : ℤ :=
  P.base + if P.plateau then
    max 0 (P.offset+P.spacing*(u : ℤ)+P.spacing*(v : ℤ))
  else P.offset+P.spacing*(u : ℤ)+P.spacing*(v : ℤ)

def JetProfile.minorFloor (P : JetProfile) (r : ℕ) : ℤ :=
  (r : ℤ)*(P.base+if P.plateau then max 0 (P.offset+P.spacing*((r : ℤ)-1))
    else P.offset+P.spacing*((r : ℤ)-1))

/-- Convexity of the hinge and the separate row/column spacing charge. -/
theorem JetProfile.sum_floor {ι : Type*} (P : JetProfile) (s : Finset ι)
    (u v : ι → ℕ)
    (hindices : (s.card : ℤ)*((s.card : ℤ)-1) ≤
      (∑ i ∈ s, (u i : ℤ))+(∑ i ∈ s, (v i : ℤ))) :
    P.minorFloor s.card ≤ ∑ i ∈ s, P.entryFloor (u i) (v i) := by
  have hweighted := mul_le_mul_of_nonneg_left hindices P.spacing_nonneg
  unfold JetProfile.minorFloor JetProfile.entryFloor
  by_cases hb : P.plateau = true
  · simp only [hb, ite_true]
    have hn : 0 ≤ ∑ i ∈ s, max 0 (P.offset+P.spacing*(u i : ℤ)+P.spacing*(v i : ℤ)) :=
      sum_nonneg (fun _ _ => le_max_left _ _)
    have hl : (s.card : ℤ)*P.offset+P.spacing*(∑ i ∈ s, (u i : ℤ))+
        P.spacing*(∑ i ∈ s, (v i : ℤ)) ≤
        ∑ i ∈ s, max 0 (P.offset+P.spacing*(u i : ℤ)+P.spacing*(v i : ℤ)) := by
      calc
        _ = ∑ i ∈ s, (P.offset+P.spacing*(u i : ℤ)+P.spacing*(v i : ℤ)) := by
          simp only [sum_add_distrib, sum_const, nsmul_eq_mul, mul_sum]
        _ ≤ _ := sum_le_sum (fun _ _ => le_max_right _ _)
    rw [sum_add_distrib, sum_const, nsmul_eq_mul]
    by_cases ha : 0 ≤ P.offset+P.spacing*((s.card : ℤ)-1)
    · rw [max_eq_right ha]
      nlinarith
    · rw [max_eq_left (le_of_lt (lt_of_not_ge ha)), add_zero]
      exact le_add_of_nonneg_right hn
  · simp only [hb, Bool.false_eq_true, ite_false, sum_add_distrib, sum_const,
      nsmul_eq_mul, ← mul_sum]
    nlinarith

theorem JetProfile.formal_minor_floor {p r J : ℕ} [Fact p.Prime]
    (P : JetProfile) (A : Matrix (Fin J) (Fin J) SevenPolynomial)
    (hentry : ∀ u v, FormalAtLeast p (P.entryFloor u.val v.val) (A u v))
    (u v : Fin r → Fin J) (hu : Function.Injective u) (hv : Function.Injective v) :
    FormalAtLeast p (P.minorFloor r) (A.submatrix u v).det := by
  classical
  apply formal_determinant_lower_of_termwise
  intro σ
  have hprod := formal_prod univ (fun i => A (u (σ i)) (v i))
    (fun i => P.entryFloor (u (σ i)).val (v i).val) (fun i _ => hentry _ _)
  apply formal_mono hprod
  have hrow := twice_sum_injective_indices_lower (fun i => (u (σ i)).val)
    (Fin.val_injective.comp (hu.comp σ.injective))
  have hcol := twice_sum_injective_indices_lower (fun i => (v i).val)
    (Fin.val_injective.comp hv)
  have h := P.sum_floor univ (fun i => (u (σ i)).val) (fun i => (v i).val) (by
    simp only [card_univ, Fintype.card_fin]
    linarith)
  simpa only [card_univ, Fintype.card_fin] using h

variable {C : Type*} [DecidableEq C] [Fintype C]

def allocationFloor {r J : ℕ} (P : C → JetProfile) (f : Fin r → C × Fin J) : ℤ :=
  ∑ c, (P c).minorFloor (classCount f c)

theorem allocationFloor_comp_perm {r J : ℕ} (P : C → JetProfile)
    (f : Fin r → C × Fin J) (σ : Equiv.Perm (Fin r)) :
    allocationFloor P (f ∘ σ) = allocationFloor P f := by
  simp only [allocationFloor, classCount_comp_perm]

theorem matching_entry_sum_lower {r J : ℕ} (P : C → JetProfile)
    (f g : Fin r → C × Fin J) (hf : Function.Injective f) (hg : Function.Injective g)
    (hmatch : ∀ i, (f i).1 = (g i).1) :
    allocationFloor P f ≤ ∑ i, (P (f i).1).entryFloor (f i).2.val (g i).2.val := by
  have hclass : ∀ c, classFiber f c = classFiber g c := by
    intro c
    apply filter_congr
    intro i hi
    simp only [hmatch i]
  have hcount : ∀ c, classCount f c = classCount g c := by
    intro c
    unfold classCount
    rw [hclass c]
  rw [allocationFloor, ← Finset.sum_fiberwise univ (fun i => (f i).1)]
  apply sum_le_sum
  intro c hc
  change (P c).minorFloor (classCount f c) ≤
    ∑ i ∈ classFiber f c, (P (f i).1).entryFloor (f i).2.val (g i).2.val
  have he : (∑ i ∈ classFiber f c, (P (f i).1).entryFloor (f i).2.val (g i).2.val) =
      ∑ i ∈ classFiber f c, (P c).entryFloor (f i).2.val (g i).2.val := by
    apply sum_congr rfl
    intro i hi
    rw [(mem_filter.mp hi).2]
  rw [he]
  apply JetProfile.sum_floor
  have hrow := classJetSum_lower f hf c
  have hcol := classJetSum_lower g hg c
  rw [← hcount c] at hcol
  have hs : (∑ i ∈ classFiber f c, ((g i).2.val : ℤ)) = classJetSum g c := by
    rw [hclass c]
    rfl
  change (classCount f c : ℤ)*((classCount f c : ℤ)-1) ≤
    classJetSum f c+(∑ i ∈ classFiber f c, ((g i).2.val : ℤ))
  rw [hs]
  linarith

/-- All mixed blocks are handled in one determinant expansion; mismatched
class terms vanish, so the column allocation is not silently identified. -/
theorem formal_block_minor_allocation_floor {p r J : ℕ} [Fact p.Prime]
    (A : C → Matrix (Fin J) (Fin J) SevenPolynomial) (P : C → JetProfile)
    (hentry : ∀ c u v, FormalAtLeast p ((P c).entryFloor u.val v.val) (A c u v))
    (f g : Fin r → C × Fin J) (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p (allocationFloor P f) ((blockMatrix A).submatrix f g).det := by
  classical
  apply formal_determinant_lower_of_termwise
  intro σ
  by_cases hmatch : ∀ i, (f (σ i)).1 = (g i).1
  · have hprod := formal_prod univ
      (fun i => (blockMatrix A).submatrix f g (σ i) i)
      (fun i => (P (f (σ i)).1).entryFloor (f (σ i)).2.val (g i).2.val)
      (fun i _ => by
        simpa only [Matrix.submatrix_apply, blockMatrix, hmatch i, ite_true] using
          hentry (f (σ i)).1 (f (σ i)).2 (g i).2)
    apply formal_mono hprod
    have h := matching_entry_sum_lower P (f ∘ σ) g (hf.comp σ.injective) hg hmatch
    rwa [allocationFloor_comp_perm] at h
  · push Not at hmatch
    obtain ⟨i, hi⟩ := hmatch
    have hz : (∏ j, (blockMatrix A).submatrix f g (σ j) j) = 0 := by
      apply prod_eq_zero (mem_univ i)
      simp [Matrix.submatrix, blockMatrix, hi]
    rw [hz]
    exact formal_zero p _

end FoldedHybrid

theorem h158PadCentralMoment_upper_row (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (u v : Fin (4*n)) (hu : 2*n ≤ u.val) :
    h158PadCentralMoment n p hn hp u v = 0 := by
  simp only [h158PadCentralMoment, not_lt.mpr hu, dite_false]

theorem h158PadCentralMoment_upper_column (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (u v : Fin (4*n)) (hv : 2*n ≤ v.val) :
    h158PadCentralMoment n p hn hp u v = 0 := by
  unfold h158PadCentralMoment
  by_cases hu : u.val < 2*n
  · rw [dite_eq_left hu, dite_eq_right (not_lt.mpr hv)]
  · rw [dite_eq_right hu]

theorem h158PadCentralMoment_minor_zero_of_upper {r : ℕ}
    (n p : ℕ) (hn : 0 < n) (hp : 0 < p) (u v : Fin r → Fin (4*n))
    (hupper : (∃ i, 2*n ≤ (u i).val) ∨ ∃ j, 2*n ≤ (v j).val) :
    ((h158PadCentralMoment n p hn hp).submatrix u v).det = 0 := by
  rcases hupper with ⟨i, hi⟩ | ⟨j, hj⟩
  · apply Matrix.det_eq_zero_of_row_eq_zero i
    intro j
    exact h158PadCentralMoment_upper_row n p hn hp (u i) (v j) hi
  · apply Matrix.det_eq_zero_of_column_eq_zero j
    intro i
    exact h158PadCentralMoment_upper_column n p hn hp (u i) (v j) hj

theorem h158PadCentralMoment_singleton_plateau {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hsingle : H158PoleSingleton p n (79*n+1)) (hsq : 52*n < p^2)
    (hcut : (79*n+1)-48*n-1 < p) (u v : Fin (4*n)) :
    FormalAtLeast p
      (padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n (79*n+1)-(h158PoleOrder n (79*n+1) : ℤ)+1+
          2*(u.val : ℤ)+2*(v.val : ℤ)))
      (h158PadCentralMoment n p hn hp u v) := by
  unfold h158PadCentralMoment
  split_ifs with hu hv
  · exact h158CentralEvenMoment_singleton_plateau n hn hp hsingle hsq hcut
      ⟨u.val,hu⟩ ⟨v.val,hv⟩
  · exact formal_zero _ _
  · exact formal_zero _ _

/-- An eligibility certificate contains arithmetic pole facts only. In the
pair constructor neither reflected singleton nor harmonic cutoff is omitted. -/
inductive H158FoldedSingletonWitness (n p : ℕ) (hp : 0 < p) :
    H158OrbitClass n p hp → Type
  | pair (c : H158PairClass n p hp) (k k' : ℕ)
      (hk : k ∈ h158PoleSet n) (hk' : k' ∈ h158PoleSet n)
      (hsingle : H158PoleSingleton p n k) (hsingle' : H158PoleSingleton p n k')
      (hcut : k-48*n-1 < p) (hcut' : k'-48*n-1 < p)
      (hkc : h158ResidueClass p hp k = c.val)
      (hk'c : h158ResidueClass p hp k' = h158ReflectionClass n p hp c.val) :
      H158FoldedSingletonWitness n p hp (some c)
  | central (hsingle : H158PoleSingleton p n (79*n+1))
      (hcut : (79*n+1)-48*n-1 < p) : H158FoldedSingletonWitness n p hp none

def H158FoldedSingletonWitness.offset {n p : ℕ} {hp : 0 < p}
    {c : H158OrbitClass n p hp} (w : H158FoldedSingletonWitness n p hp c) : ℤ :=
  match w with
  | .pair _ k k' _ _ _ _ _ _ _ _ =>
    min (h158NumeratorCount p n k-(h158PoleOrder n k : ℤ))
      (h158NumeratorCount p n k'-(h158PoleOrder n k' : ℤ))+1
  | .central _ _ => h158NumeratorCount p n (79*n+1)-(h158PoleOrder n (79*n+1) : ℤ)+1

def h158FoldedGenericProfile (n p : ℕ) (hp : 0 < p) (c : H158OrbitClass n p hp) :
    FoldedHybrid.JetProfile :=
  ⟨-h158FoldedWeight n p hp c, 0, h158FoldedSpacing n p hp c, false,
    h158FoldedSpacing_nonneg n p hp c⟩

def H158FoldedSingletonWitness.profile {n p : ℕ} {hp : 0 < p}
    {c : H158OrbitClass n p hp} (w : H158FoldedSingletonWitness n p hp c) :
    FoldedHybrid.JetProfile :=
  ⟨padicValRat p (h158Normalization n), w.offset, h158FoldedSpacing n p hp c, true,
    h158FoldedSpacing_nonneg n p hp c⟩

theorem H158FoldedSingletonWitness.entry_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 52*n < p^2)
    {c : H158OrbitClass n p hp} (w : H158FoldedSingletonWitness n p hp c)
    (u v : Fin (4*n)) :
    FormalAtLeast p (w.profile.entryFloor u.val v.val) (h158FoldedMoment n p hn hp c u v) := by
  cases w with
  | pair c k k' hk hk' hs hs' hc hc' hkc hk'c =>
    simpa only [profile, offset, FoldedHybrid.JetProfile.entryFloor, h158FoldedSpacing,
      h158FoldedMoment, ite_true, one_mul] using
      h158PairMoment_singleton_plateau n k k' hn hp hk hk' hs hs' hsq hc hc'
        c.val hkc hk'c u v
  | central hs hc =>
    exact h158PadCentralMoment_singleton_plateau n hn hp hs hsq hc u v

abbrev H158FoldedHybridChoice (n p : ℕ) (hp : 0 < p) :=
  (c : H158OrbitClass n p hp) → Option (H158FoldedSingletonWitness n p hp c)

def h158FoldedHybridProfile (n p : ℕ) (hp : 0 < p)
    (choice : H158FoldedHybridChoice n p hp) (c : H158OrbitClass n p hp) :
    FoldedHybrid.JetProfile :=
  match choice c with
  | none => h158FoldedGenericProfile n p hp c
  | some w => w.profile

theorem h158FoldedHybrid_entry_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (choice : H158FoldedHybridChoice n p hp) (c : H158OrbitClass n p hp)
    (u v : Fin (4*n)) :
    FormalAtLeast p ((h158FoldedHybridProfile n p hp choice c).entryFloor u.val v.val)
      (h158FoldedMoment n p hn hp c u v) := by
  cases he : choice c with
  | none =>
    simpa only [h158FoldedHybridProfile, he, h158FoldedGenericProfile,
      FoldedHybrid.JetProfile.entryFloor, Bool.false_eq_true, ite_false, zero_add,
      add_assoc] using h158FoldedMoment_floor n hn hp hsq c u v
  | some w =>
    simpa only [h158FoldedHybridProfile, he] using w.entry_floor n hn hp (by omega) u v

theorem h158FoldedHybrid_block_minor_floor {p r : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (choice : H158FoldedHybridChoice n p hp) (c : H158OrbitClass n p hp)
    (u v : Fin r → Fin (4*n)) (hu : Function.Injective u) (hv : Function.Injective v) :
    FormalAtLeast p ((h158FoldedHybridProfile n p hp choice c).minorFloor r)
      ((h158FoldedMoment n p hn hp c).submatrix u v).det :=
  FoldedHybrid.JetProfile.formal_minor_floor _ _
    (h158FoldedHybrid_entry_floor n hn hp hsq choice c) u v hu hv

/-- The actual padded central block also admits the plateau for arbitrary
independent selections. An upper row or column gives the zero determinant. -/
theorem h158PadCentralMoment_singleton_minor_plateau {p r : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hsingle : H158PoleSingleton p n (79*n+1)) (hsq : 52*n < p^2)
    (hcut : (79*n+1)-48*n-1 < p) (u v : Fin r → Fin (4*n))
    (hu : Function.Injective u) (hv : Function.Injective v) :
    FormalAtLeast p
      ((r : ℤ)*(padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n (79*n+1)-(h158PoleOrder n (79*n+1) : ℤ)+
          2*(r : ℤ)-1)))
      ((h158PadCentralMoment n p hn hp).submatrix u v).det := by
  by_cases hupper : (∃ i, 2*n ≤ (u i).val) ∨ ∃ j, 2*n ≤ (v j).val
  · rw [h158PadCentralMoment_minor_zero_of_upper n p hn hp u v hupper]
    exact formal_zero p _
  · push Not at hupper
    let u' : Fin r → Fin (2*n) := fun i => ⟨(u i).val, hupper.1 i⟩
    let v' : Fin r → Fin (2*n) := fun i => ⟨(v i).val, hupper.2 i⟩
    have hu' : Function.Injective u' := by
      intro i j hij
      apply hu
      exact Fin.ext (congrArg (fun x : Fin (2*n) => x.val) hij)
    have hv' : Function.Injective v' := by
      intro i j hij
      apply hv
      exact Fin.ext (congrArg (fun x : Fin (2*n) => x.val) hij)
    have hM : (h158PadCentralMoment n p hn hp).submatrix u v =
        (h158CentralEvenMoment n p hn hp).submatrix u' v' := by
      ext i j
      simp only [Matrix.submatrix_apply, h158PadCentralMoment,
        hupper.1 i, hupper.2 j, dite_true, u', v']
    rw [hM]
    exact h158CentralEvenMoment_singleton_minor_plateau n hn hp hsingle hsq hcut u' v' hu' hv'

theorem h158FoldedHybrid_generic_minorFloor (n p : ℕ) (hp : 0 < p)
    (c : H158OrbitClass n p hp) (r : ℕ) :
    (h158FoldedGenericProfile n p hp c).minorFloor r =
      -(r : ℤ)*h158FoldedWeight n p hp c+
        h158FoldedSpacing n p hp c*(r : ℤ)*((r : ℤ)-1) := by
  simp only [h158FoldedGenericProfile, FoldedHybrid.JetProfile.minorFloor,
    Bool.false_eq_true, ite_false, zero_add]
  ring

theorem H158FoldedSingletonWitness.pair_minorFloor
    (n p : ℕ) (hp : 0 < p) (c : H158PairClass n p hp) (k k' : ℕ)
    (hk : k ∈ h158PoleSet n) (hk' : k' ∈ h158PoleSet n)
    (hs : H158PoleSingleton p n k) (hs' : H158PoleSingleton p n k')
    (hc : k-48*n-1 < p) (hc' : k'-48*n-1 < p)
    (hkc : h158ResidueClass p hp k = c.val)
    (hk'c : h158ResidueClass p hp k' = h158ReflectionClass n p hp c.val) (r : ℕ) :
    (H158FoldedSingletonWitness.pair c k k' hk hk' hs hs' hc hc' hkc hk'c).profile.minorFloor r =
      (r : ℤ)*(padicValRat p (h158Normalization n)+
        max 0 (min (h158NumeratorCount p n k-(h158PoleOrder n k : ℤ))
          (h158NumeratorCount p n k'-(h158PoleOrder n k' : ℤ))+(r : ℤ))) := by
  simp only [profile, offset, FoldedHybrid.JetProfile.minorFloor,
    h158FoldedSpacing, ite_true, one_mul]
  congr 3
  ring

theorem H158FoldedSingletonWitness.central_minorFloor (n p : ℕ) (hp : 0 < p)
    (hs : H158PoleSingleton p n (79*n+1)) (hc : (79*n+1)-48*n-1 < p) (r : ℕ) :
    (H158FoldedSingletonWitness.central (hp := hp) hs hc).profile.minorFloor r =
      (r : ℤ)*(padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n (79*n+1)-(h158PoleOrder n (79*n+1) : ℤ)+
          2*(r : ℤ)-1)) := by
  simp only [profile, offset, FoldedHybrid.JetProfile.minorFloor, h158FoldedSpacing, ite_true]
  congr 3
  ring

/-- The nonlinear profiles now bound minors of the actual complete folded
block matrix, not a surrogate or an isolated orbit. -/
theorem h158_folded_hybrid_minor_allocation_floor {p r : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (choice : H158FoldedHybridChoice n p hp)
    (f g : Fin r → H158FoldedColumn n p hp)
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p (FoldedHybrid.allocationFloor (h158FoldedHybridProfile n p hp choice) f)
      ((h158FoldedAssembledMoment n p hn hp).submatrix f g).det :=
  FoldedHybrid.formal_block_minor_allocation_floor
    (h158FoldedMoment n p hn hp) (h158FoldedHybridProfile n p hp choice)
    (h158FoldedHybrid_entry_floor n hn hp hsq choice) f g hf hg

/-- The remaining input is solely a finite integer allocation inequality.
Actual block coefficients, both harmonic cutoffs, central padding, two-sided
Cauchy--Binet selection and the row-scaling charge have all been discharged. -/
theorem h158_folded_hybrid_det_floor_of_allocation_bound {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2) (hsq : 158*n+2 < p^2)
    (choice : H158FoldedHybridChoice n p hp) (L : ℤ)
    (halloc : ∀ k : H158OrbitClass n p hp → ℕ,
      (∑ c, k c) = 2*n → (∀ c, k c ≤ 4*n) →
      L ≤ ∑ c, (h158FoldedHybridProfile n p hp choice c).minorFloor (k c)) :
    FormalAtLeast p (L-(h158RowFee n p : ℤ)) (h158SevenMatrix n).det := by
  apply h158_det_floor_of_scaled_floor n p (Fact.out : p.Prime) L
  rw [h158_scaled_folded_fin_factorization n hn hp hp2]
  apply formal_det_mul_mul_transpose_floor _ _ L
  · intro i u m
    exact Or.inr (h158FoldedEvaluationFin_coeff_nonneg n p (Fact.out : p.Prime) hsq i u m)
  · intro f g hf hg
    have hf' := (h158FoldedColumnEquiv n p hp).symm.injective.comp hf
    have hg' := (h158FoldedColumnEquiv n p hp).symm.injective.comp hg
    have h := h158_folded_hybrid_minor_allocation_floor n hn hp (by omega) choice
      ((h158FoldedColumnEquiv n p hp).symm ∘ f)
      ((h158FoldedColumnEquiv n p hp).symm ∘ g) hf' hg'
    apply formal_mono h
    exact halloc _ (classCount_sum _) (classCount_le_jet_count _ hf')

def h158FoldedHybridAllocations (n p : ℕ) (hp : 0 < p) :
    Finset (H158OrbitClass n p hp → Fin (4*n+1)) :=
  univ.filter (fun k => (∑ c, (k c).val) = 2*n)

theorem h158FoldedHybridAllocations_nonempty (n p : ℕ) (hp : 0 < p) :
    (h158FoldedHybridAllocations n p hp).Nonempty := by
  classical
  let k : H158OrbitClass n p hp → Fin (4*n+1) :=
    fun c => if c = none then ⟨2*n, by omega⟩ else 0
  refine ⟨k, mem_filter.mpr ⟨mem_univ _, ?_⟩⟩
  simp [k, Fintype.sum_option]

/-- An exact finite minimum, with no asymptotic constant or unproved local
valuation supplied. Computing its global prime budget is a separate task. -/
def h158FoldedHybridMinimum (n p : ℕ) (hp : 0 < p)
    (choice : H158FoldedHybridChoice n p hp) : ℤ :=
  (h158FoldedHybridAllocations n p hp).inf' (h158FoldedHybridAllocations_nonempty n p hp)
    (fun k => ∑ c, (h158FoldedHybridProfile n p hp choice c).minorFloor (k c).val)

theorem h158FoldedHybridMinimum_le (n p : ℕ) (hp : 0 < p)
    (choice : H158FoldedHybridChoice n p hp) (k : H158OrbitClass n p hp → ℕ)
    (hsum : (∑ c, k c) = 2*n) (hbound : ∀ c, k c ≤ 4*n) :
    h158FoldedHybridMinimum n p hp choice ≤
      ∑ c, (h158FoldedHybridProfile n p hp choice c).minorFloor (k c) := by
  let k' : H158OrbitClass n p hp → Fin (4*n+1) := fun c => ⟨k c, by have := hbound c; omega⟩
  exact Finset.inf'_le _ (show k' ∈ h158FoldedHybridAllocations n p hp from
    mem_filter.mpr ⟨mem_univ _, hsum⟩)

/-- Pointwise main-prime theorem for the complete original determinant.
This finite-minimum result asserts no missing global arithmetic estimate. -/
theorem h158_folded_hybrid_det_minimum_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2) (hsq : 158*n+2 < p^2)
    (choice : H158FoldedHybridChoice n p hp) :
    FormalAtLeast p (h158FoldedHybridMinimum n p hp choice-(h158RowFee n p : ℤ))
      (h158SevenMatrix n).det :=
  h158_folded_hybrid_det_floor_of_allocation_bound n hn hp hp2 hsq choice
    (h158FoldedHybridMinimum n p hp choice) (h158FoldedHybridMinimum_le n p hp choice)

theorem h158FoldedHybrid_all_generic_allocation {r : ℕ} (n p : ℕ) (hp : 0 < p)
    (f : Fin r → H158FoldedColumn n p hp) :
    FoldedHybrid.allocationFloor (h158FoldedHybridProfile n p hp (fun _ => none)) f =
      WeightedBlockSelection.weightedAllocationFloor
        (h158FoldedWeight n p hp) (h158FoldedSpacing n p hp) f := by
  unfold FoldedHybrid.allocationFloor WeightedBlockSelection.weightedAllocationFloor
  apply sum_congr rfl
  intro c hc
  exact h158FoldedHybrid_generic_minorFloor n p hp c (classCount f c)

namespace FoldedHybridRegression

private instance prime37 : Fact (Nat.Prime 37) := ⟨by norm_num⟩
private instance prime127 : Fact (Nat.Prime 127) := ⟨by norm_num⟩

private def pair37 : H158PairClass 1 37 (by norm_num) :=
  ⟨h158ResidueClass 37 (by norm_num) 76, by
    have hk : 76 ∈ h158PoleSet 1 := (h158PoleSet_mem_iff 1 76).mpr (by norm_num)
    rw [← h158ReflectedPole_residueClass 1 37 76 (by norm_num) hk]
    change 76 % 37 < (158*1+2-76) % 37
    norm_num⟩

private def pair37Witness : H158FoldedSingletonWitness 1 37 (by norm_num) (some pair37) := by
  apply H158FoldedSingletonWitness.pair pair37 76 84
    ((h158PoleSet_mem_iff 1 76).mpr (by norm_num))
    ((h158PoleSet_mem_iff 1 84).mpr (by norm_num))
    (h158_poleSingleton_of_interval 37 1 76 (by norm_num) (by norm_num))
    (h158_poleSingleton_of_interval 37 1 84 (by norm_num) (by norm_num))
    (by norm_num) (by norm_num) rfl
  have he : h158ReflectedPole 1 76 = 84 := by norm_num [h158ReflectedPole]
  simpa only [pair37, he] using h158ReflectedPole_residueClass 1 37 76 (by norm_num)
    ((h158PoleSet_mem_iff 1 76).mpr (by norm_num))

private def central37Witness : H158FoldedSingletonWitness 1 37 (by norm_num) none :=
  .central (h158_poleSingleton_of_interval 37 1 80 (by norm_num) (by norm_num)) (by norm_num)

/-- One paired plateau, the central plateau, and generic bounds elsewhere. -/
private def choice37 : H158FoldedHybridChoice 1 37 (by norm_num) := by
  classical
  intro c
  cases c with
  | none => exact some central37Witness
  | some c =>
    by_cases h : c = pair37
    · subst c
      exact some pair37Witness
    · exact none

theorem n1p37_choice_pair_enabled : choice37 (some pair37) = some pair37Witness := by
  simp [choice37]

theorem n1p37_choice_center_enabled : choice37 none = some central37Witness := rfl

theorem n1p37_choice_other_pairs_generic (c : H158PairClass 1 37 (by norm_num))
    (hc : c ≠ pair37) : choice37 (some c) = none := by
  simp [choice37, hc]

theorem n1p37_hybrid_actual_determinant :
    FormalAtLeast 37
      (h158FoldedHybridMinimum 1 37 (by norm_num) choice37-(h158RowFee 1 37 : ℤ))
      (h158SevenMatrix 1).det :=
  h158_folded_hybrid_det_minimum_floor 1 (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) choice37

theorem n1p37_padded_upper_row_minor_zero :
    ((h158PadCentralMoment 1 37 (by norm_num) (by norm_num)).submatrix
      (fun _ : Fin 1 => (2 : Fin 4)) (fun _ : Fin 1 => (0 : Fin 4))).det = 0 := by
  apply h158PadCentralMoment_minor_zero_of_upper
  exact Or.inl ⟨0, by norm_num⟩

theorem n1p37_padded_upper_column_minor_zero :
    ((h158PadCentralMoment 1 37 (by norm_num) (by norm_num)).submatrix
      (fun _ : Fin 1 => (0 : Fin 4)) (fun _ : Fin 1 => (2 : Fin 4))).det = 0 := by
  apply h158PadCentralMoment_minor_zero_of_upper
  exact Or.inr ⟨0, by norm_num⟩

private def counterPair : H158PairClass 4 127 (by norm_num) :=
  ⟨h158ResidueClass 127 (by norm_num) 295,
    FoldedSingletonRegression.n4p127_actual_pair_representative⟩

/-- The asymmetric n4p127 orbit cannot supply ANY eligibility witness:
its reflected residue has the unique actual pole 339, whose cutoff is 146.
This rules out bypassing the second cutoff by choosing another pole. -/
theorem n4p127_no_plateau_witness :
    ¬Nonempty (H158FoldedSingletonWitness 4 127 (by norm_num) (some counterPair)) := by
  rintro ⟨w⟩
  cases w with
  | pair c k k' hk hk' hs hs' hc hc' hkc hk'c =>
    have href : h158ResidueClass 127 (by norm_num) 339 =
        h158ReflectionClass 4 127 (by norm_num) counterPair.val := by
      simpa only [counterPair, FoldedSingletonRegression.n4p127_actual_reflection] using
        h158ReflectedPole_residueClass 4 127 295 (by norm_num)
          ((h158PoleSet_mem_iff 4 295).mpr (by norm_num))
    have hd1 := residue_class_difference_dvd (by norm_num : 0 < 127) _ k' hk'c
    have hd2 := residue_class_difference_dvd (by norm_num : 0 < 127) _ 339 href
    have hd : (127 : ℤ) ∣ (k' : ℤ)-339 := by
      have hd := dvd_sub hd1 hd2
      have he : ((k' : ℤ)-(h158ReflectionClass 4 127 (by norm_num) counterPair.val).val)-
          ((339 : ℤ)-(h158ReflectionClass 4 127 (by norm_num) counterPair.val).val) =
          (k' : ℤ)-339 := by ring
      simp only [Nat.cast_ofNat] at hd
      rwa [he] at hd
    have he : k' = 339 := FoldedSingletonRegression.n4p127_both_singletons.2 k' hk' hd
    rw [he] at hc'
    norm_num at hc'

end FoldedHybridRegression

#print axioms FoldedHybrid.formal_block_minor_allocation_floor
#print axioms h158PadCentralMoment_minor_zero_of_upper
#print axioms h158PadCentralMoment_singleton_minor_plateau
#print axioms h158FoldedHybrid_block_minor_floor
#print axioms h158_folded_hybrid_minor_allocation_floor
#print axioms h158_folded_hybrid_det_floor_of_allocation_bound
#print axioms h158_folded_hybrid_det_minimum_floor
#print axioms FoldedHybridRegression.n1p37_hybrid_actual_determinant
#print axioms FoldedHybridRegression.n4p127_no_plateau_witness

end OddZetaMixed
