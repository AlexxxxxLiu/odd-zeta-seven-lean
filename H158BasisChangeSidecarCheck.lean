import OddZetaMixed.H158BasisChange

noncomputable section
open OddZetaMixed Polynomial Finset

example : (h158UnitBasisChange (fun i : Fin 0 => evenBasis i.val)).det = 1 := by
  exact h158UnitBasisChange_det _ (fun i => evenBasis_natDegree i.val) (fun _ => rfl)

example :
    h158UnitBasisChange
      (fun i : Fin 3 => C ((evenBasis i.val).leadingCoeff) * X^(2*i.val)) =
        !![1, 0, 0; 0, 1, 0; 0, 1/12, 1] := by
  symm
  apply h158UnitBasisChange_unique
  intro i
  fin_cases i
  all_goals norm_num [Fin.sum_univ_succ, evenBasis, evenBasisProduct, Finset.prod_range_succ]
  all_goals ring

example :
    (∏ i : Fin 4, ((evenBasis i.val).leadingCoeff : ℝ)^2 * (2 : ℝ)^(4*i.val)) =
      (16384/18225 : ℝ) := by
  norm_num [Fin.prod_univ_succ, evenBasis_leadingCoeff_succ]

example (a : Fin 4 → ℚ) : (h158AdaptiveMonic 15 (151/2) a).natDegree = 15 :=
  h158AdaptiveMonic_natDegree 15 (151/2) a

example (n : ℕ) (hn : 0 < n) (a : Fin (2*n) → Fin 4 → ℚ) :
    (h158BasisFunctional n hn (fun i => h158ScaledMonicEven n i.val
      (h158AdaptiveMonic i.val (75+1/(2*(n : ℚ))) (a i)))).det =
        Matrix.det (h158Functional n) := h158AdaptiveMonic_det n hn a

example (n : ℕ) (hn : 0 < n) (Q : Fin (2*n) → ℚ[X])
    (hmonic : ∀ i, (Q i).Monic) (hdeg : ∀ i, (Q i).natDegree = i.val) :
    Matrix.det (h158Functional n) =
      (∏ i : Fin (2*n), ((evenBasis i.val).leadingCoeff : ℝ)^2 * (n : ℝ)^(4*i.val)) *
        (h158BasisFunctional n hn
          (fun i => (Q i).comp (C ((n : ℚ)⁻¹^2)*X^2))).det :=
  h158ScaledMonicEven_normalization n hn Q hmonic hdeg

#print axioms h158UnitBasisChange_lower
#print axioms h158UnitBasisChange_diagonal
#print axioms h158UnitBasisChange_polynomial
#print axioms h158UnitBasisChange_unique
#print axioms h158BasisMatrix_congruence
#print axioms h158BasisMatrix_det
#print axioms h158BasisFunctional_congruence
#print axioms h158BasisFunctional_det
#print axioms h158ScaledMonicEven_det
#print axioms h158AdaptiveMonic_det
#print axioms h158ScaledMonicEven_normalization
