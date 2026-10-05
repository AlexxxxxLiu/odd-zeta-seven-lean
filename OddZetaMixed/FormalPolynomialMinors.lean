import OddZetaMixed.LocalJetValuation
import OddZetaMixed.SignedMinors
import OddZetaMixed.ScalarGaussCost
import OddZetaMixed.RectangularExpansion

/-!
# Signed minor floors for the actual coefficientwise polynomial filtration

The proofs work with all coefficients, including zero coefficients. They do
not infer a formal polynomial bound from rational specialization values.
-/

noncomputable section
set_option autoImplicit false
namespace OddZetaMixed.LocalJetValuation
open Finset

theorem formal_zero (p : ℕ) (a : ℤ) : FormalAtLeast p a 0 := by
  intro m
  change AtLeast p a 0
  exact zero p a

theorem formal_mono {p : ℕ} {a b : ℤ} {P : SevenPolynomial}
    (hP : FormalAtLeast p a P) (hab : b ≤ a) : FormalAtLeast p b P :=
  fun m => mono (hP m) hab

theorem formal_neg {p : ℕ} {a : ℤ} {P : SevenPolynomial}
    (hP : FormalAtLeast p a P) : FormalAtLeast p a (-P) := by
  intro m
  rw [MvPolynomial.coeff_neg]
  exact neg (hP m)

theorem formal_one (p : ℕ) : FormalAtLeast p 0 1 := by
  have h : AtLeast p 0 (1 : ℚ) := Or.inr (by simp)
  simpa only [map_one] using formal_C h

theorem formal_mul {p : ℕ} [Fact p.Prime] {a b : ℤ} {P Q : SevenPolynomial}
    (hP : FormalAtLeast p a P) (hQ : FormalAtLeast p b Q) :
    FormalAtLeast p (a+b) (P*Q) := by
  intro m
  rw [MvPolynomial.coeff_mul]
  apply sum
  intro uv huv
  exact mul (hP uv.1) (hQ uv.2)

theorem formal_prod {p : ℕ} [Fact p.Prime] {ι : Type*} (s : Finset ι)
    (P : ι → SevenPolynomial) (a : ι → ℤ)
    (h : ∀ i ∈ s, FormalAtLeast p (a i) (P i)) :
    FormalAtLeast p (∑ i ∈ s, a i) (∏ i ∈ s, P i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using formal_one p
  | @insert i s hi ih =>
    rw [sum_insert hi, prod_insert hi]
    exact formal_mul (h i (mem_insert_self _ _))
      (ih (fun j hj => h j (mem_insert_of_mem hj)))

theorem formal_determinant_lower_of_termwise {p r : ℕ} [Fact p.Prime]
    (M : Matrix (Fin r) (Fin r) SevenPolynomial) (L : ℤ)
    (h : ∀ σ : Equiv.Perm (Fin r),
      FormalAtLeast p L (∏ i, M (σ i) i)) : FormalAtLeast p L M.det := by
  classical
  rw [Matrix.det_apply]
  apply formal_sum
  intro σ hσ
  rcases Int.units_eq_one_or (Equiv.Perm.sign σ) with hs | hs
  · simpa [hs] using h σ
  · simpa [hs] using formal_neg (h σ)

/-- Independent row and column selections: the minor need not be principal. -/
theorem formal_minor_floor {p r : ℕ} [Fact p.Prime]
    (M : Matrix (Fin r) (Fin r) SevenPolynomial) (mu d : ℤ) (hd : 0 ≤ d)
    {a b : Fin r → ℕ} (ha : StrictMono a) (hb : StrictMono b)
    (hentry : ∀ i j, FormalAtLeast p (mu+d*(a i : ℤ)+d*(b j : ℤ)) (M i j)) :
    FormalAtLeast p ((r : ℤ)*mu+d*(r : ℤ)*((r : ℤ)-1)) M.det := by
  apply formal_determinant_lower_of_termwise
  intro σ
  exact formal_mono (formal_prod univ (fun i => M (σ i) i)
    (fun i => mu+d*(a (σ i) : ℤ)+d*(b i : ℤ)) (fun i _ => hentry (σ i) i))
    (SignedMinors.permutation_entry_cost_lower mu d hd ha hb σ)

theorem formal_minor_signed_cost {p r : ℕ} [Fact p.Prime]
    (M : Matrix (Fin r) (Fin r) SevenPolynomial) (w d : ℤ) (hd : 0 ≤ d)
    {a b : Fin r → ℕ} (ha : StrictMono a) (hb : StrictMono b)
    (hentry : ∀ i j, FormalAtLeast p (-w+d*(a i : ℤ)+d*(b j : ℤ)) (M i j)) :
    FormalAtLeast p (-(Finset.sum (range r) (fun i : ℕ => w - 2*d*(i : ℤ)))) M.det := by
  rw [SignedMinors.sum_signed_cost_step]
  convert formal_minor_floor M (-w) d hd ha hb hentry using 1
  ring

theorem formal_det_mul_floor {p r m : ℕ} [Fact p.Prime]
    (A : Matrix (Fin r) (Fin m) SevenPolynomial)
    (B : Matrix (Fin m) (Fin r) SevenPolynomial) (L : ℤ)
    (hA : ∀ i j, FormalAtLeast p 0 (A i j))
    (hB : ∀ f : Fin r → Fin m, Function.Injective f →
      FormalAtLeast p L (B.submatrix f id).det) :
    FormalAtLeast p L (A*B).det := by
  classical
  rw [RectangularExpansion.det_mul_eq_sum_injective]
  apply formal_sum
  intro f hf
  have hprod := formal_prod univ (fun i => A i (f i)) (fun _ => (0 : ℤ))
    (fun i _ => hA i (f i))
  simp only [sum_const_zero] at hprod
  simpa only [zero_add] using formal_mul hprod (hB f (mem_filter.mp hf).2)

/-- The entire coefficientwise determinant bound, not a bound on a single
rational specialization. All independent selections are included. -/
theorem formal_det_mul_mul_transpose_floor {p r m : ℕ} [Fact p.Prime]
    (V : Matrix (Fin r) (Fin m) SevenPolynomial)
    (W : Matrix (Fin m) (Fin m) SevenPolynomial) (L : ℤ)
    (hV : ∀ i j, FormalAtLeast p 0 (V i j))
    (hW : ∀ f g : Fin r → Fin m, Function.Injective f → Function.Injective g →
      FormalAtLeast p L (W.submatrix f g).det) :
    FormalAtLeast p L (V*W*V.transpose).det := by
  rw [Matrix.mul_assoc]
  apply formal_det_mul_floor V (W*V.transpose) L hV
  intro f hf
  have hright : FormalAtLeast p L (V*(W.submatrix f id).transpose).det := by
    apply formal_det_mul_floor V (W.submatrix f id).transpose L hV
    intro g hg
    change FormalAtLeast p L (W.submatrix f g).transpose.det
    rw [Matrix.det_transpose]
    exact hW f g hf hg
  have hrows : (W*V.transpose).submatrix f id = (W.submatrix f id)*V.transpose := by
    apply Matrix.ext
    intro i j
    rfl
  rw [hrows, ← Matrix.det_transpose, Matrix.transpose_mul, Matrix.transpose_transpose]
  exact hright

/-- Remove a nonzero rational scalar only after charging its exact valuation. -/
theorem formal_unscale {p : ℕ} [Fact p.Prime] (c : ℚ) (hc : c ≠ 0)
    (P : SevenPolynomial) (L : ℤ) (h : FormalAtLeast p L (MvPolynomial.C c*P)) :
    FormalAtLeast p (L-padicValRat p c) P := by
  intro m
  by_cases hm : P.coeff m = 0
  · exact Or.inl hm
  have hval := of_nonzero (h m) (by simpa only [MvPolynomial.coeff_C_mul] using mul_ne_zero hc hm)
  rw [MvPolynomial.coeff_C_mul, padicValRat.mul hc hm] at hval
  exact Or.inr (by omega)

def h158ClassCost (p n c : ℕ) : ℤ :=
  h158DenominatorCount p n c - h158NumeratorCount p n c -
    padicValRat p (h158Normalization n) + 4

/-- Actual nonprincipal residue-block minors with signed costs. The full
Laurent and harmonic identities enter via h158_residueClusterMoment_floor. -/
theorem h158_residue_minor_signed_cost {p r : ℕ} [Fact p.Prime]
    (n : ℕ) (hn : 0 < n) (hp : 0 < p) (hsq : 57*n < p^2) (c : Fin p)
    (a b : Fin r → Fin (4*n))
    (ha : StrictMono (fun i => (a i).val)) (hb : StrictMono (fun i => (b i).val)) :
    FormalAtLeast p (-(Finset.sum (range r)
      (fun i : ℕ => h158ClassCost p n c.val - 2*(i : ℤ))))
      ((h158ClusterMoment n hn (h158ResidueClass p hp) c (-(c.val : ℚ))).submatrix a b).det := by
  apply formal_minor_signed_cost _ (h158ClassCost p n c.val) 1 (by norm_num) ha hb
  intro i j
  have h := h158_residueClusterMoment_floor n hn hp hsq c (a i) (b j)
  convert h using 1
  · unfold h158ClassCost
    ring
  · rfl

end OddZetaMixed.LocalJetValuation
