import OddZetaMixed.H158CentralCompression
import Mathlib.Data.ZMod.Basic
import Mathlib.FieldTheory.Finite.Basic

/-!
# The actual residue-class reflection partition

The reflection acts on all residue classes, including empty pole classes.
Each nonfixed orbit is counted once; the fixed class uses the true center.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed
open Finset LocalJetValuation

def h158IntResidue (p : ℕ) (hp : 0 < p) (a : ℤ) : Fin p := by
  letI : NeZero p := ⟨Nat.ne_of_gt hp⟩
  exact ⟨(a : ZMod p).val, ZMod.val_lt _⟩

theorem h158IntResidue_cast (p : ℕ) (hp : 0 < p) (a : ℤ) :
    ((h158IntResidue p hp a).val : ZMod p) = (a : ZMod p) := by
  let : NeZero p := ⟨Nat.ne_of_gt hp⟩
  exact ZMod.natCast_zmod_val _

theorem h158IntResidue_of_val (p : ℕ) (hp : 0 < p) (c : Fin p) :
    h158IntResidue p hp (c.val : ℤ) = c := by
  apply Fin.ext
  change ((c.val : ℤ) : ZMod p).val = c.val
  simpa only [Int.cast_natCast] using ZMod.val_natCast_of_lt c.isLt

theorem h158IntResidue_eq_iff (p : ℕ) (hp : 0 < p) (a b : ℤ) :
    h158IntResidue p hp a = h158IntResidue p hp b ↔
      (a : ZMod p) = (b : ZMod p) := by
  constructor
  · intro h
    simpa only [h158IntResidue_cast] using congrArg (fun c : Fin p => (c.val : ZMod p)) h
  · intro h
    apply Fin.ext
    exact congrArg ZMod.val h

def h158ReflectionClass (n p : ℕ) (hp : 0 < p) (c : Fin p) : Fin p :=
  h158IntResidue p hp (158*(n : ℤ)+2-(c.val : ℤ))

def h158CentralClass (n p : ℕ) (hp : 0 < p) : Fin p :=
  h158IntResidue p hp (79*(n : ℤ)+1)

theorem h158ReflectionClass_cast (n p : ℕ) (hp : 0 < p) (c : Fin p) :
    ((h158ReflectionClass n p hp c).val : ZMod p) =
      158*(n : ZMod p)+2-(c.val : ZMod p) := by
  simp only [h158ReflectionClass, h158IntResidue_cast, Int.cast_sub,
    Int.cast_add, Int.cast_mul, Int.cast_ofNat, Int.cast_natCast]

theorem h158ReflectionClass_involutive (n p : ℕ) (hp : 0 < p) :
    Function.Involutive (h158ReflectionClass n p hp) := by
  intro c
  rw [← h158IntResidue_of_val p hp c]
  apply (h158IntResidue_eq_iff p hp _ _).2
  simp only [Int.cast_sub, Int.cast_add, Int.cast_mul, Int.cast_ofNat,
    Int.cast_natCast, h158ReflectionClass_cast, h158IntResidue_cast]
  ring

theorem h158ReflectionClass_center (n p : ℕ) (hp : 0 < p) :
    h158ReflectionClass n p hp (h158CentralClass n p hp) =
      h158CentralClass n p hp := by
  apply (h158IntResidue_eq_iff p hp _ _).2
  simp only [Int.cast_sub, Int.cast_add, Int.cast_mul, Int.cast_ofNat,
    Int.cast_natCast, h158CentralClass, h158IntResidue_cast]
  ring

theorem h158ReflectionClass_fixed_iff {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hp : 0 < p) (hp2 : p ≠ 2) (c : Fin p) :
    h158ReflectionClass n p hp c = c ↔ c = h158CentralClass n p hp := by
  constructor
  · intro h
    have hz := congrArg (fun d : Fin p => (d.val : ZMod p)) h
    rw [h158ReflectionClass_cast] at hz
    have htwo : (2 : ZMod p) ≠ 0 := by
      intro htwo
      have hd : p ∣ 2 := (ZMod.natCast_eq_zero_iff 2 p).1 htwo
      exact hp2 ((Nat.prime_dvd_prime_iff_eq (Fact.out : p.Prime)
        Nat.prime_two).1 hd)
    have he : (c.val : ZMod p) = 79*(n : ZMod p)+1 := by
      apply (mul_left_cancel₀ htwo)
      linear_combination -hz
    rw [← h158IntResidue_of_val p hp c]
    apply (h158IntResidue_eq_iff p hp _ _).2
    simpa only [Int.cast_add, Int.cast_mul, Int.cast_ofNat, Int.cast_natCast,
      Int.cast_one] using he
  · rintro rfl
    exact h158ReflectionClass_center n p hp

/-- An involution partitions a finite ordered set into one representative
per two-element orbit and fixed points counted once. -/
theorem sum_involution_orbits {C R : Type*} [Fintype C] [LinearOrder C]
    [AddCommMonoid R] (r : C → C) (hr : Function.Involutive r) (f : C → R) :
    ∑ c, f c =
      (∑ c ∈ univ.filter (fun c => c < r c), (f c + f (r c))) +
        ∑ c ∈ univ.filter (fun c => r c = c), f c := by
  classical
  have hpair : (∑ c ∈ univ.filter (fun c => c < r c), f (r c)) =
      ∑ c ∈ univ.filter (fun c => r c < c), f c := by
    apply sum_bij (fun c _ => r c)
    · intro c hc
      simpa only [mem_filter, mem_univ, true_and, hr c] using hc
    · intro a ha b hb hab
      exact hr.injective hab
    · intro b hb
      refine ⟨r b, ?_, hr b⟩
      simpa only [mem_filter, mem_univ, true_and, hr b] using hb
    · intro c hc
      rfl
  rw [sum_add_distrib, hpair]
  simp only [sum_filter]
  rw [← sum_add_distrib, ← sum_add_distrib]
  apply sum_congr rfl
  intro c hc
  rcases lt_trichotomy c (r c) with h | h | h
  · simp [h, not_lt.mpr h.le, ne_of_gt h]
  · simp only [h.symm, lt_self_iff_false, ite_false, ite_true, zero_add]
  · simp [h, not_lt.mpr h.le, ne_of_lt h]

def h158OrbitAnchor (n p : ℕ) (hp : 0 < p) (c : Fin p) : ℤ :=
  if h158ReflectionClass n p hp c = c then -(79*(n : ℤ)+1)
  else if c < h158ReflectionClass n p hp c then -(c.val : ℤ)
  else -(158*(n : ℤ)+2)+(h158ReflectionClass n p hp c).val

theorem h158OrbitAnchor_lower (n p : ℕ) (hp : 0 < p) (c : Fin p)
    (hc : c < h158ReflectionClass n p hp c) :
    h158OrbitAnchor n p hp c = -(c.val : ℤ) := by
  simp [h158OrbitAnchor, ne_of_gt hc, hc]

theorem h158OrbitAnchor_reflected (n p : ℕ) (hp : 0 < p) (c : Fin p)
    (hc : c < h158ReflectionClass n p hp c) :
    h158OrbitAnchor n p hp (h158ReflectionClass n p hp c) =
      -(158*(n : ℤ)+2)+(c.val : ℤ) := by
  simp [h158OrbitAnchor, h158ReflectionClass_involutive n p hp c,
    ne_of_lt hc, not_lt.mpr hc.le]

theorem h158OrbitAnchor_center (n p : ℕ) (hp : 0 < p) :
    h158OrbitAnchor n p hp (h158CentralClass n p hp) = -(79*(n : ℤ)+1) := by
  simp only [h158OrbitAnchor, h158ReflectionClass_center, ite_true]

theorem h158CentralClass_congruent (n p : ℕ) (hp : 0 < p) :
    (p : ℤ) ∣ -(79*(n : ℤ)+1)+(h158CentralClass n p hp).val := by
  apply (ZMod.intCast_zmod_eq_zero_iff_dvd _ p).1
  simp only [Int.cast_add, Int.cast_neg, Int.cast_mul, Int.cast_natCast,
    Int.cast_ofNat, Int.cast_one, h158CentralClass, h158IntResidue_cast]
  ring

theorem h158ReflectionClass_congruent (n p : ℕ) (hp : 0 < p) (c : Fin p) :
    (p : ℤ) ∣ -(158*(n : ℤ)+2)+(c.val : ℤ)+
      (h158ReflectionClass n p hp c).val := by
  apply (ZMod.intCast_zmod_eq_zero_iff_dvd _ p).1
  simp only [Int.cast_add, Int.cast_neg, Int.cast_mul, Int.cast_natCast,
    Int.cast_ofNat, h158ReflectionClass_cast]
  ring

theorem h158OrbitAnchor_congruent {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hp : 0 < p) (hp2 : p ≠ 2) (c : Fin p) :
    (p : ℤ) ∣ h158OrbitAnchor n p hp c+(c.val : ℤ) := by
  by_cases hfix : h158ReflectionClass n p hp c = c
  · rw [(h158ReflectionClass_fixed_iff n hp hp2 c).1 hfix, h158OrbitAnchor_center]
    exact h158CentralClass_congruent n p hp
  · by_cases hlo : c < h158ReflectionClass n p hp c
    · simp only [h158OrbitAnchor_lower n p hp c hlo, neg_add_cancel, dvd_zero]
    · simp only [h158OrbitAnchor, hfix, hlo, ite_false]
      simpa only [h158ReflectionClass_involutive n p hp c] using
        h158ReflectionClass_congruent n p hp (h158ReflectionClass n p hp c)

def h158PairMoment (n p : ℕ) (hn : 0 < n) (hp : 0 < p) (c : Fin p) :
    Matrix (Fin (4*n)) (Fin (4*n)) SevenPolynomial :=
  h158ClusterMoment n hn (h158ResidueClass p hp) c (-(c.val : ℚ)) +
    h158JetSign n *
      h158ClusterMoment n hn (h158ResidueClass p hp)
        (h158ReflectionClass n p hp c) (-(158*(n : ℚ)+2)+(c.val : ℚ)) *
      h158JetSign n

def h158CentralEvenMoment (n p : ℕ) (hn : 0 < n) (hp : 0 < p) :
    Matrix (Fin (2*n)) (Fin (2*n)) SevenPolynomial :=
  (h158ClusterMoment n hn (h158ResidueClass p hp) (h158CentralClass n p hp)
    (-(79*(n : ℚ)+1))).submatrix (h158EvenJet n) (h158EvenJet n)

def h158CentralEvenEvaluation (n p : ℕ) :
    Matrix (Fin (2*n)) (Fin (2*n)) SevenPolynomial :=
  (h158ScaledTaylorEvaluation n p (-(79*(n : ℚ)+1))).submatrix id (h158EvenJet n)

/-- Full factorization of the actual matrix after reflection folding.
The central class occurs exactly once and retains only genuine even jets. -/
theorem h158_scaled_reflection_orbit_factorization {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2) :
    h158RowDiagonal n p * h158SevenMatrix n * h158RowDiagonal n p =
      (∑ c ∈ univ.filter (fun c => c < h158ReflectionClass n p hp c),
        h158ScaledTaylorEvaluation n p (-(c.val : ℚ)) * h158PairMoment n p hn hp c *
          (h158ScaledTaylorEvaluation n p (-(c.val : ℚ))).transpose) +
      h158CentralEvenEvaluation n p * h158CentralEvenMoment n p hn hp *
        (h158CentralEvenEvaluation n p).transpose := by
  rw [h158_scaled_cluster_factorization n p hn (h158ResidueClass p hp)
    (fun c => (h158OrbitAnchor n p hp c : ℚ))]
  rw [sum_involution_orbits (h158ReflectionClass n p hp)
    (h158ReflectionClass_involutive n p hp)]
  congr 1
  · apply sum_congr rfl
    intro c hc
    have hlo := (mem_filter.mp hc).2
    rw [h158OrbitAnchor_lower n p hp c hlo, h158OrbitAnchor_reflected n p hp c hlo]
    simp only [Int.cast_neg, Int.cast_natCast, Int.cast_add, Int.cast_mul,
      Int.cast_ofNat]
    convert h158_pair_fold_identity n p (-(c.val : ℚ))
      (h158ClusterMoment n hn (h158ResidueClass p hp) c (-(c.val : ℚ)))
      (h158ClusterMoment n hn (h158ResidueClass p hp)
        (h158ReflectionClass n p hp c) (-(158*(n : ℚ)+2)+(c.val : ℚ))) using 1 <;>
      simp only [sub_neg_eq_add, h158PairMoment]
  · simp only [h158ReflectionClass_fixed_iff n hp hp2, sum_filter,
      sum_ite_eq', mem_univ, ite_true, h158OrbitAnchor_center, Int.cast_neg,
      Int.cast_add, Int.cast_mul, Int.cast_natCast, Int.cast_ofNat, Int.cast_one]
    exact h158_central_block_compression n p _

theorem h158PairMoment_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (c : Fin p) (u v : Fin (4*n)) :
    FormalAtLeast p
      (-max (h158ClassCost p n c)
        (h158ClassCost p n (h158ReflectionClass n p hp c))+(u.val : ℤ)+(v.val : ℤ))
      (h158PairMoment n p hn hp c u v) := by
  have h := h158_paired_residue_block_floor n hn hp hsq c
    (h158ReflectionClass n p hp c) (-(c.val : ℤ))
    (by simp) (by simpa only [sub_neg_eq_add] using h158ReflectionClass_congruent n p hp c)
    u v
  simpa only [Int.cast_neg, Int.cast_natCast, sub_neg_eq_add, h158PairMoment] using h

theorem h158CentralEvenMoment_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2)
    (u v : Fin (2*n)) :
    FormalAtLeast p (-h158ClassCost p n (h158CentralClass n p hp)+
      2*(u.val : ℤ)+2*(v.val : ℤ)) (h158CentralEvenMoment n p hn hp u v) :=
  h158_central_even_block_floor n hn hp hsq (h158CentralClass n p hp)
    (h158CentralClass_congruent n p hp) u v

end OddZetaMixed
