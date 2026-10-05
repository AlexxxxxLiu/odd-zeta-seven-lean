import MainlinePrimeIntervals
import Mathlib.NumberTheory.AbelSummation
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.Calculus.Deriv.Polynomial
import Mathlib.Topology.ContinuousMap.Weierstrass

/-!
Exact partial summation for finite prime sums and weighted PNT consequences.
The proof proceeds from the affine weight to C1 and polynomial weights, then
to arbitrary continuous weights by uniform polynomial approximation and a
finite-sum error bound. All compact intervals and finite families are fixed.
This isolated adapter does not assert the h158 weighted global bound.
-/

noncomputable section

namespace OddZetaPNT

open Filter Finset MeasureTheory

/-- The actual finite prime sum, with the lower endpoint excluded. -/
def primeWeightedSum (f : ℝ → ℝ) (a b : ℝ) : ℝ := by
  classical
  exact ∑ p ∈ (Nat.primesLE ⌊b⌋₊).filter (fun p : ℕ => a < (p : ℝ)),
    f p * Real.log (p : ℝ)

theorem primeWeightedSum_partial_summation (f : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hab : a ≤ b)
    (hf : ∀ t ∈ Set.Icc a b, DifferentiableAt ℝ f t)
    (hi : IntegrableOn (deriv f) (Set.Icc a b)) :
    primeWeightedSum f a b = f b * Chebyshev.theta b - f a * Chebyshev.theta a -
      ∫ t in a..b, deriv f t * Chebyshev.theta t := by
  classical
  let c : ℕ → ℝ := fun p => if p.Prime then Real.log (p : ℝ) else 0
  have hc (t : ℝ) : (∑ p ∈ Icc 0 ⌊t⌋₊, c p) = Chebyshev.theta t := by
    simp [c, Chebyshev.theta_eq_sum_Icc, sum_filter]
  have hs : primeWeightedSum f a b = ∑ p ∈ Ioc ⌊a⌋₊ ⌊b⌋₊, f p * c p := by
    have hset : (Nat.primesLE ⌊b⌋₊).filter (fun p : ℕ => a < (p : ℝ)) =
        (Ioc ⌊a⌋₊ ⌊b⌋₊).filter Nat.Prime := by
      ext p
      simp only [mem_filter, Nat.mem_primesLE, mem_Ioc, Nat.floor_lt ha]
      tauto
    unfold primeWeightedSum
    rw [hset, sum_filter]
    apply sum_congr rfl
    intro p hp
    simp [c, mul_ite]
  rw [hs]
  have h := sum_mul_eq_sub_sub_integral_mul c ha hab hf hi
  simp_rw [hc] at h
  rwa [intervalIntegral.integral_of_le hab]

theorem primeWeightedSum_id (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b) :
    primeWeightedSum (fun x => x) a b =
      b * Chebyshev.theta b - a * Chebyshev.theta a - ∫ t in a..b, Chebyshev.theta t := by
  simpa using primeWeightedSum_partial_summation (fun x => x) a b ha hab
    (fun t _ => differentiableAt_id)
    (by simp)

/-- Uniformity is on a fixed positive compact interval, not a moving interval. -/
theorem scaled_theta_uniform (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    TendstoUniformlyOn (fun (n : ℕ) (x : ℝ) => Chebyshev.theta (x*n) / n)
      (fun x => x) atTop (Set.Icc a b) := by
  rw [Metric.tendstoUniformlyOn_iff]
  intro ε hε
  have hb : 0 < b := ha.trans_le hab
  have ht := (Metric.tendsto_nhds.mp theta_div_self_limit) (ε / b) (div_pos hε hb)
  obtain ⟨K, hK⟩ := eventually_atTop.mp ht
  have hnK : ∀ᶠ n : ℕ in atTop, K ≤ a*(n : ℝ) :=
    (tendsto_natCast_atTop_atTop.const_mul_atTop ha).eventually (eventually_ge_atTop K)
  filter_upwards [hnK, eventually_gt_atTop (0 : ℕ)] with n hnK hn
  intro x hx
  have hxpos : 0 < x := ha.trans_le hx.1
  have hnpos : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  have hratio := hK (x*n) (hnK.trans (mul_le_mul_of_nonneg_right hx.1 hnpos.le))
  rw [Real.dist_eq] at hratio ⊢
  have heq : x - Chebyshev.theta (x*n) / n =
      (1 - Chebyshev.theta (x*n) / (x*n)) * x := by
    field_simp
  rw [heq, abs_mul, abs_of_pos hxpos, abs_sub_comm]
  calc
    |Chebyshev.theta (x*n) / (x*n) - 1| * x < (ε / b) * x :=
      mul_lt_mul_of_pos_right hratio hxpos
    _ ≤ (ε / b) * b := mul_le_mul_of_nonneg_left hx.2 (div_pos hε hb).le
    _ = ε := div_mul_cancel₀ ε hb.ne'

theorem scaled_theta_intervalIntegrable (n : ℕ) (a b : ℝ) :
    IntervalIntegrable (fun x : ℝ => Chebyshev.theta (x*n) / n) volume a b := by
  have hm : Monotone (fun x : ℝ => Chebyshev.theta (x*n)) :=
    fun _ _ h => Chebyshev.theta_mono (mul_le_mul_of_nonneg_right h (Nat.cast_nonneg n))
  exact hm.intervalIntegrable.div_const n

theorem scaled_theta_integral_limit (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    Tendsto (fun n : ℕ => ∫ x in a..b, Chebyshev.theta (x*n) / n)
      atTop (nhds ((b^2-a^2)/2)) := by
  rw [← integral_id]
  apply Metric.tendsto_nhds.mpr
  intro ε hε
  have hd : 0 < |b-a| + 1 := by positivity
  have hu := Metric.tendstoUniformlyOn_iff.mp (scaled_theta_uniform a b ha hab)
    (ε / (|b-a|+1)) (div_pos hε hd)
  filter_upwards [hu] with n hn
  have hi := scaled_theta_intervalIntegrable n a b
  have hid : IntervalIntegrable (fun x : ℝ => x) volume a b := continuous_id.intervalIntegrable _ _
  rw [Real.dist_eq, ← intervalIntegral.integral_sub hi hid, ← Real.norm_eq_abs]
  have hbound : ‖∫ x in a..b, Chebyshev.theta (x*n) / n - x‖ ≤
      (ε / (|b-a|+1)) * |b-a| := by
    apply intervalIntegral.norm_integral_le_of_norm_le_const
    intro x hx
    rw [Set.uIoc_of_le hab] at hx
    have hh := hn x ⟨hx.1.le, hx.2⟩
    simpa only [Real.dist_eq, Real.norm_eq_abs, abs_sub_comm] using hh.le
  refine hbound.trans_lt ?_
  have heq := div_mul_cancel₀ ε (ne_of_gt hd)
  have hpos : 0 < ε / (|b-a|+1) := div_pos hε hd
  nlinarith

/-- Exact Abel identity after scaling; no limiting argument is used here. -/
theorem primeWeightedSum_id_scaled (n : ℕ) (hn : n ≠ 0) (a b : ℝ)
    (ha : 0 ≤ a) (hab : a ≤ b) :
    primeWeightedSum (fun x => x) (a*n) (b*n) / (n : ℝ)^2 =
      b * (Chebyshev.theta (b*n) / n) - a * (Chebyshev.theta (a*n) / n) -
        ∫ x in a..b, Chebyshev.theta (x*n) / n := by
  have hn' : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr hn
  rw [primeWeightedSum_id _ _ (mul_nonneg ha (Nat.cast_nonneg n))
    (mul_le_mul_of_nonneg_right hab (Nat.cast_nonneg n))]
  simp_rw [div_eq_mul_inv]
  rw [intervalIntegral.integral_mul_const,
    intervalIntegral.integral_comp_mul_right Chebyshev.theta hn']
  simp only [smul_eq_mul]
  field_simp

theorem primeWeightedSum_id_limit (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    Tendsto (fun n : ℕ => primeWeightedSum (fun x => x) (a*n) (b*n) / (n : ℝ)^2)
      atTop (nhds ((b^2-a^2)/2)) := by
  have h := ((scaled_theta_div_nat_limit b (ha.trans_le hab)).const_mul b).sub
    ((scaled_theta_div_nat_limit a ha).const_mul a)
  have ht := h.sub (scaled_theta_integral_limit a b ha hab)
  have heq : b*b-a*a-(b^2-a^2)/2 = (b^2-a^2)/2 := by ring
  rw [heq] at ht
  apply ht.congr'
  filter_upwards [eventually_ne_atTop (0 : ℕ)] with n hn
  exact (primeWeightedSum_id_scaled n hn a b ha.le hab).symm

/-- Normalized weighted prime sum on the exact half-open proportional interval. -/
def primeWeightedInterval (n : ℕ) (f : ℝ → ℝ) (a b : ℝ) : ℝ :=
  primeWeightedSum (fun t => f (t/n)) (a*n) (b*n) / n

theorem primeWeightedInterval_id_eq (n : ℕ) (a b : ℝ) :
    primeWeightedInterval n (fun x => x) a b =
      primeWeightedSum (fun x => x) (a*n) (b*n) / (n : ℝ)^2 := by
  classical
  unfold primeWeightedInterval primeWeightedSum
  simp_rw [div_mul_eq_mul_div, ← sum_div, div_div, pow_two]

theorem primeWeightedInterval_id_limit (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    Tendsto (fun n : ℕ => primeWeightedInterval n (fun x => x) a b)
      atTop (nhds ((b^2-a^2)/2)) := by
  simp_rw [primeWeightedInterval_id_eq]
  exact primeWeightedSum_id_limit a b ha hab

theorem primeWeightedInterval_affine_eq (n : ℕ) (u v a b : ℝ) :
    primeWeightedInterval n (fun x => u*x+v) a b =
      u * primeWeightedInterval n (fun x => x) a b + v * (primeIntervalMass n a b / n) := by
  classical
  unfold primeWeightedInterval primeWeightedSum primeIntervalMass
  simp_rw [add_mul, mul_assoc, sum_add_distrib, ← mul_sum]
  ring

theorem primeWeightedInterval_affine_limit (u v a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    Tendsto (fun n : ℕ => primeWeightedInterval n (fun x => u*x+v) a b)
      atTop (nhds (u*((b^2-a^2)/2) + v*(b-a))) := by
  simp_rw [primeWeightedInterval_affine_eq]
  exact ((primeWeightedInterval_id_limit a b ha hab).const_mul u).add
    ((primeIntervalMass_limit a b ha hab).const_mul v)

theorem scaled_theta_weighted_integral_limit (g : ℝ → ℝ) (a b : ℝ)
    (ha : 0 < a) (hab : a ≤ b) (hg : ContinuousOn g (Set.Icc a b)) :
    Tendsto (fun n : ℕ => ∫ x in a..b, g x * (Chebyshev.theta (x*n) / n))
      atTop (nhds (∫ x in a..b, g x * x)) := by
  obtain ⟨M, hM⟩ := isCompact_Icc.exists_bound_of_continuousOn hg
  let C := max 1 M
  have hC : 0 < C := lt_of_lt_of_le zero_lt_one (le_max_left _ _)
  have hg' : ContinuousOn g (Set.uIcc a b) := by rwa [Set.uIcc_of_le hab]
  apply Metric.tendsto_nhds.mpr
  intro ε hε
  have hd : 0 < C * (|b-a|+1) := mul_pos hC (by positivity)
  let δ := ε / (C * (|b-a|+1))
  have hδ : 0 < δ := div_pos hε hd
  have hu := Metric.tendstoUniformlyOn_iff.mp (scaled_theta_uniform a b ha hab) δ hδ
  filter_upwards [hu] with n hn
  have hi := (scaled_theta_intervalIntegrable n a b).continuousOn_mul hg'
  have hj : IntervalIntegrable (fun x : ℝ => g x * x) volume a b :=
    (continuous_id.intervalIntegrable a b).continuousOn_mul hg'
  rw [Real.dist_eq, ← intervalIntegral.integral_sub hi hj, ← Real.norm_eq_abs]
  have hbound : ‖∫ x in a..b, g x * (Chebyshev.theta (x*n) / n) - g x * x‖ ≤
      (C*δ) * |b-a| := by
    apply intervalIntegral.norm_integral_le_of_norm_le_const
    intro x hx
    rw [Set.uIoc_of_le hab] at hx
    have hx' : x ∈ Set.Icc a b := ⟨hx.1.le, hx.2⟩
    have hnorm : ‖Chebyshev.theta (x*n) / n - x‖ ≤ δ := by
      simpa only [Real.dist_eq, Real.norm_eq_abs, abs_sub_comm] using (hn x hx').le
    rw [← mul_sub, norm_mul]
    exact mul_le_mul ((hM x hx').trans (le_max_right _ _)) hnorm (norm_nonneg _) hC.le
  refine hbound.trans_lt ?_
  have heq : δ * (C * (|b-a|+1)) = ε := div_mul_cancel₀ ε hd.ne'
  nlinarith [mul_pos hC hδ]

theorem primeWeightedInterval_C1_partial_summation (n : ℕ) (hn : n ≠ 0)
    (f g : ℝ → ℝ) (hf : ∀ x, HasDerivAt f (g x) x) (hg : Continuous g)
    (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b) :
    primeWeightedInterval n f a b =
      f b * (Chebyshev.theta (b*n) / n) - f a * (Chebyshev.theta (a*n) / n) -
        ∫ x in a..b, g x * (Chebyshev.theta (x*n) / n) := by
  have hn' : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr hn
  have hder (t : ℝ) : deriv (fun x => f (x/n)) t = g (t/n) / n := by
    simpa [Function.comp_def, div_eq_mul_inv] using
      ((hf (t/n)).comp t ((hasDerivAt_id t).div_const (n : ℝ))).deriv
  have hi : IntegrableOn (deriv (fun x => f (x/n))) (Set.Icc (a*n) (b*n)) := by
    change IntegrableOn (fun t => deriv (fun x => f (x/n)) t) _
    simp_rw [hder]
    exact ((hg.comp (continuous_id.div_const (n : ℝ))).div_const (n : ℝ)).continuousOn.integrableOn_Icc
  have hp := primeWeightedSum_partial_summation (fun t => f (t/n)) (a*n) (b*n)
    (mul_nonneg ha (Nat.cast_nonneg n))
    (mul_le_mul_of_nonneg_right hab (Nat.cast_nonneg n))
    (fun t _ => ((hf (t/n)).comp t ((hasDerivAt_id t).div_const (n : ℝ))).differentiableAt) hi
  simp_rw [hder] at hp
  simp only [mul_div_cancel_right₀ _ hn'] at hp
  have hchange : (∫ t in a*n..b*n, g (t/n) / n * Chebyshev.theta t) / n =
      ∫ x in a..b, g x * (Chebyshev.theta (x*n) / n) := by
    have hc := intervalIntegral.integral_comp_mul_right
      (fun t => g (t/n) / n * Chebyshev.theta t) (a := a) (b := b) hn'
    calc
      _ = ∫ x in a..b, g ((x*n)/n) / n * Chebyshev.theta (x*n) := by
        simpa only [smul_eq_mul, div_eq_mul_inv, mul_comm] using hc.symm
      _ = _ := intervalIntegral.integral_congr fun x _ => by
        rw [mul_div_cancel_right₀ _ hn']
        ring
  unfold primeWeightedInterval
  rw [hp, sub_div, sub_div, hchange]
  ring

theorem primeWeightedInterval_C1_limit (f g : ℝ → ℝ)
    (hf : ∀ x, HasDerivAt f (g x) x) (hg : Continuous g)
    (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    Tendsto (fun n : ℕ => primeWeightedInterval n f a b)
      atTop (nhds (∫ x in a..b, f x)) := by
  have h := (((scaled_theta_div_nat_limit b (ha.trans_le hab)).const_mul (f b)).sub
    ((scaled_theta_div_nat_limit a ha).const_mul (f a))).sub
      (scaled_theta_weighted_integral_limit g a b ha hab hg.continuousOn)
  have hparts : (∫ x in a..b, f x) = f b * b - f a * a - ∫ x in a..b, g x * x := by
    simpa using intervalIntegral.integral_mul_deriv_eq_deriv_mul
      (fun x _ => hf x) (fun x _ => hasDerivAt_id x)
      (hg.intervalIntegrable a b) (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => (1 : ℝ)) volume a b)
  rw [← hparts] at h
  apply h.congr'
  filter_upwards [eventually_ne_atTop (0 : ℕ)] with n hn
  exact (primeWeightedInterval_C1_partial_summation n hn f g hf hg a b ha.le hab).symm

theorem primeWeightedInterval_polynomial_limit (P : Polynomial ℝ)
    (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    Tendsto (fun n : ℕ => primeWeightedInterval n P.eval a b)
      atTop (nhds (∫ x in a..b, P.eval x)) :=
  primeWeightedInterval_C1_limit P.eval P.derivative.eval P.hasDerivAt
    P.derivative.continuous a b ha hab

/-- Finite pieces may have jumps. Matching adjacent values specializes this to
continuous piecewise C1 weights; each interval retains its exact endpoints. -/
theorem finite_piecewise_C1_prime_sum_limit {ι : Type*} (s : Finset ι)
    (f g : ι → ℝ → ℝ) (a b : ι → ℝ)
    (hf : ∀ i ∈ s, ∀ x, HasDerivAt (f i) (g i x) x)
    (hg : ∀ i ∈ s, Continuous (g i))
    (ha : ∀ i ∈ s, 0 < a i) (hab : ∀ i ∈ s, a i ≤ b i) :
    Tendsto (fun n : ℕ => ∑ i ∈ s, primeWeightedInterval n (f i) (a i) (b i))
      atTop (nhds (∑ i ∈ s, ∫ x in a i..b i, f i x)) := by
  exact tendsto_finsetSum s fun i hi =>
    primeWeightedInterval_C1_limit (f i) (g i) (hf i hi) (hg i hi)
      (a i) (b i) (ha i hi) (hab i hi)

/-- Uniform approximation of weights controls the actual finite prime sums. -/
theorem primeWeightedInterval_sub_bound (n : ℕ) (f g : ℝ → ℝ) (a b δ : ℝ)
    (ha : 0 ≤ a) (hab : a ≤ b)
    (hfg : ∀ x ∈ Set.Icc a b, |f x - g x| ≤ δ) :
    |primeWeightedInterval n f a b - primeWeightedInterval n g a b| ≤
      δ * (primeIntervalMass n a b / n) := by
  classical
  by_cases hn : n = 0
  · subst n
    simp [primeWeightedInterval]
  have hnpos : (0 : ℝ) < n := Nat.cast_pos.mpr (Nat.pos_of_ne_zero hn)
  have hbn : 0 ≤ b*(n : ℝ) := mul_nonneg (ha.trans hab) hnpos.le
  unfold primeWeightedInterval primeWeightedSum primeIntervalMass
  rw [← sub_div, abs_div, abs_of_pos hnpos, ← sum_sub_distrib, ← mul_div_assoc]
  apply div_le_div_of_nonneg_right _ hnpos.le
  calc
    _ ≤ ∑ p ∈ (Nat.primesLE ⌊b*n⌋₊).filter (fun p : ℕ => a*n < (p : ℝ)),
        |f (p/n) * Real.log (p : ℝ) - g (p/n) * Real.log (p : ℝ)| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ p ∈ (Nat.primesLE ⌊b*n⌋₊).filter (fun p : ℕ => a*n < (p : ℝ)),
        δ * Real.log (p : ℝ) := by
      apply sum_le_sum
      intro p hp
      simp only [mem_filter, Nat.mem_primesLE] at hp
      have hx : (p : ℝ)/n ∈ Set.Icc a b :=
        ⟨(le_div_iff₀ hnpos).mpr hp.2.le,
          (div_le_iff₀ hnpos).mpr ((Nat.le_floor_iff hbn).mp hp.1.1)⟩
      have hlog : 0 ≤ Real.log (p : ℝ) := Real.log_nonneg (by exact_mod_cast hp.1.2.one_le)
      rw [← sub_mul, abs_mul, abs_of_nonneg hlog]
      exact mul_le_mul_of_nonneg_right (hfg _ hx) hlog
    _ = _ := (mul_sum _ _ _).symm

/-- Weighted PNT for every fixed continuous weight on a positive compact interval. -/
theorem primeWeightedInterval_continuous_limit (f : ℝ → ℝ) (a b : ℝ)
    (ha : 0 < a) (hab : a ≤ b) (hf : ContinuousOn f (Set.Icc a b)) :
    Tendsto (fun n : ℕ => primeWeightedInterval n f a b)
      atTop (nhds (∫ x in a..b, f x)) := by
  apply Metric.tendsto_nhds.mpr
  intro ε hε
  let M := b-a+1
  have hM : 0 < M := by dsimp [M]; linarith
  let δ := ε / (3*M)
  have hδ : 0 < δ := div_pos hε (by positivity)
  have hδM : δ*M = ε/3 := by dsimp [δ]; field_simp [hM.ne']
  obtain ⟨P, hP⟩ := exists_polynomial_near_of_continuousOn a b f hf δ hδ
  have happrox : ∀ x ∈ Set.Icc a b, |f x - P.eval x| ≤ δ := by
    intro x hx
    simpa only [abs_sub_comm] using (hP x hx).le
  have hmass : ∀ᶠ n : ℕ in atTop, primeIntervalMass n a b / n < M :=
    (primeIntervalMass_limit a b ha hab).eventually_lt_const (by dsimp [M]; linarith)
  have hpoly := Metric.tendsto_nhds.mp (primeWeightedInterval_polynomial_limit P a b ha hab)
    (ε/3) (by positivity)
  filter_upwards [hmass, hpoly] with n hn hp
  have hsum : |primeWeightedInterval n f a b - primeWeightedInterval n P.eval a b| < ε/3 := by
    apply (primeWeightedInterval_sub_bound n f P.eval a b δ ha.le hab happrox).trans_lt
    calc
      δ * (primeIntervalMass n a b / n) < δ*M := mul_lt_mul_of_pos_left hn hδ
      _ = ε/3 := hδM
  have hfint : IntervalIntegrable f volume a b := hf.intervalIntegrable_of_Icc hab
  have hpint : IntervalIntegrable P.eval volume a b := P.continuous.intervalIntegrable a b
  have hint : |(∫ x in a..b, P.eval x) - ∫ x in a..b, f x| < ε/3 := by
    rw [← intervalIntegral.integral_sub hpint hfint, ← Real.norm_eq_abs]
    have hbnd : ‖∫ x in a..b, P.eval x - f x‖ ≤ δ * |b-a| := by
      apply intervalIntegral.norm_integral_le_of_norm_le_const
      intro x hx
      rw [Set.uIoc_of_le hab] at hx
      simpa only [Real.norm_eq_abs] using (hP x ⟨hx.1.le, hx.2⟩).le
    refine hbnd.trans_lt ?_
    rw [abs_of_nonneg (sub_nonneg.mpr hab)]
    calc
      δ*(b-a) < δ*M := mul_lt_mul_of_pos_left (by dsimp [M]; linarith) hδ
      _ = ε/3 := hδM
  rw [Real.dist_eq] at hp ⊢
  calc
    _ ≤ |primeWeightedInterval n f a b - primeWeightedInterval n P.eval a b| +
        |primeWeightedInterval n P.eval a b - ∫ x in a..b, P.eval x| +
        |(∫ x in a..b, P.eval x) - ∫ x in a..b, f x| := by
      have h₁ := abs_sub_le (primeWeightedInterval n f a b)
        (primeWeightedInterval n P.eval a b) (∫ x in a..b, P.eval x)
      have h₂ := abs_sub_le (primeWeightedInterval n f a b)
        (∫ x in a..b, P.eval x) (∫ x in a..b, f x)
      linarith
    _ < ε/3 + ε/3 + ε/3 := add_lt_add (add_lt_add hsum hp) hint
    _ = ε := by ring

/-- A finite sum of continuous pieces, including discontinuities at the joins. -/
theorem finite_piecewise_continuous_prime_sum_limit {ι : Type*} (s : Finset ι)
    (f : ι → ℝ → ℝ) (a b : ι → ℝ)
    (hf : ∀ i ∈ s, ContinuousOn (f i) (Set.Icc (a i) (b i)))
    (ha : ∀ i ∈ s, 0 < a i) (hab : ∀ i ∈ s, a i ≤ b i) :
    Tendsto (fun n : ℕ => ∑ i ∈ s, primeWeightedInterval n (f i) (a i) (b i))
      atTop (nhds (∑ i ∈ s, ∫ x in a i..b i, f i x)) := by
  exact tendsto_finsetSum s fun i hi =>
    primeWeightedInterval_continuous_limit (f i) (a i) (b i) (ha i hi) (hab i hi) (hf i hi)

/-- Quadratic cost normalization for a fixed finite collection of continuous pieces.
This is an asymptotic adapter, not a numerical bound for any particular certificate. -/
theorem finite_piecewise_continuous_quadratic_cost_limit {ι : Type*} (s : Finset ι)
    (f : ι → ℝ → ℝ) (a b : ι → ℝ)
    (hf : ∀ i ∈ s, ContinuousOn (f i) (Set.Icc (a i) (b i)))
    (ha : ∀ i ∈ s, 0 < a i) (hab : ∀ i ∈ s, a i ≤ b i) :
    Tendsto (fun n : ℕ =>
      (∑ i ∈ s, (n : ℝ) * primeWeightedSum (fun t => f i (t/n)) (a i*n) (b i*n)) /
        (n : ℝ)^2)
      atTop (nhds (∑ i ∈ s, ∫ x in a i..b i, f i x)) := by
  convert finite_piecewise_continuous_prime_sum_limit s f a b hf ha hab using 1
  ext n
  rw [sum_div]
  apply sum_congr rfl
  intro i hi
  unfold primeWeightedInterval
  by_cases hn : (n : ℝ) = 0
  · simp [hn]
  · field_simp

end OddZetaPNT

#print axioms OddZetaPNT.primeWeightedSum_partial_summation
#print axioms OddZetaPNT.primeWeightedSum_id
#print axioms OddZetaPNT.scaled_theta_uniform
#print axioms OddZetaPNT.scaled_theta_intervalIntegrable
#print axioms OddZetaPNT.scaled_theta_integral_limit
#print axioms OddZetaPNT.primeWeightedSum_id_scaled
#print axioms OddZetaPNT.primeWeightedSum_id_limit
#print axioms OddZetaPNT.primeWeightedInterval_id_eq
#print axioms OddZetaPNT.primeWeightedInterval_id_limit
#print axioms OddZetaPNT.primeWeightedInterval_affine_eq
#print axioms OddZetaPNT.primeWeightedInterval_affine_limit
#print axioms OddZetaPNT.scaled_theta_weighted_integral_limit
#print axioms OddZetaPNT.primeWeightedInterval_C1_partial_summation
#print axioms OddZetaPNT.primeWeightedInterval_C1_limit
#print axioms OddZetaPNT.primeWeightedInterval_polynomial_limit
#print axioms OddZetaPNT.finite_piecewise_C1_prime_sum_limit
#print axioms OddZetaPNT.primeWeightedInterval_sub_bound
#print axioms OddZetaPNT.primeWeightedInterval_continuous_limit
#print axioms OddZetaPNT.finite_piecewise_continuous_prime_sum_limit
#print axioms OddZetaPNT.finite_piecewise_continuous_quadratic_cost_limit
