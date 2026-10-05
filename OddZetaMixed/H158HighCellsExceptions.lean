import OddZetaMixed.H158HighCellsBounds

/-! Actual endpoint/central exceptions. The bound 4950 charges at most
45 actual orbits at 110 each, for arbitrary allocation orders. -/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed.H158HighCells
open Finset LocalJetValuation
attribute [local instance] Classical.propDecidable

theorem endpoints_reflected (a : ℕ) (ha : a ∈ insert 79 h158HybridEndpoints) :
    158-a ∈ insert 79 h158HybridEndpoints := by
  simp only [h158HybridEndpoints, mem_insert, mem_union, mem_singleton, mem_Icc] at ha ⊢
  omega

theorem endpoints_le (a : ℕ) (ha : a ∈ insert 79 h158HybridEndpoints) : a ≤ 158 := by
  simp only [h158HybridEndpoints, mem_insert, mem_union, mem_singleton, mem_Icc] at ha
  omega

theorem endpoint_class_reflected (n p : ℕ) (hp : 0 < p) (a : ℕ) (ha : a ≤ 158) :
    h158ReflectionClass n p hp (h158ResidueClass p hp (a*n+1)) =
      h158ResidueClass p hp ((158-a)*n+1) := by
  rw [h158ResidueClass_eq_intResidue p hp ((158-a)*n+1)]
  apply (h158IntResidue_eq_iff p hp _ _).mpr
  simp only [h158ResidueClass, Int.cast_sub, Int.cast_add, Int.cast_mul,
    Int.cast_ofNat, Int.cast_natCast, Nat.cast_add, Nat.cast_mul, Nat.cast_one,
    Nat.cast_sub ha, Nat.cast_ofNat, ZMod.natCast_mod]
  ring

theorem exceptionalClasses_reflected (n p : ℕ) (hp : 0 < p) (c : Fin p)
    (hc : c ∈ h158HybridExceptionalClasses n p hp) :
    h158ReflectionClass n p hp c ∈ h158HybridExceptionalClasses n p hp := by
  obtain ⟨a, ha, rfl⟩ := mem_image.mp hc
  rw [endpoint_class_reflected n p hp a (endpoints_le a ha)]
  exact mem_image.mpr ⟨158-a, endpoints_reflected a ha, rfl⟩

theorem exceptionalClasses_card (n p : ℕ) (hp : 0 < p) :
    (h158HybridExceptionalClasses n p hp).card ≤ 45 := by
  exact (card_image_le).trans (by decide)

def orbitRepresentative (n p : ℕ) (hp : 0 < p) : H158OrbitClass n p hp → Fin p
  | none => h158CentralClass n p hp
  | some r => r.val

theorem orbitRepresentative_injective (n p : ℕ) (hp : 0 < p) :
    Function.Injective (orbitRepresentative n p hp) := by
  intro a b hab
  cases a with
  | none =>
    cases b with
    | none => rfl
    | some r =>
      have hr := r.property
      change h158CentralClass n p hp = r.val at hab
      rw [← hab, h158ReflectionClass_center] at hr
      exact (lt_irrefl _ hr).elim
  | some r =>
    cases b with
    | none =>
      have hr := r.property
      change r.val = h158CentralClass n p hp at hab
      rw [hab, h158ReflectionClass_center] at hr
      exact (lt_irrefl _ hr).elim
    | some s => exact congrArg some (Subtype.ext hab)

theorem exceptionalOrbit_representative (n p : ℕ) (hp : 0 < p)
    (c : H158OrbitClass n p hp) (hc : h158HybridExceptionalOrbit n p hp c) :
    orbitRepresentative n p hp c ∈ h158HybridExceptionalClasses n p hp := by
  cases c with
  | none =>
    exact mem_image.mpr ⟨79, mem_insert_self _ _, h158Center_residueClass n p hp⟩
  | some r =>
    rcases hc with hc | hc
    · exact hc
    · simpa only [orbitRepresentative, h158ReflectionClass_involutive n p hp r.val] using
        exceptionalClasses_reflected n p hp _ hc

theorem exceptionalOrbits_card (n p : ℕ) (hp : 0 < p) :
    (univ.filter (h158HybridExceptionalOrbit n p hp)).card ≤ 45 := by
  classical
  calc
    _ = ((univ.filter (h158HybridExceptionalOrbit n p hp)).image
        (orbitRepresentative n p hp)).card :=
      (card_image_of_injective _ (orbitRepresentative_injective n p hp)).symm
    _ ≤ (h158HybridExceptionalClasses n p hp).card := by
      apply card_le_card
      intro c hc
      obtain ⟨r, hr, rfl⟩ := mem_image.mp hc
      exact exceptionalOrbit_representative n p hp r (mem_filter.mp hr).2
    _ ≤ 45 := exceptionalClasses_card n p hp

theorem generic_neg_minorFloor_le_110 {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 158*n+2 < p^2)
    (c : H158OrbitClass n p hp) (q : ℕ) :
    -(h158FoldedGenericProfile n p hp c).minorFloor q ≤ 110 := by
  have hw := h158FoldedWeight_le_twenty n hn hp hsq c
  have he : (1 : ℤ) ≤ h158FoldedSpacing n p hp c := by
    cases c <;> norm_num [h158FoldedSpacing]
  have hq : (0 : ℤ) ≤ q := by positivity
  have hprod : 0 ≤ (q : ℤ)*((q : ℤ)-1) := by
    by_cases h : q = 0
    · simp [h]
    · exact mul_nonneg hq (by omega)
  have hspace := mul_le_mul_of_nonneg_right he hprod
  have hweight := mul_le_mul_of_nonneg_left hw hq
  have hgap : 0 ≤ ((q : ℤ)-10)*((q : ℤ)-11) := by
    rcases (show (q : ℤ) ≤ 10 ∨ 11 ≤ (q : ℤ) by omega) with h | h
    · exact mul_nonneg_of_nonpos_of_nonpos (by omega) (by omega)
    · exact mul_nonneg (by omega) (by omega)
  rw [h158FoldedHybrid_generic_minorFloor]
  nlinarith

theorem exceptional_neg_minorFloor_le_110 {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 158*n+2 < p^2)
    (c : H158OrbitClass n p hp) (hc : h158HybridExceptionalOrbit n p hp c) (q : ℕ) :
    -(h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) c).minorFloor q ≤ 110 := by
  simp only [h158FoldedHybridProfile, h158HighHybridChoice_exception_generic n p hp c hc]
  exact generic_neg_minorFloor_le_110 n hn hp hsq c q

theorem exceptional_allocation_cost_le_4950 {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 158*n+2 < p^2)
    (k : H158OrbitClass n p hp → ℕ) :
    (∑ c ∈ univ.filter (h158HybridExceptionalOrbit n p hp),
      -(h158FoldedHybridProfile n p hp (h158HighHybridChoice n p hp) c).minorFloor (k c)) ≤ 4950 := by
  classical
  calc
    _ ≤ ∑ c ∈ univ.filter (h158HybridExceptionalOrbit n p hp), (110 : ℤ) := by
      apply sum_le_sum
      intro c hc
      exact exceptional_neg_minorFloor_le_110 n hn hp hsq c (mem_filter.mp hc).2 (k c)
    _ ≤ 4950 := by
      simp only [sum_const, nsmul_eq_mul]
      have hcard : ((univ.filter (h158HybridExceptionalOrbit n p hp)).card : ℤ) ≤ 45 := by
        exact_mod_cast exceptionalOrbits_card n p hp
      omega

end OddZetaMixed.H158HighCells
