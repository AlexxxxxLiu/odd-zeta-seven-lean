import Mathlib.FieldTheory.RatFunc.Degree
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Algebra.Polynomial.Derivative
import Mathlib.Tactic

noncomputable section

namespace OddZetaMixed

open Polynomial Finset

/-- Polynomial rising factorial with a rational starting point. -/
def rising (a : ℚ) (k : ℕ) : ℚ[X] :=
  ∏ j ∈ range k, (X + C (a+j))

theorem rising_monic (a : ℚ) (k : ℕ) : (rising a k).Monic := by
  apply monic_prod_of_monic
  intro j _
  exact monic_X_add_C _

theorem rising_degree (a : ℚ) (k : ℕ) : (rising a k).natDegree = k := by
  rw [rising, natDegree_prod_of_monic]
  · simp only [natDegree_X_add_C, Finset.sum_const, Finset.card_range, smul_eq_mul, mul_one]
  · intro j _
    exact monic_X_add_C _

def h158Numerator (n : ℕ) : ℚ[X] :=
  (X + C (79*(n : ℚ)+1)) * ∏ a ∈ range 5,
    rising 1 ((48+a)*n) * rising (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)) ((48+a)*n)

def h158Denominator (n : ℕ) : ℚ[X] :=
  ∏ b ∈ range 16, rising (((53+b)*n : ℕ)+1) ((52-2*b)*n+1)

def h158Normalization (n : ℕ) : ℚ :=
  2 * (∏ b ∈ range 16, (Nat.factorial ((52-2*b)*n) : ℚ)) /
    (∏ a ∈ range 5, (Nat.factorial ((48+a)*n) : ℚ)^2)

/-- Original h158 normalization and the full, unreduced denominator are kept. -/
def h158Kernel (n : ℕ) : RatFunc ℚ :=
  algebraMap ℚ[X] (RatFunc ℚ) (C (h158Normalization n) * h158Numerator n) /
    algebraMap ℚ[X] (RatFunc ℚ) (h158Denominator n)

theorem h158Numerator_monic (n : ℕ) : (h158Numerator n).Monic := by
  apply (monic_X_add_C _).mul
  apply monic_prod_of_monic
  intro a _
  exact (rising_monic _ _).mul (rising_monic _ _)

theorem h158Denominator_monic (n : ℕ) : (h158Denominator n).Monic := by
  apply monic_prod_of_monic
  intro b _
  exact rising_monic _ _

theorem h158Numerator_degree (n : ℕ) : (h158Numerator n).natDegree = 500*n+1 := by
  unfold h158Numerator
  rw [natDegree_mul (monic_X_add_C _).ne_zero
    (monic_prod_of_monic _ _ (fun a _ => (rising_monic _ _).mul (rising_monic _ _))).ne_zero]
  rw [natDegree_X_add_C]
  rw [natDegree_prod_of_monic _ _ (fun a _ => (rising_monic _ _).mul (rising_monic _ _))]
  simp_rw [natDegree_mul (rising_monic _ _).ne_zero (rising_monic _ _).ne_zero, rising_degree]
  simp [Finset.sum_range_succ]
  omega

theorem h158Denominator_degree (n : ℕ) : (h158Denominator n).natDegree = 592*n+16 := by
  rw [h158Denominator, natDegree_prod_of_monic _ _ (fun b _ => rising_monic _ _)]
  simp_rw [rising_degree]
  simp [Finset.sum_range_succ]
  omega

theorem h158Normalization_ne_zero (n : ℕ) : h158Normalization n ≠ 0 := by
  unfold h158Normalization
  apply div_ne_zero
  · apply mul_ne_zero (by norm_num)
    apply Finset.prod_ne_zero_iff.mpr
    intro b _
    exact_mod_cast Nat.factorial_ne_zero _
  · apply Finset.prod_ne_zero_iff.mpr
    intro a _
    apply pow_ne_zero
    exact_mod_cast Nat.factorial_ne_zero _

theorem h158Kernel_degree (n : ℕ) :
    (h158Kernel n).intDegree = -92*(n : ℤ)-15 := by
  have hn : C (h158Normalization n) * h158Numerator n ≠ 0 :=
    mul_ne_zero (by simpa using h158Normalization_ne_zero n) (h158Numerator_monic n).ne_zero
  have hd := (h158Denominator_monic n).ne_zero
  have hinj := IsFractionRing.injective ℚ[X] (RatFunc ℚ)
  have hn' : algebraMap ℚ[X] (RatFunc ℚ) (C (h158Normalization n) * h158Numerator n) ≠ 0 :=
    by simpa only [map_zero] using hinj.ne hn
  have hd' : algebraMap ℚ[X] (RatFunc ℚ) (h158Denominator n) ≠ 0 :=
    by simpa only [map_zero] using hinj.ne hd
  rw [h158Kernel, RatFunc.intDegree_div hn' hd', RatFunc.intDegree_polynomial, RatFunc.intDegree_polynomial]
  rw [natDegree_C_mul (h158Normalization_ne_zero n), h158Numerator_degree, h158Denominator_degree]
  push_cast
  ring

theorem rising_linear_factor_dvd (k m : ℕ) (hk : 1 ≤ k) (hkm : k ≤ m) :
    X + C (k : ℚ) ∣ rising 1 m := by
  have hmem : k-1 ∈ range m := by simp only [mem_range]; omega
  have h := Finset.dvd_prod_of_mem (fun j : ℕ => (X + C ((1 : ℚ)+j))) hmem
  have heq : (1 : ℚ) + ((k-1 : ℕ) : ℚ) = k := by
    rw [Nat.cast_sub hk]
    norm_num
  simpa only [heq, rising] using h

/-- The five numerator blocks all vanish at each protected negative integer. -/
theorem protected_fifth_power_dvd (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ 48*n) :
    (X + C (k : ℚ))^5 ∣ h158Numerator n := by
  have hb (a : ℕ) (_ha : a ∈ range 5) :
      X + C (k : ℚ) ∣ rising 1 ((48+a)*n) *
        rising (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)) ((48+a)*n) := by
    apply dvd_mul_of_dvd_left
    apply rising_linear_factor_dvd k _ hk
    nlinarith
  have hp := Finset.prod_dvd_prod_of_dvd (s := range 5) (fun _ => X + C (k : ℚ)) _ hb
  simp only [Finset.prod_const, Finset.card_range] at hp
  exact dvd_mul_of_dvd_right hp _

/-- This concerns the numerator polynomial; quotient differentiation is a separate step. -/
theorem protected_numerator_derivatives (n k j : ℕ) (hk : 1 ≤ k)
    (hkn : k ≤ 48*n) (hj : j ≤ 4) :
    (Polynomial.derivative^[j] (h158Numerator n)).eval (-(k : ℚ)) = 0 := by
  have hdiv := pow_sub_dvd_iterate_derivative_of_pow_dvd j (protected_fifth_power_dvd n k hk hkn)
  have hpow : X + C (k : ℚ) ∣ (X + C (k : ℚ))^(5-j) := dvd_pow_self _ (by omega)
  obtain ⟨q, hq⟩ := hpow.trans hdiv
  rw [hq]
  simp

/-- The protected numerator zeros are not denominator poles. -/
theorem protected_denominator_pos (n k : ℕ) (hkn : k ≤ 48*n) :
    0 < (h158Denominator n).eval (-(k : ℚ)) := by
  simp only [h158Denominator, rising, eval_prod]
  apply Finset.prod_pos
  intro b _
  apply Finset.prod_pos
  intro j _
  simp only [eval_add, eval_X, eval_C]
  have hnat : k < (53+b)*n+1+j := by nlinarith
  have hrat : (k : ℚ) < (((53+b)*n+1+j : ℕ) : ℚ) := by exact_mod_cast hnat
  push_cast at hrat ⊢
  linarith

end OddZetaMixed
