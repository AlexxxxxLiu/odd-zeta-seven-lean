import OddZetaMixed.H158Residues
import OddZetaMixed.ZetaTail
import OddZetaMixed.MomentMatrix

/-!
# Actual rational coefficients of the h158 moment entries

The harmonic constant and all pole-order coordinates are constructed from the
unique partial fractions. The index `s` below corresponds to zeta(s+5).
-/

noncomputable section

namespace OddZetaMixed

open Finset

def h158OrderCoefficient (n : ℕ) (i j : Fin (2*n)) (s : ℕ) : ℚ :=
  ∑ k ∈ h158PoleSet n, ∑ l,
    if l.val=s then h158PrincipalCoefficients n i j k l else 0

def h158ZetaCoefficient (n : ℕ) (i j : Fin (2*n)) (s : ℕ) : ℚ :=
  ((s+4).choose 4 : ℚ) * h158OrderCoefficient n i j s

def h158MomentConstant (n : ℕ) (i j : Fin (2*n)) : ℚ :=
  -(∑ k ∈ h158PoleSet n, ∑ l,
    h158PrincipalCoefficients n i j k l * ((l.val+4).choose 4 : ℚ) *
      harmonicCutoff (l.val+5) (k-48*n-1))

theorem h158OrderCoefficient_zero (n : ℕ) (i j : Fin (2*n)) :
    h158OrderCoefficient n i j 0 = 0 := h158_residue_sum_zero n i j

theorem h158ZetaCoefficient_zero (n : ℕ) (i j : Fin (2*n)) :
    h158ZetaCoefficient n i j 0 = 0 := by
  simp [h158ZetaCoefficient, h158OrderCoefficient_zero]

theorem h158OrderCoefficient_outside (n : ℕ) (i j : Fin (2*n)) (s : ℕ)
    (hs : 16 ≤ s) : h158OrderCoefficient n i j s = 0 := by
  unfold h158OrderCoefficient
  apply Finset.sum_eq_zero
  intro k hk
  apply Finset.sum_eq_zero
  intro l hl
  have hlt := l.isLt.trans_le (h158_pole_order_le n k)
  simp [show l.val ≠ s by omega]

theorem h158ZetaCoefficient_outside (n : ℕ) (i j : Fin (2*n)) (s : ℕ)
    (hs : 16 ≤ s) : h158ZetaCoefficient n i j s = 0 := by
  simp [h158ZetaCoefficient, h158OrderCoefficient_outside n i j s hs]

/-- Group the actual pole coefficients by order, with no convergence argument
or zeta independence assumption: this is a finite algebraic identity. -/
theorem h158_order_regroup (n : ℕ) (i j : Fin (2*n)) (z : ℕ → ℝ) :
    (∑ s : Fin 16, (h158ZetaCoefficient n i j s : ℝ) * z s) =
      ∑ k ∈ h158PoleSet n, ∑ l,
        (h158PrincipalCoefficients n i j k l : ℝ) * ((l.val+4).choose 4 : ℝ) * z l.val := by
  simp only [h158ZetaCoefficient, h158OrderCoefficient, Rat.cast_mul, Rat.cast_sum,
    Rat.cast_natCast, apply_ite, Rat.cast_zero, Finset.mul_sum, Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k hk
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro l hl
  let s : Fin 16 := ⟨l.val, l.isLt.trans_le (h158_pole_order_le n k)⟩
  rw [Finset.sum_eq_single s]
  · simp only [s, ite_true]
    ring
  · intro b hb hbs
    have hne : l.val ≠ b.val := by
      intro he
      exact hbs (Fin.ext he.symm)
    simp [hne]
  · simp

/-- The constant coordinate is exactly the whole finite harmonic correction. -/
theorem h158_complete_sum_regroup (n : ℕ) (i j : Fin (2*n)) (z : ℕ → ℝ) :
    (h158MomentConstant n i j : ℝ) +
        (∑ s : Fin 16, (h158ZetaCoefficient n i j s : ℝ) * z s) =
      ∑ k ∈ h158PoleSet n, ∑ l,
        (h158PrincipalCoefficients n i j k l : ℝ) * ((l.val+4).choose 4 : ℝ) *
          (z l.val - (harmonicCutoff (l.val+5) (k-48*n-1) : ℝ)) := by
  rw [h158_order_regroup]
  simp only [h158MomentConstant, Rat.cast_neg, Rat.cast_sum, Rat.cast_mul,
    Rat.cast_natCast, mul_sub, Finset.sum_sub_distrib]
  ring

/-- The seven-target matrix is now a concrete polynomial object. Its equality
to the analytic functional additionally uses the parity-cancellation theorem. -/
def h158SevenMatrix (n : ℕ) : Matrix (Fin (2*n)) (Fin (2*n)) SevenPolynomial :=
  momentMatrix n (h158MomentConstant n)
    (fun s => fun i j => h158ZetaCoefficient n i j (2+2*s.val))

theorem h158SevenMatrix_degree (n : ℕ) :
    (h158SevenMatrix n).det.totalDegree ≤ 2*n := by
  exact momentMatrix_degree n _ _

end OddZetaMixed
