import OddZetaMixed.H158SingletonValuation

open OddZetaMixed OddZetaMixed.LocalJetValuation Polynomial

example : H158PoleSingleton 127 4 295 :=
  h158_poleSingleton_of_interval 127 4 295 (by norm_num) (by norm_num)

example : H158PoleSingleton 127 4 339 :=
  h158_poleSingleton_of_interval 127 4 339 (by norm_num) (by norm_num)

-- Reflection partners can differ in their harmonic classification.
example : 295-48*4-1 < 127 ∧ ¬339-48*4-1 < 127 := by norm_num

example (m : ℕ) :
    FormalAtLeast 37
      (padicValRat 37 (h158Normalization 1)+
        max 0 (h158NumeratorCount 37 1 76-(h158PoleOrder 1 76 : ℤ)+1+(m : ℤ)))
      (h158PoleJetMap 1 (by norm_num) 76 (taylor (76 : ℚ) (X^m))) := by
  let : Fact (Nat.Prime 37) := ⟨by norm_num⟩
  exact h158_high_singleton_poleMap_plateau 1 76 (by norm_num)
    ((h158PoleSet_mem_iff 1 76).mpr (by constructor <;> norm_num))
    (by norm_num) (by norm_num) (by norm_num) (by norm_num) m

-- The original central zero is retained, not canceled a second time.
example (m : ℕ) :
    FormalAtLeast 37
      (padicValRat 37 (h158Normalization 1)+
        max 0 (h158NumeratorCount 37 1 80-(h158PoleOrder 1 80 : ℤ)+1+(m : ℤ)))
      (h158PoleJetMap 1 (by norm_num) 80 (taylor (80 : ℚ) (X^m))) := by
  let : Fact (Nat.Prime 37) := ⟨by norm_num⟩
  exact h158_high_singleton_poleMap_plateau 1 80 (by norm_num)
    ((h158PoleSet_mem_iff 1 80).mpr (by constructor <;> norm_num))
    (by norm_num) (by norm_num) (by norm_num) (by norm_num) m

example {p r : ℕ} [Fact p.Prime] (n k : ℕ) (hn : 0 < n) (hp : 0 < p)
    (hk : k ∈ h158PoleSet n) (hsingle : H158PoleSingleton p n k)
    (hsq : 52*n < p^2) (hcut : k-48*n-1 < p)
    (c : Fin p) (hkc : h158ResidueClass p hp k = c)
    (anchor : ℤ) (ha : (p : ℤ) ∣ anchor+(c.val : ℤ))
    (u v : Fin r → Fin (4*n))
    (hu : StrictMono (fun i => (u i).val)) (hv : StrictMono (fun i => (v i).val)) :
    FormalAtLeast p
      ((r : ℤ)*(padicValRat p (h158Normalization n)+
        max 0 (h158NumeratorCount p n c.val-(h158PoleOrder n k : ℤ)+(r : ℤ))))
      ((h158ClusterMoment n hn (h158ResidueClass p hp) c (anchor : ℚ)).submatrix u v).det :=
  h158_singleton_minor_plateau n k hn hp hk hsingle hsq hcut c hkc anchor ha u v hu hv

#print axioms h158_singleton_cofactor_unit
#print axioms h158_base_coefficient_normalization_floor_of_singleton
#print axioms h158_poleCoordinate_floor_no_harmonic
#print axioms h158_singleton_poleMap_plateau
#print axioms h158_singleton_residueClusterMoment_plateau
#print axioms formal_minor_plateau_floor
#print axioms h158_singleton_minor_plateau
