import OddZetaMixed.H158RationalWalls

open Filter Finset OddZetaMixed

-- Wall exclusion is eventual, not true at every index.
example : (53 : ℚ)/1 = 53 := by norm_num

example : (53 : ℕ) ∣ (53 : ℚ).num.natAbs := by
  exact prime_ratio_dvd_numerator (n := 1) (by norm_num) (by norm_num) (by norm_num)
    53 (by norm_num)

example : (127 : ℚ)/4 ≠ 53 := by
  apply prime_ratio_ne_of_numerator_lt (by norm_num) (by norm_num) (by norm_num)
  norm_num

example : ∀ᶠ n : ℕ in atTop, ∀ p, p.Prime → 158*n+2 < p^2 → ¬p ∣ n →
    ∀ q ∈ ({26, 169/3, 57} : Finset ℚ), (p : ℚ)/n ≠ q :=
  h158_eventually_avoid_rational_walls _

example : ∀ᶠ n : ℕ in atTop, ∀ p, p.Prime → 158*n+2 < p^2 → ¬p ∣ n →
    (26 : ℚ) ≤ (p : ℚ)/n → (p : ℚ)/n ≤ 57 →
      26 < (p : ℚ)/n ∧ (p : ℚ)/n < 57 := by
  have h := h158_eventually_open_cell ({()} : Finset Unit) (fun _ => 26) (fun _ => 57)
  filter_upwards [h] with n hn
  intro p hp hs hpn
  exact hn p hp hs hpn () (by simp)

#print axioms h158_eventually_open_cell
