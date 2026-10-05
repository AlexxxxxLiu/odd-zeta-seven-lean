import OddZetaMixed.H158GlobalMajorant

/-!
# Exact prime sums for finite piecewise profiles

The endpoint convention is a < p/n <= b. The finite correction is retained
for every prime, and only afterwards shown to have zero quadratic rate.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset Filter

theorem h158CutoffPrimes_eq_primesLE (n : ℕ) :
    h158CutoffPrimes n = Nat.primesLE (57*n) := by
  ext p
  simp only [mem_h158CutoffPrimes, Nat.mem_primesLE]
  tauto

theorem h158Cutoff_log_sum (n : ℕ) :
    (∑ p ∈ h158CutoffPrimes n, Real.log (p : ℝ)) =
      Chebyshev.theta (57*(n : ℝ)) := by
  rw [h158CutoffPrimes_eq_primesLE, ← Chebyshev.theta_eq_sum_primesLE_log]
  norm_cast

def h158BandProfile (n p : ℕ) (f : ℝ → ℝ) (a b : ℝ) : ℝ :=
  if a*n < (p : ℝ) ∧ (p : ℝ) ≤ b*n then f ((p : ℝ)/n) else 0

theorem h158BandProfile_prime_sum (n : ℕ) (f : ℝ → ℝ) (a b : ℝ)
    (hb : 0 ≤ b) (hb57 : b ≤ 57) :
    h158ProfilePrimeSum n (fun p => h158BandProfile n p f a b) =
      OddZetaPNT.primeWeightedSum (fun t => f (t/n)) (a*n) (b*n) := by
  classical
  have hbn : 0 ≤ b*(n : ℝ) := mul_nonneg hb (Nat.cast_nonneg n)
  have hfilter : (h158CutoffPrimes n).filter
      (fun p : ℕ => a*n < (p : ℝ) ∧ (p : ℝ) ≤ b*n) =
      (Nat.primesLE ⌊b*n⌋₊).filter (fun p : ℕ => a*n < (p : ℝ)) := by
    ext p
    simp only [mem_filter, mem_h158CutoffPrimes, Nat.mem_primesLE,
      Nat.le_floor_iff hbn]
    constructor
    · rintro ⟨⟨hp,_⟩,ha,hb⟩
      exact ⟨⟨hb,hp⟩,ha⟩
    · rintro ⟨⟨hbp,hp⟩,ha⟩
      refine ⟨⟨hp,?_⟩,ha,hbp⟩
      have hx := hbp.trans (mul_le_mul_of_nonneg_right hb57 (Nat.cast_nonneg n))
      exact_mod_cast hx
  unfold h158ProfilePrimeSum h158BandProfile OddZetaPNT.primeWeightedSum
  simp only [ite_mul, zero_mul, ← sum_filter, hfilter]

theorem h158PrefixProfile_prime_sum (n : ℕ) (a : ℝ)
    (ha : 0 ≤ a) (ha57 : a ≤ 57) :
    h158ProfilePrimeSum n (fun p => if (p : ℝ) ≤ a*n then 1 else 0) =
      Chebyshev.theta (a*n) := by
  classical
  have han : 0 ≤ a*(n : ℝ) := mul_nonneg ha (Nat.cast_nonneg n)
  have hfilter : (h158CutoffPrimes n).filter (fun p : ℕ => (p : ℝ) ≤ a*n) =
      Nat.primesLE ⌊a*n⌋₊ := by
    ext p
    simp only [mem_filter, mem_h158CutoffPrimes, Nat.mem_primesLE,
      Nat.le_floor_iff han]
    constructor
    · rintro ⟨⟨hp,_⟩,hpa⟩
      exact ⟨hpa,hp⟩
    · rintro ⟨hpa,hp⟩
      refine ⟨⟨hp,?_⟩,hpa⟩
      have hx := hpa.trans (mul_le_mul_of_nonneg_right ha57 (Nat.cast_nonneg n))
      exact_mod_cast hx
  unfold h158ProfilePrimeSum
  simp only [ite_mul, one_mul, zero_mul, ← sum_filter, hfilter,
    Chebyshev.theta_eq_sum_primesLE]

def h158PiecewisePrimeProfile {ι : Type*} (s : Finset ι)
    (f : ι → ℝ → ℝ) (a b : ι → ℝ) (cut small C : ℝ) (n p : ℕ) : ℝ :=
  small*n*(if (p : ℝ) ≤ cut*n then 1 else 0)+
    n*(∑ i ∈ s, h158BandProfile n p (f i) (a i) (b i))+C

theorem h158PiecewisePrimeProfile_sum {ι : Type*} (s : Finset ι)
    (f : ι → ℝ → ℝ) (a b : ι → ℝ) (cut small C : ℝ) (n : ℕ)
    (hc : 0 ≤ cut) (hc57 : cut ≤ 57)
    (hb : ∀ i ∈ s, 0 ≤ b i) (hb57 : ∀ i ∈ s, b i ≤ 57) :
    h158ProfilePrimeSum n (h158PiecewisePrimeProfile s f a b cut small C n) =
      small*n*Chebyshev.theta (cut*n)+
      (∑ i ∈ s, (n : ℝ)*OddZetaPNT.primeWeightedSum
        (fun t => f i (t/n)) (a i*n) (b i*n))+C*Chebyshev.theta (57*n) := by
  classical
  unfold h158ProfilePrimeSum h158PiecewisePrimeProfile
  simp only [add_mul, sum_add_distrib, mul_assoc, ← mul_sum]
  rw [h158Cutoff_log_sum]
  have hp := h158PrefixProfile_prime_sum n cut hc hc57
  unfold h158ProfilePrimeSum at hp
  rw [hp]
  congr 1
  simp_rw [sum_mul]
  rw [sum_comm]
  apply congrArg (fun z : ℝ => small*(n*Chebyshev.theta (cut*n))+n*z)
  apply sum_congr rfl
  intro i hi
  exact h158BandProfile_prime_sum n (f i) (a i) (b i) (hb i hi) (hb57 i hi)

theorem h158ThetaCorrection_ratio_limit (C : ℝ) :
    Tendsto (fun n : ℕ => C*Chebyshev.theta (57*(n : ℝ))/(n : ℝ)^2)
      atTop (nhds 0) := by
  have hi : Tendsto (fun n : ℕ => (n : ℝ)⁻¹) atTop (nhds 0) :=
    tendsto_inv_atTop_zero.comp tendsto_natCast_atTop_atTop
  have ht := ((OddZetaPNT.scaled_theta_div_nat_limit 57 (by norm_num)).const_mul C).mul hi
  convert ht using 1
  · ext n
    simp only [div_eq_mul_inv, pow_two, mul_inv_rev]
    ring
  · simp

theorem h158Prefix_scaled_ratio_limit (cut small : ℝ) (hc : 0 < cut) :
    Tendsto (fun n : ℕ => small*n*Chebyshev.theta (cut*n)/(n : ℝ)^2)
      atTop (nhds (small*cut)) := by
  have ht := (OddZetaPNT.scaled_theta_div_nat_limit cut hc).const_mul small
  apply ht.congr'
  filter_upwards [eventually_ne_atTop (0 : ℕ)] with n hn
  have hnR : (n : ℝ) ≠ 0 := by exact_mod_cast hn
  field_simp

theorem h158PiecewisePrimeProfile_ratio_limit {ι : Type*} (s : Finset ι)
    (f : ι → ℝ → ℝ) (a b : ι → ℝ) (cut small C : ℝ)
    (hc : 0 < cut) (hc57 : cut ≤ 57)
    (ha : ∀ i ∈ s, 0 < a i) (hab : ∀ i ∈ s, a i ≤ b i)
    (hb57 : ∀ i ∈ s, b i ≤ 57)
    (hf : ∀ i ∈ s, ContinuousOn (f i) (Set.Icc (a i) (b i))) :
    Tendsto (fun n : ℕ =>
      h158ProfilePrimeSum n (h158PiecewisePrimeProfile s f a b cut small C n)/(n : ℝ)^2)
      atTop (nhds (small*cut+∑ i ∈ s, ∫ x in a i..b i, f i x)) := by
  have hb (i : ι) (hi : i ∈ s) : 0 ≤ b i := (ha i hi).le.trans (hab i hi)
  simp_rw [h158PiecewisePrimeProfile_sum s f a b cut small C _ hc.le hc57 hb hb57,
    add_div]
  have ht := ((h158Prefix_scaled_ratio_limit cut small hc).add
    (weighted_prime_quadratic_rate s f a b hf ha hab)).add (h158ThetaCorrection_ratio_limit C)
  simpa only [add_zero] using ht

theorem h158BandProfile_nonneg (n p : ℕ) (hn : 0 < n)
    (f : ℝ → ℝ) (a b : ℝ) (hf : ∀ x ∈ Set.Icc a b, 0 ≤ f x) :
    0 ≤ h158BandProfile n p f a b := by
  have hnR : (0 : ℝ) < n := by exact_mod_cast hn
  unfold h158BandProfile
  split_ifs with h
  · exact hf _ ⟨((lt_div_iff₀ hnR).mpr h.1).le, (div_le_iff₀ hnR).mpr h.2⟩
  · exact le_rfl

theorem h158PiecewisePrimeProfile_nonneg {ι : Type*} (s : Finset ι)
    (f : ι → ℝ → ℝ) (a b : ι → ℝ) (cut small C : ℝ) (n p : ℕ)
    (hn : 0 < n) (hs : 0 ≤ small) (hC : 0 ≤ C)
    (hf : ∀ i ∈ s, ∀ x ∈ Set.Icc (a i) (b i), 0 ≤ f i x) :
    0 ≤ h158PiecewisePrimeProfile s f a b cut small C n p := by
  have hsum : 0 ≤ ∑ i ∈ s, h158BandProfile n p (f i) (a i) (b i) :=
    sum_nonneg (fun i hi => h158BandProfile_nonneg n p hn _ _ _ (hf i hi))
  unfold h158PiecewisePrimeProfile
  split_ifs <;> positivity

theorem h158PiecewisePrimeProfile_dominates_band {ι : Type*} (s : Finset ι)
    (f : ι → ℝ → ℝ) (a b : ι → ℝ) (cut small C : ℝ) (n p : ℕ)
    (hn : 0 < n) (hs : 0 ≤ small)
    (hf : ∀ i ∈ s, ∀ x ∈ Set.Icc (a i) (b i), 0 ≤ f i x)
    (i : ι) (hi : i ∈ s) (hleft : a i*n < (p : ℝ)) (hright : (p : ℝ) ≤ b i*n) :
    (n : ℝ)*f i ((p : ℝ)/n)+C ≤
      h158PiecewisePrimeProfile s f a b cut small C n p := by
  have hsum := single_le_sum
    (fun j hj => h158BandProfile_nonneg n p hn (f j) (a j) (b j) (hf j hj)) hi
  rw [h158BandProfile, if_pos ⟨hleft,hright⟩] at hsum
  have hnR : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hm := mul_le_mul_of_nonneg_left hsum hnR
  have hpref : 0 ≤ small*n*(if (p : ℝ) ≤ cut*n then 1 else 0) := by
    split_ifs <;> positivity
  unfold h158PiecewisePrimeProfile
  linarith

theorem h158PiecewisePrimeProfile_dominates_prefix {ι : Type*} (s : Finset ι)
    (f : ι → ℝ → ℝ) (a b : ι → ℝ) (cut small C : ℝ) (n p : ℕ)
    (hn : 0 < n)
    (hf : ∀ i ∈ s, ∀ x ∈ Set.Icc (a i) (b i), 0 ≤ f i x)
    (hp : (p : ℝ) ≤ cut*n) :
    small*n+C ≤ h158PiecewisePrimeProfile s f a b cut small C n p := by
  have hsum : 0 ≤ ∑ i ∈ s, h158BandProfile n p (f i) (a i) (b i) :=
    sum_nonneg (fun i hi => h158BandProfile_nonneg n p hn _ _ _ (hf i hi))
  unfold h158PiecewisePrimeProfile
  rw [if_pos hp, mul_one]
  have := mul_nonneg (Nat.cast_nonneg n : (0 : ℝ) ≤ n) hsum
  linarith

/-- Application bridge retaining the ACTUAL primitive scalar at each prime.
The only local input is the certified finite profile inequality. -/
theorem h158PrimitiveCost_rate_of_piecewise_profile {ι : Type*} (s : Finset ι)
    (f : ι → ℝ → ℝ) (a b : ι → ℝ) (cut small C : ℝ)
    (hc : 0 < cut) (hc57 : cut ≤ 57) (hs : 0 ≤ small) (hC : 0 ≤ C)
    (ha : ∀ i ∈ s, 0 < a i) (hab : ∀ i ∈ s, a i ≤ b i)
    (hb57 : ∀ i ∈ s, b i ≤ 57)
    (hf : ∀ i ∈ s, ContinuousOn (f i) (Set.Icc (a i) (b i)))
    (hf0 : ∀ i ∈ s, ∀ x ∈ Set.Icc (a i) (b i), 0 ≤ f i x)
    (hlocal : ∀ᶠ n : ℕ in atTop, (h158SevenMatrix n).det ≠ 0 →
      ∀ p, p.Prime → p ≤ 57*n → 158*n+2 < p^2 → ¬p ∣ n →
        (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤
          h158PiecewisePrimeProfile s f a b cut small C n p) :
    UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0} h158PrimitiveCost
      (small*cut+∑ i ∈ s, ∫ x in a i..b i, f i x) := by
  apply h158PrimitiveCost_rate_of_generic_profile
    (h158PiecewisePrimeProfile s f a b cut small C)
  · filter_upwards [eventually_gt_atTop (0 : ℕ)] with n hn
    intro p _ _
    exact h158PiecewisePrimeProfile_nonneg s f a b cut small C n p hn hs hC hf0
  · exact hlocal
  · exact upperQuadraticRateOn_of_ratio_limit _ _ _
      (h158PiecewisePrimeProfile_ratio_limit s f a b cut small C hc hc57 ha hab hb57 hf)

#print axioms h158PiecewisePrimeProfile_sum
#print axioms h158PiecewisePrimeProfile_ratio_limit
#print axioms h158PrimitiveCost_rate_of_piecewise_profile

end OddZetaMixed
