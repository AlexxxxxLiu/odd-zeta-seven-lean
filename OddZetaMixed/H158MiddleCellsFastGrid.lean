import OddZetaMixed.H158MiddleCellsGrid

/-!
The row-list checker computes each expected floor vector once. Its soundness
theorem implies the original grid checker, with no change in cell semantics.
-/

namespace OddZetaMixed.H158MiddleCells
open Finset
set_option autoImplicit false

def GridCertificate.floorRow (g : GridCertificate) (j : ℕ) : List ℤ :=
  List.zipWith (fun q pos => q - if pos ≤ j then 1 else 0) g.quotients g.positions

def GridCertificate.fastCheck (g : GridCertificate) : Prop :=
  4 ≤ g.cell.left ∧ g.cell.left < g.cell.right ∧ g.cell.right ≤ 26 ∧
  (∀ b ∈ range 16, normalizationFloorCheck g.cell.left g.cell.right ((52-2*b : ℕ) : ℚ)
    (g.cell.denFloors.getD b 0)) ∧
  (∀ a ∈ range 5, normalizationFloorCheck g.cell.left g.cell.right ((48+a : ℕ) : ℚ)
    (g.cell.numFloors.getD a 0)) ∧
  stripChainCheck g.cell.left g.cell.right ⟨0,0⟩ ⟨0,1⟩ g.cell.strips ∧
  g.cell.strips.length = 44 ∧
  g.quotients.length = 44 ∧ g.positions.length = 44 ∧
  g.boundary 0 = ⟨0,0⟩ ∧ g.boundary 44 = ⟨0,1⟩ ∧
  (∀ j ∈ range 44, (g.boundary j).leOn (g.boundary (j+1)) g.cell.left g.cell.right) ∧
  (∀ i ∈ range 44, g.positions.getD i 0 ≤ 44 ∧
    g.boundary (g.positions.getD i 0) = ⟨endpoint i, -(g.quotients.getD i 0 : ℚ)⟩) ∧
  (∀ j ∈ range 44, (g.strip j).left = g.boundary j ∧
    (g.strip j).right = g.boundary (j+1) ∧
    (g.strip j).floors = g.floorRow j ∧
    (g.strip j).weight g.cell.nu = (g.strip j).cachedWeight ∧
    (g.strip j).cachedWeight ≤ 20) ∧
  0 ≤ g.cell.tau ∧ g.cell.tau ≤ 20 ∧ g.cell.rate 10 = g.cell.cost

instance instDecidableGridCertificateFastCheck (g : GridCertificate) :
    Decidable g.fastCheck := inferInstanceAs (Decidable (_ ∧ _))

theorem GridCertificate.floorRow_getD (g : GridCertificate) (j i : ℕ)
    (hq : g.quotients.length = 44) (hp : g.positions.length = 44) (hi : i < 44) :
    (g.floorRow j).getD i 0 =
      g.quotients.getD i 0 - if g.positions.getD i 0 ≤ j then 1 else 0 := by
  have hqi : i < g.quotients.length := by omega
  have hpi : i < g.positions.length := by omega
  have hri : i < (g.floorRow j).length := by
    simp only [floorRow, List.length_zipWith, hq, hp, min_self]
    exact hi
  rw [List.getD_eq_getElem _ _ hri, List.getD_eq_getElem _ _ hqi,
    List.getD_eq_getElem _ _ hpi]
  exact List.getElem_zipWith

theorem GridCertificate.fastCheck_sound (g : GridCertificate) (h : g.fastCheck) :
    g.check := by
  rcases h with ⟨hl, hlr, hr, hd, hn, hc, hlen, hq, hp, h0, h44, hmono, hroot,
    hstrip, ht0, ht20, hrate⟩
  refine ⟨hl, hlr, hr, hd, hn, hc, hlen, h0, h44, hmono, hroot, ?_, ht0, ht20, hrate⟩
  intro j hj
  have hs := hstrip j hj
  refine ⟨hs.1, hs.2.1, ?_, hs.2.2.2⟩
  intro i hi
  rw [hs.2.2.1]
  exact g.floorRow_getD j i hq hp (mem_range.mp hi)

theorem GridCertificate.fastCheck_cell (g : GridCertificate) (h : g.fastCheck) :
    g.cell.check := g.check_sound (g.fastCheck_sound h)

end OddZetaMixed.H158MiddleCells
