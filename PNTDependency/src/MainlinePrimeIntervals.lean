import MainlineThetaPrefix

/-!
Fixed proportional prime intervals, from the independently audited PNT.
This isolated adapter is not the h158 arithmetic estimate or its cell-weight
certificate. In particular, its weights below are fixed finite step weights.
-/

noncomputable section

namespace OddZetaPNT

open Filter Finset Asymptotics

theorem theta_div_self_limit :
    Tendsto (fun x : ℝ => Chebyshev.theta x / x) atTop (nhds 1) := by
  exact (isEquivalent_iff_tendsto_one
    (by filter_upwards [eventually_gt_atTop (0 : ℝ)] with x hx
        exact ne_of_gt hx)).mp chebyshev_asymptotic

theorem scaled_theta_div_nat_limit (a : ℝ) (ha : 0 < a) :
    Tendsto (fun n : ℕ => Chebyshev.theta (a*n) / n) atTop (nhds a) := by
  have ht := theta_div_self_limit.comp
    (tendsto_natCast_atTop_atTop.const_mul_atTop ha)
  have hm := ht.mul_const a
  convert hm using 1
  · ext n
    dsimp
    by_cases hn : (n : ℝ) = 0
    · simp [hn]
    · field_simp
  · simp

theorem theta_interval_limit (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    Tendsto (fun n : ℕ => (Chebyshev.theta (b*n) - Chebyshev.theta (a*n))/n)
      atTop (nhds (b-a)) := by
  simpa only [sub_div] using
    (scaled_theta_div_nat_limit b hb).sub (scaled_theta_div_nat_limit a ha)

theorem finite_step_theta_limit {ι : Type*} (s : Finset ι)
    (w a b : ι → ℝ) (ha : ∀ i ∈ s, 0 < a i) (hb : ∀ i ∈ s, 0 < b i) :
    Tendsto (fun n : ℕ => ∑ i ∈ s,
      w i * ((Chebyshev.theta (b i*n) - Chebyshev.theta (a i*n))/n))
      atTop (nhds (∑ i ∈ s, w i * (b i-a i))) := by
  exact tendsto_finsetSum s fun i hi =>
    (theta_interval_limit (a i) (b i) (ha i hi) (hb i hi)).const_mul (w i)

def primeIntervalMass (n : ℕ) (a b : ℝ) : ℝ := by
  classical
  exact ∑ p ∈ (Nat.primesLE ⌊b*n⌋₊).filter (fun p : ℕ => a*n < (p : ℝ)),
    Real.log (p : ℝ)

theorem primeIntervalMass_eq (n : ℕ) (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b) :
    primeIntervalMass n a b = Chebyshev.theta (b*n) - Chebyshev.theta (a*n) := by
  classical
  have han : 0 ≤ a*(n : ℝ) := mul_nonneg ha (Nat.cast_nonneg n)
  have hbn : 0 ≤ b*(n : ℝ) := mul_nonneg (ha.trans hab) (Nat.cast_nonneg n)
  have habn := mul_le_mul_of_nonneg_right hab (Nat.cast_nonneg n : (0 : ℝ) ≤ n)
  have hfilter : (Nat.primesLE ⌊b*n⌋₊).filter (fun p : ℕ => (p : ℝ) ≤ a*n) =
      Nat.primesLE ⌊a*n⌋₊ := by
    ext p
    simp only [Finset.mem_filter, Nat.mem_primesLE,
      Nat.le_floor_iff hbn, Nat.le_floor_iff han]
    constructor
    · rintro ⟨⟨_,hp⟩,hpa⟩
      exact ⟨hpa,hp⟩
    · rintro ⟨hpa,hp⟩
      exact ⟨⟨hpa.trans habn,hp⟩,hpa⟩
  have hsplit := Finset.sum_filter_add_sum_filter_not (Nat.primesLE ⌊b*n⌋₊)
    (fun p : ℕ => (p : ℝ) ≤ a*n) (fun p : ℕ => Real.log (p : ℝ))
  rw [hfilter] at hsplit
  simp only [not_le] at hsplit
  rw [Chebyshev.theta_eq_sum_primesLE, Chebyshev.theta_eq_sum_primesLE]
  exact eq_sub_of_add_eq' hsplit

theorem primeIntervalMass_limit (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    Tendsto (fun n : ℕ => primeIntervalMass n a b / n) atTop (nhds (b-a)) := by
  simp_rw [primeIntervalMass_eq _ a b ha.le hab]
  exact theta_interval_limit a b ha (ha.trans_le hab)

theorem finite_step_prime_sum_limit {ι : Type*} (s : Finset ι)
    (w a b : ι → ℝ) (ha : ∀ i ∈ s, 0 < a i) (hab : ∀ i ∈ s, a i ≤ b i) :
    Tendsto (fun n : ℕ => ∑ i ∈ s, w i * (primeIntervalMass n (a i) (b i)/n))
      atTop (nhds (∑ i ∈ s, w i * (b i-a i))) := by
  exact tendsto_finsetSum s fun i hi =>
    (primeIntervalMass_limit (a i) (b i) (ha i hi) (hab i hi)).const_mul (w i)

theorem finite_step_quadratic_cost_limit {ι : Type*} (s : Finset ι)
    (w a b : ι → ℝ) (ha : ∀ i ∈ s, 0 < a i) (hab : ∀ i ∈ s, a i ≤ b i) :
    Tendsto (fun n : ℕ =>
      (∑ i ∈ s, (n : ℝ)*w i*primeIntervalMass n (a i) (b i))/(n : ℝ)^2)
      atTop (nhds (∑ i ∈ s, w i * (b i-a i))) := by
  convert finite_step_prime_sum_limit s w a b ha hab using 1
  ext n
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro i hi
  by_cases hn : (n : ℝ) = 0
  · simp [hn]
  · field_simp

end OddZetaPNT

#print axioms OddZetaPNT.theta_div_self_limit
#print axioms OddZetaPNT.scaled_theta_div_nat_limit
#print axioms OddZetaPNT.theta_interval_limit
#print axioms OddZetaPNT.finite_step_theta_limit
#print axioms OddZetaPNT.primeIntervalMass_eq
#print axioms OddZetaPNT.primeIntervalMass_limit
#print axioms OddZetaPNT.finite_step_prime_sum_limit
#print axioms OddZetaPNT.finite_step_quadratic_cost_limit
