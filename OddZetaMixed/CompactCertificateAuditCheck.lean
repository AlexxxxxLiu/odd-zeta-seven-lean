import OddZetaMixed.H158CompactPhaseCertificates
import OddZetaMixed.H158CompactPhaseData

/-!
# Independent compact-certificate interface regression checks

These adverse probes test the elementary enclosure interfaces at scale and
branch boundaries, including negative logarithms and large signed scales.
They do not assert completion of the sixteen full compact endpoint proofs.
No generator, generated certificate, shared root, or verifier is modified.
-/

set_option autoImplicit false

namespace OddZetaMixed.CompactCertificateAudit

structure LogProbe where
  q : ℚ
  k : ℤ
  lo : ℚ
  hi : ℚ

def logProbes : Fin 8 → LogProbe :=
  ![⟨1, 0, 0, 0⟩,
   ⟨(2^20-1)/2^20, -1, -1/10^6, -9/10^7⟩,
   ⟨(2^20+1)/2^20, 0, 9/10^7, 1/10^6⟩,
   ⟨2, 0, 6931471805/10^10, 6931471806/10^10⟩,
   ⟨2, 1, 6931471805/10^10, 6931471806/10^10⟩,
   ⟨2^80, 80, 55451774442/10^9, 55451774448/10^9⟩,
   ⟨1/2^40, -40, -27725887224/10^9, -27725887221/10^9⟩,
   ⟨1/3, -2, -10986122888/10^10, -10986122886/10^10⟩]

theorem logProbes_checked : ∀ i : Fin 8,
    RationalLogBounds.checkRounded (logProbes i).q (logProbes i).k 12 (10^12)
      (logProbes i).lo (logProbes i).hi = true := by
  decide +kernel

#check logProbes_checked

theorem logProbes_sound (i : Fin 8) :
    ((logProbes i).lo : ℝ) ≤ Real.log ((logProbes i).q : ℝ) ∧
      Real.log ((logProbes i).q : ℝ) ≤ ((logProbes i).hi : ℝ) :=
  RationalLogBounds.of_checkRounded _ _ 12 (10^12) _ _ (logProbes_checked i)

structure AtanProbe where
  q : ℚ
  lo : ℚ
  hi : ℚ

def atanProbes : Fin 12 → AtanProbe :=
  ![⟨0, 0, 0⟩,
   ⟨1/2-1/1000, 462/1000, 465/1000⟩,
   ⟨1/2, 4636476089/10^10, 4636476091/10^10⟩,
   ⟨1/2+1/1000, 462/1000, 465/1000⟩,
   ⟨1-1/1000, 784/1000, 787/1000⟩,
   ⟨1, 7853981633/10^10, 7853981635/10^10⟩,
   ⟨1+1/1000, 784/1000, 787/1000⟩,
   ⟨2-1/1000, 1106/1000, 1109/1000⟩,
   ⟨2, 11071487177/10^10, 11071487179/10^10⟩,
   ⟨2+1/1000, 1106/1000, 1109/1000⟩,
   ⟨24, 15291537476/10^10, 15291537478/10^10⟩,
   ⟨1000, 1569/1000, 1571/1000⟩]

theorem atanProbes_checked : ∀ i : Fin 12,
    RationalArctanBounds.check (atanProbes i).q 10 (atanProbes i).lo (atanProbes i).hi = true := by
  decide +kernel

#check atanProbes_checked

theorem atanProbes_sound (i : Fin 12) :
    ((atanProbes i).lo : ℝ) ≤ Real.arctan ((atanProbes i).q : ℝ) ∧
      Real.arctan ((atanProbes i).q : ℝ) ≤ ((atanProbes i).hi : ℝ) :=
  RationalArctanBounds.of_check _ 10 _ _ (atanProbes_checked i)

-- Wrong scale and inward/reversed bounds must fail, not silently totalize.
example : RationalLogBounds.checkRounded ((2^20-1)/2^20) 0 12 (10^12)
    (-1/10^6) (-9/10^7) = false := by decide +kernel

example : RationalLogBounds.checkRounded (1/3) (-2) 12 (10^12)
    (-10986122886/10^10) (-10986122888/10^10) = false := by decide +kernel

example : RationalArctanBounds.check (-1/10^12) 10 (-1) 1 = false := by decide +kernel

example : RationalArctanBounds.check 1 10 (7853981635/10^10)
    (7853981633/10^10) = false := by decide +kernel

theorem negative_weight_reverses_endpoints {x : ℝ} (e : CompactPhase.Enclosure x) :
    (e.scale (-5)).lo = -5*e.hi ∧ (e.scale (-5)).hi = -5*e.lo := by
  norm_num [CompactPhase.Enclosure.scale]

theorem subtraction_reverses_subtrahend {x y : ℝ}
    (a : CompactPhase.Enclosure x) (b : CompactPhase.Enclosure y) :
    (a.sub b).lo = a.lo-b.hi ∧ (a.sub b).hi = a.hi-b.lo :=
  ⟨rfl, rfl⟩

example : (∑ i : Fin 44, CompactPhase.phaseWeight i) = (10 : ℚ) := by
  decide +kernel

example : (∑ i : Fin 21, CompactPhase.constantWeight i) = (92 : ℚ) := by
  decide +kernel

/-- The positive-pair premise cannot hold at a root. It must remain visible
when applying a positive-theta compact potential theorem. -/
theorem pair_root_excluded (a : ℝ) : ¬ 0 < h158AdaptivePairModulus 75 a a := by
  simp [h158AdaptivePairModulus]

#print axioms logProbes_checked
#print axioms logProbes_sound
#print axioms atanProbes_checked
#print axioms atanProbes_sound
#print axioms negative_weight_reverses_endpoints
#print axioms pair_root_excluded
#print axioms CompactPhase.Certificates.first_cell_endpoints
#print axioms h158CompactPhase_first_cell
#print axioms CompactPhase.logEnclosures
#print axioms CompactPhase.atanEnclosures

end OddZetaMixed.CompactCertificateAudit
