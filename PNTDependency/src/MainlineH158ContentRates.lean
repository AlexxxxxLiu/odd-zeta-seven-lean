import MainlineWeightedPrimes

/-!
Exact rank-2n prime-band saving rates from section 11 of the second-band note.
Natural subtraction encodes the positive-part integer exponents. These are
analytic rates of specified finite sums, not local divisibility statements
and not the full h158 global bound.
-/

noncomputable section

namespace OddZetaPNT

open Filter Finset MeasureTheory

def primeBandCost (w : ℕ → ℕ → ℝ) (n : ℕ) (a b : ℝ) : ℝ := by
  classical
  exact (∑ p ∈ (Nat.primesLE ⌊b*n⌋₊).filter (fun p : ℕ => a*n < (p : ℝ)),
    w n p * Real.log (p : ℝ)) / (n : ℝ)^2

theorem primeBandCost_profile (f : ℝ → ℝ) (n : ℕ) (a b : ℝ) :
    primeBandCost (fun n p => (n : ℝ) * f ((p : ℝ)/n)) n a b =
      primeWeightedInterval n f a b := by
  classical
  unfold primeBandCost primeWeightedInterval primeWeightedSum
  simp_rw [mul_assoc, ← mul_sum]
  by_cases hn : (n : ℝ) = 0
  · simp [hn]
  · field_simp

/-- A bounded error per exponent costs at most that constant times the prime mass. -/
theorem primeBandCost_sub_bound (w v : ℕ → ℕ → ℝ) (n : ℕ) (a b C : ℝ)
    (h : ∀ p ∈ (Nat.primesLE ⌊b*n⌋₊).filter (fun p : ℕ => a*n < (p : ℝ)),
      |w n p - v n p| ≤ C) :
    |primeBandCost w n a b - primeBandCost v n a b| ≤
      C * primeIntervalMass n a b / (n : ℝ)^2 := by
  classical
  unfold primeBandCost primeIntervalMass
  rw [← sub_div, abs_div, abs_of_nonneg (sq_nonneg (n : ℝ)), ← sum_sub_distrib]
  apply div_le_div_of_nonneg_right _ (sq_nonneg (n : ℝ))
  calc
    _ ≤ ∑ p ∈ (Nat.primesLE ⌊b*n⌋₊).filter (fun p : ℕ => a*n < (p : ℝ)),
        |w n p * Real.log (p : ℝ) - v n p * Real.log (p : ℝ)| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ p ∈ (Nat.primesLE ⌊b*n⌋₊).filter (fun p : ℕ => a*n < (p : ℝ)),
        C * Real.log (p : ℝ) := by
      apply sum_le_sum
      intro p hp
      have hprime := (Nat.mem_primesLE.mp (mem_filter.mp hp).1).2
      have hlog : 0 ≤ Real.log (p : ℝ) := Real.log_nonneg (by exact_mod_cast hprime.one_le)
      rw [← sub_mul, abs_mul, abs_of_nonneg hlog]
      exact mul_le_mul_of_nonneg_right (h p hp) hlog
    _ = _ := (mul_sum _ _ _).symm

theorem primeBandCost_bounded_perturbation_limit (w : ℕ → ℕ → ℝ) (f : ℝ → ℝ)
    (a b C L : ℝ) (ha : 0 < a) (hab : a ≤ b)
    (hf : Tendsto (fun n : ℕ => primeWeightedInterval n f a b) atTop (nhds L))
    (hw : ∀ᶠ n : ℕ in atTop,
      ∀ p ∈ (Nat.primesLE ⌊b*n⌋₊).filter (fun p : ℕ => a*n < (p : ℝ)),
        |w n p - (n : ℝ) * f ((p : ℝ)/n)| ≤ C) :
    Tendsto (fun n : ℕ => primeBandCost w n a b) atTop (nhds L) := by
  have hzero : Tendsto (fun n : ℕ => C * primeIntervalMass n a b / (n : ℝ)^2)
      atTop (nhds 0) := by
    have ht := ((primeIntervalMass_limit a b ha hab).const_mul C).mul
      (tendsto_const_div_atTop_nhds_zero_nat (1 : ℝ))
    convert ht using 1
    · ext n
      by_cases hn : (n : ℝ) = 0
      · simp [hn]
      · field_simp
    · simp
  have herr : Tendsto (fun n : ℕ => primeBandCost w n a b - primeWeightedInterval n f a b)
      atTop (nhds 0) := by
    apply squeeze_zero_norm' _ hzero
    filter_upwards [hw] with n hn
    simpa only [Real.norm_eq_abs, primeBandCost_profile] using
      primeBandCost_sub_bound w (fun n p => (n : ℝ)*f ((p : ℝ)/n)) n a b C hn
  simpa only [sub_add_cancel, zero_add] using herr.add hf

def h158Weight54 (n p : ℕ) : ℕ := 2*n - min (n+1) (2*(55*n-p+1))
def h158Weight55 (n p : ℕ) : ℕ := 2*n - 2*(56*n-p+1)
def h158Weight56 (n p : ℕ) : ℕ := 2*n - (57*n-p+1)

def h158Profile54 (x : ℝ) : ℝ := 2 - min 1 (2*(55-x))

theorem h158Weight54_rounding (n p : ℕ) (hn : 1 ≤ n) (hp : p ≤ 55*n) :
    |(h158Weight54 n p : ℝ) - (n : ℝ)*h158Profile54 ((p : ℝ)/n)| ≤ 2 := by
  have hn' : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (by omega)
  have hsub : min (n+1) (2*(55*n-p+1)) ≤ 2*n := (min_le_left _ _).trans (by omega)
  have hcast : (h158Weight54 n p : ℝ) =
      2*(n : ℝ) - min ((n : ℝ)+1) (2*(55*(n : ℝ)-(p : ℝ)+1)) := by
    simp only [h158Weight54, Nat.cast_sub hsub, Nat.cast_min, Nat.cast_add,
      Nat.cast_mul, Nat.cast_ofNat, Nat.cast_one, Nat.cast_sub hp]
  have hideal : (n : ℝ)*h158Profile54 ((p : ℝ)/n) =
      2*(n : ℝ) - min (n : ℝ) (2*(55*(n : ℝ)-(p : ℝ))) := by
    unfold h158Profile54
    rw [mul_sub, mul_min_of_nonneg _ _ (Nat.cast_nonneg n), mul_one]
    congr 1
    · ring
    · congr 1
      field_simp
  rw [hcast, hideal]
  have hm := abs_min_sub_min_le_max ((n : ℝ)+1) (2*(55*(n : ℝ)-(p : ℝ)+1))
    (n : ℝ) (2*(55*(n : ℝ)-(p : ℝ)))
  have h1 : (n : ℝ)+1-n = 1 := by ring
  have h2 : 2*(55*(n : ℝ)-(p : ℝ)+1)-2*(55*(n : ℝ)-(p : ℝ)) = 2 := by ring
  rw [h1, h2] at hm
  norm_num at hm
  have heq (A B T : ℝ) : (T-A)-(T-B) = -(A-B) := by ring
  rw [heq, abs_neg]
  exact hm

theorem h158Weight55_rounding (n p : ℕ) (hn : 1 ≤ n)
    (hlo : 55*n < p) (hhi : p ≤ 56*n) :
    |(h158Weight55 n p : ℝ) - (n : ℝ)*(2*((p : ℝ)/n)-110)| ≤ 2 := by
  have hn' : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (by omega)
  have hs : 2*(56*n-p+1) ≤ 2*n := by omega
  have heq : (h158Weight55 n p : ℝ) = 2*(n : ℝ)-2*(56*(n : ℝ)-(p : ℝ)+1) := by
    simp [h158Weight55, Nat.cast_sub hs, Nat.cast_sub hhi]
  rw [heq]
  have hid : 2*(n : ℝ)-2*(56*(n : ℝ)-(p : ℝ)+1) -
      (n : ℝ)*(2*((p : ℝ)/n)-110) = -2 := by
    field_simp
    ring
  rw [hid]
  norm_num

theorem h158Weight56_rounding (n p : ℕ) (hn : 1 ≤ n)
    (hlo : 56*n < p) (hhi : p ≤ 57*n) :
    |(h158Weight56 n p : ℝ) - (n : ℝ)*((p : ℝ)/n-55)| ≤ 1 := by
  have hn' : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (by omega)
  have hs : 57*n-p+1 ≤ 2*n := by omega
  have heq : (h158Weight56 n p : ℝ) = 2*(n : ℝ)-(57*(n : ℝ)-(p : ℝ)+1) := by
    simp [h158Weight56, Nat.cast_sub hs, Nat.cast_sub hhi]
  rw [heq]
  have hid : 2*(n : ℝ)-(57*(n : ℝ)-(p : ℝ)+1) -
      (n : ℝ)*((p : ℝ)/n-55) = -1 := by
    field_simp
    ring
  rw [hid]
  norm_num

theorem h158_upper_endpoints_not_prime (n : ℕ) :
    ¬ Nat.Prime (55*n) ∧ ¬ Nat.Prime (56*n) := by
  have h55 : ¬ Nat.Prime 55 := by decide
  have h56 : ¬ Nat.Prime 56 := by decide
  simp [Nat.prime_mul_iff, h55, h56]

theorem primeBand_filter_open_eq_closed (A B n : ℕ) (hB : ¬ Nat.Prime (B*n)) :
    (Nat.primesLE (B*n)).filter (fun p => A*n < p ∧ p < B*n) =
      (Nat.primesLE (B*n)).filter (fun p => A*n < p) := by
  classical
  ext p
  simp only [mem_filter, Nat.mem_primesLE]
  constructor
  · rintro ⟨hp, hpA, _⟩
    exact ⟨hp, hpA⟩
  · rintro ⟨⟨hpB, hprime⟩, hpA⟩
    refine ⟨⟨hpB, hprime⟩, hpA, hpB.eq_or_lt.resolve_left ?_⟩
    intro heq
    exact hB (heq ▸ hprime)

theorem primeBandCost_nat (w : ℕ → ℕ → ℝ) (n A B : ℕ) :
    primeBandCost w n A B =
      (∑ p ∈ (Nat.primesLE (B*n)).filter (fun p => A*n < p),
        w n p * Real.log (p : ℝ)) / (n : ℝ)^2 := by
  classical
  unfold primeBandCost
  simp only [← Nat.cast_mul, Nat.floor_natCast, Nat.cast_lt]

/-- Exact strict upper endpoints in the first two sums; the third is upper-closed. -/
def h158Content54 (n : ℕ) : ℝ := by
  classical
  exact ∑ p ∈ (Nat.primesLE (55*n)).filter (fun p => 54*n < p ∧ p < 55*n),
    (h158Weight54 n p : ℝ) * Real.log (p : ℝ)

def h158Content55 (n : ℕ) : ℝ := by
  classical
  exact ∑ p ∈ (Nat.primesLE (56*n)).filter (fun p => 55*n < p ∧ p < 56*n),
    (h158Weight55 n p : ℝ) * Real.log (p : ℝ)

def h158Content56 (n : ℕ) : ℝ := by
  classical
  exact ∑ p ∈ (Nat.primesLE (57*n)).filter (fun p => 56*n < p),
    (h158Weight56 n p : ℝ) * Real.log (p : ℝ)

theorem h158Content54_normalized (n : ℕ) :
    h158Content54 n / (n : ℝ)^2 = primeBandCost (fun n p => h158Weight54 n p) n 54 55 := by
  rw [show (54 : ℝ) = (54 : ℕ) from rfl, show (55 : ℝ) = (55 : ℕ) from rfl,
    primeBandCost_nat]
  unfold h158Content54
  rw [primeBand_filter_open_eq_closed 54 55 n (h158_upper_endpoints_not_prime n).1]

theorem h158Content55_normalized (n : ℕ) :
    h158Content55 n / (n : ℝ)^2 = primeBandCost (fun n p => h158Weight55 n p) n 55 56 := by
  rw [show (55 : ℝ) = (55 : ℕ) from rfl, show (56 : ℝ) = (56 : ℕ) from rfl,
    primeBandCost_nat]
  unfold h158Content55
  rw [primeBand_filter_open_eq_closed 55 56 n (h158_upper_endpoints_not_prime n).2]

theorem h158Content56_normalized (n : ℕ) :
    h158Content56 n / (n : ℝ)^2 = primeBandCost (fun n p => h158Weight56 n p) n 56 57 := by
  rw [show (56 : ℝ) = (56 : ℕ) from rfl, show (57 : ℝ) = (57 : ℕ) from rfl,
    primeBandCost_nat]
  rfl

theorem h158_integral_affine (u v a b : ℝ) :
    (∫ x in a..b, u*x+v) = u*((b^2-a^2)/2)+v*(b-a) := by
  have hi : IntervalIntegrable (fun x : ℝ => u*x) volume a b :=
    (continuous_const.mul continuous_id).intervalIntegrable a b
  rw [intervalIntegral.integral_add hi intervalIntegrable_const,
    intervalIntegral.integral_const_mul, integral_id,
    intervalIntegral.integral_const]
  simp only [smul_eq_mul]
  ring

theorem h158Profile54_continuous : Continuous h158Profile54 := by
  unfold h158Profile54
  fun_prop

theorem h158Profile54_integral : (∫ x in (54 : ℝ)..55, h158Profile54 x) = 5/4 := by
  have hleft : (∫ x in (54 : ℝ)..109/2, h158Profile54 x) = 1/2 := by
    calc
      _ = ∫ _ in (54 : ℝ)..109/2, (1 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [Set.uIcc_of_le (by norm_num)] at hx
        simp only [Set.mem_Icc] at hx
        rw [h158Profile54, min_eq_left (by linarith)]
        norm_num
      _ = _ := by norm_num [intervalIntegral.integral_const]
  have hright : (∫ x in (109/2 : ℝ)..55, h158Profile54 x) = 3/4 := by
    calc
      _ = ∫ x in (109/2 : ℝ)..55, (2*x + (-108)) := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [Set.uIcc_of_le (by norm_num)] at hx
        simp only [Set.mem_Icc] at hx
        rw [h158Profile54, min_eq_right (by linarith)]
        ring
      _ = _ := by rw [h158_integral_affine]; norm_num
  rw [← intervalIntegral.integral_add_adjacent_intervals
    (h158Profile54_continuous.intervalIntegrable 54 (109/2))
    (h158Profile54_continuous.intervalIntegrable (109/2) 55), hleft, hright]
  norm_num

theorem h158Profile54_prime_limit :
    Tendsto (fun n : ℕ => primeWeightedInterval n h158Profile54 54 55)
      atTop (nhds (5/4)) := by
  rw [← h158Profile54_integral]
  exact primeWeightedInterval_continuous_limit h158Profile54 54 55
    (by norm_num) (by norm_num) h158Profile54_continuous.continuousOn

theorem h158Profile55_prime_limit :
    Tendsto (fun n : ℕ => primeWeightedInterval n (fun x => 2*x-110) 55 56)
      atTop (nhds 1) := by
  convert primeWeightedInterval_affine_limit 2 (-110) 55 56 (by norm_num) (by norm_num) using 1
  · simp only [sub_eq_add_neg]
  · norm_num

theorem h158Profile56_prime_limit :
    Tendsto (fun n : ℕ => primeWeightedInterval n (fun x => x-55) 56 57)
      atTop (nhds (3/2)) := by
  convert primeWeightedInterval_affine_limit 1 (-55) 56 57 (by norm_num) (by norm_num) using 1
  · simp only [one_mul, sub_eq_add_neg]
  · norm_num

theorem h158Weight54_band_rounding (n : ℕ) (hn : 1 ≤ n) :
    ∀ p ∈ (Nat.primesLE ⌊(55 : ℝ)*n⌋₊).filter (fun p : ℕ => 54*n < (p : ℝ)),
      |(h158Weight54 n p : ℝ) - (n : ℝ)*h158Profile54 ((p : ℝ)/n)| ≤ 2 := by
  intro p hp
  have hhi : p ≤ 55*n := by
    have h := (Nat.mem_primesLE.mp (mem_filter.mp hp).1).1
    simpa only [show (55 : ℝ)*(n : ℝ) = ((55*n : ℕ) : ℝ) by push_cast; rfl,
      Nat.floor_natCast] using h
  exact h158Weight54_rounding n p hn hhi

theorem h158Weight55_band_rounding (n : ℕ) (hn : 1 ≤ n) :
    ∀ p ∈ (Nat.primesLE ⌊(56 : ℝ)*n⌋₊).filter (fun p : ℕ => 55*n < (p : ℝ)),
      |(h158Weight55 n p : ℝ) - (n : ℝ)*(2*((p : ℝ)/n)-110)| ≤ 2 := by
  intro p hp
  have hlo : 55*n < p := by exact_mod_cast (mem_filter.mp hp).2
  have hhi : p ≤ 56*n := by
    have h := (Nat.mem_primesLE.mp (mem_filter.mp hp).1).1
    simpa only [show (56 : ℝ)*(n : ℝ) = ((56*n : ℕ) : ℝ) by push_cast; rfl,
      Nat.floor_natCast] using h
  exact h158Weight55_rounding n p hn hlo hhi

theorem h158Weight56_band_rounding (n : ℕ) (hn : 1 ≤ n) :
    ∀ p ∈ (Nat.primesLE ⌊(57 : ℝ)*n⌋₊).filter (fun p : ℕ => 56*n < (p : ℝ)),
      |(h158Weight56 n p : ℝ) - (n : ℝ)*((p : ℝ)/n-55)| ≤ 1 := by
  intro p hp
  have hlo : 56*n < p := by exact_mod_cast (mem_filter.mp hp).2
  have hhi : p ≤ 57*n := by
    have h := (Nat.mem_primesLE.mp (mem_filter.mp hp).1).1
    simpa only [show (57 : ℝ)*(n : ℝ) = ((57*n : ℕ) : ℝ) by push_cast; rfl,
      Nat.floor_natCast] using h
  exact h158Weight56_rounding n p hn hlo hhi

theorem h158Content54_error (n : ℕ) (hn : 1 ≤ n) :
    |h158Content54 n / (n : ℝ)^2 - primeWeightedInterval n h158Profile54 54 55| ≤
      2 * primeIntervalMass n 54 55 / (n : ℝ)^2 := by
  rw [h158Content54_normalized, ← primeBandCost_profile]
  exact primeBandCost_sub_bound _ _ n 54 55 2 (h158Weight54_band_rounding n hn)

theorem h158Content55_error (n : ℕ) (hn : 1 ≤ n) :
    |h158Content55 n / (n : ℝ)^2 - primeWeightedInterval n (fun x => 2*x-110) 55 56| ≤
      2 * primeIntervalMass n 55 56 / (n : ℝ)^2 := by
  rw [h158Content55_normalized, ← primeBandCost_profile]
  exact primeBandCost_sub_bound _ _ n 55 56 2 (h158Weight55_band_rounding n hn)

theorem h158Content56_error (n : ℕ) (hn : 1 ≤ n) :
    |h158Content56 n / (n : ℝ)^2 - primeWeightedInterval n (fun x => x-55) 56 57| ≤
      primeIntervalMass n 56 57 / (n : ℝ)^2 := by
  rw [h158Content56_normalized, ← primeBandCost_profile]
  simpa only [one_mul] using
    primeBandCost_sub_bound _ _ n 56 57 1 (h158Weight56_band_rounding n hn)

theorem h158Content54_rate :
    Tendsto (fun n : ℕ => h158Content54 n / (n : ℝ)^2) atTop (nhds (5/4)) := by
  simp_rw [h158Content54_normalized]
  apply primeBandCost_bounded_perturbation_limit _ h158Profile54 54 55 2 (5/4)
    (by norm_num) (by norm_num) h158Profile54_prime_limit
  filter_upwards [eventually_ge_atTop (1 : ℕ)] with n hn
  exact h158Weight54_band_rounding n hn

theorem h158Content55_rate :
    Tendsto (fun n : ℕ => h158Content55 n / (n : ℝ)^2) atTop (nhds 1) := by
  simp_rw [h158Content55_normalized]
  apply primeBandCost_bounded_perturbation_limit _ (fun x => 2*x-110) 55 56 2 1
    (by norm_num) (by norm_num) h158Profile55_prime_limit
  filter_upwards [eventually_ge_atTop (1 : ℕ)] with n hn
  exact h158Weight55_band_rounding n hn

theorem h158Content56_rate :
    Tendsto (fun n : ℕ => h158Content56 n / (n : ℝ)^2) atTop (nhds (3/2)) := by
  simp_rw [h158Content56_normalized]
  apply primeBandCost_bounded_perturbation_limit _ (fun x => x-55) 56 57 1 (3/2)
    (by norm_num) (by norm_num) h158Profile56_prime_limit
  filter_upwards [eventually_ge_atTop (1 : ℕ)] with n hn
  exact h158Weight56_band_rounding n hn

end OddZetaPNT

#print axioms OddZetaPNT.primeBandCost_profile
#print axioms OddZetaPNT.primeBandCost_sub_bound
#print axioms OddZetaPNT.primeBandCost_bounded_perturbation_limit
#print axioms OddZetaPNT.h158Weight54_rounding
#print axioms OddZetaPNT.h158Weight55_rounding
#print axioms OddZetaPNT.h158Weight56_rounding
#print axioms OddZetaPNT.h158_upper_endpoints_not_prime
#print axioms OddZetaPNT.primeBand_filter_open_eq_closed
#print axioms OddZetaPNT.primeBandCost_nat
#print axioms OddZetaPNT.h158Content54_normalized
#print axioms OddZetaPNT.h158Content55_normalized
#print axioms OddZetaPNT.h158Content56_normalized
#print axioms OddZetaPNT.h158_integral_affine
#print axioms OddZetaPNT.h158Profile54_continuous
#print axioms OddZetaPNT.h158Profile54_integral
#print axioms OddZetaPNT.h158Profile54_prime_limit
#print axioms OddZetaPNT.h158Profile55_prime_limit
#print axioms OddZetaPNT.h158Profile56_prime_limit
#print axioms OddZetaPNT.h158Weight54_band_rounding
#print axioms OddZetaPNT.h158Weight55_band_rounding
#print axioms OddZetaPNT.h158Weight56_band_rounding
#print axioms OddZetaPNT.h158Content54_error
#print axioms OddZetaPNT.h158Content55_error
#print axioms OddZetaPNT.h158Content56_error
#print axioms OddZetaPNT.h158Content54_rate
#print axioms OddZetaPNT.h158Content55_rate
#print axioms OddZetaPNT.h158Content56_rate
