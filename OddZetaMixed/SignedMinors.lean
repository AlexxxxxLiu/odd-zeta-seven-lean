import Mathlib.Algebra.Order.AddGroupWithTop
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.RingTheory.Valuation.Basic
import Mathlib.Tactic

/-!
# Signed local minor bounds

The algebraic part of Section 2 of `work/odd_zeta_global_budget_20261005.md`.
All costs and index arithmetic are in `Int`: negative slots are never clamped.
Valuations take values in `WithTop Int`, so zero entries and zero determinants
are allowed. The entrywise valuation bound is an explicit hypothesis; this
file does not construct the jet decomposition or prove Cauchy--Binet selection.
-/

namespace OddZetaMixed.SignedMinors

/-- The signed slots with decrement `2 * d`, including negative slots. -/
theorem sum_signed_cost_step (w d : Int) (k : Nat) :
    (Finset.range k).sum (fun i => w - 2 * d * (i : Int)) =
      (k : Int) * w - d * (k : Int) * ((k : Int) - 1) := by
  induction k with
  | zero => simp
  | succ k ih =>
      rw [Finset.sum_range_succ, ih]
      push_cast
      ring

/-- The nonfixed-orbit costs `w, w - 2, w - 4, ...`. -/
theorem sum_signed_cost (w : Int) (k : Nat) :
    (Finset.range k).sum (fun i => w - 2 * (i : Int)) =
      (k : Int) * w - (k : Int) * ((k : Int) - 1) := by
  simpa using sum_signed_cost_step w 1 k

/-- The fixed-orbit costs `w, w - 4, w - 8, ...`. -/
theorem sum_even_jet_signed_cost (w : Int) (k : Nat) :
    (Finset.range k).sum (fun i => w - 4 * (i : Int)) =
      (k : Int) * w - 2 * (k : Int) * ((k : Int) - 1) := by
  simpa using sum_signed_cost_step w 2 k

theorem twice_sum_range_indices (k : Nat) :
    2 * (Finset.range k).sum (fun i => (i : Int)) =
      (k : Int) * ((k : Int) - 1) := by
  induction k with
  | zero => simp
  | succ k ih =>
      rw [Finset.sum_range_succ]
      push_cast
      nlinarith

theorem twice_sum_fin_indices (k : Nat) :
    2 * Finset.univ.sum (fun i : Fin k => (i.val : Int)) =
      (k : Int) * ((k : Int) - 1) := by
  rw [Fin.sum_univ_eq_sum_range]
  exact twice_sum_range_indices k

/-- The `i`th selected nonnegative index is at least `i`. -/
theorem index_le_of_strictMono {k : Nat} {a : Fin k -> Nat}
    (ha : StrictMono a) (i : Fin k) : i.val <= a i := by
  cases k with
  | zero => exact Fin.elim0 i
  | succ k =>
      induction i using Fin.induction with
      | zero => exact Nat.zero_le _
      | succ i ih =>
          exact Nat.succ_le_of_lt (lt_of_le_of_lt ih (ha Fin.castSucc_lt_succ))

/-- A division-free version, useful when combining row and column bounds. -/
theorem twice_sum_indices_lower {k : Nat} {a : Fin k -> Nat}
    (ha : StrictMono a) :
    (k : Int) * ((k : Int) - 1) <=
      2 * Finset.univ.sum (fun i => (a i : Int)) := by
  have hsum : Finset.univ.sum (fun i : Fin k => (i.val : Int)) <=
      Finset.univ.sum (fun i => (a i : Int)) := by
    apply Finset.sum_le_sum
    intro i _
    exact_mod_cast index_le_of_strictMono ha i
  have hid := twice_sum_fin_indices k
  linarith

/-- Increasing distinct nonnegative indices have sum at least `k(k-1)/2`. -/
theorem sum_indices_lower {k : Nat} {a : Fin k -> Nat} (ha : StrictMono a) :
    (k : Int) * ((k : Int) - 1) / 2 <=
      Finset.univ.sum (fun i => (a i : Int)) := by
  apply Int.ediv_le_of_le_mul (by norm_num)
  simpa [mul_comm] using twice_sum_indices_lower ha

/-- Separate row and column selections need not be the same. -/
theorem row_column_indices_lower {k : Nat} {a b : Fin k -> Nat}
    (ha : StrictMono a) (hb : StrictMono b) :
    (k : Int) * ((k : Int) - 1) <=
      Finset.univ.sum (fun i => (a i : Int)) +
        Finset.univ.sum (fun i => (b i : Int)) := by
  have hrow := twice_sum_indices_lower ha
  have hcol := twice_sum_indices_lower hb
  linarith

/-- Every permutation term uses each selected row and column exactly once. -/
theorem permutation_entry_cost_sum {k : Nat} (mu d : Int) (a b : Fin k -> Nat)
    (sigma : Equiv.Perm (Fin k)) :
    Finset.univ.sum (fun i => mu + d * (a (sigma i) : Int) + d * (b i : Int)) =
      (k : Int) * mu + d *
        (Finset.univ.sum (fun i => (a i : Int)) +
          Finset.univ.sum (fun i => (b i : Int))) := by
  have hp := Equiv.sum_comp sigma (fun i => (a i : Int))
  simp only [Finset.sum_add_distrib, <- Finset.mul_sum, hp, Finset.sum_const,
    Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  ring

theorem permutation_entry_cost_lower {k : Nat} (mu d : Int) (hd : 0 <= d)
    {a b : Fin k -> Nat} (ha : StrictMono a) (hb : StrictMono b)
    (sigma : Equiv.Perm (Fin k)) :
    (k : Int) * mu + d * (k : Int) * ((k : Int) - 1) <=
      Finset.univ.sum (fun i => mu + d * (a (sigma i) : Int) + d * (b i : Int)) := by
  rw [permutation_entry_cost_sum]
  have h := mul_le_mul_of_nonneg_left (row_column_indices_lower ha hb) hd
  nlinarith

section Valuation

variable {R : Type*} [CommRing R] (v : AddValuation R (WithTop Int))

/-- Finite products turn additive valuations into sums, also at zero. -/
theorem valuation_prod {I : Type*} (s : Finset I) (f : I -> R) :
    v (s.prod f) = s.sum (fun i => v (f i)) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert i s hi ih => simp [hi, ih]

theorem int_sum_le_valuation_prod {I : Type*} (s : Finset I) (f : I -> R)
    (c : I -> Int) (h : forall i, i ∈ s -> (c i : WithTop Int) <= v (f i)) :
    ((s.sum c : Int) : WithTop Int) <= v (s.prod f) := by
  rw [valuation_prod, WithTop.coe_sum]
  exact Finset.sum_le_sum h

/-- A uniform lower bound on Leibniz products bounds the determinant.
The permutation signs have valuation zero. -/
theorem determinant_lower_of_termwise {k : Nat} (M : Matrix (Fin k) (Fin k) R)
    (L : Int)
    (h : forall sigma : Equiv.Perm (Fin k),
      (L : WithTop Int) <= v (Finset.univ.prod (fun i => M (sigma i) i))) :
    (L : WithTop Int) <= v M.det := by
  classical
  rw [Matrix.det_apply]
  apply v.map_le_sum
  intro sigma _
  rcases Int.units_eq_one_or (Equiv.Perm.sign sigma) with hs | hs
  · simpa [hs] using h sigma
  · simpa [hs] using h sigma

/-- The entry hypothesis for a jet block gives the local termwise bound.
`d = 1` is the ordinary case; `d = 2` is the even-jet case. -/
theorem termwise_valuation_lower {k : Nat} (M : Matrix (Fin k) (Fin k) R)
    (mu d : Int) (hd : 0 <= d) {a b : Fin k -> Nat}
    (ha : StrictMono a) (hb : StrictMono b)
    (hentry : forall i j,
      ((mu + d * (a i : Int) + d * (b j : Int) : Int) : WithTop Int) <= v (M i j))
    (sigma : Equiv.Perm (Fin k)) :
    (((k : Int) * mu + d * (k : Int) * ((k : Int) - 1) : Int) : WithTop Int) <=
      v (Finset.univ.prod (fun i => M (sigma i) i)) := by
  apply le_trans _ (int_sum_le_valuation_prod v Finset.univ
    (fun i => M (sigma i) i)
    (fun i => mu + d * (a (sigma i) : Int) + d * (b i : Int))
    (fun i _ => hentry (sigma i) i))
  exact WithTop.coe_le_coe.mpr (permutation_entry_cost_lower mu d hd ha hb sigma)

/-- A minor bound with independent row and column selections. -/
theorem minor_valuation_lower {k : Nat} (M : Matrix (Fin k) (Fin k) R)
    (mu d : Int) (hd : 0 <= d) {a b : Fin k -> Nat}
    (ha : StrictMono a) (hb : StrictMono b)
    (hentry : forall i j,
      ((mu + d * (a i : Int) + d * (b j : Int) : Int) : WithTop Int) <= v (M i j)) :
    (((k : Int) * mu + d * (k : Int) * ((k : Int) - 1) : Int) : WithTop Int) <=
      v M.det := by
  apply determinant_lower_of_termwise
  exact termwise_valuation_lower v M mu d hd ha hb hentry

/-- Any selected (possibly nonprincipal) minor of a natural-indexed block. -/
theorem submatrix_valuation_lower {k : Nat} (W : Matrix Nat Nat R)
    (mu d : Int) (hd : 0 <= d) (a b : Fin k -> Nat)
    (ha : StrictMono a) (hb : StrictMono b)
    (hentry : forall i j : Nat,
      ((mu + d * (i : Int) + d * (j : Int) : Int) : WithTop Int) <= v (W i j)) :
    (((k : Int) * mu + d * (k : Int) * ((k : Int) - 1) : Int) : WithTop Int) <=
      v (W.submatrix a b).det := by
  exact minor_valuation_lower v (W.submatrix a b) mu d hd ha hb
    (fun i j => hentry (a i) (b j))

/-- Signed-slot formulation: no hypothesis that any cost is nonnegative. -/
theorem minor_signed_cost_bound {k : Nat} (M : Matrix (Fin k) (Fin k) R)
    (w d : Int) (hd : 0 <= d) {a b : Fin k -> Nat}
    (ha : StrictMono a) (hb : StrictMono b)
    (hentry : forall i j,
      ((-w + d * (a i : Int) + d * (b j : Int) : Int) : WithTop Int) <= v (M i j)) :
    ((-((Finset.range k).sum (fun i => w - 2 * d * (i : Int))) : Int) : WithTop Int)
      <= v M.det := by
  rw [sum_signed_cost_step]
  have hid : -((k : Int) * w - d * (k : Int) * ((k : Int) - 1)) =
      (k : Int) * (-w) + d * (k : Int) * ((k : Int) - 1) := by ring
  rw [hid]
  exact minor_valuation_lower v M (-w) d hd ha hb hentry

/-- Ordinary jets have signed increments `w - 2*i`. -/
theorem ordinary_minor_signed_cost_bound {k : Nat} (M : Matrix (Fin k) (Fin k) R)
    (w : Int) {a b : Fin k -> Nat} (ha : StrictMono a) (hb : StrictMono b)
    (hentry : forall i j,
      ((-w + (a i : Int) + (b j : Int) : Int) : WithTop Int) <= v (M i j)) :
    ((-((Finset.range k).sum (fun i => w - 2 * (i : Int))) : Int) : WithTop Int)
      <= v M.det := by
  simpa using minor_signed_cost_bound v M w 1 (by norm_num) ha hb (by simpa using hentry)

/-- Fixed reflection classes have even jets and signed increments `w - 4*i`. -/
theorem even_jet_minor_signed_cost_bound {k : Nat} (M : Matrix (Fin k) (Fin k) R)
    (w : Int) {a b : Fin k -> Nat} (ha : StrictMono a) (hb : StrictMono b)
    (hentry : forall i j,
      ((-w + 2 * (a i : Int) + 2 * (b j : Int) : Int) : WithTop Int) <= v (M i j)) :
    ((-((Finset.range k).sum (fun i => w - 4 * (i : Int))) : Int) : WithTop Int)
      <= v M.det := by
  simpa using minor_signed_cost_bound v M w 2 (by norm_num) ha hb hentry

/-- The cost inequality in integer form when the determinant valuation is finite.
The right side can be strictly negative, certifying positive divisibility. -/
theorem minor_cost_upper_of_finite {k : Nat} (M : Matrix (Fin k) (Fin k) R)
    (w d z : Int) (hd : 0 <= d) {a b : Fin k -> Nat}
    (ha : StrictMono a) (hb : StrictMono b)
    (hentry : forall i j,
      ((-w + d * (a i : Int) + d * (b j : Int) : Int) : WithTop Int) <= v (M i j))
    (hfinite : v M.det = (z : WithTop Int)) :
    -z <= (Finset.range k).sum (fun i => w - 2 * d * (i : Int)) := by
  have h := minor_signed_cost_bound v M w d hd ha hb hentry
  rw [hfinite, WithTop.coe_le_coe] at h
  linarith

end Valuation

end OddZetaMixed.SignedMinors
