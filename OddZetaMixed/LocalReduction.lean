import OddZetaMixed.H158GateArithmetic
import Mathlib.Data.Rat.Cast.Defs
import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

/-!
# Direct residue-field reduction of the rational local ring

The domain is the existing `h158GateIntegralRing p`. No completion is used:
its elements have reduced denominators prime to `p`, so rational casting
to `ZMod p` restricts to a ring homomorphism. The zero convention for
`padicValRat` is kept explicit in the kernel and unit criteria.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial

variable (p : ℕ) [Fact p.Prime]

theorem h158GateIntegralRing_den_valuation (q : ℚ)
    (hq : q ∈ h158GateIntegralRing p) : padicValNat p q.den = 0 := by
  have hnonneg : 0 ≤ padicValRat p q := hq
  rcases q.num_or_den_zero_padicVal (Fact.out : p.Prime) with hn | hd
  · rw [padicValRat_def, hn] at hnonneg
    omega
  · exact hd

theorem h158GateIntegralRing_den_not_dvd (q : ℚ)
    (hq : q ∈ h158GateIntegralRing p) : ¬ p ∣ q.den := by
  have hd := h158GateIntegralRing_den_valuation p q hq
  rcases padicValNat.eq_zero_iff.mp hd with hp | hz | hnd
  · exact False.elim ((Fact.out : p.Prime).ne_one hp)
  · exact False.elim (q.den_nz hz)
  · exact hnd

theorem h158GateIntegralRing_mem_iff_den_not_dvd (q : ℚ) :
    q ∈ h158GateIntegralRing p ↔ ¬ p ∣ q.den := by
  constructor
  · exact h158GateIntegralRing_den_not_dvd p q
  · intro hq
    change 0 ≤ padicValRat p q
    rw [padicValRat_def, padicValNat.eq_zero_of_not_dvd hq]
    simp only [Nat.cast_zero, sub_zero]
    exact Int.natCast_nonneg _

theorem h158GateIntegralRing_den_cast_ne_zero (q : ℚ)
    (hq : q ∈ h158GateIntegralRing p) : (q.den : ZMod p) ≠ 0 := by
  simpa only [ne_eq, ZMod.natCast_eq_zero_iff] using
    (h158GateIntegralRing_den_not_dvd p q hq)

/-- Rational casting is a ring map only after restricting its domain. -/
def h158GateReduction : h158GateIntegralRing p →+* ZMod p where
  toFun q := ((q : ℚ) : ZMod p)
  map_zero' := by simp
  map_one' := by simp
  map_add' q r := Rat.cast_add_of_ne_zero
    (h158GateIntegralRing_den_cast_ne_zero p q q.property)
    (h158GateIntegralRing_den_cast_ne_zero p r r.property)
  map_mul' q r := Rat.cast_mul_of_ne_zero
    (h158GateIntegralRing_den_cast_ne_zero p q q.property)
    (h158GateIntegralRing_den_cast_ne_zero p r r.property)

@[simp]
theorem h158GateReduction_apply (q : h158GateIntegralRing p) :
    h158GateReduction p q = ((q : ℚ) : ZMod p) := rfl

theorem h158GateReduction_ne_zero_iff (q : h158GateIntegralRing p) :
    h158GateReduction p q ≠ 0 ↔
      (q : ℚ) ≠ 0 ∧ padicValRat p (q : ℚ) = 0 := by
  have hd := h158GateIntegralRing_den_cast_ne_zero p q q.property
  have hdv := h158GateIntegralRing_den_valuation p q q.property
  rw [h158GateReduction_apply, Rat.cast_def, div_ne_zero_iff]
  change ((q : ℚ).num : ZMod p) ≠ 0 ∧ ((q : ℚ).den : ZMod p) ≠ 0 ↔ _
  simp only [hd, ne_eq, not_false_eq_true, and_true,
    ZMod.intCast_zmod_eq_zero_iff_dvd]
  rw [padicValRat_def, hdv, Nat.cast_zero, sub_zero]
  constructor
  · intro hn
    refine ⟨?_, ?_⟩
    · intro hq
      exact hn (by simp [hq])
    · exact_mod_cast padicValInt.eq_zero_of_not_dvd hn
  · rintro ⟨hq, hv⟩
    have hv' : padicValInt p (q : ℚ).num = 0 := by exact_mod_cast hv
    rcases padicValInt.eq_zero_iff.mp hv' with hp | hn | hnd
    · exact False.elim ((Fact.out : p.Prime).ne_one hp)
    · exact False.elim ((Rat.num_ne_zero.mpr hq) hn)
    · exact hnd

theorem h158GateReduction_eq_zero_iff (q : h158GateIntegralRing p) :
    h158GateReduction p q = 0 ↔
      (q : ℚ) = 0 ∨ 0 < padicValRat p (q : ℚ) := by
  have hnonneg : 0 ≤ padicValRat p (q : ℚ) := q.property
  have hn := h158GateReduction_ne_zero_iff p q
  constructor
  · intro hz
    by_cases hq : (q : ℚ) = 0
    · exact Or.inl hq
    · right
      have hv : padicValRat p (q : ℚ) ≠ 0 := fun hv => (hn.mpr ⟨hq, hv⟩) hz
      omega
  · rintro (hq | hv)
    · simp [hq]
    · by_contra hz
      have := (hn.mp hz).2
      omega

theorem h158GateIntegralRing_mem_of_common_denominator (q : ℚ) (Q : ℕ)
    (hQ : ¬ p ∣ Q) (a : ℤ) (ha : (Q : ℚ) * q = a) :
    q ∈ h158GateIntegralRing p := by
  have hQ0 : Q ≠ 0 := fun h => hQ (h ▸ dvd_zero p)
  have hQr : (Q : ℚ) ≠ 0 := by exact_mod_cast hQ0
  have hQi : (Q : ℚ)⁻¹ ∈ h158GateIntegralRing p := by
    change 0 ≤ padicValRat p (Q : ℚ)⁻¹
    rw [padicValRat.inv, padicValRat.of_nat, padicValNat.eq_zero_of_not_dvd hQ]
    norm_num
  have hqa : q = (Q : ℚ)⁻¹ * (a : ℚ) := by
    rw [← ha]
    field_simp
  rw [hqa]
  exact (h158GateIntegralRing p).mul_mem hQi (intCast_mem _ a)

theorem h158GateIntegralRing_mem_of_exists_common_denominator (q : ℚ) (Q : ℕ)
    (hQ : ¬ p ∣ Q) (ha : ∃ a : ℤ, (Q : ℚ) * q = a) :
    q ∈ h158GateIntegralRing p := by
  obtain ⟨a, ha⟩ := ha
  exact h158GateIntegralRing_mem_of_common_denominator p q Q hQ a ha

theorem h158GateReduction_pow (q : h158GateIntegralRing p) (n : ℕ) :
    h158GateReduction p (q ^ n) = h158GateReduction p q ^ n :=
  map_pow (h158GateReduction p) q n

theorem h158GateReduction_det {ι : Type*} [Fintype ι] [DecidableEq ι]
    (A : Matrix ι ι (h158GateIntegralRing p)) :
    h158GateReduction p A.det = (A.map (h158GateReduction p)).det :=
  (h158GateReduction p).map_det A

theorem h158GateIntegralRing_cast_add {q r : ℚ}
    (hq : q ∈ h158GateIntegralRing p) (hr : r ∈ h158GateIntegralRing p) :
    ((q+r : ℚ) : ZMod p) = (q : ZMod p)+(r : ZMod p) :=
  Rat.cast_add_of_ne_zero (h158GateIntegralRing_den_cast_ne_zero p q hq)
    (h158GateIntegralRing_den_cast_ne_zero p r hr)

theorem h158GateIntegralRing_cast_sum {ι : Type*} (s : Finset ι) (f : ι → ℚ)
    (hf : ∀ i ∈ s, f i ∈ h158GateIntegralRing p) :
    ((∑ i ∈ s, f i : ℚ) : ZMod p) = ∑ i ∈ s, (f i : ZMod p) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    rw [Finset.sum_insert ha, Finset.sum_insert ha,
      h158GateIntegralRing_cast_add p (hf a (Finset.mem_insert_self a s))
        ((h158GateIntegralRing p).sum_mem
          (fun i hi => hf i (Finset.mem_insert_of_mem hi))),
      ih (fun i hi => hf i (Finset.mem_insert_of_mem hi))]

theorem h158GateIntegralRing_cast_mul {q r : ℚ}
    (hq : q ∈ h158GateIntegralRing p) (hr : r ∈ h158GateIntegralRing p) :
    ((q*r : ℚ) : ZMod p) = (q : ZMod p)*(r : ZMod p) :=
  Rat.cast_mul_of_ne_zero (h158GateIntegralRing_den_cast_ne_zero p q hq)
    (h158GateIntegralRing_den_cast_ne_zero p r hr)

theorem h158GateIntegralRing_cast_pow {q : ℚ}
    (hq : q ∈ h158GateIntegralRing p) (n : ℕ) :
    ((q^n : ℚ) : ZMod p) = (q : ZMod p)^n := by
  exact map_pow (h158GateReduction p) (⟨q, hq⟩ : h158GateIntegralRing p) n

theorem h158GateIntegralRing_cast_prod {ι : Type*} (s : Finset ι) (f : ι → ℚ)
    (hf : ∀ i ∈ s, f i ∈ h158GateIntegralRing p) :
    ((∏ i ∈ s, f i : ℚ) : ZMod p) = ∏ i ∈ s, (f i : ZMod p) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    rw [Finset.prod_insert ha, Finset.prod_insert ha,
      h158GateIntegralRing_cast_mul p (hf a (Finset.mem_insert_self a s))
        ((h158GateIntegralRing p).prod_mem
          (fun i hi => hf i (Finset.mem_insert_of_mem hi))),
      ih (fun i hi => hf i (Finset.mem_insert_of_mem hi))]

theorem h158GateIntegralRing_eval_mem (P : ℚ[X])
    (hP : ∀ k, P.coeff k ∈ h158GateIntegralRing p)
    (x : ℚ) (hx : x ∈ h158GateIntegralRing p) :
    P.eval x ∈ h158GateIntegralRing p := by
  rw [Polynomial.eval_eq_sum, Polynomial.sum]
  exact (h158GateIntegralRing p).sum_mem
    (fun k _ => (h158GateIntegralRing p).mul_mem (hP k)
      ((h158GateIntegralRing p).pow_mem hx k))

theorem h158GateIntegralRing_det_mem {ι : Type*} [Fintype ι] [DecidableEq ι]
    (A : Matrix ι ι ℚ) (hA : ∀ i j, A i j ∈ h158GateIntegralRing p) :
    A.det ∈ h158GateIntegralRing p := by
  let B : Matrix ι ι (h158GateIntegralRing p) := fun i j => ⟨A i j, hA i j⟩
  have hdet := (h158GateIntegralRing p).subtype.map_det B
  change (B.det : ℚ) = A.det at hdet
  rw [← hdet]
  exact B.det.property

theorem h158GateIntegralRing_cast_det {ι : Type*} [Fintype ι] [DecidableEq ι]
    (A : Matrix ι ι ℚ) (hA : ∀ i j, A i j ∈ h158GateIntegralRing p) :
    (A.det : ZMod p) = (A.map (fun q : ℚ => (q : ZMod p))).det := by
  let B : Matrix ι ι (h158GateIntegralRing p) := fun i j => ⟨A i j, hA i j⟩
  have hdet := (h158GateIntegralRing p).subtype.map_det B
  change (B.det : ℚ) = A.det at hdet
  rw [← hdet]
  exact h158GateReduction_det p B

end OddZetaMixed
