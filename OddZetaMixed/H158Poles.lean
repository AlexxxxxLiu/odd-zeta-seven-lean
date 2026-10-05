import OddZetaMixed.KernelBasis
import Mathlib.Algebra.Polynomial.PartialFractions
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.List.Nodup

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

/-- Addresses of the unreduced denominator, with every multiplicity retained. -/
def h158PoleList (n : ℕ) : List ℕ :=
  (List.range 16).flatMap fun b =>
    (List.range ((52-2*b)*n+1)).map fun j => (53+b)*n+1+j

def h158PoleSet (n : ℕ) : Finset ℕ := (h158PoleList n).toFinset

def h158PoleOrder (n k : ℕ) : ℕ := (h158PoleList n).count k

theorem list_flatMap_map_prod {M : Type*} [CommMonoid M]
    (l : List ℕ) (f : ℕ → List ℕ) (g : ℕ → M) :
    ((l.flatMap f).map g).prod = (l.map fun b => ((f b).map g).prod).prod := by
  induction l with
  | nil => simp
  | cons b l ih => simp [ih]

theorem range_map_prod_eq {M : Type*} [CommMonoid M] (m : ℕ) (f : ℕ → M) :
    ((List.range m).map f).prod = ∏ j ∈ range m, f j := by
  induction m with
  | zero => simp
  | succ m ih => simp [List.range_succ, Finset.prod_range_succ, ih]

theorem h158_denominator_list (n : ℕ) :
    h158Denominator n = ((h158PoleList n).map fun k : ℕ => X + C (k : ℚ)).prod := by
  simp only [h158PoleList, list_flatMap_map_prod, List.map_map,
    Function.comp_def]
  simp only [range_map_prod_eq]
  unfold h158Denominator rising
  apply Finset.prod_congr rfl
  intro b hb
  apply Finset.prod_congr rfl
  intro j hj
  congr 2
  push_cast
  ring

theorem h158_denominator_powers (n : ℕ) :
    h158Denominator n = ∏ k ∈ h158PoleSet n, (X + C (k : ℚ))^(h158PoleOrder n k) := by
  rw [h158_denominator_list, Finset.prod_list_map_count (h158PoleList n)
    (fun k : ℕ => X + C (k : ℚ))]
  rfl

theorem h158_pole_address_bounds (n k : ℕ) (hk : k ∈ h158PoleSet n) :
    53*n+1 ≤ k ∧ k ≤ 105*n+1 := by
  simp only [h158PoleSet, List.mem_toFinset, h158PoleList, List.mem_flatMap,
    List.mem_range, List.mem_map] at hk
  obtain ⟨b, hb, j, hj, rfl⟩ := hk
  have hsub : 52-2*b+2*b=52 := by omega
  constructor <;> nlinarith

theorem h158_pole_order_positive (n k : ℕ) (hk : k ∈ h158PoleSet n) :
    0 < h158PoleOrder n k := by
  simpa only [h158PoleOrder, h158PoleSet, List.mem_toFinset] using
    (List.count_pos_iff.mpr (List.mem_toFinset.mp hk))

theorem list_count_flatMap (l : List ℕ) (f : ℕ → List ℕ) (k : ℕ) :
    (l.flatMap f).count k = (l.map fun b => (f b).count k).sum := by
  induction l with
  | nil => simp
  | cons b l ih => simp [ih]

theorem h158_pole_order_le (n k : ℕ) : h158PoleOrder n k ≤ 16 := by
  unfold h158PoleOrder h158PoleList
  rw [list_count_flatMap]
  have hb (b : ℕ) :
      ((List.range ((52-2*b)*n+1)).map fun j => (53+b)*n+1+j).count k ≤ 1 := by
    apply List.nodup_iff_count_le_one.mp
    apply (List.nodup_map_iff (fun a b h => Nat.add_left_cancel h)).mpr
    exact List.nodup_range
  calc
    _ ≤ ((List.range 16).map fun _ => 1).sum := List.sum_le_sum (by
      intro b hb'
      exact hb b)
    _ = 16 := by norm_num

theorem h158_pole_factors_coprime (n : ℕ) :
    Set.Pairwise (h158PoleSet n : Set ℕ) (fun k l : ℕ =>
      IsCoprime (X + C (k : ℚ)) (X + C (l : ℚ))) := by
  intro k hk l hl hkl
  have hinj : Function.Injective (fun j : ℕ => -(j : ℚ)) := by
    intro a b h
    exact_mod_cast neg_injective h
  simpa only [C_neg, sub_neg_eq_add] using
    (Polynomial.pairwise_coprime_X_sub_C hinj hkl)

end OddZetaMixed
