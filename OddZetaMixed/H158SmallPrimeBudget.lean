import OddZetaMixed.LocalJetValuation
import OddZetaMixed.FormalPolynomialMinors
import OddZetaMixed.H158Normalization
import OddZetaMixed.ExponentialRate
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Analysis.Real.Sqrt

/-!
# Small-prime coefficient bounds for the original h158 matrix

The auxiliary evaluation is at an integer power of p beyond all root
addresses. It preserves the valuations of nonzero local roots and makes
integer-valued factorial quotients available without a main-prime assumption.
-/

noncomputable section

namespace OddZetaMixed.H158SmallPrimeBudget

open Polynomial Finset LocalJetValuation

private theorem int_valuation_lt {p M : ℕ} [Fact p.Prime] (a : ℤ)
    (ha : a ≠ 0) (hab : |a| < (p ^ M : ℕ)) :
    padicValRat p (a : ℚ) < (M : ℤ) := by
  have hb : a.natAbs < p ^ M := by
    exact_mod_cast (show (a.natAbs : ℤ) < (p ^ M : ℕ) by
      simpa only [Int.natCast_natAbs] using hab)
  have hn : a.natAbs ≠ 0 := by simpa using ha
  have hv := (padicValNat_le_nat_log (p := p) a.natAbs).trans_lt
    (Nat.log_lt_of_lt_pow hn hb)
  rw [padicValRat.of_int]
  exact_mod_cast hv

private theorem shifted_root_valuation {p M : ℕ} [Fact p.Prime] (a : ℤ)
    (hab : |a| < (p ^ M : ℕ)) :
    (a : ℚ) + (p : ℚ)^M ≠ 0 ∧
    AtLeast p (padicValRat p ((a : ℚ)+(p : ℚ)^M)) (a : ℚ) ∧
    padicValRat p ((a : ℚ)+(p : ℚ)^M) ≤ (M : ℤ) := by
  have hp := (Fact.out : p.Prime)
  have hpow : (p : ℚ)^M ≠ 0 := pow_ne_zero _ (by exact_mod_cast hp.ne_zero)
  have hpos : (0 : ℚ) < (a : ℚ)+(p : ℚ)^M := by
    have h := (abs_lt.mp hab).1
    have h' : -(p : ℚ)^M < (a : ℚ) := by exact_mod_cast h
    linarith
  have hvpow : padicValRat p ((p : ℚ)^M) = (M : ℤ) := by
    rw [padicValRat.pow, padicValRat.self hp.one_lt, mul_one]
  refine ⟨ne_of_gt hpos, ?_, ?_⟩
  · by_cases ha : a = 0
    · exact Or.inl (by simp [ha])
    · have he := padicValRat.add_eq_of_lt (ne_of_gt hpos)
        (by exact_mod_cast ha) hpow (by rw [hvpow]; exact int_valuation_lt a ha hab)
      exact Or.inr (le_of_eq he)
  · by_cases ha : a = 0
    · simp [ha, hvpow]
    · rw [padicValRat.add_eq_of_lt (ne_of_gt hpos)
        (by exact_mod_cast ha) hpow (by rw [hvpow]; exact int_valuation_lt a ha hab)]
      exact (int_valuation_lt a ha hab).le

/-- The rootwise property is closed under all finite products. -/
private def EvalWeighted (p M : ℕ) (P : ℚ[X]) : Prop :=
  P.eval ((p : ℚ)^M) ≠ 0 ∧
  Weighted p P (padicValRat p (P.eval ((p : ℚ)^M))) M

private theorem evalWeighted_C {p M : ℕ} (a : ℚ) (ha : a ≠ 0) :
    EvalWeighted p M (C a) := by
  refine ⟨by simpa, ?_⟩
  simpa only [eval_C] using (weighted_C (slope := (M : ℤ))
    (Or.inr le_rfl : AtLeast p (padicValRat p a) a))

private theorem evalWeighted_one (p M : ℕ) : EvalWeighted p M 1 := by
  simpa only [map_one] using evalWeighted_C (p := p) (M := M) 1 one_ne_zero

private theorem evalWeighted_mul {p M : ℕ} [Fact p.Prime] {P Q : ℚ[X]}
    (hP : EvalWeighted p M P) (hQ : EvalWeighted p M Q) :
    EvalWeighted p M (P*Q) := by
  refine ⟨by simpa only [eval_mul] using mul_ne_zero hP.1 hQ.1, ?_⟩
  rw [eval_mul, padicValRat.mul hP.1 hQ.1]
  exact weighted_mul hP.2 hQ.2

private theorem evalWeighted_pow {p M : ℕ} [Fact p.Prime] {P : ℚ[X]}
    (hP : EvalWeighted p M P) (d : ℕ) : EvalWeighted p M (P^d) := by
  refine ⟨by simpa only [eval_pow] using pow_ne_zero d hP.1, ?_⟩
  rw [eval_pow, padicValRat.pow]
  exact weighted_pow hP.2 d

private theorem evalWeighted_prod {p M : ℕ} [Fact p.Prime] {ι : Type*}
    (s : Finset ι) (P : ι → ℚ[X])
    (h : ∀ i ∈ s, EvalWeighted p M (P i)) :
    EvalWeighted p M (∏ i ∈ s, P i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using evalWeighted_one p M
  | @insert i s hi ih =>
    rw [prod_insert hi]
    exact evalWeighted_mul (h i (mem_insert_self _ _))
      (ih (fun j hj => h j (mem_insert_of_mem hj)))

private theorem evalWeighted_linear {p M : ℕ} [Fact p.Prime] (a : ℤ)
    (ha : |a| < (p^M : ℕ)) : EvalWeighted p M (X+C (a : ℚ)) := by
  obtain ⟨h0, hfloor, hupper⟩ := shifted_root_valuation (p := p) a ha
  unfold EvalWeighted
  simpa only [eval_add, eval_X, eval_C, add_comm] using
    (show ((a : ℚ)+(p : ℚ)^M ≠ 0) ∧
      Weighted p (X+C (a : ℚ)) (padicValRat p ((a : ℚ)+(p : ℚ)^M)) M from
      ⟨h0, weighted_linear hfloor hupper⟩)

private theorem evalWeighted_rising {p M : ℕ} [Fact p.Prime]
    (a : ℤ) (d : ℕ) (h : ∀ j < d, |a+(j : ℤ)| < (p^M : ℕ)) :
    EvalWeighted p M (rising (a : ℚ) d) := by
  unfold rising
  apply evalWeighted_prod
  intro j hj
  simpa only [Int.cast_add, Int.cast_natCast] using
    evalWeighted_linear (p := p) (M := M) (a+j) (h j (mem_range.mp hj))

private theorem rising_eq_asc (a : ℚ) (d : ℕ) :
    rising a d = (ascPochhammer ℚ d).comp (X+C a) := by
  induction d with
  | zero => simp [rising]
  | succ d ih =>
    rw [rising, prod_range_succ, ← rising, ih, ascPochhammer_succ_right]
    simp only [mul_comp, add_comp, X_comp, natCast_comp]
    congr 1
    simp
    ring

private theorem rising_eval_integer (a x : ℤ) (d : ℕ) :
    ∃ z : ℤ, (rising (a : ℚ) d).eval (x : ℚ) = (d.factorial : ℚ)*(z : ℚ) := by
  refine ⟨Ring.multichoose (x+a) d, ?_⟩
  rw [rising_eq_asc, eval_comp, eval_add, eval_X, eval_C]
  have h := Ring.factorial_nsmul_multichoose_eq_ascPochhammer ((x+a : ℤ) : ℚ) d
  have hm : ((Ring.multichoose (x+a) d : ℤ) : ℚ) =
      Ring.multichoose ((x+a : ℤ) : ℚ) d := Ring.map_multichoose (Int.castRingHom ℚ) _ _
  rw [← hm] at h
  simpa only [nsmul_eq_mul, Polynomial.ascPochhammer_smeval_eq_eval,
    Int.cast_add] using h.symm

private theorem taylor_rising_int (a x : ℤ) (d : ℕ) :
    taylor (x : ℚ) (rising (a : ℚ) d) = rising ((a+x : ℤ) : ℚ) d := by
  simp only [rising, taylor_product, shifted_rational_linear]
  apply prod_congr rfl
  intro j hj
  congr 2
  push_cast
  ring

private theorem taylor_eval_int (P : ℚ[X]) (a : ℤ) (p M : ℕ) :
    (taylor (a : ℚ) P).eval ((p : ℚ)^M) = P.eval ((a+(p^M : ℕ) : ℤ) : ℚ) := by
  rw [taylor_apply]
  simp only [eval_comp, eval_add, eval_X, eval_C]
  push_cast
  congr 1
  ring

private theorem evalWeighted_evenBasis {p M : ℕ} [Fact p.Prime]
    (i : ℕ) (a : ℤ) (ha : |a|+(i : ℤ) < (p^M : ℕ)) :
    EvalWeighted p M (taylor (a : ℚ) (evenBasis i)) := by
  cases i with
  | zero => simpa only [evenBasis_zero, taylor_one, map_one] using evalWeighted_one p M
  | succ i =>
    have ha0 : |a| < (p^M : ℕ) := by omega
    have hx : EvalWeighted p M (taylor (a : ℚ) (X : ℚ[X])) := by
      simpa only [taylor_X] using evalWeighted_linear (p := p) a ha0
    have hprod : EvalWeighted p M (taylor (a : ℚ) (evenBasisProduct i)) := by
      rw [evenBasisProduct, taylor_product]
      apply evalWeighted_prod
      intro j hj
      have hj := mem_range.mp hj
      have hf : (X^2-C (((j : ℚ)+1)^2) : ℚ[X]) =
          (X+C ((j : ℚ)+1))*(X+C (-((j : ℚ)+1))) := by
        simp only [map_pow, map_neg]
        ring
      rw [hf, taylor_mul, shifted_rational_linear, shifted_rational_linear]
      have hjp : |(j : ℤ)+1+a| < (p^M : ℕ) := by
        rw [abs_lt] at ha0 ⊢
        have hx' := le_abs_self a
        have hx'' := neg_abs_le a
        omega
      have hjm : |-((j : ℤ)+1)+a| < (p^M : ℕ) := by
        rw [abs_lt] at ha0 ⊢
        have hx' := le_abs_self a
        have hx'' := neg_abs_le a
        omega
      have hp1 := evalWeighted_linear (p := p) ((j : ℤ)+1+a) hjp
      have hm1 := evalWeighted_linear (p := p) (-((j : ℤ)+1)+a) hjm
      push_cast at hp1 hm1
      exact evalWeighted_mul hp1 hm1
    rw [evenBasis_succ, taylor_mul, taylor_C, taylor_mul, taylor_pow]
    exact evalWeighted_mul (evalWeighted_C _ (by positivity))
      (evalWeighted_mul (evalWeighted_pow hx 2) hprod)

private theorem integer_eval_nonneg {p : ℕ} (a : ℚ)
    (ha : ∃ z : ℤ, a = (z : ℚ)) : 0 ≤ padicValRat p a := by
  obtain ⟨z,rfl⟩ := ha
  rw [padicValRat.of_int]
  exact Int.natCast_nonneg _

private theorem evenBasis_taylor_floor {p M : ℕ} [Fact p.Prime]
    (i : ℕ) (a : ℤ) (ha : |a|+(i : ℤ) < (p^M : ℕ)) :
    Weighted p (taylor (a : ℚ) (evenBasis i)) 0 M := by
  have h := evalWeighted_evenBasis (p := p) (M := M) i a ha
  have hv : 0 ≤ padicValRat p ((taylor (a : ℚ) (evenBasis i)).eval ((p : ℚ)^M)) := by
    rw [taylor_eval_int]
    exact integer_eval_nonneg _ (evenBasis_integer_valued _ _)
  intro q
  exact mono (h.2 q) (by omega)

private theorem rising_taylor_floor {p M : ℕ} [Fact p.Prime]
    (a x : ℤ) (d : ℕ) (h : ∀ j < d, |a+x+(j : ℤ)| < (p^M : ℕ)) :
    Weighted p (taylor (x : ℚ) (rising (a : ℚ) d))
      (padicValRat p (d.factorial : ℚ)) M := by
  have he := evalWeighted_rising (p := p) (M := M) (a+x) d h
  rw [← taylor_rising_int] at he
  have he0 := he.1
  rw [taylor_eval_int] at he0
  obtain ⟨z,hz⟩ := rising_eval_integer a (x+(p^M : ℕ)) d
  have hz0 : (z : ℚ) ≠ 0 := by intro hz'; rw [hz, hz', mul_zero] at he0; exact he0 rfl
  have hf0 : (d.factorial : ℚ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero d
  have hv : padicValRat p (d.factorial : ℚ) ≤
      padicValRat p ((taylor (x : ℚ) (rising (a : ℚ) d)).eval ((p : ℚ)^M)) := by
    rw [taylor_eval_int, hz, padicValRat.mul hf0 hz0, padicValRat.of_int]
    exact le_add_of_nonneg_right (Int.natCast_nonneg _)
  intro q
  exact mono (he.2 q) (by omega)

/-- Factorial numerator mass of the sixteen original rational blocks. -/
def factorialMass (p n : ℕ) : ℤ :=
  ∑ b ∈ range 16, padicValRat p ((((52-2*b)*n).factorial : ℕ) : ℚ)

private theorem normalization_valuation {p : ℕ} [Fact p.Prime] (n : ℕ) :
    padicValRat p (h158Normalization n) = padicValRat p 2 + factorialMass p n -
      2 * ∑ a ∈ range 5, padicValRat p ((((48+a)*n).factorial : ℕ) : ℚ) := by
  have hf (m : ℕ) : (m.factorial : ℚ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero m
  rw [h158Normalization, padicValRat.div (mul_ne_zero (by norm_num)
    (prod_ne_zero_iff.mpr (fun _ _ => hf _)))
    (prod_ne_zero_iff.mpr (fun _ _ => pow_ne_zero _ (hf _))),
    padicValRat.mul (by norm_num) (prod_ne_zero_iff.mpr (fun _ _ => hf _)),
    valuation_prod _ _ (fun _ _ => hf _),
    valuation_prod _ _ (fun _ _ => pow_ne_zero _ (hf _)), factorialMass]
  simp only [padicValRat.pow, Nat.cast_ofNat, ← Finset.mul_sum]

private theorem numerator_weighted {p M : ℕ} [Fact p.Prime]
    (n k : ℕ) (hk : k ∈ h158PoleSet n) (hM : 158*n+2 < p^M) :
    Weighted p (taylor (-(k : ℚ)) (h158Numerator n))
      (2*∑ a ∈ range 5, padicValRat p ((((48+a)*n).factorial : ℕ) : ℚ)) M := by
  have hkb := h158_pole_address_bounds n k hk
  have hMZ : 158*(n : ℤ)+2 < (p^M : ℕ) := by exact_mod_cast hM
  have hc : Weighted p (taylor (-(k : ℚ)) (X+C (79*(n : ℚ)+1))) 0 M := by
    rw [shifted_rational_linear]
    have hfloor : AtLeast p 0 (79*(n : ℚ)+1 + -(k : ℚ)) := by
      have h := integer_eval_nonneg (p := p) ((79*(n : ℤ)+1-k : ℤ) : ℚ) ⟨_,rfl⟩
      apply Or.inr
      simpa only [Int.cast_sub, Int.cast_add, Int.cast_mul, Int.cast_natCast,
        Int.cast_ofNat, Int.cast_one, Int.cast_neg, sub_eq_add_neg] using h
    exact weighted_linear hfloor (Int.natCast_nonneg _)
  have hp : Weighted p (taylor (-(k : ℚ))
      (∏ a ∈ range 5, rising 1 ((48+a)*n) *
        rising (158*(n : ℚ)+2-(((48+a)*n : ℕ) : ℚ)) ((48+a)*n)))
      (∑ a ∈ range 5, 2*padicValRat p ((((48+a)*n).factorial : ℕ) : ℚ)) M := by
    rw [taylor_product]
    apply weighted_prod
    intro a ha
    have ha := mem_range.mp ha
    have hl := rising_taylor_floor (p := p) (M := M) 1 (-(k : ℤ)) ((48+a)*n) (by
      intro j hj
      rw [abs_lt]
      constructor <;> push_cast <;> nlinarith)
    have hr := rising_taylor_floor (p := p) (M := M)
      (158*(n : ℤ)+2-(((48+a)*n : ℕ) : ℤ)) (-(k : ℤ)) ((48+a)*n) (by
      intro j hj
      rw [abs_lt]
      constructor <;> push_cast <;> nlinarith)
    push_cast at hl hr
    rw [taylor_mul]
    simpa only [Nat.cast_mul, Nat.cast_add, Nat.cast_ofNat, two_mul] using weighted_mul hl hr
  rw [h158Numerator, taylor_mul]
  simpa only [zero_add, ← Finset.mul_sum] using weighted_mul hc hp

private theorem multiplier_weighted {p M : ℕ} [Fact p.Prime]
    (n k : ℕ) (i j : Fin (2*n)) (hk : k ∈ h158PoleSet n)
    (hM : 158*n+2 < p^M) :
    Weighted p (taylor (-(k : ℚ)) (centeredMultiplier n i j)) 0 M := by
  have hkb := h158_pole_address_bounds n k hk
  have hMZ : 158*(n : ℤ)+2 < (p^M : ℕ) := by exact_mod_cast hM
  have hb (l : Fin (2*n)) : |79*(n : ℤ)+1-k|+(l.val : ℤ) < (p^M : ℕ) := by
    have hl := l.isLt
    by_cases hx : 0 ≤ 79*(n : ℤ)+1-k
    · rw [abs_of_nonneg hx]; omega
    · rw [abs_of_neg (lt_of_not_ge hx)]; omega
  have hi := evenBasis_taylor_floor (p := p) (M := M) i.val (79*(n : ℤ)+1-k) (hb i)
  have hj := evenBasis_taylor_floor (p := p) (M := M) j.val (79*(n : ℤ)+1-k) (hb j)
  have he : taylor (-(k : ℚ)) (centeredMultiplier n i j) =
      taylor ((79*(n : ℤ)+1-k : ℤ) : ℚ) (evenBasis i.val) *
      taylor ((79*(n : ℤ)+1-k : ℤ) : ℚ) (evenBasis j.val) := by
    change taylor (-(k : ℚ)) (taylor (79*(n : ℚ)+1) (evenBasis i.val*evenBasis j.val)) = _
    rw [taylor_taylor, taylor_mul]
    have hx : -(k : ℚ)+(79*(n : ℚ)+1) = ((79*(n : ℤ)+1-k : ℤ) : ℚ) := by
      push_cast
      ring
    rw [hx]
  rw [he]
  simpa only [add_zero] using weighted_mul hi hj

/-- The actual local numerator has the entire denominator factorial mass
before finite local division, at every prime. -/
theorem localNumerator_weighted {p M : ℕ} [Fact p.Prime]
    (n k : ℕ) (i j : Fin (2*n)) (hk : k ∈ h158PoleSet n)
    (hM : 158*n+2 < p^M) :
    Weighted p (h158LocalNumerator n i j k) (factorialMass p n) M := by
  rw [h158LocalNumerator, taylor_mul, taylor_mul, taylor_C]
  have h := weighted_mul
    (weighted_mul (weighted_C (slope := (M : ℤ))
      (Or.inr le_rfl : AtLeast p (padicValRat p (h158Normalization n)) (h158Normalization n)))
      (numerator_weighted n k hk hM)) (multiplier_weighted n k i j hk hM)
  rw [normalization_valuation] at h
  have htwo : 0 ≤ padicValRat p (2 : ℚ) := by
    exact integer_eval_nonneg _ ⟨2,by norm_num⟩
  intro q
  exact mono (h q) (by omega)

private theorem choose_valuation_upper {p : ℕ} [Fact p.Prime]
    (s d : ℕ) (hd : d ≤ s) : padicValNat p (s.choose d) ≤ Nat.log p s := by
  rw [padicValNat_choose hd (Nat.lt_succ_self (Nat.log p s))]
  have h := Finset.card_filter_le (Finset.Ico 1 (Nat.log p s+1))
    (fun i => p^i ≤ d % p^i+(s-d) % p^i)
  simpa using h

private theorem ascFactorial_upper {p M : ℕ} [Fact p.Prime]
    (s L : ℕ) (hs : 0 < s) (hbound : s+L < p^(M+1)) :
    padicValRat p ((s.ascFactorial (L+1) : ℕ) : ℚ) ≤
      padicValRat p (L.factorial : ℚ) + 2*(M : ℤ) := by
  have htop : s+L ≠ 0 := by omega
  have hlog : Nat.log p (s+L) ≤ M := by
    have h := Nat.log_lt_of_lt_pow htop hbound
    omega
  have hchoose : L ≤ s+L-1 := by omega
  have hc : (s+L-1).choose L ≠ 0 := Nat.choose_ne_zero hchoose
  have hf : L.factorial ≠ 0 := Nat.factorial_ne_zero L
  have htQ : ((s+L : ℕ) : ℚ) ≠ 0 := by exact_mod_cast htop
  have hcQ : (((s+L-1).choose L : ℕ) : ℚ) ≠ 0 := by exact_mod_cast hc
  have hfQ : (L.factorial : ℚ) ≠ 0 := by exact_mod_cast hf
  have hvtop : padicValNat p (s+L) ≤ M := (padicValNat_le_nat_log _).trans hlog
  have hvchoose : padicValNat p ((s+L-1).choose L) ≤ M :=
    (choose_valuation_upper _ _ hchoose).trans
      ((Nat.log_mono_right (Nat.sub_le _ _)).trans hlog)
  rw [Nat.ascFactorial_succ, Nat.ascFactorial_eq_factorial_mul_choose',
    Nat.cast_mul, Nat.cast_mul, padicValRat.mul htQ (mul_ne_zero hfQ hcQ),
    padicValRat.mul hfQ hcQ]
  simp only [padicValRat.of_nat]
  omega

private theorem rising_eval_nat_argument (a x : ℚ) (d s : ℕ) (he : a+x = (s : ℚ)) :
    (rising a d).eval x = ((s.ascFactorial d : ℕ) : ℚ) := by
  rw [rising, eval_prod, Nat.ascFactorial_eq_prod_range, Nat.cast_prod]
  apply prod_congr rfl
  intro j hj
  simp only [eval_add, eval_X, eval_C, Nat.cast_add]
  linear_combination he

private theorem denominator_shift_upper {p M : ℕ} [Fact p.Prime]
    (n k : ℕ) (hk : k ∈ h158PoleSet n) (hM : 158*n+2 < p^M) :
    padicValRat p ((h158Denominator n).eval ((p : ℚ)^M-(k : ℚ))) ≤
      factorialMass p n + 32*(M : ℤ) := by
  have hp := (Fact.out : p.Prime)
  have hkb := h158_pole_address_bounds n k hk
  have hroot (b : ℕ) (hb : b ∈ range 16) :
      (rising (((53+b)*n : ℕ)+1) ((52-2*b)*n+1)).eval
          ((p : ℚ)^M-(k : ℚ)) =
        (((p^M+(53+b)*n+1-k).ascFactorial ((52-2*b)*n+1) : ℕ) : ℚ) := by
    apply rising_eval_nat_argument
    rw [Nat.cast_sub (by nlinarith : k ≤ p^M+(53+b)*n+1)]
    push_cast
    ring
  have hpos (b : ℕ) (hb : b ∈ range 16) : 0 < p^M+(53+b)*n+1-k := by
    have hkP : k < p^M := by omega
    omega
  have hbound (b : ℕ) (hb : b ∈ range 16) :
      p^M+(53+b)*n+1-k+(52-2*b)*n < p^(M+1) := by
    have hb := mem_range.mp hb
    have hbsub : 52-2*b+2*b=52 := by omega
    have hpow : p^M+p^M ≤ p^(M+1) := by
      rw [pow_succ]
      nlinarith [hp.two_le]
    have hns : (52-2*b)*n+2*(b*n)=52*n := by
      nlinarith [congrArg (fun x : ℕ => x*n) hbsub]
    have htotal : (53+b)*n+(52-2*b)*n ≤ 105*n := by nlinarith
    have hsub := Nat.sub_le (p^M+(53+b)*n+1) k
    nlinarith
  have hnz (b : ℕ) (hb : b ∈ range 16) :
      (rising (((53+b)*n : ℕ)+1) ((52-2*b)*n+1)).eval
        ((p : ℚ)^M-(k : ℚ)) ≠ 0 := by
    rw [hroot b hb]
    have hs := hpos b hb
    obtain ⟨s,he⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hs)
    rw [he]
    exact_mod_cast Nat.ne_of_gt (Nat.ascFactorial_pos s _)
  rw [h158Denominator, eval_prod, valuation_prod _ _ hnz]
  calc
    _ ≤ ∑ b ∈ range 16, (padicValRat p ((((52-2*b)*n).factorial : ℕ) : ℚ) +
        2*(M : ℤ)) := by
      apply Finset.sum_le_sum
      intro b hb
      rw [hroot b hb]
      exact ascFactorial_upper _ _ (hpos b hb) (hbound b hb)
    _ = factorialMass p n + 32*(M : ℤ) := by
      simp only [factorialMass, sum_add_distrib, sum_const, card_range, nsmul_eq_mul]
      ring

private theorem cofactor_eval_valuation {p M : ℕ} [Fact p.Prime]
    (n k : ℕ) (hk : k ∈ h158PoleSet n) (hM : 158*n+2 < p^M) :
    padicValRat p ((h158LocalCofactor n k).eval ((p : ℚ)^M)) =
      padicValRat p ((h158LocalCofactor n k).coeff 0) := by
  rw [h158_cofactor_constant_valuation n k hk, h158_cofactor_split, eval_prod]
  have hkb := h158_pole_address_bounds n k hk
  have hd (a : ℕ) (ha : a ∈ (h158PoleSet n).erase k) :
      |(a : ℤ)-k| < (p^M : ℕ) := by
    have hab := h158_pole_address_bounds n a (mem_erase.mp ha).2
    rw [abs_lt]
    constructor <;> omega
  have hnz (a : ℕ) (ha : a ∈ (h158PoleSet n).erase k) :
      ((p : ℚ)^M+((a : ℚ)-k)) ≠ 0 := by
    simpa only [Int.cast_sub, Int.cast_natCast, add_comm] using
      (shifted_root_valuation (p := p) ((a : ℤ)-k) (hd a ha)).1
  simp only [eval_pow, eval_add, eval_X, eval_C]
  rw [valuation_prod _ _ (fun a ha => pow_ne_zero _ (hnz a ha))]
  apply sum_congr rfl
  intro a ha
  rw [padicValRat.pow]
  congr 1
  have ha0 : (a : ℤ)-(k : ℤ) ≠ 0 := by
    intro he
    exact (mem_erase.mp ha).1 (by exact_mod_cast sub_eq_zero.mp he)
  have hav := int_valuation_lt (p := p) ((a : ℤ)-k) ha0 (hd a ha)
  have hpow : (p : ℚ)^M ≠ 0 := pow_ne_zero _ (by exact_mod_cast (Fact.out : p.Prime).ne_zero)
  have he := padicValRat.add_eq_of_lt (p := p)
    (q := (((a : ℤ)-k : ℤ) : ℚ)) (r := (p : ℚ)^M)
    (by simpa only [Int.cast_sub, Int.cast_natCast, add_comm] using hnz a ha)
    (by exact_mod_cast ha0) hpow
    (by rw [padicValRat.pow, padicValRat.self (Fact.out : p.Prime).one_lt, mul_one]; exact hav)
  simpa only [Int.cast_sub, Int.cast_natCast, add_comm] using he

private theorem denominator_taylor_split (n k : ℕ) (hk : k ∈ h158PoleSet n) :
    taylor (-(k : ℚ)) (h158Denominator n) = X^h158PoleOrder n k*h158LocalCofactor n k := by
  rw [h158_denominator_powers, ← prod_erase_mul _ _ hk, taylor_mul, taylor_pow,
    taylor_at_negative_linear]
  change h158LocalCofactor n k * X^h158PoleOrder n k = _
  ring

/-- Uniform valuation bound for the full original local cofactor. -/
theorem localCofactor_constant_upper_with_order {p M : ℕ} [Fact p.Prime]
    (n k : ℕ) (hk : k ∈ h158PoleSet n) (hM : 158*n+2 < p^M) :
    padicValRat p ((h158LocalCofactor n k).coeff 0) + (h158PoleOrder n k : ℤ)*(M : ℤ) ≤
      factorialMass p n + 32*(M : ℤ) := by
  have hp := (Fact.out : p.Prime)
  have hpow : (p : ℚ)^M ≠ 0 := pow_ne_zero _ (by exact_mod_cast hp.ne_zero)
  have hc0 : (h158LocalCofactor n k).eval ((p : ℚ)^M) ≠ 0 := by
    rw [h158_cofactor_split, eval_prod]
    apply prod_ne_zero_iff.mpr
    intro a ha
    have hab := h158_pole_address_bounds n a (mem_erase.mp ha).2
    have hkb := h158_pole_address_bounds n k hk
    simp only [eval_pow, eval_add, eval_X, eval_C]
    apply pow_ne_zero
    simpa only [Int.cast_sub, Int.cast_natCast, add_comm] using
      (shifted_root_valuation (p := p) ((a : ℤ)-k) (by
        rw [abs_lt]; constructor <;> omega)).1
  have he : (h158Denominator n).eval ((p : ℚ)^M-(k : ℚ)) =
      ((p : ℚ)^M)^h158PoleOrder n k * (h158LocalCofactor n k).eval ((p : ℚ)^M) := by
    rw [sub_eq_add_neg, ← taylor_eval, denominator_taylor_split n k hk,
      eval_mul, eval_pow, eval_X]
  have hupper := denominator_shift_upper n k hk hM
  rw [he, padicValRat.mul (pow_ne_zero _ hpow) hc0, padicValRat.pow,
    padicValRat.pow, padicValRat.self hp.one_lt, mul_one,
    cofactor_eval_valuation n k hk hM] at hupper
  linarith

private theorem localCofactor_weighted {p M : ℕ} [Fact p.Prime]
    (n k : ℕ) (hk : k ∈ h158PoleSet n) (hM : 158*n+2 < p^M) :
    Weighted p (h158LocalCofactor n k)
      (padicValRat p ((h158LocalCofactor n k).coeff 0)) M := by
  apply h158_cofactor_weighted n k hk
  intro a ha
  have hab := h158_pole_address_bounds n a (mem_erase.mp ha).2
  have hkb := h158_pole_address_bounds n k hk
  have ha0 : (a : ℤ)-(k : ℤ) ≠ 0 := by
    intro he
    exact (mem_erase.mp ha).1 (by exact_mod_cast sub_eq_zero.mp he)
  have hv := int_valuation_lt (p := p) (M := M) ((a : ℤ)-k) ha0
    (by rw [abs_lt]; constructor <;> omega)
  simpa only [Int.cast_sub, Int.cast_natCast] using hv.le

/-- Every original Laurent coefficient, with the pole-order cancellation
retained. The statement includes the zero central leading coefficient. -/
theorem principalCoefficient_floor {p M : ℕ} [Fact p.Prime]
    (n k : ℕ) (i j : Fin (2*n)) (hk : k ∈ h158PoleSet n)
    (hM : 158*n+2 < p^M) (l : Fin (h158PoleOrder n k)) :
    AtLeast p (((l.val : ℤ)+1-32)*(M : ℤ)) (h158PrincipalCoefficients n i j k l) := by
  have hN := localNumerator_weighted n k i j hk hM
  have hC := localCofactor_weighted n k hk hM
  have h := h158_principal_floor n i j k hk (factorialMass p n)
    (padicValRat p ((h158LocalCofactor n k).coeff 0)) M rfl
    (fun q _ => hC q) (fun q _ => hN q) l
  apply mono h
  have hupper := localCofactor_constant_upper_with_order n k hk hM
  nlinarith

private theorem harmonic_floor_power {p M : ℕ} [Fact p.Prime]
    (s m : ℕ) (hm : m < p^M) :
    AtLeast p (-(s : ℤ)*(M : ℤ)) (harmonicCutoff s m) := by
  unfold harmonicCutoff
  apply LocalJetValuation.sum
  intro t ht
  have ht := mem_range.mp ht
  have hv := int_valuation_lt (p := p) (M := M) ((t+1 : ℕ) : ℤ)
    (by omega) (by simpa only [abs_of_nonneg (Int.natCast_nonneg _)] using
      (show ((t+1 : ℕ) : ℤ) < (p^M : ℕ) by exact_mod_cast (by omega : t+1 < p^M)))
  have hv' : padicValRat p (((t+1 : ℕ) : ℚ)) ≤ (M : ℤ) := by
    simpa only [Int.cast_natCast] using hv.le
  apply Or.inr
  rw [show (t : ℚ)+1 = ((t+1 : ℕ) : ℚ) by push_cast; rfl,
    one_div, padicValRat.inv, padicValRat.pow]
  nlinarith

private theorem poleCoordinate_floor_power {p M : ℕ} [Fact p.Prime]
    (n k : ℕ) (hm : k-48*n-1 < p^M) (l : Fin (h158PoleOrder n k)) :
    FormalAtLeast p (-((l.val : ℤ)+5)*(M : ℤ)) (h158PoleCoordinate n k l) := by
  unfold h158PoleCoordinate
  apply formal_affine
  · have h := LocalJetValuation.mul (neg (nat_floor p ((l.val+4).choose 4)))
      (harmonic_floor_power (l.val+5) (k-48*n-1) hm)
    simpa only [Nat.cast_add, Nat.cast_ofNat, zero_add] using h
  · intro s
    split_ifs
    · exact mono (nat_floor p (((2+2*s.val)+4).choose 4))
        (mul_nonpos_of_nonpos_of_nonneg (by omega) (Int.natCast_nonneg _))
    · exact LocalJetValuation.zero p _

/-- All coefficients of every ACTUAL entry, including the constant term,
have a logarithmic denominator cost. No coefficient-bound input is present. -/
theorem matrixEntry_floor_power {p M : ℕ} [Fact p.Prime]
    (n : ℕ) (i j : Fin (2*n)) (hM : 158*n+2 < p^M) :
    FormalAtLeast p (-36*(M : ℤ)) (h158SevenMatrix n i j) := by
  rw [h158SevenMatrix_eq_pole_sum]
  apply formal_sum
  intro k hk
  have hkb := h158_pole_address_bounds n k hk
  apply formal_sum
  intro l hl
  have h := formal_C_mul (principalCoefficient_floor n k i j hk hM l)
    (poleCoordinate_floor_power n k (by omega : k-48*n-1 < p^M) l)
  convert h using 1
  ring

/-- In particular, the claimed constant 85 follows for every p <= h0;
the proof in fact supplies the stronger constant 72 on that range. -/
theorem matrixEntry_floor_log {p : ℕ} [Fact p.Prime]
    (n : ℕ) (i j : Fin (2*n)) (hpH : p ≤ 158*n+2) :
    FormalAtLeast p (-72*(Nat.log p (158*n+2) : ℤ)) (h158SevenMatrix n i j) := by
  have hp := (Fact.out : p.Prime)
  have hlog := Nat.log_pos hp.one_lt hpH
  have h := matrixEntry_floor_power (p := p) (M := Nat.log p (158*n+2)+1)
    n i j (Nat.lt_pow_succ_log_self hp.one_lt _)
  exact formal_mono h (by push_cast; omega)

theorem matrixEntry_small_prime_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (i j : Fin (2*n)) (hpH : p^2 ≤ 158*n+2) :
    FormalAtLeast p (-85*(Nat.log p (158*n+2) : ℤ)) (h158SevenMatrix n i j) := by
  have hp := (Fact.out : p.Prime)
  exact formal_mono (matrixEntry_floor_log n i j (by nlinarith [hp.two_le])) (by omega)

/-- Rank 2n determinant cost, coefficientwise and before specialization. -/
theorem determinant_small_prime_floor {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hpH : p^2 ≤ 158*n+2) :
    FormalAtLeast p (-170*(n : ℤ)*(Nat.log p (158*n+2) : ℤ)) (h158SevenMatrix n).det := by
  apply formal_determinant_lower_of_termwise
  intro σ
  have h := formal_prod univ (fun i => h158SevenMatrix n (σ i) i)
    (fun _ => -85*(Nat.log p (158*n+2) : ℤ))
    (fun i _ => matrixEntry_small_prime_floor n (σ i) i hpH)
  convert h using 1
  simp only [sum_const, card_univ, Fintype.card_fin, nsmul_eq_mul,
    Nat.cast_mul, Nat.cast_ofNat]
  ring

theorem primitiveCost_small_prime_bound {p : ℕ} [Fact p.Prime]
    (n : ℕ) (hpH : p^2 ≤ 158*n+2) (hdet : (h158SevenMatrix n).det ≠ 0) :
    -padicValRat p (h158PrimitiveScalar n) ≤
      170*(n : ℤ)*(Nat.log p (158*n+2) : ℤ) := by
  have h := formal_gauss_lower (determinant_small_prime_floor n hpH) hdet
  rw [h158PrimitiveScalar_gauss_valuation n hdet p (Fact.out : p.Prime)] at h
  linarith

/-- The reduced denominator of each individual rational coefficient. -/
theorem matrixEntry_coefficient_den_bound {p : ℕ} [Fact p.Prime]
    (n : ℕ) (i j : Fin (2*n)) (hpH : p^2 ≤ 158*n+2)
    (m : Fin 7 →₀ ℕ) :
    padicValNat p ((h158SevenMatrix n i j).coeff m).den ≤
      85*Nat.log p (158*n+2) := by
  have h := matrixEntry_small_prime_floor n i j hpH m
  rcases h with hz | h
  · simp [hz]
  · rcases ((h158SevenMatrix n i j).coeff m).num_or_den_zero_padicVal
      (Fact.out : p.Prime) with hnum | hden
    · rw [padicValRat_def, hnum] at h
      omega
    · rw [hden]
      omega

/-- No prime-counting estimate is used; this is a finite subset of an
integer interval with at most sqrt(h0) members. -/
def smallPrimeSet (n : ℕ) : Finset ℕ :=
  (Finset.Icc 1 (Nat.sqrt (158*n+2))).filter Nat.Prime

/-- The actual signed primitive-scalar contribution, with no clipping. -/
def smallPrimeCost (n : ℕ) : ℝ :=
  ∑ p ∈ smallPrimeSet n, (-(padicValRat p (h158PrimitiveScalar n)) : ℝ)*Real.log p

theorem smallPrimeSet_card_le (n : ℕ) : (smallPrimeSet n).card ≤ Nat.sqrt (158*n+2) := by
  have h := Finset.card_filter_le (Finset.Icc 1 (Nat.sqrt (158*n+2))) Nat.Prime
  simpa only [smallPrimeSet, Nat.card_Icc, Nat.add_sub_cancel] using h

private theorem natLog_mul_log_le (p H : ℕ) (hp : p.Prime) (hH : H ≠ 0) :
    (Nat.log p H : ℝ)*Real.log p ≤ Real.log H := by
  have hpR : (0 : ℝ) < p := by exact_mod_cast hp.pos
  have h := Real.log_le_log
    (pow_pos hpR (Nat.log p H))
    (show (p : ℝ)^(Nat.log p H) ≤ (H : ℝ) by
      exact_mod_cast Nat.pow_log_le_self p hH)
  simpa only [Real.log_pow] using h

/-- Finite exact majorant for the complete actual small-prime sum. -/
theorem smallPrimeCost_le (n : ℕ) (hdet : (h158SevenMatrix n).det ≠ 0) :
    smallPrimeCost n ≤
      170*(n : ℝ)*(Nat.sqrt (158*n+2) : ℝ)*Real.log (158*n+2 : ℕ) := by
  have hlog : 0 ≤ Real.log ((158*n+2 : ℕ) : ℝ) :=
    Real.log_nonneg (by norm_cast; omega)
  have hb (p : ℕ) (hp : p ∈ smallPrimeSet n) :
      (-(padicValRat p (h158PrimitiveScalar n)) : ℝ)*Real.log p ≤
        170*(n : ℝ)*Real.log (158*n+2 : ℕ) := by
    obtain ⟨hprange,hprime⟩ := mem_filter.mp hp
    obtain ⟨hp1,hpsqrt⟩ := mem_Icc.mp hprange
    let : Fact p.Prime := ⟨hprime⟩
    have hpH : p^2 ≤ 158*n+2 := by simpa only [pow_two] using Nat.le_sqrt.mp hpsqrt
    have hc : (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤
        170*(n : ℝ)*(Nat.log p (158*n+2) : ℝ) := by
      exact_mod_cast primitiveCost_small_prime_bound n hpH hdet
    have hplog : 0 ≤ Real.log (p : ℝ) := Real.log_nonneg (by exact_mod_cast hp1)
    calc
      _ ≤ (170*(n : ℝ)*(Nat.log p (158*n+2) : ℝ))*Real.log p :=
        mul_le_mul_of_nonneg_right hc hplog
      _ = 170*(n : ℝ)*((Nat.log p (158*n+2) : ℝ)*Real.log p) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left
        (natLog_mul_log_le p (158*n+2) hprime (by omega)) (by positivity)
  calc
    smallPrimeCost n ≤ (smallPrimeSet n).card •
        (170*(n : ℝ)*Real.log (158*n+2 : ℕ)) :=
      Finset.sum_le_card_nsmul _ _ _ hb
    _ ≤ (Nat.sqrt (158*n+2) : ℝ)*(170*(n : ℝ)*Real.log (158*n+2 : ℕ)) := by
      rw [nsmul_eq_mul]
      exact mul_le_mul_of_nonneg_right (by exact_mod_cast smallPrimeSet_card_le n)
        (mul_nonneg (by positivity) hlog)
    _ = _ := by ring

private theorem natSqrt_le_realSqrt (H : ℕ) : (Nat.sqrt H : ℝ) ≤ Real.sqrt (H : ℝ) := by
  have h : (Nat.sqrt H : ℝ)^2 ≤ (H : ℝ) := by
    exact_mod_cast (show (Nat.sqrt H)^2 ≤ H by simpa only [pow_two] using Nat.sqrt_le H)
  nlinarith [Real.sq_sqrt (show (0 : ℝ) ≤ H by positivity), Real.sqrt_nonneg (H : ℝ)]

open Filter

/-- The elementary finite majorant is o(n^2), without PNT or any
unproved analytic/arithmetic application estimate. -/
theorem smallPrimeMajorant_subquadratic (ε : ℝ) (hε : 0 < ε) :
    ∀ᶠ n : ℕ in atTop,
      170*(n : ℝ)*(Nat.sqrt (158*n+2) : ℝ)*Real.log (158*n+2 : ℕ) ≤ ε*(n : ℝ)^2 := by
  have ht : Tendsto (fun n : ℕ => ((158*n+2 : ℕ) : ℝ)) atTop atTop := by
    apply tendsto_atTop_mono (f := fun n : ℕ => (n : ℝ)) _ tendsto_natCast_atTop_atTop
    intro n
    push_cast
    nlinarith [Nat.cast_nonneg (α := ℝ) n]
  have hs : Tendsto (fun n : ℕ => Real.sqrt ((158*n+2 : ℕ) : ℝ)) atTop atTop :=
    Real.tendsto_sqrt_atTop.comp ht
  have hb := (Real.isLittleO_log_id_atTop.bound
    (show (0 : ℝ) < ε/54400 by positivity)).filter_mono hs
  filter_upwards [hb, eventually_ge_atTop (1 : ℕ)] with n hbound hn
  let H : ℝ := ((158*n+2 : ℕ) : ℝ)
  have hH0 : 0 ≤ H := by dsimp [H]; positivity
  have hs0 : 0 ≤ Real.sqrt H := Real.sqrt_nonneg _
  have hsq : (Real.sqrt H)^2 = H := Real.sq_sqrt hH0
  have hl : Real.log (Real.sqrt H) ≤ ε/54400*Real.sqrt H := by
    change ‖Real.log (Real.sqrt H)‖ ≤ ε/54400*‖Real.sqrt H‖ at hbound
    have hb' : |Real.log (Real.sqrt H)| ≤ ε/54400*Real.sqrt H := by
      simpa only [Real.norm_eq_abs, abs_of_nonneg hs0] using hbound
    exact (le_abs_self _).trans hb'
  have hlog : Real.log H = 2*Real.log (Real.sqrt H) := by
    calc
      Real.log H = Real.log ((Real.sqrt H)^2) := congrArg Real.log hsq.symm
      _ = _ := by rw [Real.log_pow]; norm_num
  have hl' : Real.log H ≤ ε/27200*Real.sqrt H := by rw [hlog]; linarith
  have hlog0 : 0 ≤ Real.log H := Real.log_nonneg (by dsimp [H]; norm_cast; omega)
  have hHup : H ≤ 160*(n : ℝ) := by
    dsimp [H]
    push_cast
    have hnR : (1 : ℝ) ≤ n := by exact_mod_cast hn
    linarith
  change 170*(n : ℝ)*(Nat.sqrt (158*n+2) : ℝ)*Real.log H ≤ _
  calc
    _ ≤ 170*(n : ℝ)*Real.sqrt H*Real.log H := by
      apply mul_le_mul_of_nonneg_right _ hlog0
      exact mul_le_mul_of_nonneg_left (natSqrt_le_realSqrt _) (by positivity)
    _ ≤ 170*(n : ℝ)*Real.sqrt H*(ε/27200*Real.sqrt H) :=
      mul_le_mul_of_nonneg_left hl' (by positivity)
    _ = ε/160*(n : ℝ)*(Real.sqrt H)^2 := by ring
    _ = ε/160*(n : ℝ)*H := by rw [hsq]
    _ ≤ ε/160*(n : ℝ)*(160*(n : ℝ)) :=
      mul_le_mul_of_nonneg_left hHup (by positivity)
    _ = ε*(n : ℝ)^2 := by ring

/-- The requested zero upper quadratic rate for the ACTUAL signed
small-prime contribution, on the actual nonzero formal determinants. -/
theorem smallPrimeCost_upperQuadraticRate :
    UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0} smallPrimeCost 0 := by
  intro ε hε
  filter_upwards [smallPrimeMajorant_subquadratic ε hε] with n hn
  intro hdet
  simpa only [zero_add] using (smallPrimeCost_le n hdet).trans hn

end OddZetaMixed.H158SmallPrimeBudget
