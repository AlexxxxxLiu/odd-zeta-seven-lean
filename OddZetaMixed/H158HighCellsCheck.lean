import OddZetaMixed.H158HighCellsCertified

/-! Standalone audit; deliberately not added to the root or verifier. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace OddZetaMixed.H158HighCells
open Finset

example : Data.selections.length = 89 := Data.selections_length
example (i : Fin 70) : (Data.cells i).Valid := Data.cells_valid i
example (i : Fin 70) : (Data.cells i).TailBounds := Data.cells_tailBounds i
example (i : Fin 70) : (Data.cells i).BoundaryValid := Data.cells_boundaryValid i
example : Data.integralSum = 102751231/203490 := Data.integralSum_exact
example (x : ℝ) : 0 ≤ Data.profile x := Data.profile_nonneg x
example : (∫ x in (26 : ℝ)..57, Data.profile x) = (102751231 : ℝ)/203490 :=
  Data.profile_integral

def allCheckedStrips : List Strip := (List.ofFn Data.cells).flatMap (fun c => List.ofFn c.strips)

example : allCheckedStrips.length = 3080 := by decide +kernel
example : (allCheckedStrips.filter (fun s => s.kind == 0)).length = 39 := by decide +kernel
example : (allCheckedStrips.filter (fun s => s.kind == 1)).length = 1601 := by decide +kernel
example : (allCheckedStrips.filter (fun s => s.kind == 2)).length = 493 := by decide +kernel
example : (allCheckedStrips.filter (fun s => s.kind == 3)).length = 425 := by decide +kernel
example : (allCheckedStrips.filter (fun s => s.kind == 4)).length = 522 := by decide +kernel

example : ¬({Data.cell00 with lo := 25} : Cell).Valid := by decide +kernel
example : ¬({(Data.cell00.strips 0) with floors := fun _ => 1000} : Strip).floorValid
    Data.cell00.lo Data.cell00.hi := by decide +kernel
example : (Data.selections.getLastD ⟨0, 0, 0, ⟨0, 0⟩⟩).cost.eval 57 = 0 := by decide +kernel

#print axioms Cell.GridCheck.sound
#print axioms Cell.actual_counts_at_residue
#print axioms Cell.actual_hybrid_minorFloor_sides
#print axioms Cell.profile_allocation_bound
#print axioms exceptional_allocation_cost_le_4950
#print axioms Cell.locate_nonexceptional
#print axioms stripResidues_card_le
#print axioms Cell.actual_allocation_cost_le
#print axioms Cell.actual_primitive_cost_le
#print axioms Data.cells_valid
#print axioms Data.cells_tailBounds
#print axioms Data.cells_boundaryValid
#print axioms Data.selections_nonnegative_endpoints
#print axioms Data.integralSum_exact
#print axioms Data.profile_integral
#print axioms Data.actual_selection_primitive_cost

end OddZetaMixed.H158HighCells
