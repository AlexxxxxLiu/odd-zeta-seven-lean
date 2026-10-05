import OddZetaMixed.H158MiddleCellsFastGrid
import OddZetaMixed.H158MiddleCellsData000

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace OddZetaMixed.H158MiddleCells

theorem savedCell000_fast_checked : savedCell000.check :=
  savedGrid000.fastCheck_cell (by decide +kernel)

example : ¬({ savedGrid000 with quotients := 123 :: savedGrid000.quotients.tail }).fastCheck := by
  decide +kernel

#print axioms GridCertificate.fastCheck_cell
#print axioms savedCell000_fast_checked

end OddZetaMixed.H158MiddleCells
