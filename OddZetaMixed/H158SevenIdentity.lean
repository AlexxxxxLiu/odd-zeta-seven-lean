import OddZetaMixed.H158Coefficients
import OddZetaMixed.H158Parity
import OddZetaMixed.H158Functional
import OddZetaMixed.ScalarGaussCost

/-!
# The same actual h158 determinant in seven zeta coordinates

The derivative sum and formal polynomial matrix are connected here. Neither
the irrationality of any zeta value nor a nonzero determinant is assumed for
the evaluation identity. Primitive normalization requires the formal
determinant to be nonzero, as in the arithmetic budget statement.
-/

noncomputable section

namespace OddZetaMixed

open Finset

theorem h158OrderCoefficient_odd (n : ℕ) (i j : Fin (2*n)) (s : ℕ) (hs : Odd s) :
    h158OrderCoefficient n i j s = 0 := h158_odd_index_sum_zero n i j s hs

theorem h158ZetaCoefficient_odd (n : ℕ) (i j : Fin (2*n)) (s : ℕ) (hs : Odd s) :
    h158ZetaCoefficient n i j s = 0 := by
  simp [h158ZetaCoefficient, h158OrderCoefficient_odd n i j s hs]

theorem h158_seven_coordinate_reduction (n : ℕ) (i j : Fin (2*n)) (z : ℕ → ℝ) :
    (∑ s : Fin 16, (h158ZetaCoefficient n i j s : ℝ) * z (s.val+5)) =
      ∑ s : Fin 7, (h158ZetaCoefficient n i j (2+2*s.val) : ℝ) * z (7+2*s.val) := by
  have hz (s : ℕ) : h158ZetaCoefficient n i j (2*s+1) = 0 :=
    h158ZetaCoefficient_odd n i j (2*s+1) ⟨s, by omega⟩
  have h1 := hz 0
  have h3 := hz 1
  have h5 := hz 2
  have h7 := hz 3
  have h9 := hz 4
  have h11 := hz 5
  have h13 := hz 6
  have h15 := hz 7
  norm_num [Fin.sum_univ_succ, h158ZetaCoefficient_zero,
    h1, h3, h5, h7, h9, h11, h13, h15]

/-- The full convergent fourth-derivative series is exactly an affine linear
form in the seven actual real zeta values, with the exact rational constant. -/
theorem h158Functional_eq_seven (n : ℕ) (i j : Fin (2*n)) :
    h158Functional n i j = (h158MomentConstant n i j : ℝ) +
      ∑ s : Fin 7, (h158ZetaCoefficient n i j (2+2*s.val) : ℝ) * sevenZetaValues s := by
  rw [h158Functional_eq_pole_sum,
    ← h158_complete_sum_regroup n i j (fun s => zetaNat (s+5)),
    h158_seven_coordinate_reduction]
  rfl

theorem h158SevenMatrix_entry_eval (n : ℕ) (i j : Fin (2*n)) :
    MvPolynomial.eval₂ (algebraMap ℚ ℝ) sevenZetaValues (h158SevenMatrix n i j) =
      h158Functional n i j := by
  rw [h158Functional_eq_seven]
  simp [h158SevenMatrix, momentMatrix, affineEntry]

/-- Evaluation of the concrete formal determinant is the determinant of the
same actual fourth-derivative sums; no other kernel or sequence is substituted. -/
theorem h158SevenMatrix_det_eval (n : ℕ) :
    MvPolynomial.eval₂ (algebraMap ℚ ℝ) sevenZetaValues (h158SevenMatrix n).det =
      Matrix.det (h158Functional n) := by
  change (MvPolynomial.eval₂Hom (algebraMap ℚ ℝ) sevenZetaValues)
    (h158SevenMatrix n).det = _
  rw [RingHom.map_det]
  congr 1
  ext i j
  exact h158SevenMatrix_entry_eval n i j

/-- Constructed primitive normalization for the actual formal determinant.
Nonzeroness is the remaining modular-gate obligation, not a new axiom. -/
theorem h158_exists_primitive_data (n : ℕ) (hH : (h158SevenMatrix n).det ≠ 0) :
    ∃ c : ℚ, c ≠ 0 ∧ ∃ P : MvPolynomial (Fin 7) ℤ,
      P ≠ 0 ∧ integerPolynomialContent P = 1 ∧
      (h158SevenMatrix n).det = MvPolynomial.C c * P.map (Int.castRingHom ℚ) ∧
      P.totalDegree ≤ 2*n ∧
      -Real.log |(c : ℝ)| =
        ∑ p ∈ (c.num.natAbs*c.den).primeFactors,
          -(rationalPolynomialGaussValuation p (h158SevenMatrix n).det hH : ℝ) * Real.log p := by
  obtain ⟨c,hc,P,hP,hprim,hnorm,hdeg,hlocal,hcost⟩ :=
    exists_primitive_normalization_with_gauss_cost (h158SevenMatrix n).det hH
  exact ⟨c,hc,P,hP,hprim,hnorm,hdeg.le.trans (h158SevenMatrix_degree n),hcost⟩

end OddZetaMixed
