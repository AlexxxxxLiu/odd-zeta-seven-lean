import OddZetaMixed.H158MiddleCellsProfileSupport
import OddZetaMixed.H158AffinePrimeProfile

/-!
# The actual middle-prime cells in the common real prime profile

The source certificate controls the actual primitive scalar. Its projection
to a short affine table preserves the exact integral and interval endpoints.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.H158MiddleCells

open Finset Filter

def ProfileCell.toAffinePrimeCell (c : ProfileCell) : H158AffinePrimeCell :=
  ⟨c.left,c.right,c.cost.constant,c.cost.slope⟩

theorem ProfileCell.toAffinePrimeCell_check (c : ProfileCell) (h : c.check) :
    c.toAffinePrimeCell.check := by
  change 0 < c.left ∧ c.left ≤ c.right ∧ c.right ≤ 57 ∧
    0 ≤ c.cost.constant+c.cost.slope*c.left ∧
    0 ≤ c.cost.constant+c.cost.slope*c.right
  have hl := h.2.2.2.1
  have hr := h.2.2.2.2
  simp only [Affine.eval, zero_mul, zero_add] at hl hr
  exact ⟨by linarith [h.1], h.2.1.le, by linarith [h.2.2.1], hl, hr⟩

theorem ProfileCell.toAffinePrimeCell_integral (c : ProfileCell) :
    c.toAffinePrimeCell.integral = c.integral := by
  unfold toAffinePrimeCell H158AffinePrimeCell.integral ProfileCell.integral
  dsimp
  ring

def Certificate.affineCell (cert : Certificate) (i : Fin cert.cells.length) :
    H158AffinePrimeCell := (cert.cells.get i).toProfile.toAffinePrimeCell

theorem Certificate.affineCell_check (cert : Certificate)
    (h : ∀ c ∈ cert.cells, c.toProfile.check) (i : Fin cert.cells.length) :
    (cert.affineCell i).check :=
  (cert.cells.get i).toProfile.toAffinePrimeCell_check (h _ (List.get_mem _ _))

theorem Certificate.affineCell_integral (cert : Certificate) (i : Fin cert.cells.length) :
    (cert.affineCell i).integral = (cert.cells.get i).costIntegral := by
  unfold Certificate.affineCell
  rw [ProfileCell.toAffinePrimeCell_integral]
  rfl

theorem Certificate.affineCell_integral_sum (cert : Certificate) (h : cert.check) :
    (∑ i : Fin cert.cells.length, (cert.affineCell i).integral) = cert.integral := by
  simp_rw [cert.affineCell_integral]
  rw [← Fin.sum_ofFn]
  have he : List.ofFn (fun i : Fin cert.cells.length =>
      (cert.cells.get i).costIntegral) = cert.cells.map Cell.costIntegral := by
    rw [← Function.comp_def, ← List.map_ofFn, List.ofFn_get]
  rw [he]
  exact h.2.2

theorem Certificate.affineProfile_rate (cert : Certificate) (h : cert.check)
    (hv : ∀ c ∈ cert.cells, c.toProfile.check)
    (cut small C : ℝ) (hcut : 0 < cut) (hcut57 : cut ≤ 57) :
    Tendsto (fun n : ℕ => h158ProfilePrimeSum n
      (h158AffineProfile univ cert.affineCell cut small C n)/(n : ℝ)^2)
      atTop (nhds (small*cut+(cert.integral : ℝ))) := by
  have ht := h158AffineProfile_rate univ cert.affineCell cut small C hcut hcut57
    (fun i _ => cert.affineCell_check hv i)
  simpa only [cert.affineCell_integral_sum h] using ht

theorem Certificate.actual_affine_cost (cert : Certificate) (h : cert.check)
    {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n)
    (hlo : 4*n < p) (hhi : p ≤ 26*n) (hsq : 158*n+2 < p^2)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    ∃ i : Fin cert.cells.length,
      ((cert.affineCell i).left : ℝ)*n < (p : ℝ) ∧
      (p : ℝ) ≤ ((cert.affineCell i).right : ℝ)*n ∧
      (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤
        (n : ℝ)*(cert.affineCell i).weight ((p : ℝ)/n)+4635 := by
  obtain ⟨c,hc,hl,hr,hbound⟩ := cert.actual_cost h n hn hlo hhi hsq hdet
  obtain ⟨i,hi⟩ := List.mem_iff_get.mp hc
  refine ⟨i,?_,?_,?_⟩
  · have hnQ : (0 : ℚ) < n := by exact_mod_cast hn
    have hx : c.left*(n : ℚ) < p := (lt_div_iff₀ hnQ).mp hl
    simp only [Certificate.affineCell, hi, Cell.toProfile, ProfileCell.toAffinePrimeCell]
    exact_mod_cast hx
  · have hnQ : (0 : ℚ) < n := by exact_mod_cast hn
    have hx : (p : ℚ) ≤ c.right*n := (div_le_iff₀ hnQ).mp hr
    simp only [Certificate.affineCell, hi, Cell.toProfile, ProfileCell.toAffinePrimeCell]
    exact_mod_cast hx
  · have hx : (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤
        (n : ℝ)*(c.cost.eval ((p : ℚ)/n) : ℝ)+4635 := by exact_mod_cast hbound
    simp only [Certificate.affineCell, hi, Cell.toProfile, ProfileCell.toAffinePrimeCell,
      H158AffinePrimeCell.weight]
    simp only [Affine.eval, Rat.cast_add, Rat.cast_mul, Rat.cast_div,
      Rat.cast_natCast] at hx
    convert hx using 1
    ring

def Certificate.majorant (cert : Certificate) (n p : ℕ) : ℝ :=
  h158AffineProfile univ cert.affineCell 1 0 4635 n p

theorem Certificate.majorant_nonneg (cert : Certificate)
    (hv : ∀ c ∈ cert.cells, c.toProfile.check) (n p : ℕ) (hn : 0 < n) :
    0 ≤ cert.majorant n p := by
  apply h158PiecewisePrimeProfile_nonneg _ _ _ _ _ _ _ _ _ hn
    (by norm_num) (by norm_num)
  intro i _
  exact (cert.affineCell i).weight_nonneg (cert.affineCell_check hv i)

theorem Certificate.majorant_ratio_limit (cert : Certificate) (h : cert.check)
    (hv : ∀ c ∈ cert.cells, c.toProfile.check) :
    Tendsto (fun n : ℕ => h158ProfilePrimeSum n (cert.majorant n)/(n : ℝ)^2)
      atTop (nhds (cert.integral : ℝ)) := by
  change Tendsto (fun n : ℕ => h158ProfilePrimeSum n
    (h158AffineProfile univ cert.affineCell 1 0 4635 n)/(n : ℝ)^2)
    atTop (nhds (cert.integral : ℝ))
  simpa only [zero_mul, zero_add] using
    cert.affineProfile_rate h hv 1 0 4635 (by norm_num) (by norm_num)

theorem Certificate.primitive_cost_le_majorant (cert : Certificate) (h : cert.check)
    (hv : ∀ c ∈ cert.cells, c.toProfile.check)
    {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n)
    (hlo : 4*n < p) (hhi : p ≤ 26*n) (hsq : 158*n+2 < p^2)
    (hdet : (h158SevenMatrix n).det ≠ 0) :
    (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤ cert.majorant n p := by
  obtain ⟨i, hl, hr, hb⟩ := cert.actual_affine_cost h n hn hlo hhi hsq hdet
  exact hb.trans (h158PiecewisePrimeProfile_dominates_band univ
    (fun i => (cert.affineCell i).weight) (fun i => (cert.affineCell i).left)
    (fun i => (cert.affineCell i).right) 1 0 4635 n p hn (by norm_num)
    (fun j _ => (cert.affineCell j).weight_nonneg (cert.affineCell_check hv j))
    i (mem_univ i) hl hr)

#print axioms Certificate.actual_affine_cost
#print axioms Certificate.majorant_ratio_limit
#print axioms Certificate.primitive_cost_le_majorant

end OddZetaMixed.H158MiddleCells
