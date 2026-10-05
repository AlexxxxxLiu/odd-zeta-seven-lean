import OddZetaMixed.H158PhaseTail
import Mathlib.Analysis.Calculus.MeanValue

/-!
# Sound compact phase-cell evaluation

Rational enclosures are proof-carrying. In particular, a floating-point
producer cannot assert a logarithm or arctangent bound. The positive-theta
cell theorem requires positive pair norms; it never bounds totalized log at
a root by silently replacing the singular logarithm with zero.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.CompactPhase

open Finset

structure Enclosure (x : ℝ) where
  lo : ℚ
  hi : ℚ
  lower : (lo : ℝ) ≤ x
  upper : x ≤ (hi : ℝ)

namespace Enclosure

def rat (q : ℚ) : Enclosure (q : ℝ) := ⟨q, q, le_rfl, le_rfl⟩

def add {x y : ℝ} (a : Enclosure x) (b : Enclosure y) : Enclosure (x+y) where
  lo := a.lo+b.lo
  hi := a.hi+b.hi
  lower := by push_cast; exact add_le_add a.lower b.lower
  upper := by push_cast; exact add_le_add a.upper b.upper

def sub {x y : ℝ} (a : Enclosure x) (b : Enclosure y) : Enclosure (x-y) where
  lo := a.lo-b.hi
  hi := a.hi-b.lo
  lower := by push_cast; exact sub_le_sub a.lower b.upper
  upper := by push_cast; exact sub_le_sub a.upper b.lower

def scale {x : ℝ} (q : ℚ) (a : Enclosure x) : Enclosure ((q : ℝ)*x) where
  lo := if 0 ≤ q then q*a.lo else q*a.hi
  hi := if 0 ≤ q then q*a.hi else q*a.lo
  lower := by
    split_ifs with h
    · push_cast; exact mul_le_mul_of_nonneg_left a.lower (by exact_mod_cast h)
    · push_cast; exact mul_le_mul_of_nonpos_left a.upper (by exact_mod_cast le_of_not_ge h)
  upper := by
    split_ifs with h
    · push_cast; exact mul_le_mul_of_nonneg_left a.upper (by exact_mod_cast h)
    · push_cast; exact mul_le_mul_of_nonpos_left a.lower (by exact_mod_cast le_of_not_ge h)

def sum {ι : Type*} [Fintype ι] {x : ι → ℝ} (a : ∀ i, Enclosure (x i)) :
    Enclosure (∑ i, x i) where
  lo := ∑ i, (a i).lo
  hi := ∑ i, (a i).hi
  lower := by push_cast; exact Finset.sum_le_sum (fun i _ => (a i).lower)
  upper := by push_cast; exact Finset.sum_le_sum (fun i _ => (a i).upper)

def congr {x y : ℝ} (a : Enclosure x) (h : x = y) : Enclosure y :=
  ⟨a.lo, a.hi, h ▸ a.lower, h ▸ a.upper⟩

def ofRatEq {f : ℝ → ℝ} {q r : ℚ} (a : Enclosure (f (q : ℝ))) (h : q = r) :
    Enclosure (f (r : ℝ)) := a.congr (congrArg (fun z : ℚ => f (z : ℝ)) h)

theorem abs_le {x : ℝ} (a : Enclosure x) : |x| ≤ (max |a.lo| |a.hi| : ℚ) := by
  rw [_root_.abs_le]
  push_cast
  exact ⟨(neg_le_neg (le_max_left |(a.lo : ℝ)| |(a.hi : ℝ)|)).trans
      ((neg_abs_le (a.lo : ℝ)).trans a.lower),
    a.upper.trans (le_max_of_le_right (le_abs_self _))⟩

end Enclosure

/-- The exact finite inventory of the 44 signed X-terms. -/
def phaseArg (i : Fin 44) : ℚ :=
  if i.val = 0 then 154 else if i.val = 1 then 4
  else if i.val < 23 then (i.val : ℚ)+42 else 129-(i.val : ℚ)

def phaseWeight (i : Fin 44) : ℚ :=
  if i.val < 2 then 5 else if i.val < 23 then 1 else -1

def constantArg (i : Fin 21) : ℚ :=
  if i.val < 16 then 52-2*(i.val : ℚ) else (i.val : ℚ)+32

def constantWeight (i : Fin 21) : ℚ :=
  if i.val < 16 then constantArg i else -2*constantArg i

theorem phaseArg_pos (i : Fin 44) : 0 < phaseArg i := by
  fin_cases i <;> norm_num [phaseArg]

theorem constant_inventory :
    h158PhaseConstant = ∑ i : Fin 21, (constantWeight i : ℝ)*Real.log (constantArg i : ℝ) := by
  norm_num [h158PhaseConstant, constantWeight, constantArg, Fin.sum_univ_succ,
    Finset.sum_Icc_succ_top]
  ring

theorem phase_inventory (s : ℝ) :
    h158Phase s = h158PhaseConstant +
      (∑ i : Fin 44, (phaseWeight i : ℝ)*h158PhaseX (phaseArg i : ℝ) s) + 3*Real.pi*s := by
  norm_num [h158Phase, phaseWeight, phaseArg, Fin.sum_univ_succ, Finset.sum_Icc_succ_top]
  ring

theorem derivative_inventory (s : ℝ) :
    h158PhaseDerivative s = 3*Real.pi +
      ∑ i : Fin 44, -(phaseWeight i : ℝ)*Real.arctan (s/(phaseArg i : ℝ)) := by
  norm_num [h158PhaseDerivative, phaseWeight, phaseArg, Fin.sum_univ_succ,
    Finset.sum_Icc_succ_top]
  ring

def constantEnclosure (logs : ∀ i, Enclosure (Real.log (constantArg i : ℝ))) :
    Enclosure h158PhaseConstant :=
  (Enclosure.sum (fun i => (logs i).scale (constantWeight i))).congr constant_inventory.symm

def xEnclosure (a c : ℚ) (lg : Enclosure (Real.log ((a^2+c^2 : ℚ) : ℝ)))
    (atn : Enclosure (Real.arctan ((c/a : ℚ) : ℝ))) : Enclosure (h158PhaseX (a : ℝ) (c : ℝ)) :=
  ((lg.scale (a/2)).sub (atn.scale c)).congr (by simp [h158PhaseX])

def phaseEnclosure (c : ℚ) (const : Enclosure h158PhaseConstant) (pi : Enclosure Real.pi)
    (logs : ∀ i, Enclosure (Real.log ((phaseArg i ^ 2+c^2 : ℚ) : ℝ)))
    (atans : ∀ i, Enclosure (Real.arctan ((c/phaseArg i : ℚ) : ℝ))) :
    Enclosure (h158Phase (c : ℝ)) :=
  ((const.add (Enclosure.sum (fun i =>
    (xEnclosure (phaseArg i) c (logs i) (atans i)).scale (phaseWeight i)))).add
      (pi.scale (3*c))).congr (by rw [phase_inventory]; push_cast; ring)

/-- The rational endpoints of this enclosure do not depend on s. -/
def derivativeEnclosure (l r : ℚ) (s : ℝ) (hs : (l : ℝ) ≤ s ∧ s ≤ (r : ℝ))
    (pi : Enclosure Real.pi)
    (left : ∀ i, Enclosure (Real.arctan ((l/phaseArg i : ℚ) : ℝ)))
    (right : ∀ i, Enclosure (Real.arctan ((r/phaseArg i : ℚ) : ℝ))) :
    Enclosure (h158PhaseDerivative s) :=
  ((pi.scale 3).add (Enclosure.sum (fun i =>
    (Enclosure.mk (left i).lo (right i).hi
      ((left i).lower.trans (by
        push_cast
        exact Real.arctan_mono (div_le_div_of_nonneg_right hs.1
          (by exact_mod_cast (phaseArg_pos i).le))))
      (by
        apply le_trans ?_ (right i).upper
        push_cast
        exact Real.arctan_mono (div_le_div_of_nonneg_right hs.2
          (by exact_mod_cast (phaseArg_pos i).le)))).scale
      (-phaseWeight i)))).congr (by rw [derivative_inventory]; push_cast; rfl)

/-- A midpoint estimate from a certified derivative bound on the whole cell. -/
theorem phase_cell_le {l r c B U : ℝ} (hc : l ≤ c ∧ c ≤ r) (hB : 0 ≤ B)
    (hcenter : h158Phase c ≤ U)
    (hslope : ∀ s ∈ Set.Icc l r, |h158PhaseDerivative s| ≤ B)
    {s : ℝ} (hs : s ∈ Set.Icc l r) :
    h158Phase s ≤ U+B*max (c-l) (r-c) := by
  have hdist : |s-c| ≤ max (c-l) (r-c) := by
    rw [abs_le]
    constructor
    · linarith [hs.1, le_max_left (c-l) (r-c)]
    · linarith [hs.2, le_max_right (c-l) (r-c)]
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (fun x (_ : x ∈ Set.Icc l r) => (h158Phase_hasDerivAt x).differentiableAt)
    (fun x hx => by
      rw [(h158Phase_hasDerivAt x).deriv, Real.norm_eq_abs]
      exact hslope x hx) (convex_Icc l r) hc hs
  rw [Real.norm_eq_abs, Real.norm_eq_abs] at h
  have hm := mul_le_mul_of_nonneg_left hdist hB
  linarith [le_abs_self (h158Phase s-h158Phase c)]

def pairBound (l r a : ℚ) : ℚ :=
  max ((l^2-a^2)^2) ((r^2-a^2)^2) * ((r+a)^2+22500) *
    (max ((l-a)^2) ((r-a)^2)+22500)

private theorem sq_le_max_sq {l r x : ℝ} (hx : l ≤ x ∧ x ≤ r) :
    x^2 ≤ max (l^2) (r^2) := by
  by_cases h : 0 ≤ x
  · have hh : x^2 ≤ r^2 := by nlinarith [mul_nonneg h (sub_nonneg.mpr hx.2)]
    exact hh.trans (le_max_right _ _)
  · have hh : x^2 ≤ l^2 := by
      nlinarith [mul_nonneg (show 0 ≤ -x by linarith) (sub_nonneg.mpr hx.1)]
    exact hh.trans (le_max_left _ _)

theorem pair_le_pairBound (l r a : ℚ) (hl : 0 ≤ l) (ha : 0 ≤ a) {s : ℝ}
    (hs : (l : ℝ) ≤ s ∧ s ≤ (r : ℝ)) :
    h158AdaptivePairModulus 75 (a : ℝ) s ≤ (pairBound l r a : ℝ) := by
  have hlR : (0 : ℝ) ≤ l := by exact_mod_cast hl
  have haR : (0 : ℝ) ≤ a := by exact_mod_cast ha
  have hs0 : 0 ≤ s := le_trans hlR hs.1
  have hsqL : (l : ℝ)^2 ≤ s^2 := by nlinarith [mul_nonneg hlR (sub_nonneg.mpr hs.1)]
  have hsqR : s^2 ≤ (r : ℝ)^2 := by nlinarith [mul_nonneg hs0 (sub_nonneg.mpr hs.2)]
  have h1 := sq_le_max_sq (show (l : ℝ)^2-(a : ℝ)^2 ≤ s^2-(a : ℝ)^2 ∧
      s^2-(a : ℝ)^2 ≤ (r : ℝ)^2-(a : ℝ)^2 by constructor <;> linarith)
  have h2 : (s+(a : ℝ))^2+22500 ≤ ((r : ℝ)+(a : ℝ))^2+22500 := by
    nlinarith [mul_nonneg (show 0 ≤ s+(a : ℝ) by linarith) (sub_nonneg.mpr hs.2)]
  have h3 := sq_le_max_sq (show (l : ℝ)-(a : ℝ) ≤ s-(a : ℝ) ∧
      s-(a : ℝ) ≤ (r : ℝ)-(a : ℝ) by constructor <;> linarith)
  unfold h158AdaptivePairModulus pairBound
  push_cast
  norm_num
  exact mul_le_mul (mul_le_mul h1 h2 (by positivity) (by positivity))
    (by linarith [h3]) (by positivity) (by positivity)

/-- The rational part of the midpoint checker; all elementary enclosures carry proofs. -/
theorem phase_enclosed_cell (l r c B U : ℚ) (hc : l ≤ c ∧ c ≤ r) (hB : 0 ≤ B)
    (center : Enclosure (h158Phase (c : ℝ))) (pi : Enclosure Real.pi)
    (left : ∀ i, Enclosure (Real.arctan ((l/phaseArg i : ℚ) : ℝ)))
    (right : ∀ i, Enclosure (Real.arctan ((r/phaseArg i : ℚ) : ℝ)))
    (hlo : -B ≤ (derivativeEnclosure l r (c : ℝ) (by exact_mod_cast hc) pi left right).lo)
    (hhi : (derivativeEnclosure l r (c : ℝ) (by exact_mod_cast hc) pi left right).hi ≤ B)
    (hU : center.hi+B*max (c-l) (r-c) ≤ U)
    {s : ℝ} (hs : (l : ℝ) ≤ s ∧ s ≤ (r : ℝ)) : h158Phase s ≤ (U : ℝ) := by
  have hslope (t : ℝ) (ht : t ∈ Set.Icc (l : ℝ) (r : ℝ)) :
      |h158PhaseDerivative t| ≤ (B : ℝ) := by
    let e := derivativeEnclosure l r t ht pi left right
    have hl : -(B : ℝ) ≤ (e.lo : ℝ) := by exact_mod_cast hlo
    have hh : (e.hi : ℝ) ≤ (B : ℝ) := by exact_mod_cast hhi
    exact abs_le.mpr ⟨hl.trans e.lower, e.upper.trans hh⟩
  have h := phase_cell_le (by exact_mod_cast hc) (by exact_mod_cast hB)
    center.upper hslope hs
  have hUR : (center.hi : ℝ)+(B : ℝ)*max ((c : ℝ)-(l : ℝ)) ((r : ℝ)-(c : ℝ)) ≤ U := by
    exact_mod_cast hU
  exact h.trans hUR

/-- The crucial sign guard: no claim about totalized log at a pair root. -/
theorem potential_cell_le (a : Fin 4 → ℝ) {theta s U : ℝ} (htheta : 0 ≤ theta)
    (hphase : h158Phase s ≤ U) (pairUpper : Fin 4 → ℝ) (pairLogUpper : Fin 4 → ℝ)
    (hpositive : ∀ j, 0 < h158AdaptivePairModulus 75 (a j) s)
    (hpairs : ∀ j, h158AdaptivePairModulus 75 (a j) s ≤ pairUpper j)
    (hlogs : ∀ j, Real.log (pairUpper j) ≤ pairLogUpper j) :
    h158PhasePotential a theta s ≤ U+theta/8*∑ j, pairLogUpper j := by
  have hsum : (∑ j, Real.log (h158AdaptivePairModulus 75 (a j) s)) ≤
      ∑ j, pairLogUpper j := Finset.sum_le_sum (fun j _ =>
        (Real.log_le_log (hpositive j) (hpairs j)).trans (hlogs j))
  exact add_le_add hphase (mul_le_mul_of_nonneg_left hsum (by positivity))

theorem potential_zero_cell_le (a : Fin 4 → ℝ) {s U : ℝ} (hphase : h158Phase s ≤ U) :
    h158PhasePotential a 0 s ≤ U := by simpa [h158PhasePotential] using hphase

/-- Join adjacent closed cells without an untrusted coverage assertion. -/
theorem interval_join {l m r s : ℝ} {P : Prop}
    (left : l ≤ s ∧ s ≤ m → P) (right : m ≤ s ∧ s ≤ r → P)
    (hs : l ≤ s ∧ s ≤ r) : P := by
  by_cases hm : s ≤ m
  · exact left ⟨hs.1, hm⟩
  · exact right ⟨(le_of_not_ge hm), hs.2⟩

end OddZetaMixed.CompactPhase

namespace OddZetaMixed

/-- The original saved endpoint ceilings, with no added slack. -/
def h158CompactEndpointCeiling : Fin 8 → Fin 2 → ℚ :=
  ![![-260611/500, -518023/1000], ![-64751/125, -514683/1000],
    ![-257333/500, -511277/1000], ![-25563/50, -126957/250],
    ![-507811/1000, -252173/500], ![-50433/100, -500839/1000],
    ![-62603/125, -497309/1000], ![-99459/200, -246881/500]]

/-- The parent chooses b with b/4 <= theta <= (b+1)/4. -/
def h158CompactCeiling (b : Fin 8) (theta : ℝ) : ℝ :=
  (1-(4*theta-(b.val : ℝ)))*(h158CompactEndpointCeiling b 0 : ℝ) +
    (4*theta-(b.val : ℝ))*(h158CompactEndpointCeiling b 1 : ℝ)

theorem h158PhaseRoots_pair_pos (b : Fin 8) {s : ℝ} (hs : 0 ≤ s)
    (hne : ∀ j, s ≠ (h158PhaseRoots b j : ℝ)) (j : Fin 4) :
    0 < h158AdaptivePairModulus 75 (h158PhaseRoots b j : ℝ) s := by
  have ha := (h158PhaseRoots_bounds b j).1
  have hd : s^2-(h158PhaseRoots b j : ℝ)^2 ≠ 0 := by
    have he : s^2-(h158PhaseRoots b j : ℝ)^2 =
        (s-(h158PhaseRoots b j : ℝ))*(s+(h158PhaseRoots b j : ℝ)) := by ring
    rw [he]
    exact mul_ne_zero (sub_ne_zero.mpr (hne j)) (ne_of_gt (by linarith))
  unfold h158AdaptivePairModulus
  positivity

/-- Affine interpolation is done within one fixed root set. This bridge does
not assert the endpoint certificates; those are proved in the generated module. -/
theorem h158CompactPhase_of_endpoints (b : Fin 8) {theta s : ℝ}
    (hl : (b.val : ℝ)/4 ≤ theta) (hr : theta ≤ ((b.val : ℝ)+1)/4)
    (hleft : h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) ((b.val : ℝ)/4) s ≤
      (h158CompactEndpointCeiling b 0 : ℝ))
    (hright : h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) (((b.val : ℝ)+1)/4) s ≤
      (h158CompactEndpointCeiling b 1 : ℝ)) :
    h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) theta s ≤ h158CompactCeiling b theta := by
  have h0 : 0 ≤ 4*theta-(b.val : ℝ) := by linarith
  have h1 : 0 ≤ 1-(4*theta-(b.val : ℝ)) := by linarith
  have h := add_le_add (mul_le_mul_of_nonneg_left hleft h1)
    (mul_le_mul_of_nonneg_left hright h0)
  calc
    _ = (1-(4*theta-(b.val : ℝ))) *
          h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) ((b.val : ℝ)/4) s +
        (4*theta-(b.val : ℝ)) *
          h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) (((b.val : ℝ)+1)/4) s := by
      unfold h158PhasePotential
      ring
    _ ≤ _ := h

end OddZetaMixed
