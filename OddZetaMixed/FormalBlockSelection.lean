import OddZetaMixed.FormalPolynomialMinors
import OddZetaMixed.H158AssembledClusters
import OddZetaMixed.H158MinorCostTransfer
import Mathlib.Data.Finset.Sort

/-!
# Coefficientwise floors for independent selections from diagonal blocks

The selected rows and columns may have different class counts. Such a
selection has zero determinant. Otherwise injectivity supplies the jet
spacing cost on both sides, without a premise about the selected minors.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed.FormalBlockSelection
open Finset LocalJetValuation

variable {C : Type*} [DecidableEq C]

def classFiber {r J : ℕ} (f : Fin r → C × Fin J) (c : C) : Finset (Fin r) :=
  univ.filter (fun i => (f i).1 = c)

def classCount {r J : ℕ} (f : Fin r → C × Fin J) (c : C) : ℕ :=
  (classFiber f c).card

def classJetSum {r J : ℕ} (f : Fin r → C × Fin J) (c : C) : ℤ :=
  ∑ i ∈ classFiber f c, ((f i).2.val : ℤ)

def allocationFloor [Fintype C] {r J : ℕ} (w : C → ℤ)
    (f : Fin r → C × Fin J) : ℤ :=
  ∑ c, (-(classCount f c : ℤ) * w c +
    (classCount f c : ℤ) * ((classCount f c : ℤ) - 1))

def blockMatrix {J : ℕ} (A : C → Matrix (Fin J) (Fin J) SevenPolynomial) :
    Matrix (C × Fin J) (C × Fin J) SevenPolynomial :=
  fun u v => if u.1 = v.1 then A u.1 u.2 v.2 else 0

theorem twice_sum_nat_set_lower (s : Finset ℕ) :
    (s.card : ℤ) * ((s.card : ℤ) - 1) ≤ 2 * ∑ x ∈ s, (x : ℤ) := by
  have h := SignedMinors.twice_sum_indices_lower (s.orderEmbOfFin rfl).strictMono
  have hs : (∑ i : Fin s.card, (s.orderEmbOfFin rfl i : ℤ)) =
      ∑ x ∈ s, (x : ℤ) := by
    conv_rhs => rw [← s.map_orderEmbOfFin_univ rfl]
    rw [Finset.sum_map]
    rfl
  rwa [hs] at h

theorem classJetSum_lower {r J : ℕ} (f : Fin r → C × Fin J)
    (hf : Function.Injective f) (c : C) :
    (classCount f c : ℤ) * ((classCount f c : ℤ) - 1) ≤
      2 * classJetSum f c := by
  let s := classFiber f c
  let a := fun i : Fin r => (f i).2.val
  have hi : Set.InjOn a s := by
    intro i hi j hj hij
    apply hf
    apply Prod.ext
    · exact (mem_filter.mp hi).2.trans (mem_filter.mp hj).2.symm
    · exact Fin.ext hij
  have hc : (s.image a).card = classCount f c := card_image_of_injOn hi
  have hs : (∑ x ∈ s.image a, (x : ℤ)) = classJetSum f c := by
    rw [sum_image]
    · rfl
    · exact hi
  have h := twice_sum_nat_set_lower (s.image a)
  rwa [hc, hs] at h

theorem classCount_comp_perm {r J : ℕ} (f : Fin r → C × Fin J)
    (σ : Equiv.Perm (Fin r)) (c : C) :
    classCount (f ∘ σ) c = classCount f c := by
  simp only [classCount, classFiber, card_eq_sum_ones, sum_filter]
  exact Equiv.sum_comp σ (fun i => if (f i).1 = c then 1 else 0)

theorem classCount_eq_of_matching {r J : ℕ} (f g : Fin r → C × Fin J)
    (σ : Equiv.Perm (Fin r)) (hmatch : ∀ i, (f (σ i)).1 = (g i).1) :
    ∀ c, classCount f c = classCount g c := by
  intro c
  rw [← classCount_comp_perm f σ c]
  unfold classCount classFiber
  apply congrArg Finset.card
  apply filter_congr
  intro i hi
  simp only [Function.comp_apply, hmatch i]

/-- A mismatched class count kills every determinant term. Injectivity is
not needed for this zero statement. -/
theorem block_minor_eq_zero_of_count_mismatch {r J : ℕ}
    (A : C → Matrix (Fin J) (Fin J) SevenPolynomial)
    (f g : Fin r → C × Fin J)
    (hmismatch : ∃ c, classCount f c ≠ classCount g c) :
    ((blockMatrix A).submatrix f g).det = 0 := by
  classical
  rw [Matrix.det_apply]
  apply sum_eq_zero
  intro σ hσ
  have hbad : ∃ i, (f (σ i)).1 ≠ (g i).1 := by
    by_contra h
    push Not at h
    obtain ⟨c, hc⟩ := hmismatch
    exact hc (classCount_eq_of_matching f g σ h c)
  obtain ⟨i, hi⟩ := hbad
  have hz : (∏ j, (blockMatrix A).submatrix f g (σ j) j) = 0 := by
    apply prod_eq_zero (mem_univ i)
    simp [Matrix.submatrix, blockMatrix, hi]
  change Equiv.Perm.sign σ • (∏ j, (blockMatrix A).submatrix f g (σ j) j) = 0
  rw [hz, smul_zero]

theorem allocationFloor_comp_perm [Fintype C] {r J : ℕ}
    (w : C → ℤ) (f : Fin r → C × Fin J) (σ : Equiv.Perm (Fin r)) :
    allocationFloor w (f ∘ σ) = allocationFloor w f := by
  simp only [allocationFloor, classCount_comp_perm]

theorem matching_entry_sum_lower [Fintype C] {r J : ℕ}
    (w : C → ℤ) (f g : Fin r → C × Fin J)
    (hf : Function.Injective f) (hg : Function.Injective g)
    (hmatch : ∀ i, (f i).1 = (g i).1) :
    allocationFloor w f ≤
      ∑ i, (-w (f i).1 + ((f i).2.val : ℤ) + ((g i).2.val : ℤ)) := by
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
  change -(classCount f c : ℤ) * w c +
      (classCount f c : ℤ) * ((classCount f c : ℤ) - 1) ≤
    ∑ i ∈ classFiber f c, (-w (f i).1 + ((f i).2.val : ℤ) + ((g i).2.val : ℤ))
  have hsum : (∑ i ∈ classFiber f c,
      (-w (f i).1 + ((f i).2.val : ℤ) + ((g i).2.val : ℤ))) =
      -(classCount f c : ℤ) * w c + classJetSum f c + classJetSum g c := by
    calc
      _ = ∑ i ∈ classFiber f c,
          (-w c + ((f i).2.val : ℤ) + ((g i).2.val : ℤ)) := by
        apply sum_congr rfl
        intro i hi
        rw [(mem_filter.mp hi).2]
      _ = _ := by
        rw [sum_add_distrib, sum_add_distrib]
        have hs : (∑ i ∈ classFiber f c, ((g i).2.val : ℤ)) = classJetSum g c := by
          rw [hclass c]
          rfl
        rw [hs, sum_const, nsmul_eq_mul]
        change (classCount f c : ℤ) * (-w c) + classJetSum f c + classJetSum g c = _
        ring
  rw [hsum]
  have hrow := classJetSum_lower f hf c
  have hcol := classJetSum_lower g hg c
  rw [← hcount c] at hcol
  linarith

/-- Independent row and column selections in a genuine block-diagonal
matrix. The floor is derived from entry floors and injectivity alone. -/
theorem formal_block_minor_allocation_floor [Fintype C] {p r J : ℕ}
    [Fact p.Prime] (A : C → Matrix (Fin J) (Fin J) SevenPolynomial)
    (w : C → ℤ)
    (hentry : ∀ c u v, FormalAtLeast p
      (-w c + (u.val : ℤ) + (v.val : ℤ)) (A c u v))
    (f g : Fin r → C × Fin J)
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p (allocationFloor w f) ((blockMatrix A).submatrix f g).det := by
  classical
  apply formal_determinant_lower_of_termwise
  intro σ
  by_cases hmatch : ∀ i, (f (σ i)).1 = (g i).1
  · have hprod := formal_prod univ
      (fun i => (blockMatrix A).submatrix f g (σ i) i)
      (fun i => -w (f (σ i)).1 + ((f (σ i)).2.val : ℤ) + ((g i).2.val : ℤ))
      (fun i _ => by
        simpa only [Matrix.submatrix_apply, blockMatrix, hmatch i, ite_true] using
          hentry (f (σ i)).1 (f (σ i)).2 (g i).2)
    apply formal_mono hprod
    have h := matching_entry_sum_lower w (f ∘ σ) g (hf.comp σ.injective) hg hmatch
    rwa [allocationFloor_comp_perm] at h
  · push Not at hmatch
    obtain ⟨i, hi⟩ := hmatch
    have hz : (∏ j, (blockMatrix A).submatrix f g (σ j) j) = 0 := by
      apply prod_eq_zero (mem_univ i)
      simp [Matrix.submatrix, blockMatrix, hi]
    rw [hz]
    exact formal_zero p _

theorem classCount_sum [Fintype C] {r J : ℕ} (f : Fin r → C × Fin J) :
    ∑ c, classCount f c = r := by
  simp only [classCount, classFiber, card_eq_sum_ones]
  rw [Finset.sum_fiberwise]
  simp

theorem classCount_le_jet_count {r J : ℕ} (f : Fin r → C × Fin J)
    (hf : Function.Injective f) (c : C) : classCount f c ≤ J := by
  have hi : Set.InjOn (fun i => (f i).2) (classFiber f c) := by
    intro i hi j hj hij
    apply hf
    exact Prod.ext ((mem_filter.mp hi).2.trans (mem_filter.mp hj).2.symm) hij
  have hc := Finset.card_image_of_injOn hi
  calc
    classCount f c = ((classFiber f c).image (fun i => (f i).2)).card := hc.symm
    _ ≤ Fintype.card (Fin J) := Finset.card_le_univ _
    _ = J := Fintype.card_fin J

/-- Actual residue anchors, not a specialization or an abstract replacement
for the cluster moments. No selected-minor premise remains. -/
theorem h158_assembled_minor_allocation_floor {p r : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (f g : Fin r → H158ClusterColumn n p)
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p (allocationFloor (fun c : Fin p => h158ClassCost p n c.val) f)
      ((h158AssembledMoments n p hn hp (fun c => -(c.val : ℤ))).submatrix f g).det := by
  let A := fun c : Fin p =>
    h158ClusterMoment n hn (h158ResidueClass p hp) c (-(c.val : ℚ))
  have hentry : ∀ c u v, FormalAtLeast p
      (-h158ClassCost p n c.val + (u.val : ℤ) + (v.val : ℤ)) (A c u v) := by
    intro c u v
    convert h158_residueClusterMoment_floor n hn hp hsq c u v using 1
    unfold h158ClassCost
    ring
  have h := formal_block_minor_allocation_floor A
    (fun c => h158ClassCost p n c.val) hentry f g hf hg
  have hA : blockMatrix A =
      h158AssembledMoments n p hn hp (fun c => -(c.val : ℤ)) := by
    ext u v
    simp only [blockMatrix, h158AssembledMoments_apply, Int.cast_neg, Int.cast_natCast, A]
  rwa [hA] at h

/-- The actual Fin-indexed interface consumed by rectangular expansion. -/
theorem h158_assembledFin_minor_allocation_floor {p r : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (f g : Fin r → Fin (p*(4*n)))
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p
      (allocationFloor (fun c : Fin p => h158ClassCost p n c.val)
        ((h158ClusterColumnEquiv n p).symm ∘ f))
      ((h158AssembledMomentsFin n p hn hp (fun c => -(c.val : ℤ))).submatrix f g).det := by
  exact h158_assembled_minor_allocation_floor n hn hp hsq
    ((h158ClusterColumnEquiv n p).symm ∘ f)
    ((h158ClusterColumnEquiv n p).symm ∘ g)
    ((h158ClusterColumnEquiv n p).symm.injective.comp hf)
    ((h158ClusterColumnEquiv n p).symm.injective.comp hg)

theorem h158_assembledFin_minor_eq_zero_of_count_mismatch {p r : ℕ}
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (anchor : Fin p → ℤ)
    (f g : Fin r → Fin (p*(4*n)))
    (hmismatch : ∃ c,
      classCount ((h158ClusterColumnEquiv n p).symm ∘ f) c ≠
        classCount ((h158ClusterColumnEquiv n p).symm ∘ g) c) :
    ((h158AssembledMomentsFin n p hn hp anchor).submatrix f g).det = 0 := by
  exact block_minor_eq_zero_of_count_mismatch
    (fun c => h158ClusterMoment n hn (h158ResidueClass p hp) c (anchor c : ℚ))
    ((h158ClusterColumnEquiv n p).symm ∘ f)
    ((h158ClusterColumnEquiv n p).symm ∘ g) hmismatch

/-- A uniform interface whose only remaining hypothesis is a finite
integer allocation inequality, not a polynomial minor bound. -/
theorem h158_assembledFin_minor_floor_of_allocation_bound {p r : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2) (L : ℤ)
    (halloc : ∀ k : Fin p → ℕ, (∑ c, k c) = r → (∀ c, k c ≤ 4*n) →
      L ≤ ∑ c, (-(k c : ℤ) * h158ClassCost p n c.val +
        (k c : ℤ) * ((k c : ℤ) - 1)))
    (f g : Fin r → Fin (p*(4*n)))
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p L
      ((h158AssembledMomentsFin n p hn hp (fun c => -(c.val : ℤ))).submatrix f g).det := by
  apply formal_mono (h158_assembledFin_minor_allocation_floor n hn hp hsq f g hf hg)
  exact halloc (classCount ((h158ClusterColumnEquiv n p).symm ∘ f))
    (classCount_sum _) (classCount_le_jet_count _
      ((h158ClusterColumnEquiv n p).symm.injective.comp hf))

theorem h158_selections_nonempty (n p : ℕ) (hn : 0 < n) (hp : 0 < p) :
    (univ : Finset (Fin (2*n) → Fin (p*(4*n)))).Nonempty := by
  let z : Fin (p*(4*n)) := ⟨0, Nat.mul_pos hp (Nat.mul_pos (by decide) hn)⟩
  exact ⟨fun _ => z, mem_univ _⟩

/-- A finite minimum over ALL selections, including noninjective ones.
This is a safe, possibly weak floor; its rank is still exactly 2*n.
No asymptotic numerical constant is asserted here. -/
def h158MinAllocationFloor (n p : ℕ) (hn : 0 < n) (hp : 0 < p) : ℤ :=
  univ.inf' (h158_selections_nonempty n p hn hp)
    (fun f : Fin (2*n) → Fin (p*(4*n)) =>
      allocationFloor (fun c : Fin p => h158ClassCost p n c.val)
        ((h158ClusterColumnEquiv n p).symm ∘ f))

theorem h158MinAllocationFloor_le (n p : ℕ) (hn : 0 < n) (hp : 0 < p)
    (f : Fin (2*n) → Fin (p*(4*n))) :
    h158MinAllocationFloor n p hn hp ≤
      allocationFloor (fun c : Fin p => h158ClassCost p n c.val)
        ((h158ClusterColumnEquiv n p).symm ∘ f) :=
  Finset.inf'_le _ (mem_univ f)

/-- Every actual assembled minor satisfies the finite minimum floor,
without a hypothesis on minors or a conjectural arithmetic rate. -/
theorem h158_assembledFin_minor_min_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (f g : Fin (2*n) → Fin (p*(4*n)))
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p (h158MinAllocationFloor n p hn hp)
      ((h158AssembledMomentsFin n p hn hp (fun c => -(c.val : ℤ))).submatrix f g).det :=
  formal_mono (h158_assembledFin_minor_allocation_floor n hn hp hsq f g hf hg)
    (h158MinAllocationFloor_le n p hn hp f)

/-- Unfolded all-main-prime coefficient bound for the actual determinant.
The finite allocation minimum is not replaced by a claimed global constant. -/
theorem h158_det_unfolded_allocation_floor (n p : ℕ) (hn : 0 < n)
    (hp : p.Prime) (hsq : 158*n+2 < p^2) :
    FormalAtLeast p (h158MinAllocationFloor n p hn hp.pos - (h158RowFee n p : ℤ))
      (h158SevenMatrix n).det := by
  let : Fact p.Prime := ⟨hp⟩
  apply h158_det_floor_of_assembled_minor_floor n p hn hp hsq (fun c => -(c.val : ℤ))
    (h158MinAllocationFloor n p hn hp.pos)
  intro f g hf hg
  exact h158_assembledFin_minor_min_floor n hn hp.pos (by omega) f g hf hg

/-- Pointwise cost of the true primitive scalar, with the signed cost
retained. The only nonzero premise is the actual determinant's nonvanishing.
This is an unfolded bound, not the 995.272 asymptotic arithmetic estimate. -/
theorem h158_primitive_cost_unfolded_allocation (n p : ℕ) (hn : 0 < n)
    (hp : p.Prime) (hsq : 158*n+2 < p^2) (hdet : (h158SevenMatrix n).det ≠ 0) :
    -padicValRat p (h158PrimitiveScalar n) ≤
      (h158RowFee n p : ℤ) - h158MinAllocationFloor n p hn hp.pos := by
  let : Fact p.Prime := ⟨hp⟩
  apply h158_primitive_cost_of_assembled_minor_floor n p hn hp hsq
    (fun c => -(c.val : ℤ)) (h158MinAllocationFloor n p hn hp.pos) hdet
  intro f g hf hg
  exact h158_assembledFin_minor_min_floor n hn hp.pos (by omega) f g hf hg

end OddZetaMixed.FormalBlockSelection
