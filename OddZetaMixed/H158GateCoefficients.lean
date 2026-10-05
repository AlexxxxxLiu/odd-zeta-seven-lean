import OddZetaMixed.H158GateArithmetic
import OddZetaMixed.H158LocalJets
import OddZetaMixed.H158Coefficients

/-!
# The complete coefficient map at the gate prime

All pole orders of the original entry are retained. The rational constant is
split exactly into its unique p-divisible harmonic summands and a p-integral
remainder. The resulting singular part is not yet the value-only leading
layer; its cancellation and nonzero determinant require additional work.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

theorem h158Gate_principal_coeff_nonneg (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (k : ℕ) (hk : k ∈ h158PoleSet n)
    (l : Fin (h158PoleOrder n k)) :
    0 ≤ padicValRat (55*n+1) (h158PrincipalCoefficients n i j k l) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  apply h158PrincipalCoefficients_mem_subring (h158GateIntegralRing (55*n+1))
    n i j k hk
  · intro q hq
    exact h158Gate_taylor_entry_coeff_nonneg n hp i j k q
  · intro q hq
    exact h158Gate_localCofactor_coeff_nonneg n hp k q
  · change 0 ≤ padicValRat (55*n+1) _
    rw [padicValRat.inv, h158LocalCofactor_zero_padicValRat n k (55*n+1) hk hp
      (by omega)]
    omega

theorem h158Gate_order_coeff_nonneg (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (s : ℕ) :
    0 ≤ padicValRat (55*n+1) (h158OrderCoefficient n i j s) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  change h158OrderCoefficient n i j s ∈ S
  apply S.sum_mem
  intro k hk
  apply S.sum_mem
  intro l hl
  split_ifs
  · exact h158Gate_principal_coeff_nonneg n hp i j k hk l
  · exact S.zero_mem

/-- Every target coefficient is integral at p=55n+1, including every lower
Laurent order. This does not make the rational constant integral. -/
theorem h158Gate_zeta_coeff_nonneg (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (s : ℕ) :
    0 ≤ padicValRat (55*n+1) (h158ZetaCoefficient n i j s) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  exact (h158GateIntegralRing (55*n+1)).mul_mem
    (natCast_mem _ _) (h158Gate_order_coeff_nonneg n hp i j s)

def harmonicRegularPart (p s m : ℕ) : ℚ :=
  ∑ t ∈ range m, if t+1=p then 0 else 1/((t : ℚ)+1)^s

theorem harmonicCutoff_split_at_prime (p s m : ℕ) (hp : 0 < p) :
    harmonicCutoff s m = (if p ≤ m then 1/(p : ℚ)^s else 0) +
      harmonicRegularPart p s m := by
  have hsum : (∑ t ∈ range m, if t+1=p then 1/((t : ℚ)+1)^s else 0) =
      if p ≤ m then 1/(p : ℚ)^s else 0 := by
    by_cases hpm : p ≤ m
    · rw [ite_eq_left hpm, sum_eq_single (p-1)]
      · have he : p-1+1=p := by omega
        simp only [he, ite_true]
        rw [← Nat.cast_one, ← Nat.cast_add, he]
      · intro b hb hne
        simp [show b+1 ≠ p by omega]
      · intro hnot
        exact (hnot (mem_range.mpr (by omega))).elim
    · rw [ite_eq_right hpm]
      apply sum_eq_zero
      intro b hb
      have hb := mem_range.mp hb
      simp [show b+1 ≠ p by omega]
  rw [← hsum, harmonicRegularPart, ← sum_add_distrib]
  apply sum_congr rfl
  intro t ht
  split_ifs <;> simp

theorem harmonicRegularPart_pintegral (p s m : ℕ) (hp : p.Prime)
    (hm : m < 2*p) : 0 ≤ padicValRat p (harmonicRegularPart p s m) := by
  let : Fact p.Prime := ⟨hp⟩
  let S := h158GateIntegralRing p
  change harmonicRegularPart p s m ∈ S
  apply S.sum_mem
  intro t ht
  split_ifs with htp
  · exact S.zero_mem
  · have ht := mem_range.mp ht
    have hnd : ¬ p ∣ t+1 := by
      rintro ⟨a, ha⟩
      have ha1 : 1 ≤ a := by nlinarith [hp.pos]
      have ha2 : a < 2 := by nlinarith [hp.pos]
      have : a=1 := by omega
      simp_all
    have hv : padicValRat p ((t : ℚ)+1) = 0 := by
      rw [← Nat.cast_one, ← Nat.cast_add, padicValRat.of_nat,
        padicValNat.eq_zero_of_not_dvd hnd]
      rfl
    change 0 ≤ padicValRat p _
    rw [one_div, padicValRat.inv, padicValRat.pow, hv]
    norm_num

/-- The complete negative harmonic contribution, prior to the local
5-4 cancellation. No multiplier derivative is dropped. -/
def h158GateSingularConstant (n : ℕ) (i j : Fin (2*n)) : ℚ :=
  -(∑ k ∈ h158PoleSet n, ∑ l : Fin (h158PoleOrder n k),
    h158PrincipalCoefficients n i j k l * ((l.val+4).choose 4 : ℚ) *
      (if 55*n+1 ≤ k-48*n-1 then 1/(55*(n : ℚ)+1)^(l.val+5) else 0))

theorem h158Gate_constant_remainder_integral (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) :
    0 ≤ padicValRat (55*n+1)
      (h158MomentConstant n i j - h158GateSingularConstant n i j) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  have he : h158MomentConstant n i j - h158GateSingularConstant n i j =
      -(∑ k ∈ h158PoleSet n, ∑ l : Fin (h158PoleOrder n k),
        h158PrincipalCoefficients n i j k l * ((l.val+4).choose 4 : ℚ) *
          harmonicRegularPart (55*n+1) (l.val+5) (k-48*n-1)) := by
    simp only [h158MomentConstant, h158GateSingularConstant]
    simp_rw [harmonicCutoff_split_at_prime (55*n+1) _ _ (by omega),
      Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat, mul_add,
      Finset.sum_add_distrib]
    simp only [Nat.cast_one, Nat.add_comm]
    abel
  rw [he]
  change -_ ∈ S
  apply S.neg_mem
  apply S.sum_mem
  intro k hk
  apply S.sum_mem
  intro l hl
  exact S.mul_mem
    (S.mul_mem (h158Gate_principal_coeff_nonneg n hp i j k hk l) (natCast_mem S _))
    (harmonicRegularPart_pintegral _ _ _ hp (h158Gate_harmonic_support n k hk).2)

/-- At any integral specialization the full entry and its singular harmonic
part differ by an integral element. This is an actual coefficient identity,
not an equality guessed from numerical zeta values. -/
theorem h158Gate_entry_remainder_integral (n : ℕ) (hp : (55*n+1).Prime)
    (i j : Fin (2*n)) (z : Fin 7 → ℚ)
    (hz : ∀ s, 0 ≤ padicValRat (55*n+1) (z s)) :
    0 ≤ padicValRat (55*n+1)
      (MvPolynomial.eval z (h158SevenMatrix n i j) - h158GateSingularConstant n i j) := by
  let : Fact (55*n+1).Prime := ⟨hp⟩
  let S := h158GateIntegralRing (55*n+1)
  change 0 ≤ padicValRat (55*n+1)
    (MvPolynomial.eval z (affineEntry (h158MomentConstant n i j)
      (fun s => h158ZetaCoefficient n i j (2+2*s.val))) - _)
  rw [affineEntry_eval]
  rw [add_sub_right_comm]
  change _ ∈ S
  apply S.add_mem (h158Gate_constant_remainder_integral n hp i j)
  apply S.sum_mem
  intro s hs
  exact S.mul_mem (h158Gate_zeta_coeff_nonneg n hp i j _) (hz s)

theorem h158GatePole_injective (n : ℕ) : Function.Injective (h158GatePole n) := by
  intro i j hij
  apply Fin.ext
  unfold h158GatePole at hij
  omega

/-- The active addresses are exactly the rank-many gate nodes, with neither
a duplicate address nor an omitted endpoint. -/
theorem h158GatePole_sum {A : Type*} [AddCommMonoid A] (n : ℕ) (f : ℕ → A) :
    (∑ k ∈ (h158PoleSet n).filter (fun k => 55*n+1 ≤ k-48*n-1), f k) =
      ∑ a : Fin (2*n), f (h158GatePole n a) := by
  rw [h158Gate_active_shell]
  symm
  apply sum_bij (fun a _ => h158GatePole n a)
  · intro a ha
    exact mem_Icc.mpr ((h158GatePole_covers n _).mp ⟨a,rfl⟩)
  · intro a ha b hb hab
    exact h158GatePole_injective n hab
  · intro k hk
    obtain ⟨a,ha⟩ := (h158GatePole_covers n k).mpr (mem_Icc.mp hk)
    exact ⟨a,mem_univ a,ha⟩
  · intro a ha
    rfl

theorem h158GateSingularConstant_eq_gateSum (n : ℕ) (i j : Fin (2*n)) :
    h158GateSingularConstant n i j =
      ∑ a : Fin (2*n), -(∑ l : Fin (h158PoleOrder n (h158GatePole n a)),
        h158PrincipalCoefficients n i j (h158GatePole n a) l *
          ((l.val+4).choose 4 : ℚ) / (55*(n : ℚ)+1)^(l.val+5)) := by
  rw [← h158GatePole_sum n (fun k => -(∑ l : Fin (h158PoleOrder n k),
    h158PrincipalCoefficients n i j k l * ((l.val+4).choose 4 : ℚ) /
      (55*(n : ℚ)+1)^(l.val+5)))]
  rw [h158GateSingularConstant, Finset.sum_filter, ← Finset.sum_neg_distrib]
  apply sum_congr rfl
  intro k hk
  split_ifs with h
  · simp only [← Finset.sum_neg_distrib, div_eq_mul_inv, one_mul]
  · simp only [mul_zero, sum_const_zero, neg_zero]

end OddZetaMixed
