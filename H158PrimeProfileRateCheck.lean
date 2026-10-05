import OddZetaMixed.H158PrimeProfileRate

noncomputable section

open Filter Finset OddZetaMixed

example : h158BandProfile 1 5 (fun _ => 7) 4 5 = 7 := by
  norm_num [h158BandProfile]

example : h158BandProfile 1 5 (fun _ => 7) 5 6 = 0 := by
  norm_num [h158BandProfile]

example : h158BandProfile 2 7 (fun x => x+1) 3 4 = 9/2 := by
  norm_num [h158BandProfile]

example : h158ProfilePrimeSum 1 (fun p => h158BandProfile 1 p (fun _ => 1) 4 5) =
    Real.log 5 := by
  rw [h158BandProfile_prime_sum 1 _ 4 5 (by norm_num) (by norm_num)]
  have hp : Nat.primesLE 5 = {2,3,5} := by decide +kernel
  norm_num [OddZetaPNT.primeWeightedSum, hp, Finset.filter_insert, Finset.filter_singleton]

example : Tendsto (fun n : ℕ => (4951 : ℝ)*Chebyshev.theta (57*(n : ℝ))/(n : ℝ)^2)
    atTop (nhds 0) := h158ThetaCorrection_ratio_limit 4951

example : Tendsto (fun n : ℕ =>
    h158ProfilePrimeSum n
      (h158PiecewisePrimeProfile (∅ : Finset Unit) (fun _ _ => 0)
        (fun _ => 1) (fun _ => 1) (1/8) 40 4951 n)/(n : ℝ)^2)
    atTop (nhds 5) := by
  have h := h158PiecewisePrimeProfile_ratio_limit (∅ : Finset Unit) (fun _ _ => 0)
    (fun _ => 1) (fun _ => 1) (1/8) 40 4951 (by norm_num) (by norm_num)
    (by simp) (by simp) (by simp) (by simp)
  norm_num at h ⊢
  exact h

example : Tendsto (fun n : ℕ =>
    h158ProfilePrimeSum n
      (h158PiecewisePrimeProfile (univ : Finset Unit) (fun _ _ => 2)
        (fun _ => 4) (fun _ => 26) (1/8) 40 4951 n)/(n : ℝ)^2)
    atTop (nhds 49) := by
  have h := h158PiecewisePrimeProfile_ratio_limit (univ : Finset Unit) (fun _ _ => 2)
    (fun _ => 4) (fun _ => 26) (1/8) 40 4951 (by norm_num) (by norm_num)
    (by intro i hi; norm_num) (by intro i hi; norm_num) (by intro i hi; norm_num)
    (by intro i hi; exact continuous_const.continuousOn)
  norm_num [intervalIntegral.integral_const] at h ⊢
  exact h

-- Overlaps add to the majorant. They are not silently treated as a partition.
example : Tendsto (fun n : ℕ =>
    h158ProfilePrimeSum n
      (h158PiecewisePrimeProfile (univ : Finset (Fin 2)) (fun _ _ => 2)
        (fun _ => 4) (fun _ => 26) (1/8) 40 4951 n)/(n : ℝ)^2)
    atTop (nhds 93) := by
  have h := h158PiecewisePrimeProfile_ratio_limit (univ : Finset (Fin 2)) (fun _ _ => 2)
    (fun _ => 4) (fun _ => 26) (1/8) 40 4951 (by norm_num) (by norm_num)
    (by intro i hi; norm_num) (by intro i hi; norm_num) (by intro i hi; norm_num)
    (by intro i hi; exact continuous_const.continuousOn)
  norm_num [intervalIntegral.integral_const] at h ⊢
  exact h

#print axioms h158PrimitiveCost_rate_of_piecewise_profile
