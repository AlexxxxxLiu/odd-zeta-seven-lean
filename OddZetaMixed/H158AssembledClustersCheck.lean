import OddZetaMixed.H158AssembledClusters
import OddZetaMixed.TrustAudit

open OddZetaMixed

#check h158_scaled_assembled_factorization
#check h158_scaled_assembled_fin_factorization
#check h158AssembledEvaluation_coeff_nonneg
#check h158AssembledEvaluationFin_coeff_nonneg
#check h158_scaled_det_eq_assembled_rectangular_sum

#print axioms h158AssembledMoments_apply
#print axioms h158AssembledMoments_diagonal_block
#print axioms h158AssembledMoments_off_block
#print axioms h158_scaled_assembled_factorization
#print axioms h158AssembledEvaluation_coeff_nonneg
#print axioms h158Assembled_fin_product_eq
#print axioms h158_scaled_assembled_fin_factorization
#print axioms h158AssembledEvaluationFin_coeff_nonneg
#print axioms h158_assembled_fin_determinant_fee
#print axioms h158_scaled_det_eq_assembled_rectangular_sum

example : Fintype.card (H158ClusterColumn 1 13) = 52 := by decide

example (i : Fin 2) (u : Fin 52) (m : Fin 7 →₀ ℕ) :
    0 ≤ padicValRat 13
      ((h158AssembledEvaluationFin 1 13 (fun c => -(c.val : ℤ)) i u).coeff m) := by
  exact h158AssembledEvaluationFin_coeff_nonneg 1 13 (by norm_num) (by norm_num)
    (fun c => -(c.val : ℤ)) i u m

example :
    h158RowDiagonal 1 13 * h158SevenMatrix 1 * h158RowDiagonal 1 13 =
      h158AssembledEvaluationFin 1 13 (fun c => -(c.val : ℤ)) *
        h158AssembledMomentsFin 1 13 (by decide) (by decide) (fun c => -(c.val : ℤ)) *
        (h158AssembledEvaluationFin 1 13 (fun c => -(c.val : ℤ))).transpose :=
  h158_scaled_assembled_fin_factorization 1 13 (by decide) (by decide)
    (fun c => -(c.val : ℤ))

example (u v : Fin 4) :
    h158AssembledMoments 1 13 (by decide) (by decide) (fun c => -(c.val : ℤ))
      ((0 : Fin 13), u) ((1 : Fin 13), v) = 0 :=
  h158AssembledMoments_off_block 1 13 (by decide) (by decide)
    (fun c => -(c.val : ℤ)) 0 1 (by decide) u v

audit_project_axioms OddZetaMixed
