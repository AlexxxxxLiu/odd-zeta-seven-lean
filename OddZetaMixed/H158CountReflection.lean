import OddZetaMixed.H158ResidueCounts
import OddZetaMixed.H158ReflectionOrbits

/-!
# Reflection preserves the actual arithmetic counts

These are identities of the unreduced integer address counts, not identities
inferred from equality of specialized zeta linear forms. All endpoints and
the central numerator root are retained.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed
open Finset LocalJetValuation

private theorem reflection_dvd_iff (p : ℕ) (H c d x : ℤ)
    (h : (p : ℤ) ∣ H-c-d) :
    (p : ℤ) ∣ x-c ↔ (p : ℤ) ∣ H-x-d := by
  have he : H-x-d = (H-c-d)-(x-c) := by ring
  rw [he]
  constructor
  · exact fun hx => dvd_sub h hx
  · intro hx
    simpa only [sub_sub_cancel] using dvd_sub h hx

private theorem interval_reflection_count (p : ℕ) (H c d : ℤ) (m : ℕ)
    (h : (p : ℤ) ∣ H-c-d) :
    (∑ j ∈ range m, if (p : ℤ) ∣ 1+(j : ℤ)-c then (1 : ℤ) else 0) =
      ∑ j ∈ range m, if (p : ℤ) ∣ H-(m : ℤ)+(j : ℤ)-d then (1 : ℤ) else 0 := by
  rw [← sum_range_reflect (fun j : ℕ =>
    if (p : ℤ) ∣ H-(m : ℤ)+(j : ℤ)-d then (1 : ℤ) else 0) m]
  apply sum_congr rfl
  intro j hj
  have hjm := mem_range.mp hj
  have hc : ((m-1-j : ℕ) : ℤ) = (m : ℤ)-1-(j : ℤ) := by omega
  rw [hc]
  have he : H-(m : ℤ)+((m : ℤ)-1-(j : ℤ))-d = H-(1+(j : ℤ))-d := by ring
  simp only [he, ← reflection_dvd_iff p H c d (1+(j : ℤ)) h]

theorem h158NumeratorCount_reflected_classes (p n c d : ℕ)
    (h : (p : ℤ) ∣ 158*(n : ℤ)+2-(c : ℤ)-d) :
    h158NumeratorCount p n c = h158NumeratorCount p n d := by
  unfold h158NumeratorCount
  have hs : (p : ℤ) ∣ 158*(n : ℤ)+2-(d : ℤ)-c := by
    convert h using 1
    ring
  have hc := reflection_dvd_iff p (158*(n : ℤ)+2) c d (79*(n : ℤ)+1) h
  have he : 158*(n : ℤ)+2-(79*(n : ℤ)+1)-d = 79*(n : ℤ)+1-d := by ring
  rw [he] at hc
  simp only [hc]
  congr 1
  apply sum_congr rfl
  intro a ha
  rw [interval_reflection_count p (158*(n : ℤ)+2) c d ((48+a)*n) h,
    ← interval_reflection_count p (158*(n : ℤ)+2) d c ((48+a)*n) hs]
  ring

theorem h158DenominatorCount_reflected_classes (p n c d : ℕ)
    (h : (p : ℤ) ∣ 158*(n : ℤ)+2-(c : ℤ)-d) :
    h158DenominatorCount p n c = h158DenominatorCount p n d := by
  unfold h158DenominatorCount
  rw [← h158_sum_reflection n (fun k =>
    (h158PoleOrder n k : ℤ)*(if (p : ℤ) ∣ (k : ℤ)-d then 1 else 0))]
  apply sum_congr rfl
  intro k hk
  rw [h158_pole_order_reflection]
  have hb := h158_pole_address_bounds n k hk
  have he : (h158ReflectedPole n k : ℤ) = 158*(n : ℤ)+2-k := by
    unfold h158ReflectedPole
    omega
  simp only [he, ← reflection_dvd_iff p (158*(n : ℤ)+2) c d k h]

theorem h158ClassCost_reflection (n p : ℕ) (hp : 0 < p) (c : Fin p) :
    h158ClassCost p n (h158ReflectionClass n p hp c) = h158ClassCost p n c := by
  have h := dvd_neg.mpr (h158ReflectionClass_congruent n p hp c)
  have he : -(-(158*(n : ℤ)+2)+(c.val : ℤ)+
      ((h158ReflectionClass n p hp c).val : ℤ)) =
      158*(n : ℤ)+2-(c.val : ℤ)-(h158ReflectionClass n p hp c).val := by ring
  rw [he] at h
  unfold h158ClassCost
  rw [← h158DenominatorCount_reflected_classes p n c.val _ h,
    ← h158NumeratorCount_reflected_classes p n c.val _ h]

theorem h158ClassCost_le_twenty (p n c : ℕ) (hn : 0 < n)
    (hp : p.Prime) (hsq : 158*n+2 < p^2) : h158ClassCost p n c ≤ 20 := by
  have h := h158_normalized_class_count_lower p n c hn hp hsq
  unfold h158ClassCost
  linarith

end OddZetaMixed
