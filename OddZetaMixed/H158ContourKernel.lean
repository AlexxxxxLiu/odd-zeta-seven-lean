import OddZetaMixed.H158Complex
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Analysis.Analytic.IsolatedZeros
import Mathlib.Analysis.Complex.CauchyIntegral

/-!
# Concrete h158 contour-kernel prerequisites

The contour abscissa is exactly `-4*n-1/2`. All rational poles lie to its
left, and the sine denominator is nonzero on the vertical line. The kernel
is the normalized fourth derivative of `pi * cot (pi * z)`, with its exact
trigonometric formula. Small-circle integrals certify the actual residues,
and their convergent series is the original functional. The infinite vertical
contour representation and its closing-edge limits are not assumed or proved.
-/

noncomputable section

namespace OddZetaMixed

open Polynomial Finset Filter
open scoped Topology

def h158ContourAbscissa (n : ℕ) : ℝ := -4 * (n : ℝ) - 1 / 2

def h158ContourPoint (n : ℕ) (y : ℝ) : ℂ :=
  (h158ContourAbscissa n : ℂ) + (y : ℂ) * Complex.I

@[simp] theorem h158ContourPoint_re (n : ℕ) (y : ℝ) :
    (h158ContourPoint n y).re = h158ContourAbscissa n := by
  simp [h158ContourPoint]

theorem h158ContourAbscissa_in_halfplane (n : ℕ) :
    -(53 * (n : ℝ) + 1) < h158ContourAbscissa n := by
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  dsimp [h158ContourAbscissa]
  linarith

theorem h158_poles_left_of_contour (n k : ℕ) (hk : k ∈ h158PoleSet n) :
    -(k : ℝ) < h158ContourAbscissa n := by
  have hb : 53 * (n : ℝ) + 1 ≤ (k : ℝ) := by
    exact_mod_cast (h158_pole_address_bounds n k hk).1
  linarith [h158ContourAbscissa_in_halfplane n]

/-- In particular this covers every closed rectangle to the right of the line. -/
theorem h158EntryComplex_analyticOnNhd_contour_right (n i j : ℕ) :
    AnalyticOnNhd ℂ (h158EntryComplex n i j)
      {z : ℂ | h158ContourAbscissa n ≤ z.re} := by
  intro z hz
  exact h158EntryComplex_analyticAt n i j z
    (lt_of_lt_of_le (h158ContourAbscissa_in_halfplane n) hz)

theorem h158_denominator_ne_zero_contour_right (n : ℕ) (z : ℂ)
    (hz : h158ContourAbscissa n ≤ z.re) : aeval z (h158Denominator n) ≠ 0 :=
  h158_denominator_complex_eval_ne_zero n z
    (lt_of_lt_of_le (h158ContourAbscissa_in_halfplane n) hz)

private theorem sin_pi_ne_zero_of_re_ne_int (z : ℂ)
    (hz : ∀ m : ℤ, z.re ≠ (m : ℝ)) : Complex.sin ((Real.pi : ℂ) * z) ≠ 0 := by
  intro h
  obtain ⟨m, hm⟩ := Complex.sin_eq_zero_iff.mp h
  have he : z = (m : ℂ) := by
    apply mul_left_cancel₀ (show (Real.pi : ℂ) ≠ 0 by exact_mod_cast Real.pi_ne_zero)
    simpa only [mul_comm] using hm
  exact hz m (by simp [he])

theorem h158ContourAbscissa_ne_int (n : ℕ) (m : ℤ) :
    h158ContourAbscissa n ≠ (m : ℝ) := by
  intro h
  have he : (2 * m + 8 * (n : ℤ) : ℤ) = -1 := by
    have he' : 2 * (m : ℝ) + 8 * (n : ℝ) = -1 := by
      dsimp [h158ContourAbscissa] at h
      linarith
    exact_mod_cast he'
  omega

/-- No endpoint or point on the full vertical line is a trigonometric pole. -/
theorem h158_sin_ne_zero_on_contour (n : ℕ) (y : ℝ) :
    Complex.sin ((Real.pi : ℂ) * h158ContourPoint n y) ≠ 0 := by
  apply sin_pi_ne_zero_of_re_ne_int
  intro m
  simpa only [h158ContourPoint_re] using h158ContourAbscissa_ne_int n m

/-- The same denominator condition on a half-integer right closing edge. -/
theorem h158_sin_ne_zero_on_half_integer (q : ℤ) (z : ℂ)
    (hz : z.re = (q : ℝ) + 1 / 2) : Complex.sin ((Real.pi : ℂ) * z) ≠ 0 := by
  apply sin_pi_ne_zero_of_re_ne_int
  intro m hm
  have he : (2 * m - 2 * q : ℤ) = 1 := by
    have he' : 2 * (m : ℝ) - 2 * (q : ℝ) = 1 := by linarith
    exact_mod_cast he'
  omega

/-- Horizontal closing edges at nonzero height contain no trigonometric poles. -/
theorem h158_sin_ne_zero_of_im_ne_zero (z : ℂ) (hz : z.im ≠ 0) :
    Complex.sin ((Real.pi : ℂ) * z) ≠ 0 := by
  intro h
  obtain ⟨m, hm⟩ := Complex.sin_eq_zero_iff.mp h
  have he : z = (m : ℂ) := by
    apply mul_left_cancel₀ (show (Real.pi : ℂ) ≠ 0 by exact_mod_cast Real.pi_ne_zero)
    simpa only [mul_comm] using hm
  exact hz (by simp [he])

def h158CotKernel (z : ℂ) : ℂ := (Real.pi : ℂ) * Complex.cot ((Real.pi : ℂ) * z)

def h158ContourKernel (z : ℂ) : ℂ :=
  iteratedDeriv 4 h158CotKernel z / 24

private def cotJet (r : ℕ) (z : ℂ) : ℂ :=
  let p : ℂ := Real.pi
  let s := Complex.sin (p * z)
  let c := Complex.cos (p * z)
  match r with
  | 0 => p * c / s
  | 1 => -p ^ 2 / s ^ 2
  | 2 => 2 * p ^ 3 * c / s ^ 3
  | 3 => -2 * p ^ 4 * (1 + 2 * c ^ 2) / s ^ 4
  | _ => 8 * p ^ 5 * (c ^ 3 + 2 * c) / s ^ 5

private theorem hasDerivAt_cotJet (r : Fin 4) (z : ℂ)
    (hz : Complex.sin ((Real.pi : ℂ) * z) ≠ 0) :
    HasDerivAt (cotJet r.val) (cotJet (r.val + 1) z) z := by
  let p : ℂ := Real.pi
  have hs := ((hasDerivAt_id z).const_mul p).csin
  have hc := ((hasDerivAt_id z).const_mul p).ccos
  have ht := Complex.sin_sq_add_cos_sq (p * z)
  fin_cases r
  · convert! ((hc.const_mul p).div hs hz) using 1
    dsimp [cotJet, p] at *
    field_simp [hz]
    try field_simp [hz]
    linear_combination ht
  · convert! (hasDerivAt_const z (-p ^ 2)).div (hs.pow 2) (pow_ne_zero 2 hz) using 1
    dsimp [cotJet, p]
    field_simp [hz]
    try field_simp [hz]
    ring
  · convert! ((hc.const_mul (2 * p ^ 3)).div (hs.pow 3) (pow_ne_zero 3 hz)) using 1
    dsimp [cotJet, p] at *
    field_simp [hz]
    try field_simp [hz]
    linear_combination ht
  · convert! ((((hc.pow 2).const_mul 2).const_add 1).const_mul (-2 * p ^ 4)).div
      (hs.pow 4) (pow_ne_zero 4 hz) using 1
    dsimp [cotJet, p] at *
    field_simp [hz]
    try field_simp [hz]
    linear_combination -8 * Complex.cos ((Real.pi : ℂ) * z) * ht

private theorem iteratedDeriv_cotJet (r : ℕ) (hr : r ≤ 4) (z : ℂ)
    (hz : Complex.sin ((Real.pi : ℂ) * z) ≠ 0) :
    iteratedDeriv r h158CotKernel z = cotJet r z := by
  induction r generalizing z with
  | zero => simp [h158CotKernel, Complex.cot, cotJet, mul_div_assoc]
  | succ r ih =>
    have he : iteratedDeriv r h158CotKernel =ᶠ[𝓝 z] cotJet r := by
      have hcont : ContinuousAt (fun w : ℂ => Complex.sin ((Real.pi : ℂ) * w)) z := by
        fun_prop
      filter_upwards [hcont.eventually_ne hz] with w hw
      exact ih (by omega) w hw
    rw [iteratedDeriv_succ, he.deriv_eq]
    exact (hasDerivAt_cotJet ⟨r, by omega⟩ z hz).deriv

/-- Exact fifth cotangent kernel identity with the original factor `1/24`. -/
theorem h158ContourKernel_eq (z : ℂ) (hz : Complex.sin ((Real.pi : ℂ) * z) ≠ 0) :
    h158ContourKernel z = (Real.pi : ℂ) ^ 5 *
      (Complex.cos ((Real.pi : ℂ) * z) ^ 3 + 2 * Complex.cos ((Real.pi : ℂ) * z)) /
        (3 * Complex.sin ((Real.pi : ℂ) * z) ^ 5) := by
  rw [h158ContourKernel, iteratedDeriv_cotJet 4 (by omega) z hz]
  dsimp [cotJet]
  field_simp [hz]
  try field_simp [hz]
  ring

theorem h158ContourKernel_analyticAt (z : ℂ)
    (hz : Complex.sin ((Real.pi : ℂ) * z) ≠ 0) : AnalyticAt ℂ h158ContourKernel z := by
  have hc : AnalyticAt ℂ h158CotKernel z := by
    unfold h158CotKernel Complex.cot
    apply AnalyticAt.mul analyticAt_const
    exact (Complex.analyticAt_cos.comp (analyticAt_const.mul analyticAt_id)).div
      (Complex.analyticAt_sin.comp (analyticAt_const.mul analyticAt_id)) hz
  unfold h158ContourKernel
  simp_rw [iteratedDeriv_eq_iterate]
  exact
    (hc.iterated_deriv 4).div analyticAt_const (by norm_num : (24 : ℂ) ≠ 0)

/-- Actual contour integrand, without altering the rational entry normalization. -/
def h158ContourIntegrand (n i j : ℕ) (z : ℂ) : ℂ :=
  h158EntryComplex n i j z * h158ContourKernel z

theorem h158ContourIntegrand_analyticAt (n i j : ℕ) (z : ℂ)
    (hz : h158ContourAbscissa n ≤ z.re)
    (hs : Complex.sin ((Real.pi : ℂ) * z) ≠ 0) :
    AnalyticAt ℂ (h158ContourIntegrand n i j) z :=
  ((h158EntryComplex_analyticOnNhd_contour_right n i j) z hz).mul
    (h158ContourKernel_analyticAt z hs)

theorem h158ContourIntegrand_analyticAt_contour (n i j : ℕ) (y : ℝ) :
    AnalyticAt ℂ (h158ContourIntegrand n i j) (h158ContourPoint n y) :=
  h158ContourIntegrand_analyticAt n i j _ (by simp) (h158_sin_ne_zero_on_contour n y)

private theorem cotKernel_logDeriv (z : ℂ) :
    h158CotKernel z = logDeriv (fun w : ℂ => Complex.sin ((Real.pi : ℂ) * w)) z := by
  have hd := ((hasDerivAt_id z).const_mul (Real.pi : ℂ)).csin
  simp only [id_eq, mul_one] at hd
  rw [logDeriv_apply, hd.deriv]
  simp only [h158CotKernel, Complex.cot]
  ring

/-- At each integer, the cotangent kernel is a simple pole with coefficient one
plus a genuinely analytic remainder. -/
theorem h158CotKernel_principal_part (m : ℤ) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A (m : ℂ) ∧
      h158CotKernel =ᶠ[𝓝[≠] (m : ℂ)] (fun z => 1 / (z - (m : ℂ)) + A z) := by
  let f : ℂ → ℂ := fun z => Complex.sin ((Real.pi : ℂ) * z)
  have hf : AnalyticAt ℂ f (m : ℂ) := by
    exact Complex.analyticAt_sin.comp (analyticAt_const.mul analyticAt_id)
  have hf0 : f (m : ℂ) = 0 := by
    simpa only [f, mul_comm] using Complex.sin_int_mul_pi m
  let g := dslope f (m : ℂ)
  have hg : AnalyticAt ℂ g (m : ℂ) := by
    obtain ⟨p, hp⟩ := hf
    exact ⟨_, hp.has_fpower_series_dslope_fslope⟩
  have hg0 : g (m : ℂ) ≠ 0 := by
    have hd := ((hasDerivAt_id (m : ℂ)).const_mul (Real.pi : ℂ)).csin
    change dslope f (m : ℂ) (m : ℂ) ≠ 0
    rw [dslope_same]
    rw [show deriv f (m : ℂ) =
      Complex.cos ((Real.pi : ℂ) * m) * (Real.pi : ℂ) by simpa [f] using hd.deriv]
    apply mul_ne_zero _ (by exact_mod_cast Real.pi_ne_zero)
    intro hc
    have h := Complex.sin_sq_add_cos_sq ((Real.pi : ℂ) * m)
    change Complex.sin ((Real.pi : ℂ) * m) = 0 at hf0
    simp [hf0, hc] at h
  have hfactor : f = fun z => (z - (m : ℂ)) * g z := by
    funext z
    simpa only [smul_eq_mul, hf0, sub_zero] using (sub_smul_dslope f (m : ℂ) z).symm
  refine ⟨logDeriv g, hg.deriv.div hg hg0, ?_⟩
  filter_upwards [hg.eventually_analyticAt.filter_mono nhdsWithin_le_nhds,
    (hg.continuousAt.eventually_ne hg0).filter_mono nhdsWithin_le_nhds,
    self_mem_nhdsWithin] with z hga hgn hz
  have hzm : z - (m : ℂ) ≠ 0 := sub_ne_zero.mpr hz
  rw [cotKernel_logDeriv]
  change logDeriv f z = _
  rw [hfactor, logDeriv_fun_mul z hzm hgn (by fun_prop) hga.differentiableAt]
  simp [logDeriv_apply]

private theorem iteratedDeriv_eventuallyEq_nhdsNE {f g : ℂ → ℂ} {c : ℂ}
    (h : f =ᶠ[𝓝[≠] c] g) (r : ℕ) :
    iteratedDeriv r f =ᶠ[𝓝[≠] c] iteratedDeriv r g := by
  induction r with
  | zero => simpa using h
  | succ r ih => simpa only [iteratedDeriv_succ] using ih.nhdsNE_deriv

private theorem fourthDeriv_inv_sub (c z : ℂ) :
    iteratedDeriv 4 (fun w : ℂ => 1 / (w - c)) z / 24 = 1 / (z - c) ^ 5 := by
  have h := congrFun (iter_deriv_inv_linear_sub 4 (1 : ℂ) c) z
  norm_num [one_div, iteratedDeriv_eq_iterate, zpow_neg, zpow_natCast] at h ⊢
  rw [h]
  ring

/-- The fifth cotangent kernel has only the pure fifth-order principal part;
in particular it has no additional lower-order pole terms. -/
theorem h158ContourKernel_principal_part (m : ℤ) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A (m : ℂ) ∧
      h158ContourKernel =ᶠ[𝓝[≠] (m : ℂ)] (fun z => 1 / (z - (m : ℂ)) ^ 5 + A z) := by
  obtain ⟨A, hA, hcot⟩ := h158CotKernel_principal_part m
  refine ⟨fun z => iteratedDeriv 4 A z / 24, ?_, ?_⟩
  · simp_rw [iteratedDeriv_eq_iterate]
    exact (hA.iterated_deriv 4).div analyticAt_const (by norm_num : (24 : ℂ) ≠ 0)
  · filter_upwards [iteratedDeriv_eventuallyEq_nhdsNE hcot 4,
      hA.eventually_analyticAt.filter_mono nhdsWithin_le_nhds,
      self_mem_nhdsWithin] with z hz hAz hzm
    have hi : ContDiffAt ℂ 4 (fun w : ℂ => 1 / (w - (m : ℂ))) z :=
      contDiffAt_const.div (contDiffAt_id.sub contDiffAt_const) (sub_ne_zero.mpr hzm)
    rw [h158ContourKernel, hz, iteratedDeriv_fun_add hi hAz.contDiffAt,
      add_div, fourthDeriv_inv_sub]

/-- A small-circle residue certificate. This is a contour integral of the
actual cotangent kernel, not a definition of its residue by the desired value. -/
theorem h158ContourKernel_local_integral (f : ℂ → ℂ) (m : ℤ)
    (hf : AnalyticAt ℂ f (m : ℂ)) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ r : ℝ, 0 < r → r < ε →
      (∮ z in C((m : ℂ), r), f z * h158ContourKernel z) =
        (2 * (Real.pi : ℂ) * Complex.I) * (iteratedDeriv 4 f (m : ℂ) / 24) := by
  obtain ⟨A, hA, hK⟩ := h158ContourKernel_principal_part m
  have hev : ∀ᶠ z in 𝓝 (m : ℂ), AnalyticAt ℂ f z ∧ AnalyticAt ℂ A z ∧
      (z ≠ (m : ℂ) → h158ContourKernel z = 1 / (z - (m : ℂ)) ^ 5 + A z) := by
    filter_upwards [hf.eventually_analyticAt, hA.eventually_analyticAt,
      eventually_nhdsWithin_iff.mp hK] with z hfz hAz hKz
    exact ⟨hfz, hAz, hKz⟩
  obtain ⟨ε, hε, he⟩ := Metric.eventually_nhds_iff.mp hev
  refine ⟨ε, hε, ?_⟩
  intro r hr hre
  have hlocal (z : ℂ) (hz : z ∈ Metric.closedBall (m : ℂ) r) :=
    he (lt_of_le_of_lt (Metric.mem_closedBall.mp hz) hre)
  have hF : DifferentiableOn ℂ f (Metric.closedBall (m : ℂ) r) :=
    fun z hz => (hlocal z hz).1.differentiableAt.differentiableWithinAt
  have hG : DifferentiableOn ℂ (fun z => f z * A z) (Metric.closedBall (m : ℂ) r) :=
    fun z hz => ((hlocal z hz).1.mul (hlocal z hz).2.1).differentiableAt.differentiableWithinAt
  have hnz (z : ℂ) (hz : z ∈ Metric.sphere (m : ℂ) r) : z - (m : ℂ) ≠ 0 :=
    sub_ne_zero.mpr (Metric.sphere_disjoint_ball.ne_of_mem hz (Metric.mem_ball_self hr))
  have hEq : Set.EqOn (fun z => f z * h158ContourKernel z)
      (fun z => (1 / (z - (m : ℂ)) ^ 5) * f z + f z * A z)
      (Metric.sphere (m : ℂ) r) := by
    intro z hz
    dsimp only
    rw [(hlocal z (Metric.sphere_subset_closedBall hz)).2.2 (sub_ne_zero.mp (hnz z hz))]
    ring
  have hci : CircleIntegrable (fun z => (1 / (z - (m : ℂ)) ^ 5) * f z) (m : ℂ) r := by
    apply ContinuousOn.circleIntegrable hr.le
    exact (continuousOn_const.div ((continuousOn_id.sub continuousOn_const).pow 5)
      (fun z hz => pow_ne_zero 5 (hnz z hz))).mul
        (hF.continuousOn.mono Metric.sphere_subset_closedBall)
  have hgi : CircleIntegrable (fun z => f z * A z) (m : ℂ) r :=
    ContinuousOn.circleIntegrable hr.le (hG.continuousOn.mono Metric.sphere_subset_closedBall)
  have hzero : (∮ z in C((m : ℂ), r), f z * A z) = 0 :=
    (hG.mono Metric.closure_ball_subset_closedBall).diffContOnCl.circleIntegral_eq_zero hr.le
  rw [circleIntegral.integral_congr hr.le hEq, circleIntegral.integral_add hci hgi,
    hzero, add_zero]
  have hc := hF.circleIntegral_one_div_sub_center_pow_smul hr 4
  norm_num only [Nat.factorial, Nat.reduceMul, Nat.reduceAdd, Nat.cast_ofNat,
    smul_eq_mul] at hc
  rw [hc]
  ring

/-- Every integer to the right of the contour line has the actual residue
`entry'''' / 24`. The normalized circle integral is independent of every
sufficiently small positive radius. Rational poles to the left are excluded. -/
theorem h158ContourIntegrand_integer_residue (n : ℕ) (i j : Fin (2 * n))
    (m : ℤ) (hm : h158ContourAbscissa n < (m : ℝ)) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ r : ℝ, 0 < r → r < ε →
      (∮ z in C((m : ℂ), r), h158ContourIntegrand n i j z) /
          (2 * (Real.pi : ℂ) * Complex.I) =
        iteratedDeriv 4 (h158EntryComplex n i j) (m : ℂ) / 24 := by
  have hf : AnalyticAt ℂ (h158EntryComplex n i j) (m : ℂ) :=
    h158EntryComplex_analyticAt n i j _ (by
      simpa using (lt_trans (h158ContourAbscissa_in_halfplane n) hm))
  obtain ⟨ε, hε, h⟩ := h158ContourKernel_local_integral (h158EntryComplex n i j) m hf
  refine ⟨ε, hε, fun r hr hre => ?_⟩
  change (∮ z in C((m : ℂ), r), h158EntryComplex n i j z * h158ContourKernel z) / _ = _
  rw [h r hr hre, mul_div_cancel_left₀ _ Complex.two_pi_I_ne_zero]

/-- Away from the integer singularities, the integrand is analytic throughout
the entire closed half-plane containing every right-closing rectangle. -/
theorem h158ContourIntegrand_analyticOnNhd_off_integers (n i j : ℕ) :
    AnalyticOnNhd ℂ (h158ContourIntegrand n i j)
      ({z : ℂ | h158ContourAbscissa n ≤ z.re} \ Set.range (fun m : ℤ => (m : ℂ))) := by
  intro z hz
  apply h158ContourIntegrand_analyticAt n i j z hz.1
  intro hs
  obtain ⟨m, hm⟩ := Complex.sin_eq_zero_iff.mp hs
  apply hz.2
  refine ⟨m, ?_⟩
  apply mul_left_cancel₀ (show (Real.pi : ℂ) ≠ 0 by exact_mod_cast Real.pi_ne_zero)
  simpa only [mul_comm] using hm.symm

/-- All four edges of a right-closing half-integer rectangle are regular.
The actual rational entry is analytic throughout the enclosed right half-plane. -/
theorem h158ContourIntegrand_analyticAt_rectangle_boundary (n i j : ℕ)
    (q : ℤ) (T : ℝ) (hT : 0 < T) (z : ℂ)
    (hz : h158ContourAbscissa n ≤ z.re)
    (hb : z.re = h158ContourAbscissa n ∨ z.re = (q : ℝ) + 1 / 2 ∨
      z.im = T ∨ z.im = -T) : AnalyticAt ℂ (h158ContourIntegrand n i j) z := by
  apply h158ContourIntegrand_analyticAt n i j z hz
  rcases hb with h | h | h | h
  · apply sin_pi_ne_zero_of_re_ne_int
    intro m
    simpa only [h] using h158ContourAbscissa_ne_int n m
  · exact h158_sin_ne_zero_on_half_integer q z h
  · apply h158_sin_ne_zero_of_im_ne_zero
    simpa only [h] using hT.ne'
  · apply h158_sin_ne_zero_of_im_ne_zero
    simpa only [h] using neg_ne_zero.mpr hT.ne'

/-- Every enclosed negative integer has zero actual contour residue. -/
theorem h158ContourIntegrand_protected_residue (n : ℕ) (i j : Fin (2 * n))
    (k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ 4 * n) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ r : ℝ, 0 < r → r < ε →
      (∮ z in C(-(k : ℂ), r), h158ContourIntegrand n i j z) /
        (2 * (Real.pi : ℂ) * Complex.I) = 0 := by
  have hm : h158ContourAbscissa n < ((-(k : ℤ) : ℤ) : ℝ) := by
    have hb : (k : ℝ) ≤ 4 * (n : ℝ) := by exact_mod_cast hkn
    push_cast
    dsimp [h158ContourAbscissa]
    linarith
  obtain ⟨ε, hε, h⟩ := h158ContourIntegrand_integer_residue n i j (-(k : ℤ)) hm
  refine ⟨ε, hε, fun r hr hre => ?_⟩
  have hz := h158EntryComplex_fourthDerivative_protected n i j k hk (by omega : k ≤ 48 * n)
  simpa only [Int.cast_neg, Int.cast_natCast, hz, zero_div] using h r hr hre

/-- The residue series selected by `M=-4*n-1/2` has exactly the original
functional value. This does not yet identify it with an infinite-line integral. -/
theorem hasSum_h158Contour_residue_series (n : ℕ) (i j : Fin (2 * n)) :
    HasSum (fun v : ℕ =>
      iteratedDeriv 4 (h158EntryComplex n i j) ((v : ℂ) - 4 * (n : ℂ)) / 24)
      (h158Functional n i j : ℂ) := by
  let f : ℕ → ℂ := fun v =>
    iteratedDeriv 4 (h158EntryComplex n i j) ((v : ℂ) - 4 * (n : ℂ)) / 24
  have ht : HasSum (fun v : ℕ => f (v + 4 * n)) (h158Functional n i j : ℂ) := by
    simpa only [f, Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat, add_sub_cancel_right] using
      hasSum_h158EntryComplex_fourthDerivative_nonnegative n i j
  have hp : (∑ v ∈ range (4 * n), f v) = 0 := by
    apply Finset.sum_eq_zero
    intro v hv
    have hv' : v < 4 * n := mem_range.mp hv
    have hx : (v : ℂ) - 4 * (n : ℂ) = -((4 * n - v : ℕ) : ℂ) := by
      rw [Nat.cast_sub (Nat.le_of_lt hv')]
      push_cast
      ring
    dsimp [f]
    rw [hx]
    exact h158EntryComplex_dividedFourthDerivative_protected n i j (4 * n - v)
      (by omega) (by omega)
  simpa only [hp, zero_add] using ht.sum_range_add

end OddZetaMixed
