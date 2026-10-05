import OddZetaMixed.H158VerticalIntegral
import Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv
import Mathlib.Analysis.Complex.RealDeriv
import Mathlib.Analysis.Analytic.IsolatedZeros

/-!
# Finite rectangle contour calculations

All contour identities in this file are proved using interval integration and
Mathlib's rectangle Cauchy-Goursat theorem. No residue theorem is added as an axiom.
-/

noncomputable section

namespace OddZetaMixed

open Filter MeasureTheory Set Complex
open scoped Topology Interval

/-- Counterclockwise boundary integral of `[a,b] x [-h,h]`. -/
def h158RectBoundary (a b h : ℝ) (f : ℂ → ℂ) : ℂ :=
  (∫ x in a..b, f ((x : ℂ) + (-h : ℝ) * I)) -
    (∫ x in a..b, f ((x : ℂ) + (h : ℂ) * I)) +
    (∫ y in -h..h, f ((b : ℂ) + (y : ℂ) * I) * I) -
    (∫ y in -h..h, f ((a : ℂ) + (y : ℂ) * I) * I)

private theorem horizontal_primitive (F f : ℂ → ℂ) (a b y : ℝ)
    (hd : ∀ x ∈ uIcc a b, HasDerivAt F (f ((x : ℂ) + (y : ℂ) * I))
      ((x : ℂ) + (y : ℂ) * I))
    (hi : IntervalIntegrable (fun x : ℝ => f ((x : ℂ) + (y : ℂ) * I)) volume a b) :
    (∫ x in a..b, f ((x : ℂ) + (y : ℂ) * I)) =
      F ((b : ℂ) + (y : ℂ) * I) - F ((a : ℂ) + (y : ℂ) * I) := by
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt _ hi
  intro x hx
  simpa using ((hd x hx).comp (x : ℂ) ((hasDerivAt_id (x : ℂ)).add_const ((y : ℂ) * I))).comp_ofReal

private theorem vertical_primitive (F f : ℂ → ℂ) (a h : ℝ)
    (hd : ∀ y ∈ uIcc (-h) h, HasDerivAt F (f ((a : ℂ) + (y : ℂ) * I))
      ((a : ℂ) + (y : ℂ) * I))
    (hi : IntervalIntegrable (fun y : ℝ => f ((a : ℂ) + (y : ℂ) * I) * I) volume (-h) h) :
    (∫ y in -h..h, f ((a : ℂ) + (y : ℂ) * I) * I) =
      F ((a : ℂ) + (h : ℂ) * I) - F ((a : ℂ) + (-h : ℝ) * I) := by
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt _ hi
  intro y hy
  simpa using ((hd y hy).comp (y : ℂ)
    (((hasDerivAt_id (y : ℂ)).mul_const I).const_add (a : ℂ))).comp_ofReal

theorem h158RectBoundary_eq_zero_of_analytic (a b h : ℝ) (f : ℂ → ℂ)
    (hf : AnalyticOnNhd ℂ f (uIcc a b ×ℂ uIcc (-h) h)) :
    h158RectBoundary a b h f = 0 := by
  have ht := Complex.integral_boundary_rect_eq_zero_of_differentiableOn f
    ((a : ℂ) + (-h : ℝ) * I) ((b : ℂ) + (h : ℂ) * I)
    (by simpa using hf.differentiableOn)
  simpa only [h158RectBoundary, add_re, ofReal_re, mul_re, ofReal_im,
    I_re, I_im, mul_zero, zero_mul, sub_zero, add_zero, add_im, mul_im,
    mul_one, zero_add, smul_eq_mul, intervalIntegral.integral_mul_const,
    mul_comm I] using ht

private theorem log_neg_im_pos {z : ℂ} (hz : 0 < z.im) :
    Complex.log (-z) = Complex.log z - (Real.pi : ℂ) * I := by
  simp only [Complex.log, norm_neg, arg_neg_eq_arg_sub_pi_of_im_pos hz, ofReal_sub]
  ring

private theorem log_neg_im_neg {z : ℂ} (hz : z.im < 0) :
    Complex.log (-z) = Complex.log z + (Real.pi : ℂ) * I := by
  simp only [Complex.log, norm_neg, arg_neg_eq_arg_add_pi_of_im_neg hz, ofReal_add]
  ring

/-- Direct elementary rectangle integral for one real simple pole in its interior. -/
theorem h158RectBoundary_simplePole (a b h c : ℝ)
    (hac : a < c) (hcb : c < b) (hh : 0 < h) :
    h158RectBoundary a b h (fun z => (z - (c : ℂ))⁻¹) = 2 * (Real.pi : ℂ) * I := by
  have hhor (y : ℝ) (hy : y ≠ 0) :
      (∫ x in a..b, (((x : ℂ) + (y : ℂ) * I) - (c : ℂ))⁻¹) =
        Complex.log ((b : ℂ) + (y : ℂ) * I - c) -
          Complex.log ((a : ℂ) + (y : ℂ) * I - c) := by
    apply horizontal_primitive (fun z => Complex.log (z - c)) (fun z => (z - c)⁻¹) a b y
    · intro x _
      have hs : (x : ℂ) + (y : ℂ) * I - c ∈ slitPlane := by
        apply mem_slitPlane_iff.mpr
        exact Or.inr (by simpa using hy)
      simpa [Function.comp_def] using! (Complex.hasDerivAt_log hs).comp ((x : ℂ) + (y : ℂ) * I)
        ((hasDerivAt_id _).sub_const (c : ℂ))
    · apply Continuous.intervalIntegrable
      apply continuous_iff_continuousAt.mpr
      intro x
      have hz : (x : ℂ) + (y : ℂ) * I - c ≠ 0 := by
        intro he
        have := congrArg Complex.im he
        simp only [sub_im, add_im, ofReal_im, mul_im, ofReal_re, I_im, I_re,
          mul_one, mul_zero, add_zero, zero_add, sub_zero, zero_im] at this
        exact hy this
      exact ContinuousAt.inv₀ (by fun_prop) hz
  have hvright : (∫ y in -h..h, (((b : ℂ) + (y : ℂ) * I) - (c : ℂ))⁻¹ * I) =
      Complex.log ((b : ℂ) + (h : ℂ) * I - c) -
        Complex.log ((b : ℂ) + (-h : ℝ) * I - c) := by
    apply vertical_primitive (fun z => Complex.log (z - c)) (fun z => (z - c)⁻¹) b h
    · intro y _
      have hs : (b : ℂ) + (y : ℂ) * I - c ∈ slitPlane := by
        apply mem_slitPlane_iff.mpr
        exact Or.inl (by simpa using sub_pos.mpr hcb)
      simpa [Function.comp_def] using! (Complex.hasDerivAt_log hs).comp ((b : ℂ) + (y : ℂ) * I)
        ((hasDerivAt_id _).sub_const (c : ℂ))
    · apply Continuous.intervalIntegrable
      apply continuous_iff_continuousAt.mpr
      intro y
      apply ContinuousAt.mul _ continuousAt_const
      apply ContinuousAt.inv₀ (by fun_prop)
      intro he
      have := congrArg Complex.re he
      have hbc : b - c ≠ 0 := (sub_pos.mpr hcb).ne'
      exact hbc (by simpa using this)
  have hvleft : (∫ y in -h..h, (((a : ℂ) + (y : ℂ) * I) - (c : ℂ))⁻¹ * I) =
      Complex.log (-((a : ℂ) + (h : ℂ) * I - c)) -
        Complex.log (-((a : ℂ) + (-h : ℝ) * I - c)) := by
    apply vertical_primitive (fun z => Complex.log (-(z - c))) (fun z => (z - c)⁻¹) a h
    · intro y _
      have hs : -((a : ℂ) + (y : ℂ) * I - c) ∈ slitPlane := by
        apply mem_slitPlane_iff.mpr
        exact Or.inl (by simp; linarith)
      simpa only [Function.comp_def, id_eq, neg_inv, mul_neg, neg_mul, neg_neg, mul_one] using!
        (Complex.hasDerivAt_log hs).comp ((a : ℂ) + (y : ℂ) * I)
        (((hasDerivAt_id _).sub_const (c : ℂ)).neg)
    · apply Continuous.intervalIntegrable
      apply continuous_iff_continuousAt.mpr
      intro y
      apply ContinuousAt.mul _ continuousAt_const
      apply ContinuousAt.inv₀ (by fun_prop)
      intro he
      have := congrArg Complex.re he
      have hac' : a - c ≠ 0 := (sub_neg.mpr hac).ne
      exact hac' (by simpa using this)
  unfold h158RectBoundary
  rw [hhor (-h) (neg_ne_zero.mpr hh.ne'), hhor h hh.ne', hvright, hvleft,
    log_neg_im_pos (by simpa using hh : 0 < ((a : ℂ) + (h : ℂ) * I - c).im),
    log_neg_im_neg (by simpa using neg_neg_of_pos hh : ((a : ℂ) + (-h : ℝ) * I - c).im < 0)]
  ring

private theorem horizontal_ne_real (x y c : ℝ) (hy : y ≠ 0) :
    (x : ℂ) + (y : ℂ) * I ≠ (c : ℂ) := by
  intro he
  exact hy (by simpa using congrArg Complex.im he)

private theorem vertical_ne_real (x y c : ℝ) (hx : x ≠ c) :
    (x : ℂ) + (y : ℂ) * I ≠ (c : ℂ) := by
  intro he
  exact hx (by simpa using congrArg Complex.re he)

/-- A single-valued primitive away from the real center gives zero boundary integral. -/
theorem h158RectBoundary_eq_zero_of_primitive (a b h c : ℝ) (ha : a ≠ c) (hb : b ≠ c)
    (hh : h ≠ 0) (F f : ℂ → ℂ)
    (hd : ∀ z ≠ (c : ℂ), HasDerivAt F (f z) z)
    (hc : ∀ z ≠ (c : ℂ), ContinuousAt f z) :
    h158RectBoundary a b h f = 0 := by
  have hhori (y : ℝ) (hy : y ≠ 0) :
      IntervalIntegrable (fun x : ℝ => f ((x : ℂ) + (y : ℂ) * I)) volume a b := by
    apply Continuous.intervalIntegrable
    apply continuous_iff_continuousAt.mpr
    intro x
    exact (hc _ (horizontal_ne_real x y c hy)).comp
      (f := fun x : ℝ => (x : ℂ) + (y : ℂ) * I) (by fun_prop)
  have hvert (x : ℝ) (hx : x ≠ c) :
      IntervalIntegrable (fun y : ℝ => f ((x : ℂ) + (y : ℂ) * I) * I) volume (-h) h := by
    apply Continuous.intervalIntegrable
    apply continuous_iff_continuousAt.mpr
    intro y
    exact ((hc _ (vertical_ne_real x y c hx)).comp
      (f := fun y : ℝ => (x : ℂ) + (y : ℂ) * I) (by fun_prop)).mul continuousAt_const
  unfold h158RectBoundary
  rw [horizontal_primitive F f a b (-h) (fun x _ =>
      hd _ (horizontal_ne_real x (-h) c (neg_ne_zero.mpr hh))) (hhori (-h) (neg_ne_zero.mpr hh)),
    horizontal_primitive F f a b h (fun x _ =>
      hd _ (horizontal_ne_real x h c hh)) (hhori h hh),
    vertical_primitive F f b h (fun y _ => hd _ (vertical_ne_real b y c hb)) (hvert b hb),
    vertical_primitive F f a h (fun y _ => hd _ (vertical_ne_real a y c ha)) (hvert a ha)]
  ring

/-- Higher pure poles have zero boundary integral, proved by an explicit primitive. -/
theorem h158RectBoundary_higherPole (a b h c : ℝ) (ha : a ≠ c) (hb : b ≠ c)
    (hh : h ≠ 0) (k : ℕ) (hk : 1 ≤ k) :
    h158RectBoundary a b h (fun z => ((z - (c : ℂ)) ^ (k + 1))⁻¹) = 0 := by
  obtain ⟨k, rfl⟩ : ∃ t : ℕ, k = t + 1 := ⟨k - 1, by omega⟩
  apply h158RectBoundary_eq_zero_of_primitive a b h c ha hb hh
    (fun z => -((z - (c : ℂ)) ^ (k + 1))⁻¹ / ((k + 1 : ℕ) : ℂ))
  · intro z hz
    have hz0 : z - (c : ℂ) ≠ 0 := sub_ne_zero.mpr hz
    have hk0 : ((k + 1 : ℕ) : ℂ) ≠ 0 := by exact_mod_cast (show k + 1 ≠ 0 by omega)
    have hd := ((((hasDerivAt_id z).sub_const (c : ℂ)).pow (k + 1)).inv
      (pow_ne_zero (k + 1) hz0)).neg.div_const ((k + 1 : ℕ) : ℂ)
    convert! hd using 1
    simp only [id_eq, Pi.pow_apply, mul_one, Nat.add_sub_cancel]
    field_simp
    simp only [pow_succ]
    ring
  · intro z hz
    have hz0 : z - (c : ℂ) ≠ 0 := sub_ne_zero.mpr hz
    exact ContinuousAt.inv₀ (by fun_prop) (pow_ne_zero _ hz0)

/-- Successive analytic divided differences at the pole center. -/
def h158PoleTaylorTail (f : ℂ → ℂ) (c : ℂ) (k : ℕ) : ℂ → ℂ :=
  (Function.swap dslope c)^[k] f

theorem h158PoleTaylorTail_analytic {f : ℂ → ℂ} {c : ℂ}
    (hf : AnalyticAt ℂ f c) (k : ℕ) : AnalyticAt ℂ (h158PoleTaylorTail f c k) c := by
  obtain ⟨p, hp⟩ := hf
  exact ⟨_, hp.has_fpower_series_iterate_dslope_fslope k⟩

theorem h158PoleTaylorTail_at_center {f : ℂ → ℂ} {c : ℂ}
    (hf : AnalyticAt ℂ f c) (k : ℕ) :
    h158PoleTaylorTail f c k c = iteratedDeriv k f c / k.factorial := by
  have hh := (hf.hasFPowerSeriesAt.has_fpower_series_iterate_dslope_fslope k).coeff_zero 1
  rw [← FormalMultilinearSeries.coeff, FormalMultilinearSeries.coeff_iterate_fslope,
    zero_add, FormalMultilinearSeries.coeff_ofScalars] at hh
  exact hh.symm

private theorem taylor_step (f : ℂ → ℂ) (c z : ℂ) (k : ℕ) :
    (z - c) * h158PoleTaylorTail f c (k + 1) z =
      h158PoleTaylorTail f c k z - h158PoleTaylorTail f c k c := by
  simpa only [h158PoleTaylorTail, Function.iterate_succ_apply', Function.swap,
    smul_eq_mul] using sub_smul_dslope (h158PoleTaylorTail f c k) c z

/-- All five Laurent coefficients of `f(z)/(z-c)^5`, not just its residue. -/
def h158PolePrincipal (f : ℂ → ℂ) (c z : ℂ) : ℂ :=
  h158PoleTaylorTail f c 0 c / (z - c) ^ 5 +
  h158PoleTaylorTail f c 1 c / (z - c) ^ 4 +
  h158PoleTaylorTail f c 2 c / (z - c) ^ 3 +
  h158PoleTaylorTail f c 3 c / (z - c) ^ 2 +
  h158PoleTaylorTail f c 4 c / (z - c)

theorem h158PolePrincipal_exact (f : ℂ → ℂ) (c z : ℂ) (hz : z ≠ c) :
    f z / (z - c) ^ 5 = h158PolePrincipal f c z + h158PoleTaylorTail f c 5 z := by
  have h0 := taylor_step f c z 0
  have h1 := taylor_step f c z 1
  have h2 := taylor_step f c z 2
  have h3 := taylor_step f c z 3
  have h4 := taylor_step f c z 4
  have hz0 := sub_ne_zero.mpr hz
  unfold h158PolePrincipal
  apply (div_eq_iff (pow_ne_zero 5 hz0)).mpr
  field_simp
  change (z-c) * h158PoleTaylorTail f c 1 z = f z - f c at h0
  rw [show h158PoleTaylorTail f c 0 c = f c from rfl]
  linear_combination -h0 - (z-c)*h1 - (z-c)^2*h2 - (z-c)^3*h3 - (z-c)^4*h4

/-- The actual cotangent integrand has a full finite principal part and an
analytic remainder at every integer in the allowed half-plane. -/
theorem h158ContourIntegrand_full_principal_part (n : ℕ) (i j : Fin (2 * n))
    (m : ℤ) (hm : h158ContourAbscissa n < (m : ℝ)) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A (m : ℂ) ∧
      h158ContourIntegrand n i j =ᶠ[𝓝[≠] (m : ℂ)]
        (fun z => h158PolePrincipal (h158EntryComplex n i j) m z + A z) := by
  have hf : AnalyticAt ℂ (h158EntryComplex n i j) (m : ℂ) :=
    h158EntryComplex_analyticAt n i j _ (by
      simpa using (lt_trans (h158ContourAbscissa_in_halfplane n) hm))
  obtain ⟨A, hA, he⟩ := h158ContourKernel_principal_part m
  refine ⟨fun z => h158PoleTaylorTail (h158EntryComplex n i j) m 5 z +
    h158EntryComplex n i j z * A z, (h158PoleTaylorTail_analytic hf 5).add (hf.mul hA), ?_⟩
  filter_upwards [he, self_mem_nhdsWithin] with z hz hzm
  rw [h158ContourIntegrand, hz, mul_add, mul_one_div,
    h158PolePrincipal_exact _ _ _ hzm]
  ring

theorem h158PolePrincipal_analyticAt (f : ℂ → ℂ) (c z : ℂ) (hz : z ≠ c) :
    AnalyticAt ℂ (h158PolePrincipal f c) z := by
  have hd : AnalyticAt ℂ (fun w : ℂ => w - c) z := analyticAt_id.sub analyticAt_const
  have hz0 := sub_ne_zero.mpr hz
  exact ((((analyticAt_const.div (hd.pow 5) (pow_ne_zero 5 hz0)).add
    (analyticAt_const.div (hd.pow 4) (pow_ne_zero 4 hz0))).add
    (analyticAt_const.div (hd.pow 3) (pow_ne_zero 3 hz0))).add
    (analyticAt_const.div (hd.pow 2) (pow_ne_zero 2 hz0))).add
    (analyticAt_const.div hd hz0)

/-- Finite removable singularities are filled with the values of their analytic germs. -/
theorem h158_fill_finite_analytic (S : Finset ℂ) (U : Set ℂ) (f : ℂ → ℂ)
    (hf : ∀ z ∈ U, z ∉ S → AnalyticAt ℂ f z)
    (hloc : ∀ c ∈ S, ∃ A : ℂ → ℂ, AnalyticAt ℂ A c ∧ f =ᶠ[𝓝[≠] c] A) :
    ∃ G : ℂ → ℂ, AnalyticOnNhd ℂ G U ∧ ∀ z ∉ S, G z = f z := by
  classical
  let A : ℂ → ℂ → ℂ := fun c => if hc : c ∈ S then (hloc c hc).choose else f
  have hA (c : ℂ) (hc : c ∈ S) : AnalyticAt ℂ (A c) c ∧ f =ᶠ[𝓝[≠] c] A c := by
    simpa only [A, dite_eq_left hc] using (hloc c hc).choose_spec
  let G : ℂ → ℂ := fun z => if z ∈ S then A z z else f z
  refine ⟨G, ?_, fun z hz => by simp only [G, ite_eq_right hz]⟩
  intro c hcU
  by_cases hc : c ∈ S
  · apply (hA c hc).1.congr
    have he : ∀ᶠ z in 𝓝 c, z ∉ S.erase c :=
      (S.erase c).finite_toSet.isClosed.isOpen_compl.mem_nhds (by simp)
    filter_upwards [he, eventually_nhdsWithin_iff.mp (hA c hc).2] with z hz hzg
    by_cases hzc : z = c
    · subst z
      simp only [G, ite_eq_left hc]
    · have hzs : z ∉ S := by
        intro hzs
        exact hz (Finset.mem_erase.mpr ⟨hzc, hzs⟩)
      simpa only [G, ite_eq_right hzs] using (hzg hzc).symm
  · apply (hf c hcU hc).congr
    have he : ∀ᶠ z in 𝓝 c, z ∉ S :=
      S.finite_toSet.isClosed.isOpen_compl.mem_nhds hc
    filter_upwards [he] with z hz
    simp only [G, ite_eq_right hz]

/-- A full Laurent expansion at each pole yields a single analytic global remainder. -/
theorem h158_finite_principal_removal (S : Finset ℂ) (U : Set ℂ)
    (f g : ℂ → ℂ) (hf : ∀ z ∈ U, z ∉ S → AnalyticAt ℂ f z)
    (hloc : ∀ c ∈ S, ∃ A : ℂ → ℂ, AnalyticAt ℂ A c ∧
      f =ᶠ[𝓝[≠] c] (fun z => h158PolePrincipal g c z + A z)) :
    ∃ G : ℂ → ℂ, AnalyticOnNhd ℂ G U ∧
      ∀ z ∉ S, f z = G z + ∑ c ∈ S, h158PolePrincipal g c z := by
  classical
  let R : ℂ → ℂ := fun z => f z - ∑ c ∈ S, h158PolePrincipal g c z
  obtain ⟨G, hG, he⟩ := h158_fill_finite_analytic S U R
    (fun z hz hzs => (hf z hz hzs).sub (by
      convert! S.analyticAt_sum
        (fun c hc => h158PolePrincipal_analyticAt g c z (fun he => hzs (he ▸ hc))) using 1
      funext w
      simp only [Finset.sum_apply]))
    (by
      intro c hc
      obtain ⟨A, hA, he⟩ := hloc c hc
      refine ⟨fun z => A z - ∑ d ∈ S.erase c, h158PolePrincipal g d z, ?_, ?_⟩
      · apply hA.sub
        convert! (S.erase c).analyticAt_sum
          (fun d hd => h158PolePrincipal_analyticAt g d c (Finset.mem_erase.mp hd).1.symm) using 1
        funext w
        simp only [Finset.sum_apply]
      · filter_upwards [he] with z hz
        dsimp only [R]
        rw [← Finset.add_sum_erase _ _ hc, hz]
        ring)
  refine ⟨G, hG, ?_⟩
  intro z hz
  have ht := he z hz
  dsimp only [R] at ht
  linear_combination -ht

def h158RectanglePoleSet (n q : ℕ) : Finset ℂ :=
  (Finset.Icc (-(4 * (n : ℤ))) (q : ℤ)).image (fun m : ℤ => (m : ℂ))

theorem h158RectanglePoleSet_mem (n q : ℕ) (z : ℂ) :
    z ∈ h158RectanglePoleSet n q ↔
      ∃ m : ℤ, -(4 * (n : ℤ)) ≤ m ∧ m ≤ (q : ℤ) ∧ (m : ℂ) = z := by
  simp only [h158RectanglePoleSet, Finset.mem_image, Finset.mem_Icc]
  aesop

/-- The actual integrand, after all enclosed principal parts are removed,
extends analytically across every enclosed integer in the entire rectangle. -/
theorem h158Rectangle_analytic_remainder (n q : ℕ) (i j : Fin (2 * n)) :
    ∃ G : ℂ → ℂ,
      AnalyticOnNhd ℂ G
        (Icc (h158ContourAbscissa n) ((q : ℝ) + 1 / 2) ×ℂ Icc (-(q : ℝ)) q) ∧
      ∀ z ∉ h158RectanglePoleSet n q,
        h158ContourIntegrand n i j z = G z +
          ∑ c ∈ h158RectanglePoleSet n q, h158PolePrincipal (h158EntryComplex n i j) c z := by
  apply h158_finite_principal_removal
  · intro z hz hzs
    apply h158ContourIntegrand_analyticAt n i j z hz.1.1
    intro hs
    obtain ⟨m, hm⟩ := Complex.sin_eq_zero_iff.mp hs
    have hzm : z = (m : ℂ) := by
      apply mul_left_cancel₀ (show (Real.pi : ℂ) ≠ 0 by exact_mod_cast Real.pi_ne_zero)
      simpa only [mul_comm] using hm
    have hmlo : -(4 * (n : ℤ)) ≤ m := by
      have hb := hz.1.1
      rw [hzm] at hb
      simp only [intCast_re, h158ContourAbscissa] at hb
      have : -(4 * (n : ℝ)) - 1 < (m : ℝ) := by linarith
      have : -(4 * (n : ℤ)) - 1 < m := by exact_mod_cast this
      omega
    have hmhi : m ≤ (q : ℤ) := by
      have hb := hz.1.2
      rw [hzm] at hb
      simp only [intCast_re] at hb
      have : (m : ℝ) < (q : ℝ) + 1 := by linarith
      have : m < (q : ℤ) + 1 := by exact_mod_cast this
      omega
    exact hzs ((h158RectanglePoleSet_mem n q z).mpr ⟨m, hmlo, hmhi, hzm.symm⟩)
  · intro c hc
    obtain ⟨m, hmlo, _, rfl⟩ := (h158RectanglePoleSet_mem n q c).mp hc
    apply h158ContourIntegrand_full_principal_part n i j m
    have hmlo' : -(4 * (n : ℝ)) ≤ (m : ℝ) := by exact_mod_cast hmlo
    dsimp [h158ContourAbscissa]
    linarith

structure H158RectIntegrable (a b h : ℝ) (f : ℂ → ℂ) : Prop where
  bottom : IntervalIntegrable (fun x : ℝ => f ((x : ℂ) + (-h : ℝ) * I)) volume a b
  top : IntervalIntegrable (fun x : ℝ => f ((x : ℂ) + (h : ℂ) * I)) volume a b
  right : IntervalIntegrable (fun y : ℝ => f ((b : ℂ) + (y : ℂ) * I) * I) volume (-h) h
  left : IntervalIntegrable (fun y : ℝ => f ((a : ℂ) + (y : ℂ) * I) * I) volume (-h) h

private theorem rect_integrable_of_edges (a b h : ℝ) (f : ℂ → ℂ)
    (hbot : ∀ x ∈ uIcc a b, ContinuousAt f ((x : ℂ) + (-h : ℝ) * I))
    (htop : ∀ x ∈ uIcc a b, ContinuousAt f ((x : ℂ) + (h : ℂ) * I))
    (hr : ∀ y ∈ uIcc (-h) h, ContinuousAt f ((b : ℂ) + (y : ℂ) * I))
    (hl : ∀ y ∈ uIcc (-h) h, ContinuousAt f ((a : ℂ) + (y : ℂ) * I)) :
    H158RectIntegrable a b h f := by
  constructor
  · apply ContinuousOn.intervalIntegrable
    intro x hx
    exact ((hbot x hx).comp (f := fun x : ℝ => (x : ℂ) + (-h : ℝ) * I)
      (by fun_prop)).continuousWithinAt
  · apply ContinuousOn.intervalIntegrable
    intro x hx
    exact ((htop x hx).comp (f := fun x : ℝ => (x : ℂ) + (h : ℂ) * I)
      (by fun_prop)).continuousWithinAt
  · apply ContinuousOn.intervalIntegrable
    intro y hy
    exact (((hr y hy).comp (f := fun y : ℝ => (b : ℂ) + (y : ℂ) * I)
      (by fun_prop)).mul continuousAt_const).continuousWithinAt
  · apply ContinuousOn.intervalIntegrable
    intro y hy
    exact (((hl y hy).comp (f := fun y : ℝ => (a : ℂ) + (y : ℂ) * I)
      (by fun_prop)).mul continuousAt_const).continuousWithinAt

theorem h158RectIntegrable_of_analytic (a b h : ℝ) (f : ℂ → ℂ)
    (hf : AnalyticOnNhd ℂ f (uIcc a b ×ℂ uIcc (-h) h)) :
    H158RectIntegrable a b h f := by
  apply rect_integrable_of_edges
  · intro x hx
    exact (hf _ (by simpa [mem_reProdIm] using And.intro hx (left_mem_uIcc : -h ∈ uIcc (-h) h))).continuousAt
  · intro x hx
    exact (hf _ (by simpa [mem_reProdIm] using And.intro hx (right_mem_uIcc : h ∈ uIcc (-h) h))).continuousAt
  · intro y hy
    exact (hf _ (by simpa [mem_reProdIm] using And.intro (right_mem_uIcc : b ∈ uIcc a b) hy)).continuousAt
  · intro y hy
    exact (hf _ (by simpa [mem_reProdIm] using And.intro (left_mem_uIcc : a ∈ uIcc a b) hy)).continuousAt

theorem H158RectIntegrable.add {a b h : ℝ} {f g : ℂ → ℂ}
    (hf : H158RectIntegrable a b h f) (hg : H158RectIntegrable a b h g) :
    H158RectIntegrable a b h (fun z => f z + g z) := by
  exact ⟨hf.bottom.add hg.bottom, hf.top.add hg.top,
    by simpa only [add_mul] using hf.right.add hg.right,
    by simpa only [add_mul] using hf.left.add hg.left⟩

theorem H158RectIntegrable.const_mul {a b h : ℝ} {f : ℂ → ℂ}
    (hf : H158RectIntegrable a b h f) (c : ℂ) :
    H158RectIntegrable a b h (fun z => c * f z) := by
  exact ⟨hf.bottom.const_mul c, hf.top.const_mul c,
    by simpa only [mul_assoc] using hf.right.const_mul c,
    by simpa only [mul_assoc] using hf.left.const_mul c⟩

theorem h158RectBoundary_add {a b h : ℝ} {f g : ℂ → ℂ}
    (hf : H158RectIntegrable a b h f) (hg : H158RectIntegrable a b h g) :
    h158RectBoundary a b h (fun z => f z + g z) =
      h158RectBoundary a b h f + h158RectBoundary a b h g := by
  unfold h158RectBoundary
  simp only [add_mul, intervalIntegral.integral_add hf.bottom hg.bottom,
    intervalIntegral.integral_add hf.top hg.top,
    intervalIntegral.integral_add hf.right hg.right,
    intervalIntegral.integral_add hf.left hg.left]
  ring

theorem h158RectBoundary_const_mul (a b h : ℝ) (f : ℂ → ℂ) (c : ℂ) :
    h158RectBoundary a b h (fun z => c * f z) = c * h158RectBoundary a b h f := by
  unfold h158RectBoundary
  simp only [mul_assoc, intervalIntegral.integral_const_mul]
  ring

theorem h158RectIntegrable_purePole (a b h c : ℝ) (ha : a ≠ c) (hb : b ≠ c)
    (hh : h ≠ 0) (k : ℕ) :
    H158RectIntegrable a b h (fun z => ((z - (c : ℂ)) ^ k)⁻¹) := by
  have hf (z : ℂ) (hz : z ≠ c) : ContinuousAt (fun w : ℂ => ((w-c)^k)⁻¹) z :=
    ContinuousAt.inv₀ (by fun_prop) (pow_ne_zero k (sub_ne_zero.mpr hz))
  apply rect_integrable_of_edges
  · intro x _; exact hf _ (horizontal_ne_real x (-h) c (neg_ne_zero.mpr hh))
  · intro x _; exact hf _ (horizontal_ne_real x h c hh)
  · intro y _; exact hf _ (vertical_ne_real b y c hb)
  · intro y _; exact hf _ (vertical_ne_real a y c ha)

theorem h158RectIntegrable_principal (a b h c : ℝ) (ha : a ≠ c) (hb : b ≠ c)
    (hh : h ≠ 0) (f : ℂ → ℂ) : H158RectIntegrable a b h (h158PolePrincipal f c) := by
  have hi (k : ℕ) := h158RectIntegrable_purePole a b h c ha hb hh k
  unfold h158PolePrincipal
  simpa only [div_eq_mul_inv, pow_one] using
    ((((hi 5).const_mul (h158PoleTaylorTail f c 0 c)).add
      ((hi 4).const_mul (h158PoleTaylorTail f c 1 c))).add
      ((hi 3).const_mul (h158PoleTaylorTail f c 2 c))).add
      ((hi 2).const_mul (h158PoleTaylorTail f c 3 c)) |>.add
      ((hi 1).const_mul (h158PoleTaylorTail f c 4 c))

/-- Rectangle residue evaluation for the complete order-five principal part. -/
theorem h158RectBoundary_principal (a b h c : ℝ) (hac : a < c) (hcb : c < b)
    (hh : 0 < h) (f : ℂ → ℂ) (hf : AnalyticAt ℂ f (c : ℂ)) :
    h158RectBoundary a b h (h158PolePrincipal f c) =
      (2 * (Real.pi : ℂ) * I) * (iteratedDeriv 4 f c / 24) := by
  have hi (k : ℕ) := h158RectIntegrable_purePole a b h c hac.ne hcb.ne.symm hh.ne' k
  have hc (k r : ℕ) := (hi k).const_mul (h158PoleTaylorTail f c r c)
  unfold h158PolePrincipal
  simp only [div_eq_mul_inv]
  rw [h158RectBoundary_add (((hc 5 0).add (hc 4 1)).add (hc 3 2) |>.add (hc 2 3))
      (by simpa only [pow_one] using hc 1 4),
    h158RectBoundary_add (((hc 5 0).add (hc 4 1)).add (hc 3 2)) (hc 2 3),
    h158RectBoundary_add ((hc 5 0).add (hc 4 1)) (hc 3 2),
    h158RectBoundary_add (hc 5 0) (hc 4 1)]
  simp only [h158RectBoundary_const_mul]
  rw [h158RectBoundary_higherPole a b h c hac.ne hcb.ne.symm hh.ne' 4 (by norm_num),
    h158RectBoundary_higherPole a b h c hac.ne hcb.ne.symm hh.ne' 3 (by norm_num),
    h158RectBoundary_higherPole a b h c hac.ne hcb.ne.symm hh.ne' 2 (by norm_num),
    h158RectBoundary_higherPole a b h c hac.ne hcb.ne.symm hh.ne' 1 (by norm_num),
    h158RectBoundary_simplePole a b h c hac hcb hh,
    h158PoleTaylorTail_at_center hf 4]
  norm_num only [Nat.factorial, Nat.reduceMul, Nat.reduceAdd, Nat.cast_ofNat]
  ring

theorem h158RectIntegrable_sum {α : Type*} (S : Finset α) (a b h : ℝ) (f : α → ℂ → ℂ)
    (hf : ∀ c ∈ S, H158RectIntegrable a b h (f c)) :
    H158RectIntegrable a b h (fun z => ∑ c ∈ S, f c z) := by
  constructor
  · convert! IntervalIntegrable.sum S (fun c hc => (hf c hc).bottom) using 1
    funext x
    simp only [Finset.sum_apply]
  · convert! IntervalIntegrable.sum S (fun c hc => (hf c hc).top) using 1
    funext x
    simp only [Finset.sum_apply]
  · convert! IntervalIntegrable.sum S (fun c hc => (hf c hc).right) using 1
    funext y
    simp only [Finset.sum_apply, Finset.sum_mul]
  · convert! IntervalIntegrable.sum S (fun c hc => (hf c hc).left) using 1
    funext y
    simp only [Finset.sum_apply, Finset.sum_mul]

theorem h158RectBoundary_sum {α : Type*} (S : Finset α) (a b h : ℝ) (f : α → ℂ → ℂ)
    (hf : ∀ c ∈ S, H158RectIntegrable a b h (f c)) :
    h158RectBoundary a b h (fun z => ∑ c ∈ S, f c z) =
      ∑ c ∈ S, h158RectBoundary a b h (f c) := by
  unfold h158RectBoundary
  simp only [Finset.sum_mul]
  rw [intervalIntegral.integral_finsetSum (fun c hc => (hf c hc).bottom),
    intervalIntegral.integral_finsetSum (fun c hc => (hf c hc).top),
    intervalIntegral.integral_finsetSum (fun c hc => (hf c hc).right),
    intervalIntegral.integral_finsetSum (fun c hc => (hf c hc).left)]
  simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib]

private theorem rect_boundary_congr (a b h : ℝ) (f g : ℂ → ℂ)
    (hbot : ∀ x ∈ uIcc a b, f ((x : ℂ) + (-h : ℝ) * I) = g ((x : ℂ) + (-h : ℝ) * I))
    (htop : ∀ x ∈ uIcc a b, f ((x : ℂ) + (h : ℂ) * I) = g ((x : ℂ) + (h : ℂ) * I))
    (hr : ∀ y ∈ uIcc (-h) h, f ((b : ℂ) + (y : ℂ) * I) = g ((b : ℂ) + (y : ℂ) * I))
    (hl : ∀ y ∈ uIcc (-h) h, f ((a : ℂ) + (y : ℂ) * I) = g ((a : ℂ) + (y : ℂ) * I)) :
    h158RectBoundary a b h f = h158RectBoundary a b h g := by
  unfold h158RectBoundary
  rw [intervalIntegral.integral_congr hbot, intervalIntegral.integral_congr htop,
    intervalIntegral.integral_congr (fun y hy => congrArg (· * I) (hr y hy)),
    intervalIntegral.integral_congr (fun y hy => congrArg (· * I) (hl y hy))]

theorem h158Rectangle_pole_bounds (n q : ℕ) (c : ℂ) (hc : c ∈ h158RectanglePoleSet n q) :
    c.im = 0 ∧ h158ContourAbscissa n < c.re ∧ c.re < (q : ℝ) + 1 / 2 := by
  obtain ⟨m, hmlo, hmhi, rfl⟩ := (h158RectanglePoleSet_mem n q c).mp hc
  have hlo : -(4 * (n : ℝ)) ≤ (m : ℝ) := by exact_mod_cast hmlo
  have hhi : (m : ℝ) ≤ (q : ℝ) := by exact_mod_cast hmhi
  simp only [intCast_im, intCast_re, h158ContourAbscissa, true_and]
  constructor <;> linarith

/-- The actual finite rectangle residue identity, counterclockwise orientation.
Every Laurent principal part has been removed and evaluated inside Lean. -/
theorem h158Rectangle_residue_identity (n q : ℕ) (i j : Fin (2 * n)) (hq : 1 ≤ q) :
    h158RectBoundary (h158ContourAbscissa n) ((q : ℝ) + 1 / 2) q
      (h158ContourIntegrand n i j) =
      (2 * (Real.pi : ℂ) * I) *
        ∑ c ∈ h158RectanglePoleSet n q, iteratedDeriv 4 (h158EntryComplex n i j) c / 24 := by
  classical
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  have hab : h158ContourAbscissa n ≤ (q : ℝ) + 1 / 2 := by
    dsimp [h158ContourAbscissa]
    linarith [Nat.cast_nonneg (α := ℝ) n]
  obtain ⟨G, hG, he⟩ := h158Rectangle_analytic_remainder n q i j
  have hG' : AnalyticOnNhd ℂ G
      (uIcc (h158ContourAbscissa n) ((q : ℝ) + 1 / 2) ×ℂ uIcc (-(q : ℝ)) q) := by
    simpa only [uIcc_of_le hab, uIcc_of_le (by linarith : -(q : ℝ) ≤ q)] using hG
  have hpi (c : ℂ) (hc : c ∈ h158RectanglePoleSet n q) :
      H158RectIntegrable (h158ContourAbscissa n) ((q : ℝ) + 1 / 2) q
        (h158PolePrincipal (h158EntryComplex n i j) c) := by
    have hb := h158Rectangle_pole_bounds n q c hc
    have hec : (c.re : ℂ) = c := by apply Complex.ext <;> simp [hb.1]
    rw [← hec]
    exact h158RectIntegrable_principal _ _ _ _ hb.2.1.ne hb.2.2.ne.symm hq0.ne' _
  have hor (x y : ℝ) (hy : y ≠ 0) : (x : ℂ) + (y : ℂ) * I ∉ h158RectanglePoleSet n q := by
    intro hc
    exact hy (by simpa using (h158Rectangle_pole_bounds n q _ hc).1)
  have ver (y : ℝ) (x : ℝ) (hx : x = h158ContourAbscissa n ∨ x = (q : ℝ) + 1 / 2) :
      (x : ℂ) + (y : ℂ) * I ∉ h158RectanglePoleSet n q := by
    intro hc
    have hb := (h158Rectangle_pole_bounds n q _ hc).2
    simp only [add_re, ofReal_re, mul_re, ofReal_im, I_re, I_im,
      mul_zero, zero_mul, sub_zero, add_zero] at hb
    rcases hx with rfl | rfl <;> linarith
  calc
    _ = h158RectBoundary (h158ContourAbscissa n) ((q : ℝ) + 1 / 2) q
        (fun z => G z + ∑ c ∈ h158RectanglePoleSet n q,
          h158PolePrincipal (h158EntryComplex n i j) c z) := by
      apply rect_boundary_congr
      · intro x _; exact he _ (hor x (-q) (neg_ne_zero.mpr hq0.ne'))
      · intro x _; exact he _ (hor x q hq0.ne')
      · intro y _; exact he _ (ver y _ (Or.inr rfl))
      · intro y _; exact he _ (ver y _ (Or.inl rfl))
    _ = ∑ c ∈ h158RectanglePoleSet n q,
        h158RectBoundary (h158ContourAbscissa n) ((q : ℝ) + 1 / 2) q
          (h158PolePrincipal (h158EntryComplex n i j) c) := by
      rw [h158RectBoundary_add (h158RectIntegrable_of_analytic _ _ _ _ hG')
        (h158RectIntegrable_sum _ _ _ _ _ hpi),
        h158RectBoundary_eq_zero_of_analytic _ _ _ _ hG', zero_add,
        h158RectBoundary_sum _ _ _ _ _ hpi]
    _ = _ := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro c hc
      have hb := h158Rectangle_pole_bounds n q c hc
      have hec : (c.re : ℂ) = c := by apply Complex.ext <;> simp [hb.1]
      have hf := h158EntryComplex_analyticAt n i j c
        ((h158ContourAbscissa_in_halfplane n).trans hb.2.1)
      simpa only [hec] using h158RectBoundary_principal
        (h158ContourAbscissa n) ((q : ℝ) + 1 / 2) q c.re hb.2.1 hb.2.2 hq0
        (h158EntryComplex n i j) (by simpa only [hec] using hf)

theorem h158RectanglePoleSet_eq_range_image (n q : ℕ) :
    h158RectanglePoleSet n q = (Finset.range (q + 4 * n + 1)).image
      (fun v : ℕ => (v : ℂ) - 4 * (n : ℂ)) := by
  classical
  ext z
  rw [h158RectanglePoleSet_mem, Finset.mem_image]
  constructor
  · rintro ⟨m, hmlo, hmhi, rfl⟩
    have hm0 : 0 ≤ m + 4 * (n : ℤ) := by omega
    refine ⟨(m + 4 * (n : ℤ)).toNat, ?_, ?_⟩
    · rw [Finset.mem_range]
      omega
    · have hv : (((m + 4 * (n : ℤ)).toNat : ℕ) : ℤ) = m + 4 * (n : ℤ) :=
        Int.toNat_of_nonneg hm0
      have hvC : ((m + 4 * (n : ℤ)).toNat : ℂ) = (m : ℂ) + 4 * (n : ℂ) := by
        exact_mod_cast hv
      rw [hvC]
      ring
  · rintro ⟨v, hv, rfl⟩
    have hv' := Finset.mem_range.mp hv
    refine ⟨(v : ℤ) - 4 * (n : ℤ), ?_, ?_, ?_⟩
    · omega
    · omega
    · push_cast
      rfl

theorem h158RectanglePoleSet_sum_eq_range (n q : ℕ) (g : ℂ → ℂ) :
    (∑ c ∈ h158RectanglePoleSet n q, g c) =
      ∑ v ∈ Finset.range (q + 4 * n + 1), g ((v : ℂ) - 4 * (n : ℂ)) := by
  classical
  rw [h158RectanglePoleSet_eq_range_image, Finset.sum_image]
  intro a _ b _ he
  have hh : (a : ℂ) = b := by linear_combination he
  exact_mod_cast hh

/-- The existing clockwise four-edge definition has the opposite orientation. -/
theorem h158ClockwiseRectangleIntegral_eq_neg_boundary (n i j q : ℕ) :
    h158ClockwiseRectangleIntegral n i j q =
      -h158RectBoundary (h158ContourAbscissa n) ((q : ℝ) + 1 / 2) q
        (h158ContourIntegrand n i j) := by
  unfold h158ClockwiseRectangleIntegral h158RectBoundary h158HorizontalClosingIntegral
    h158RightClosingIntegral h158VerticalTruncation h158VerticalIntegrand h158ContourPoint
  simp only [Complex.ofReal_add, Complex.ofReal_div, Complex.ofReal_natCast,
    Complex.ofReal_one, Complex.ofReal_ofNat]
  ring

/-- Actual finite clockwise rectangle identity, with exactly the enclosed
integers `-4*n, ..., q`. There are no analytic or contour hypotheses. -/
theorem h158ClockwiseRectangle_residue_identity (n q : ℕ) (i j : Fin (2 * n))
    (hq : 1 ≤ q) :
    h158ClockwiseRectangleIntegral n i j q =
      -(2 * (Real.pi : ℂ) * I) *
        ∑ v ∈ Finset.range (q + 4 * n + 1),
          iteratedDeriv 4 (h158EntryComplex n i j) ((v : ℂ) - 4 * (n : ℂ)) / 24 := by
  rw [h158ClockwiseRectangleIntegral_eq_neg_boundary, h158Rectangle_residue_identity n q i j hq,
    h158RectanglePoleSet_sum_eq_range, neg_mul]

theorem h158RectangleResidueSum_tendsto (n : ℕ) (i j : Fin (2 * n)) :
    Tendsto (fun q : ℕ => ∑ v ∈ Finset.range (q + 4 * n + 1),
      iteratedDeriv 4 (h158EntryComplex n i j) ((v : ℂ) - 4 * (n : ℂ)) / 24)
      atTop (𝓝 (h158Functional n i j : ℂ)) := by
  have ht := (hasSum_h158Contour_residue_series n i j).tendsto_sum_nat
  apply ht.comp
  exact tendsto_atTop.mpr (fun b => eventually_atTop.2 ⟨b, fun q hq => by omega⟩)

/-- Exact integral representation for the actual functional at fixed `n`. -/
theorem h158VerticalIntegral_eq_functional (n : ℕ) (i j : Fin (2 * n)) :
    h158VerticalIntegral n i j =
      -(2 * (Real.pi : ℂ) * I) * (h158Functional n i j : ℂ) := by
  have hr := (h158RectangleResidueSum_tendsto n i j).const_mul (-(2 * (Real.pi : ℂ) * I))
  have he : (fun q : ℕ => h158ClockwiseRectangleIntegral n i j q) =ᶠ[atTop]
      (fun q : ℕ => -(2 * (Real.pi : ℂ) * I) *
        ∑ v ∈ Finset.range (q + 4 * n + 1),
          iteratedDeriv 4 (h158EntryComplex n i j) ((v : ℂ) - 4 * (n : ℂ)) / 24) := by
    filter_upwards [eventually_ge_atTop 1] with q hq
    exact h158ClockwiseRectangle_residue_identity n q i j hq
  exact tendsto_nhds_unique (h158ClockwiseRectangleIntegral_tendsto n i j) (hr.congr' he.symm)

theorem h158NormalizedVerticalIntegral_eq_functional (n : ℕ) (i j : Fin (2 * n)) :
    h158NormalizedVerticalIntegral n i j = (h158Functional n i j : ℂ) := by
  rw [h158NormalizedVerticalIntegral, h158VerticalIntegral_eq_functional]
  have hp := Complex.two_pi_I_ne_zero
  field_simp

end OddZetaMixed
