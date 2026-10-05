import OddZetaMixed.H158HighCellsData.Batch00
import OddZetaMixed.H158HighCellsData.Batch01
import OddZetaMixed.H158HighCellsData.Batch02
import OddZetaMixed.H158HighCellsData.Batch03
import OddZetaMixed.H158HighCellsData.Batch04
import OddZetaMixed.H158HighCellsData.Batch05
import OddZetaMixed.H158HighCellsData.Batch06

/-! Kernel-certified reconstruction, retaining every open strip. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace OddZetaMixed.H158HighCells.Data

def cells : Fin 70 → Cell := ![cell00, cell01, cell02, cell03, cell04, cell05, cell06, cell07, cell08, cell09, cell10, cell11, cell12, cell13, cell14, cell15, cell16, cell17, cell18, cell19, cell20, cell21, cell22, cell23, cell24, cell25, cell26, cell27, cell28, cell29, cell30, cell31, cell32, cell33, cell34, cell35, cell36, cell37, cell38, cell39, cell40, cell41, cell42, cell43, cell44, cell45, cell46, cell47, cell48, cell49, cell50, cell51, cell52, cell53, cell54, cell55, cell56, cell57, cell58, cell59, cell60, cell61, cell62, cell63, cell64, cell65, cell66, cell67, cell68, cell69]

theorem cells_valid (i : Fin 70) : (cells i).Valid := by
  fin_cases i
  · exact cell00_valid
  · exact cell01_valid
  · exact cell02_valid
  · exact cell03_valid
  · exact cell04_valid
  · exact cell05_valid
  · exact cell06_valid
  · exact cell07_valid
  · exact cell08_valid
  · exact cell09_valid
  · exact cell10_valid
  · exact cell11_valid
  · exact cell12_valid
  · exact cell13_valid
  · exact cell14_valid
  · exact cell15_valid
  · exact cell16_valid
  · exact cell17_valid
  · exact cell18_valid
  · exact cell19_valid
  · exact cell20_valid
  · exact cell21_valid
  · exact cell22_valid
  · exact cell23_valid
  · exact cell24_valid
  · exact cell25_valid
  · exact cell26_valid
  · exact cell27_valid
  · exact cell28_valid
  · exact cell29_valid
  · exact cell30_valid
  · exact cell31_valid
  · exact cell32_valid
  · exact cell33_valid
  · exact cell34_valid
  · exact cell35_valid
  · exact cell36_valid
  · exact cell37_valid
  · exact cell38_valid
  · exact cell39_valid
  · exact cell40_valid
  · exact cell41_valid
  · exact cell42_valid
  · exact cell43_valid
  · exact cell44_valid
  · exact cell45_valid
  · exact cell46_valid
  · exact cell47_valid
  · exact cell48_valid
  · exact cell49_valid
  · exact cell50_valid
  · exact cell51_valid
  · exact cell52_valid
  · exact cell53_valid
  · exact cell54_valid
  · exact cell55_valid
  · exact cell56_valid
  · exact cell57_valid
  · exact cell58_valid
  · exact cell59_valid
  · exact cell60_valid
  · exact cell61_valid
  · exact cell62_valid
  · exact cell63_valid
  · exact cell64_valid
  · exact cell65_valid
  · exact cell66_valid
  · exact cell67_valid
  · exact cell68_valid
  · exact cell69_valid

theorem cells_tailBounds (i : Fin 70) : (cells i).TailBounds := by
  fin_cases i
  · exact cell00_tailBounds
  · exact cell01_tailBounds
  · exact cell02_tailBounds
  · exact cell03_tailBounds
  · exact cell04_tailBounds
  · exact cell05_tailBounds
  · exact cell06_tailBounds
  · exact cell07_tailBounds
  · exact cell08_tailBounds
  · exact cell09_tailBounds
  · exact cell10_tailBounds
  · exact cell11_tailBounds
  · exact cell12_tailBounds
  · exact cell13_tailBounds
  · exact cell14_tailBounds
  · exact cell15_tailBounds
  · exact cell16_tailBounds
  · exact cell17_tailBounds
  · exact cell18_tailBounds
  · exact cell19_tailBounds
  · exact cell20_tailBounds
  · exact cell21_tailBounds
  · exact cell22_tailBounds
  · exact cell23_tailBounds
  · exact cell24_tailBounds
  · exact cell25_tailBounds
  · exact cell26_tailBounds
  · exact cell27_tailBounds
  · exact cell28_tailBounds
  · exact cell29_tailBounds
  · exact cell30_tailBounds
  · exact cell31_tailBounds
  · exact cell32_tailBounds
  · exact cell33_tailBounds
  · exact cell34_tailBounds
  · exact cell35_tailBounds
  · exact cell36_tailBounds
  · exact cell37_tailBounds
  · exact cell38_tailBounds
  · exact cell39_tailBounds
  · exact cell40_tailBounds
  · exact cell41_tailBounds
  · exact cell42_tailBounds
  · exact cell43_tailBounds
  · exact cell44_tailBounds
  · exact cell45_tailBounds
  · exact cell46_tailBounds
  · exact cell47_tailBounds
  · exact cell48_tailBounds
  · exact cell49_tailBounds
  · exact cell50_tailBounds
  · exact cell51_tailBounds
  · exact cell52_tailBounds
  · exact cell53_tailBounds
  · exact cell54_tailBounds
  · exact cell55_tailBounds
  · exact cell56_tailBounds
  · exact cell57_tailBounds
  · exact cell58_tailBounds
  · exact cell59_tailBounds
  · exact cell60_tailBounds
  · exact cell61_tailBounds
  · exact cell62_tailBounds
  · exact cell63_tailBounds
  · exact cell64_tailBounds
  · exact cell65_tailBounds
  · exact cell66_tailBounds
  · exact cell67_tailBounds
  · exact cell68_tailBounds
  · exact cell69_tailBounds

theorem cells_boundaryValid (i : Fin 70) : (cells i).BoundaryValid := by
  fin_cases i
  · exact cell00_boundaryValid
  · exact cell01_boundaryValid
  · exact cell02_boundaryValid
  · exact cell03_boundaryValid
  · exact cell04_boundaryValid
  · exact cell05_boundaryValid
  · exact cell06_boundaryValid
  · exact cell07_boundaryValid
  · exact cell08_boundaryValid
  · exact cell09_boundaryValid
  · exact cell10_boundaryValid
  · exact cell11_boundaryValid
  · exact cell12_boundaryValid
  · exact cell13_boundaryValid
  · exact cell14_boundaryValid
  · exact cell15_boundaryValid
  · exact cell16_boundaryValid
  · exact cell17_boundaryValid
  · exact cell18_boundaryValid
  · exact cell19_boundaryValid
  · exact cell20_boundaryValid
  · exact cell21_boundaryValid
  · exact cell22_boundaryValid
  · exact cell23_boundaryValid
  · exact cell24_boundaryValid
  · exact cell25_boundaryValid
  · exact cell26_boundaryValid
  · exact cell27_boundaryValid
  · exact cell28_boundaryValid
  · exact cell29_boundaryValid
  · exact cell30_boundaryValid
  · exact cell31_boundaryValid
  · exact cell32_boundaryValid
  · exact cell33_boundaryValid
  · exact cell34_boundaryValid
  · exact cell35_boundaryValid
  · exact cell36_boundaryValid
  · exact cell37_boundaryValid
  · exact cell38_boundaryValid
  · exact cell39_boundaryValid
  · exact cell40_boundaryValid
  · exact cell41_boundaryValid
  · exact cell42_boundaryValid
  · exact cell43_boundaryValid
  · exact cell44_boundaryValid
  · exact cell45_boundaryValid
  · exact cell46_boundaryValid
  · exact cell47_boundaryValid
  · exact cell48_boundaryValid
  · exact cell49_boundaryValid
  · exact cell50_boundaryValid
  · exact cell51_boundaryValid
  · exact cell52_boundaryValid
  · exact cell53_boundaryValid
  · exact cell54_boundaryValid
  · exact cell55_boundaryValid
  · exact cell56_boundaryValid
  · exact cell57_boundaryValid
  · exact cell58_boundaryValid
  · exact cell59_boundaryValid
  · exact cell60_boundaryValid
  · exact cell61_boundaryValid
  · exact cell62_boundaryValid
  · exact cell63_boundaryValid
  · exact cell64_boundaryValid
  · exact cell65_boundaryValid
  · exact cell66_boundaryValid
  · exact cell67_boundaryValid
  · exact cell68_boundaryValid
  · exact cell69_boundaryValid

theorem geometry_partition : (cells 0).lo = 26 ∧ (cells 69).hi = 57 ∧
    (∀ i : Fin 69, (cells i.castSucc).hi = (cells i.succ).lo) := by decide +kernel

def selections : List Selection := (List.ofFn cells).flatMap Cell.selections

theorem selections_length : selections.length = 89 := by decide +kernel

theorem selections_nonnegative_endpoints : ∀ s ∈ selections,
    0 ≤ s.cost.eval s.lo ∧ 0 ≤ s.cost.eval s.hi := by decide +kernel

theorem selections_bounds : ∀ s ∈ selections,
    26 ≤ s.lo ∧ s.lo < s.hi ∧ s.hi ≤ 57 := by decide +kernel

theorem selections_partition :
    (selections.headD ⟨0, 0, 0, ⟨0, 0⟩⟩).lo = 26 ∧
    (selections.getLastD ⟨0, 0, 0, ⟨0, 0⟩⟩).hi = 57 ∧
    selections.IsChain (fun a b => a.hi = b.lo) := by decide +kernel

def integralSum : ℚ := (selections.map (fun s => s.cost.integral s.lo s.hi)).sum

theorem integralSum_exact : integralSum = 102751231/203490 := by decide +kernel

end OddZetaMixed.H158HighCells.Data
