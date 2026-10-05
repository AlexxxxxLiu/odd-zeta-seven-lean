import OddZetaMixed.H158LowCells
import OddZetaMixed.H158MiddlePrimeRate
import OddZetaMixed.H158HighCertifiedRate
import OddZetaMixed.H158ThreeBandAssembly
import OddZetaMixed.H158ConservativeBudget

/-! Assembly of checked low and middle tables with the actual high certificate.
The concrete table module supplies these finite data obligations; no global
arithmetic rate is assumed here. -/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

theorem h158ArithmeticRate_of_checked_blocks (low : H158LowCells.Block)
    (hleft : low.left = 1/4) (hright : low.right = 3)
    (hlow : (40/3 : ℚ)+(low.bands.map H158LowCells.Band.integral).sum ≤ 74)
    (middle : H158MiddleCells.Certificate) (hcheck : middle.check)
    (hprofile : ∀ c ∈ middle.cells, c.toProfile.check)
    (hmid : middle.integral < 433) :
    UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0} h158PrimitiveCost 1012 := by
  let A : ℝ := 40/3+(((low.bands.map H158LowCells.Band.integral).sum : ℚ) : ℝ)
  let B : ℝ := middle.integral
  let C : ℝ := 102751231/203490
  have hrate : UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0}
      h158PrimitiveCost (A+B+C) := by
    apply h158PrimitiveCost_rate_of_three_bands low.majorant middle.majorant
      H158HighCells.Data.majorant A B C
    · intro n hn p
      exact low.majorant_nonneg n p hn
    · intro n hn p
      exact middle.majorant_nonneg hprofile n p hn
    · intro n hn p
      exact H158HighCells.Data.majorant_nonneg n p hn
    · intro n hn hdet p hp hp4 hsq _
      let : Fact p.Prime := ⟨hp⟩
      exact (le_max_right (0 : ℝ) _).trans
        (low.primitive_positive_cost_le hleft hright n hn hp4 hsq hdet)
    · intro n hn hdet p hp hp4 hp26 hsq _
      let : Fact p.Prime := ⟨hp⟩
      exact middle.primitive_cost_le_majorant hcheck hprofile n hn hp4 hp26 hsq hdet
    · exact H158HighCells.Data.actual_high_cost_le_majorant
    · exact low.majorant_ratio_limit
    · exact middle.majorant_ratio_limit hcheck hprofile
    · exact H158HighCells.Data.majorant_ratio_limit
  have hA : A ≤ 74 := by
    have h := (Rat.cast_le (K := ℝ)).mpr hlow
    simpa only [Rat.cast_add, Rat.cast_div, Rat.cast_ofNat] using h
  have hB : B < 433 := by
    dsimp [B]
    exact_mod_cast hmid
  have hC : C < 505 := by norm_num [C]
  exact hrate.mono_rate (by linarith)

#print axioms h158ArithmeticRate_of_checked_blocks

end OddZetaMixed
