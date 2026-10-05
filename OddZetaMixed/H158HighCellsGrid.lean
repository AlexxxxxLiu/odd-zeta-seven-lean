import OddZetaMixed.H158HighCellsGeometry
import OddZetaMixed.H158MiddleCellsGrid

/-! Reuse the middle agent's ordered-grid floor theorem. Only the affine
data type is translated; all high-strip floor signatures remain checked. -/

set_option autoImplicit false
namespace OddZetaMixed.H158HighCells
open Finset

def Affine.toMiddle (f : Affine) : H158MiddleCells.Affine := ⟨f.a, f.b⟩

def Cell.boundary (c : Cell) (j : ℕ) : Affine :=
  if hj : j < 44 then (c.strips ⟨j, hj⟩).left else ⟨0, 1⟩

def Cell.GridCheck (c : Cell) (q : Fin 44 → ℤ) (pos : Fin 44 → Fin 45) : Prop :=
  (c.strips 0).left = ⟨0, 0⟩ ∧
  (∀ j : Fin 44, c.boundary (j.val+1) = (c.strips j).right) ∧
  (∀ j : Fin 44, AffineLE c.lo c.hi (c.strips j).left (c.strips j).right) ∧
  (∀ i : Fin 44, c.boundary (pos i).val = ⟨endpoint i, -(q i : ℚ)⟩) ∧
  (∀ j i : Fin 44, (c.strips j).floors i = q i-if (pos i).val ≤ j.val then 1 else 0)

instance (c : Cell) (q : Fin 44 → ℤ) (pos : Fin 44 → Fin 45) :
    Decidable (c.GridCheck q pos) := inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _ ∧ _))

theorem Cell.GridCheck.sound {c : Cell} {q : Fin 44 → ℤ} {pos : Fin 44 → Fin 45}
    (h : c.GridCheck q pos) (j : Fin 44) : (c.strips j).floorValid c.lo c.hi := by
  let f : ℕ → H158MiddleCells.Affine := fun j => (c.boundary j).toMiddle
  have h0 : f 0 = ⟨0, 0⟩ := by
    change (c.strips 0).left.toMiddle = ⟨0, 0⟩
    rw [h.1]
    rfl
  have h44 : f 44 = ⟨0, 1⟩ := by simp [f, Cell.boundary, Affine.toMiddle]
  have hm (k : ℕ) (hk : k < 44) : (f k).leOn (f (k+1)) c.lo c.hi := by
    have hs := h.2.2.1 ⟨k, hk⟩
    dsimp [f]
    rw [show k+1 = (⟨k, hk⟩ : Fin 44).val+1 from rfl, h.2.1 ⟨k, hk⟩]
    simpa only [Cell.boundary, hk, dite_true, Affine.toMiddle,
      H158MiddleCells.Affine.leOn, H158MiddleCells.Affine.eval, AffineLE, Affine.eval] using hs
  intro i
  have he : f (pos i).val = ⟨(endpoint i : ℚ), -(q i : ℚ)⟩ := by
    exact congrArg Affine.toMiddle (h.2.2.2.1 i)
  have hf := H158MiddleCells.ordered_grid_floor c.lo c.hi f h0 h44 hm
    (endpoint i) (q i) (pos i).val j.val (Nat.le_of_lt_succ (pos i).isLt) j.isLt he
  have hL : f j.val = (c.strips j).left.toMiddle := by simp [f, Cell.boundary, j.isLt]
  have hR : f (j.val+1) = (c.strips j).right.toMiddle := by
    change (c.boundary (j.val+1)).toMiddle = _
    rw [h.2.1 j]
  rw [hL, hR, ← h.2.2.2.2 j i] at hf
  unfold H158MiddleCells.floorStripCheck H158MiddleCells.Affine.leOn
    H158MiddleCells.Affine.eval Affine.toMiddle at hf
  unfold AffineLE Affine.eval Affine.add
  dsimp at hf ⊢
  rcases hf with ⟨⟨hl, hl'⟩, ⟨hr, hr'⟩⟩
  exact ⟨⟨by linarith, by linarith⟩, ⟨by linarith, by linarith⟩⟩

end OddZetaMixed.H158HighCells
