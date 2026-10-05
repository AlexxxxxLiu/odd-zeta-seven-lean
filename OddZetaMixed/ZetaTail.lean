import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.PSeries
import Mathlib.Tactic

/-!
# Actual zeta series and exact finite cutoffs

The h158 partial fractions use `s = i + 4` and `q = k - 48 * n > 0`.
The resulting tail is exactly `zetaNat s - harmonicCutoff s (q - 1)`;
the rational harmonic constant is retained. All convergence and zeta
identifications below follow from Mathlib, without analytic input hypotheses.

This module does not prove the kernel's partial-fraction identity, parity
cancellations, determinant estimates, or any irrationality statement.
-/

namespace OddZetaMixed

open scoped BigOperators

/-- The real Dirichlet series at a natural exponent, starting at one.
Its interpretation as Riemann zeta below requires `2 ≤ s`. -/
noncomputable def zetaNat (s : ℕ) : ℝ :=
  ∑' k : ℕ, 1 / ((k : ℝ) + 1) ^ s

/-- The exact rational finite sum `H_m^(s) = ∑_{v=1}^m 1/v^s`. -/
def harmonicCutoff (s m : ℕ) : ℚ :=
  ∑ k ∈ Finset.range m, 1 / ((k : ℚ) + 1) ^ s

/-- The shifted real series `T_s(q) = ∑_{v=q}^∞ 1/v^s` for positive `q`. -/
noncomputable def zetaTail (s q : ℕ) : ℝ :=
  ∑' k : ℕ, 1 / ((k : ℝ) + (q : ℝ)) ^ s

theorem summable_zetaNat {s : ℕ} (hs : 2 ≤ s) :
    Summable (fun k : ℕ => 1 / ((k : ℝ) + 1) ^ s) := by
  simpa only [Nat.cast_add, Nat.cast_one] using
    (summable_nat_add_iff 1).mpr (Real.summable_one_div_nat_pow.mpr (by omega : 1 < s))

theorem hasSum_zetaNat {s : ℕ} (hs : 2 ≤ s) :
    HasSum (fun k : ℕ => 1 / ((k : ℝ) + 1) ^ s) (zetaNat s) :=
  (summable_zetaNat hs).hasSum

/-- Full complex equality, so in particular the imaginary part is zero. -/
theorem riemannZeta_nat_eq_ofReal {s : ℕ} (hs : 2 ≤ s) :
    riemannZeta (s : ℂ) = (zetaNat s : ℂ) := by
  have hsC : 1 < (s : ℂ).re := by
    simpa using (show (1 : ℝ) < s by exact_mod_cast (show 1 < s by omega))
  rw [zeta_eq_tsum_one_div_nat_add_one_cpow hsC, zetaNat, Complex.ofReal_tsum]
  apply tsum_congr
  intro k
  simp

theorem zetaNat_eq_re_riemannZeta {s : ℕ} (hs : 2 ≤ s) :
    zetaNat s = (riemannZeta (s : ℂ)).re := by
  rw [riemannZeta_nat_eq_ofReal hs]
  rfl

theorem riemannZeta_nat_im_eq_zero {s : ℕ} (hs : 2 ≤ s) :
    (riemannZeta (s : ℂ)).im = 0 := by
  rw [riemannZeta_nat_eq_ofReal hs]
  rfl

@[simp] theorem harmonicCutoff_zero (s : ℕ) : harmonicCutoff s 0 = 0 := by
  simp [harmonicCutoff]

theorem harmonicCutoff_succ (s m : ℕ) :
    harmonicCutoff s (m + 1) = harmonicCutoff s m + 1 / ((m : ℚ) + 1) ^ s := by
  simp [harmonicCutoff, Finset.sum_range_succ]

theorem harmonicCutoff_cast_real (s m : ℕ) :
    (harmonicCutoff s m : ℝ) = ∑ k ∈ Finset.range m, 1 / ((k : ℝ) + 1) ^ s := by
  simp [harmonicCutoff]

/-- The finite rational harmonic cutoffs converge to the actual zeta value. -/
theorem tendsto_harmonicCutoff {s : ℕ} (hs : 2 ≤ s) :
    Filter.Tendsto (fun m : ℕ => (harmonicCutoff s m : ℝ)) Filter.atTop
      (nhds (zetaNat s)) := by
  simpa only [harmonicCutoff_cast_real] using (hasSum_zetaNat hs).tendsto_sum_nat

theorem summable_zetaTail {s : ℕ} (hs : 2 ≤ s) (q : ℕ) :
    Summable (fun k : ℕ => 1 / ((k : ℝ) + (q : ℝ)) ^ s) := by
  simpa only [Nat.cast_add] using
    (summable_nat_add_iff q).mpr (Real.summable_one_div_nat_pow.mpr (by omega : 1 < s))

theorem hasSum_zetaTail {s : ℕ} (hs : 2 ≤ s) (q : ℕ) :
    HasSum (fun k : ℕ => 1 / ((k : ℝ) + (q : ℝ)) ^ s) (zetaTail s q) :=
  (summable_zetaTail hs q).hasSum

/-- Splitting after the first `m` terms, with no omitted boundary term. -/
theorem harmonicCutoff_add_zetaTail {s : ℕ} (hs : 2 ≤ s) (m : ℕ) :
    (harmonicCutoff s m : ℝ) + zetaTail s (m + 1) = zetaNat s := by
  simpa only [harmonicCutoff_cast_real, zetaTail, zetaNat, Nat.cast_add,
    Nat.cast_one, add_assoc] using (summable_zetaNat hs).sum_add_tsum_nat_add m

/-- The positive-start tail identity used by every partial-fraction term. -/
theorem zetaTail_eq_zetaNat_sub_harmonicCutoff {s q : ℕ} (hs : 2 ≤ s) (hq : 0 < q) :
    zetaTail s q = zetaNat s - (harmonicCutoff s (q - 1) : ℝ) := by
  have h := harmonicCutoff_add_zetaTail hs (q - 1)
  rw [Nat.sub_add_cancel hq] at h
  linarith

/-- A `HasSum` form that supports finite linear combinations of pole terms. -/
theorem hasSum_shifted_inv_pow {s q : ℕ} (hs : 2 ≤ s) (hq : 0 < q) :
    HasSum (fun k : ℕ => 1 / ((k : ℝ) + (q : ℝ)) ^ s)
      (zetaNat s - (harmonicCutoff s (q - 1) : ℝ)) := by
  rw [← zetaTail_eq_zetaNat_sub_harmonicCutoff hs hq]
  exact hasSum_zetaTail hs q

theorem zetaTail_eq_re_riemannZeta_sub_harmonicCutoff {s q : ℕ}
    (hs : 2 ≤ s) (hq : 0 < q) :
    zetaTail s q = (riemannZeta (s : ℂ)).re - (harmonicCutoff s (q - 1) : ℝ) := by
  rw [zetaTail_eq_zetaNat_sub_harmonicCutoff hs hq, zetaNat_eq_re_riemannZeta hs]

/-- One step of cutoff translation, valid only when the starting index is positive. -/
theorem zetaTail_sub_succ {s q : ℕ} (hs : 2 ≤ s) (hq : 0 < q) :
    zetaTail s q - zetaTail s (q + 1) = 1 / (q : ℝ) ^ s := by
  rw [zetaTail_eq_zetaNat_sub_harmonicCutoff hs hq,
    zetaTail_eq_zetaNat_sub_harmonicCutoff hs (Nat.succ_pos q), Nat.succ_sub_one]
  have h := harmonicCutoff_succ s (q - 1)
  rw [Nat.sub_add_cancel hq] at h
  have hreal := congrArg (fun x : ℚ => (x : ℝ)) h
  simp only [Rat.cast_add, Rat.cast_div, Rat.cast_one, Rat.cast_pow, Rat.cast_natCast] at hreal
  have hqreal : ((q - 1 : ℕ) : ℝ) + 1 = q := by exact_mod_cast Nat.sub_add_cancel hq
  rw [hqreal] at hreal
  linarith

/-- The actual h158 starting denominator and fourth-derivative exponent.
The index `v` represents the original summation variable `t = v - 48*n`. -/
theorem hasSum_h158_shifted_inv_pow (n k i : ℕ) (hk : 48 * n < k) :
    HasSum (fun v : ℕ => 1 / ((v : ℝ) - 48 * (n : ℝ) + (k : ℝ)) ^ (i + 4))
      (zetaNat (i + 4) - (harmonicCutoff (i + 4) (k - 48 * n - 1) : ℝ)) := by
  have hq : 0 < k - 48 * n := Nat.sub_pos_of_lt hk
  have hden (v : ℕ) : (v : ℝ) - 48 * (n : ℝ) + (k : ℝ) =
      (v : ℝ) + ((k - 48 * n : ℕ) : ℝ) := by
    rw [Nat.cast_sub hk.le]
    push_cast
    ring
  simp_rw [hden]
  exact hasSum_shifted_inv_pow (by omega) hq

/-- Finite linearity for supplied pole orders, positive starting indices, and
real coefficients. This does not assert a partial-fraction decomposition. -/
theorem hasSum_finset_shifted_inv_pow {ι : Type*} (J : Finset ι)
    (a : ι → ℝ) (s q : ι → ℕ) (hs : ∀ j ∈ J, 2 ≤ s j) (hq : ∀ j ∈ J, 0 < q j) :
    HasSum (fun v : ℕ => ∑ j ∈ J, a j / ((v : ℝ) + (q j : ℝ)) ^ s j)
      (∑ j ∈ J, a j * (zetaNat (s j) - (harmonicCutoff (s j) (q j - 1) : ℝ))) := by
  simpa only [div_eq_mul_inv, one_mul] using
    hasSum_sum (fun j hj => (hasSum_shifted_inv_pow (hs j hj) (hq j hj)).mul_left (a j))

/-- The seven actual zeta values, in the order `7, 9, 11, 13, 15, 17, 19`. -/
noncomputable def sevenZetaValues (j : Fin 7) : ℝ :=
  zetaNat (7 + 2 * (j : ℕ))

theorem sevenZetaValues_eq_re_riemannZeta (j : Fin 7) :
    sevenZetaValues j = (riemannZeta ((7 + 2 * (j : ℕ) : ℕ) : ℂ)).re :=
  zetaNat_eq_re_riemannZeta (by omega)

theorem sevenZetaValues_ofReal (j : Fin 7) :
    (sevenZetaValues j : ℂ) = riemannZeta ((7 + 2 * (j : ℕ) : ℕ) : ℂ) :=
  (riemannZeta_nat_eq_ofReal (by omega)).symm

end OddZetaMixed
