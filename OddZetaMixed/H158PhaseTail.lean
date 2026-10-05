import OddZetaMixed.H158AdaptiveNorm
import Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.Calculus.Deriv.MeanValue

/-!
# The unbounded adaptive phase tail

The phase and the eight rational root sets are those of
`odd_zeta_degree_adaptive_contour_20261005.py` and its saved certificate.
The estimate below is proved on the larger domain consisting of any four
roots in `[0,20]`, any `theta` in `[0,2]`, and every real `s >= 96`.
No compact phase ceiling, numerical certificate, or Gamma estimate is assumed.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Finset

/-- The eight root sets, in the order of the bins `[b/4,(b+1)/4]`. -/
def h158PhaseRoots : Fin 8 → Fin 4 → ℚ :=
  ![![14071/1000, 3617/250, 14837/1000, 15239/1000],
    ![1369/100, 7187/500, 7507/500, 7857/500],
    ![6721/500, 7161/500, 3787/250, 3211/200],
    ![1656/125, 14287/1000, 3053/200, 16341/1000],
    ![13087/1000, 7131/500, 3843/250, 3319/200],
    ![12947/1000, 3561/250, 1934/125, 16827/1000],
    ![1603/125, 1779/125, 7783/500, 8521/500],
    ![12713/1000, 14223/1000, 15657/1000, 8623/500]]

theorem h158PhaseRoots_bounds (b : Fin 8) (j : Fin 4) :
    0 < (h158PhaseRoots b j : ℝ) ∧ (h158PhaseRoots b j : ℝ) < 20 := by
  fin_cases b <;> fin_cases j <;> norm_num [h158PhaseRoots]

def h158PhaseX (a s : ℝ) : ℝ :=
  a/2 * Real.log (a^2+s^2) - s*Real.arctan (s/a)

def h158PhaseConstant : ℝ :=
  (∑ b ∈ Icc (53 : ℕ) 68, (158-2*(b : ℝ))*Real.log (158-2*(b : ℝ))) -
    2*∑ a ∈ Icc (48 : ℕ) 52, (a : ℝ)*Real.log (a : ℝ)

/-- The actual `phi` of Section 3 of `SCOPE_ANALYTIC_ROUND155.txt`. -/
def h158Phase (s : ℝ) : ℝ :=
  h158PhaseConstant + 5*h158PhaseX 154 s + 5*h158PhaseX 4 s +
    (∑ e ∈ Icc (48 : ℕ) 68,
      (h158PhaseX ((e : ℝ)-4) s - h158PhaseX (154-(e : ℝ)) s)) +
    3*Real.pi*s

def h158PhaseDerivative (s : ℝ) : ℝ :=
  3*Real.pi - 5*Real.arctan (s/154) - 5*Real.arctan (s/4) +
    ∑ e ∈ Icc (48 : ℕ) 68,
      (Real.arctan (s/(154-(e : ℝ))) - Real.arctan (s/((e : ℝ)-4)))

/-- The potential uses the existing exact squared-modulus polynomial at delta 75. -/
def h158PhasePotential (a : Fin 4 → ℝ) (theta s : ℝ) : ℝ :=
  h158Phase s + theta/8 * ∑ j, Real.log (h158AdaptivePairModulus 75 (a j) s)

def h158PhasePairSlope (a s : ℝ) : ℝ :=
  2*s/(s^2-a^2) + (s+a)/((s+a)^2+22500) + (s-a)/((s-a)^2+22500)

def h158PhasePotentialDerivative (a : Fin 4 → ℝ) (theta s : ℝ) : ℝ :=
  h158PhaseDerivative s + theta/4 * ∑ j, h158PhasePairSlope (a j) s

theorem h158PhaseX_hasDerivAt {a : ℝ} (ha : 0 < a) (s : ℝ) :
    HasDerivAt (h158PhaseX a) (-Real.arctan (s/a)) s := by
  have hz : a^2+s^2 ≠ 0 := ne_of_gt (by positivity)
  have ht : 1+(s/a)^2 ≠ 0 := ne_of_gt (by positivity)
  have hlog := (((hasDerivAt_const s (a^2)).add
    ((hasDerivAt_id s).pow 2)).log hz).const_mul (a/2)
  have hatan := ((hasDerivAt_id s).div_const a).arctan
  unfold h158PhaseX
  convert hlog.sub ((hasDerivAt_id s).mul hatan) using 1 <;> try rfl
  dsimp
  field_simp
  ring

theorem h158Phase_hasDerivAt (s : ℝ) :
    HasDerivAt h158Phase (h158PhaseDerivative s) s := by
  have hsum : HasDerivAt
      (fun t => ∑ e ∈ Icc (48 : ℕ) 68,
        (h158PhaseX ((e : ℝ)-4) t - h158PhaseX (154-(e : ℝ)) t))
      (∑ e ∈ Icc (48 : ℕ) 68,
        (-Real.arctan (s/((e : ℝ)-4)) - -Real.arctan (s/(154-(e : ℝ))))) s := by
    apply HasDerivAt.fun_sum
    intro e he
    have helo : (48 : ℝ) ≤ (e : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp he).1
    have hehi : (e : ℝ) ≤ 68 := by exact_mod_cast (Finset.mem_Icc.mp he).2
    exact (h158PhaseX_hasDerivAt (by linarith) s).sub
      (h158PhaseX_hasDerivAt (by linarith) s)
  have h := (((((hasDerivAt_const s h158PhaseConstant).add
    ((h158PhaseX_hasDerivAt (by norm_num : (0 : ℝ) < 154) s).const_mul 5)).add
    ((h158PhaseX_hasDerivAt (by norm_num : (0 : ℝ) < 4) s).const_mul 5)).add hsum).add
    ((hasDerivAt_id s).const_mul (3*Real.pi)))
  convert h using 1 <;> try rfl
  simp [h158PhaseDerivative, sub_eq_add_neg, add_comm, add_left_comm, add_assoc]

private theorem arctan_le_self {x : ℝ} (hx : 0 ≤ x) : Real.arctan x ≤ x := by
  have h := image_sub_le_mul_sub_of_deriv_le Real.differentiable_arctan
    (C := 1) (fun y => by
      rw [Real.deriv_arctan]
      exact (div_le_one (by positivity : 0 < 1+y^2)).2 (by nlinarith [sq_nonneg y])) hx
  simpa using h

/-- A rational lower estimate, obtained by addition of arctangents, not numerics. -/
theorem h158Phase_arctan_96_div_154 :
    Real.pi/4 - 29/125 ≤ Real.arctan (96/154 : ℝ) := by
  have hadd := Real.arctan_add (x := (48/77 : ℝ)) (y := (29/125 : ℝ))
    (by norm_num)
  norm_num [Real.arctan_one] at hadd
  have hsmall := arctan_le_self (x := (29/125 : ℝ)) (by norm_num)
  norm_num at ⊢
  linarith

theorem h158Phase_arctan_24 : Real.pi/2 - 1/24 ≤ Real.arctan (24 : ℝ) := by
  have hinv := Real.arctan_inv_of_pos (x := (24 : ℝ)) (by norm_num)
  have hsmall := arctan_le_self (x := (24 : ℝ)⁻¹) (by positivity)
  norm_num at hinv hsmall
  linarith

/-- All 21 omitted arctangent differences are nonpositive on the positive ray. -/
theorem h158PhaseDerivative_le_base {s : ℝ} (hs : 0 ≤ s) :
    h158PhaseDerivative s ≤
      3*Real.pi - 5*Real.arctan (s/154) - 5*Real.arctan (s/4) := by
  have hsum : (∑ e ∈ Icc (48 : ℕ) 68,
      (Real.arctan (s/(154-(e : ℝ))) - Real.arctan (s/((e : ℝ)-4)))) ≤ 0 := by
    apply Finset.sum_nonpos
    intro e he
    have helo : (48 : ℝ) ≤ (e : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp he).1
    have hehi : (e : ℝ) ≤ 68 := by exact_mod_cast (Finset.mem_Icc.mp he).2
    apply sub_nonpos.mpr
    apply Real.arctan_mono
    exact div_le_div_of_nonneg_left hs (by linarith) (by linarith)
  exact add_le_of_nonpos_right hsum

/-- A deliberately rounded exact bound with enough room for every root correction. -/
theorem h158PhaseDerivative_le_neg_nine_tenths {s : ℝ} (hs : 96 ≤ s) :
    h158PhaseDerivative s ≤ -(9/10 : ℝ) := by
  have hbase := h158PhaseDerivative_le_base (s := s) (by linarith)
  have h154 := Real.arctan_mono (show (96/154 : ℝ) ≤ s/154 by linarith)
  have h4 := Real.arctan_mono (show (24 : ℝ) ≤ s/4 by linarith)
  have hpi := Real.pi_gt_d2
  linarith [h158Phase_arctan_96_div_154, h158Phase_arctan_24]

theorem h158PhasePair_tail_pos {a s : ℝ} (ha0 : 0 ≤ a) (ha20 : a ≤ 20)
    (hs : 96 ≤ s) : 0 < s-a ∧ 0 < s+a ∧ 0 < s^2-a^2 := by
  have hm : 0 < s-a := by linarith
  have hp : 0 < s+a := by linarith
  exact ⟨hm, hp, by nlinarith [mul_pos hm hp]⟩

/-- Each actual logarithmic pair correction is bounded on the whole infinite ray. -/
theorem h158PhasePairSlope_le {a s : ℝ} (ha0 : 0 ≤ a) (ha20 : a ≤ 20)
    (hs : 96 ≤ s) : h158PhasePairSlope a s ≤ (1/20 : ℝ) := by
  obtain ⟨hm, hp, hd⟩ := h158PhasePair_tail_pos ha0 ha20 hs
  have hfrac (x : ℝ) (hx : 0 < x) : x/(x^2+22500) ≤ 1/x := by
    apply (div_le_div_iff₀ (by positivity) hx).2
    nlinarith
  have heq : 2*s/(s^2-a^2) + 1/(s+a) + 1/(s-a) = 4*s/(s^2-a^2) := by
    field_simp
    ring
  have ha2 : a^2 ≤ 400 := by nlinarith [mul_nonneg ha0 (sub_nonneg.mpr ha20)]
  have hquad : 80*s ≤ s^2-a^2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hs) (show 0 ≤ s+16 by linarith)]
  calc
    h158PhasePairSlope a s ≤ 2*s/(s^2-a^2) + 1/(s+a) + 1/(s-a) := by
      unfold h158PhasePairSlope
      linarith [hfrac (s+a) hp, hfrac (s-a) hm]
    _ = 4*s/(s^2-a^2) := heq
    _ ≤ 1/20 := (div_le_iff₀ hd).2 (by linarith)

theorem h158PhasePotentialDerivative_tail_le (a : Fin 4 → ℝ) {theta s : ℝ}
    (ha : ∀ j, 0 ≤ a j ∧ a j ≤ 20) (htheta0 : 0 ≤ theta) (htheta2 : theta ≤ 2)
    (hs : 96 ≤ s) : h158PhasePotentialDerivative a theta s ≤ -(4/5 : ℝ) := by
  have hsum : (∑ j, h158PhasePairSlope (a j) s) ≤ (1/5 : ℝ) := by
    calc
      _ ≤ ∑ _j : Fin 4, (1/20 : ℝ) := Finset.sum_le_sum
        (fun j _ => h158PhasePairSlope_le (ha j).1 (ha j).2 hs)
      _ = 1/5 := by norm_num
  have hcorr := mul_le_mul_of_nonneg_left hsum (show 0 ≤ theta/4 by positivity)
  have hbase := h158PhaseDerivative_le_neg_nine_tenths hs
  unfold h158PhasePotentialDerivative
  nlinarith

/-- Every logarithm argument is strictly positive on the tail, including theta zero. -/
theorem h158PhasePairModulus_tail_pos {a s : ℝ} (ha0 : 0 ≤ a) (ha20 : a ≤ 20)
    (hs : 96 ≤ s) : 0 < h158AdaptivePairModulus 75 a s := by
  have hd := (h158PhasePair_tail_pos ha0 ha20 hs).2.2
  unfold h158AdaptivePairModulus
  positivity

theorem h158PhasePairLog_hasDerivAt {a s : ℝ} (ha0 : 0 ≤ a) (ha20 : a ≤ 20)
    (hs : 96 ≤ s) :
    HasDerivAt (fun t => Real.log (h158AdaptivePairModulus 75 a t))
      (2*h158PhasePairSlope a s) s := by
  have hd := (h158PhasePair_tail_pos ha0 ha20 hs).2.2
  have hz := ne_of_gt (h158PhasePairModulus_tail_pos ha0 ha20 hs)
  have hp : (s+a)^2+22500 ≠ 0 := ne_of_gt (by positivity)
  have hm : (s-a)^2+22500 ≠ 0 := ne_of_gt (by positivity)
  have hD := (((hasDerivAt_id s).pow 2).sub_const (a^2)).pow 2
  have hP := (((hasDerivAt_id s).add_const a).pow 2).add_const (4*(75 : ℝ)^2)
  have hM := (((hasDerivAt_id s).sub_const a).pow 2).add_const (4*(75 : ℝ)^2)
  have h := ((hD.mul hP).mul hM).log hz
  convert h using 1 <;> try rfl
  unfold h158PhasePairSlope
  dsimp
  norm_num
  field_simp

theorem h158PhasePotential_hasDerivAt (a : Fin 4 → ℝ) {theta s : ℝ}
    (ha : ∀ j, 0 ≤ a j ∧ a j ≤ 20) (hs : 96 ≤ s) :
    HasDerivAt (h158PhasePotential a theta) (h158PhasePotentialDerivative a theta s) s := by
  have hsum := HasDerivAt.fun_sum (u := (Finset.univ : Finset (Fin 4)))
    (fun j _ => h158PhasePairLog_hasDerivAt (ha j).1 (ha j).2 hs)
  convert (h158Phase_hasDerivAt s).add (hsum.const_mul (theta/8)) using 1 <;> try rfl
  simp only [h158PhasePotentialDerivative, ← Finset.mul_sum]
  ring

/-- The bound is on the derivative of the actual potential, not an assumed slope. -/
theorem h158PhasePotential_deriv_tail_le (a : Fin 4 → ℝ) {theta s : ℝ}
    (ha : ∀ j, 0 ≤ a j ∧ a j ≤ 20) (htheta0 : 0 ≤ theta) (htheta2 : theta ≤ 2)
    (hs : 96 ≤ s) : deriv (h158PhasePotential a theta) s ≤ -(4/5 : ℝ) := by
  rw [(h158PhasePotential_hasDerivAt a ha hs).deriv]
  exact h158PhasePotentialDerivative_tail_le a ha htheta0 htheta2 hs

/-- All eight saved root sets work on all of `[0,2]`, hence on their original bins. -/
theorem h158PhaseRoots_deriv_tail_le (b : Fin 8) {theta s : ℝ}
    (htheta0 : 0 ≤ theta) (htheta2 : theta ≤ 2) (hs : 96 ≤ s) :
    deriv (h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) theta) s ≤ -(4/5 : ℝ) := by
  exact h158PhasePotential_deriv_tail_le _
    (fun j => ⟨(h158PhaseRoots_bounds b j).1.le, (h158PhaseRoots_bounds b j).2.le⟩)
    htheta0 htheta2 hs

end OddZetaMixed
