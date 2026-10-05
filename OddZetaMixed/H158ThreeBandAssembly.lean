import OddZetaMixed.H158GlobalMajorant

/-!
# Joining the three actual prime bands

The bands use one common primitive scalar. Nonnegative majorants may extend
outside their own bands, but every such extension remains in its prime sum.
The small-prime and divisor exceptions are accounted for by GlobalMajorant.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset Filter

theorem UpperQuadraticRateOn.mono_rate {good : Set ℕ} {f : ℕ → ℝ} {A B : ℝ}
    (hf : UpperQuadraticRateOn good f A) (hAB : A ≤ B) :
    UpperQuadraticRateOn good f B := by
  intro ε hε
  filter_upwards [hf ε hε] with n hn
  intro hgood
  exact (hn hgood).trans (mul_le_mul_of_nonneg_right (by linarith : A+ε ≤ B+ε)
    (sq_nonneg _))

theorem h158ProfilePrimeSum_add (n : ℕ) (R S : ℕ → ℝ) :
    h158ProfilePrimeSum n (fun p => R p+S p) =
      h158ProfilePrimeSum n R+h158ProfilePrimeSum n S := by
  simp only [h158ProfilePrimeSum, add_mul, sum_add_distrib]

theorem h158PrimitiveCost_rate_of_three_bands
    (low middle high : ℕ → ℕ → ℝ) (A B C : ℝ)
    (hlow0 : ∀ n, 0 < n → ∀ p, 0 ≤ low n p)
    (hmid0 : ∀ n, 0 < n → ∀ p, 0 ≤ middle n p)
    (hhigh0 : ∀ n, 0 < n → ∀ p, 0 ≤ high n p)
    (hlow : ∀ n, 0 < n → (h158SevenMatrix n).det ≠ 0 →
      ∀ p, p.Prime → p ≤ 4*n → 158*n+2 < p^2 → ¬p ∣ n →
        (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤ low n p)
    (hmid : ∀ n, 0 < n → (h158SevenMatrix n).det ≠ 0 →
      ∀ p, p.Prime → 4*n < p → p ≤ 26*n → 158*n+2 < p^2 → ¬p ∣ n →
        (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤ middle n p)
    (hhigh : ∀ᶠ n : ℕ in atTop, (h158SevenMatrix n).det ≠ 0 →
      ∀ p, p.Prime → 26*n < p → p ≤ 57*n → 158*n+2 < p^2 → ¬p ∣ n →
        (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤ high n p)
    (hAlim : Tendsto (fun n : ℕ => h158ProfilePrimeSum n (low n)/(n : ℝ)^2)
      atTop (nhds A))
    (hBlim : Tendsto (fun n : ℕ => h158ProfilePrimeSum n (middle n)/(n : ℝ)^2)
      atTop (nhds B))
    (hClim : Tendsto (fun n : ℕ => h158ProfilePrimeSum n (high n)/(n : ℝ)^2)
      atTop (nhds C)) :
    UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0}
      h158PrimitiveCost (A+B+C) := by
  let R := fun n p => low n p+middle n p+high n p
  apply h158PrimitiveCost_rate_of_generic_profile R (A+B+C)
  · filter_upwards [eventually_gt_atTop (0 : ℕ)] with n hn
    intro p _ _
    exact add_nonneg (add_nonneg (hlow0 n hn p) (hmid0 n hn p)) (hhigh0 n hn p)
  · filter_upwards [hhigh, eventually_gt_atTop (0 : ℕ)] with n hh hn
    intro hdet p hp hp57 hsq hpn
    have hl0 := hlow0 n hn p
    have hm0 := hmid0 n hn p
    have hh0 := hhigh0 n hn p
    change _ ≤ low n p+middle n p+high n p
    by_cases hp4 : p ≤ 4*n
    · linarith [hlow n hn hdet p hp hp4 hsq hpn]
    · by_cases hp26 : p ≤ 26*n
      · linarith [hmid n hn hdet p hp (by omega) hp26 hsq hpn]
      · linarith [hh hdet p hp (by omega) hp57 hsq hpn]
  · apply upperQuadraticRateOn_of_ratio_limit
    have h := (hAlim.add hBlim).add hClim
    simpa only [R, h158ProfilePrimeSum_add, add_div] using h

#print axioms h158PrimitiveCost_rate_of_three_bands

end OddZetaMixed
