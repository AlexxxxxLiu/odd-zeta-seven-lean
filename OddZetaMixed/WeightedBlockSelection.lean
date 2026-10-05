import OddZetaMixed.FormalBlockSelection

/-!
# Class-dependent jet spacing in block minor selection

The entry floor in class `c` is `-w c + e c * u + e c * v`.
Nonnegative integer spacings give the selection cost
`-k c * w c + e c * k c * (k c - 1)` for independent injective row
and column selections. In particular, ordinary and central blocks can
use spacings one and two in the same block-diagonal matrix.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.WeightedBlockSelection

open Finset FormalBlockSelection LocalJetValuation

variable {C : Type*} [DecidableEq C]

def weightedAllocationFloor [Fintype C] {r J : ℕ} (w e : C → ℤ)
    (f : Fin r → C × Fin J) : ℤ :=
  ∑ c, (-(classCount f c : ℤ) * w c +
    e c * (classCount f c : ℤ) * ((classCount f c : ℤ) - 1))

theorem weightedAllocationFloor_comp_perm [Fintype C] {r J : ℕ}
    (w e : C → ℤ) (f : Fin r → C × Fin J) (σ : Equiv.Perm (Fin r)) :
    weightedAllocationFloor w e (f ∘ σ) = weightedAllocationFloor w e f := by
  simp only [weightedAllocationFloor, classCount_comp_perm]

theorem weightedAllocationFloor_eq_of_classCount_eq [Fintype C] {r J : ℕ}
    (w e : C → ℤ) (f g : Fin r → C × Fin J)
    (hcount : ∀ c, classCount f c = classCount g c) :
    weightedAllocationFloor w e f = weightedAllocationFloor w e g := by
  simp only [weightedAllocationFloor, hcount]

theorem weighted_matching_entry_sum_lower [Fintype C] {r J : ℕ}
    (w e : C → ℤ) (he : ∀ c, 0 ≤ e c)
    (f g : Fin r → C × Fin J)
    (hf : Function.Injective f) (hg : Function.Injective g)
    (hmatch : ∀ i, (f i).1 = (g i).1) :
    weightedAllocationFloor w e f ≤
      ∑ i, (-w (f i).1 + e (f i).1 * ((f i).2.val : ℤ) +
        e (f i).1 * ((g i).2.val : ℤ)) := by
  have hclass : ∀ c, classFiber f c = classFiber g c := by
    intro c
    apply filter_congr
    intro i hi
    simp only [hmatch i]
  have hcount : ∀ c, classCount f c = classCount g c := by
    intro c
    unfold classCount
    rw [hclass c]
  rw [weightedAllocationFloor, ← Finset.sum_fiberwise univ (fun i => (f i).1)]
  apply sum_le_sum
  intro c hc
  change -(classCount f c : ℤ) * w c +
      e c * (classCount f c : ℤ) * ((classCount f c : ℤ) - 1) ≤
    ∑ i ∈ classFiber f c, (-w (f i).1 + e (f i).1 * ((f i).2.val : ℤ) +
      e (f i).1 * ((g i).2.val : ℤ))
  have hsum : (∑ i ∈ classFiber f c,
      (-w (f i).1 + e (f i).1 * ((f i).2.val : ℤ) +
        e (f i).1 * ((g i).2.val : ℤ))) =
      -(classCount f c : ℤ) * w c + e c * classJetSum f c +
        e c * classJetSum g c := by
    calc
      _ = ∑ i ∈ classFiber f c,
          (-w c + e c * ((f i).2.val : ℤ) + e c * ((g i).2.val : ℤ)) := by
        apply sum_congr rfl
        intro i hi
        rw [(mem_filter.mp hi).2]
      _ = _ := by
        rw [sum_add_distrib, sum_add_distrib, ← mul_sum, ← mul_sum]
        have hs : (∑ i ∈ classFiber f c, ((g i).2.val : ℤ)) = classJetSum g c := by
          rw [hclass c]
          rfl
        rw [hs, sum_const, nsmul_eq_mul]
        change (classCount f c : ℤ) * (-w c) + e c * classJetSum f c +
          e c * classJetSum g c = _
        ring
  rw [hsum]
  have hrow := classJetSum_lower f hf c
  have hcol := classJetSum_lower g hg c
  rw [← hcount c] at hcol
  have hjets : (classCount f c : ℤ) * ((classCount f c : ℤ) - 1) ≤
      classJetSum f c + classJetSum g c := by
    linarith
  calc
    _ = -(classCount f c : ℤ) * w c +
        e c * ((classCount f c : ℤ) * ((classCount f c : ℤ) - 1)) := by ring
    _ ≤ -(classCount f c : ℤ) * w c +
        e c * (classJetSum f c + classJetSum g c) :=
      add_le_add le_rfl (mul_le_mul_of_nonneg_left hjets (he c))
    _ = _ := by ring

/-- The floor is proved coefficientwise from actual block entries. The
selected rows and columns need not have the same class counts: any
nonmatching determinant term vanishes. -/
theorem formal_block_minor_weighted_allocation_floor [Fintype C] {p r J : ℕ}
    [Fact p.Prime] (A : C → Matrix (Fin J) (Fin J) SevenPolynomial)
    (w e : C → ℤ) (he : ∀ c, 0 ≤ e c)
    (hentry : ∀ c u v, FormalAtLeast p
      (-w c + e c * (u.val : ℤ) + e c * (v.val : ℤ)) (A c u v))
    (f g : Fin r → C × Fin J)
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p (weightedAllocationFloor w e f)
      ((blockMatrix A).submatrix f g).det := by
  classical
  apply formal_determinant_lower_of_termwise
  intro σ
  by_cases hmatch : ∀ i, (f (σ i)).1 = (g i).1
  · have hprod := formal_prod univ
      (fun i => (blockMatrix A).submatrix f g (σ i) i)
      (fun i => -w (f (σ i)).1 + e (f (σ i)).1 * ((f (σ i)).2.val : ℤ) +
        e (f (σ i)).1 * ((g i).2.val : ℤ))
      (fun i _ => by
        simpa only [Matrix.submatrix_apply, blockMatrix, hmatch i, ite_true] using
          hentry (f (σ i)).1 (f (σ i)).2 (g i).2)
    apply formal_mono hprod
    have h := weighted_matching_entry_sum_lower w e he
      (f ∘ σ) g (hf.comp σ.injective) hg hmatch
    rwa [weightedAllocationFloor_comp_perm] at h
  · push Not at hmatch
    obtain ⟨i, hi⟩ := hmatch
    have hz : (∏ j, (blockMatrix A).submatrix f g (σ j) j) = 0 := by
      apply prod_eq_zero (mem_univ i)
      simp [Matrix.submatrix, blockMatrix, hi]
    rw [hz]
    exact formal_zero p _

/-- A uniform minor floor now requires only a finite allocation inequality,
not a premise about determinants or selected minors. -/
theorem formal_block_minor_floor_of_weighted_allocation_bound [Fintype C]
    {p r J : ℕ} [Fact p.Prime]
    (A : C → Matrix (Fin J) (Fin J) SevenPolynomial)
    (w e : C → ℤ) (he : ∀ c, 0 ≤ e c)
    (hentry : ∀ c u v, FormalAtLeast p
      (-w c + e c * (u.val : ℤ) + e c * (v.val : ℤ)) (A c u v))
    (L : ℤ)
    (halloc : ∀ k : C → ℕ, (∑ c, k c) = r → (∀ c, k c ≤ J) →
      L ≤ ∑ c, (-(k c : ℤ) * w c + e c * (k c : ℤ) * ((k c : ℤ) - 1)))
    (f g : Fin r → C × Fin J)
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p L ((blockMatrix A).submatrix f g).det := by
  apply formal_mono
    (formal_block_minor_weighted_allocation_floor A w e he hentry f g hf hg)
  exact halloc (classCount f) (classCount_sum f) (classCount_le_jet_count f hf)

@[simp] theorem weightedAllocationFloor_one [Fintype C] {r J : ℕ}
    (w : C → ℤ) (f : Fin r → C × Fin J) :
    weightedAllocationFloor w (fun _ => 1) f = allocationFloor w f := by
  simp only [weightedAllocationFloor, allocationFloor, one_mul]

/-- With ordinary spacing, the generalized theorem has exactly the
existing allocation floor, not a weakened substitute. -/
theorem formal_block_minor_ordinary_allocation_floor [Fintype C] {p r J : ℕ}
    [Fact p.Prime] (A : C → Matrix (Fin J) (Fin J) SevenPolynomial)
    (w : C → ℤ)
    (hentry : ∀ c u v, FormalAtLeast p
      (-w c + (u.val : ℤ) + (v.val : ℤ)) (A c u v))
    (f g : Fin r → C × Fin J)
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p (allocationFloor w f) ((blockMatrix A).submatrix f g).det := by
  simpa only [weightedAllocationFloor_one, one_mul] using
    formal_block_minor_weighted_allocation_floor A w (fun _ => 1)
      (fun _ => by norm_num) (by simpa only [one_mul] using hentry) f g hf hg

/-- The central classes gain one additional copy of `k * (k - 1)`.
This identity makes the difference between spacings one and two explicit. -/
theorem weightedAllocationFloor_one_two [Fintype C] {r J : ℕ}
    (w : C → ℤ) (central : C → Prop) [DecidablePred central]
    (f : Fin r → C × Fin J) :
    weightedAllocationFloor w (fun c => if central c then 2 else 1) f =
      allocationFloor w f + ∑ c ∈ univ.filter central,
        (classCount f c : ℤ) * ((classCount f c : ℤ) - 1) := by
  rw [weightedAllocationFloor, allocationFloor, sum_filter, ← sum_add_distrib]
  apply sum_congr rfl
  intro c hc
  split_ifs <;> ring

/-- Mixed ordinary and central blocks in a single actual block matrix. -/
theorem formal_block_minor_one_two_allocation_floor [Fintype C] {p r J : ℕ}
    [Fact p.Prime] (A : C → Matrix (Fin J) (Fin J) SevenPolynomial)
    (w : C → ℤ) (central : C → Prop) [DecidablePred central]
    (hentry : ∀ c u v, FormalAtLeast p
      (-w c + (if central c then 2 else 1) * (u.val : ℤ) +
        (if central c then 2 else 1) * (v.val : ℤ)) (A c u v))
    (f g : Fin r → C × Fin J)
    (hf : Function.Injective f) (hg : Function.Injective g) :
    FormalAtLeast p
      (allocationFloor w f + ∑ c ∈ univ.filter central,
        (classCount f c : ℤ) * ((classCount f c : ℤ) - 1))
      ((blockMatrix A).submatrix f g).det := by
  have he : ∀ c : C, 0 ≤ (if central c then 2 else 1 : ℤ) := by
    intro c
    split_ifs <;> norm_num
  simpa only [weightedAllocationFloor_one_two] using
    formal_block_minor_weighted_allocation_floor A w
      (fun c => if central c then 2 else 1) he hentry f g hf hg

end OddZetaMixed.WeightedBlockSelection
