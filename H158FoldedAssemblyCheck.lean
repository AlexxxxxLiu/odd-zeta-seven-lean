import OddZetaMixed.H158FoldedAssembly

open OddZetaMixed LocalJetValuation

example : h158CentralClass 1 11 (by decide) = (3 : Fin 11) := by decide
example : h158ReflectionClass 1 11 (by decide) (0 : Fin 11) = (6 : Fin 11) := by decide
example : h158ReflectionClass 1 11 (by decide) (6 : Fin 11) = (0 : Fin 11) := by decide
example : h158OrbitAnchor 1 11 (by decide) (0 : Fin 11) = 0 := by decide
example : h158OrbitAnchor 1 11 (by decide) (6 : Fin 11) = -160 := by decide
example : h158OrbitAnchor 1 11 (by decide) (3 : Fin 11) = -80 := by decide
example : Fintype.card (H158OrbitClass 1 11 (by decide)) = 6 := by decide

example {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n)
    (hp : 0 < p) (hp2 : p ≠ 2) :
    h158RowDiagonal n p * h158SevenMatrix n * h158RowDiagonal n p =
      h158FoldedEvaluationFin n p hp * h158FoldedMomentFin n p hn hp *
        (h158FoldedEvaluationFin n p hp).transpose :=
  h158_scaled_folded_fin_factorization n hn hp hp2

example {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hsq : 57*n < p^2) (u v : Fin (4*n)) :
    FormalAtLeast p (-h158ClassCost p n (h158CentralClass n p hp)+
      2*(u.val : ℤ)+2*(v.val : ℤ))
      (h158FoldedMoment n p hn hp none u v) :=
  h158FoldedMoment_floor n hn hp hsq none u v

example (n p : ℕ) (hn : 0 < n) (hp : 0 < p) (u v : Fin (4*n))
    (hu : 2*n ≤ u.val) : h158FoldedMoment n p hn hp none u v = 0 := by
  simp only [h158FoldedMoment, h158PadCentralMoment, not_lt.mpr hu, dite_false]

example : (∑ _c : Fin 11, (1 : ℕ)) =
    (∑ c ∈ Finset.univ.filter (fun c => c < h158ReflectionClass 1 11 (by decide) c),
      (1+1 : ℕ)) +
    ∑ _c ∈ Finset.univ.filter (fun c => h158ReflectionClass 1 11 (by decide) c = c),
      (1 : ℕ) :=
  sum_involution_orbits _ (h158ReflectionClass_involutive 1 11 (by decide)) _

#print axioms h158_scaled_folded_fin_factorization
#print axioms h158FoldedMoment_floor
#print axioms h158_folded_minor_allocation_floor
#print axioms h158_folded_det_floor_of_allocation_bound
