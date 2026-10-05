import OddZetaMixed.ZetaTail
import Mathlib.NumberTheory.Real.Irrational

/-! Explicit named-value and standard Riemann-zeta forms of the seven-coordinate
conclusion. These are equivalences, not assertions of irrationality. -/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

def sevenOddWeights : Finset ℕ := {7,9,11,13,15,17,19}

theorem sevenOddWeights_index_iff (s : ℕ) :
    s ∈ sevenOddWeights ↔ ∃ i : Fin 7, s = 7+2*i.val := by
  constructor
  · intro hs
    simp only [sevenOddWeights, Finset.mem_insert, Finset.mem_singleton] at hs
    rcases hs with rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact ⟨0,rfl⟩
    · exact ⟨1,rfl⟩
    · exact ⟨2,rfl⟩
    · exact ⟨3,rfl⟩
    · exact ⟨4,rfl⟩
    · exact ⟨5,rfl⟩
    · exact ⟨6,rfl⟩
  · rintro ⟨i,rfl⟩
    fin_cases i <;> norm_num [sevenOddWeights]

theorem sevenZeta_irrational_iff_standard :
    (∃ i : Fin 7, Irrational (sevenZetaValues i)) ↔
      ∃ s ∈ sevenOddWeights, Irrational ((riemannZeta (s : ℂ)).re) := by
  constructor
  · rintro ⟨i,hi⟩
    exact ⟨7+2*i.val, (sevenOddWeights_index_iff _).mpr ⟨i,rfl⟩,
      (sevenZetaValues_eq_re_riemannZeta i) ▸ hi⟩
  · rintro ⟨s,hs,hi⟩
    obtain ⟨i,rfl⟩ := (sevenOddWeights_index_iff s).mp hs
    exact ⟨i,(sevenZetaValues_eq_re_riemannZeta i).symm ▸ hi⟩

#print axioms sevenZeta_irrational_iff_standard

end OddZetaMixed
