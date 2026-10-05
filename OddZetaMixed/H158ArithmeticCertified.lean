import OddZetaMixed.H158LowCellsCertificateCheck
import OddZetaMixed.H158MiddleCellsSavedCertificate
import OddZetaMixed.H158ArithmeticAssembly

/-!
# Conservative arithmetic rate from the three actual certificates

The low, middle and high tables bound the same primitive scalar. All endpoint
corrections remain in the majorants, and the actual exceptional-prime costs
are retained by the all-prime assembly.
-/

noncomputable section
set_option autoImplicit false

namespace OddZetaMixed

open Filter

theorem h158ArithmeticCertifiedRate :
    UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0} h158PrimitiveCost 1012 :=
  h158ArithmeticRate_of_checked_blocks H158LowCells.Certificate.lowBlock
    H158LowCells.Certificate.lowBlock_left H158LowCells.Certificate.lowBlock_right
    H158LowCells.Certificate.lowBlock_integral_le_seventyFour
    H158MiddleCells.savedCertificate H158MiddleCells.savedCertificate_checked
    H158MiddleCells.savedCertificate_profile_checked
    H158MiddleCells.savedCertificate_integral_lt_433

#print axioms h158ArithmeticCertifiedRate

end OddZetaMixed
