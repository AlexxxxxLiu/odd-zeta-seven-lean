import PNTDependency

/-!
Source-backed weighted prime limits. The concrete sums below are the audited
natural-exponent prime-band sums, not a hypothesis asserting PNT. Connecting
these sums to local h158 divisibility remains a separate arithmetic task.
-/

namespace OddZetaMixed

open Filter

theorem weighted_prime_quadratic_rate {ι : Type*} (s : Finset ι)
    (f : ι → ℝ → ℝ) (a b : ι → ℝ)
    (hf : ∀ i ∈ s, ContinuousOn (f i) (Set.Icc (a i) (b i)))
    (ha : ∀ i ∈ s, 0 < a i) (hab : ∀ i ∈ s, a i ≤ b i) :
    Tendsto (fun n : ℕ =>
      (∑ i ∈ s, (n : ℝ) *
        OddZetaPNT.primeWeightedSum (fun t => f i (t/n)) (a i*n) (b i*n)) /
          (n : ℝ)^2)
      atTop (nhds (∑ i ∈ s, ∫ x in a i..b i, f i x)) :=
  OddZetaPNT.finite_piecewise_continuous_quadratic_cost_limit s f a b hf ha hab

theorem h158_prime_content54_rate :
    Tendsto (fun n : ℕ => OddZetaPNT.h158Content54 n / (n : ℝ)^2)
      atTop (nhds (5/4)) :=
  OddZetaPNT.h158Content54_rate

theorem h158_prime_content55_rate :
    Tendsto (fun n : ℕ => OddZetaPNT.h158Content55 n / (n : ℝ)^2)
      atTop (nhds 1) :=
  OddZetaPNT.h158Content55_rate

theorem h158_prime_content56_rate :
    Tendsto (fun n : ℕ => OddZetaPNT.h158Content56 n / (n : ℝ)^2)
      atTop (nhds (3/2)) :=
  OddZetaPNT.h158Content56_rate

theorem h158_prime_content_three_bands_rate :
    Tendsto (fun n : ℕ =>
      (OddZetaPNT.h158Content54 n + OddZetaPNT.h158Content55 n +
        OddZetaPNT.h158Content56 n) / (n : ℝ)^2)
      atTop (nhds (15/4)) := by
  have h := (h158_prime_content54_rate.add h158_prime_content55_rate).add
    h158_prime_content56_rate
  norm_num at h ⊢
  simpa only [add_div] using h

end OddZetaMixed
