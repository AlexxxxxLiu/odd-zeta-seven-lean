import OddZetaMixed.H158MiddleCells
import OddZetaMixed.H158MiddleCellsData000
import OddZetaMixed.H158MiddleCellsSavedProfile

namespace OddZetaMixed.H158MiddleCells

#print axioms stepProfile_lattice_error_le
#print axioms function_lattice_error_le
#print axioms floorProfile_eq_unshifted
#print axioms floorProfile_fromFloors
#print axioms floorStripCheck_sound
#print axioms Cell.original_lattice_error_le
#print axioms folded_unshifted_threshold_le_profile
#print axioms Cell.folded_unshifted_bound
#print axioms Cell.primitive_cost_bound
#print axioms GridCertificate.check_sound
#print axioms savedCell000_checked
#print axioms savedCell000_selection_checked
#print axioms savedProfile_coverage
#print axioms savedProfile_nonnegative
#print axioms savedProfile_integral

example : floorStripCheck 4 5 10 ⟨0,0⟩ ⟨0,1⟩ 0 = False := by decide +kernel
example : normalizationFloorCheck 4 5 10 2 := by decide +kernel
example : ¬normalizationFloorCheck 4 5 10 3 := by decide +kernel

example : ¬({ savedGrid000 with quotients := 123 :: savedGrid000.quotients.tail }).check := by
  decide +kernel

/-- A concrete saved cell applied to the actual primitive scalar, with no
certificate or actual-cost premise remaining. -/
theorem savedCell000_actual {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n)
    (hsq : 158*n+2 < p^2) (ha : (4 : ℚ) < (p : ℚ)/n)
    (hb : (p : ℚ)/n ≤ 109/27) (hdet : (h158SevenMatrix n).det ≠ 0) :
    (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤
      (n : ℚ)*(-80+25*((p : ℚ)/n))+4635 := by
  have hp2 : p ≠ 2 := by
    have hnq : (0 : ℚ) < n := by exact_mod_cast hn
    have h := (lt_div_iff₀ hnq).mp ha
    have hn1 : (1 : ℚ) ≤ n := by exact_mod_cast hn
    intro hp2
    rw [hp2] at h
    norm_num at h
    linarith
  exact savedCell000.primitive_cost_bound savedCell000_checked n hn
    (Fact.out : p.Prime).pos hp2 hsq ha hb hdet

example : |latticeSum 3 12 (stepValue [⟨1/7, 9/7, -3⟩]) -
    3*stepIntegral [⟨1/7, 9/7, -3⟩]| ≤ 3 := by
  simpa [stepEndpointFee] using
    stepProfile_lattice_error_le 3 12 (by decide) [⟨1/7, 9/7, -3⟩]
      (by simp; norm_num)

end OddZetaMixed.H158MiddleCells
