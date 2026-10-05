import OddZetaMixed.H158HighCellsCertified
import OddZetaMixed.H158HighPrimeRate
import OddZetaMixed.H158RationalWalls

/-!
# The actual uncapped high-prime majorant

The finite table is connected to the actual scalar before applying the
prime-weighted limit. Fixed rational geometry walls are eventually avoided;
residue boundaries retain the proved per-prime correction11990.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.H158HighCells.Data

open Finset Filter

def majorant (n p : ℕ) : ℝ := highMajorant selections 11990 n p

theorem majorant_nonneg (n p : ℕ) (hn : 0 < n) : 0 ≤ majorant n p :=
  highMajorant_nonneg selections 11990 (by norm_num)
    selections_bounds selections_nonnegative_endpoints n p hn

theorem majorant_ratio_limit :
    Tendsto (fun n : ℕ => h158ProfilePrimeSum n (majorant n)/(n : ℝ)^2)
      atTop (nhds ((102751231 : ℝ)/203490)) := by
  have h := highMajorant_ratio_limit selections 11990
    selections_bounds selections_nonnegative_endpoints
  change Tendsto (fun n : ℕ => h158ProfilePrimeSum n
    (highMajorant selections 11990 n)/(n : ℝ)^2) atTop _
  change Tendsto _ _ (nhds (integralSum : ℝ)) at h
  simpa only [integralSum_exact, Rat.cast_div, Rat.cast_ofNat] using h

theorem actual_high_cost_le_majorant :
    ∀ᶠ n : ℕ in atTop, (h158SevenMatrix n).det ≠ 0 →
      ∀ p, p.Prime → 26*n < p → p ≤ 57*n → 158*n+2 < p^2 → ¬p ∣ n →
        (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤ majorant n p := by
  classical
  let walls : Finset ℚ := univ.image (fun i : Fin 70 => (cells i).hi)
  filter_upwards [h158_eventually_avoid_rational_walls walls,
    eventually_gt_atTop (0 : ℕ)] with n hw hn
  intro hdet p hp hlo hhi hsq hpn
  let : Fact p.Prime := ⟨hp⟩
  have hwalls (i : Fin 70) : (p : ℚ)/n ≠ (cells i).hi :=
    hw p hp hsq hpn _ (mem_image_of_mem _ (mem_univ i))
  have hupper : p < 57*n := by
    have hne : p ≠ 57*n := by
      intro he
      have h3 : 3 ∣ p := by
        rw [he]
        exact dvd_mul_of_dvd_left (by decide : 3 ∣ 57) n
      have h := hp.eq_one_or_self_of_dvd 3 h3
      omega
    omega
  obtain ⟨s,hs,hl,hr,hcost⟩ := actual_selection_primitive_cost n hn hlo hupper hwalls hdet
  have hm := highMajorant_dominates_selection selections 11990
    selections_bounds selections_nonnegative_endpoints n p hn s hs hl hr
  rw [← Affine.realEval_cast] at hm
  simp only [Rat.cast_div, Rat.cast_natCast] at hm
  exact hcost.trans hm

#print axioms majorant_ratio_limit
#print axioms actual_high_cost_le_majorant

end OddZetaMixed.H158HighCells.Data
