import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile0448 : ProfileCell :=
  ⟨(17/107), (7/44),
    [8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 7, 8, 8],
    [⟨39, 17⟩, ⟨16, 10⟩, ⟨33, 16⟩, ⟨10, 9⟩, ⟨27, 15⟩, ⟨4, 8⟩, ⟨43, 25⟩, ⟨40, 17⟩, ⟨17, 10⟩, ⟨34, 16⟩, ⟨11, 9⟩, ⟨28, 15⟩, ⟨5, 8⟩, ⟨22, 14⟩, ⟨41, 17⟩, ⟨18, 10⟩, ⟨35, 16⟩, ⟨12, 9⟩, ⟨29, 15⟩, ⟨6, 8⟩, ⟨23, 14⟩, ⟨42, 17⟩, ⟨19, 10⟩, ⟨36, 16⟩, ⟨13, 9⟩, ⟨30, 15⟩, ⟨7, 8⟩, ⟨24, 14⟩, ⟨1, 7⟩, ⟨20, 10⟩, ⟨37, 16⟩, ⟨14, 9⟩, ⟨31, 15⟩, ⟨8, 8⟩, ⟨25, 14⟩, ⟨2, 7⟩, ⟨21, 10⟩, ⟨38, 16⟩, ⟨15, 9⟩, ⟨32, 15⟩, ⟨9, 8⟩, ⟨26, 14⟩, ⟨3, 7⟩]⟩
theorem profile0448_checked : profile0448.check := by decide +kernel

noncomputable def selection1_0448 : Selection :=
  ⟨1, -2, 4, (1361/100), 216, -80, 652⟩
theorem selection1_0448_checked : selection1_0448.check profile0448 := by decide +kernel

noncomputable def selection2_0448 : Selection :=
  ⟨2, -10, 8, (673/50), 62, -84, 1020⟩
theorem selection2_0448_checked : selection2_0448.check profile0448 := by decide +kernel

noncomputable def profile0449 : ProfileCell :=
  ⟨(7/44), (15/94),
    [8, 7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 7, 8, 8],
    [⟨16, 10⟩, ⟨39, 17⟩, ⟨10, 9⟩, ⟨33, 16⟩, ⟨4, 8⟩, ⟨27, 15⟩, ⟨43, 25⟩, ⟨17, 10⟩, ⟨40, 17⟩, ⟨11, 9⟩, ⟨34, 16⟩, ⟨5, 8⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨18, 10⟩, ⟨41, 17⟩, ⟨12, 9⟩, ⟨35, 16⟩, ⟨6, 8⟩, ⟨29, 15⟩, ⟨23, 14⟩, ⟨19, 10⟩, ⟨42, 17⟩, ⟨13, 9⟩, ⟨36, 16⟩, ⟨7, 8⟩, ⟨30, 15⟩, ⟨1, 7⟩, ⟨24, 14⟩, ⟨20, 10⟩, ⟨14, 9⟩, ⟨37, 16⟩, ⟨8, 8⟩, ⟨31, 15⟩, ⟨2, 7⟩, ⟨25, 14⟩, ⟨21, 10⟩, ⟨15, 9⟩, ⟨38, 16⟩, ⟨9, 8⟩, ⟨32, 15⟩, ⟨3, 7⟩, ⟨26, 14⟩]⟩
theorem profile0449_checked : profile0449.check := by decide +kernel

noncomputable def selection1_0449 : Selection :=
  ⟨1, -3, 4, (296/25), 426, -150, 1092⟩
theorem selection1_0449_checked : selection1_0449.check profile0449 := by decide +kernel

noncomputable def selection2_0449 : Selection :=
  ⟨2, -11, 8, (581/50), 121, -154, 1460⟩
theorem selection2_0449_checked : selection2_0449.check profile0449 := by decide +kernel

noncomputable def profile0450 : ProfileCell :=
  ⟨(15/94), (4/25),
    [8, 7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 7, 8, 8],
    [⟨26, 15⟩, ⟨16, 10⟩, ⟨39, 17⟩, ⟨10, 9⟩, ⟨33, 16⟩, ⟨4, 8⟩, ⟨27, 15⟩, ⟨17, 10⟩, ⟨43, 25⟩, ⟨40, 17⟩, ⟨11, 9⟩, ⟨34, 16⟩, ⟨5, 8⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨18, 10⟩, ⟨41, 17⟩, ⟨12, 9⟩, ⟨35, 16⟩, ⟨6, 8⟩, ⟨29, 15⟩, ⟨23, 14⟩, ⟨19, 10⟩, ⟨42, 17⟩, ⟨13, 9⟩, ⟨36, 16⟩, ⟨7, 8⟩, ⟨30, 15⟩, ⟨1, 7⟩, ⟨24, 14⟩, ⟨20, 10⟩, ⟨14, 9⟩, ⟨37, 16⟩, ⟨8, 8⟩, ⟨31, 15⟩, ⟨2, 7⟩, ⟨25, 14⟩, ⟨21, 10⟩, ⟨15, 9⟩, ⟨38, 16⟩, ⟨9, 8⟩, ⟨32, 15⟩, ⟨3, 7⟩]⟩
theorem profile0450_checked : profile0450.check := by decide +kernel

noncomputable def selection1_0450 : Selection :=
  ⟨1, -3, 4, (597/50), 378, -60, 528⟩
theorem selection1_0450_checked : selection1_0450.check profile0450 := by decide +kernel

noncomputable def selection2_0450 : Selection :=
  ⟨2, -11, 8, (1171/100), 107, -64, 896⟩
theorem selection2_0450_checked : selection2_0450.check profile0450 := by decide +kernel

noncomputable def profile0451 : ProfileCell :=
  ⟨(4/25), (17/106),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 8, 8, 8],
    [⟨3, 8⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨39, 17⟩, ⟨4, 8⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨40, 17⟩, ⟨43, 25⟩, ⟨5, 8⟩, ⟨34, 16⟩, ⟨28, 15⟩, ⟨18, 10⟩, ⟨22, 14⟩, ⟨12, 9⟩, ⟨41, 17⟩, ⟨6, 8⟩, ⟨35, 16⟩, ⟨29, 15⟩, ⟨19, 10⟩, ⟨23, 14⟩, ⟨13, 9⟩, ⟨42, 17⟩, ⟨7, 8⟩, ⟨36, 16⟩, ⟨1, 7⟩, ⟨30, 15⟩, ⟨20, 10⟩, ⟨24, 14⟩, ⟨14, 9⟩, ⟨8, 8⟩, ⟨37, 16⟩, ⟨2, 7⟩, ⟨31, 15⟩, ⟨21, 10⟩, ⟨25, 14⟩, ⟨15, 9⟩, ⟨9, 8⟩, ⟨38, 16⟩]⟩
theorem profile0451_checked : profile0451.check := by decide +kernel

noncomputable def selection1_0451 : Selection :=
  ⟨1, -2, 4, (281/20), 394, -84, 678⟩
theorem selection1_0451_checked : selection1_0451.check profile0451 := by decide +kernel

noncomputable def selection2_0451 : Selection :=
  ⟨2, -10, 8, (69/5), 112, -88, 1046⟩
theorem selection2_0451_checked : selection2_0451.check profile0451 := by decide +kernel

noncomputable def profile0452 : ProfileCell :=
  ⟨(17/106), (9/56),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 8, 8, 8],
    [⟨38, 17⟩, ⟨3, 8⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨39, 17⟩, ⟨4, 8⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨40, 17⟩, ⟨5, 8⟩, ⟨43, 25⟩, ⟨34, 16⟩, ⟨28, 15⟩, ⟨18, 10⟩, ⟨22, 14⟩, ⟨12, 9⟩, ⟨41, 17⟩, ⟨6, 8⟩, ⟨35, 16⟩, ⟨29, 15⟩, ⟨19, 10⟩, ⟨23, 14⟩, ⟨13, 9⟩, ⟨42, 17⟩, ⟨7, 8⟩, ⟨36, 16⟩, ⟨1, 7⟩, ⟨30, 15⟩, ⟨20, 10⟩, ⟨24, 14⟩, ⟨14, 9⟩, ⟨8, 8⟩, ⟨37, 16⟩, ⟨2, 7⟩, ⟨31, 15⟩, ⟨21, 10⟩, ⟨25, 14⟩, ⟨15, 9⟩, ⟨9, 8⟩]⟩
theorem profile0452_checked : profile0452.check := by decide +kernel

noncomputable def selection1_0452 : Selection :=
  ⟨1, -2, 4, (352/25), 353, -16, 254⟩
theorem selection1_0452_checked : selection1_0452.check profile0452 := by decide +kernel

noncomputable def selection2_0452 : Selection :=
  ⟨2, -10, 8, (277/20), 100, -20, 622⟩
theorem selection2_0452_checked : selection2_0452.check profile0452 := by decide +kernel

noncomputable def profile0453 : ProfileCell :=
  ⟨(9/56), (5/31),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 8, 8, 8],
    [⟨9, 9⟩, ⟨3, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨43, 25⟩, ⟨28, 15⟩, ⟨18, 10⟩, ⟨22, 14⟩, ⟨12, 9⟩, ⟨6, 8⟩, ⟨41, 17⟩, ⟨35, 16⟩, ⟨29, 15⟩, ⟨19, 10⟩, ⟨23, 14⟩, ⟨13, 9⟩, ⟨7, 8⟩, ⟨42, 17⟩, ⟨1, 7⟩, ⟨36, 16⟩, ⟨30, 15⟩, ⟨20, 10⟩, ⟨24, 14⟩, ⟨14, 9⟩, ⟨8, 8⟩, ⟨2, 7⟩, ⟨37, 16⟩, ⟨31, 15⟩, ⟨21, 10⟩, ⟨25, 14⟩, ⟨15, 9⟩]⟩
theorem profile0453_checked : profile0453.check := by decide +kernel

noncomputable def selection1_0453 : Selection :=
  ⟨1, -1, 4, (1423/100), 609, -84, 648⟩
theorem selection1_0453_checked : selection1_0453.check profile0453 := by decide +kernel

noncomputable def selection2_0453 : Selection :=
  ⟨2, -9, 8, (699/50), 173, -92, 1016⟩
theorem selection2_0453_checked : selection2_0453.check profile0453 := by decide +kernel

noncomputable def profile0454 : ProfileCell :=
  ⟨(5/31), (16/99),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 8, 8, 8],
    [⟨15, 10⟩, ⟨25, 15⟩, ⟨9, 9⟩, ⟨3, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨16, 10⟩, ⟨26, 15⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨17, 10⟩, ⟨27, 15⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨18, 10⟩, ⟨28, 15⟩, ⟨43, 25⟩, ⟨12, 9⟩, ⟨22, 14⟩, ⟨6, 8⟩, ⟨41, 17⟩, ⟨35, 16⟩, ⟨19, 10⟩, ⟨29, 15⟩, ⟨13, 9⟩, ⟨23, 14⟩, ⟨7, 8⟩, ⟨1, 7⟩, ⟨42, 17⟩, ⟨36, 16⟩, ⟨20, 10⟩, ⟨30, 15⟩, ⟨14, 9⟩, ⟨24, 14⟩, ⟨8, 8⟩, ⟨2, 7⟩, ⟨37, 16⟩, ⟨21, 10⟩, ⟨31, 15⟩]⟩
theorem profile0454_checked : profile0454.check := by decide +kernel

noncomputable def selection1_0454 : Selection :=
  ⟨1, -1, 4, (358/25), 346, -84, 648⟩
theorem selection1_0454_checked : selection1_0454.check profile0454 := by decide +kernel

noncomputable def selection2_0454 : Selection :=
  ⟨2, -9, 8, (281/20), 98, -92, 1016⟩
theorem selection2_0454_checked : selection2_0454.check profile0454 := by decide +kernel

noncomputable def profile0455 : ProfileCell :=
  ⟨(16/99), (11/68),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 8, 8, 8],
    [⟨31, 16⟩, ⟨15, 10⟩, ⟨25, 15⟩, ⟨9, 9⟩, ⟨3, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨16, 10⟩, ⟨26, 15⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨17, 10⟩, ⟨27, 15⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨18, 10⟩, ⟨28, 15⟩, ⟨12, 9⟩, ⟨43, 25⟩, ⟨22, 14⟩, ⟨6, 8⟩, ⟨41, 17⟩, ⟨35, 16⟩, ⟨19, 10⟩, ⟨29, 15⟩, ⟨13, 9⟩, ⟨23, 14⟩, ⟨7, 8⟩, ⟨1, 7⟩, ⟨42, 17⟩, ⟨36, 16⟩, ⟨20, 10⟩, ⟨30, 15⟩, ⟨14, 9⟩, ⟨24, 14⟩, ⟨8, 8⟩, ⟨2, 7⟩, ⟨37, 16⟩, ⟨21, 10⟩]⟩
theorem profile0455_checked : profile0455.check := by decide +kernel

noncomputable def selection1_0455 : Selection :=
  ⟨1, -1, 4, (358/25), 158, 12, 54⟩
theorem selection1_0455_checked : selection1_0455.check profile0455 := by decide +kernel

noncomputable def selection2_0455 : Selection :=
  ⟨2, -9, 8, (1407/100), 45, 4, 422⟩
theorem selection2_0455_checked : selection2_0455.check profile0455 := by decide +kernel

noncomputable def profile0456 : ProfileCell :=
  ⟨(11/68), (17/105),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 8, 8, 8],
    [⟨21, 11⟩, ⟨31, 16⟩, ⟨15, 10⟩, ⟨25, 15⟩, ⟨9, 9⟩, ⟨3, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨16, 10⟩, ⟨26, 15⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨17, 10⟩, ⟨27, 15⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨18, 10⟩, ⟨28, 15⟩, ⟨12, 9⟩, ⟨22, 14⟩, ⟨43, 25⟩, ⟨6, 8⟩, ⟨41, 17⟩, ⟨35, 16⟩, ⟨19, 10⟩, ⟨29, 15⟩, ⟨13, 9⟩, ⟨23, 14⟩, ⟨7, 8⟩, ⟨1, 7⟩, ⟨42, 17⟩, ⟨36, 16⟩, ⟨20, 10⟩, ⟨30, 15⟩, ⟨14, 9⟩, ⟨24, 14⟩, ⟨8, 8⟩, ⟨2, 7⟩, ⟨37, 16⟩]⟩
theorem profile0456_checked : profile0456.check := by decide +kernel

noncomputable def selection1_0456 : Selection :=
  ⟨1, -1, 4, (287/20), 149, -54, 462⟩
theorem selection1_0456_checked : selection1_0456.check profile0456 := by decide +kernel

noncomputable def selection2_0456 : Selection :=
  ⟨2, -9, 8, (1409/100), 43, -62, 830⟩
theorem selection2_0456_checked : selection2_0456.check profile0456 := by decide +kernel

noncomputable def profile0457 : ProfileCell :=
  ⟨(17/105), (6/37),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 8, 8, 8],
    [⟨37, 17⟩, ⟨21, 11⟩, ⟨31, 16⟩, ⟨15, 10⟩, ⟨25, 15⟩, ⟨9, 9⟩, ⟨3, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨16, 10⟩, ⟨26, 15⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨17, 10⟩, ⟨27, 15⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨18, 10⟩, ⟨28, 15⟩, ⟨12, 9⟩, ⟨22, 14⟩, ⟨6, 8⟩, ⟨43, 25⟩, ⟨41, 17⟩, ⟨35, 16⟩, ⟨19, 10⟩, ⟨29, 15⟩, ⟨13, 9⟩, ⟨23, 14⟩, ⟨7, 8⟩, ⟨1, 7⟩, ⟨42, 17⟩, ⟨36, 16⟩, ⟨20, 10⟩, ⟨30, 15⟩, ⟨14, 9⟩, ⟨24, 14⟩, ⟨8, 8⟩, ⟨2, 7⟩]⟩
theorem profile0457_checked : profile0457.check := by decide +kernel

noncomputable def selection1_0457 : Selection :=
  ⟨1, -1, 4, (287/20), 274, 48, -168⟩
theorem selection1_0457_checked : selection1_0457.check profile0457 := by decide +kernel

noncomputable def selection2_0457 : Selection :=
  ⟨2, -9, 8, (141/10), 78, 40, 200⟩
theorem selection2_0457_checked : selection2_0457.check profile0457 := by decide +kernel

noncomputable def profile0458 : ProfileCell :=
  ⟨(6/37), (7/43),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 8, 8, 8],
    [⟨21, 11⟩, ⟨37, 17⟩, ⟨15, 10⟩, ⟨31, 16⟩, ⟨9, 9⟩, ⟨25, 15⟩, ⟨3, 8⟩, ⟨38, 17⟩, ⟨16, 10⟩, ⟨32, 16⟩, ⟨10, 9⟩, ⟨26, 15⟩, ⟨4, 8⟩, ⟨39, 17⟩, ⟨17, 10⟩, ⟨33, 16⟩, ⟨11, 9⟩, ⟨27, 15⟩, ⟨5, 8⟩, ⟨40, 17⟩, ⟨18, 10⟩, ⟨34, 16⟩, ⟨12, 9⟩, ⟨28, 15⟩, ⟨6, 8⟩, ⟨22, 14⟩, ⟨43, 25⟩, ⟨41, 17⟩, ⟨19, 10⟩, ⟨35, 16⟩, ⟨13, 9⟩, ⟨29, 15⟩, ⟨7, 8⟩, ⟨23, 14⟩, ⟨1, 7⟩, ⟨42, 17⟩, ⟨20, 10⟩, ⟨36, 16⟩, ⟨14, 9⟩, ⟨30, 15⟩, ⟨8, 8⟩, ⟨24, 14⟩, ⟨2, 7⟩]⟩
theorem profile0458_checked : profile0458.check := by decide +kernel

noncomputable def selection1_0458 : Selection :=
  ⟨1, -1, 4, (361/25), 672, -48, 424⟩
theorem selection1_0458_checked : selection1_0458.check profile0458 := by decide +kernel

noncomputable def selection2_0458 : Selection :=
  ⟨2, -9, 8, (711/50), 192, -56, 792⟩
theorem selection2_0458_checked : selection2_0458.check profile0458 := by decide +kernel

noncomputable def profile0459 : ProfileCell :=
  ⟨(7/43), (15/92),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 8, 8, 8],
    [⟨21, 11⟩, ⟨15, 10⟩, ⟨37, 17⟩, ⟨9, 9⟩, ⟨31, 16⟩, ⟨3, 8⟩, ⟨25, 15⟩, ⟨16, 10⟩, ⟨38, 17⟩, ⟨10, 9⟩, ⟨32, 16⟩, ⟨4, 8⟩, ⟨26, 15⟩, ⟨17, 10⟩, ⟨39, 17⟩, ⟨11, 9⟩, ⟨33, 16⟩, ⟨5, 8⟩, ⟨27, 15⟩, ⟨18, 10⟩, ⟨40, 17⟩, ⟨12, 9⟩, ⟨34, 16⟩, ⟨6, 8⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨43, 25⟩, ⟨19, 10⟩, ⟨41, 17⟩, ⟨13, 9⟩, ⟨35, 16⟩, ⟨7, 8⟩, ⟨29, 15⟩, ⟨1, 7⟩, ⟨23, 14⟩, ⟨20, 10⟩, ⟨42, 17⟩, ⟨14, 9⟩, ⟨36, 16⟩, ⟨8, 8⟩, ⟨30, 15⟩, ⟨2, 7⟩, ⟨24, 14⟩]⟩
theorem profile0459_checked : profile0459.check := by decide +kernel

noncomputable def selection1_0459 : Selection :=
  ⟨1, -2, 4, (1451/100), 272, -132, 968⟩
theorem selection1_0459_checked : selection1_0459.check profile0459 := by decide +kernel

noncomputable def selection2_0459 : Selection :=
  ⟨2, -10, 8, (357/25), 78, -136, 1336⟩
theorem selection2_0459_checked : selection2_0459.check profile0459 := by decide +kernel

noncomputable def profile0460 : ProfileCell :=
  ⟨(15/92), (8/49),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 8, 8, 8],
    [⟨24, 15⟩, ⟨21, 11⟩, ⟨15, 10⟩, ⟨37, 17⟩, ⟨9, 9⟩, ⟨31, 16⟩, ⟨3, 8⟩, ⟨25, 15⟩, ⟨16, 10⟩, ⟨38, 17⟩, ⟨10, 9⟩, ⟨32, 16⟩, ⟨4, 8⟩, ⟨26, 15⟩, ⟨17, 10⟩, ⟨39, 17⟩, ⟨11, 9⟩, ⟨33, 16⟩, ⟨5, 8⟩, ⟨27, 15⟩, ⟨18, 10⟩, ⟨40, 17⟩, ⟨12, 9⟩, ⟨34, 16⟩, ⟨6, 8⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨19, 10⟩, ⟨43, 25⟩, ⟨41, 17⟩, ⟨13, 9⟩, ⟨35, 16⟩, ⟨7, 8⟩, ⟨29, 15⟩, ⟨1, 7⟩, ⟨23, 14⟩, ⟨20, 10⟩, ⟨42, 17⟩, ⟨14, 9⟩, ⟨36, 16⟩, ⟨8, 8⟩, ⟨30, 15⟩, ⟨2, 7⟩]⟩
theorem profile0460_checked : profile0460.check := by decide +kernel

noncomputable def selection1_0460 : Selection :=
  ⟨1, -1, 4, (29/2), 238, 12, 56⟩
theorem selection1_0460_checked : selection1_0460.check profile0460 := by decide +kernel

noncomputable def selection2_0460 : Selection :=
  ⟨2, -9, 8, (1429/100), 68, 4, 424⟩
theorem selection2_0460_checked : selection2_0460.check profile0460 := by decide +kernel

noncomputable def profile0461 : ProfileCell :=
  ⟨(8/49), (17/104),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 8, 8, 8, 8],
    [⟨2, 8⟩, ⟨30, 16⟩, ⟨24, 15⟩, ⟨21, 11⟩, ⟨15, 10⟩, ⟨9, 9⟩, ⟨37, 17⟩, ⟨3, 8⟩, ⟨31, 16⟩, ⟨25, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨38, 17⟩, ⟨4, 8⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨39, 17⟩, ⟨5, 8⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨18, 10⟩, ⟨12, 9⟩, ⟨40, 17⟩, ⟨6, 8⟩, ⟨34, 16⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨19, 10⟩, ⟨13, 9⟩, ⟨41, 17⟩, ⟨43, 25⟩, ⟨7, 8⟩, ⟨35, 16⟩, ⟨1, 7⟩, ⟨29, 15⟩, ⟨23, 14⟩, ⟨20, 10⟩, ⟨14, 9⟩, ⟨42, 17⟩, ⟨8, 8⟩, ⟨36, 16⟩]⟩
theorem profile0461_checked : profile0461.check := by decide +kernel

noncomputable def selection1_0461 : Selection :=
  ⟨1, 1, 4, (1853/100), 269, -52, 448⟩
theorem selection1_0461_checked : selection1_0461.check profile0461 := by decide +kernel

noncomputable def selection2_0461 : Selection :=
  ⟨2, -7, 8, (458/25), 77, -60, 816⟩
theorem selection2_0461_checked : selection2_0461.check profile0461 := by decide +kernel

noncomputable def profile0462 : ProfileCell :=
  ⟨(17/104), (9/55),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 8, 8, 8, 8],
    [⟨36, 17⟩, ⟨2, 8⟩, ⟨30, 16⟩, ⟨24, 15⟩, ⟨21, 11⟩, ⟨15, 10⟩, ⟨9, 9⟩, ⟨37, 17⟩, ⟨3, 8⟩, ⟨31, 16⟩, ⟨25, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨38, 17⟩, ⟨4, 8⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨39, 17⟩, ⟨5, 8⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨18, 10⟩, ⟨12, 9⟩, ⟨40, 17⟩, ⟨6, 8⟩, ⟨34, 16⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨19, 10⟩, ⟨13, 9⟩, ⟨41, 17⟩, ⟨7, 8⟩, ⟨43, 25⟩, ⟨35, 16⟩, ⟨1, 7⟩, ⟨29, 15⟩, ⟨23, 14⟩, ⟨20, 10⟩, ⟨14, 9⟩, ⟨42, 17⟩, ⟨8, 8⟩]⟩
theorem profile0462_checked : profile0462.check := by decide +kernel

noncomputable def selection1_0462 : Selection :=
  ⟨1, 1, 4, (1853/100), 240, 50, -176⟩
theorem selection1_0462_checked : selection1_0462.check profile0462 := by decide +kernel

noncomputable def selection2_0462 : Selection :=
  ⟨2, -7, 8, (1833/100), 69, 42, 192⟩
theorem selection2_0462_checked : selection2_0462.check profile0462 := by decide +kernel

noncomputable def profile0463 : ProfileCell :=
  ⟨(9/55), (10/61),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 8, 8, 8, 8],
    [⟨8, 9⟩, ⟨42, 18⟩, ⟨2, 8⟩, ⟨36, 17⟩, ⟨30, 16⟩, ⟨24, 15⟩, ⟨21, 11⟩, ⟨15, 10⟩, ⟨9, 9⟩, ⟨3, 8⟩, ⟨37, 17⟩, ⟨31, 16⟩, ⟨25, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨18, 10⟩, ⟨12, 9⟩, ⟨6, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨19, 10⟩, ⟨13, 9⟩, ⟨7, 8⟩, ⟨41, 17⟩, ⟨1, 7⟩, ⟨35, 16⟩, ⟨43, 25⟩, ⟨29, 15⟩, ⟨23, 14⟩, ⟨20, 10⟩, ⟨14, 9⟩]⟩
theorem profile0463_checked : profile0463.check := by decide +kernel

noncomputable def selection1_0463 : Selection :=
  ⟨1, 1, 4, (463/25), 408, 68, -286⟩
theorem selection1_0463_checked : selection1_0463.check profile0463 := by decide +kernel

noncomputable def selection2_0463 : Selection :=
  ⟨2, -7, 8, (917/50), 117, 60, 82⟩
theorem selection2_0463_checked : selection2_0463.check profile0463 := by decide +kernel

noncomputable def profile0464 : ProfileCell :=
  ⟨(10/61), (11/67),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 8, 8, 8, 8],
    [⟨14, 10⟩, ⟨8, 9⟩, ⟨2, 8⟩, ⟨42, 18⟩, ⟨36, 17⟩, ⟨30, 16⟩, ⟨24, 15⟩, ⟨21, 11⟩, ⟨15, 10⟩, ⟨9, 9⟩, ⟨3, 8⟩, ⟨37, 17⟩, ⟨31, 16⟩, ⟨25, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨18, 10⟩, ⟨12, 9⟩, ⟨6, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨19, 10⟩, ⟨13, 9⟩, ⟨7, 8⟩, ⟨1, 7⟩, ⟨41, 17⟩, ⟨35, 16⟩, ⟨29, 15⟩, ⟨43, 25⟩, ⟨23, 14⟩, ⟨20, 10⟩]⟩
theorem profile0464_checked : profile0464.check := by decide +kernel

noncomputable def selection1_0464 : Selection :=
  ⟨1, 1, 4, (1849/100), 334, 8, 80⟩
theorem selection1_0464_checked : selection1_0464.check profile0464 := by decide +kernel

noncomputable def selection2_0464 : Selection :=
  ⟨2, -7, 8, (459/25), 96, 0, 448⟩
theorem selection2_0464_checked : selection2_0464.check profile0464 := by decide +kernel

noncomputable def profile0465 : ProfileCell :=
  ⟨(11/67), (13/79),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 8, 8, 8, 8],
    [⟨20, 11⟩, ⟨14, 10⟩, ⟨8, 9⟩, ⟨2, 8⟩, ⟨42, 18⟩, ⟨36, 17⟩, ⟨30, 16⟩, ⟨24, 15⟩, ⟨21, 11⟩, ⟨15, 10⟩, ⟨9, 9⟩, ⟨3, 8⟩, ⟨37, 17⟩, ⟨31, 16⟩, ⟨25, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨18, 10⟩, ⟨12, 9⟩, ⟨6, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨19, 10⟩, ⟨13, 9⟩, ⟨7, 8⟩, ⟨1, 7⟩, ⟨41, 17⟩, ⟨35, 16⟩, ⟨29, 15⟩, ⟨23, 14⟩, ⟨43, 25⟩]⟩
theorem profile0465_checked : profile0465.check := by decide +kernel

noncomputable def selection1_0465 : Selection :=
  ⟨1, 1, 4, (371/20), 518, -36, 348⟩
theorem selection1_0465_checked : selection1_0465.check profile0465 := by decide +kernel

noncomputable def selection2_0465 : Selection :=
  ⟨2, -7, 8, (1843/100), 149, -44, 716⟩
theorem selection2_0465_checked : selection2_0465.check profile0465 := by decide +kernel

noncomputable def profile0466 : ProfileCell :=
  ⟨(13/79), (15/91),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 8, 8, 8, 8],
    [⟨43, 26⟩, ⟨20, 11⟩, ⟨14, 10⟩, ⟨8, 9⟩, ⟨2, 8⟩, ⟨42, 18⟩, ⟨36, 17⟩, ⟨30, 16⟩, ⟨24, 15⟩, ⟨21, 11⟩, ⟨15, 10⟩, ⟨9, 9⟩, ⟨3, 8⟩, ⟨37, 17⟩, ⟨31, 16⟩, ⟨25, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨18, 10⟩, ⟨12, 9⟩, ⟨6, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨19, 10⟩, ⟨13, 9⟩, ⟨7, 8⟩, ⟨1, 7⟩, ⟨41, 17⟩, ⟨35, 16⟩, ⟨29, 15⟩, ⟨23, 14⟩]⟩
theorem profile0466_checked : profile0466.check := by decide +kernel

noncomputable def selection1_0466 : Selection :=
  ⟨1, 1, 4, (471/25), 387, -374, 2402⟩
theorem selection1_0466_checked : selection1_0466.check profile0466 := by decide +kernel

noncomputable def selection2_0466 : Selection :=
  ⟨2, -7, 8, (93/5), 111, -382, 2770⟩
theorem selection2_0466_checked : selection2_0466.check profile0466 := by decide +kernel

noncomputable def profile0467 : ProfileCell :=
  ⟨(15/91), (16/97),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 8, 8, 8, 8],
    [⟨23, 15⟩, ⟨20, 11⟩, ⟨43, 26⟩, ⟨14, 10⟩, ⟨8, 9⟩, ⟨2, 8⟩, ⟨42, 18⟩, ⟨36, 17⟩, ⟨30, 16⟩, ⟨24, 15⟩, ⟨21, 11⟩, ⟨15, 10⟩, ⟨9, 9⟩, ⟨3, 8⟩, ⟨37, 17⟩, ⟨31, 16⟩, ⟨25, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨18, 10⟩, ⟨12, 9⟩, ⟨6, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨19, 10⟩, ⟨13, 9⟩, ⟨7, 8⟩, ⟨1, 7⟩, ⟨41, 17⟩, ⟨35, 16⟩, ⟨29, 15⟩]⟩
theorem profile0467_checked : profile0467.check := by decide +kernel

noncomputable def selection1_0467 : Selection :=
  ⟨1, 1, 4, (1893/100), 159, -284, 1856⟩
theorem selection1_0467_checked : selection1_0467.check profile0467 := by decide +kernel

noncomputable def selection2_0467 : Selection :=
  ⟨2, -7, 8, (933/50), 46, -292, 2224⟩
theorem selection2_0467_checked : selection2_0467.check profile0467 := by decide +kernel

noncomputable def profile0468 : ProfileCell :=
  ⟨(16/97), (17/103),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 8, 8, 8, 8],
    [⟨29, 16⟩, ⟨23, 15⟩, ⟨20, 11⟩, ⟨14, 10⟩, ⟨43, 26⟩, ⟨8, 9⟩, ⟨2, 8⟩, ⟨42, 18⟩, ⟨36, 17⟩, ⟨30, 16⟩, ⟨24, 15⟩, ⟨21, 11⟩, ⟨15, 10⟩, ⟨9, 9⟩, ⟨3, 8⟩, ⟨37, 17⟩, ⟨31, 16⟩, ⟨25, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨18, 10⟩, ⟨12, 9⟩, ⟨6, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨19, 10⟩, ⟨13, 9⟩, ⟨7, 8⟩, ⟨1, 7⟩, ⟨41, 17⟩, ⟨35, 16⟩]⟩
theorem profile0468_checked : profile0468.check := by decide +kernel

noncomputable def selection1_0468 : Selection :=
  ⟨1, 1, 4, (1899/100), 141, -220, 1468⟩
theorem selection1_0468_checked : selection1_0468.check profile0468 := by decide +kernel

noncomputable def selection2_0468 : Selection :=
  ⟨2, -7, 8, (187/10), 40, -228, 1836⟩
theorem selection2_0468_checked : selection2_0468.check profile0468 := by decide +kernel

noncomputable def profile0469 : ProfileCell :=
  ⟨(17/103), (18/109),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 8, 8, 8, 8],
    [⟨35, 17⟩, ⟨29, 16⟩, ⟨23, 15⟩, ⟨20, 11⟩, ⟨14, 10⟩, ⟨8, 9⟩, ⟨43, 26⟩, ⟨2, 8⟩, ⟨42, 18⟩, ⟨36, 17⟩, ⟨30, 16⟩, ⟨24, 15⟩, ⟨21, 11⟩, ⟨15, 10⟩, ⟨9, 9⟩, ⟨3, 8⟩, ⟨37, 17⟩, ⟨31, 16⟩, ⟨25, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨18, 10⟩, ⟨12, 9⟩, ⟨6, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨19, 10⟩, ⟨13, 9⟩, ⟨7, 8⟩, ⟨1, 7⟩, ⟨41, 17⟩]⟩
theorem profile0469_checked : profile0469.check := by decide +kernel

noncomputable def selection1_0469 : Selection :=
  ⟨1, 1, 4, (951/50), 125, -118, 850⟩
theorem selection1_0469_checked : selection1_0469.check profile0469 := by decide +kernel

noncomputable def selection2_0469 : Selection :=
  ⟨2, -7, 8, (1873/100), 36, -126, 1218⟩
theorem selection2_0469_checked : selection2_0469.check profile0469 := by decide +kernel

noncomputable def profile0470 : ProfileCell :=
  ⟨(18/109), (1/6),
    [8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 8, 8, 8, 8],
    [⟨41, 18⟩, ⟨35, 17⟩, ⟨29, 16⟩, ⟨23, 15⟩, ⟨20, 11⟩, ⟨14, 10⟩, ⟨8, 9⟩, ⟨2, 8⟩, ⟨43, 26⟩, ⟨42, 18⟩, ⟨36, 17⟩, ⟨30, 16⟩, ⟨24, 15⟩, ⟨21, 11⟩, ⟨15, 10⟩, ⟨9, 9⟩, ⟨3, 8⟩, ⟨37, 17⟩, ⟨31, 16⟩, ⟨25, 15⟩, ⟨16, 10⟩, ⟨10, 9⟩, ⟨4, 8⟩, ⟨38, 17⟩, ⟨32, 16⟩, ⟨26, 15⟩, ⟨17, 10⟩, ⟨11, 9⟩, ⟨5, 8⟩, ⟨39, 17⟩, ⟨33, 16⟩, ⟨27, 15⟩, ⟨18, 10⟩, ⟨12, 9⟩, ⟨6, 8⟩, ⟨40, 17⟩, ⟨34, 16⟩, ⟨28, 15⟩, ⟨22, 14⟩, ⟨19, 10⟩, ⟨13, 9⟩, ⟨7, 8⟩, ⟨1, 7⟩]⟩
theorem profile0470_checked : profile0470.check := by decide +kernel

noncomputable def selection1_0470 : Selection :=
  ⟨1, 1, 4, (1929/100), 2170, -46, 414⟩
theorem selection1_0470_checked : selection1_0470.check profile0470 := by decide +kernel

noncomputable def selection2_0470 : Selection :=
  ⟨2, -7, 8, 19, 620, -54, 782⟩
theorem selection2_0470_checked : selection2_0470.check profile0470 := by decide +kernel

noncomputable def profile0471 : ProfileCell :=
  ⟨(1/6), (18/107),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨1, 8⟩, ⟨7, 9⟩, ⟨13, 10⟩, ⟨19, 11⟩, ⟨22, 15⟩, ⟨28, 16⟩, ⟨34, 17⟩, ⟨40, 18⟩, ⟨2, 8⟩, ⟨8, 9⟩, ⟨14, 10⟩, ⟨20, 11⟩, ⟨23, 15⟩, ⟨29, 16⟩, ⟨35, 17⟩, ⟨41, 18⟩, ⟨3, 8⟩, ⟨9, 9⟩, ⟨15, 10⟩, ⟨21, 11⟩, ⟨24, 15⟩, ⟨30, 16⟩, ⟨36, 17⟩, ⟨42, 18⟩, ⟨43, 26⟩, ⟨4, 8⟩, ⟨10, 9⟩, ⟨16, 10⟩, ⟨25, 15⟩, ⟨31, 16⟩, ⟨37, 17⟩, ⟨5, 8⟩, ⟨11, 9⟩, ⟨17, 10⟩, ⟨26, 15⟩, ⟨32, 16⟩, ⟨38, 17⟩, ⟨6, 8⟩, ⟨12, 9⟩, ⟨18, 10⟩, ⟨27, 15⟩, ⟨33, 16⟩, ⟨39, 17⟩]⟩
theorem profile0471_checked : profile0471.check := by decide +kernel

noncomputable def selection1_0471 : Selection :=
  ⟨1, -2, 4, (348/25), 1591, -135, 948⟩
theorem selection1_0471_checked : selection1_0471.check profile0471 := by decide +kernel

noncomputable def selection2_0471 : Selection :=
  ⟨2, -10, 8, (337/25), 447, -143, 1316⟩
theorem selection2_0471_checked : selection2_0471.check profile0471 := by decide +kernel

noncomputable def profile0472 : ProfileCell :=
  ⟨(18/107), (17/101),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨39, 18⟩, ⟨1, 8⟩, ⟨7, 9⟩, ⟨13, 10⟩, ⟨19, 11⟩, ⟨22, 15⟩, ⟨28, 16⟩, ⟨34, 17⟩, ⟨40, 18⟩, ⟨2, 8⟩, ⟨8, 9⟩, ⟨14, 10⟩, ⟨20, 11⟩, ⟨23, 15⟩, ⟨29, 16⟩, ⟨35, 17⟩, ⟨41, 18⟩, ⟨3, 8⟩, ⟨9, 9⟩, ⟨15, 10⟩, ⟨21, 11⟩, ⟨24, 15⟩, ⟨30, 16⟩, ⟨36, 17⟩, ⟨42, 18⟩, ⟨4, 8⟩, ⟨43, 26⟩, ⟨10, 9⟩, ⟨16, 10⟩, ⟨25, 15⟩, ⟨31, 16⟩, ⟨37, 17⟩, ⟨5, 8⟩, ⟨11, 9⟩, ⟨17, 10⟩, ⟨26, 15⟩, ⟨32, 16⟩, ⟨38, 17⟩, ⟨6, 8⟩, ⟨12, 9⟩, ⟨18, 10⟩, ⟨27, 15⟩, ⟨33, 16⟩]⟩
theorem profile0472_checked : profile0472.check := by decide +kernel

noncomputable def selection1_0472 : Selection :=
  ⟨1, -2, 4, (1393/100), 95, -27, 306⟩
theorem selection1_0472_checked : selection1_0472.check profile0472 := by decide +kernel

noncomputable def selection2_0472 : Selection :=
  ⟨2, -10, 8, (1349/100), 27, -35, 674⟩
theorem selection2_0472_checked : selection2_0472.check profile0472 := by decide +kernel

noncomputable def profile0473 : ProfileCell :=
  ⟨(17/101), (16/95),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨33, 17⟩, ⟨39, 18⟩, ⟨1, 8⟩, ⟨7, 9⟩, ⟨13, 10⟩, ⟨19, 11⟩, ⟨22, 15⟩, ⟨28, 16⟩, ⟨34, 17⟩, ⟨40, 18⟩, ⟨2, 8⟩, ⟨8, 9⟩, ⟨14, 10⟩, ⟨20, 11⟩, ⟨23, 15⟩, ⟨29, 16⟩, ⟨35, 17⟩, ⟨41, 18⟩, ⟨3, 8⟩, ⟨9, 9⟩, ⟨15, 10⟩, ⟨21, 11⟩, ⟨24, 15⟩, ⟨30, 16⟩, ⟨36, 17⟩, ⟨42, 18⟩, ⟨4, 8⟩, ⟨10, 9⟩, ⟨43, 26⟩, ⟨16, 10⟩, ⟨25, 15⟩, ⟨31, 16⟩, ⟨37, 17⟩, ⟨5, 8⟩, ⟨11, 9⟩, ⟨17, 10⟩, ⟨26, 15⟩, ⟨32, 16⟩, ⟨38, 17⟩, ⟨6, 8⟩, ⟨12, 9⟩, ⟨18, 10⟩, ⟨27, 15⟩]⟩
theorem profile0473_checked : profile0473.check := by decide +kernel

noncomputable def selection1_0473 : Selection :=
  ⟨1, -2, 4, (1393/100), 107, 41, -98⟩
theorem selection1_0473_checked : selection1_0473.check profile0473 := by decide +kernel

noncomputable def selection2_0473 : Selection :=
  ⟨2, -10, 8, (27/2), 30, 33, 270⟩
theorem selection2_0473_checked : selection2_0473.check profile0473 := by decide +kernel

noncomputable def profile0474 : ProfileCell :=
  ⟨(16/95), (11/65),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨27, 16⟩, ⟨33, 17⟩, ⟨39, 18⟩, ⟨1, 8⟩, ⟨7, 9⟩, ⟨13, 10⟩, ⟨19, 11⟩, ⟨22, 15⟩, ⟨28, 16⟩, ⟨34, 17⟩, ⟨40, 18⟩, ⟨2, 8⟩, ⟨8, 9⟩, ⟨14, 10⟩, ⟨20, 11⟩, ⟨23, 15⟩, ⟨29, 16⟩, ⟨35, 17⟩, ⟨41, 18⟩, ⟨3, 8⟩, ⟨9, 9⟩, ⟨15, 10⟩, ⟨21, 11⟩, ⟨24, 15⟩, ⟨30, 16⟩, ⟨36, 17⟩, ⟨42, 18⟩, ⟨4, 8⟩, ⟨10, 9⟩, ⟨16, 10⟩, ⟨43, 26⟩, ⟨25, 15⟩, ⟨31, 16⟩, ⟨37, 17⟩, ⟨5, 8⟩, ⟨11, 9⟩, ⟨17, 10⟩, ⟨26, 15⟩, ⟨32, 16⟩, ⟨38, 17⟩, ⟨6, 8⟩, ⟨12, 9⟩, ⟨18, 10⟩]⟩
theorem profile0474_checked : profile0474.check := by decide +kernel

noncomputable def selection1_0474 : Selection :=
  ⟨1, -2, 4, (1393/100), 826, 137, -668⟩
theorem selection1_0474_checked : selection1_0474.check profile0474 := by decide +kernel

noncomputable def selection2_0474 : Selection :=
  ⟨2, -10, 8, (27/2), 233, 129, -300⟩
theorem selection2_0474_checked : selection2_0474.check profile0474 := by decide +kernel

noncomputable def profile0475 : ProfileCell :=
  ⟨(11/65), (10/59),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨18, 11⟩, ⟨27, 16⟩, ⟨33, 17⟩, ⟨39, 18⟩, ⟨1, 8⟩, ⟨7, 9⟩, ⟨13, 10⟩, ⟨19, 11⟩, ⟨22, 15⟩, ⟨28, 16⟩, ⟨34, 17⟩, ⟨40, 18⟩, ⟨2, 8⟩, ⟨8, 9⟩, ⟨14, 10⟩, ⟨20, 11⟩, ⟨23, 15⟩, ⟨29, 16⟩, ⟨35, 17⟩, ⟨41, 18⟩, ⟨3, 8⟩, ⟨9, 9⟩, ⟨15, 10⟩, ⟨21, 11⟩, ⟨24, 15⟩, ⟨30, 16⟩, ⟨36, 17⟩, ⟨42, 18⟩, ⟨4, 8⟩, ⟨10, 9⟩, ⟨16, 10⟩, ⟨25, 15⟩, ⟨43, 26⟩, ⟨31, 16⟩, ⟨37, 17⟩, ⟨5, 8⟩, ⟨11, 9⟩, ⟨17, 10⟩, ⟨26, 15⟩, ⟨32, 16⟩, ⟨38, 17⟩, ⟨6, 8⟩, ⟨12, 9⟩]⟩
theorem profile0475_checked : profile0475.check := by decide +kernel

noncomputable def selection1_0475 : Selection :=
  ⟨1, -2, 4, (137/10), 262, 71, -278⟩
theorem selection1_0475_checked : selection1_0475.check profile0475 := by decide +kernel

noncomputable def selection2_0475 : Selection :=
  ⟨2, -10, 8, (269/20), 75, 63, 90⟩
theorem selection2_0475_checked : selection2_0475.check profile0475 := by decide +kernel

noncomputable def profile0476 : ProfileCell :=
  ⟨(10/59), (9/53),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨12, 10⟩, ⟨18, 11⟩, ⟨27, 16⟩, ⟨33, 17⟩, ⟨1, 8⟩, ⟨39, 18⟩, ⟨7, 9⟩, ⟨13, 10⟩, ⟨19, 11⟩, ⟨22, 15⟩, ⟨28, 16⟩, ⟨34, 17⟩, ⟨2, 8⟩, ⟨40, 18⟩, ⟨8, 9⟩, ⟨14, 10⟩, ⟨20, 11⟩, ⟨23, 15⟩, ⟨29, 16⟩, ⟨35, 17⟩, ⟨3, 8⟩, ⟨41, 18⟩, ⟨9, 9⟩, ⟨15, 10⟩, ⟨21, 11⟩, ⟨24, 15⟩, ⟨30, 16⟩, ⟨36, 17⟩, ⟨4, 8⟩, ⟨42, 18⟩, ⟨10, 9⟩, ⟨16, 10⟩, ⟨25, 15⟩, ⟨31, 16⟩, ⟨43, 26⟩, ⟨37, 17⟩, ⟨5, 8⟩, ⟨11, 9⟩, ⟨17, 10⟩, ⟨26, 15⟩, ⟨32, 16⟩, ⟨38, 17⟩, ⟨6, 8⟩]⟩
theorem profile0476_checked : profile0476.check := by decide +kernel

noncomputable def selection1_0476 : Selection :=
  ⟨1, -2, 4, (1369/100), 321, -9, 194⟩
theorem selection1_0476_checked : selection1_0476.check profile0476 := by decide +kernel

noncomputable def selection2_0476 : Selection :=
  ⟨2, -10, 8, (1349/100), 92, -17, 562⟩
theorem selection2_0476_checked : selection2_0476.check profile0476 := by decide +kernel

noncomputable def profile0477 : ProfileCell :=
  ⟨(9/53), (17/100),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨6, 9⟩, ⟨38, 18⟩, ⟨12, 10⟩, ⟨18, 11⟩, ⟨27, 16⟩, ⟨1, 8⟩, ⟨33, 17⟩, ⟨7, 9⟩, ⟨39, 18⟩, ⟨13, 10⟩, ⟨19, 11⟩, ⟨22, 15⟩, ⟨28, 16⟩, ⟨2, 8⟩, ⟨34, 17⟩, ⟨8, 9⟩, ⟨40, 18⟩, ⟨14, 10⟩, ⟨20, 11⟩, ⟨23, 15⟩, ⟨29, 16⟩, ⟨3, 8⟩, ⟨35, 17⟩, ⟨9, 9⟩, ⟨41, 18⟩, ⟨15, 10⟩, ⟨21, 11⟩, ⟨24, 15⟩, ⟨30, 16⟩, ⟨4, 8⟩, ⟨36, 17⟩, ⟨10, 9⟩, ⟨42, 18⟩, ⟨16, 10⟩, ⟨25, 15⟩, ⟨31, 16⟩, ⟨5, 8⟩, ⟨37, 17⟩, ⟨43, 26⟩, ⟨11, 9⟩, ⟨17, 10⟩, ⟨26, 15⟩, ⟨32, 16⟩]⟩
theorem profile0477_checked : profile0477.check := by decide +kernel

noncomputable def selection1_0477 : Selection :=
  ⟨1, -2, 4, (1369/100), 189, 27, -18⟩
theorem selection1_0477_checked : selection1_0477.check profile0477 := by decide +kernel

noncomputable def selection2_0477 : Selection :=
  ⟨2, -10, 8, (27/2), 55, 19, 350⟩
theorem selection2_0477_checked : selection2_0477.check profile0477 := by decide +kernel

noncomputable def profile0478 : ProfileCell :=
  ⟨(17/100), (8/47),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨32, 17⟩, ⟨6, 9⟩, ⟨38, 18⟩, ⟨12, 10⟩, ⟨18, 11⟩, ⟨27, 16⟩, ⟨1, 8⟩, ⟨33, 17⟩, ⟨7, 9⟩, ⟨39, 18⟩, ⟨13, 10⟩, ⟨19, 11⟩, ⟨22, 15⟩, ⟨28, 16⟩, ⟨2, 8⟩, ⟨34, 17⟩, ⟨8, 9⟩, ⟨40, 18⟩, ⟨14, 10⟩, ⟨20, 11⟩, ⟨23, 15⟩, ⟨29, 16⟩, ⟨3, 8⟩, ⟨35, 17⟩, ⟨9, 9⟩, ⟨41, 18⟩, ⟨15, 10⟩, ⟨21, 11⟩, ⟨24, 15⟩, ⟨30, 16⟩, ⟨4, 8⟩, ⟨36, 17⟩, ⟨10, 9⟩, ⟨42, 18⟩, ⟨16, 10⟩, ⟨25, 15⟩, ⟨31, 16⟩, ⟨5, 8⟩, ⟨37, 17⟩, ⟨11, 9⟩, ⟨43, 26⟩, ⟨17, 10⟩, ⟨26, 15⟩]⟩
theorem profile0478_checked : profile0478.check := by decide +kernel

noncomputable def selection1_0478 : Selection :=
  ⟨1, -2, 4, (1369/100), 213, 95, -418⟩
theorem selection1_0478_checked : selection1_0478.check profile0478 := by decide +kernel

noncomputable def selection2_0478 : Selection :=
  ⟨2, -10, 8, (27/2), 61, 87, -50⟩
theorem selection2_0478_checked : selection2_0478.check profile0478 := by decide +kernel

noncomputable def profile0479 : ProfileCell :=
  ⟨(8/47), (7/41),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨26, 16⟩, ⟨6, 9⟩, ⟨32, 17⟩, ⟨12, 10⟩, ⟨38, 18⟩, ⟨18, 11⟩, ⟨1, 8⟩, ⟨27, 16⟩, ⟨7, 9⟩, ⟨33, 17⟩, ⟨13, 10⟩, ⟨39, 18⟩, ⟨19, 11⟩, ⟨22, 15⟩, ⟨2, 8⟩, ⟨28, 16⟩, ⟨8, 9⟩, ⟨34, 17⟩, ⟨14, 10⟩, ⟨40, 18⟩, ⟨20, 11⟩, ⟨23, 15⟩, ⟨3, 8⟩, ⟨29, 16⟩, ⟨9, 9⟩, ⟨35, 17⟩, ⟨15, 10⟩, ⟨41, 18⟩, ⟨21, 11⟩, ⟨24, 15⟩, ⟨4, 8⟩, ⟨30, 16⟩, ⟨10, 9⟩, ⟨36, 17⟩, ⟨16, 10⟩, ⟨42, 18⟩, ⟨25, 15⟩, ⟨5, 8⟩, ⟨31, 16⟩, ⟨11, 9⟩, ⟨37, 17⟩, ⟨17, 10⟩, ⟨43, 26⟩]⟩
theorem profile0479_checked : profile0479.check := by decide +kernel

noncomputable def selection1_0479 : Selection :=
  ⟨1, -2, 4, (273/20), 518, 95, -418⟩
theorem selection1_0479_checked : selection1_0479.check profile0479 := by decide +kernel

noncomputable def selection2_0479 : Selection :=
  ⟨2, -10, 8, (27/2), 149, 87, -50⟩
theorem selection2_0479_checked : selection2_0479.check profile0479 := by decide +kernel

noncomputable def profile0480 : ProfileCell :=
  ⟨(7/41), (27/158),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨6, 9⟩, ⟨26, 16⟩, ⟨12, 10⟩, ⟨32, 17⟩, ⟨18, 11⟩, ⟨38, 18⟩, ⟨1, 8⟩, ⟨7, 9⟩, ⟨27, 16⟩, ⟨13, 10⟩, ⟨33, 17⟩, ⟨19, 11⟩, ⟨39, 18⟩, ⟨2, 8⟩, ⟨22, 15⟩, ⟨8, 9⟩, ⟨28, 16⟩, ⟨14, 10⟩, ⟨34, 17⟩, ⟨20, 11⟩, ⟨40, 18⟩, ⟨3, 8⟩, ⟨23, 15⟩, ⟨9, 9⟩, ⟨29, 16⟩, ⟨15, 10⟩, ⟨35, 17⟩, ⟨21, 11⟩, ⟨41, 18⟩, ⟨4, 8⟩, ⟨24, 15⟩, ⟨10, 9⟩, ⟨30, 16⟩, ⟨16, 10⟩, ⟨36, 17⟩, ⟨42, 18⟩, ⟨5, 8⟩, ⟨25, 15⟩, ⟨11, 9⟩, ⟨31, 16⟩, ⟨17, 10⟩, ⟨37, 17⟩, ⟨43, 26⟩]⟩
theorem profile0480_checked : profile0480.check := by decide +kernel

noncomputable def selection1_0480 : Selection :=
  ⟨1, -2, 4, (339/25), 153, 53, -172⟩
theorem selection1_0480_checked : selection1_0480.check profile0480 := by decide +kernel

noncomputable def selection2_0480 : Selection :=
  ⟨2, -10, 8, (27/2), 45, 45, 196⟩
theorem selection2_0480_checked : selection2_0480.check profile0480 := by decide +kernel

noncomputable def profile0481 : ProfileCell :=
  ⟨(27/158), (6/35),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨43, 27⟩, ⟨6, 9⟩, ⟨26, 16⟩, ⟨12, 10⟩, ⟨32, 17⟩, ⟨18, 11⟩, ⟨38, 18⟩, ⟨1, 8⟩, ⟨7, 9⟩, ⟨27, 16⟩, ⟨13, 10⟩, ⟨33, 17⟩, ⟨19, 11⟩, ⟨39, 18⟩, ⟨2, 8⟩, ⟨22, 15⟩, ⟨8, 9⟩, ⟨28, 16⟩, ⟨14, 10⟩, ⟨34, 17⟩, ⟨20, 11⟩, ⟨40, 18⟩, ⟨3, 8⟩, ⟨23, 15⟩, ⟨9, 9⟩, ⟨29, 16⟩, ⟨15, 10⟩, ⟨35, 17⟩, ⟨21, 11⟩, ⟨41, 18⟩, ⟨4, 8⟩, ⟨24, 15⟩, ⟨10, 9⟩, ⟨30, 16⟩, ⟨16, 10⟩, ⟨36, 17⟩, ⟨42, 18⟩, ⟨5, 8⟩, ⟨25, 15⟩, ⟨11, 9⟩, ⟨31, 16⟩, ⟨17, 10⟩, ⟨37, 17⟩]⟩
theorem profile0481_checked : profile0481.check := by decide +kernel

noncomputable def selection1_0481 : Selection :=
  ⟨1, -2, 4, (699/50), 553, -298, 1882⟩
theorem selection1_0481_checked : selection1_0481.check profile0481 := by decide +kernel

noncomputable def selection2_0481 : Selection :=
  ⟨2, -10, 8, (689/50), 159, -306, 2250⟩
theorem selection2_0481_checked : selection2_0481.check profile0481 := by decide +kernel

noncomputable def profile0482 : ProfileCell :=
  ⟨(6/35), (17/99),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨37, 18⟩, ⟨6, 9⟩, ⟨43, 27⟩, ⟨12, 10⟩, ⟨26, 16⟩, ⟨18, 11⟩, ⟨32, 17⟩, ⟨38, 18⟩, ⟨1, 8⟩, ⟨7, 9⟩, ⟨13, 10⟩, ⟨27, 16⟩, ⟨19, 11⟩, ⟨33, 17⟩, ⟨39, 18⟩, ⟨2, 8⟩, ⟨8, 9⟩, ⟨22, 15⟩, ⟨14, 10⟩, ⟨28, 16⟩, ⟨20, 11⟩, ⟨34, 17⟩, ⟨40, 18⟩, ⟨3, 8⟩, ⟨9, 9⟩, ⟨23, 15⟩, ⟨15, 10⟩, ⟨29, 16⟩, ⟨21, 11⟩, ⟨35, 17⟩, ⟨41, 18⟩, ⟨4, 8⟩, ⟨10, 9⟩, ⟨24, 15⟩, ⟨16, 10⟩, ⟨30, 16⟩, ⟨36, 17⟩, ⟨42, 18⟩, ⟨5, 8⟩, ⟨11, 9⟩, ⟨25, 15⟩, ⟨17, 10⟩, ⟨31, 16⟩]⟩
theorem profile0482_checked : profile0482.check := by decide +kernel

noncomputable def selection1_0482 : Selection :=
  ⟨1, -2, 4, (709/50), 299, -250, 1602⟩
theorem selection1_0482_checked : selection1_0482.check profile0482 := by decide +kernel

noncomputable def selection2_0482 : Selection :=
  ⟨2, -10, 8, (1391/100), 86, -258, 1970⟩
theorem selection2_0482_checked : selection2_0482.check profile0482 := by decide +kernel

noncomputable def profile0483 : ProfileCell :=
  ⟨(17/99), (11/64),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨31, 17⟩, ⟨37, 18⟩, ⟨6, 9⟩, ⟨12, 10⟩, ⟨43, 27⟩, ⟨26, 16⟩, ⟨18, 11⟩, ⟨32, 17⟩, ⟨38, 18⟩, ⟨1, 8⟩, ⟨7, 9⟩, ⟨13, 10⟩, ⟨27, 16⟩, ⟨19, 11⟩, ⟨33, 17⟩, ⟨39, 18⟩, ⟨2, 8⟩, ⟨8, 9⟩, ⟨22, 15⟩, ⟨14, 10⟩, ⟨28, 16⟩, ⟨20, 11⟩, ⟨34, 17⟩, ⟨40, 18⟩, ⟨3, 8⟩, ⟨9, 9⟩, ⟨23, 15⟩, ⟨15, 10⟩, ⟨29, 16⟩, ⟨21, 11⟩, ⟨35, 17⟩, ⟨41, 18⟩, ⟨4, 8⟩, ⟨10, 9⟩, ⟨24, 15⟩, ⟨16, 10⟩, ⟨30, 16⟩, ⟨36, 17⟩, ⟨42, 18⟩, ⟨5, 8⟩, ⟨11, 9⟩, ⟨25, 15⟩, ⟨17, 10⟩]⟩
theorem profile0483_checked : profile0483.check := by decide +kernel

noncomputable def selection1_0483 : Selection :=
  ⟨1, -2, 4, (713/50), 164, -182, 1206⟩
theorem selection1_0483_checked : selection1_0483.check profile0483 := by decide +kernel

noncomputable def selection2_0483 : Selection :=
  ⟨2, -10, 8, (1397/100), 47, -190, 1574⟩
theorem selection2_0483_checked : selection2_0483.check profile0483 := by decide +kernel

noncomputable def profile0484 : ProfileCell :=
  ⟨(11/64), (16/93),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨17, 11⟩, ⟨31, 17⟩, ⟨37, 18⟩, ⟨6, 9⟩, ⟨12, 10⟩, ⟨26, 16⟩, ⟨43, 27⟩, ⟨18, 11⟩, ⟨32, 17⟩, ⟨38, 18⟩, ⟨1, 8⟩, ⟨7, 9⟩, ⟨13, 10⟩, ⟨27, 16⟩, ⟨19, 11⟩, ⟨33, 17⟩, ⟨39, 18⟩, ⟨2, 8⟩, ⟨8, 9⟩, ⟨22, 15⟩, ⟨14, 10⟩, ⟨28, 16⟩, ⟨20, 11⟩, ⟨34, 17⟩, ⟨40, 18⟩, ⟨3, 8⟩, ⟨9, 9⟩, ⟨23, 15⟩, ⟨15, 10⟩, ⟨29, 16⟩, ⟨21, 11⟩, ⟨35, 17⟩, ⟨41, 18⟩, ⟨4, 8⟩, ⟨10, 9⟩, ⟨24, 15⟩, ⟨16, 10⟩, ⟨30, 16⟩, ⟨36, 17⟩, ⟨42, 18⟩, ⟨5, 8⟩, ⟨11, 9⟩, ⟨25, 15⟩]⟩
theorem profile0484_checked : profile0484.check := by decide +kernel

noncomputable def selection1_0484 : Selection :=
  ⟨1, -2, 4, (359/25), 176, -226, 1462⟩
theorem selection1_0484_checked : selection1_0484.check profile0484 := by decide +kernel

noncomputable def selection2_0484 : Selection :=
  ⟨2, -10, 8, (351/25), 51, -234, 1830⟩
theorem selection2_0484_checked : selection2_0484.check profile0484 := by decide +kernel

noncomputable def profile0485 : ProfileCell :=
  ⟨(16/93), (5/29),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨25, 16⟩, ⟨17, 11⟩, ⟨31, 17⟩, ⟨37, 18⟩, ⟨6, 9⟩, ⟨12, 10⟩, ⟨26, 16⟩, ⟨18, 11⟩, ⟨43, 27⟩, ⟨32, 17⟩, ⟨38, 18⟩, ⟨1, 8⟩, ⟨7, 9⟩, ⟨13, 10⟩, ⟨27, 16⟩, ⟨19, 11⟩, ⟨33, 17⟩, ⟨39, 18⟩, ⟨2, 8⟩, ⟨8, 9⟩, ⟨22, 15⟩, ⟨14, 10⟩, ⟨28, 16⟩, ⟨20, 11⟩, ⟨34, 17⟩, ⟨40, 18⟩, ⟨3, 8⟩, ⟨9, 9⟩, ⟨23, 15⟩, ⟨15, 10⟩, ⟨29, 16⟩, ⟨21, 11⟩, ⟨35, 17⟩, ⟨41, 18⟩, ⟨4, 8⟩, ⟨10, 9⟩, ⟨24, 15⟩, ⟨16, 10⟩, ⟨30, 16⟩, ⟨36, 17⟩, ⟨42, 18⟩, ⟨5, 8⟩, ⟨11, 9⟩]⟩
theorem profile0485_checked : profile0485.check := by decide +kernel

noncomputable def selection1_0485 : Selection :=
  ⟨1, -1, 4, (29/2), 392, -124, 842⟩
theorem selection1_0485_checked : selection1_0485.check profile0485 := by decide +kernel

noncomputable def selection2_0485 : Selection :=
  ⟨2, -9, 8, (283/20), 112, -136, 1210⟩
theorem selection2_0485_checked : selection2_0485.check profile0485 := by decide +kernel

noncomputable def profile0486 : ProfileCell :=
  ⟨(5/29), (19/110),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨11, 10⟩, ⟨17, 11⟩, ⟨25, 16⟩, ⟨31, 17⟩, ⟨37, 18⟩, ⟨6, 9⟩, ⟨12, 10⟩, ⟨18, 11⟩, ⟨26, 16⟩, ⟨32, 17⟩, ⟨43, 27⟩, ⟨1, 8⟩, ⟨38, 18⟩, ⟨7, 9⟩, ⟨13, 10⟩, ⟨19, 11⟩, ⟨27, 16⟩, ⟨33, 17⟩, ⟨2, 8⟩, ⟨39, 18⟩, ⟨8, 9⟩, ⟨14, 10⟩, ⟨22, 15⟩, ⟨20, 11⟩, ⟨28, 16⟩, ⟨34, 17⟩, ⟨3, 8⟩, ⟨40, 18⟩, ⟨9, 9⟩, ⟨15, 10⟩, ⟨23, 15⟩, ⟨21, 11⟩, ⟨29, 16⟩, ⟨35, 17⟩, ⟨4, 8⟩, ⟨41, 18⟩, ⟨10, 9⟩, ⟨16, 10⟩, ⟨24, 15⟩, ⟨30, 16⟩, ⟨36, 17⟩, ⟨5, 8⟩, ⟨42, 18⟩]⟩
theorem profile0486_checked : profile0486.check := by decide +kernel

noncomputable def selection1_0486 : Selection :=
  ⟨1, -1, 4, (1471/100), 336, -244, 1538⟩
theorem selection1_0486_checked : selection1_0486.check profile0486 := by decide +kernel

noncomputable def selection2_0486 : Selection :=
  ⟨2, -9, 8, (1429/100), 95, -256, 1906⟩
theorem selection2_0486_checked : selection2_0486.check profile0486 := by decide +kernel

noncomputable def profile0487 : ProfileCell :=
  ⟨(19/110), (9/52),
    [8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 8],
    [⟨42, 19⟩, ⟨11, 10⟩, ⟨17, 11⟩, ⟨25, 16⟩, ⟨31, 17⟩, ⟨37, 18⟩, ⟨6, 9⟩, ⟨12, 10⟩, ⟨18, 11⟩, ⟨26, 16⟩, ⟨32, 17⟩, ⟨1, 8⟩, ⟨43, 27⟩, ⟨38, 18⟩, ⟨7, 9⟩, ⟨13, 10⟩, ⟨19, 11⟩, ⟨27, 16⟩, ⟨33, 17⟩, ⟨2, 8⟩, ⟨39, 18⟩, ⟨8, 9⟩, ⟨14, 10⟩, ⟨22, 15⟩, ⟨20, 11⟩, ⟨28, 16⟩, ⟨34, 17⟩, ⟨3, 8⟩, ⟨40, 18⟩, ⟨9, 9⟩, ⟨15, 10⟩, ⟨23, 15⟩, ⟨21, 11⟩, ⟨29, 16⟩, ⟨35, 17⟩, ⟨4, 8⟩, ⟨41, 18⟩, ⟨10, 9⟩, ⟨16, 10⟩, ⟨24, 15⟩, ⟨30, 16⟩, ⟨36, 17⟩, ⟨5, 8⟩]⟩
theorem profile0487_checked : profile0487.check := by decide +kernel

noncomputable def selection1_0487 : Selection :=
  ⟨1, -1, 4, (371/25), 378, -130, 878⟩
theorem selection1_0487_checked : selection1_0487.check profile0487 := by decide +kernel

noncomputable def selection2_0487 : Selection :=
  ⟨2, -9, 8, (1439/100), 107, -142, 1246⟩
theorem selection2_0487_checked : selection2_0487.check profile0487 := by decide +kernel

noncomputable def profile0488 : ProfileCell :=
  ⟨(9/52), (17/98),
    [9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 9],
    [⟨5, 9⟩, ⟨36, 18⟩, ⟨11, 10⟩, ⟨42, 19⟩, ⟨17, 11⟩, ⟨25, 16⟩, ⟨31, 17⟩, ⟨6, 9⟩, ⟨37, 18⟩, ⟨12, 10⟩, ⟨18, 11⟩, ⟨26, 16⟩, ⟨1, 8⟩, ⟨32, 17⟩, ⟨7, 9⟩, ⟨38, 18⟩, ⟨43, 27⟩, ⟨13, 10⟩, ⟨19, 11⟩, ⟨27, 16⟩, ⟨2, 8⟩, ⟨33, 17⟩, ⟨8, 9⟩, ⟨39, 18⟩, ⟨14, 10⟩, ⟨22, 15⟩, ⟨20, 11⟩, ⟨28, 16⟩, ⟨3, 8⟩, ⟨34, 17⟩, ⟨9, 9⟩, ⟨40, 18⟩, ⟨15, 10⟩, ⟨23, 15⟩, ⟨21, 11⟩, ⟨29, 16⟩, ⟨4, 8⟩, ⟨35, 17⟩, ⟨10, 9⟩, ⟨41, 18⟩, ⟨16, 10⟩, ⟨24, 15⟩, ⟨30, 16⟩]⟩
theorem profile0488_checked : profile0488.check := by decide +kernel

noncomputable def selection1_0488 : Selection :=
  ⟨1, 0, 4, (851/50), 486, -166, 1086⟩
theorem selection1_0488_checked : selection1_0488.check profile0488 := by decide +kernel

noncomputable def selection2_0488 : Selection :=
  ⟨2, -8, 8, (413/25), 138, -178, 1454⟩
theorem selection2_0488_checked : selection2_0488.check profile0488 := by decide +kernel

noncomputable def profile0489 : ProfileCell :=
  ⟨(17/98), (4/23),
    [9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 9],
    [⟨30, 17⟩, ⟨5, 9⟩, ⟨36, 18⟩, ⟨11, 10⟩, ⟨42, 19⟩, ⟨17, 11⟩, ⟨25, 16⟩, ⟨31, 17⟩, ⟨6, 9⟩, ⟨37, 18⟩, ⟨12, 10⟩, ⟨18, 11⟩, ⟨26, 16⟩, ⟨1, 8⟩, ⟨32, 17⟩, ⟨7, 9⟩, ⟨38, 18⟩, ⟨13, 10⟩, ⟨43, 27⟩, ⟨19, 11⟩, ⟨27, 16⟩, ⟨2, 8⟩, ⟨33, 17⟩, ⟨8, 9⟩, ⟨39, 18⟩, ⟨14, 10⟩, ⟨22, 15⟩, ⟨20, 11⟩, ⟨28, 16⟩, ⟨3, 8⟩, ⟨34, 17⟩, ⟨9, 9⟩, ⟨40, 18⟩, ⟨15, 10⟩, ⟨23, 15⟩, ⟨21, 11⟩, ⟨29, 16⟩, ⟨4, 8⟩, ⟨35, 17⟩, ⟨10, 9⟩, ⟨41, 18⟩, ⟨16, 10⟩, ⟨24, 15⟩]⟩
theorem profile0489_checked : profile0489.check := by decide +kernel

noncomputable def selection1_0489 : Selection :=
  ⟨1, -1, 4, (171/10), 551, -27, 312⟩
theorem selection1_0489_checked : selection1_0489.check profile0489 := by decide +kernel

noncomputable def selection2_0489 : Selection :=
  ⟨2, -9, 8, (1659/100), 156, -35, 680⟩
theorem selection2_0489_checked : selection2_0489.check profile0489 := by decide +kernel

noncomputable def profile0490 : ProfileCell :=
  ⟨(4/23), (19/109),
    [9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 9],
    [⟨24, 16⟩, ⟨5, 9⟩, ⟨30, 17⟩, ⟨11, 10⟩, ⟨36, 18⟩, ⟨17, 11⟩, ⟨42, 19⟩, ⟨25, 16⟩, ⟨6, 9⟩, ⟨31, 17⟩, ⟨12, 10⟩, ⟨37, 18⟩, ⟨18, 11⟩, ⟨1, 8⟩, ⟨26, 16⟩, ⟨7, 9⟩, ⟨32, 17⟩, ⟨13, 10⟩, ⟨38, 18⟩, ⟨19, 11⟩, ⟨43, 27⟩, ⟨2, 8⟩, ⟨27, 16⟩, ⟨8, 9⟩, ⟨33, 17⟩, ⟨14, 10⟩, ⟨39, 18⟩, ⟨20, 11⟩, ⟨22, 15⟩, ⟨3, 8⟩, ⟨28, 16⟩, ⟨9, 9⟩, ⟨34, 17⟩, ⟨15, 10⟩, ⟨40, 18⟩, ⟨21, 11⟩, ⟨23, 15⟩, ⟨4, 8⟩, ⟨29, 16⟩, ⟨10, 9⟩, ⟨35, 17⟩, ⟨16, 10⟩, ⟨41, 18⟩]⟩
theorem profile0490_checked : profile0490.check := by decide +kernel

noncomputable def selection1_0490 : Selection :=
  ⟨1, -2, 4, (1521/100), 441, -91, 680⟩
theorem selection1_0490_checked : selection1_0490.check profile0490 := by decide +kernel

noncomputable def selection2_0490 : Selection :=
  ⟨2, -10, 8, (1469/100), 124, -99, 1048⟩
theorem selection2_0490_checked : selection2_0490.check profile0490 := by decide +kernel

noncomputable def profile0491 : ProfileCell :=
  ⟨(19/109), (11/63),
    [9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 9],
    [⟨41, 19⟩, ⟨24, 16⟩, ⟨5, 9⟩, ⟨30, 17⟩, ⟨11, 10⟩, ⟨36, 18⟩, ⟨17, 11⟩, ⟨42, 19⟩, ⟨25, 16⟩, ⟨6, 9⟩, ⟨31, 17⟩, ⟨12, 10⟩, ⟨37, 18⟩, ⟨18, 11⟩, ⟨1, 8⟩, ⟨26, 16⟩, ⟨7, 9⟩, ⟨32, 17⟩, ⟨13, 10⟩, ⟨38, 18⟩, ⟨19, 11⟩, ⟨2, 8⟩, ⟨43, 27⟩, ⟨27, 16⟩, ⟨8, 9⟩, ⟨33, 17⟩, ⟨14, 10⟩, ⟨39, 18⟩, ⟨20, 11⟩, ⟨22, 15⟩, ⟨3, 8⟩, ⟨28, 16⟩, ⟨9, 9⟩, ⟨34, 17⟩, ⟨15, 10⟩, ⟨40, 18⟩, ⟨21, 11⟩, ⟨23, 15⟩, ⟨4, 8⟩, ⟨29, 16⟩, ⟨10, 9⟩, ⟨35, 17⟩, ⟨16, 10⟩]⟩
theorem profile0491_checked : profile0491.check := by decide +kernel

noncomputable def selection1_0491 : Selection :=
  ⟨1, -1, 4, (1519/100), 321, 58, -202⟩
theorem selection1_0491_checked : selection1_0491.check profile0491 := by decide +kernel

noncomputable def selection2_0491 : Selection :=
  ⟨2, -9, 8, (1469/100), 91, 46, 166⟩
theorem selection2_0491_checked : selection2_0491.check profile0491 := by decide +kernel

noncomputable def profile0492 : ProfileCell :=
  ⟨(11/63), (18/103),
    [9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 9],
    [⟨16, 11⟩, ⟨41, 19⟩, ⟨24, 16⟩, ⟨5, 9⟩, ⟨30, 17⟩, ⟨11, 10⟩, ⟨36, 18⟩, ⟨17, 11⟩, ⟨42, 19⟩, ⟨25, 16⟩, ⟨6, 9⟩, ⟨31, 17⟩, ⟨12, 10⟩, ⟨37, 18⟩, ⟨18, 11⟩, ⟨1, 8⟩, ⟨26, 16⟩, ⟨7, 9⟩, ⟨32, 17⟩, ⟨13, 10⟩, ⟨38, 18⟩, ⟨19, 11⟩, ⟨2, 8⟩, ⟨27, 16⟩, ⟨43, 27⟩, ⟨8, 9⟩, ⟨33, 17⟩, ⟨14, 10⟩, ⟨39, 18⟩, ⟨20, 11⟩, ⟨22, 15⟩, ⟨3, 8⟩, ⟨28, 16⟩, ⟨9, 9⟩, ⟨34, 17⟩, ⟨15, 10⟩, ⟨40, 18⟩, ⟨21, 11⟩, ⟨23, 15⟩, ⟨4, 8⟩, ⟨29, 16⟩, ⟨10, 9⟩, ⟨35, 17⟩]⟩
theorem profile0492_checked : profile0492.check := by decide +kernel

noncomputable def selection1_0492 : Selection :=
  ⟨1, -1, 4, (1517/100), 170, 14, 50⟩
theorem selection1_0492_checked : selection1_0492.check profile0492 := by decide +kernel

noncomputable def selection2_0492 : Selection :=
  ⟨2, -9, 8, (1471/100), 48, 2, 418⟩
theorem selection2_0492_checked : selection2_0492.check profile0492 := by decide +kernel

noncomputable def profile0493 : ProfileCell :=
  ⟨(18/103), (7/40),
    [9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 9],
    [⟨35, 18⟩, ⟨16, 11⟩, ⟨41, 19⟩, ⟨24, 16⟩, ⟨5, 9⟩, ⟨30, 17⟩, ⟨11, 10⟩, ⟨36, 18⟩, ⟨17, 11⟩, ⟨42, 19⟩, ⟨25, 16⟩, ⟨6, 9⟩, ⟨31, 17⟩, ⟨12, 10⟩, ⟨37, 18⟩, ⟨18, 11⟩, ⟨1, 8⟩, ⟨26, 16⟩, ⟨7, 9⟩, ⟨32, 17⟩, ⟨13, 10⟩, ⟨38, 18⟩, ⟨19, 11⟩, ⟨2, 8⟩, ⟨27, 16⟩, ⟨8, 9⟩, ⟨43, 27⟩, ⟨33, 17⟩, ⟨14, 10⟩, ⟨39, 18⟩, ⟨20, 11⟩, ⟨22, 15⟩, ⟨3, 8⟩, ⟨28, 16⟩, ⟨9, 9⟩, ⟨34, 17⟩, ⟨15, 10⟩, ⟨40, 18⟩, ⟨21, 11⟩, ⟨23, 15⟩, ⟨4, 8⟩, ⟨29, 16⟩, ⟨10, 9⟩]⟩
theorem profile0493_checked : profile0493.check := by decide +kernel

noncomputable def selection1_0493 : Selection :=
  ⟨1, -1, 4, (1517/100), 267, 86, -362⟩
theorem selection1_0493_checked : selection1_0493.check profile0493 := by decide +kernel

noncomputable def selection2_0493 : Selection :=
  ⟨2, -9, 8, (1471/100), 76, 74, 6⟩
theorem selection2_0493_checked : selection2_0493.check profile0493 := by decide +kernel

noncomputable def profile0494 : ProfileCell :=
  ⟨(7/40), (17/97),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 9],
    [⟨16, 11⟩, ⟨35, 18⟩, ⟨41, 19⟩, ⟨5, 9⟩, ⟨24, 16⟩, ⟨11, 10⟩, ⟨30, 17⟩, ⟨17, 11⟩, ⟨36, 18⟩, ⟨42, 19⟩, ⟨6, 9⟩, ⟨25, 16⟩, ⟨12, 10⟩, ⟨31, 17⟩, ⟨18, 11⟩, ⟨37, 18⟩, ⟨1, 8⟩, ⟨7, 9⟩, ⟨26, 16⟩, ⟨13, 10⟩, ⟨32, 17⟩, ⟨19, 11⟩, ⟨38, 18⟩, ⟨2, 8⟩, ⟨8, 9⟩, ⟨27, 16⟩, ⟨43, 27⟩, ⟨14, 10⟩, ⟨33, 17⟩, ⟨20, 11⟩, ⟨39, 18⟩, ⟨3, 8⟩, ⟨22, 15⟩, ⟨9, 9⟩, ⟨28, 16⟩, ⟨15, 10⟩, ⟨34, 17⟩, ⟨21, 11⟩, ⟨40, 18⟩, ⟨4, 8⟩, ⟨23, 15⟩, ⟨10, 9⟩, ⟨29, 16⟩]⟩
theorem profile0494_checked : profile0494.check := by decide +kernel

noncomputable def selection1_0494 : Selection :=
  ⟨1, -2, 4, (263/20), 246, -12, 198⟩
theorem selection1_0494_checked : selection1_0494.check profile0494 := by decide +kernel

noncomputable def selection2_0494 : Selection :=
  ⟨2, -10, 8, (637/50), 70, -24, 566⟩
theorem selection2_0494_checked : selection2_0494.check profile0494 := by decide +kernel

noncomputable def profile0495 : ProfileCell :=
  ⟨(17/97), (10/57),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 9],
    [⟨29, 17⟩, ⟨16, 11⟩, ⟨35, 18⟩, ⟨41, 19⟩, ⟨5, 9⟩, ⟨24, 16⟩, ⟨11, 10⟩, ⟨30, 17⟩, ⟨17, 11⟩, ⟨36, 18⟩, ⟨42, 19⟩, ⟨6, 9⟩, ⟨25, 16⟩, ⟨12, 10⟩, ⟨31, 17⟩, ⟨18, 11⟩, ⟨37, 18⟩, ⟨1, 8⟩, ⟨7, 9⟩, ⟨26, 16⟩, ⟨13, 10⟩, ⟨32, 17⟩, ⟨19, 11⟩, ⟨38, 18⟩, ⟨2, 8⟩, ⟨8, 9⟩, ⟨27, 16⟩, ⟨14, 10⟩, ⟨43, 27⟩, ⟨33, 17⟩, ⟨20, 11⟩, ⟨39, 18⟩, ⟨3, 8⟩, ⟨22, 15⟩, ⟨9, 9⟩, ⟨28, 16⟩, ⟨15, 10⟩, ⟨34, 17⟩, ⟨21, 11⟩, ⟨40, 18⟩, ⟨4, 8⟩, ⟨23, 15⟩, ⟨10, 9⟩]⟩
theorem profile0495_checked : profile0495.check := by decide +kernel

noncomputable def selection1_0495 : Selection :=
  ⟨1, -2, 4, (263/20), 173, 90, -384⟩
theorem selection1_0495_checked : selection1_0495.check profile0495 := by decide +kernel

noncomputable def selection2_0495 : Selection :=
  ⟨2, -10, 8, (637/50), 49, 78, -16⟩
theorem selection2_0495_checked : selection2_0495.check profile0495 := by decide +kernel

noncomputable def profile0496 : ProfileCell :=
  ⟨(10/57), (16/91),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 9],
    [⟨10, 10⟩, ⟨29, 17⟩, ⟨16, 11⟩, ⟨35, 18⟩, ⟨5, 9⟩, ⟨41, 19⟩, ⟨24, 16⟩, ⟨11, 10⟩, ⟨30, 17⟩, ⟨17, 11⟩, ⟨36, 18⟩, ⟨6, 9⟩, ⟨42, 19⟩, ⟨25, 16⟩, ⟨12, 10⟩, ⟨31, 17⟩, ⟨18, 11⟩, ⟨1, 8⟩, ⟨37, 18⟩, ⟨7, 9⟩, ⟨26, 16⟩, ⟨13, 10⟩, ⟨32, 17⟩, ⟨19, 11⟩, ⟨2, 8⟩, ⟨38, 18⟩, ⟨8, 9⟩, ⟨27, 16⟩, ⟨14, 10⟩, ⟨33, 17⟩, ⟨43, 27⟩, ⟨20, 11⟩, ⟨3, 8⟩, ⟨39, 18⟩, ⟨22, 15⟩, ⟨9, 9⟩, ⟨28, 16⟩, ⟨15, 10⟩, ⟨34, 17⟩, ⟨21, 11⟩, ⟨4, 8⟩, ⟨40, 18⟩, ⟨23, 15⟩]⟩
theorem profile0496_checked : profile0496.check := by decide +kernel

noncomputable def selection1_0496 : Selection :=
  ⟨1, -2, 4, (657/50), 367, 10, 72⟩
theorem selection1_0496_checked : selection1_0496.check profile0496 := by decide +kernel

noncomputable def selection2_0496 : Selection :=
  ⟨2, -10, 8, (639/50), 105, -2, 440⟩
theorem selection2_0496_checked : selection2_0496.check profile0496 := by decide +kernel

noncomputable def profile0497 : ProfileCell :=
  ⟨(16/91), (19/108),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 9],
    [⟨23, 16⟩, ⟨10, 10⟩, ⟨29, 17⟩, ⟨16, 11⟩, ⟨35, 18⟩, ⟨5, 9⟩, ⟨41, 19⟩, ⟨24, 16⟩, ⟨11, 10⟩, ⟨30, 17⟩, ⟨17, 11⟩, ⟨36, 18⟩, ⟨6, 9⟩, ⟨42, 19⟩, ⟨25, 16⟩, ⟨12, 10⟩, ⟨31, 17⟩, ⟨18, 11⟩, ⟨1, 8⟩, ⟨37, 18⟩, ⟨7, 9⟩, ⟨26, 16⟩, ⟨13, 10⟩, ⟨32, 17⟩, ⟨19, 11⟩, ⟨2, 8⟩, ⟨38, 18⟩, ⟨8, 9⟩, ⟨27, 16⟩, ⟨14, 10⟩, ⟨33, 17⟩, ⟨20, 11⟩, ⟨43, 27⟩, ⟨3, 8⟩, ⟨39, 18⟩, ⟨22, 15⟩, ⟨9, 9⟩, ⟨28, 16⟩, ⟨15, 10⟩, ⟨34, 17⟩, ⟨21, 11⟩, ⟨4, 8⟩, ⟨40, 18⟩]⟩
theorem profile0497_checked : profile0497.check := by decide +kernel

noncomputable def selection1_0497 : Selection :=
  ⟨1, -2, 4, (657/50), 97, 106, -474⟩
theorem selection1_0497_checked : selection1_0497.check profile0497 := by decide +kernel

noncomputable def selection2_0497 : Selection :=
  ⟨2, -10, 8, (639/50), 28, 94, -106⟩
theorem selection2_0497_checked : selection2_0497.check profile0497 := by decide +kernel

noncomputable def profile0498 : ProfileCell :=
  ⟨(19/108), (3/17),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4, 3], [8, 8, 8, 8, 9],
    [⟨40, 19⟩, ⟨23, 16⟩, ⟨10, 10⟩, ⟨29, 17⟩, ⟨16, 11⟩, ⟨35, 18⟩, ⟨5, 9⟩, ⟨41, 19⟩, ⟨24, 16⟩, ⟨11, 10⟩, ⟨30, 17⟩, ⟨17, 11⟩, ⟨36, 18⟩, ⟨6, 9⟩, ⟨42, 19⟩, ⟨25, 16⟩, ⟨12, 10⟩, ⟨31, 17⟩, ⟨18, 11⟩, ⟨1, 8⟩, ⟨37, 18⟩, ⟨7, 9⟩, ⟨26, 16⟩, ⟨13, 10⟩, ⟨32, 17⟩, ⟨19, 11⟩, ⟨2, 8⟩, ⟨38, 18⟩, ⟨8, 9⟩, ⟨27, 16⟩, ⟨14, 10⟩, ⟨33, 17⟩, ⟨20, 11⟩, ⟨3, 8⟩, ⟨43, 27⟩, ⟨39, 18⟩, ⟨22, 15⟩, ⟨9, 9⟩, ⟨28, 16⟩, ⟨15, 10⟩, ⟨34, 17⟩, ⟨21, 11⟩, ⟨4, 8⟩]⟩
theorem profile0498_checked : profile0498.check := by decide +kernel

noncomputable def selection1_0498 : Selection :=
  ⟨1, -2, 4, (328/25), 517, 182, -906⟩
theorem selection1_0498_checked : selection1_0498.check profile0498 := by decide +kernel

noncomputable def selection2_0498 : Selection :=
  ⟨2, -10, 8, (639/50), 147, 170, -538⟩
theorem selection2_0498_checked : selection2_0498.check profile0498 := by decide +kernel

noncomputable def profile0499 : ProfileCell :=
  ⟨(3/17), (17/96),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4, 3], [8, 8, 8, 9, 9],
    [⟨4, 9⟩, ⟨21, 12⟩, ⟨34, 18⟩, ⟨10, 10⟩, ⟨23, 16⟩, ⟨40, 19⟩, ⟨16, 11⟩, ⟨29, 17⟩, ⟨5, 9⟩, ⟨35, 18⟩, ⟨11, 10⟩, ⟨24, 16⟩, ⟨41, 19⟩, ⟨17, 11⟩, ⟨30, 17⟩, ⟨6, 9⟩, ⟨36, 18⟩, ⟨12, 10⟩, ⟨25, 16⟩, ⟨42, 19⟩, ⟨1, 8⟩, ⟨18, 11⟩, ⟨31, 17⟩, ⟨7, 9⟩, ⟨37, 18⟩, ⟨13, 10⟩, ⟨26, 16⟩, ⟨2, 8⟩, ⟨19, 11⟩, ⟨32, 17⟩, ⟨8, 9⟩, ⟨38, 18⟩, ⟨14, 10⟩, ⟨27, 16⟩, ⟨3, 8⟩, ⟨20, 11⟩, ⟨33, 17⟩, ⟨9, 9⟩, ⟨22, 15⟩, ⟨39, 18⟩, ⟨43, 27⟩, ⟨15, 10⟩, ⟨28, 16⟩]⟩
theorem profile0499_checked : profile0499.check := by decide +kernel

noncomputable def selection1_0499 : Selection :=
  ⟨1, -1, 4, (149/10), 660, 104, -464⟩
theorem selection1_0499_checked : selection1_0499.check profile0499 := by decide +kernel

noncomputable def selection2_0499 : Selection :=
  ⟨2, -9, 8, (1471/100), 191, 92, -96⟩
theorem selection2_0499_checked : selection2_0499.check profile0499 := by decide +kernel

noncomputable def profile0500 : ProfileCell :=
  ⟨(17/96), (14/79),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4, 3], [8, 8, 8, 9, 9],
    [⟨28, 17⟩, ⟨4, 9⟩, ⟨21, 12⟩, ⟨34, 18⟩, ⟨10, 10⟩, ⟨23, 16⟩, ⟨40, 19⟩, ⟨16, 11⟩, ⟨29, 17⟩, ⟨5, 9⟩, ⟨35, 18⟩, ⟨11, 10⟩, ⟨24, 16⟩, ⟨41, 19⟩, ⟨17, 11⟩, ⟨30, 17⟩, ⟨6, 9⟩, ⟨36, 18⟩, ⟨12, 10⟩, ⟨25, 16⟩, ⟨42, 19⟩, ⟨1, 8⟩, ⟨18, 11⟩, ⟨31, 17⟩, ⟨7, 9⟩, ⟨37, 18⟩, ⟨13, 10⟩, ⟨26, 16⟩, ⟨2, 8⟩, ⟨19, 11⟩, ⟨32, 17⟩, ⟨8, 9⟩, ⟨38, 18⟩, ⟨14, 10⟩, ⟨27, 16⟩, ⟨3, 8⟩, ⟨20, 11⟩, ⟨33, 17⟩, ⟨9, 9⟩, ⟨22, 15⟩, ⟨39, 18⟩, ⟨15, 10⟩, ⟨43, 27⟩]⟩
theorem profile0500_checked : profile0500.check := by decide +kernel

noncomputable def selection1_0500 : Selection :=
  ⟨1, -1, 4, (739/50), 141, 172, -848⟩
theorem selection1_0500_checked : selection1_0500.check profile0500 := by decide +kernel

noncomputable def selection2_0500 : Selection :=
  ⟨2, -9, 8, (1469/100), 41, 160, -480⟩
theorem selection2_0500_checked : selection2_0500.check profile0500 := by decide +kernel

noncomputable def profile0501 : ProfileCell :=
  ⟨(14/79), (11/62),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4, 3], [8, 8, 8, 9, 9],
    [⟨43, 28⟩, ⟨28, 17⟩, ⟨4, 9⟩, ⟨21, 12⟩, ⟨34, 18⟩, ⟨10, 10⟩, ⟨23, 16⟩, ⟨40, 19⟩, ⟨16, 11⟩, ⟨29, 17⟩, ⟨5, 9⟩, ⟨35, 18⟩, ⟨11, 10⟩, ⟨24, 16⟩, ⟨41, 19⟩, ⟨17, 11⟩, ⟨30, 17⟩, ⟨6, 9⟩, ⟨36, 18⟩, ⟨12, 10⟩, ⟨25, 16⟩, ⟨42, 19⟩, ⟨1, 8⟩, ⟨18, 11⟩, ⟨31, 17⟩, ⟨7, 9⟩, ⟨37, 18⟩, ⟨13, 10⟩, ⟨26, 16⟩, ⟨2, 8⟩, ⟨19, 11⟩, ⟨32, 17⟩, ⟨8, 9⟩, ⟨38, 18⟩, ⟨14, 10⟩, ⟨27, 16⟩, ⟨3, 8⟩, ⟨20, 11⟩, ⟨33, 17⟩, ⟨9, 9⟩, ⟨22, 15⟩, ⟨39, 18⟩, ⟨15, 10⟩]⟩
theorem profile0501_checked : profile0501.check := by decide +kernel

noncomputable def selection1_0501 : Selection :=
  ⟨1, -1, 4, (1483/100), 219, -164, 1048⟩
theorem selection1_0501_checked : selection1_0501.check profile0501 := by decide +kernel

noncomputable def selection2_0501 : Selection :=
  ⟨2, -9, 8, (59/4), 64, -176, 1416⟩
theorem selection2_0501_checked : selection2_0501.check profile0501 := by decide +kernel

noncomputable def profile0502 : ProfileCell :=
  ⟨(11/62), (19/107),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4, 3], [8, 8, 8, 9, 9],
    [⟨15, 11⟩, ⟨28, 17⟩, ⟨43, 28⟩, ⟨4, 9⟩, ⟨21, 12⟩, ⟨34, 18⟩, ⟨10, 10⟩, ⟨23, 16⟩, ⟨40, 19⟩, ⟨16, 11⟩, ⟨29, 17⟩, ⟨5, 9⟩, ⟨35, 18⟩, ⟨11, 10⟩, ⟨24, 16⟩, ⟨41, 19⟩, ⟨17, 11⟩, ⟨30, 17⟩, ⟨6, 9⟩, ⟨36, 18⟩, ⟨12, 10⟩, ⟨25, 16⟩, ⟨1, 8⟩, ⟨42, 19⟩, ⟨18, 11⟩, ⟨31, 17⟩, ⟨7, 9⟩, ⟨37, 18⟩, ⟨13, 10⟩, ⟨26, 16⟩, ⟨2, 8⟩, ⟨19, 11⟩, ⟨32, 17⟩, ⟨8, 9⟩, ⟨38, 18⟩, ⟨14, 10⟩, ⟨27, 16⟩, ⟨3, 8⟩, ⟨20, 11⟩, ⟨33, 17⟩, ⟨9, 9⟩, ⟨22, 15⟩, ⟨39, 18⟩]⟩
theorem profile0502_checked : profile0502.check := by decide +kernel

noncomputable def selection1_0502 : Selection :=
  ⟨1, -1, 4, (373/25), 163, -230, 1420⟩
theorem selection1_0502_checked : selection1_0502.check profile0502 := by decide +kernel

noncomputable def selection2_0502 : Selection :=
  ⟨2, -9, 8, (1481/100), 48, -242, 1788⟩
theorem selection2_0502_checked : selection2_0502.check profile0502 := by decide +kernel

noncomputable def profile0503 : ProfileCell :=
  ⟨(19/107), (8/45),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4, 3], [8, 8, 8, 9, 9],
    [⟨39, 19⟩, ⟨15, 11⟩, ⟨28, 17⟩, ⟨4, 9⟩, ⟨43, 28⟩, ⟨21, 12⟩, ⟨34, 18⟩, ⟨10, 10⟩, ⟨23, 16⟩, ⟨40, 19⟩, ⟨16, 11⟩, ⟨29, 17⟩, ⟨5, 9⟩, ⟨35, 18⟩, ⟨11, 10⟩, ⟨24, 16⟩, ⟨41, 19⟩, ⟨17, 11⟩, ⟨30, 17⟩, ⟨6, 9⟩, ⟨36, 18⟩, ⟨12, 10⟩, ⟨25, 16⟩, ⟨1, 8⟩, ⟨42, 19⟩, ⟨18, 11⟩, ⟨31, 17⟩, ⟨7, 9⟩, ⟨37, 18⟩, ⟨13, 10⟩, ⟨26, 16⟩, ⟨2, 8⟩, ⟨19, 11⟩, ⟨32, 17⟩, ⟨8, 9⟩, ⟨38, 18⟩, ⟨14, 10⟩, ⟨27, 16⟩, ⟨3, 8⟩, ⟨20, 11⟩, ⟨33, 17⟩, ⟨9, 9⟩, ⟨22, 15⟩]⟩
theorem profile0503_checked : profile0503.check := by decide +kernel

noncomputable def selection1_0503 : Selection :=
  ⟨1, -1, 4, (1499/100), 225, -116, 778⟩
theorem selection1_0503_checked : selection1_0503.check profile0503 := by decide +kernel

noncomputable def selection2_0503 : Selection :=
  ⟨2, -9, 8, (743/50), 66, -128, 1146⟩
theorem selection2_0503_checked : selection2_0503.check profile0503 := by decide +kernel

noncomputable def profile0504 : ProfileCell :=
  ⟨(8/45), (18/101),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4, 3], [8, 8, 8, 9, 9],
    [⟨22, 16⟩, ⟨15, 11⟩, ⟨39, 19⟩, ⟨4, 9⟩, ⟨28, 17⟩, ⟨21, 12⟩, ⟨43, 28⟩, ⟨10, 10⟩, ⟨34, 18⟩, ⟨23, 16⟩, ⟨16, 11⟩, ⟨40, 19⟩, ⟨5, 9⟩, ⟨29, 17⟩, ⟨11, 10⟩, ⟨35, 18⟩, ⟨24, 16⟩, ⟨17, 11⟩, ⟨41, 19⟩, ⟨6, 9⟩, ⟨30, 17⟩, ⟨12, 10⟩, ⟨36, 18⟩, ⟨1, 8⟩, ⟨25, 16⟩, ⟨18, 11⟩, ⟨42, 19⟩, ⟨7, 9⟩, ⟨31, 17⟩, ⟨13, 10⟩, ⟨37, 18⟩, ⟨2, 8⟩, ⟨26, 16⟩, ⟨19, 11⟩, ⟨8, 9⟩, ⟨32, 17⟩, ⟨14, 10⟩, ⟨38, 18⟩, ⟨3, 8⟩, ⟨27, 16⟩, ⟨20, 11⟩, ⟨9, 9⟩, ⟨33, 17⟩]⟩
theorem profile0504_checked : profile0504.check := by decide +kernel

noncomputable def selection1_0504 : Selection :=
  ⟨1, -1, 4, (379/25), 481, -148, 958⟩
theorem selection1_0504_checked : selection1_0504.check profile0504 := by decide +kernel

noncomputable def selection2_0504 : Selection :=
  ⟨2, -9, 8, 15, 140, -160, 1326⟩
theorem selection2_0504_checked : selection2_0504.check profile0504 := by decide +kernel

noncomputable def profile0505 : ProfileCell :=
  ⟨(18/101), (5/28),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4, 3], [8, 8, 8, 9, 9],
    [⟨33, 18⟩, ⟨22, 16⟩, ⟨15, 11⟩, ⟨39, 19⟩, ⟨4, 9⟩, ⟨28, 17⟩, ⟨21, 12⟩, ⟨10, 10⟩, ⟨43, 28⟩, ⟨34, 18⟩, ⟨23, 16⟩, ⟨16, 11⟩, ⟨40, 19⟩, ⟨5, 9⟩, ⟨29, 17⟩, ⟨11, 10⟩, ⟨35, 18⟩, ⟨24, 16⟩, ⟨17, 11⟩, ⟨41, 19⟩, ⟨6, 9⟩, ⟨30, 17⟩, ⟨12, 10⟩, ⟨36, 18⟩, ⟨1, 8⟩, ⟨25, 16⟩, ⟨18, 11⟩, ⟨42, 19⟩, ⟨7, 9⟩, ⟨31, 17⟩, ⟨13, 10⟩, ⟨37, 18⟩, ⟨2, 8⟩, ⟨26, 16⟩, ⟨19, 11⟩, ⟨8, 9⟩, ⟨32, 17⟩, ⟨14, 10⟩, ⟨38, 18⟩, ⟨3, 8⟩, ⟨27, 16⟩, ⟨20, 11⟩, ⟨9, 9⟩]⟩
theorem profile0505_checked : profile0505.check := by decide +kernel

noncomputable def selection1_0505 : Selection :=
  ⟨1, -1, 4, (761/50), 388, -40, 352⟩
theorem selection1_0505_checked : selection1_0505.check profile0505 := by decide +kernel

noncomputable def selection2_0505 : Selection :=
  ⟨2, -9, 8, (301/20), 113, -52, 720⟩
theorem selection2_0505_checked : selection2_0505.check profile0505 := by decide +kernel

noncomputable def profile0506 : ProfileCell :=
  ⟨(5/28), (17/95),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 3], [8, 8, 8, 9, 9],
    [⟨9, 10⟩, ⟨33, 18⟩, ⟨15, 11⟩, ⟨22, 16⟩, ⟨4, 9⟩, ⟨39, 19⟩, ⟨21, 12⟩, ⟨28, 17⟩, ⟨10, 10⟩, ⟨34, 18⟩, ⟨43, 28⟩, ⟨16, 11⟩, ⟨23, 16⟩, ⟨5, 9⟩, ⟨40, 19⟩, ⟨29, 17⟩, ⟨11, 10⟩, ⟨35, 18⟩, ⟨17, 11⟩, ⟨24, 16⟩, ⟨6, 9⟩, ⟨41, 19⟩, ⟨30, 17⟩, ⟨12, 10⟩, ⟨1, 8⟩, ⟨36, 18⟩, ⟨18, 11⟩, ⟨25, 16⟩, ⟨7, 9⟩, ⟨42, 19⟩, ⟨31, 17⟩, ⟨13, 10⟩, ⟨2, 8⟩, ⟨37, 18⟩, ⟨19, 11⟩, ⟨26, 16⟩, ⟨8, 9⟩, ⟨32, 17⟩, ⟨14, 10⟩, ⟨3, 8⟩, ⟨38, 18⟩, ⟨20, 11⟩, ⟨27, 16⟩]⟩
theorem profile0506_checked : profile0506.check := by decide +kernel

noncomputable def selection1_0506 : Selection :=
  ⟨1, -2, 4, (267/20), 362, -130, 856⟩
theorem selection1_0506_checked : selection1_0506.check profile0506 := by decide +kernel

noncomputable def selection2_0506 : Selection :=
  ⟨2, -10, 8, (329/25), 105, -142, 1224⟩
theorem selection2_0506_checked : selection2_0506.check profile0506 := by decide +kernel

noncomputable def profile0507 : ProfileCell :=
  ⟨(17/95), (12/67),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 3], [8, 8, 8, 9, 9],
    [⟨27, 17⟩, ⟨9, 10⟩, ⟨33, 18⟩, ⟨15, 11⟩, ⟨22, 16⟩, ⟨4, 9⟩, ⟨39, 19⟩, ⟨21, 12⟩, ⟨28, 17⟩, ⟨10, 10⟩, ⟨34, 18⟩, ⟨16, 11⟩, ⟨43, 28⟩, ⟨23, 16⟩, ⟨5, 9⟩, ⟨40, 19⟩, ⟨29, 17⟩, ⟨11, 10⟩, ⟨35, 18⟩, ⟨17, 11⟩, ⟨24, 16⟩, ⟨6, 9⟩, ⟨41, 19⟩, ⟨30, 17⟩, ⟨12, 10⟩, ⟨1, 8⟩, ⟨36, 18⟩, ⟨18, 11⟩, ⟨25, 16⟩, ⟨7, 9⟩, ⟨42, 19⟩, ⟨31, 17⟩, ⟨13, 10⟩, ⟨2, 8⟩, ⟨37, 18⟩, ⟨19, 11⟩, ⟨26, 16⟩, ⟨8, 9⟩, ⟨32, 17⟩, ⟨14, 10⟩, ⟨3, 8⟩, ⟨38, 18⟩, ⟨20, 11⟩]⟩
theorem profile0507_checked : profile0507.check := by decide +kernel

noncomputable def selection1_0507 : Selection :=
  ⟨1, -2, 4, (1337/100), 152, -28, 286⟩
theorem selection1_0507_checked : selection1_0507.check profile0507 := by decide +kernel

noncomputable def selection2_0507 : Selection :=
  ⟨2, -10, 8, (659/50), 44, -40, 654⟩
theorem selection2_0507_checked : selection2_0507.check profile0507 := by decide +kernel

noncomputable def profile0508 : ProfileCell :=
  ⟨(12/67), (19/106),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 3], [8, 8, 8, 9, 9],
    [⟨20, 12⟩, ⟨27, 17⟩, ⟨9, 10⟩, ⟨33, 18⟩, ⟨15, 11⟩, ⟨22, 16⟩, ⟨4, 9⟩, ⟨39, 19⟩, ⟨21, 12⟩, ⟨28, 17⟩, ⟨10, 10⟩, ⟨34, 18⟩, ⟨16, 11⟩, ⟨23, 16⟩, ⟨43, 28⟩, ⟨5, 9⟩, ⟨40, 19⟩, ⟨29, 17⟩, ⟨11, 10⟩, ⟨35, 18⟩, ⟨17, 11⟩, ⟨24, 16⟩, ⟨6, 9⟩, ⟨41, 19⟩, ⟨30, 17⟩, ⟨12, 10⟩, ⟨1, 8⟩, ⟨36, 18⟩, ⟨18, 11⟩, ⟨25, 16⟩, ⟨7, 9⟩, ⟨42, 19⟩, ⟨31, 17⟩, ⟨13, 10⟩, ⟨2, 8⟩, ⟨37, 18⟩, ⟨19, 11⟩, ⟨26, 16⟩, ⟨8, 9⟩, ⟨32, 17⟩, ⟨14, 10⟩, ⟨3, 8⟩, ⟨38, 18⟩]⟩
theorem profile0508_checked : profile0508.check := by decide +kernel

noncomputable def selection1_0508 : Selection :=
  ⟨1, -2, 4, (1341/100), 136, -100, 688⟩
theorem selection1_0508_checked : selection1_0508.check profile0508 := by decide +kernel

noncomputable def selection2_0508 : Selection :=
  ⟨2, -10, 8, (661/50), 40, -112, 1056⟩
theorem selection2_0508_checked : selection2_0508.check profile0508 := by decide +kernel

noncomputable def profile0509 : ProfileCell :=
  ⟨(19/106), (7/39),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 3], [8, 8, 8, 9, 9],
    [⟨38, 19⟩, ⟨20, 12⟩, ⟨27, 17⟩, ⟨9, 10⟩, ⟨33, 18⟩, ⟨15, 11⟩, ⟨22, 16⟩, ⟨4, 9⟩, ⟨39, 19⟩, ⟨21, 12⟩, ⟨28, 17⟩, ⟨10, 10⟩, ⟨34, 18⟩, ⟨16, 11⟩, ⟨23, 16⟩, ⟨5, 9⟩, ⟨43, 28⟩, ⟨40, 19⟩, ⟨29, 17⟩, ⟨11, 10⟩, ⟨35, 18⟩, ⟨17, 11⟩, ⟨24, 16⟩, ⟨6, 9⟩, ⟨41, 19⟩, ⟨30, 17⟩, ⟨12, 10⟩, ⟨1, 8⟩, ⟨36, 18⟩, ⟨18, 11⟩, ⟨25, 16⟩, ⟨7, 9⟩, ⟨42, 19⟩, ⟨31, 17⟩, ⟨13, 10⟩, ⟨2, 8⟩, ⟨37, 18⟩, ⟨19, 11⟩, ⟨26, 16⟩, ⟨8, 9⟩, ⟨32, 17⟩, ⟨14, 10⟩, ⟨3, 8⟩]⟩
theorem profile0509_checked : profile0509.check := by decide +kernel

noncomputable def selection1_0509 : Selection :=
  ⟨1, -2, 4, (671/50), 234, 14, 52⟩
theorem selection1_0509_checked : selection1_0509.check profile0509 := by decide +kernel

noncomputable def selection2_0509 : Selection :=
  ⟨2, -10, 8, (331/25), 68, 2, 420⟩
theorem selection2_0509_checked : selection2_0509.check profile0509 := by decide +kernel

noncomputable def profile0510 : ProfileCell :=
  ⟨(7/39), (9/50),
    [9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 3], [8, 8, 8, 9, 9],
    [⟨20, 12⟩, ⟨38, 19⟩, ⟨9, 10⟩, ⟨27, 17⟩, ⟨15, 11⟩, ⟨33, 18⟩, ⟨4, 9⟩, ⟨22, 16⟩, ⟨21, 12⟩, ⟨39, 19⟩, ⟨10, 10⟩, ⟨28, 17⟩, ⟨16, 11⟩, ⟨34, 18⟩, ⟨5, 9⟩, ⟨23, 16⟩, ⟨43, 28⟩, ⟨40, 19⟩, ⟨11, 10⟩, ⟨29, 17⟩, ⟨17, 11⟩, ⟨35, 18⟩, ⟨6, 9⟩, ⟨24, 16⟩, ⟨41, 19⟩, ⟨12, 10⟩, ⟨30, 17⟩, ⟨1, 8⟩, ⟨18, 11⟩, ⟨36, 18⟩, ⟨7, 9⟩, ⟨25, 16⟩, ⟨42, 19⟩, ⟨13, 10⟩, ⟨31, 17⟩, ⟨2, 8⟩, ⟨19, 11⟩, ⟨37, 18⟩, ⟨8, 9⟩, ⟨26, 16⟩, ⟨14, 10⟩, ⟨32, 17⟩, ⟨3, 8⟩]⟩
theorem profile0510_checked : profile0510.check := by decide +kernel

noncomputable def selection1_0510 : Selection :=
  ⟨1, -2, 4, (339/25), 500, -98, 676⟩
theorem selection1_0510_checked : selection1_0510.check profile0510 := by decide +kernel

noncomputable def selection2_0510 : Selection :=
  ⟨2, -10, 8, (334/25), 145, -110, 1044⟩
theorem selection2_0510_checked : selection2_0510.check profile0510 := by decide +kernel

noncomputable def profile0511 : ProfileCell :=
  ⟨(9/50), (11/61),
    [9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 3], [8, 8, 9, 9, 9],
    [⟨3, 9⟩, ⟨32, 18⟩, ⟨20, 12⟩, ⟨9, 10⟩, ⟨38, 19⟩, ⟨27, 17⟩, ⟨15, 11⟩, ⟨4, 9⟩, ⟨33, 18⟩, ⟨22, 16⟩, ⟨21, 12⟩, ⟨10, 10⟩, ⟨39, 19⟩, ⟨28, 17⟩, ⟨16, 11⟩, ⟨5, 9⟩, ⟨34, 18⟩, ⟨23, 16⟩, ⟨11, 10⟩, ⟨40, 19⟩, ⟨43, 28⟩, ⟨29, 17⟩, ⟨17, 11⟩, ⟨6, 9⟩, ⟨35, 18⟩, ⟨24, 16⟩, ⟨12, 10⟩, ⟨41, 19⟩, ⟨1, 8⟩, ⟨30, 17⟩, ⟨18, 11⟩, ⟨7, 9⟩, ⟨36, 18⟩, ⟨25, 16⟩, ⟨13, 10⟩, ⟨42, 19⟩, ⟨2, 8⟩, ⟨31, 17⟩, ⟨19, 11⟩, ⟨8, 9⟩, ⟨37, 18⟩, ⟨26, 16⟩, ⟨14, 10⟩]⟩
theorem profile0511_checked : profile0511.check := by decide +kernel

noncomputable def selection1_0511 : Selection :=
  ⟨1, -1, 4, (783/50), 369, -98, 676⟩
theorem selection1_0511_checked : selection1_0511.check profile0511 := by decide +kernel

noncomputable def selection2_0511 : Selection :=
  ⟨2, -9, 8, (386/25), 107, -110, 1044⟩
theorem selection2_0511_checked : selection2_0511.check profile0511 := by decide +kernel

noncomputable def leaf1_0448 : Block :=
  Block.single profile0448 selection1_0448 profile0448_checked selection1_0448_checked
noncomputable def leaf1_0449 : Block :=
  Block.single profile0449 selection1_0449 profile0449_checked selection1_0449_checked
noncomputable def leaf1_0450 : Block :=
  Block.single profile0450 selection1_0450 profile0450_checked selection1_0450_checked
noncomputable def leaf1_0451 : Block :=
  Block.single profile0451 selection1_0451 profile0451_checked selection1_0451_checked
noncomputable def leaf1_0452 : Block :=
  Block.single profile0452 selection1_0452 profile0452_checked selection1_0452_checked
noncomputable def leaf1_0453 : Block :=
  Block.single profile0453 selection1_0453 profile0453_checked selection1_0453_checked
noncomputable def leaf1_0454 : Block :=
  Block.single profile0454 selection1_0454 profile0454_checked selection1_0454_checked
noncomputable def leaf1_0455 : Block :=
  Block.single profile0455 selection1_0455 profile0455_checked selection1_0455_checked
noncomputable def leaf1_0456 : Block :=
  Block.single profile0456 selection1_0456 profile0456_checked selection1_0456_checked
noncomputable def leaf1_0457 : Block :=
  Block.single profile0457 selection1_0457 profile0457_checked selection1_0457_checked
noncomputable def leaf1_0458 : Block :=
  Block.single profile0458 selection1_0458 profile0458_checked selection1_0458_checked
noncomputable def leaf1_0459 : Block :=
  Block.single profile0459 selection1_0459 profile0459_checked selection1_0459_checked
noncomputable def leaf1_0460 : Block :=
  Block.single profile0460 selection1_0460 profile0460_checked selection1_0460_checked
noncomputable def leaf1_0461 : Block :=
  Block.single profile0461 selection1_0461 profile0461_checked selection1_0461_checked
noncomputable def leaf1_0462 : Block :=
  Block.single profile0462 selection1_0462 profile0462_checked selection1_0462_checked
noncomputable def leaf1_0463 : Block :=
  Block.single profile0463 selection1_0463 profile0463_checked selection1_0463_checked
noncomputable def leaf1_0464 : Block :=
  Block.single profile0464 selection1_0464 profile0464_checked selection1_0464_checked
noncomputable def leaf1_0465 : Block :=
  Block.single profile0465 selection1_0465 profile0465_checked selection1_0465_checked
noncomputable def leaf1_0466 : Block :=
  Block.single profile0466 selection1_0466 profile0466_checked selection1_0466_checked
noncomputable def leaf1_0467 : Block :=
  Block.single profile0467 selection1_0467 profile0467_checked selection1_0467_checked
noncomputable def leaf1_0468 : Block :=
  Block.single profile0468 selection1_0468 profile0468_checked selection1_0468_checked
noncomputable def leaf1_0469 : Block :=
  Block.single profile0469 selection1_0469 profile0469_checked selection1_0469_checked
noncomputable def leaf1_0470 : Block :=
  Block.single profile0470 selection1_0470 profile0470_checked selection1_0470_checked
noncomputable def leaf1_0471 : Block :=
  Block.single profile0471 selection1_0471 profile0471_checked selection1_0471_checked
noncomputable def leaf1_0472 : Block :=
  Block.single profile0472 selection1_0472 profile0472_checked selection1_0472_checked
noncomputable def leaf1_0473 : Block :=
  Block.single profile0473 selection1_0473 profile0473_checked selection1_0473_checked
noncomputable def leaf1_0474 : Block :=
  Block.single profile0474 selection1_0474 profile0474_checked selection1_0474_checked
noncomputable def leaf1_0475 : Block :=
  Block.single profile0475 selection1_0475 profile0475_checked selection1_0475_checked
noncomputable def leaf1_0476 : Block :=
  Block.single profile0476 selection1_0476 profile0476_checked selection1_0476_checked
noncomputable def leaf1_0477 : Block :=
  Block.single profile0477 selection1_0477 profile0477_checked selection1_0477_checked
noncomputable def leaf1_0478 : Block :=
  Block.single profile0478 selection1_0478 profile0478_checked selection1_0478_checked
noncomputable def leaf1_0479 : Block :=
  Block.single profile0479 selection1_0479 profile0479_checked selection1_0479_checked
noncomputable def leaf1_0480 : Block :=
  Block.single profile0480 selection1_0480 profile0480_checked selection1_0480_checked
noncomputable def leaf1_0481 : Block :=
  Block.single profile0481 selection1_0481 profile0481_checked selection1_0481_checked
noncomputable def leaf1_0482 : Block :=
  Block.single profile0482 selection1_0482 profile0482_checked selection1_0482_checked
noncomputable def leaf1_0483 : Block :=
  Block.single profile0483 selection1_0483 profile0483_checked selection1_0483_checked
noncomputable def leaf1_0484 : Block :=
  Block.single profile0484 selection1_0484 profile0484_checked selection1_0484_checked
noncomputable def leaf1_0485 : Block :=
  Block.single profile0485 selection1_0485 profile0485_checked selection1_0485_checked
noncomputable def leaf1_0486 : Block :=
  Block.single profile0486 selection1_0486 profile0486_checked selection1_0486_checked
noncomputable def leaf1_0487 : Block :=
  Block.single profile0487 selection1_0487 profile0487_checked selection1_0487_checked
noncomputable def leaf1_0488 : Block :=
  Block.single profile0488 selection1_0488 profile0488_checked selection1_0488_checked
noncomputable def leaf1_0489 : Block :=
  Block.single profile0489 selection1_0489 profile0489_checked selection1_0489_checked
noncomputable def leaf1_0490 : Block :=
  Block.single profile0490 selection1_0490 profile0490_checked selection1_0490_checked
noncomputable def leaf1_0491 : Block :=
  Block.single profile0491 selection1_0491 profile0491_checked selection1_0491_checked
noncomputable def leaf1_0492 : Block :=
  Block.single profile0492 selection1_0492 profile0492_checked selection1_0492_checked
noncomputable def leaf1_0493 : Block :=
  Block.single profile0493 selection1_0493 profile0493_checked selection1_0493_checked
noncomputable def leaf1_0494 : Block :=
  Block.single profile0494 selection1_0494 profile0494_checked selection1_0494_checked
noncomputable def leaf1_0495 : Block :=
  Block.single profile0495 selection1_0495 profile0495_checked selection1_0495_checked
noncomputable def leaf1_0496 : Block :=
  Block.single profile0496 selection1_0496 profile0496_checked selection1_0496_checked
noncomputable def leaf1_0497 : Block :=
  Block.single profile0497 selection1_0497 profile0497_checked selection1_0497_checked
noncomputable def leaf1_0498 : Block :=
  Block.single profile0498 selection1_0498 profile0498_checked selection1_0498_checked
noncomputable def leaf1_0499 : Block :=
  Block.single profile0499 selection1_0499 profile0499_checked selection1_0499_checked
noncomputable def leaf1_0500 : Block :=
  Block.single profile0500 selection1_0500 profile0500_checked selection1_0500_checked
noncomputable def leaf1_0501 : Block :=
  Block.single profile0501 selection1_0501 profile0501_checked selection1_0501_checked
noncomputable def leaf1_0502 : Block :=
  Block.single profile0502 selection1_0502 profile0502_checked selection1_0502_checked
noncomputable def leaf1_0503 : Block :=
  Block.single profile0503 selection1_0503 profile0503_checked selection1_0503_checked
noncomputable def leaf1_0504 : Block :=
  Block.single profile0504 selection1_0504 profile0504_checked selection1_0504_checked
noncomputable def leaf1_0505 : Block :=
  Block.single profile0505 selection1_0505 profile0505_checked selection1_0505_checked
noncomputable def leaf1_0506 : Block :=
  Block.single profile0506 selection1_0506 profile0506_checked selection1_0506_checked
noncomputable def leaf1_0507 : Block :=
  Block.single profile0507 selection1_0507 profile0507_checked selection1_0507_checked
noncomputable def leaf1_0508 : Block :=
  Block.single profile0508 selection1_0508 profile0508_checked selection1_0508_checked
noncomputable def leaf1_0509 : Block :=
  Block.single profile0509 selection1_0509 profile0509_checked selection1_0509_checked
noncomputable def leaf1_0510 : Block :=
  Block.single profile0510 selection1_0510 profile0510_checked selection1_0510_checked
noncomputable def leaf1_0511 : Block :=
  Block.single profile0511 selection1_0511 profile0511_checked selection1_0511_checked
noncomputable def batch007p1_0_0000 : Block :=
  Block.append leaf1_0448 leaf1_0449 (by decide +kernel)
noncomputable def batch007p1_0_0001 : Block :=
  Block.append leaf1_0450 leaf1_0451 (by decide +kernel)
noncomputable def batch007p1_0_0002 : Block :=
  Block.append leaf1_0452 leaf1_0453 (by decide +kernel)
noncomputable def batch007p1_0_0003 : Block :=
  Block.append leaf1_0454 leaf1_0455 (by decide +kernel)
noncomputable def batch007p1_0_0004 : Block :=
  Block.append leaf1_0456 leaf1_0457 (by decide +kernel)
noncomputable def batch007p1_0_0005 : Block :=
  Block.append leaf1_0458 leaf1_0459 (by decide +kernel)
noncomputable def batch007p1_0_0006 : Block :=
  Block.append leaf1_0460 leaf1_0461 (by decide +kernel)
noncomputable def batch007p1_0_0007 : Block :=
  Block.append leaf1_0462 leaf1_0463 (by decide +kernel)
noncomputable def batch007p1_0_0008 : Block :=
  Block.append leaf1_0464 leaf1_0465 (by decide +kernel)
noncomputable def batch007p1_0_0009 : Block :=
  Block.append leaf1_0466 leaf1_0467 (by decide +kernel)
noncomputable def batch007p1_0_0010 : Block :=
  Block.append leaf1_0468 leaf1_0469 (by decide +kernel)
noncomputable def batch007p1_0_0011 : Block :=
  Block.append leaf1_0470 leaf1_0471 (by decide +kernel)
noncomputable def batch007p1_0_0012 : Block :=
  Block.append leaf1_0472 leaf1_0473 (by decide +kernel)
noncomputable def batch007p1_0_0013 : Block :=
  Block.append leaf1_0474 leaf1_0475 (by decide +kernel)
noncomputable def batch007p1_0_0014 : Block :=
  Block.append leaf1_0476 leaf1_0477 (by decide +kernel)
noncomputable def batch007p1_0_0015 : Block :=
  Block.append leaf1_0478 leaf1_0479 (by decide +kernel)
noncomputable def batch007p1_0_0016 : Block :=
  Block.append leaf1_0480 leaf1_0481 (by decide +kernel)
noncomputable def batch007p1_0_0017 : Block :=
  Block.append leaf1_0482 leaf1_0483 (by decide +kernel)
noncomputable def batch007p1_0_0018 : Block :=
  Block.append leaf1_0484 leaf1_0485 (by decide +kernel)
noncomputable def batch007p1_0_0019 : Block :=
  Block.append leaf1_0486 leaf1_0487 (by decide +kernel)
noncomputable def batch007p1_0_0020 : Block :=
  Block.append leaf1_0488 leaf1_0489 (by decide +kernel)
noncomputable def batch007p1_0_0021 : Block :=
  Block.append leaf1_0490 leaf1_0491 (by decide +kernel)
noncomputable def batch007p1_0_0022 : Block :=
  Block.append leaf1_0492 leaf1_0493 (by decide +kernel)
noncomputable def batch007p1_0_0023 : Block :=
  Block.append leaf1_0494 leaf1_0495 (by decide +kernel)
noncomputable def batch007p1_0_0024 : Block :=
  Block.append leaf1_0496 leaf1_0497 (by decide +kernel)
noncomputable def batch007p1_0_0025 : Block :=
  Block.append leaf1_0498 leaf1_0499 (by decide +kernel)
noncomputable def batch007p1_0_0026 : Block :=
  Block.append leaf1_0500 leaf1_0501 (by decide +kernel)
noncomputable def batch007p1_0_0027 : Block :=
  Block.append leaf1_0502 leaf1_0503 (by decide +kernel)
noncomputable def batch007p1_0_0028 : Block :=
  Block.append leaf1_0504 leaf1_0505 (by decide +kernel)
noncomputable def batch007p1_0_0029 : Block :=
  Block.append leaf1_0506 leaf1_0507 (by decide +kernel)
noncomputable def batch007p1_0_0030 : Block :=
  Block.append leaf1_0508 leaf1_0509 (by decide +kernel)
noncomputable def batch007p1_0_0031 : Block :=
  Block.append leaf1_0510 leaf1_0511 (by decide +kernel)
noncomputable def batch007p1_1_0000 : Block :=
  Block.append batch007p1_0_0000 batch007p1_0_0001 (by decide +kernel)
noncomputable def batch007p1_1_0001 : Block :=
  Block.append batch007p1_0_0002 batch007p1_0_0003 (by decide +kernel)
noncomputable def batch007p1_1_0002 : Block :=
  Block.append batch007p1_0_0004 batch007p1_0_0005 (by decide +kernel)
noncomputable def batch007p1_1_0003 : Block :=
  Block.append batch007p1_0_0006 batch007p1_0_0007 (by decide +kernel)
noncomputable def batch007p1_1_0004 : Block :=
  Block.append batch007p1_0_0008 batch007p1_0_0009 (by decide +kernel)
noncomputable def batch007p1_1_0005 : Block :=
  Block.append batch007p1_0_0010 batch007p1_0_0011 (by decide +kernel)
noncomputable def batch007p1_1_0006 : Block :=
  Block.append batch007p1_0_0012 batch007p1_0_0013 (by decide +kernel)
noncomputable def batch007p1_1_0007 : Block :=
  Block.append batch007p1_0_0014 batch007p1_0_0015 (by decide +kernel)
noncomputable def batch007p1_1_0008 : Block :=
  Block.append batch007p1_0_0016 batch007p1_0_0017 (by decide +kernel)
noncomputable def batch007p1_1_0009 : Block :=
  Block.append batch007p1_0_0018 batch007p1_0_0019 (by decide +kernel)
noncomputable def batch007p1_1_0010 : Block :=
  Block.append batch007p1_0_0020 batch007p1_0_0021 (by decide +kernel)
noncomputable def batch007p1_1_0011 : Block :=
  Block.append batch007p1_0_0022 batch007p1_0_0023 (by decide +kernel)
noncomputable def batch007p1_1_0012 : Block :=
  Block.append batch007p1_0_0024 batch007p1_0_0025 (by decide +kernel)
noncomputable def batch007p1_1_0013 : Block :=
  Block.append batch007p1_0_0026 batch007p1_0_0027 (by decide +kernel)
noncomputable def batch007p1_1_0014 : Block :=
  Block.append batch007p1_0_0028 batch007p1_0_0029 (by decide +kernel)
noncomputable def batch007p1_1_0015 : Block :=
  Block.append batch007p1_0_0030 batch007p1_0_0031 (by decide +kernel)
noncomputable def batch007p1_2_0000 : Block :=
  Block.append batch007p1_1_0000 batch007p1_1_0001 (by decide +kernel)
noncomputable def batch007p1_2_0001 : Block :=
  Block.append batch007p1_1_0002 batch007p1_1_0003 (by decide +kernel)
noncomputable def batch007p1_2_0002 : Block :=
  Block.append batch007p1_1_0004 batch007p1_1_0005 (by decide +kernel)
noncomputable def batch007p1_2_0003 : Block :=
  Block.append batch007p1_1_0006 batch007p1_1_0007 (by decide +kernel)
noncomputable def batch007p1_2_0004 : Block :=
  Block.append batch007p1_1_0008 batch007p1_1_0009 (by decide +kernel)
noncomputable def batch007p1_2_0005 : Block :=
  Block.append batch007p1_1_0010 batch007p1_1_0011 (by decide +kernel)
noncomputable def batch007p1_2_0006 : Block :=
  Block.append batch007p1_1_0012 batch007p1_1_0013 (by decide +kernel)
noncomputable def batch007p1_2_0007 : Block :=
  Block.append batch007p1_1_0014 batch007p1_1_0015 (by decide +kernel)
noncomputable def batch007p1_3_0000 : Block :=
  Block.append batch007p1_2_0000 batch007p1_2_0001 (by decide +kernel)
noncomputable def batch007p1_3_0001 : Block :=
  Block.append batch007p1_2_0002 batch007p1_2_0003 (by decide +kernel)
noncomputable def batch007p1_3_0002 : Block :=
  Block.append batch007p1_2_0004 batch007p1_2_0005 (by decide +kernel)
noncomputable def batch007p1_3_0003 : Block :=
  Block.append batch007p1_2_0006 batch007p1_2_0007 (by decide +kernel)
noncomputable def batch007p1_4_0000 : Block :=
  Block.append batch007p1_3_0000 batch007p1_3_0001 (by decide +kernel)
noncomputable def batch007p1_4_0001 : Block :=
  Block.append batch007p1_3_0002 batch007p1_3_0003 (by decide +kernel)
noncomputable def batch007p1_5_0000 : Block :=
  Block.append batch007p1_4_0000 batch007p1_4_0001 (by decide +kernel)
theorem batch007p1_5_0000_left : batch007p1_5_0000.left = (124/107) := by decide +kernel
theorem batch007p1_5_0000_right : batch007p1_5_0000.right = (72/61) := by decide +kernel
theorem batch007p1_5_0000_units : batch007p1_5_0000.units = 23475 := by decide +kernel
noncomputable def leaf2_0448 : Block :=
  Block.single profile0448 selection2_0448 profile0448_checked selection2_0448_checked
noncomputable def leaf2_0449 : Block :=
  Block.single profile0449 selection2_0449 profile0449_checked selection2_0449_checked
noncomputable def leaf2_0450 : Block :=
  Block.single profile0450 selection2_0450 profile0450_checked selection2_0450_checked
noncomputable def leaf2_0451 : Block :=
  Block.single profile0451 selection2_0451 profile0451_checked selection2_0451_checked
noncomputable def leaf2_0452 : Block :=
  Block.single profile0452 selection2_0452 profile0452_checked selection2_0452_checked
noncomputable def leaf2_0453 : Block :=
  Block.single profile0453 selection2_0453 profile0453_checked selection2_0453_checked
noncomputable def leaf2_0454 : Block :=
  Block.single profile0454 selection2_0454 profile0454_checked selection2_0454_checked
noncomputable def leaf2_0455 : Block :=
  Block.single profile0455 selection2_0455 profile0455_checked selection2_0455_checked
noncomputable def leaf2_0456 : Block :=
  Block.single profile0456 selection2_0456 profile0456_checked selection2_0456_checked
noncomputable def leaf2_0457 : Block :=
  Block.single profile0457 selection2_0457 profile0457_checked selection2_0457_checked
noncomputable def leaf2_0458 : Block :=
  Block.single profile0458 selection2_0458 profile0458_checked selection2_0458_checked
noncomputable def leaf2_0459 : Block :=
  Block.single profile0459 selection2_0459 profile0459_checked selection2_0459_checked
noncomputable def leaf2_0460 : Block :=
  Block.single profile0460 selection2_0460 profile0460_checked selection2_0460_checked
noncomputable def leaf2_0461 : Block :=
  Block.single profile0461 selection2_0461 profile0461_checked selection2_0461_checked
noncomputable def leaf2_0462 : Block :=
  Block.single profile0462 selection2_0462 profile0462_checked selection2_0462_checked
noncomputable def leaf2_0463 : Block :=
  Block.single profile0463 selection2_0463 profile0463_checked selection2_0463_checked
noncomputable def leaf2_0464 : Block :=
  Block.single profile0464 selection2_0464 profile0464_checked selection2_0464_checked
noncomputable def leaf2_0465 : Block :=
  Block.single profile0465 selection2_0465 profile0465_checked selection2_0465_checked
noncomputable def leaf2_0466 : Block :=
  Block.single profile0466 selection2_0466 profile0466_checked selection2_0466_checked
noncomputable def leaf2_0467 : Block :=
  Block.single profile0467 selection2_0467 profile0467_checked selection2_0467_checked
noncomputable def leaf2_0468 : Block :=
  Block.single profile0468 selection2_0468 profile0468_checked selection2_0468_checked
noncomputable def leaf2_0469 : Block :=
  Block.single profile0469 selection2_0469 profile0469_checked selection2_0469_checked
noncomputable def leaf2_0470 : Block :=
  Block.single profile0470 selection2_0470 profile0470_checked selection2_0470_checked
noncomputable def leaf2_0471 : Block :=
  Block.single profile0471 selection2_0471 profile0471_checked selection2_0471_checked
noncomputable def leaf2_0472 : Block :=
  Block.single profile0472 selection2_0472 profile0472_checked selection2_0472_checked
noncomputable def leaf2_0473 : Block :=
  Block.single profile0473 selection2_0473 profile0473_checked selection2_0473_checked
noncomputable def leaf2_0474 : Block :=
  Block.single profile0474 selection2_0474 profile0474_checked selection2_0474_checked
noncomputable def leaf2_0475 : Block :=
  Block.single profile0475 selection2_0475 profile0475_checked selection2_0475_checked
noncomputable def leaf2_0476 : Block :=
  Block.single profile0476 selection2_0476 profile0476_checked selection2_0476_checked
noncomputable def leaf2_0477 : Block :=
  Block.single profile0477 selection2_0477 profile0477_checked selection2_0477_checked
noncomputable def leaf2_0478 : Block :=
  Block.single profile0478 selection2_0478 profile0478_checked selection2_0478_checked
noncomputable def leaf2_0479 : Block :=
  Block.single profile0479 selection2_0479 profile0479_checked selection2_0479_checked
noncomputable def leaf2_0480 : Block :=
  Block.single profile0480 selection2_0480 profile0480_checked selection2_0480_checked
noncomputable def leaf2_0481 : Block :=
  Block.single profile0481 selection2_0481 profile0481_checked selection2_0481_checked
noncomputable def leaf2_0482 : Block :=
  Block.single profile0482 selection2_0482 profile0482_checked selection2_0482_checked
noncomputable def leaf2_0483 : Block :=
  Block.single profile0483 selection2_0483 profile0483_checked selection2_0483_checked
noncomputable def leaf2_0484 : Block :=
  Block.single profile0484 selection2_0484 profile0484_checked selection2_0484_checked
noncomputable def leaf2_0485 : Block :=
  Block.single profile0485 selection2_0485 profile0485_checked selection2_0485_checked
noncomputable def leaf2_0486 : Block :=
  Block.single profile0486 selection2_0486 profile0486_checked selection2_0486_checked
noncomputable def leaf2_0487 : Block :=
  Block.single profile0487 selection2_0487 profile0487_checked selection2_0487_checked
noncomputable def leaf2_0488 : Block :=
  Block.single profile0488 selection2_0488 profile0488_checked selection2_0488_checked
noncomputable def leaf2_0489 : Block :=
  Block.single profile0489 selection2_0489 profile0489_checked selection2_0489_checked
noncomputable def leaf2_0490 : Block :=
  Block.single profile0490 selection2_0490 profile0490_checked selection2_0490_checked
noncomputable def leaf2_0491 : Block :=
  Block.single profile0491 selection2_0491 profile0491_checked selection2_0491_checked
noncomputable def leaf2_0492 : Block :=
  Block.single profile0492 selection2_0492 profile0492_checked selection2_0492_checked
noncomputable def leaf2_0493 : Block :=
  Block.single profile0493 selection2_0493 profile0493_checked selection2_0493_checked
noncomputable def leaf2_0494 : Block :=
  Block.single profile0494 selection2_0494 profile0494_checked selection2_0494_checked
noncomputable def leaf2_0495 : Block :=
  Block.single profile0495 selection2_0495 profile0495_checked selection2_0495_checked
noncomputable def leaf2_0496 : Block :=
  Block.single profile0496 selection2_0496 profile0496_checked selection2_0496_checked
noncomputable def leaf2_0497 : Block :=
  Block.single profile0497 selection2_0497 profile0497_checked selection2_0497_checked
noncomputable def leaf2_0498 : Block :=
  Block.single profile0498 selection2_0498 profile0498_checked selection2_0498_checked
noncomputable def leaf2_0499 : Block :=
  Block.single profile0499 selection2_0499 profile0499_checked selection2_0499_checked
noncomputable def leaf2_0500 : Block :=
  Block.single profile0500 selection2_0500 profile0500_checked selection2_0500_checked
noncomputable def leaf2_0501 : Block :=
  Block.single profile0501 selection2_0501 profile0501_checked selection2_0501_checked
noncomputable def leaf2_0502 : Block :=
  Block.single profile0502 selection2_0502 profile0502_checked selection2_0502_checked
noncomputable def leaf2_0503 : Block :=
  Block.single profile0503 selection2_0503 profile0503_checked selection2_0503_checked
noncomputable def leaf2_0504 : Block :=
  Block.single profile0504 selection2_0504 profile0504_checked selection2_0504_checked
noncomputable def leaf2_0505 : Block :=
  Block.single profile0505 selection2_0505 profile0505_checked selection2_0505_checked
noncomputable def leaf2_0506 : Block :=
  Block.single profile0506 selection2_0506 profile0506_checked selection2_0506_checked
noncomputable def leaf2_0507 : Block :=
  Block.single profile0507 selection2_0507 profile0507_checked selection2_0507_checked
noncomputable def leaf2_0508 : Block :=
  Block.single profile0508 selection2_0508 profile0508_checked selection2_0508_checked
noncomputable def leaf2_0509 : Block :=
  Block.single profile0509 selection2_0509 profile0509_checked selection2_0509_checked
noncomputable def leaf2_0510 : Block :=
  Block.single profile0510 selection2_0510 profile0510_checked selection2_0510_checked
noncomputable def leaf2_0511 : Block :=
  Block.single profile0511 selection2_0511 profile0511_checked selection2_0511_checked
noncomputable def batch007p2_0_0000 : Block :=
  Block.append leaf2_0448 leaf2_0449 (by decide +kernel)
noncomputable def batch007p2_0_0001 : Block :=
  Block.append leaf2_0450 leaf2_0451 (by decide +kernel)
noncomputable def batch007p2_0_0002 : Block :=
  Block.append leaf2_0452 leaf2_0453 (by decide +kernel)
noncomputable def batch007p2_0_0003 : Block :=
  Block.append leaf2_0454 leaf2_0455 (by decide +kernel)
noncomputable def batch007p2_0_0004 : Block :=
  Block.append leaf2_0456 leaf2_0457 (by decide +kernel)
noncomputable def batch007p2_0_0005 : Block :=
  Block.append leaf2_0458 leaf2_0459 (by decide +kernel)
noncomputable def batch007p2_0_0006 : Block :=
  Block.append leaf2_0460 leaf2_0461 (by decide +kernel)
noncomputable def batch007p2_0_0007 : Block :=
  Block.append leaf2_0462 leaf2_0463 (by decide +kernel)
noncomputable def batch007p2_0_0008 : Block :=
  Block.append leaf2_0464 leaf2_0465 (by decide +kernel)
noncomputable def batch007p2_0_0009 : Block :=
  Block.append leaf2_0466 leaf2_0467 (by decide +kernel)
noncomputable def batch007p2_0_0010 : Block :=
  Block.append leaf2_0468 leaf2_0469 (by decide +kernel)
noncomputable def batch007p2_0_0011 : Block :=
  Block.append leaf2_0470 leaf2_0471 (by decide +kernel)
noncomputable def batch007p2_0_0012 : Block :=
  Block.append leaf2_0472 leaf2_0473 (by decide +kernel)
noncomputable def batch007p2_0_0013 : Block :=
  Block.append leaf2_0474 leaf2_0475 (by decide +kernel)
noncomputable def batch007p2_0_0014 : Block :=
  Block.append leaf2_0476 leaf2_0477 (by decide +kernel)
noncomputable def batch007p2_0_0015 : Block :=
  Block.append leaf2_0478 leaf2_0479 (by decide +kernel)
noncomputable def batch007p2_0_0016 : Block :=
  Block.append leaf2_0480 leaf2_0481 (by decide +kernel)
noncomputable def batch007p2_0_0017 : Block :=
  Block.append leaf2_0482 leaf2_0483 (by decide +kernel)
noncomputable def batch007p2_0_0018 : Block :=
  Block.append leaf2_0484 leaf2_0485 (by decide +kernel)
noncomputable def batch007p2_0_0019 : Block :=
  Block.append leaf2_0486 leaf2_0487 (by decide +kernel)
noncomputable def batch007p2_0_0020 : Block :=
  Block.append leaf2_0488 leaf2_0489 (by decide +kernel)
noncomputable def batch007p2_0_0021 : Block :=
  Block.append leaf2_0490 leaf2_0491 (by decide +kernel)
noncomputable def batch007p2_0_0022 : Block :=
  Block.append leaf2_0492 leaf2_0493 (by decide +kernel)
noncomputable def batch007p2_0_0023 : Block :=
  Block.append leaf2_0494 leaf2_0495 (by decide +kernel)
noncomputable def batch007p2_0_0024 : Block :=
  Block.append leaf2_0496 leaf2_0497 (by decide +kernel)
noncomputable def batch007p2_0_0025 : Block :=
  Block.append leaf2_0498 leaf2_0499 (by decide +kernel)
noncomputable def batch007p2_0_0026 : Block :=
  Block.append leaf2_0500 leaf2_0501 (by decide +kernel)
noncomputable def batch007p2_0_0027 : Block :=
  Block.append leaf2_0502 leaf2_0503 (by decide +kernel)
noncomputable def batch007p2_0_0028 : Block :=
  Block.append leaf2_0504 leaf2_0505 (by decide +kernel)
noncomputable def batch007p2_0_0029 : Block :=
  Block.append leaf2_0506 leaf2_0507 (by decide +kernel)
noncomputable def batch007p2_0_0030 : Block :=
  Block.append leaf2_0508 leaf2_0509 (by decide +kernel)
noncomputable def batch007p2_0_0031 : Block :=
  Block.append leaf2_0510 leaf2_0511 (by decide +kernel)
noncomputable def batch007p2_1_0000 : Block :=
  Block.append batch007p2_0_0000 batch007p2_0_0001 (by decide +kernel)
noncomputable def batch007p2_1_0001 : Block :=
  Block.append batch007p2_0_0002 batch007p2_0_0003 (by decide +kernel)
noncomputable def batch007p2_1_0002 : Block :=
  Block.append batch007p2_0_0004 batch007p2_0_0005 (by decide +kernel)
noncomputable def batch007p2_1_0003 : Block :=
  Block.append batch007p2_0_0006 batch007p2_0_0007 (by decide +kernel)
noncomputable def batch007p2_1_0004 : Block :=
  Block.append batch007p2_0_0008 batch007p2_0_0009 (by decide +kernel)
noncomputable def batch007p2_1_0005 : Block :=
  Block.append batch007p2_0_0010 batch007p2_0_0011 (by decide +kernel)
noncomputable def batch007p2_1_0006 : Block :=
  Block.append batch007p2_0_0012 batch007p2_0_0013 (by decide +kernel)
noncomputable def batch007p2_1_0007 : Block :=
  Block.append batch007p2_0_0014 batch007p2_0_0015 (by decide +kernel)
noncomputable def batch007p2_1_0008 : Block :=
  Block.append batch007p2_0_0016 batch007p2_0_0017 (by decide +kernel)
noncomputable def batch007p2_1_0009 : Block :=
  Block.append batch007p2_0_0018 batch007p2_0_0019 (by decide +kernel)
noncomputable def batch007p2_1_0010 : Block :=
  Block.append batch007p2_0_0020 batch007p2_0_0021 (by decide +kernel)
noncomputable def batch007p2_1_0011 : Block :=
  Block.append batch007p2_0_0022 batch007p2_0_0023 (by decide +kernel)
noncomputable def batch007p2_1_0012 : Block :=
  Block.append batch007p2_0_0024 batch007p2_0_0025 (by decide +kernel)
noncomputable def batch007p2_1_0013 : Block :=
  Block.append batch007p2_0_0026 batch007p2_0_0027 (by decide +kernel)
noncomputable def batch007p2_1_0014 : Block :=
  Block.append batch007p2_0_0028 batch007p2_0_0029 (by decide +kernel)
noncomputable def batch007p2_1_0015 : Block :=
  Block.append batch007p2_0_0030 batch007p2_0_0031 (by decide +kernel)
noncomputable def batch007p2_2_0000 : Block :=
  Block.append batch007p2_1_0000 batch007p2_1_0001 (by decide +kernel)
noncomputable def batch007p2_2_0001 : Block :=
  Block.append batch007p2_1_0002 batch007p2_1_0003 (by decide +kernel)
noncomputable def batch007p2_2_0002 : Block :=
  Block.append batch007p2_1_0004 batch007p2_1_0005 (by decide +kernel)
noncomputable def batch007p2_2_0003 : Block :=
  Block.append batch007p2_1_0006 batch007p2_1_0007 (by decide +kernel)
noncomputable def batch007p2_2_0004 : Block :=
  Block.append batch007p2_1_0008 batch007p2_1_0009 (by decide +kernel)
noncomputable def batch007p2_2_0005 : Block :=
  Block.append batch007p2_1_0010 batch007p2_1_0011 (by decide +kernel)
noncomputable def batch007p2_2_0006 : Block :=
  Block.append batch007p2_1_0012 batch007p2_1_0013 (by decide +kernel)
noncomputable def batch007p2_2_0007 : Block :=
  Block.append batch007p2_1_0014 batch007p2_1_0015 (by decide +kernel)
noncomputable def batch007p2_3_0000 : Block :=
  Block.append batch007p2_2_0000 batch007p2_2_0001 (by decide +kernel)
noncomputable def batch007p2_3_0001 : Block :=
  Block.append batch007p2_2_0002 batch007p2_2_0003 (by decide +kernel)
noncomputable def batch007p2_3_0002 : Block :=
  Block.append batch007p2_2_0004 batch007p2_2_0005 (by decide +kernel)
noncomputable def batch007p2_3_0003 : Block :=
  Block.append batch007p2_2_0006 batch007p2_2_0007 (by decide +kernel)
noncomputable def batch007p2_4_0000 : Block :=
  Block.append batch007p2_3_0000 batch007p2_3_0001 (by decide +kernel)
noncomputable def batch007p2_4_0001 : Block :=
  Block.append batch007p2_3_0002 batch007p2_3_0003 (by decide +kernel)
noncomputable def batch007p2_5_0000 : Block :=
  Block.append batch007p2_4_0000 batch007p2_4_0001 (by decide +kernel)
theorem batch007p2_5_0000_left : batch007p2_5_0000.left = (231/107) := by decide +kernel
theorem batch007p2_5_0000_right : batch007p2_5_0000.right = (133/61) := by decide +kernel
theorem batch007p2_5_0000_units : batch007p2_5_0000.units = 6713 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
