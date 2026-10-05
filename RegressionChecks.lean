import OddZetaMixed

open OddZetaMixed

example : (h158Kernel 0).intDegree = -15 := by simpa using h158Kernel_degree 0
example : (evenBasis 0).eval (-(17 : ℚ)) = 1 := by simp
example : (evenBasis 1).eval (-(3 : ℚ)) = 9 := by norm_num [evenBasis, evenBasisProduct]

example : (Finset.range 3).sum (fun i => (1 : ℤ)-2*i) = -3 := by
  rw [SignedMinors.sum_signed_cost]
  norm_num

example : (Finset.range 2).sum (fun i => (1 : ℤ)-4*i) = -2 := by
  rw [SignedMinors.sum_even_jet_signed_cost]
  norm_num

example : ((2 : ℚ)^(2*1)) * (1/2)^2 = 1 := by norm_num

-- Paying only Q^n, instead of Q^(2n), need not produce an integer.
example : ¬ ∃ z : ℤ, (z : ℚ) = (2 : ℚ)^1*(1/2)^2 := by
  rintro ⟨z, hz⟩
  have hrat : (2 : ℚ)*(z : ℚ) = 1 := by norm_num at hz ⊢; linarith
  have hint : 2*z = (1 : ℤ) := by exact_mod_cast hrat
  omega

example (Q N : ℕ) (hQ : 0 < Q) :
    ∃ n, N < n ∧ Nat.Prime (55*n+1) ∧ ¬(55*n+1) ∣ Q :=
  exists_prime_gate_above Q N hQ

example : Matrix.det (1 : Matrix (Fin 0) (Fin 0) ℚ) = 1 := by simp

example (M : Matrix (Fin 3) (Fin 2) ℚ) (N : Matrix (Fin 2) (Fin 3) ℚ) :
    (M*N).det = 0 := RectangularExpansion.det_mul_eq_zero_of_inner_lt M N (by norm_num)

example (Q : ℕ) (hQ : 0 < Q) : (1 : ℕ) ≤ Q := by omega

example : gateNode 6 ⟨0, by norm_num⟩ = 145 := rfl

-- A nonempty concrete gate (55*6+1 = 331), not an empty-matrix test.
example : letI : Fact (Nat.Prime (55*6+1)) := ⟨by norm_num⟩
    (gateEvenEvaluation 6).det ≠ 0 := by
  let : Fact (Nat.Prime (55*6+1)) := ⟨by norm_num⟩
  exact gateEvenEvaluation_det_ne_zero 6

-- Unreduced pole multiplicity retains all sixteen denominator blocks.
set_option maxRecDepth 4096 in
example : h158PoleOrder 1 80 = 16 := by decide
example : h158ReflectedPole 1 54 = 106 := by decide
example : h158ZetaCoefficient 1 0 0 0 = 0 := h158ZetaCoefficient_zero 1 0 0
example : h158ZetaCoefficient 1 0 0 15 = 0 :=
  h158ZetaCoefficient_odd 1 0 0 15 (by decide)

-- The real zeta identification and the actual nonempty moment determinant
-- are checked through the same functions used in the main identity.
example : (sevenZetaValues (0 : Fin 7) : ℂ) = riemannZeta 7 := by
  simpa using sevenZetaValues_ofReal (0 : Fin 7)

example : MvPolynomial.eval₂ (algebraMap ℚ ℝ) sevenZetaValues
    (h158SevenMatrix 1).det = Matrix.det (h158Functional 1) :=
  h158SevenMatrix_det_eval 1

example : zetaTail 7 3 = zetaNat 7 - (129 : ℝ)/128 := by
  rw [zetaTail_eq_zetaNat_sub_harmonicCutoff (by norm_num) (by norm_num)]
  norm_num [harmonicCutoff, Finset.sum_range_succ]

-- At n=6,p=5 the fee is 44; omitting the ceiling term would give 46.
example : 2 * (∑ i ∈ Finset.range 12, (((2*i)/5 : ℕ) : ℚ)) = 44 := by
  convert rowScaling_fee_exact 6 5 (by norm_num) (by decide) using 1
  norm_num

set_option maxRecDepth 4096 in
example : padicValRat 53 ((h158PoleComplement 1 80 15).eval (-80)) = 0 := by
  have hk : 80 ∈ h158PoleSet 1 := by decide
  have hm : h158PoleOrder 1 80 = 16 := by decide
  simpa only [hm, Nat.reduceSub, Nat.cast_ofNat] using
    h158PoleComplement_top_padicValRat 1 80 53 hk (by norm_num) (by norm_num)

-- Zero determinants obey the exponential inequality, not the negative-log one.
example (B : ℝ) : |(0 : ℝ)| ≤ Real.exp B := by
  exact (abs_le_exp_iff_eq_zero_or_log_abs_le 0 B).mpr (Or.inl rfl)

-- The actual nonempty determinant, not just the auxiliary Vandermonde.
example : (h158SevenMatrix 6).det ≠ 0 :=
  h158_formal_determinant_ne_zero_on_gate 6 (by norm_num)

example : padicValRat 331 (MvPolynomial.eval (fun _ : Fin 7 => (0 : ℚ))
    (h158SevenMatrix 6).det) = -24 := by
  simpa using h158Gate_rational_determinant_valuation 6 (by norm_num)
    (fun _ => 0) (by simp)

example (n : ℕ) (hp : (55*n+1).Prime) (Q : ℕ) (hQ : 0 < Q)
    (hnot : ¬(55*n+1) ∣ Q) (z : Fin 7 → ℚ)
    (hz : ∀ i, ∃ a : ℤ, (Q : ℚ)*z i = a) :
    MvPolynomial.eval z (h158SevenMatrix n).det ≠ 0 :=
  h158_rational_gate z Q hQ hz n hp hnot

-- The protected range stops at -1; the nonnegative series includes zero.
example (i j : Fin 2) :
    iteratedDeriv 4 (h158EntryComplex 1 i j) (-1) / 24 = 0 := by
  simpa using h158EntryComplex_dividedFourthDerivative_protected 1 i j 1
    (by norm_num) (by norm_num)

example : harmonicCutoff 7 7 = (1 / (5 : ℚ)^7) + harmonicRegularPart 5 7 7 := by
  simpa using harmonicCutoff_split_at_prime 5 7 7 (by norm_num)

-- The arithmetic cutoff covers every prime above 57n, not only the gate.
example (m : Fin 7 →₀ ℕ) :
    0 ≤ padicValRat 59 ((h158SevenMatrix 1).det.coeff m) :=
  h158SevenMatrix_det_coeff_nonneg_of_large_prime 1 59 (by norm_num) (by norm_num) m

example (p : ℕ) (hp : p.Prime) : ¬p ∣ (h158PrimitiveScalar 0).den := by
  intro hd
  have h := h158PrimitiveScalar_den_prime_support 0 p hp hd
  have := hp.two_le
  omega

-- Negative signed costs are retained; this test does not replace them by zero.
example : -Real.log |((2 : ℚ) : ℝ)| ≤
    ∑ p ∈ (Finset.range 3).filter Nat.Prime,
      -(padicValRat p (2 : ℚ) : ℝ) * Real.log p := by
  apply neg_log_abs_rat_le_prime_cutoff _ (by norm_num)
  intro p hp hlarge
  change 0 ≤ padicValRat p ((2 : ℕ) : ℚ)
  rw [padicValRat.of_nat,
    padicValNat.eq_zero_of_not_dvd (Nat.not_dvd_of_pos_of_lt (by norm_num) hlarge)]
  norm_num

-- A concrete nonempty rank has the actual 103rd-order radial entry bound.
example (i j : Fin 2) (z : ℂ) (hz : (212 : ℝ) ≤ ‖z‖) :
    ‖h158EntryComplex 1 i j z‖ ≤ h158ContourDecayConstant 1 / ‖z‖ ^ 103 := by
  have hz' : h158ContourDecayRadius 1 ≤ ‖z‖ := by
    norm_num [h158ContourDecayRadius]
    exact hz
  simpa using h158EntryComplex_norm_le_decay 1 i j z hz'

example (i j : Fin 2) : Filter.Tendsto
    (h158RightClosingIntegral 1 i j) Filter.atTop (nhds 0) :=
  h158RightClosingIntegral_tendsto_zero 1 i j

example : padicValRat 331 (h158PrimitiveScalar 6) = -24 := by
  simpa using h158Gate_primitive_scalar_valuation 6 (by norm_num)

example : rationalPolynomialGaussValuation 331 (h158SevenMatrix 6).det
    (h158_formal_determinant_ne_zero_on_gate 6 (by norm_num)) = -24 := by
  simpa using h158Gate_formal_gauss_valuation 6 (by norm_num)
    (h158_formal_determinant_ne_zero_on_gate 6 (by norm_num))

-- The original matrix is retained for every rational anchor, with all jets.
example (a : ℚ) : h158SevenMatrix 1 =
    h158TaylorEvaluation 1 a * h158TaylorMoment 1 (by norm_num) a *
      (h158TaylorEvaluation 1 a).transpose :=
  h158SevenMatrix_taylor_factorization 1 (by norm_num) a

example (anchor : Fin 3 → ℚ) : h158SevenMatrix 1 =
    ∑ c : Fin 3, h158TaylorEvaluation 1 (anchor c) *
      h158ClusterMoment 1 (by norm_num) (h158ResidueClass 3 (by norm_num)) c (anchor c) *
        (h158TaylorEvaluation 1 (anchor c)).transpose :=
  h158SevenMatrix_eq_residue_factorization 1 3 (by norm_num) (by norm_num) anchor

-- Natural-number floors are taken before casting; the two-sided fee is 44.
example : h158RowFee 6 5 = 44 := by decide

example (i : Fin 2) (q : Fin 4) (m : Fin 7 →₀ ℕ) :
    0 ≤ padicValRat 13 ((h158ScaledTaylorEvaluation 1 13 (-23) i q).coeff m) := by
  exact h158ScaledTaylorEvaluation_coeff_nonneg 1 13 (by norm_num) (by norm_num)
    (-23) i q m

example (i j : Fin 2) : MeasureTheory.Integrable (h158VerticalIntegrand 1 i j) :=
  h158VerticalIntegrand_integrable 1 i j

example (i j : Fin 2) (q : ℝ) (hq : (212 : ℝ) ≤ q) :
    ‖h158VerticalIntegral 1 i j - h158VerticalTruncation 1 i j q‖ ≤
      2 * h158ContourIntegrandDecayConstant 1 / (102*q^102) := by
  have hq' : h158ContourDecayRadius 1 ≤ q := by
    norm_num [h158ContourDecayRadius]
    exact hq
  simpa using h158VerticalIntegral_truncation_error 1 i j q hq'

example : Filter.Tendsto (fun n : ℕ =>
    (OddZetaPNT.h158Content54 n + OddZetaPNT.h158Content55 n +
      OddZetaPNT.h158Content56 n) / (n : ℝ)^2) Filter.atTop (nhds (15/4)) :=
  h158_prime_content_three_bands_rate

-- Zero coefficients obey every valuation floor, including positive floors.
example : LocalJetValuation.FormalAtLeast 13 100 (0 : SevenPolynomial) :=
  LocalJetValuation.formal_zero 13 100

example (i : Fin 6) :
    (Polynomial.taylor (-238) (h158CenteredBasis 3 i)).coeff 19 = 0 := by
  have h := h158CenteredBasis_central_odd_coeff_zero 3 i 19 (by decide)
  norm_num at h
  exact h

example (n : ℕ) (i j : Fin (2*n)) :
    h158NormalizedVerticalIntegral n i j = (h158Functional n i j : ℂ) :=
  h158NormalizedVerticalIntegral_eq_functional n i j

example (c : Fin 23) (u v : Fin 12) :
    LocalJetValuation.FormalAtLeast 23
      (padicValRat 23 (h158Normalization 3) +
        LocalJetValuation.h158NumeratorCount 23 3 c.val -
        LocalJetValuation.h158DenominatorCount 23 3 c.val - 4 +
        (u.val : ℤ) + (v.val : ℤ))
      (h158ClusterMoment 3 (by norm_num) (h158ResidueClass 23 (by norm_num))
        c (-(c.val : ℚ)) u v) := by
  let : Fact (Nat.Prime 23) := ⟨by norm_num⟩
  exact LocalJetValuation.h158_residueClusterMoment_floor 3 (by norm_num)
    (by norm_num) (by norm_num) c u v

-- A canonical representative of a fixed class does NOT kill odd jets.
example : (Polynomial.taylor (-3 : ℚ) ((Polynomial.X+Polynomial.C (80 : ℚ))^2)).coeff 1
    = 154 := by
  rw [Polynomial.taylor_coeff_one]
  norm_num [Polynomial.derivative_pow, Polynomial.derivative_add,
    Polynomial.derivative_X, Polynomial.derivative_C]

-- The actual nonzero modular gate supplies nonvanishing to the new allocation bound.
example : -padicValRat 331 (h158PrimitiveScalar 6) ≤
    (h158RowFee 6 331 : ℤ) -
      FormalBlockSelection.h158MinAllocationFloor 6 331 (by norm_num) (by norm_num) := by
  exact FormalBlockSelection.h158_primitive_cost_unfolded_allocation 6 331
    (by norm_num) (by norm_num) (by norm_num)
    (h158_formal_determinant_ne_zero_on_gate 6 (by norm_num))

example (n : ℕ) : |Matrix.det (h158Functional n)| ≤
    ((2*n).factorial : ℝ) * ∏ i : Fin (2*n), h158ModulusMoment n i :=
  h158Functional_det_abs_le_modulusMoments n

example (n p : ℕ) (W : Matrix (Fin (4*n)) (Fin (4*n)) SevenPolynomial) :
    let V := h158ScaledTaylorEvaluation n p (-(79*(n : ℚ)+1))
    V*W*V.transpose =
      V.submatrix id (h158EvenJet n) * W.submatrix (h158EvenJet n) (h158EvenJet n) *
        (V.submatrix id (h158EvenJet n)).transpose :=
  h158_central_block_compression n p W

example (u v : Fin 2) :
    LocalJetValuation.FormalAtLeast 11
      (-LocalJetValuation.h158ClassCost 11 1 3+2*(u.val : ℤ)+2*(v.val : ℤ))
      (h158ClusterMoment 1 (by norm_num) (h158ResidueClass 11 (by norm_num))
        ⟨3, by norm_num⟩ (-80) (h158EvenJet 1 u) (h158EvenJet 1 v)) := by
  let : Fact (Nat.Prime 11) := ⟨by norm_num⟩
  have h := h158_central_even_block_floor (p := 11) 1 (by norm_num) (by norm_num)
    (by norm_num) ⟨3, by norm_num⟩ (by norm_num) u v
  simpa only [Nat.cast_one, mul_one, show -(79+(1 : ℚ)) = -80 by norm_num] using h

-- Both ends of the actual residue intervals, including shifted negative coordinates.
example : LocalJetValuation.residueIntervalFloor 13 (-27) 40 3 = 3 := by
  norm_num [LocalJetValuation.residueIntervalFloor]

example : LocalJetValuation.h158NumeratorCount 13 1 0 = 36 := by
  rw [LocalJetValuation.h158_numerator_count_floor 13 1 0 (by norm_num)]
  norm_num [LocalJetValuation.residueIntervalFloor, sum_range_succ]

example : LocalJetValuation.h158DenominatorCount 13 1 0 = 47 := by
  rw [LocalJetValuation.h158_denominator_count_floor 13 1 0 (by norm_num)]
  norm_num [LocalJetValuation.residueIntervalFloor, sum_range_succ]

example (p n c : ℕ) (hn : 0 < n) (hp : p.Prime) (hsq : 158*n+2 < p^2) :
    -16 ≤ padicValRat p (h158Normalization n)+
      LocalJetValuation.h158NumeratorCount p n c-
      LocalJetValuation.h158DenominatorCount p n c :=
  LocalJetValuation.h158_normalized_class_count_lower p n c hn hp hsq

-- The complete finite prime budget uses the same actual nonzero determinant.
example (tau : ℕ → ℚ) :
    h158PrimitiveCost 6 ≤ h158ExplicitArithmeticBudget 6 tau :=
  h158PrimitiveCost_le_explicit_budget 6 (by norm_num) tau
    (h158_formal_determinant_ne_zero_on_gate 6 (by norm_num))

example : UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0}
    H158SmallPrimeBudget.smallPrimeCost 0 :=
  H158SmallPrimeBudget.smallPrimeCost_upperQuadraticRate

-- An adaptive pair may vanish; its exact norm theorem retains this case.
example (delta a : ℚ) :
    h158AdaptivePairModulus (delta : ℝ) (a : ℝ) (a : ℝ) = 0 := by
  simp [h158AdaptivePairModulus]

example (n k : ℕ) (a : Fin 4 → ℚ) (s : ℝ) :
    h158AdaptiveBlockNormSq k (h158AdaptiveDelta n) a s ≤
      Real.exp (8*(k : ℝ)/(75*(n : ℝ)))*h158AdaptiveBlockNormSq k 75 a s :=
  h158AdaptiveBlockNormSq_delta_le_exp n k a s

-- Actual exceptional signed costs are negligible without a PNT hypothesis.
example : UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0}
    H158ExceptionalPrimes.exceptionalPrimeCost 0 :=
  H158ExceptionalPrimes.exceptionalPrimeCost_upperQuadraticRate

example : Filter.Tendsto (fun n : ℕ =>
    Real.log (h158BasisNormalization n)/(n : ℝ)^2) Filter.atTop
    (nhds (12-8*Real.log 4)) := h158BasisNormalization_log_rate

-- The endpoint estimate covers p dividing n, unlike a generic-cell maximum.
example : (∑ c : Fin 503,
    |LocalJetValuation.h158ClassCost 503 503 c.val-h158UnshiftedClassCost 503 503 c.val|) ≤ 27 :=
  h158ClassCost_unshifted_l1 503 503 (by norm_num)

example (n p : ℕ) (hp : 0 < p) (e : Fin p → ℤ) (r J : ℕ) (tau : ℚ) :
    |WeightedSlotThreshold.rationalThresholdBudget
        (fun c : Fin p => LocalJetValuation.h158ClassCost p n c.val) e r J tau -
      WeightedSlotThreshold.rationalThresholdBudget
        (fun c : Fin p => h158UnshiftedClassCost n p c.val) e r J tau| ≤ 27*(J : ℚ) :=
  h158_unshifted_threshold_error_le n p hp e r J tau

-- Twenty retained slots suffice at threshold -20; the original determinant
-- has 4n jets per block, so this does not use a false capacity assumption.
example (n p : ℕ) [Fact p.Prime] (hn : 0 < n) (hp : 0 < p) (hp2 : p ≠ 2)
    (hsq : 158*n+2 < p^2) (hdet : (h158SevenMatrix n).det ≠ 0) :
    (-(padicValRat p (h158PrimitiveScalar n)) : ℚ) ≤ (h158RowFee n p : ℚ) +
      WeightedSlotThreshold.rationalThresholdBudget (h158FoldedUnshiftedWeight n p hp)
        (h158FoldedSpacing n p hp) (2*n) 20 (-20) + 540 := by
  have h := h158_primitive_cost_unshifted_threshold n hn hp hp2 hsq 20 (-20)
    (by norm_num) hdet
  norm_num at h
  exact h
