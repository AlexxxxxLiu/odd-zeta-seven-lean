import OddZetaMixed.H158Kernel
import OddZetaMixed.EvenBasis
import Mathlib.Algebra.Polynomial.AlgebraMap

noncomputable section

namespace OddZetaMixed

open Polynomial

def centeredMultiplier (n i j : ℕ) : ℚ[X] :=
  (evenBasis i * evenBasis j).comp (X + C (79*(n : ℚ)+1))

theorem centeredMultiplier_ne_zero (n i j : ℕ) : centeredMultiplier n i j ≠ 0 := by
  apply comp_X_add_C_ne_zero_iff.mpr
  exact mul_ne_zero (evenBasis_ne_zero i) (evenBasis_ne_zero j)

theorem centeredMultiplier_degree (n i j : ℕ) :
    (centeredMultiplier n i j).natDegree = 2*i+2*j := by
  rw [centeredMultiplier, natDegree_comp,
    natDegree_mul (evenBasis_ne_zero i) (evenBasis_ne_zero j),
    evenBasis_natDegree, evenBasis_natDegree, natDegree_X_add_C, mul_one]

theorem h158Kernel_ne_zero (n : ℕ) : h158Kernel n ≠ 0 := by
  intro h
  have hd := h158Kernel_degree n
  rw [h, RatFunc.intDegree_zero] at hd
  have hn : (0 : ℤ) ≤ n := Int.natCast_nonneg _
  omega

def matrixEntryKernel (n i j : ℕ) : RatFunc ℚ :=
  h158Kernel n * algebraMap ℚ[X] (RatFunc ℚ) (centeredMultiplier n i j)

theorem matrixEntryKernel_degree (n i j : ℕ) :
    (matrixEntryKernel n i j).intDegree = -92*(n : ℤ)-15+2*(i : ℤ)+2*(j : ℤ) := by
  have hinj := IsFractionRing.injective ℚ[X] (RatFunc ℚ)
  have hm : algebraMap ℚ[X] (RatFunc ℚ) (centeredMultiplier n i j) ≠ 0 := by
    simpa only [map_zero] using hinj.ne (centeredMultiplier_ne_zero n i j)
  rw [matrixEntryKernel, RatFunc.intDegree_mul (h158Kernel_ne_zero n) hm,
    h158Kernel_degree, RatFunc.intDegree_polynomial, centeredMultiplier_degree]
  push_cast
  ring

/-- Every entry multiplier at rank `2n` preserves strict properness of the kernel. -/
theorem rank_two_entry_degree_bound (n : ℕ) (i j : Fin (2*n)) :
    (matrixEntryKernel n i j).intDegree ≤ -84*(n : ℤ)-19 := by
  rw [matrixEntryKernel_degree]
  have hi := i.isLt
  have hj := j.isLt
  omega

end OddZetaMixed
