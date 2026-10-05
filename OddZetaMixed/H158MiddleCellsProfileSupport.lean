import OddZetaMixed.H158MiddleCells

/-!
The small affine projection is suitable for the parent's prime-sum assembly.
Its checks prove coverage, nonnegativity, and an exact rational integral.
It is deliberately separate from `Cell.check`: this projection alone does
not certify a bound on the actual arithmetic cost.
-/

namespace OddZetaMixed.H158MiddleCells
set_option autoImplicit false

structure ProfileCell where
  left : ℚ
  right : ℚ
  cost : Affine
  deriving DecidableEq, Repr

def Cell.toProfile (c : Cell) : ProfileCell := ⟨c.left, c.right, c.cost⟩

def ProfileCell.check (c : ProfileCell) : Prop :=
  4 ≤ c.left ∧ c.left < c.right ∧ c.right ≤ 26 ∧
    (Affine.mk 0 0).leOn c.cost c.left c.right

instance instDecidableProfileCellCheck (c : ProfileCell) : Decidable c.check :=
  inferInstanceAs (Decidable (_ ∧ _))

def profileCoverage (left right : ℚ) : List ProfileCell → Prop
  | [] => left = right
  | c::cs => c.left = left ∧ c.left < c.right ∧ profileCoverage c.right right cs

instance instDecidableProfileCoverage (left right : ℚ) (cs : List ProfileCell) :
    Decidable (profileCoverage left right cs) := by
  induction cs generalizing left with
  | nil => exact inferInstanceAs (Decidable (left = right))
  | cons c cs ih =>
    letI := ih c.right
    exact inferInstanceAs (Decidable (_ ∧ _ ∧ profileCoverage c.right right cs))

def ProfileCell.integral (c : ProfileCell) : ℚ :=
  c.cost.constant*(c.right-c.left)+c.cost.slope*(c.right*c.right-c.left*c.left)/2

noncomputable def ProfileCell.term (c : ProfileCell) (x : ℝ) : ℝ :=
  if (c.left : ℝ) < x ∧ x ≤ (c.right : ℝ) then
    (c.cost.constant : ℝ)+(c.cost.slope : ℝ)*x else 0

noncomputable def middleProfile (cs : List ProfileCell) (x : ℝ) : ℝ :=
  (cs.map (fun c => c.term x)).sum

theorem ProfileCell.term_nonneg (c : ProfileCell) (h : c.check) (x : ℝ) :
    0 ≤ c.term x := by
  unfold ProfileCell.term
  split_ifs with hx
  · have hlq := h.2.2.2.1
    have hrq := h.2.2.2.2
    simp only [Affine.eval, zero_mul, zero_add] at hlq hrq
    have hl : (0 : ℝ) ≤ (c.cost.constant : ℝ)+(c.cost.slope : ℝ)*(c.left : ℝ) := by
      exact_mod_cast hlq
    have hr : (0 : ℝ) ≤ (c.cost.constant : ℝ)+(c.cost.slope : ℝ)*(c.right : ℝ) := by
      exact_mod_cast hrq
    by_cases hs : (0 : ℝ) ≤ c.cost.slope
    · nlinarith [mul_nonneg hs (sub_nonneg.mpr hx.1.le)]
    · nlinarith [mul_nonneg (neg_nonneg.mpr (le_of_not_ge hs)) (sub_nonneg.mpr hx.2)]
  · exact le_rfl

theorem middleProfile_nonneg (cs : List ProfileCell) (h : ∀ c ∈ cs, c.check) (x : ℝ) :
    0 ≤ middleProfile cs x := by
  unfold middleProfile
  apply List.sum_nonneg
  intro y hy
  obtain ⟨c, hc, rfl⟩ := List.mem_map.mp hy
  exact c.term_nonneg (h c hc) x

theorem profileCoverage_sound (left right : ℚ) (cs : List ProfileCell)
    (h : profileCoverage left right cs) (x : ℝ)
    (hl : (left : ℝ) < x) (hr : x ≤ (right : ℝ)) :
    ∃ c ∈ cs, (c.left : ℝ) < x ∧ x ≤ (c.right : ℝ) := by
  induction cs generalizing left with
  | nil => change left = right at h; subst right; exact False.elim (by linarith)
  | cons c cs ih =>
    by_cases hx : x ≤ (c.right : ℝ)
    · exact ⟨c, by simp, by simpa only [h.1] using hl, hx⟩
    · obtain ⟨d, hd, hlo, hhi⟩ := ih c.right h.2.2 (lt_of_not_ge hx)
      exact ⟨d, by simp [hd], hlo, hhi⟩

theorem profileCoverage_lower (left right : ℚ) (cs : List ProfileCell)
    (h : profileCoverage left right cs) : ∀ c ∈ cs, left ≤ c.left := by
  induction cs generalizing left with
  | nil => simp
  | cons c cs ih =>
    intro d hd
    rcases List.mem_cons.mp hd with rfl | hd
    · exact h.1.symm.le
    · exact (h.1.symm.le.trans h.2.1.le).trans (ih c.right h.2.2 d hd)

theorem profileCoverage_pairwise (left right : ℚ) (cs : List ProfileCell)
    (h : profileCoverage left right cs) : cs.Pairwise (fun c d => c.right ≤ d.left) := by
  induction cs generalizing left with
  | nil => exact List.Pairwise.nil
  | cons c cs ih =>
    exact List.pairwise_cons.mpr ⟨profileCoverage_lower c.right right cs h.2.2,
      ih c.right h.2.2⟩

theorem profileCoverage_nodup (cs : List ProfileCell) (h : profileCoverage 4 26 cs)
    (hv : ∀ c ∈ cs, c.check) : cs.Nodup := by
  rw [List.nodup_iff_pairwise_ne]
  apply (profileCoverage_pairwise 4 26 cs h).imp_of_mem
  intro a b ha hb hab heq
  subst b
  exact (not_le_of_gt (hv a ha).2.1) hab

end OddZetaMixed.H158MiddleCells
