import OddZetaMixed.H158MiddleCells

/-!
An ordered-endpoint certificate avoids repeating rational comparisons for
every strip/endpoint pair. The original integer floor vectors are still
checked, but their values follow from endpoint positions in one ordered grid.
-/

namespace OddZetaMixed.H158MiddleCells
open Finset
set_option autoImplicit false

structure GridCertificate where
  cell : Cell
  boundaries : List Affine
  quotients : List ℤ
  positions : List ℕ

def GridCertificate.boundary (g : GridCertificate) (j : ℕ) : Affine :=
  g.boundaries.getD j ⟨0,0⟩

def GridCertificate.strip (g : GridCertificate) (j : ℕ) : Strip :=
  g.cell.strips.getD j ⟨⟨0,0⟩, ⟨0,0⟩, [], 0⟩

def GridCertificate.check (g : GridCertificate) : Prop :=
  4 ≤ g.cell.left ∧ g.cell.left < g.cell.right ∧ g.cell.right ≤ 26 ∧
  (∀ b ∈ range 16, normalizationFloorCheck g.cell.left g.cell.right ((52-2*b : ℕ) : ℚ)
    (g.cell.denFloors.getD b 0)) ∧
  (∀ a ∈ range 5, normalizationFloorCheck g.cell.left g.cell.right ((48+a : ℕ) : ℚ)
    (g.cell.numFloors.getD a 0)) ∧
  stripChainCheck g.cell.left g.cell.right ⟨0,0⟩ ⟨0,1⟩ g.cell.strips ∧
  g.cell.strips.length = 44 ∧
  g.boundary 0 = ⟨0,0⟩ ∧ g.boundary 44 = ⟨0,1⟩ ∧
  (∀ j ∈ range 44, (g.boundary j).leOn (g.boundary (j+1)) g.cell.left g.cell.right) ∧
  (∀ i ∈ range 44, g.positions.getD i 0 ≤ 44 ∧
    g.boundary (g.positions.getD i 0) = ⟨endpoint i, -(g.quotients.getD i 0 : ℚ)⟩) ∧
  (∀ j ∈ range 44, (g.strip j).left = g.boundary j ∧
    (g.strip j).right = g.boundary (j+1) ∧
    (∀ i ∈ range 44, (g.strip j).floors.getD i 0 =
      g.quotients.getD i 0 - if g.positions.getD i 0 ≤ j then 1 else 0) ∧
    (g.strip j).weight g.cell.nu = (g.strip j).cachedWeight ∧
    (g.strip j).cachedWeight ≤ 20) ∧
  0 ≤ g.cell.tau ∧ g.cell.tau ≤ 20 ∧ g.cell.rate 10 = g.cell.cost

instance instDecidableGridCertificateCheck (g : GridCertificate) : Decidable g.check :=
  inferInstanceAs (Decidable (_ ∧ _))

theorem affine_grid_mono (a b : ℚ) (f : ℕ → Affine)
    (h : ∀ j < 44, (f j).leOn (f (j+1)) a b) (i j : ℕ)
    (hij : i ≤ j) (hj : j ≤ 44) : (f i).leOn (f j) a b := by
  induction j with
  | zero =>
    have hi : i = 0 := by omega
    subst i
    exact ⟨le_rfl, le_rfl⟩
  | succ j ih =>
    by_cases he : i = j+1
    · subst i; exact ⟨le_rfl, le_rfl⟩
    · have h1 := ih (by omega) (by omega)
      have h2 := h j (by omega)
      exact ⟨h1.1.trans h2.1, h1.2.trans h2.2⟩

theorem ordered_grid_floor (a b : ℚ) (f : ℕ → Affine)
    (h0 : f 0 = ⟨0,0⟩) (h44 : f 44 = ⟨0,1⟩)
    (hmono : ∀ j < 44, (f j).leOn (f (j+1)) a b)
    (A : ℚ) (q : ℤ) (pos j : ℕ) (hp : pos ≤ 44) (hj : j < 44)
    (he : f pos = ⟨A, -(q : ℚ)⟩) :
    floorStripCheck a b A (f j) (f (j+1)) (q-if pos ≤ j then 1 else 0) := by
  have hm := affine_grid_mono a b f hmono
  have hall (x : ℚ) (hx : x = a ∨ x = b) :
      0 ≤ (f pos).eval x ∧ (f pos).eval x ≤ x ∧
      0 ≤ (f j).eval x ∧ (f (j+1)).eval x ≤ x := by
    have hp0 := hm 0 pos (by omega) hp
    have hp1 := hm pos 44 hp le_rfl
    have hj0 := hm 0 j (by omega) (by omega)
    have hj1 := hm (j+1) 44 (by omega) le_rfl
    rw [h0] at hp0 hj0
    rw [h44] at hp1 hj1
    rcases hx with rfl | rfl
    · simpa only [Affine.eval, zero_mul, zero_add, one_mul] using
        And.intro hp0.1 (And.intro hp1.1 (And.intro hj0.1 hj1.1))
    · simpa only [Affine.eval, zero_mul, zero_add, one_mul] using
        And.intro hp0.2 (And.intro hp1.2 (And.intro hj0.2 hj1.2))
  have hat (x : ℚ) (hx : x = a ∨ x = b) :
      ((q-if pos ≤ j then 1 else 0 : ℤ) : ℚ)*x ≤ A-(f (j+1)).eval x ∧
      A-(f j).eval x ≤ (((q-if pos ≤ j then 1 else 0 : ℤ) : ℚ)+1)*x := by
    have hh := hall x hx
    have heq : (f pos).eval x = A-(q : ℚ)*x := by rw [he]; simp [Affine.eval, sub_eq_add_neg]
    by_cases hpos : pos ≤ j
    · have horder := hm pos j hpos (by omega)
      have hle : (f pos).eval x ≤ (f j).eval x := by
        rcases hx with rfl | rfl
        · exact horder.1
        · exact horder.2
      simp only [hpos, ite_true, Int.cast_sub, Int.cast_one]
      constructor <;> nlinarith [hh.1, hh.2.2.2]
    · have horder := hm (j+1) pos (by omega) hp
      have hle : (f (j+1)).eval x ≤ (f pos).eval x := by
        rcases hx with rfl | rfl
        · exact horder.1
        · exact horder.2
      simp only [hpos, ite_false, sub_zero]
      constructor <;> nlinarith [hh.2.1, hh.2.2.1]
  have ha := hat a (Or.inl rfl)
  have hb := hat b (Or.inr rfl)
  unfold floorStripCheck Affine.leOn Affine.eval at *
  exact ⟨⟨by nlinarith [ha.1], by nlinarith [hb.1]⟩,
    ⟨by nlinarith [ha.2], by nlinarith [hb.2]⟩⟩

theorem GridCertificate.check_sound (g : GridCertificate) (h : g.check) : g.cell.check := by
  rcases h with ⟨hl, hlr, hr, hd, hn, hc, hlen, h0, h44, hmono, hroot, hstrip,
    ht0, ht20, hrate⟩
  refine ⟨hl, hlr, hr, hd, hn, hc, ?_, by omega, ht0, ht20, hrate⟩
  intro s hs
  obtain ⟨j, hj, he⟩ := List.mem_iff_getElem.mp hs
  have hj44 : j < 44 := by omega
  have hsj : g.strip j = s := by
    unfold GridCertificate.strip
    rw [List.getD_eq_getElem _ _ hj, he]
  have hss := hstrip j (mem_range.mpr hj44)
  rw [hsj] at hss
  refine ⟨?_, hss.2.2.2.1, hss.2.2.2.2⟩
  intro i hi
  have hri := hroot i hi
  rw [hss.1, hss.2.1, hss.2.2.1 i hi]
  exact ordered_grid_floor g.cell.left g.cell.right g.boundary h0 h44
    (fun k hk => hmono k (mem_range.mpr hk)) (endpoint i) (g.quotients.getD i 0)
    (g.positions.getD i 0) j hri.1 hj44 hri.2

end OddZetaMixed.H158MiddleCells
