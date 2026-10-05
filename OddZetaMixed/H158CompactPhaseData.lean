import OddZetaMixed.H158CompactPhase
import OddZetaMixed.RationalLogBounds
import OddZetaMixed.RationalArctanBounds

/-!
# Compact witness tables

The data contain only rational endpoints and series parameters. A finite
kernel check supplies every analytic enclosure. Grouping a table under one
proof avoids a separate dependent cast and declaration for each entry.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed.CompactPhase

structure LogWitness where
  exponent : ℤ
  lo : ℚ
  hi : ℚ

structure AtanWitness where
  order : ℕ
  lo : ℚ
  hi : ℚ

def logWitnessCheck (q : ℚ) (w : LogWitness) : Bool :=
  RationalLogBounds.checkRounded q w.exponent 12 1000000000000 w.lo w.hi

def atanWitnessCheck (q : ℚ) (w : AtanWitness) : Bool :=
  RationalArctanBounds.check q w.order w.lo w.hi

def logEnclosures {n : ℕ} (q : Fin n → ℚ) (w : Fin n → LogWitness)
    (h : ∀ i, logWitnessCheck (q i) (w i) = true) :
    ∀ i, Enclosure (Real.log (q i : ℝ)) := fun i =>
  let bounds := RationalLogBounds.of_checkRounded (q i) (w i).exponent 12 1000000000000
    (w i).lo (w i).hi (h i)
  ⟨(w i).lo, (w i).hi, bounds.1, bounds.2⟩

def atanEnclosures {n : ℕ} (q : Fin n → ℚ) (w : Fin n → AtanWitness)
    (h : ∀ i, atanWitnessCheck (q i) (w i) = true) :
    ∀ i, Enclosure (Real.arctan (q i : ℝ)) := fun i =>
  let bounds := RationalArctanBounds.of_check (q i) (w i).order (w i).lo (w i).hi (h i)
  ⟨(w i).lo, (w i).hi, bounds.1, bounds.2⟩

end OddZetaMixed.CompactPhase
