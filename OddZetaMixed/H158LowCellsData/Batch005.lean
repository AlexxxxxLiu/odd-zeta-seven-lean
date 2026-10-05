import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile0320 : ProfileCell :=
  ⟨(5/44), (9/79),
    [5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨6, 6⟩, ⟨29, 11⟩, ⟨15, 7⟩, ⟨38, 12⟩, ⟨7, 6⟩, ⟨30, 11⟩, ⟨16, 7⟩, ⟨39, 12⟩, ⟨22, 10⟩, ⟨8, 6⟩, ⟨31, 11⟩, ⟨17, 7⟩, ⟨40, 12⟩, ⟨23, 10⟩, ⟨9, 6⟩, ⟨32, 11⟩, ⟨18, 7⟩, ⟨41, 12⟩, ⟨1, 5⟩, ⟨24, 10⟩, ⟨10, 6⟩, ⟨33, 11⟩, ⟨19, 7⟩, ⟨42, 12⟩, ⟨2, 5⟩, ⟨25, 10⟩, ⟨11, 6⟩, ⟨34, 11⟩, ⟨20, 7⟩, ⟨3, 5⟩, ⟨26, 10⟩, ⟨12, 6⟩, ⟨35, 11⟩, ⟨21, 7⟩, ⟨4, 5⟩, ⟨27, 10⟩, ⟨13, 6⟩, ⟨36, 11⟩, ⟨5, 5⟩, ⟨28, 10⟩, ⟨14, 6⟩, ⟨37, 11⟩, ⟨43, 17⟩]⟩
theorem profile0320_checked : profile0320.check := by decide +kernel

noncomputable def selection1_0320 : Selection :=
  ⟨1, -2, 4, (1121/100), 260, 98, -702⟩
theorem selection1_0320_checked : selection1_0320.check profile0320 := by decide +kernel

noncomputable def selection2_0320 : Selection :=
  ⟨2, -10, 8, (1107/100), 72, 106, -334⟩
theorem selection2_0320_checked : selection2_0320.check profile0320 := by decide +kernel

noncomputable def profile0321 : ProfileCell :=
  ⟨(9/79), (4/35),
    [5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨43, 18⟩, ⟨6, 6⟩, ⟨29, 11⟩, ⟨15, 7⟩, ⟨38, 12⟩, ⟨7, 6⟩, ⟨30, 11⟩, ⟨16, 7⟩, ⟨39, 12⟩, ⟨22, 10⟩, ⟨8, 6⟩, ⟨31, 11⟩, ⟨17, 7⟩, ⟨40, 12⟩, ⟨23, 10⟩, ⟨9, 6⟩, ⟨32, 11⟩, ⟨18, 7⟩, ⟨41, 12⟩, ⟨1, 5⟩, ⟨24, 10⟩, ⟨10, 6⟩, ⟨33, 11⟩, ⟨19, 7⟩, ⟨42, 12⟩, ⟨2, 5⟩, ⟨25, 10⟩, ⟨11, 6⟩, ⟨34, 11⟩, ⟨20, 7⟩, ⟨3, 5⟩, ⟨26, 10⟩, ⟨12, 6⟩, ⟨35, 11⟩, ⟨21, 7⟩, ⟨4, 5⟩, ⟨27, 10⟩, ⟨13, 6⟩, ⟨36, 11⟩, ⟨5, 5⟩, ⟨28, 10⟩, ⟨14, 6⟩, ⟨37, 11⟩]⟩
theorem profile0321_checked : profile0321.check := by decide +kernel

noncomputable def selection1_0321 : Selection :=
  ⟨1, -2, 4, (567/50), 331, -136, 1352⟩
theorem selection1_0321_checked : selection1_0321.check profile0321 := by decide +kernel

noncomputable def selection2_0321 : Selection :=
  ⟨2, -10, 8, (1119/100), 91, -128, 1720⟩
theorem selection2_0321_checked : selection2_0321.check profile0321 := by decide +kernel

noncomputable def profile0322 : ProfileCell :=
  ⟨(4/35), (11/96),
    [5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨37, 12⟩, ⟨6, 6⟩, ⟨43, 18⟩, ⟨15, 7⟩, ⟨29, 11⟩, ⟨38, 12⟩, ⟨7, 6⟩, ⟨16, 7⟩, ⟨30, 11⟩, ⟨39, 12⟩, ⟨8, 6⟩, ⟨22, 10⟩, ⟨17, 7⟩, ⟨31, 11⟩, ⟨40, 12⟩, ⟨9, 6⟩, ⟨23, 10⟩, ⟨18, 7⟩, ⟨32, 11⟩, ⟨41, 12⟩, ⟨1, 5⟩, ⟨10, 6⟩, ⟨24, 10⟩, ⟨19, 7⟩, ⟨33, 11⟩, ⟨42, 12⟩, ⟨2, 5⟩, ⟨11, 6⟩, ⟨25, 10⟩, ⟨20, 7⟩, ⟨34, 11⟩, ⟨3, 5⟩, ⟨12, 6⟩, ⟨26, 10⟩, ⟨21, 7⟩, ⟨35, 11⟩, ⟨4, 5⟩, ⟨13, 6⟩, ⟨27, 10⟩, ⟨36, 11⟩, ⟨5, 5⟩, ⟨14, 6⟩, ⟨28, 10⟩]⟩
theorem profile0322_checked : profile0322.check := by decide +kernel

noncomputable def selection1_0322 : Selection :=
  ⟨1, -2, 4, (229/20), 275, -80, 862⟩
theorem selection1_0322_checked : selection1_0322.check profile0322 := by decide +kernel

noncomputable def selection2_0322 : Selection :=
  ⟨2, -10, 8, (282/25), 76, -72, 1230⟩
theorem selection2_0322_checked : selection2_0322.check profile0322 := by decide +kernel

noncomputable def profile0323 : ProfileCell :=
  ⟨(11/96), (7/61),
    [5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨28, 11⟩, ⟨37, 12⟩, ⟨6, 6⟩, ⟨15, 7⟩, ⟨43, 18⟩, ⟨29, 11⟩, ⟨38, 12⟩, ⟨7, 6⟩, ⟨16, 7⟩, ⟨30, 11⟩, ⟨39, 12⟩, ⟨8, 6⟩, ⟨22, 10⟩, ⟨17, 7⟩, ⟨31, 11⟩, ⟨40, 12⟩, ⟨9, 6⟩, ⟨23, 10⟩, ⟨18, 7⟩, ⟨32, 11⟩, ⟨41, 12⟩, ⟨1, 5⟩, ⟨10, 6⟩, ⟨24, 10⟩, ⟨19, 7⟩, ⟨33, 11⟩, ⟨42, 12⟩, ⟨2, 5⟩, ⟨11, 6⟩, ⟨25, 10⟩, ⟨20, 7⟩, ⟨34, 11⟩, ⟨3, 5⟩, ⟨12, 6⟩, ⟨26, 10⟩, ⟨21, 7⟩, ⟨35, 11⟩, ⟨4, 5⟩, ⟨13, 6⟩, ⟨27, 10⟩, ⟨36, 11⟩, ⟨5, 5⟩, ⟨14, 6⟩]⟩
theorem profile0323_checked : profile0323.check := by decide +kernel

noncomputable def selection1_0323 : Selection :=
  ⟨1, -2, 4, (1149/100), 158, -36, 478⟩
theorem selection1_0323_checked : selection1_0323.check profile0323 := by decide +kernel

noncomputable def selection2_0323 : Selection :=
  ⟨2, -10, 8, (283/25), 44, -28, 846⟩
theorem selection2_0323_checked : selection2_0323.check profile0323 := by decide +kernel

noncomputable def profile0324 : ProfileCell :=
  ⟨(7/61), (3/26),
    [5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨14, 7⟩, ⟨28, 11⟩, ⟨37, 12⟩, ⟨6, 6⟩, ⟨15, 7⟩, ⟨29, 11⟩, ⟨43, 18⟩, ⟨38, 12⟩, ⟨7, 6⟩, ⟨16, 7⟩, ⟨30, 11⟩, ⟨39, 12⟩, ⟨8, 6⟩, ⟨22, 10⟩, ⟨17, 7⟩, ⟨31, 11⟩, ⟨40, 12⟩, ⟨9, 6⟩, ⟨23, 10⟩, ⟨18, 7⟩, ⟨32, 11⟩, ⟨1, 5⟩, ⟨41, 12⟩, ⟨10, 6⟩, ⟨24, 10⟩, ⟨19, 7⟩, ⟨33, 11⟩, ⟨2, 5⟩, ⟨42, 12⟩, ⟨11, 6⟩, ⟨25, 10⟩, ⟨20, 7⟩, ⟨34, 11⟩, ⟨3, 5⟩, ⟨12, 6⟩, ⟨26, 10⟩, ⟨21, 7⟩, ⟨35, 11⟩, ⟨4, 5⟩, ⟨13, 6⟩, ⟨27, 10⟩, ⟨36, 11⟩, ⟨5, 5⟩]⟩
theorem profile0324_checked : profile0324.check := by decide +kernel

noncomputable def selection1_0324 : Selection :=
  ⟨1, -2, 4, (1169/100), 593, -64, 722⟩
theorem selection1_0324_checked : selection1_0324.check profile0324 := by decide +kernel

noncomputable def selection2_0324 : Selection :=
  ⟨2, -10, 8, (287/25), 162, -56, 1090⟩
theorem selection2_0324_checked : selection2_0324.check profile0324 := by decide +kernel

noncomputable def profile0325 : ProfileCell :=
  ⟨(3/26), (11/95),
    [6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2], [5, 5, 5, 5, 6],
    [⟨5, 6⟩, ⟨36, 12⟩, ⟨14, 7⟩, ⟨28, 11⟩, ⟨6, 6⟩, ⟨37, 12⟩, ⟨15, 7⟩, ⟨29, 11⟩, ⟨7, 6⟩, ⟨38, 12⟩, ⟨43, 18⟩, ⟨16, 7⟩, ⟨30, 11⟩, ⟨8, 6⟩, ⟨39, 12⟩, ⟨17, 7⟩, ⟨22, 10⟩, ⟨31, 11⟩, ⟨9, 6⟩, ⟨40, 12⟩, ⟨18, 7⟩, ⟨23, 10⟩, ⟨1, 5⟩, ⟨32, 11⟩, ⟨10, 6⟩, ⟨41, 12⟩, ⟨19, 7⟩, ⟨24, 10⟩, ⟨2, 5⟩, ⟨33, 11⟩, ⟨11, 6⟩, ⟨42, 12⟩, ⟨20, 7⟩, ⟨25, 10⟩, ⟨3, 5⟩, ⟨34, 11⟩, ⟨12, 6⟩, ⟨21, 7⟩, ⟨26, 10⟩, ⟨4, 5⟩, ⟨35, 11⟩, ⟨13, 6⟩, ⟨27, 10⟩]⟩
theorem profile0325_checked : profile0325.check := by decide +kernel

noncomputable def selection1_0325 : Selection :=
  ⟨1, -2, 4, (1187/100), 387, -91, 956⟩
theorem selection1_0325_checked : selection1_0325.check profile0325 := by decide +kernel

noncomputable def selection2_0325 : Selection :=
  ⟨2, -10, 8, (58/5), 105, -83, 1324⟩
theorem selection2_0325_checked : selection2_0325.check profile0325 := by decide +kernel

noncomputable def profile0326 : ProfileCell :=
  ⟨(11/95), (5/43),
    [6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2], [5, 5, 5, 5, 6],
    [⟨27, 11⟩, ⟨5, 6⟩, ⟨36, 12⟩, ⟨14, 7⟩, ⟨28, 11⟩, ⟨6, 6⟩, ⟨37, 12⟩, ⟨15, 7⟩, ⟨29, 11⟩, ⟨7, 6⟩, ⟨38, 12⟩, ⟨16, 7⟩, ⟨43, 18⟩, ⟨30, 11⟩, ⟨8, 6⟩, ⟨39, 12⟩, ⟨17, 7⟩, ⟨22, 10⟩, ⟨31, 11⟩, ⟨9, 6⟩, ⟨40, 12⟩, ⟨18, 7⟩, ⟨23, 10⟩, ⟨1, 5⟩, ⟨32, 11⟩, ⟨10, 6⟩, ⟨41, 12⟩, ⟨19, 7⟩, ⟨24, 10⟩, ⟨2, 5⟩, ⟨33, 11⟩, ⟨11, 6⟩, ⟨42, 12⟩, ⟨20, 7⟩, ⟨25, 10⟩, ⟨3, 5⟩, ⟨34, 11⟩, ⟨12, 6⟩, ⟨21, 7⟩, ⟨26, 10⟩, ⟨4, 5⟩, ⟨35, 11⟩, ⟨13, 6⟩]⟩
theorem profile0326_checked : profile0326.check := by decide +kernel

noncomputable def selection1_0326 : Selection :=
  ⟨1, -2, 4, (1199/100), 472, -47, 576⟩
theorem selection1_0326_checked : selection1_0326.check profile0326 := by decide +kernel

noncomputable def selection2_0326 : Selection :=
  ⟨2, -10, 8, (1171/100), 129, -39, 944⟩
theorem selection2_0326_checked : selection2_0326.check profile0326 := by decide +kernel

noncomputable def profile0327 : ProfileCell :=
  ⟨(5/43), (12/103),
    [6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2], [5, 5, 5, 5, 6],
    [⟨5, 6⟩, ⟨27, 11⟩, ⟨14, 7⟩, ⟨36, 12⟩, ⟨6, 6⟩, ⟨28, 11⟩, ⟨15, 7⟩, ⟨37, 12⟩, ⟨7, 6⟩, ⟨29, 11⟩, ⟨16, 7⟩, ⟨38, 12⟩, ⟨43, 18⟩, ⟨8, 6⟩, ⟨30, 11⟩, ⟨17, 7⟩, ⟨39, 12⟩, ⟨22, 10⟩, ⟨9, 6⟩, ⟨31, 11⟩, ⟨18, 7⟩, ⟨40, 12⟩, ⟨1, 5⟩, ⟨23, 10⟩, ⟨10, 6⟩, ⟨32, 11⟩, ⟨19, 7⟩, ⟨41, 12⟩, ⟨2, 5⟩, ⟨24, 10⟩, ⟨11, 6⟩, ⟨33, 11⟩, ⟨20, 7⟩, ⟨42, 12⟩, ⟨3, 5⟩, ⟨25, 10⟩, ⟨12, 6⟩, ⟨34, 11⟩, ⟨21, 7⟩, ⟨4, 5⟩, ⟨26, 10⟩, ⟨13, 6⟩, ⟨35, 11⟩]⟩
theorem profile0327_checked : profile0327.check := by decide +kernel

noncomputable def selection1_0327 : Selection :=
  ⟨1, -2, 4, (1207/100), 219, -67, 748⟩
theorem selection1_0327_checked : selection1_0327.check profile0327 := by decide +kernel

noncomputable def selection2_0327 : Selection :=
  ⟨2, -10, 8, (1177/100), 60, -59, 1116⟩
theorem selection2_0327_checked : selection2_0327.check profile0327 := by decide +kernel

noncomputable def profile0328 : ProfileCell :=
  ⟨(12/103), (7/60),
    [6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2], [5, 5, 5, 5, 6],
    [⟨35, 12⟩, ⟨5, 6⟩, ⟨27, 11⟩, ⟨14, 7⟩, ⟨36, 12⟩, ⟨6, 6⟩, ⟨28, 11⟩, ⟨15, 7⟩, ⟨37, 12⟩, ⟨7, 6⟩, ⟨29, 11⟩, ⟨16, 7⟩, ⟨38, 12⟩, ⟨8, 6⟩, ⟨43, 18⟩, ⟨30, 11⟩, ⟨17, 7⟩, ⟨39, 12⟩, ⟨22, 10⟩, ⟨9, 6⟩, ⟨31, 11⟩, ⟨18, 7⟩, ⟨40, 12⟩, ⟨1, 5⟩, ⟨23, 10⟩, ⟨10, 6⟩, ⟨32, 11⟩, ⟨19, 7⟩, ⟨41, 12⟩, ⟨2, 5⟩, ⟨24, 10⟩, ⟨11, 6⟩, ⟨33, 11⟩, ⟨20, 7⟩, ⟨42, 12⟩, ⟨3, 5⟩, ⟨25, 10⟩, ⟨12, 6⟩, ⟨34, 11⟩, ⟨21, 7⟩, ⟨4, 5⟩, ⟨26, 10⟩, ⟨13, 6⟩]⟩
theorem profile0328_checked : profile0328.check := by decide +kernel

noncomputable def selection1_0328 : Selection :=
  ⟨1, -2, 4, (302/25), 157, 5, 130⟩
theorem selection1_0328_checked : selection1_0328.check profile0328 := by decide +kernel

noncomputable def selection2_0328 : Selection :=
  ⟨2, -10, 8, (1179/100), 43, 13, 498⟩
theorem selection2_0328_checked : selection2_0328.check profile0328 := by decide +kernel

noncomputable def profile0329 : ProfileCell :=
  ⟨(7/60), (11/94),
    [6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2], [5, 5, 5, 5, 6],
    [⟨13, 7⟩, ⟨35, 12⟩, ⟨5, 6⟩, ⟨27, 11⟩, ⟨14, 7⟩, ⟨36, 12⟩, ⟨6, 6⟩, ⟨28, 11⟩, ⟨15, 7⟩, ⟨37, 12⟩, ⟨7, 6⟩, ⟨29, 11⟩, ⟨16, 7⟩, ⟨38, 12⟩, ⟨8, 6⟩, ⟨30, 11⟩, ⟨43, 18⟩, ⟨17, 7⟩, ⟨39, 12⟩, ⟨22, 10⟩, ⟨9, 6⟩, ⟨31, 11⟩, ⟨18, 7⟩, ⟨1, 5⟩, ⟨40, 12⟩, ⟨23, 10⟩, ⟨10, 6⟩, ⟨32, 11⟩, ⟨19, 7⟩, ⟨2, 5⟩, ⟨41, 12⟩, ⟨24, 10⟩, ⟨11, 6⟩, ⟨33, 11⟩, ⟨20, 7⟩, ⟨3, 5⟩, ⟨42, 12⟩, ⟨25, 10⟩, ⟨12, 6⟩, ⟨34, 11⟩, ⟨21, 7⟩, ⟨4, 5⟩, ⟨26, 10⟩]⟩
theorem profile0329_checked : profile0329.check := by decide +kernel

noncomputable def selection1_0329 : Selection :=
  ⟨1, -2, 4, (1219/100), 347, -58, 670⟩
theorem selection1_0329_checked : selection1_0329.check profile0329 := by decide +kernel

noncomputable def selection2_0329 : Selection :=
  ⟨2, -10, 8, (297/25), 95, -50, 1038⟩
theorem selection2_0329_checked : selection2_0329.check profile0329 := by decide +kernel

noncomputable def profile0330 : ProfileCell :=
  ⟨(11/94), (2/17),
    [6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2], [5, 5, 5, 5, 6],
    [⟨26, 11⟩, ⟨13, 7⟩, ⟨35, 12⟩, ⟨5, 6⟩, ⟨27, 11⟩, ⟨14, 7⟩, ⟨36, 12⟩, ⟨6, 6⟩, ⟨28, 11⟩, ⟨15, 7⟩, ⟨37, 12⟩, ⟨7, 6⟩, ⟨29, 11⟩, ⟨16, 7⟩, ⟨38, 12⟩, ⟨8, 6⟩, ⟨30, 11⟩, ⟨17, 7⟩, ⟨43, 18⟩, ⟨39, 12⟩, ⟨22, 10⟩, ⟨9, 6⟩, ⟨31, 11⟩, ⟨18, 7⟩, ⟨1, 5⟩, ⟨40, 12⟩, ⟨23, 10⟩, ⟨10, 6⟩, ⟨32, 11⟩, ⟨19, 7⟩, ⟨2, 5⟩, ⟨41, 12⟩, ⟨24, 10⟩, ⟨11, 6⟩, ⟨33, 11⟩, ⟨20, 7⟩, ⟨3, 5⟩, ⟨42, 12⟩, ⟨25, 10⟩, ⟨12, 6⟩, ⟨34, 11⟩, ⟨21, 7⟩, ⟨4, 5⟩]⟩
theorem profile0330_checked : profile0330.check := by decide +kernel

noncomputable def selection1_0330 : Selection :=
  ⟨1, -2, 4, (611/50), 613, 8, 106⟩
theorem selection1_0330_checked : selection1_0330.check profile0330 := by decide +kernel

noncomputable def selection2_0330 : Selection :=
  ⟨2, -10, 8, (239/20), 167, 16, 474⟩
theorem selection2_0330_checked : selection2_0330.check profile0330 := by decide +kernel

noncomputable def profile0331 : ProfileCell :=
  ⟨(2/17), (13/110),
    [6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 5, 6, 6],
    [⟨4, 6⟩, ⟨21, 8⟩, ⟨34, 12⟩, ⟨13, 7⟩, ⟨26, 11⟩, ⟨5, 6⟩, ⟨35, 12⟩, ⟨14, 7⟩, ⟨27, 11⟩, ⟨6, 6⟩, ⟨36, 12⟩, ⟨15, 7⟩, ⟨28, 11⟩, ⟨7, 6⟩, ⟨37, 12⟩, ⟨16, 7⟩, ⟨29, 11⟩, ⟨8, 6⟩, ⟨38, 12⟩, ⟨17, 7⟩, ⟨30, 11⟩, ⟨9, 6⟩, ⟨22, 10⟩, ⟨39, 12⟩, ⟨43, 18⟩, ⟨1, 5⟩, ⟨18, 7⟩, ⟨31, 11⟩, ⟨10, 6⟩, ⟨23, 10⟩, ⟨40, 12⟩, ⟨2, 5⟩, ⟨19, 7⟩, ⟨32, 11⟩, ⟨11, 6⟩, ⟨24, 10⟩, ⟨41, 12⟩, ⟨3, 5⟩, ⟨20, 7⟩, ⟨33, 11⟩, ⟨12, 6⟩, ⟨25, 10⟩, ⟨42, 12⟩]⟩
theorem profile0331_checked : profile0331.check := by decide +kernel

noncomputable def selection1_0331 : Selection :=
  ⟨1, -1, 4, (361/25), 618, -88, 922⟩
theorem selection1_0331_checked : selection1_0331.check profile0331 := by decide +kernel

noncomputable def selection2_0331 : Selection :=
  ⟨2, -9, 8, (1411/100), 169, -80, 1290⟩
theorem selection2_0331_checked : selection2_0331.check profile0331 := by decide +kernel

noncomputable def profile0332 : ProfileCell :=
  ⟨(13/110), (11/93),
    [6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 5, 6, 6],
    [⟨42, 13⟩, ⟨4, 6⟩, ⟨21, 8⟩, ⟨34, 12⟩, ⟨13, 7⟩, ⟨26, 11⟩, ⟨5, 6⟩, ⟨35, 12⟩, ⟨14, 7⟩, ⟨27, 11⟩, ⟨6, 6⟩, ⟨36, 12⟩, ⟨15, 7⟩, ⟨28, 11⟩, ⟨7, 6⟩, ⟨37, 12⟩, ⟨16, 7⟩, ⟨29, 11⟩, ⟨8, 6⟩, ⟨38, 12⟩, ⟨17, 7⟩, ⟨30, 11⟩, ⟨9, 6⟩, ⟨22, 10⟩, ⟨39, 12⟩, ⟨1, 5⟩, ⟨43, 18⟩, ⟨18, 7⟩, ⟨31, 11⟩, ⟨10, 6⟩, ⟨23, 10⟩, ⟨40, 12⟩, ⟨2, 5⟩, ⟨19, 7⟩, ⟨32, 11⟩, ⟨11, 6⟩, ⟨24, 10⟩, ⟨41, 12⟩, ⟨3, 5⟩, ⟨20, 7⟩, ⟨33, 11⟩, ⟨12, 6⟩, ⟨25, 10⟩]⟩
theorem profile0332_checked : profile0332.check := by decide +kernel

noncomputable def selection1_0332 : Selection :=
  ⟨1, -1, 4, (289/20), 113, -10, 262⟩
theorem selection1_0332_checked : selection1_0332.check profile0332 := by decide +kernel

noncomputable def selection2_0332 : Selection :=
  ⟨2, -9, 8, (1413/100), 31, -2, 630⟩
theorem selection2_0332_checked : selection2_0332.check profile0332 := by decide +kernel

noncomputable def profile0333 : ProfileCell :=
  ⟨(11/93), (7/59),
    [6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 5, 6, 6],
    [⟨25, 11⟩, ⟨42, 13⟩, ⟨4, 6⟩, ⟨21, 8⟩, ⟨34, 12⟩, ⟨13, 7⟩, ⟨26, 11⟩, ⟨5, 6⟩, ⟨35, 12⟩, ⟨14, 7⟩, ⟨27, 11⟩, ⟨6, 6⟩, ⟨36, 12⟩, ⟨15, 7⟩, ⟨28, 11⟩, ⟨7, 6⟩, ⟨37, 12⟩, ⟨16, 7⟩, ⟨29, 11⟩, ⟨8, 6⟩, ⟨38, 12⟩, ⟨17, 7⟩, ⟨30, 11⟩, ⟨9, 6⟩, ⟨22, 10⟩, ⟨39, 12⟩, ⟨1, 5⟩, ⟨18, 7⟩, ⟨43, 18⟩, ⟨31, 11⟩, ⟨10, 6⟩, ⟨23, 10⟩, ⟨40, 12⟩, ⟨2, 5⟩, ⟨19, 7⟩, ⟨32, 11⟩, ⟨11, 6⟩, ⟨24, 10⟩, ⟨41, 12⟩, ⟨3, 5⟩, ⟨20, 7⟩, ⟨33, 11⟩, ⟨12, 6⟩]⟩
theorem profile0333_checked : profile0333.check := by decide +kernel

noncomputable def selection1_0333 : Selection :=
  ⟨1, -1, 4, (289/20), 422, 34, -110⟩
theorem selection1_0333_checked : selection1_0333.check profile0333 := by decide +kernel

noncomputable def selection2_0333 : Selection :=
  ⟨2, -9, 8, (283/20), 115, 42, 258⟩
theorem selection2_0333_checked : selection2_0333.check profile0333 := by decide +kernel

noncomputable def profile0334 : ProfileCell :=
  ⟨(7/59), (12/101),
    [6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 5, 6, 6],
    [⟨12, 7⟩, ⟨25, 11⟩, ⟨4, 6⟩, ⟨42, 13⟩, ⟨21, 8⟩, ⟨34, 12⟩, ⟨13, 7⟩, ⟨26, 11⟩, ⟨5, 6⟩, ⟨35, 12⟩, ⟨14, 7⟩, ⟨27, 11⟩, ⟨6, 6⟩, ⟨36, 12⟩, ⟨15, 7⟩, ⟨28, 11⟩, ⟨7, 6⟩, ⟨37, 12⟩, ⟨16, 7⟩, ⟨29, 11⟩, ⟨8, 6⟩, ⟨38, 12⟩, ⟨17, 7⟩, ⟨30, 11⟩, ⟨9, 6⟩, ⟨22, 10⟩, ⟨1, 5⟩, ⟨39, 12⟩, ⟨18, 7⟩, ⟨31, 11⟩, ⟨43, 18⟩, ⟨10, 6⟩, ⟨23, 10⟩, ⟨2, 5⟩, ⟨40, 12⟩, ⟨19, 7⟩, ⟨32, 11⟩, ⟨11, 6⟩, ⟨24, 10⟩, ⟨3, 5⟩, ⟨41, 12⟩, ⟨20, 7⟩, ⟨33, 11⟩]⟩
theorem profile0334_checked : profile0334.check := by decide +kernel

noncomputable def selection1_0334 : Selection :=
  ⟨1, -1, 4, (289/20), 194, -8, 244⟩
theorem selection1_0334_checked : selection1_0334.check profile0334 := by decide +kernel

noncomputable def selection2_0334 : Selection :=
  ⟨2, -9, 8, (1417/100), 53, 0, 612⟩
theorem selection2_0334_checked : selection2_0334.check profile0334 := by decide +kernel

noncomputable def profile0335 : ProfileCell :=
  ⟨(12/101), (5/42),
    [6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 5, 6, 6],
    [⟨33, 12⟩, ⟨12, 7⟩, ⟨25, 11⟩, ⟨4, 6⟩, ⟨42, 13⟩, ⟨21, 8⟩, ⟨34, 12⟩, ⟨13, 7⟩, ⟨26, 11⟩, ⟨5, 6⟩, ⟨35, 12⟩, ⟨14, 7⟩, ⟨27, 11⟩, ⟨6, 6⟩, ⟨36, 12⟩, ⟨15, 7⟩, ⟨28, 11⟩, ⟨7, 6⟩, ⟨37, 12⟩, ⟨16, 7⟩, ⟨29, 11⟩, ⟨8, 6⟩, ⟨38, 12⟩, ⟨17, 7⟩, ⟨30, 11⟩, ⟨9, 6⟩, ⟨22, 10⟩, ⟨1, 5⟩, ⟨39, 12⟩, ⟨18, 7⟩, ⟨31, 11⟩, ⟨10, 6⟩, ⟨43, 18⟩, ⟨23, 10⟩, ⟨2, 5⟩, ⟨40, 12⟩, ⟨19, 7⟩, ⟨32, 11⟩, ⟨11, 6⟩, ⟨24, 10⟩, ⟨3, 5⟩, ⟨41, 12⟩, ⟨20, 7⟩]⟩
theorem profile0335_checked : profile0335.check := by decide +kernel

noncomputable def selection1_0335 : Selection :=
  ⟨1, -1, 4, (289/20), 273, 40, -160⟩
theorem selection1_0335_checked : selection1_0335.check profile0335 := by decide +kernel

noncomputable def selection2_0335 : Selection :=
  ⟨2, -9, 8, (709/50), 75, 48, 208⟩
theorem selection2_0335_checked : selection2_0335.check profile0335 := by decide +kernel

noncomputable def profile0336 : ProfileCell :=
  ⟨(5/42), (13/109),
    [6, 5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 5, 6, 6],
    [⟨12, 7⟩, ⟨33, 12⟩, ⟨4, 6⟩, ⟨25, 11⟩, ⟨21, 8⟩, ⟨42, 13⟩, ⟨13, 7⟩, ⟨34, 12⟩, ⟨5, 6⟩, ⟨26, 11⟩, ⟨14, 7⟩, ⟨35, 12⟩, ⟨6, 6⟩, ⟨27, 11⟩, ⟨15, 7⟩, ⟨36, 12⟩, ⟨7, 6⟩, ⟨28, 11⟩, ⟨16, 7⟩, ⟨37, 12⟩, ⟨8, 6⟩, ⟨29, 11⟩, ⟨17, 7⟩, ⟨38, 12⟩, ⟨9, 6⟩, ⟨30, 11⟩, ⟨1, 5⟩, ⟨22, 10⟩, ⟨18, 7⟩, ⟨39, 12⟩, ⟨10, 6⟩, ⟨31, 11⟩, ⟨43, 18⟩, ⟨2, 5⟩, ⟨23, 10⟩, ⟨19, 7⟩, ⟨40, 12⟩, ⟨11, 6⟩, ⟨32, 11⟩, ⟨3, 5⟩, ⟨24, 10⟩, ⟨20, 7⟩, ⟨41, 12⟩]⟩
theorem profile0336_checked : profile0336.check := by decide +kernel

noncomputable def selection1_0336 : Selection :=
  ⟨1, -2, 4, (311/25), 217, 15, 50⟩
theorem selection1_0336_checked : selection1_0336.check profile0336 := by decide +kernel

noncomputable def selection2_0336 : Selection :=
  ⟨2, -10, 8, (1221/100), 60, 23, 418⟩
theorem selection2_0336_checked : selection2_0336.check profile0336 := by decide +kernel

noncomputable def profile0337 : ProfileCell :=
  ⟨(13/109), (8/67),
    [6, 5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 5, 6, 6],
    [⟨41, 13⟩, ⟨12, 7⟩, ⟨33, 12⟩, ⟨4, 6⟩, ⟨25, 11⟩, ⟨21, 8⟩, ⟨42, 13⟩, ⟨13, 7⟩, ⟨34, 12⟩, ⟨5, 6⟩, ⟨26, 11⟩, ⟨14, 7⟩, ⟨35, 12⟩, ⟨6, 6⟩, ⟨27, 11⟩, ⟨15, 7⟩, ⟨36, 12⟩, ⟨7, 6⟩, ⟨28, 11⟩, ⟨16, 7⟩, ⟨37, 12⟩, ⟨8, 6⟩, ⟨29, 11⟩, ⟨17, 7⟩, ⟨38, 12⟩, ⟨9, 6⟩, ⟨30, 11⟩, ⟨1, 5⟩, ⟨22, 10⟩, ⟨18, 7⟩, ⟨39, 12⟩, ⟨10, 6⟩, ⟨31, 11⟩, ⟨2, 5⟩, ⟨43, 18⟩, ⟨23, 10⟩, ⟨19, 7⟩, ⟨40, 12⟩, ⟨11, 6⟩, ⟨32, 11⟩, ⟨3, 5⟩, ⟨24, 10⟩, ⟨20, 7⟩]⟩
theorem profile0337_checked : profile0337.check := by decide +kernel

noncomputable def selection1_0337 : Selection :=
  ⟨1, -2, 4, (311/25), 136, 93, -604⟩
theorem selection1_0337_checked : selection1_0337.check profile0337 := by decide +kernel

noncomputable def selection2_0337 : Selection :=
  ⟨2, -10, 8, (1221/100), 38, 101, -236⟩
theorem selection2_0337_checked : selection2_0337.check profile0337 := by decide +kernel

noncomputable def profile0338 : ProfileCell :=
  ⟨(8/67), (11/92),
    [6, 5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 5, 6, 6],
    [⟨20, 8⟩, ⟨41, 13⟩, ⟨12, 7⟩, ⟨33, 12⟩, ⟨4, 6⟩, ⟨25, 11⟩, ⟨21, 8⟩, ⟨42, 13⟩, ⟨13, 7⟩, ⟨34, 12⟩, ⟨5, 6⟩, ⟨26, 11⟩, ⟨14, 7⟩, ⟨35, 12⟩, ⟨6, 6⟩, ⟨27, 11⟩, ⟨15, 7⟩, ⟨36, 12⟩, ⟨7, 6⟩, ⟨28, 11⟩, ⟨16, 7⟩, ⟨37, 12⟩, ⟨8, 6⟩, ⟨29, 11⟩, ⟨17, 7⟩, ⟨38, 12⟩, ⟨9, 6⟩, ⟨30, 11⟩, ⟨1, 5⟩, ⟨22, 10⟩, ⟨18, 7⟩, ⟨39, 12⟩, ⟨10, 6⟩, ⟨31, 11⟩, ⟨2, 5⟩, ⟨23, 10⟩, ⟨43, 18⟩, ⟨19, 7⟩, ⟨40, 12⟩, ⟨11, 6⟩, ⟨32, 11⟩, ⟨3, 5⟩, ⟨24, 10⟩]⟩
theorem profile0338_checked : profile0338.check := by decide +kernel

noncomputable def selection1_0338 : Selection :=
  ⟨1, -2, 4, (62/5), 161, 45, -202⟩
theorem selection1_0338_checked : selection1_0338.check profile0338 := by decide +kernel

noncomputable def selection2_0338 : Selection :=
  ⟨2, -10, 8, (61/5), 45, 53, 166⟩
theorem selection2_0338_checked : selection2_0338.check profile0338 := by decide +kernel

noncomputable def profile0339 : ProfileCell :=
  ⟨(11/92), (3/25),
    [6, 5, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 5, 6, 6],
    [⟨24, 11⟩, ⟨20, 8⟩, ⟨41, 13⟩, ⟨12, 7⟩, ⟨33, 12⟩, ⟨4, 6⟩, ⟨25, 11⟩, ⟨21, 8⟩, ⟨42, 13⟩, ⟨13, 7⟩, ⟨34, 12⟩, ⟨5, 6⟩, ⟨26, 11⟩, ⟨14, 7⟩, ⟨35, 12⟩, ⟨6, 6⟩, ⟨27, 11⟩, ⟨15, 7⟩, ⟨36, 12⟩, ⟨7, 6⟩, ⟨28, 11⟩, ⟨16, 7⟩, ⟨37, 12⟩, ⟨8, 6⟩, ⟨29, 11⟩, ⟨17, 7⟩, ⟨38, 12⟩, ⟨9, 6⟩, ⟨30, 11⟩, ⟨1, 5⟩, ⟨22, 10⟩, ⟨18, 7⟩, ⟨39, 12⟩, ⟨10, 6⟩, ⟨31, 11⟩, ⟨2, 5⟩, ⟨23, 10⟩, ⟨19, 7⟩, ⟨43, 18⟩, ⟨40, 12⟩, ⟨11, 6⟩, ⟨32, 11⟩, ⟨3, 5⟩]⟩
theorem profile0339_checked : profile0339.check := by decide +kernel

noncomputable def selection1_0339 : Selection :=
  ⟨1, -2, 4, (619/50), 430, 111, -754⟩
theorem selection1_0339_checked : selection1_0339.check profile0339 := by decide +kernel

noncomputable def selection2_0339 : Selection :=
  ⟨2, -10, 8, (61/5), 119, 119, -386⟩
theorem selection2_0339_checked : selection2_0339.check profile0339 := by decide +kernel

noncomputable def profile0340 : ProfileCell :=
  ⟨(3/25), (19/158),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 6, 6, 6],
    [⟨3, 6⟩, ⟨32, 12⟩, ⟨20, 8⟩, ⟨24, 11⟩, ⟨12, 7⟩, ⟨41, 13⟩, ⟨4, 6⟩, ⟨33, 12⟩, ⟨21, 8⟩, ⟨25, 11⟩, ⟨13, 7⟩, ⟨42, 13⟩, ⟨5, 6⟩, ⟨34, 12⟩, ⟨26, 11⟩, ⟨14, 7⟩, ⟨6, 6⟩, ⟨35, 12⟩, ⟨27, 11⟩, ⟨15, 7⟩, ⟨7, 6⟩, ⟨36, 12⟩, ⟨28, 11⟩, ⟨16, 7⟩, ⟨8, 6⟩, ⟨37, 12⟩, ⟨29, 11⟩, ⟨17, 7⟩, ⟨9, 6⟩, ⟨38, 12⟩, ⟨1, 5⟩, ⟨30, 11⟩, ⟨18, 7⟩, ⟨22, 10⟩, ⟨10, 6⟩, ⟨39, 12⟩, ⟨2, 5⟩, ⟨31, 11⟩, ⟨19, 7⟩, ⟨23, 10⟩, ⟨11, 6⟩, ⟨40, 12⟩, ⟨43, 18⟩]⟩
theorem profile0340_checked : profile0340.check := by decide +kernel

noncomputable def selection1_0340 : Selection :=
  ⟨1, -1, 4, (356/25), 288, 57, -304⟩
theorem selection1_0340_checked : selection1_0340.check profile0340 := by decide +kernel

noncomputable def selection2_0340 : Selection :=
  ⟨2, -9, 8, (1417/100), 80, 65, 64⟩
theorem selection2_0340_checked : selection2_0340.check profile0340 := by decide +kernel

noncomputable def profile0341 : ProfileCell :=
  ⟨(19/158), (13/108),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 6, 6, 6],
    [⟨43, 19⟩, ⟨3, 6⟩, ⟨32, 12⟩, ⟨20, 8⟩, ⟨24, 11⟩, ⟨12, 7⟩, ⟨41, 13⟩, ⟨4, 6⟩, ⟨33, 12⟩, ⟨21, 8⟩, ⟨25, 11⟩, ⟨13, 7⟩, ⟨42, 13⟩, ⟨5, 6⟩, ⟨34, 12⟩, ⟨26, 11⟩, ⟨14, 7⟩, ⟨6, 6⟩, ⟨35, 12⟩, ⟨27, 11⟩, ⟨15, 7⟩, ⟨7, 6⟩, ⟨36, 12⟩, ⟨28, 11⟩, ⟨16, 7⟩, ⟨8, 6⟩, ⟨37, 12⟩, ⟨29, 11⟩, ⟨17, 7⟩, ⟨9, 6⟩, ⟨38, 12⟩, ⟨1, 5⟩, ⟨30, 11⟩, ⟨18, 7⟩, ⟨22, 10⟩, ⟨10, 6⟩, ⟨39, 12⟩, ⟨2, 5⟩, ⟨31, 11⟩, ⟨19, 7⟩, ⟨23, 10⟩, ⟨11, 6⟩, ⟨40, 12⟩]⟩
theorem profile0341_checked : profile0341.check := by decide +kernel

noncomputable def selection1_0341 : Selection :=
  ⟨1, -1, 4, (1429/100), 134, -190, 1750⟩
theorem selection1_0341_checked : selection1_0341.check profile0341 := by decide +kernel

noncomputable def selection2_0341 : Selection :=
  ⟨2, -9, 8, (1423/100), 38, -182, 2118⟩
theorem selection2_0341_checked : selection2_0341.check profile0341 := by decide +kernel

noncomputable def profile0342 : ProfileCell :=
  ⟨(13/108), (7/58),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 6, 6, 6],
    [⟨40, 13⟩, ⟨3, 6⟩, ⟨43, 19⟩, ⟨32, 12⟩, ⟨20, 8⟩, ⟨24, 11⟩, ⟨12, 7⟩, ⟨41, 13⟩, ⟨4, 6⟩, ⟨33, 12⟩, ⟨21, 8⟩, ⟨25, 11⟩, ⟨13, 7⟩, ⟨42, 13⟩, ⟨5, 6⟩, ⟨34, 12⟩, ⟨26, 11⟩, ⟨14, 7⟩, ⟨6, 6⟩, ⟨35, 12⟩, ⟨27, 11⟩, ⟨15, 7⟩, ⟨7, 6⟩, ⟨36, 12⟩, ⟨28, 11⟩, ⟨16, 7⟩, ⟨8, 6⟩, ⟨37, 12⟩, ⟨29, 11⟩, ⟨17, 7⟩, ⟨9, 6⟩, ⟨38, 12⟩, ⟨1, 5⟩, ⟨30, 11⟩, ⟨18, 7⟩, ⟨22, 10⟩, ⟨10, 6⟩, ⟨39, 12⟩, ⟨2, 5⟩, ⟨31, 11⟩, ⟨19, 7⟩, ⟨23, 10⟩, ⟨11, 6⟩]⟩
theorem profile0342_checked : profile0342.check := by decide +kernel

noncomputable def selection1_0342 : Selection :=
  ⟨1, -1, 4, (289/20), 368, -112, 1102⟩
theorem selection1_0342_checked : selection1_0342.check profile0342 := by decide +kernel

noncomputable def selection2_0342 : Selection :=
  ⟨2, -9, 8, (717/50), 102, -104, 1470⟩
theorem selection2_0342_checked : selection2_0342.check profile0342 := by decide +kernel

noncomputable def profile0343 : ProfileCell :=
  ⟨(7/58), (11/91),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 6, 6, 6],
    [⟨11, 7⟩, ⟨3, 6⟩, ⟨40, 13⟩, ⟨32, 12⟩, ⟨43, 19⟩, ⟨20, 8⟩, ⟨24, 11⟩, ⟨12, 7⟩, ⟨4, 6⟩, ⟨41, 13⟩, ⟨33, 12⟩, ⟨21, 8⟩, ⟨25, 11⟩, ⟨13, 7⟩, ⟨5, 6⟩, ⟨42, 13⟩, ⟨34, 12⟩, ⟨26, 11⟩, ⟨14, 7⟩, ⟨6, 6⟩, ⟨35, 12⟩, ⟨27, 11⟩, ⟨15, 7⟩, ⟨7, 6⟩, ⟨36, 12⟩, ⟨28, 11⟩, ⟨16, 7⟩, ⟨8, 6⟩, ⟨37, 12⟩, ⟨29, 11⟩, ⟨17, 7⟩, ⟨9, 6⟩, ⟨1, 5⟩, ⟨38, 12⟩, ⟨30, 11⟩, ⟨18, 7⟩, ⟨22, 10⟩, ⟨10, 6⟩, ⟨2, 5⟩, ⟨39, 12⟩, ⟨31, 11⟩, ⟨19, 7⟩, ⟨23, 10⟩]⟩
theorem profile0343_checked : profile0343.check := by decide +kernel

noncomputable def selection1_0343 : Selection :=
  ⟨1, -1, 4, (729/50), 220, -161, 1508⟩
theorem selection1_0343_checked : selection1_0343.check profile0343 := by decide +kernel

noncomputable def selection2_0343 : Selection :=
  ⟨2, -9, 8, (721/50), 61, -153, 1876⟩
theorem selection2_0343_checked : selection2_0343.check profile0343 := by decide +kernel

noncomputable def profile0344 : ProfileCell :=
  ⟨(11/91), (4/33),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 6, 6, 6],
    [⟨23, 11⟩, ⟨11, 7⟩, ⟨3, 6⟩, ⟨40, 13⟩, ⟨32, 12⟩, ⟨20, 8⟩, ⟨43, 19⟩, ⟨24, 11⟩, ⟨12, 7⟩, ⟨4, 6⟩, ⟨41, 13⟩, ⟨33, 12⟩, ⟨21, 8⟩, ⟨25, 11⟩, ⟨13, 7⟩, ⟨5, 6⟩, ⟨42, 13⟩, ⟨34, 12⟩, ⟨26, 11⟩, ⟨14, 7⟩, ⟨6, 6⟩, ⟨35, 12⟩, ⟨27, 11⟩, ⟨15, 7⟩, ⟨7, 6⟩, ⟨36, 12⟩, ⟨28, 11⟩, ⟨16, 7⟩, ⟨8, 6⟩, ⟨37, 12⟩, ⟨29, 11⟩, ⟨17, 7⟩, ⟨9, 6⟩, ⟨1, 5⟩, ⟨38, 12⟩, ⟨30, 11⟩, ⟨18, 7⟩, ⟨22, 10⟩, ⟨10, 6⟩, ⟨2, 5⟩, ⟨39, 12⟩, ⟨31, 11⟩, ⟨19, 7⟩]⟩
theorem profile0344_checked : profile0344.check := by decide +kernel

noncomputable def selection1_0344 : Selection :=
  ⟨1, -1, 4, (368/25), 391, -95, 962⟩
theorem selection1_0344_checked : selection1_0344.check profile0344 := by decide +kernel

noncomputable def selection2_0344 : Selection :=
  ⟨2, -9, 8, (1453/100), 108, -87, 1330⟩
theorem selection2_0344_checked : selection2_0344.check profile0344 := by decide +kernel

noncomputable def profile0345 : ProfileCell :=
  ⟨(4/33), (13/107),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 6, 6, 6],
    [⟨19, 8⟩, ⟨31, 12⟩, ⟨11, 7⟩, ⟨23, 11⟩, ⟨3, 6⟩, ⟨40, 13⟩, ⟨20, 8⟩, ⟨32, 12⟩, ⟨12, 7⟩, ⟨24, 11⟩, ⟨43, 19⟩, ⟨4, 6⟩, ⟨41, 13⟩, ⟨21, 8⟩, ⟨33, 12⟩, ⟨13, 7⟩, ⟨25, 11⟩, ⟨5, 6⟩, ⟨42, 13⟩, ⟨34, 12⟩, ⟨14, 7⟩, ⟨26, 11⟩, ⟨6, 6⟩, ⟨35, 12⟩, ⟨15, 7⟩, ⟨27, 11⟩, ⟨7, 6⟩, ⟨36, 12⟩, ⟨16, 7⟩, ⟨28, 11⟩, ⟨8, 6⟩, ⟨37, 12⟩, ⟨17, 7⟩, ⟨29, 11⟩, ⟨9, 6⟩, ⟨1, 5⟩, ⟨38, 12⟩, ⟨18, 7⟩, ⟨30, 11⟩, ⟨10, 6⟩, ⟨22, 10⟩, ⟨2, 5⟩, ⟨39, 12⟩]⟩
theorem profile0345_checked : profile0345.check := by decide +kernel

noncomputable def selection1_0345 : Selection :=
  ⟨1, -1, 4, (297/20), 335, -103, 1028⟩
theorem selection1_0345_checked : selection1_0345.check profile0345 := by decide +kernel

noncomputable def selection2_0345 : Selection :=
  ⟨2, -9, 8, (731/50), 93, -95, 1396⟩
theorem selection2_0345_checked : selection2_0345.check profile0345 := by decide +kernel

noncomputable def profile0346 : ProfileCell :=
  ⟨(13/107), (5/41),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 6, 6, 6],
    [⟨39, 13⟩, ⟨19, 8⟩, ⟨31, 12⟩, ⟨11, 7⟩, ⟨23, 11⟩, ⟨3, 6⟩, ⟨40, 13⟩, ⟨20, 8⟩, ⟨32, 12⟩, ⟨12, 7⟩, ⟨24, 11⟩, ⟨4, 6⟩, ⟨43, 19⟩, ⟨41, 13⟩, ⟨21, 8⟩, ⟨33, 12⟩, ⟨13, 7⟩, ⟨25, 11⟩, ⟨5, 6⟩, ⟨42, 13⟩, ⟨34, 12⟩, ⟨14, 7⟩, ⟨26, 11⟩, ⟨6, 6⟩, ⟨35, 12⟩, ⟨15, 7⟩, ⟨27, 11⟩, ⟨7, 6⟩, ⟨36, 12⟩, ⟨16, 7⟩, ⟨28, 11⟩, ⟨8, 6⟩, ⟨37, 12⟩, ⟨17, 7⟩, ⟨29, 11⟩, ⟨9, 6⟩, ⟨1, 5⟩, ⟨38, 12⟩, ⟨18, 7⟩, ⟨30, 11⟩, ⟨10, 6⟩, ⟨22, 10⟩, ⟨2, 5⟩]⟩
theorem profile0346_checked : profile0346.check := by decide +kernel

noncomputable def selection1_0346 : Selection :=
  ⟨1, -1, 4, (1497/100), 543, -51, 600⟩
theorem selection1_0346_checked : selection1_0346.check profile0346 := by decide +kernel

noncomputable def selection2_0346 : Selection :=
  ⟨2, -9, 8, (368/25), 150, -43, 968⟩
theorem selection2_0346_checked : selection2_0346.check profile0346 := by decide +kernel

noncomputable def profile0347 : ProfileCell :=
  ⟨(5/41), (11/90),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 6, 6, 6],
    [⟨19, 8⟩, ⟨39, 13⟩, ⟨11, 7⟩, ⟨31, 12⟩, ⟨3, 6⟩, ⟨23, 11⟩, ⟨20, 8⟩, ⟨40, 13⟩, ⟨12, 7⟩, ⟨32, 12⟩, ⟨4, 6⟩, ⟨24, 11⟩, ⟨43, 19⟩, ⟨21, 8⟩, ⟨41, 13⟩, ⟨13, 7⟩, ⟨33, 12⟩, ⟨5, 6⟩, ⟨25, 11⟩, ⟨42, 13⟩, ⟨14, 7⟩, ⟨34, 12⟩, ⟨6, 6⟩, ⟨26, 11⟩, ⟨15, 7⟩, ⟨35, 12⟩, ⟨7, 6⟩, ⟨27, 11⟩, ⟨16, 7⟩, ⟨36, 12⟩, ⟨8, 6⟩, ⟨28, 11⟩, ⟨17, 7⟩, ⟨37, 12⟩, ⟨9, 6⟩, ⟨29, 11⟩, ⟨1, 5⟩, ⟨18, 7⟩, ⟨38, 12⟩, ⟨10, 6⟩, ⟨30, 11⟩, ⟨2, 5⟩, ⟨22, 10⟩]⟩
theorem profile0347_checked : profile0347.check := by decide +kernel

noncomputable def selection1_0347 : Selection :=
  ⟨1, -1, 4, (1507/100), 325, -81, 846⟩
theorem selection1_0347_checked : selection1_0347.check profile0347 := by decide +kernel

noncomputable def selection2_0347 : Selection :=
  ⟨2, -9, 8, (74/5), 90, -73, 1214⟩
theorem selection2_0347_checked : selection2_0347.check profile0347 := by decide +kernel

noncomputable def profile0348 : ProfileCell :=
  ⟨(11/90), (6/49),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 5, 6, 6, 6],
    [⟨22, 11⟩, ⟨19, 8⟩, ⟨39, 13⟩, ⟨11, 7⟩, ⟨31, 12⟩, ⟨3, 6⟩, ⟨23, 11⟩, ⟨20, 8⟩, ⟨40, 13⟩, ⟨12, 7⟩, ⟨32, 12⟩, ⟨4, 6⟩, ⟨24, 11⟩, ⟨21, 8⟩, ⟨43, 19⟩, ⟨41, 13⟩, ⟨13, 7⟩, ⟨33, 12⟩, ⟨5, 6⟩, ⟨25, 11⟩, ⟨42, 13⟩, ⟨14, 7⟩, ⟨34, 12⟩, ⟨6, 6⟩, ⟨26, 11⟩, ⟨15, 7⟩, ⟨35, 12⟩, ⟨7, 6⟩, ⟨27, 11⟩, ⟨16, 7⟩, ⟨36, 12⟩, ⟨8, 6⟩, ⟨28, 11⟩, ⟨17, 7⟩, ⟨37, 12⟩, ⟨9, 6⟩, ⟨29, 11⟩, ⟨1, 5⟩, ⟨18, 7⟩, ⟨38, 12⟩, ⟨10, 6⟩, ⟨30, 11⟩, ⟨2, 5⟩]⟩
theorem profile0348_checked : profile0348.check := by decide +kernel

noncomputable def selection1_0348 : Selection :=
  ⟨1, -1, 4, (151/10), 272, -15, 306⟩
theorem selection1_0348_checked : selection1_0348.check profile0348 := by decide +kernel

noncomputable def selection2_0348 : Selection :=
  ⟨2, -9, 8, (371/25), 75, -7, 674⟩
theorem selection2_0348_checked : selection2_0348.check profile0348 := by decide +kernel

noncomputable def profile0349 : ProfileCell :=
  ⟨(6/49), (13/106),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 6, 6, 6, 6],
    [⟨2, 6⟩, ⟨30, 12⟩, ⟨22, 11⟩, ⟨19, 8⟩, ⟨11, 7⟩, ⟨39, 13⟩, ⟨3, 6⟩, ⟨31, 12⟩, ⟨23, 11⟩, ⟨20, 8⟩, ⟨12, 7⟩, ⟨40, 13⟩, ⟨4, 6⟩, ⟨32, 12⟩, ⟨24, 11⟩, ⟨21, 8⟩, ⟨13, 7⟩, ⟨41, 13⟩, ⟨43, 19⟩, ⟨5, 6⟩, ⟨33, 12⟩, ⟨25, 11⟩, ⟨14, 7⟩, ⟨42, 13⟩, ⟨6, 6⟩, ⟨34, 12⟩, ⟨26, 11⟩, ⟨15, 7⟩, ⟨7, 6⟩, ⟨35, 12⟩, ⟨27, 11⟩, ⟨16, 7⟩, ⟨8, 6⟩, ⟨36, 12⟩, ⟨28, 11⟩, ⟨17, 7⟩, ⟨9, 6⟩, ⟨37, 12⟩, ⟨1, 5⟩, ⟨29, 11⟩, ⟨18, 7⟩, ⟨10, 6⟩, ⟨38, 12⟩]⟩
theorem profile0349_checked : profile0349.check := by decide +kernel

noncomputable def selection1_0349 : Selection :=
  ⟨1, 1, 4, (479/25), 293, -51, 600⟩
theorem selection1_0349_checked : selection1_0349.check profile0349 := by decide +kernel

noncomputable def selection2_0349 : Selection :=
  ⟨2, -7, 8, (472/25), 81, -43, 968⟩
theorem selection2_0349_checked : selection2_0349.check profile0349 := by decide +kernel

noncomputable def profile0350 : ProfileCell :=
  ⟨(13/106), (7/57),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 6, 6, 6, 6],
    [⟨38, 13⟩, ⟨2, 6⟩, ⟨30, 12⟩, ⟨22, 11⟩, ⟨19, 8⟩, ⟨11, 7⟩, ⟨39, 13⟩, ⟨3, 6⟩, ⟨31, 12⟩, ⟨23, 11⟩, ⟨20, 8⟩, ⟨12, 7⟩, ⟨40, 13⟩, ⟨4, 6⟩, ⟨32, 12⟩, ⟨24, 11⟩, ⟨21, 8⟩, ⟨13, 7⟩, ⟨41, 13⟩, ⟨5, 6⟩, ⟨43, 19⟩, ⟨33, 12⟩, ⟨25, 11⟩, ⟨14, 7⟩, ⟨42, 13⟩, ⟨6, 6⟩, ⟨34, 12⟩, ⟨26, 11⟩, ⟨15, 7⟩, ⟨7, 6⟩, ⟨35, 12⟩, ⟨27, 11⟩, ⟨16, 7⟩, ⟨8, 6⟩, ⟨36, 12⟩, ⟨28, 11⟩, ⟨17, 7⟩, ⟨9, 6⟩, ⟨37, 12⟩, ⟨1, 5⟩, ⟨29, 11⟩, ⟨18, 7⟩, ⟨10, 6⟩]⟩
theorem profile0350_checked : profile0350.check := by decide +kernel

noncomputable def selection1_0350 : Selection :=
  ⟨1, 1, 4, (1917/100), 252, 1, 176⟩
theorem selection1_0350_checked : selection1_0350.check profile0350 := by decide +kernel

noncomputable def selection2_0350 : Selection :=
  ⟨2, -7, 8, (189/10), 70, 9, 544⟩
theorem selection2_0350_checked : selection2_0350.check profile0350 := by decide +kernel

noncomputable def profile0351 : ProfileCell :=
  ⟨(7/57), (8/65),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 6, 6, 6, 6],
    [⟨10, 7⟩, ⟨2, 6⟩, ⟨38, 13⟩, ⟨30, 12⟩, ⟨22, 11⟩, ⟨19, 8⟩, ⟨11, 7⟩, ⟨3, 6⟩, ⟨39, 13⟩, ⟨31, 12⟩, ⟨23, 11⟩, ⟨20, 8⟩, ⟨12, 7⟩, ⟨4, 6⟩, ⟨40, 13⟩, ⟨32, 12⟩, ⟨24, 11⟩, ⟨21, 8⟩, ⟨13, 7⟩, ⟨5, 6⟩, ⟨41, 13⟩, ⟨33, 12⟩, ⟨43, 19⟩, ⟨25, 11⟩, ⟨14, 7⟩, ⟨6, 6⟩, ⟨42, 13⟩, ⟨34, 12⟩, ⟨26, 11⟩, ⟨15, 7⟩, ⟨7, 6⟩, ⟨35, 12⟩, ⟨27, 11⟩, ⟨16, 7⟩, ⟨8, 6⟩, ⟨36, 12⟩, ⟨28, 11⟩, ⟨17, 7⟩, ⟨9, 6⟩, ⟨1, 5⟩, ⟨37, 12⟩, ⟨29, 11⟩, ⟨18, 7⟩]⟩
theorem profile0351_checked : profile0351.check := by decide +kernel

noncomputable def selection1_0351 : Selection :=
  ⟨1, 1, 4, (961/50), 412, -27, 404⟩
theorem selection1_0351_checked : selection1_0351.check profile0351 := by decide +kernel

noncomputable def selection2_0351 : Selection :=
  ⟨2, -7, 8, (379/20), 114, -19, 772⟩
theorem selection2_0351_checked : selection2_0351.check profile0351 := by decide +kernel

noncomputable def profile0352 : ProfileCell :=
  ⟨(8/65), (12/97),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 6, 6, 6, 6],
    [⟨18, 8⟩, ⟨10, 7⟩, ⟨2, 6⟩, ⟨38, 13⟩, ⟨30, 12⟩, ⟨22, 11⟩, ⟨19, 8⟩, ⟨11, 7⟩, ⟨3, 6⟩, ⟨39, 13⟩, ⟨31, 12⟩, ⟨23, 11⟩, ⟨20, 8⟩, ⟨12, 7⟩, ⟨4, 6⟩, ⟨40, 13⟩, ⟨32, 12⟩, ⟨24, 11⟩, ⟨21, 8⟩, ⟨13, 7⟩, ⟨5, 6⟩, ⟨41, 13⟩, ⟨33, 12⟩, ⟨25, 11⟩, ⟨43, 19⟩, ⟨14, 7⟩, ⟨6, 6⟩, ⟨42, 13⟩, ⟨34, 12⟩, ⟨26, 11⟩, ⟨15, 7⟩, ⟨7, 6⟩, ⟨35, 12⟩, ⟨27, 11⟩, ⟨16, 7⟩, ⟨8, 6⟩, ⟨36, 12⟩, ⟨28, 11⟩, ⟨17, 7⟩, ⟨9, 6⟩, ⟨1, 5⟩, ⟨37, 12⟩, ⟨29, 11⟩]⟩
theorem profile0352_checked : profile0352.check := by decide +kernel

noncomputable def selection1_0352 : Selection :=
  ⟨1, 1, 4, (486/25), 978, -75, 794⟩
theorem selection1_0352_checked : selection1_0352.check profile0352 := by decide +kernel

noncomputable def selection2_0352 : Selection :=
  ⟨2, -7, 8, (478/25), 270, -67, 1162⟩
theorem selection2_0352_checked : selection2_0352.check profile0352 := by decide +kernel

noncomputable def profile0353 : ProfileCell :=
  ⟨(12/97), (13/105),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 6, 6, 6, 6],
    [⟨29, 12⟩, ⟨18, 8⟩, ⟨10, 7⟩, ⟨2, 6⟩, ⟨38, 13⟩, ⟨30, 12⟩, ⟨22, 11⟩, ⟨19, 8⟩, ⟨11, 7⟩, ⟨3, 6⟩, ⟨39, 13⟩, ⟨31, 12⟩, ⟨23, 11⟩, ⟨20, 8⟩, ⟨12, 7⟩, ⟨4, 6⟩, ⟨40, 13⟩, ⟨32, 12⟩, ⟨24, 11⟩, ⟨21, 8⟩, ⟨13, 7⟩, ⟨5, 6⟩, ⟨41, 13⟩, ⟨33, 12⟩, ⟨25, 11⟩, ⟨14, 7⟩, ⟨43, 19⟩, ⟨6, 6⟩, ⟨42, 13⟩, ⟨34, 12⟩, ⟨26, 11⟩, ⟨15, 7⟩, ⟨7, 6⟩, ⟨35, 12⟩, ⟨27, 11⟩, ⟨16, 7⟩, ⟨8, 6⟩, ⟨36, 12⟩, ⟨28, 11⟩, ⟨17, 7⟩, ⟨9, 6⟩, ⟨1, 5⟩, ⟨37, 12⟩]⟩
theorem profile0353_checked : profile0353.check := by decide +kernel

noncomputable def selection1_0353 : Selection :=
  ⟨1, 1, 4, (389/20), 152, -3, 212⟩
theorem selection1_0353_checked : selection1_0353.check profile0353 := by decide +kernel

noncomputable def selection2_0353 : Selection :=
  ⟨2, -7, 8, (957/50), 42, 5, 580⟩
theorem selection2_0353_checked : selection2_0353.check profile0353 := by decide +kernel

noncomputable def profile0354 : ProfileCell :=
  ⟨(13/105), (1/8),
    [6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2], [5, 6, 6, 6, 6],
    [⟨37, 13⟩, ⟨29, 12⟩, ⟨18, 8⟩, ⟨10, 7⟩, ⟨2, 6⟩, ⟨38, 13⟩, ⟨30, 12⟩, ⟨22, 11⟩, ⟨19, 8⟩, ⟨11, 7⟩, ⟨3, 6⟩, ⟨39, 13⟩, ⟨31, 12⟩, ⟨23, 11⟩, ⟨20, 8⟩, ⟨12, 7⟩, ⟨4, 6⟩, ⟨40, 13⟩, ⟨32, 12⟩, ⟨24, 11⟩, ⟨21, 8⟩, ⟨13, 7⟩, ⟨5, 6⟩, ⟨41, 13⟩, ⟨33, 12⟩, ⟨25, 11⟩, ⟨14, 7⟩, ⟨6, 6⟩, ⟨43, 19⟩, ⟨42, 13⟩, ⟨34, 12⟩, ⟨26, 11⟩, ⟨15, 7⟩, ⟨7, 6⟩, ⟨35, 12⟩, ⟨27, 11⟩, ⟨16, 7⟩, ⟨8, 6⟩, ⟨36, 12⟩, ⟨28, 11⟩, ⟨17, 7⟩, ⟨9, 6⟩, ⟨1, 5⟩]⟩
theorem profile0354_checked : profile0354.check := by decide +kernel

noncomputable def selection1_0354 : Selection :=
  ⟨1, 1, 4, (389/20), 1832, 49, -208⟩
theorem selection1_0354_checked : selection1_0354.check profile0354 := by decide +kernel

noncomputable def selection2_0354 : Selection :=
  ⟨2, -7, 8, (959/50), 506, 57, 160⟩
theorem selection2_0354_checked : selection2_0354.check profile0354 := by decide +kernel

noncomputable def profile0355 : ProfileCell :=
  ⟨(1/8), (13/103),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨1, 6⟩, ⟨9, 7⟩, ⟨17, 8⟩, ⟨28, 12⟩, ⟨36, 13⟩, ⟨2, 6⟩, ⟨10, 7⟩, ⟨18, 8⟩, ⟨29, 12⟩, ⟨37, 13⟩, ⟨3, 6⟩, ⟨11, 7⟩, ⟨19, 8⟩, ⟨22, 11⟩, ⟨30, 12⟩, ⟨38, 13⟩, ⟨4, 6⟩, ⟨12, 7⟩, ⟨20, 8⟩, ⟨23, 11⟩, ⟨31, 12⟩, ⟨39, 13⟩, ⟨5, 6⟩, ⟨13, 7⟩, ⟨21, 8⟩, ⟨24, 11⟩, ⟨32, 12⟩, ⟨40, 13⟩, ⟨6, 6⟩, ⟨14, 7⟩, ⟨25, 11⟩, ⟨33, 12⟩, ⟨41, 13⟩, ⟨7, 6⟩, ⟨15, 7⟩, ⟨26, 11⟩, ⟨34, 12⟩, ⟨42, 13⟩, ⟨43, 19⟩, ⟨8, 6⟩, ⟨16, 7⟩, ⟨27, 11⟩, ⟨35, 12⟩]⟩
theorem profile0355_checked : profile0355.check := by decide +kernel

noncomputable def selection1_0355 : Selection :=
  ⟨1, 0, 4, (391/25), 1499, -52, 564⟩
theorem selection1_0355_checked : selection1_0355.check profile0355 := by decide +kernel

noncomputable def selection2_0355 : Selection :=
  ⟨2, -8, 8, (309/20), 415, -48, 932⟩
theorem selection2_0355_checked : selection2_0355.check profile0355 := by decide +kernel

noncomputable def profile0356 : ProfileCell :=
  ⟨(13/103), (12/95),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨35, 13⟩, ⟨1, 6⟩, ⟨9, 7⟩, ⟨17, 8⟩, ⟨28, 12⟩, ⟨36, 13⟩, ⟨2, 6⟩, ⟨10, 7⟩, ⟨18, 8⟩, ⟨29, 12⟩, ⟨37, 13⟩, ⟨3, 6⟩, ⟨11, 7⟩, ⟨19, 8⟩, ⟨22, 11⟩, ⟨30, 12⟩, ⟨38, 13⟩, ⟨4, 6⟩, ⟨12, 7⟩, ⟨20, 8⟩, ⟨23, 11⟩, ⟨31, 12⟩, ⟨39, 13⟩, ⟨5, 6⟩, ⟨13, 7⟩, ⟨21, 8⟩, ⟨24, 11⟩, ⟨32, 12⟩, ⟨40, 13⟩, ⟨6, 6⟩, ⟨14, 7⟩, ⟨25, 11⟩, ⟨33, 12⟩, ⟨41, 13⟩, ⟨7, 6⟩, ⟨15, 7⟩, ⟨26, 11⟩, ⟨34, 12⟩, ⟨42, 13⟩, ⟨8, 6⟩, ⟨43, 19⟩, ⟨16, 7⟩, ⟨27, 11⟩]⟩
theorem profile0356_checked : profile0356.check := by decide +kernel

noncomputable def selection1_0356 : Selection :=
  ⟨1, 0, 4, (391/25), 127, 26, -54⟩
theorem selection1_0356_checked : selection1_0356.check profile0356 := by decide +kernel

noncomputable def selection2_0356 : Selection :=
  ⟨2, -8, 8, (773/50), 35, 30, 314⟩
theorem selection2_0356_checked : selection2_0356.check profile0356 := by decide +kernel

noncomputable def profile0357 : ProfileCell :=
  ⟨(12/95), (10/79),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨27, 12⟩, ⟨35, 13⟩, ⟨1, 6⟩, ⟨9, 7⟩, ⟨17, 8⟩, ⟨28, 12⟩, ⟨36, 13⟩, ⟨2, 6⟩, ⟨10, 7⟩, ⟨18, 8⟩, ⟨29, 12⟩, ⟨37, 13⟩, ⟨3, 6⟩, ⟨11, 7⟩, ⟨19, 8⟩, ⟨22, 11⟩, ⟨30, 12⟩, ⟨38, 13⟩, ⟨4, 6⟩, ⟨12, 7⟩, ⟨20, 8⟩, ⟨23, 11⟩, ⟨31, 12⟩, ⟨39, 13⟩, ⟨5, 6⟩, ⟨13, 7⟩, ⟨21, 8⟩, ⟨24, 11⟩, ⟨32, 12⟩, ⟨40, 13⟩, ⟨6, 6⟩, ⟨14, 7⟩, ⟨25, 11⟩, ⟨33, 12⟩, ⟨41, 13⟩, ⟨7, 6⟩, ⟨15, 7⟩, ⟨26, 11⟩, ⟨34, 12⟩, ⟨42, 13⟩, ⟨8, 6⟩, ⟨16, 7⟩, ⟨43, 19⟩]⟩
theorem profile0357_checked : profile0357.check := by decide +kernel

noncomputable def selection1_0357 : Selection :=
  ⟨1, 0, 4, (391/25), 329, 74, -434⟩
theorem selection1_0357_checked : selection1_0357.check profile0357 := by decide +kernel

noncomputable def selection2_0357 : Selection :=
  ⟨2, -8, 8, (773/50), 92, 78, -66⟩
theorem selection2_0357_checked : selection2_0357.check profile0357 := by decide +kernel

noncomputable def profile0358 : ProfileCell :=
  ⟨(10/79), (8/63),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨43, 20⟩, ⟨27, 12⟩, ⟨35, 13⟩, ⟨1, 6⟩, ⟨9, 7⟩, ⟨17, 8⟩, ⟨28, 12⟩, ⟨36, 13⟩, ⟨2, 6⟩, ⟨10, 7⟩, ⟨18, 8⟩, ⟨29, 12⟩, ⟨37, 13⟩, ⟨3, 6⟩, ⟨11, 7⟩, ⟨19, 8⟩, ⟨22, 11⟩, ⟨30, 12⟩, ⟨38, 13⟩, ⟨4, 6⟩, ⟨12, 7⟩, ⟨20, 8⟩, ⟨23, 11⟩, ⟨31, 12⟩, ⟨39, 13⟩, ⟨5, 6⟩, ⟨13, 7⟩, ⟨21, 8⟩, ⟨24, 11⟩, ⟨32, 12⟩, ⟨40, 13⟩, ⟨6, 6⟩, ⟨14, 7⟩, ⟨25, 11⟩, ⟨33, 12⟩, ⟨41, 13⟩, ⟨7, 6⟩, ⟨15, 7⟩, ⟨26, 11⟩, ⟨34, 12⟩, ⟨42, 13⟩, ⟨8, 6⟩, ⟨16, 7⟩]⟩
theorem profile0358_checked : profile0358.check := by decide +kernel

noncomputable def selection1_0358 : Selection :=
  ⟨1, 0, 4, (317/20), 502, -166, 1462⟩
theorem selection1_0358_checked : selection1_0358.check profile0358 := by decide +kernel

noncomputable def selection2_0358 : Selection :=
  ⟨2, -8, 8, (781/50), 139, -162, 1830⟩
theorem selection2_0358_checked : selection2_0358.check profile0358 := by decide +kernel

noncomputable def profile0359 : ProfileCell :=
  ⟨(8/63), (7/55),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨16, 8⟩, ⟨27, 12⟩, ⟨43, 20⟩, ⟨35, 13⟩, ⟨1, 6⟩, ⟨9, 7⟩, ⟨17, 8⟩, ⟨28, 12⟩, ⟨36, 13⟩, ⟨2, 6⟩, ⟨10, 7⟩, ⟨18, 8⟩, ⟨29, 12⟩, ⟨37, 13⟩, ⟨3, 6⟩, ⟨11, 7⟩, ⟨19, 8⟩, ⟨22, 11⟩, ⟨30, 12⟩, ⟨38, 13⟩, ⟨4, 6⟩, ⟨12, 7⟩, ⟨20, 8⟩, ⟨23, 11⟩, ⟨31, 12⟩, ⟨39, 13⟩, ⟨5, 6⟩, ⟨13, 7⟩, ⟨21, 8⟩, ⟨24, 11⟩, ⟨32, 12⟩, ⟨40, 13⟩, ⟨6, 6⟩, ⟨14, 7⟩, ⟨25, 11⟩, ⟨33, 12⟩, ⟨41, 13⟩, ⟨7, 6⟩, ⟨15, 7⟩, ⟨26, 11⟩, ⟨34, 12⟩, ⟨42, 13⟩, ⟨8, 6⟩]⟩
theorem profile0359_checked : profile0359.check := by decide +kernel

noncomputable def selection1_0359 : Selection :=
  ⟨1, 0, 4, (1609/100), 366, -214, 1840⟩
theorem selection1_0359_checked : selection1_0359.check profile0359 := by decide +kernel

noncomputable def selection2_0359 : Selection :=
  ⟨2, -8, 8, (1577/100), 101, -210, 2208⟩
theorem selection2_0359_checked : selection2_0359.check profile0359 := by decide +kernel

noncomputable def profile0360 : ProfileCell :=
  ⟨(7/55), (13/102),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨8, 7⟩, ⟨42, 14⟩, ⟨16, 8⟩, ⟨27, 12⟩, ⟨1, 6⟩, ⟨35, 13⟩, ⟨43, 20⟩, ⟨9, 7⟩, ⟨17, 8⟩, ⟨28, 12⟩, ⟨2, 6⟩, ⟨36, 13⟩, ⟨10, 7⟩, ⟨18, 8⟩, ⟨29, 12⟩, ⟨3, 6⟩, ⟨37, 13⟩, ⟨11, 7⟩, ⟨19, 8⟩, ⟨22, 11⟩, ⟨30, 12⟩, ⟨4, 6⟩, ⟨38, 13⟩, ⟨12, 7⟩, ⟨20, 8⟩, ⟨23, 11⟩, ⟨31, 12⟩, ⟨5, 6⟩, ⟨39, 13⟩, ⟨13, 7⟩, ⟨21, 8⟩, ⟨24, 11⟩, ⟨32, 12⟩, ⟨6, 6⟩, ⟨40, 13⟩, ⟨14, 7⟩, ⟨25, 11⟩, ⟨33, 12⟩, ⟨7, 6⟩, ⟨41, 13⟩, ⟨15, 7⟩, ⟨26, 11⟩, ⟨34, 12⟩]⟩
theorem profile0360_checked : profile0360.check := by decide +kernel

noncomputable def selection1_0360 : Selection :=
  ⟨1, 0, 4, (1623/100), 228, -214, 1840⟩
theorem selection1_0360_checked : selection1_0360.check profile0360 := by decide +kernel

noncomputable def selection2_0360 : Selection :=
  ⟨2, -8, 8, (1587/100), 63, -210, 2208⟩
theorem selection2_0360_checked : selection2_0360.check profile0360 := by decide +kernel

noncomputable def profile0361 : ProfileCell :=
  ⟨(13/102), (6/47),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨34, 13⟩, ⟨8, 7⟩, ⟨42, 14⟩, ⟨16, 8⟩, ⟨27, 12⟩, ⟨1, 6⟩, ⟨35, 13⟩, ⟨9, 7⟩, ⟨43, 20⟩, ⟨17, 8⟩, ⟨28, 12⟩, ⟨2, 6⟩, ⟨36, 13⟩, ⟨10, 7⟩, ⟨18, 8⟩, ⟨29, 12⟩, ⟨3, 6⟩, ⟨37, 13⟩, ⟨11, 7⟩, ⟨19, 8⟩, ⟨22, 11⟩, ⟨30, 12⟩, ⟨4, 6⟩, ⟨38, 13⟩, ⟨12, 7⟩, ⟨20, 8⟩, ⟨23, 11⟩, ⟨31, 12⟩, ⟨5, 6⟩, ⟨39, 13⟩, ⟨13, 7⟩, ⟨21, 8⟩, ⟨24, 11⟩, ⟨32, 12⟩, ⟨6, 6⟩, ⟨40, 13⟩, ⟨14, 7⟩, ⟨25, 11⟩, ⟨33, 12⟩, ⟨7, 6⟩, ⟨41, 13⟩, ⟨15, 7⟩, ⟨26, 11⟩]⟩
theorem profile0361_checked : profile0361.check := by decide +kernel

noncomputable def selection1_0361 : Selection :=
  ⟨1, 0, 4, (817/50), 269, -136, 1228⟩
theorem selection1_0361_checked : selection1_0361.check profile0361 := by decide +kernel

noncomputable def selection2_0361 : Selection :=
  ⟨2, -8, 8, (797/50), 74, -132, 1596⟩
theorem selection2_0361_checked : selection2_0361.check profile0361 := by decide +kernel

noncomputable def profile0362 : ProfileCell :=
  ⟨(6/47), (5/39),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨26, 12⟩, ⟨8, 7⟩, ⟨34, 13⟩, ⟨16, 8⟩, ⟨42, 14⟩, ⟨1, 6⟩, ⟨27, 12⟩, ⟨9, 7⟩, ⟨35, 13⟩, ⟨17, 8⟩, ⟨43, 20⟩, ⟨2, 6⟩, ⟨28, 12⟩, ⟨10, 7⟩, ⟨36, 13⟩, ⟨18, 8⟩, ⟨3, 6⟩, ⟨29, 12⟩, ⟨11, 7⟩, ⟨37, 13⟩, ⟨19, 8⟩, ⟨22, 11⟩, ⟨4, 6⟩, ⟨30, 12⟩, ⟨12, 7⟩, ⟨38, 13⟩, ⟨20, 8⟩, ⟨23, 11⟩, ⟨5, 6⟩, ⟨31, 12⟩, ⟨13, 7⟩, ⟨39, 13⟩, ⟨21, 8⟩, ⟨24, 11⟩, ⟨6, 6⟩, ⟨32, 12⟩, ⟨14, 7⟩, ⟨40, 13⟩, ⟨25, 11⟩, ⟨7, 6⟩, ⟨33, 12⟩, ⟨15, 7⟩, ⟨41, 13⟩]⟩
theorem profile0362_checked : profile0362.check := by decide +kernel

noncomputable def selection1_0362 : Selection :=
  ⟨1, 0, 4, (416/25), 714, -136, 1228⟩
theorem selection1_0362_checked : selection1_0362.check profile0362 := by decide +kernel

noncomputable def selection2_0362 : Selection :=
  ⟨2, -8, 8, (323/20), 195, -132, 1596⟩
theorem selection2_0362_checked : selection2_0362.check profile0362 := by decide +kernel

noncomputable def profile0363 : ProfileCell :=
  ⟨(5/39), (14/109),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨8, 7⟩, ⟨26, 12⟩, ⟨16, 8⟩, ⟨34, 13⟩, ⟨42, 14⟩, ⟨1, 6⟩, ⟨9, 7⟩, ⟨27, 12⟩, ⟨17, 8⟩, ⟨35, 13⟩, ⟨43, 20⟩, ⟨2, 6⟩, ⟨10, 7⟩, ⟨28, 12⟩, ⟨18, 8⟩, ⟨36, 13⟩, ⟨3, 6⟩, ⟨11, 7⟩, ⟨29, 12⟩, ⟨19, 8⟩, ⟨37, 13⟩, ⟨4, 6⟩, ⟨22, 11⟩, ⟨12, 7⟩, ⟨30, 12⟩, ⟨20, 8⟩, ⟨38, 13⟩, ⟨5, 6⟩, ⟨23, 11⟩, ⟨13, 7⟩, ⟨31, 12⟩, ⟨21, 8⟩, ⟨39, 13⟩, ⟨6, 6⟩, ⟨24, 11⟩, ⟨14, 7⟩, ⟨32, 12⟩, ⟨40, 13⟩, ⟨7, 6⟩, ⟨25, 11⟩, ⟨15, 7⟩, ⟨33, 12⟩, ⟨41, 13⟩]⟩
theorem profile0363_checked : profile0363.check := by decide +kernel

noncomputable def selection1_0363 : Selection :=
  ⟨1, 0, 4, (1681/100), 311, -186, 1618⟩
theorem selection1_0363_checked : selection1_0363.check profile0363 := by decide +kernel

noncomputable def selection2_0363 : Selection :=
  ⟨2, -8, 8, (813/50), 85, -182, 1986⟩
theorem selection2_0363_checked : selection2_0363.check profile0363 := by decide +kernel

noncomputable def profile0364 : ProfileCell :=
  ⟨(14/109), (13/101),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨41, 14⟩, ⟨8, 7⟩, ⟨26, 12⟩, ⟨16, 8⟩, ⟨34, 13⟩, ⟨42, 14⟩, ⟨1, 6⟩, ⟨9, 7⟩, ⟨27, 12⟩, ⟨17, 8⟩, ⟨35, 13⟩, ⟨2, 6⟩, ⟨43, 20⟩, ⟨10, 7⟩, ⟨28, 12⟩, ⟨18, 8⟩, ⟨36, 13⟩, ⟨3, 6⟩, ⟨11, 7⟩, ⟨29, 12⟩, ⟨19, 8⟩, ⟨37, 13⟩, ⟨4, 6⟩, ⟨22, 11⟩, ⟨12, 7⟩, ⟨30, 12⟩, ⟨20, 8⟩, ⟨38, 13⟩, ⟨5, 6⟩, ⟨23, 11⟩, ⟨13, 7⟩, ⟨31, 12⟩, ⟨21, 8⟩, ⟨39, 13⟩, ⟨6, 6⟩, ⟨24, 11⟩, ⟨14, 7⟩, ⟨32, 12⟩, ⟨40, 13⟩, ⟨7, 6⟩, ⟨25, 11⟩, ⟨15, 7⟩, ⟨33, 12⟩]⟩
theorem profile0364_checked : profile0364.check := by decide +kernel

noncomputable def selection1_0364 : Selection :=
  ⟨1, 0, 4, (1693/100), 363, -102, 964⟩
theorem selection1_0364_checked : selection1_0364.check profile0364 := by decide +kernel

noncomputable def selection2_0364 : Selection :=
  ⟨2, -8, 8, (817/50), 99, -98, 1332⟩
theorem selection2_0364_checked : selection2_0364.check profile0364 := by decide +kernel

noncomputable def profile0365 : ProfileCell :=
  ⟨(13/101), (4/31),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨33, 13⟩, ⟨41, 14⟩, ⟨8, 7⟩, ⟨26, 12⟩, ⟨16, 8⟩, ⟨34, 13⟩, ⟨42, 14⟩, ⟨1, 6⟩, ⟨9, 7⟩, ⟨27, 12⟩, ⟨17, 8⟩, ⟨35, 13⟩, ⟨2, 6⟩, ⟨10, 7⟩, ⟨43, 20⟩, ⟨28, 12⟩, ⟨18, 8⟩, ⟨36, 13⟩, ⟨3, 6⟩, ⟨11, 7⟩, ⟨29, 12⟩, ⟨19, 8⟩, ⟨37, 13⟩, ⟨4, 6⟩, ⟨22, 11⟩, ⟨12, 7⟩, ⟨30, 12⟩, ⟨20, 8⟩, ⟨38, 13⟩, ⟨5, 6⟩, ⟨23, 11⟩, ⟨13, 7⟩, ⟨31, 12⟩, ⟨21, 8⟩, ⟨39, 13⟩, ⟨6, 6⟩, ⟨24, 11⟩, ⟨14, 7⟩, ⟨32, 12⟩, ⟨40, 13⟩, ⟨7, 6⟩, ⟨25, 11⟩, ⟨15, 7⟩]⟩
theorem profile0365_checked : profile0365.check := by decide +kernel

noncomputable def selection1_0365 : Selection :=
  ⟨1, 0, 4, 17, 427, -50, 560⟩
theorem selection1_0365_checked : selection1_0365.check profile0365 := by decide +kernel

noncomputable def selection2_0365 : Selection :=
  ⟨2, -8, 8, (1641/100), 116, -46, 928⟩
theorem selection2_0365_checked : selection2_0365.check profile0365 := by decide +kernel

noncomputable def profile0366 : ProfileCell :=
  ⟨(4/31), (7/54),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨15, 8⟩, ⟨25, 12⟩, ⟨33, 13⟩, ⟨41, 14⟩, ⟨8, 7⟩, ⟨16, 8⟩, ⟨26, 12⟩, ⟨34, 13⟩, ⟨1, 6⟩, ⟨42, 14⟩, ⟨9, 7⟩, ⟨17, 8⟩, ⟨27, 12⟩, ⟨35, 13⟩, ⟨2, 6⟩, ⟨10, 7⟩, ⟨18, 8⟩, ⟨28, 12⟩, ⟨43, 20⟩, ⟨36, 13⟩, ⟨3, 6⟩, ⟨11, 7⟩, ⟨19, 8⟩, ⟨29, 12⟩, ⟨37, 13⟩, ⟨4, 6⟩, ⟨12, 7⟩, ⟨22, 11⟩, ⟨20, 8⟩, ⟨30, 12⟩, ⟨38, 13⟩, ⟨5, 6⟩, ⟨13, 7⟩, ⟨23, 11⟩, ⟨21, 8⟩, ⟨31, 12⟩, ⟨39, 13⟩, ⟨6, 6⟩, ⟨14, 7⟩, ⟨24, 11⟩, ⟨32, 12⟩, ⟨40, 13⟩, ⟨7, 6⟩]⟩
theorem profile0366_checked : profile0366.check := by decide +kernel

noncomputable def selection1_0366 : Selection :=
  ⟨1, 0, 4, (857/50), 803, -42, 498⟩
theorem selection1_0366_checked : selection1_0366.check profile0366 := by decide +kernel

noncomputable def selection2_0366 : Selection :=
  ⟨2, -8, 8, (827/50), 218, -38, 866⟩
theorem selection2_0366_checked : selection2_0366.check profile0366 := by decide +kernel

noncomputable def profile0367 : ProfileCell :=
  ⟨(7/54), (13/100),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨7, 7⟩, ⟨40, 14⟩, ⟨15, 8⟩, ⟨25, 12⟩, ⟨33, 13⟩, ⟨8, 7⟩, ⟨41, 14⟩, ⟨16, 8⟩, ⟨26, 12⟩, ⟨1, 6⟩, ⟨34, 13⟩, ⟨9, 7⟩, ⟨42, 14⟩, ⟨17, 8⟩, ⟨27, 12⟩, ⟨2, 6⟩, ⟨35, 13⟩, ⟨10, 7⟩, ⟨18, 8⟩, ⟨28, 12⟩, ⟨3, 6⟩, ⟨36, 13⟩, ⟨43, 20⟩, ⟨11, 7⟩, ⟨19, 8⟩, ⟨29, 12⟩, ⟨4, 6⟩, ⟨37, 13⟩, ⟨12, 7⟩, ⟨22, 11⟩, ⟨20, 8⟩, ⟨30, 12⟩, ⟨5, 6⟩, ⟨38, 13⟩, ⟨13, 7⟩, ⟨23, 11⟩, ⟨21, 8⟩, ⟨31, 12⟩, ⟨6, 6⟩, ⟨39, 13⟩, ⟨14, 7⟩, ⟨24, 11⟩, ⟨32, 12⟩]⟩
theorem profile0367_checked : profile0367.check := by decide +kernel

noncomputable def selection1_0367 : Selection :=
  ⟨1, 0, 4, (861/50), 500, -42, 498⟩
theorem selection1_0367_checked : selection1_0367.check profile0367 := by decide +kernel

noncomputable def selection2_0367 : Selection :=
  ⟨2, -8, 8, (1661/100), 136, -38, 866⟩
theorem selection2_0367_checked : selection2_0367.check profile0367 := by decide +kernel

noncomputable def profile0368 : ProfileCell :=
  ⟨(13/100), (3/23),
    [6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨32, 13⟩, ⟨7, 7⟩, ⟨40, 14⟩, ⟨15, 8⟩, ⟨25, 12⟩, ⟨33, 13⟩, ⟨8, 7⟩, ⟨41, 14⟩, ⟨16, 8⟩, ⟨26, 12⟩, ⟨1, 6⟩, ⟨34, 13⟩, ⟨9, 7⟩, ⟨42, 14⟩, ⟨17, 8⟩, ⟨27, 12⟩, ⟨2, 6⟩, ⟨35, 13⟩, ⟨10, 7⟩, ⟨18, 8⟩, ⟨28, 12⟩, ⟨3, 6⟩, ⟨36, 13⟩, ⟨11, 7⟩, ⟨43, 20⟩, ⟨19, 8⟩, ⟨29, 12⟩, ⟨4, 6⟩, ⟨37, 13⟩, ⟨12, 7⟩, ⟨22, 11⟩, ⟨20, 8⟩, ⟨30, 12⟩, ⟨5, 6⟩, ⟨38, 13⟩, ⟨13, 7⟩, ⟨23, 11⟩, ⟨21, 8⟩, ⟨31, 12⟩, ⟨6, 6⟩, ⟨39, 13⟩, ⟨14, 7⟩, ⟨24, 11⟩]⟩
theorem profile0368_checked : profile0368.check := by decide +kernel

noncomputable def selection1_0368 : Selection :=
  ⟨1, 0, 4, (861/50), 587, 36, -102⟩
theorem selection1_0368_checked : selection1_0368.check profile0368 := by decide +kernel

noncomputable def selection2_0368 : Selection :=
  ⟨2, -8, 8, (416/25), 160, 40, 266⟩
theorem selection2_0368_checked : selection2_0368.check profile0368 := by decide +kernel

noncomputable def profile0369 : ProfileCell :=
  ⟨(3/23), (14/107),
    [6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨24, 12⟩, ⟨7, 7⟩, ⟨32, 13⟩, ⟨15, 8⟩, ⟨40, 14⟩, ⟨25, 12⟩, ⟨8, 7⟩, ⟨33, 13⟩, ⟨16, 8⟩, ⟨41, 14⟩, ⟨1, 6⟩, ⟨26, 12⟩, ⟨9, 7⟩, ⟨34, 13⟩, ⟨17, 8⟩, ⟨42, 14⟩, ⟨2, 6⟩, ⟨27, 12⟩, ⟨10, 7⟩, ⟨35, 13⟩, ⟨18, 8⟩, ⟨3, 6⟩, ⟨28, 12⟩, ⟨11, 7⟩, ⟨36, 13⟩, ⟨19, 8⟩, ⟨43, 20⟩, ⟨4, 6⟩, ⟨29, 12⟩, ⟨12, 7⟩, ⟨37, 13⟩, ⟨20, 8⟩, ⟨22, 11⟩, ⟨5, 6⟩, ⟨30, 12⟩, ⟨13, 7⟩, ⟨38, 13⟩, ⟨21, 8⟩, ⟨23, 11⟩, ⟨6, 6⟩, ⟨31, 12⟩, ⟨14, 7⟩, ⟨39, 13⟩]⟩
theorem profile0369_checked : profile0369.check := by decide +kernel

noncomputable def selection1_0369 : Selection :=
  ⟨1, -1, 4, (76/5), 484, 18, 36⟩
theorem selection1_0369_checked : selection1_0369.check profile0369 := by decide +kernel

noncomputable def selection2_0369 : Selection :=
  ⟨2, -9, 8, (367/25), 132, 22, 404⟩
theorem selection2_0369_checked : selection2_0369.check profile0369 := by decide +kernel

noncomputable def profile0370 : ProfileCell :=
  ⟨(14/107), (8/61),
    [6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨39, 14⟩, ⟨24, 12⟩, ⟨7, 7⟩, ⟨32, 13⟩, ⟨15, 8⟩, ⟨40, 14⟩, ⟨25, 12⟩, ⟨8, 7⟩, ⟨33, 13⟩, ⟨16, 8⟩, ⟨41, 14⟩, ⟨1, 6⟩, ⟨26, 12⟩, ⟨9, 7⟩, ⟨34, 13⟩, ⟨17, 8⟩, ⟨42, 14⟩, ⟨2, 6⟩, ⟨27, 12⟩, ⟨10, 7⟩, ⟨35, 13⟩, ⟨18, 8⟩, ⟨3, 6⟩, ⟨28, 12⟩, ⟨11, 7⟩, ⟨36, 13⟩, ⟨19, 8⟩, ⟨4, 6⟩, ⟨43, 20⟩, ⟨29, 12⟩, ⟨12, 7⟩, ⟨37, 13⟩, ⟨20, 8⟩, ⟨22, 11⟩, ⟨5, 6⟩, ⟨30, 12⟩, ⟨13, 7⟩, ⟨38, 13⟩, ⟨21, 8⟩, ⟨23, 11⟩, ⟨6, 6⟩, ⟨31, 12⟩, ⟨14, 7⟩]⟩
theorem profile0370_checked : profile0370.check := by decide +kernel

noncomputable def selection1_0370 : Selection :=
  ⟨1, -1, 4, (76/5), 365, 102, -606⟩
theorem selection1_0370_checked : selection1_0370.check profile0370 := by decide +kernel

noncomputable def selection2_0370 : Selection :=
  ⟨2, -9, 8, (367/25), 100, 106, -238⟩
theorem selection2_0370_checked : selection2_0370.check profile0370 := by decide +kernel

noncomputable def profile0371 : ProfileCell :=
  ⟨(8/61), (13/99),
    [6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨14, 8⟩, ⟨39, 14⟩, ⟨24, 12⟩, ⟨7, 7⟩, ⟨32, 13⟩, ⟨15, 8⟩, ⟨40, 14⟩, ⟨25, 12⟩, ⟨8, 7⟩, ⟨33, 13⟩, ⟨16, 8⟩, ⟨1, 6⟩, ⟨41, 14⟩, ⟨26, 12⟩, ⟨9, 7⟩, ⟨34, 13⟩, ⟨17, 8⟩, ⟨2, 6⟩, ⟨42, 14⟩, ⟨27, 12⟩, ⟨10, 7⟩, ⟨35, 13⟩, ⟨18, 8⟩, ⟨3, 6⟩, ⟨28, 12⟩, ⟨11, 7⟩, ⟨36, 13⟩, ⟨19, 8⟩, ⟨4, 6⟩, ⟨29, 12⟩, ⟨43, 20⟩, ⟨12, 7⟩, ⟨37, 13⟩, ⟨20, 8⟩, ⟨22, 11⟩, ⟨5, 6⟩, ⟨30, 12⟩, ⟨13, 7⟩, ⟨38, 13⟩, ⟨21, 8⟩, ⟨23, 11⟩, ⟨6, 6⟩, ⟨31, 12⟩]⟩
theorem profile0371_checked : profile0371.check := by decide +kernel

noncomputable def selection1_0371 : Selection :=
  ⟨1, -1, 4, (378/25), 196, 38, -118⟩
theorem selection1_0371_checked : selection1_0371.check profile0371 := by decide +kernel

noncomputable def selection2_0371 : Selection :=
  ⟨2, -9, 8, (1467/100), 54, 42, 250⟩
theorem selection2_0371_checked : selection2_0371.check profile0371 := by decide +kernel

noncomputable def profile0372 : ProfileCell :=
  ⟨(13/99), (5/38),
    [6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨31, 13⟩, ⟨14, 8⟩, ⟨39, 14⟩, ⟨24, 12⟩, ⟨7, 7⟩, ⟨32, 13⟩, ⟨15, 8⟩, ⟨40, 14⟩, ⟨25, 12⟩, ⟨8, 7⟩, ⟨33, 13⟩, ⟨16, 8⟩, ⟨1, 6⟩, ⟨41, 14⟩, ⟨26, 12⟩, ⟨9, 7⟩, ⟨34, 13⟩, ⟨17, 8⟩, ⟨2, 6⟩, ⟨42, 14⟩, ⟨27, 12⟩, ⟨10, 7⟩, ⟨35, 13⟩, ⟨18, 8⟩, ⟨3, 6⟩, ⟨28, 12⟩, ⟨11, 7⟩, ⟨36, 13⟩, ⟨19, 8⟩, ⟨4, 6⟩, ⟨29, 12⟩, ⟨12, 7⟩, ⟨43, 20⟩, ⟨37, 13⟩, ⟨20, 8⟩, ⟨22, 11⟩, ⟨5, 6⟩, ⟨30, 12⟩, ⟨13, 7⟩, ⟨38, 13⟩, ⟨21, 8⟩, ⟨23, 11⟩, ⟨6, 6⟩]⟩
theorem profile0372_checked : profile0372.check := by decide +kernel

noncomputable def selection1_0372 : Selection :=
  ⟨1, -1, 4, (1511/100), 314, 116, -712⟩
theorem selection1_0372_checked : selection1_0372.check profile0372 := by decide +kernel

noncomputable def selection2_0372 : Selection :=
  ⟨2, -9, 8, (1467/100), 86, 120, -344⟩
theorem selection2_0372_checked : selection2_0372.check profile0372 := by decide +kernel

noncomputable def profile0373 : ProfileCell :=
  ⟨(5/38), (12/91),
    [6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨14, 8⟩, ⟨31, 13⟩, ⟨39, 14⟩, ⟨7, 7⟩, ⟨24, 12⟩, ⟨15, 8⟩, ⟨32, 13⟩, ⟨40, 14⟩, ⟨8, 7⟩, ⟨25, 12⟩, ⟨16, 8⟩, ⟨33, 13⟩, ⟨1, 6⟩, ⟨41, 14⟩, ⟨9, 7⟩, ⟨26, 12⟩, ⟨17, 8⟩, ⟨34, 13⟩, ⟨2, 6⟩, ⟨42, 14⟩, ⟨10, 7⟩, ⟨27, 12⟩, ⟨18, 8⟩, ⟨35, 13⟩, ⟨3, 6⟩, ⟨11, 7⟩, ⟨28, 12⟩, ⟨19, 8⟩, ⟨36, 13⟩, ⟨4, 6⟩, ⟨12, 7⟩, ⟨29, 12⟩, ⟨43, 20⟩, ⟨20, 8⟩, ⟨37, 13⟩, ⟨5, 6⟩, ⟨22, 11⟩, ⟨13, 7⟩, ⟨30, 12⟩, ⟨21, 8⟩, ⟨38, 13⟩, ⟨6, 6⟩, ⟨23, 11⟩]⟩
theorem profile0373_checked : profile0373.check := by decide +kernel

noncomputable def selection1_0373 : Selection :=
  ⟨1, -2, 4, (1303/100), 295, 76, -408⟩
theorem selection1_0373_checked : selection1_0373.check profile0373 := by decide +kernel

noncomputable def selection2_0373 : Selection :=
  ⟨2, -10, 8, (253/20), 81, 80, -40⟩
theorem selection2_0373_checked : selection2_0373.check profile0373 := by decide +kernel

noncomputable def profile0374 : ProfileCell :=
  ⟨(12/91), (7/53),
    [6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨23, 12⟩, ⟨14, 8⟩, ⟨31, 13⟩, ⟨39, 14⟩, ⟨7, 7⟩, ⟨24, 12⟩, ⟨15, 8⟩, ⟨32, 13⟩, ⟨40, 14⟩, ⟨8, 7⟩, ⟨25, 12⟩, ⟨16, 8⟩, ⟨33, 13⟩, ⟨1, 6⟩, ⟨41, 14⟩, ⟨9, 7⟩, ⟨26, 12⟩, ⟨17, 8⟩, ⟨34, 13⟩, ⟨2, 6⟩, ⟨42, 14⟩, ⟨10, 7⟩, ⟨27, 12⟩, ⟨18, 8⟩, ⟨35, 13⟩, ⟨3, 6⟩, ⟨11, 7⟩, ⟨28, 12⟩, ⟨19, 8⟩, ⟨36, 13⟩, ⟨4, 6⟩, ⟨12, 7⟩, ⟨29, 12⟩, ⟨20, 8⟩, ⟨43, 20⟩, ⟨37, 13⟩, ⟨5, 6⟩, ⟨22, 11⟩, ⟨13, 7⟩, ⟨30, 12⟩, ⟨21, 8⟩, ⟨38, 13⟩, ⟨6, 6⟩]⟩
theorem profile0374_checked : profile0374.check := by decide +kernel

noncomputable def selection1_0374 : Selection :=
  ⟨1, -2, 4, (649/50), 211, 124, -772⟩
theorem selection1_0374_checked : selection1_0374.check profile0374 := by decide +kernel

noncomputable def selection2_0374 : Selection :=
  ⟨2, -10, 8, (316/25), 58, 128, -404⟩
theorem selection2_0374_checked : selection2_0374.check profile0374 := by decide +kernel

noncomputable def profile0375 : ProfileCell :=
  ⟨(7/53), (9/68),
    [6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨6, 7⟩, ⟨38, 14⟩, ⟨23, 12⟩, ⟨14, 8⟩, ⟨31, 13⟩, ⟨7, 7⟩, ⟨39, 14⟩, ⟨24, 12⟩, ⟨15, 8⟩, ⟨32, 13⟩, ⟨8, 7⟩, ⟨40, 14⟩, ⟨25, 12⟩, ⟨16, 8⟩, ⟨1, 6⟩, ⟨33, 13⟩, ⟨9, 7⟩, ⟨41, 14⟩, ⟨26, 12⟩, ⟨17, 8⟩, ⟨2, 6⟩, ⟨34, 13⟩, ⟨10, 7⟩, ⟨42, 14⟩, ⟨27, 12⟩, ⟨18, 8⟩, ⟨3, 6⟩, ⟨35, 13⟩, ⟨11, 7⟩, ⟨28, 12⟩, ⟨19, 8⟩, ⟨4, 6⟩, ⟨36, 13⟩, ⟨12, 7⟩, ⟨29, 12⟩, ⟨20, 8⟩, ⟨5, 6⟩, ⟨37, 13⟩, ⟨43, 20⟩, ⟨22, 11⟩, ⟨13, 7⟩, ⟨30, 12⟩, ⟨21, 8⟩]⟩
theorem profile0375_checked : profile0375.check := by decide +kernel

noncomputable def selection1_0375 : Selection :=
  ⟨1, -2, 4, (129/10), 280, 138, -878⟩
theorem selection1_0375_checked : selection1_0375.check profile0375 := by decide +kernel

noncomputable def selection2_0375 : Selection :=
  ⟨2, -10, 8, (631/50), 78, 142, -510⟩
theorem selection2_0375_checked : selection2_0375.check profile0375 := by decide +kernel

noncomputable def profile0376 : ProfileCell :=
  ⟨(9/68), (13/98),
    [6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨21, 9⟩, ⟨6, 7⟩, ⟨38, 14⟩, ⟨23, 12⟩, ⟨14, 8⟩, ⟨31, 13⟩, ⟨7, 7⟩, ⟨39, 14⟩, ⟨24, 12⟩, ⟨15, 8⟩, ⟨32, 13⟩, ⟨8, 7⟩, ⟨40, 14⟩, ⟨25, 12⟩, ⟨16, 8⟩, ⟨1, 6⟩, ⟨33, 13⟩, ⟨9, 7⟩, ⟨41, 14⟩, ⟨26, 12⟩, ⟨17, 8⟩, ⟨2, 6⟩, ⟨34, 13⟩, ⟨10, 7⟩, ⟨42, 14⟩, ⟨27, 12⟩, ⟨18, 8⟩, ⟨3, 6⟩, ⟨35, 13⟩, ⟨11, 7⟩, ⟨28, 12⟩, ⟨19, 8⟩, ⟨4, 6⟩, ⟨36, 13⟩, ⟨12, 7⟩, ⟨29, 12⟩, ⟨20, 8⟩, ⟨5, 6⟩, ⟨37, 13⟩, ⟨22, 11⟩, ⟨43, 20⟩, ⟨13, 7⟩, ⟨30, 12⟩]⟩
theorem profile0376_checked : profile0376.check := by decide +kernel

noncomputable def selection1_0376 : Selection :=
  ⟨1, -2, 4, (64/5), 300, 102, -606⟩
theorem selection1_0376_checked : selection1_0376.check profile0376 := by decide +kernel

noncomputable def selection2_0376 : Selection :=
  ⟨2, -10, 8, (1259/100), 84, 106, -238⟩
theorem selection2_0376_checked : selection2_0376.check profile0376 := by decide +kernel

noncomputable def profile0377 : ProfileCell :=
  ⟨(13/98), (21/158),
    [6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨30, 13⟩, ⟨21, 9⟩, ⟨6, 7⟩, ⟨38, 14⟩, ⟨23, 12⟩, ⟨14, 8⟩, ⟨31, 13⟩, ⟨7, 7⟩, ⟨39, 14⟩, ⟨24, 12⟩, ⟨15, 8⟩, ⟨32, 13⟩, ⟨8, 7⟩, ⟨40, 14⟩, ⟨25, 12⟩, ⟨16, 8⟩, ⟨1, 6⟩, ⟨33, 13⟩, ⟨9, 7⟩, ⟨41, 14⟩, ⟨26, 12⟩, ⟨17, 8⟩, ⟨2, 6⟩, ⟨34, 13⟩, ⟨10, 7⟩, ⟨42, 14⟩, ⟨27, 12⟩, ⟨18, 8⟩, ⟨3, 6⟩, ⟨35, 13⟩, ⟨11, 7⟩, ⟨28, 12⟩, ⟨19, 8⟩, ⟨4, 6⟩, ⟨36, 13⟩, ⟨12, 7⟩, ⟨29, 12⟩, ⟨20, 8⟩, ⟨5, 6⟩, ⟨37, 13⟩, ⟨22, 11⟩, ⟨13, 7⟩, ⟨43, 20⟩]⟩
theorem profile0377_checked : profile0377.check := by decide +kernel

noncomputable def selection1_0377 : Selection :=
  ⟨1, -2, 4, (318/25), 257, 154, -998⟩
theorem selection1_0377_checked : selection1_0377.check profile0377 := by decide +kernel

noncomputable def selection2_0377 : Selection :=
  ⟨2, -10, 8, (1257/100), 72, 158, -630⟩
theorem selection2_0377_checked : selection2_0377.check profile0377 := by decide +kernel

noncomputable def profile0378 : ProfileCell :=
  ⟨(21/158), (2/15),
    [6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨43, 21⟩, ⟨30, 13⟩, ⟨21, 9⟩, ⟨6, 7⟩, ⟨38, 14⟩, ⟨23, 12⟩, ⟨14, 8⟩, ⟨31, 13⟩, ⟨7, 7⟩, ⟨39, 14⟩, ⟨24, 12⟩, ⟨15, 8⟩, ⟨32, 13⟩, ⟨8, 7⟩, ⟨40, 14⟩, ⟨25, 12⟩, ⟨16, 8⟩, ⟨1, 6⟩, ⟨33, 13⟩, ⟨9, 7⟩, ⟨41, 14⟩, ⟨26, 12⟩, ⟨17, 8⟩, ⟨2, 6⟩, ⟨34, 13⟩, ⟨10, 7⟩, ⟨42, 14⟩, ⟨27, 12⟩, ⟨18, 8⟩, ⟨3, 6⟩, ⟨35, 13⟩, ⟨11, 7⟩, ⟨28, 12⟩, ⟨19, 8⟩, ⟨4, 6⟩, ⟨36, 13⟩, ⟨12, 7⟩, ⟨29, 12⟩, ⟨20, 8⟩, ⟨5, 6⟩, ⟨37, 13⟩, ⟨22, 11⟩, ⟨13, 7⟩]⟩
theorem profile0378_checked : profile0378.check := by decide +kernel

noncomputable def selection1_0378 : Selection :=
  ⟨1, -2, 4, (1277/100), 420, -98, 898⟩
theorem selection1_0378_checked : selection1_0378.check profile0378 := by decide +kernel

noncomputable def selection2_0378 : Selection :=
  ⟨2, -10, 8, (633/50), 118, -94, 1266⟩
theorem selection2_0378_checked : selection2_0378.check profile0378 := by decide +kernel

noncomputable def profile0379 : ProfileCell :=
  ⟨(2/15), (13/97),
    [6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨13, 8⟩, ⟨22, 12⟩, ⟨37, 14⟩, ⟨6, 7⟩, ⟨21, 9⟩, ⟨30, 13⟩, ⟨43, 21⟩, ⟨14, 8⟩, ⟨23, 12⟩, ⟨38, 14⟩, ⟨7, 7⟩, ⟨31, 13⟩, ⟨15, 8⟩, ⟨24, 12⟩, ⟨39, 14⟩, ⟨8, 7⟩, ⟨32, 13⟩, ⟨1, 6⟩, ⟨16, 8⟩, ⟨25, 12⟩, ⟨40, 14⟩, ⟨9, 7⟩, ⟨33, 13⟩, ⟨2, 6⟩, ⟨17, 8⟩, ⟨26, 12⟩, ⟨41, 14⟩, ⟨10, 7⟩, ⟨34, 13⟩, ⟨3, 6⟩, ⟨18, 8⟩, ⟨27, 12⟩, ⟨42, 14⟩, ⟨11, 7⟩, ⟨35, 13⟩, ⟨4, 6⟩, ⟨19, 8⟩, ⟨28, 12⟩, ⟨12, 7⟩, ⟨36, 13⟩, ⟨5, 6⟩, ⟨20, 8⟩, ⟨29, 12⟩]⟩
theorem profile0379_checked : profile0379.check := by decide +kernel

noncomputable def selection1_0379 : Selection :=
  ⟨1, -3, 4, (221/20), 591, -102, 928⟩
theorem selection1_0379_checked : selection1_0379.check profile0379 := by decide +kernel

noncomputable def selection2_0379 : Selection :=
  ⟨2, -11, 8, (1087/100), 165, -98, 1296⟩
theorem selection2_0379_checked : selection2_0379.check profile0379 := by decide +kernel

noncomputable def profile0380 : ProfileCell :=
  ⟨(13/97), (9/67),
    [6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨29, 13⟩, ⟨13, 8⟩, ⟨22, 12⟩, ⟨37, 14⟩, ⟨6, 7⟩, ⟨21, 9⟩, ⟨30, 13⟩, ⟨14, 8⟩, ⟨43, 21⟩, ⟨23, 12⟩, ⟨38, 14⟩, ⟨7, 7⟩, ⟨31, 13⟩, ⟨15, 8⟩, ⟨24, 12⟩, ⟨39, 14⟩, ⟨8, 7⟩, ⟨32, 13⟩, ⟨1, 6⟩, ⟨16, 8⟩, ⟨25, 12⟩, ⟨40, 14⟩, ⟨9, 7⟩, ⟨33, 13⟩, ⟨2, 6⟩, ⟨17, 8⟩, ⟨26, 12⟩, ⟨41, 14⟩, ⟨10, 7⟩, ⟨34, 13⟩, ⟨3, 6⟩, ⟨18, 8⟩, ⟨27, 12⟩, ⟨42, 14⟩, ⟨11, 7⟩, ⟨35, 13⟩, ⟨4, 6⟩, ⟨19, 8⟩, ⟨28, 12⟩, ⟨12, 7⟩, ⟨36, 13⟩, ⟨5, 6⟩, ⟨20, 8⟩]⟩
theorem profile0380_checked : profile0380.check := by decide +kernel

noncomputable def selection1_0380 : Selection :=
  ⟨1, -3, 4, (111/10), 266, -24, 346⟩
theorem selection1_0380_checked : selection1_0380.check profile0380 := by decide +kernel

noncomputable def selection2_0380 : Selection :=
  ⟨2, -11, 8, (273/25), 74, -20, 714⟩
theorem selection2_0380_checked : selection2_0380.check profile0380 := by decide +kernel

noncomputable def profile0381 : ProfileCell :=
  ⟨(9/67), (7/52),
    [6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 2], [6, 6, 6, 6, 6],
    [⟨20, 9⟩, ⟨29, 13⟩, ⟨13, 8⟩, ⟨22, 12⟩, ⟨37, 14⟩, ⟨6, 7⟩, ⟨21, 9⟩, ⟨30, 13⟩, ⟨14, 8⟩, ⟨23, 12⟩, ⟨43, 21⟩, ⟨38, 14⟩, ⟨7, 7⟩, ⟨31, 13⟩, ⟨15, 8⟩, ⟨24, 12⟩, ⟨39, 14⟩, ⟨8, 7⟩, ⟨32, 13⟩, ⟨1, 6⟩, ⟨16, 8⟩, ⟨25, 12⟩, ⟨40, 14⟩, ⟨9, 7⟩, ⟨33, 13⟩, ⟨2, 6⟩, ⟨17, 8⟩, ⟨26, 12⟩, ⟨41, 14⟩, ⟨10, 7⟩, ⟨34, 13⟩, ⟨3, 6⟩, ⟨18, 8⟩, ⟨27, 12⟩, ⟨42, 14⟩, ⟨11, 7⟩, ⟨35, 13⟩, ⟨4, 6⟩, ⟨19, 8⟩, ⟨28, 12⟩, ⟨12, 7⟩, ⟨36, 13⟩, ⟨5, 6⟩]⟩
theorem profile0381_checked : profile0381.check := by decide +kernel

noncomputable def selection1_0381 : Selection :=
  ⟨1, -3, 4, (1119/100), 250, -78, 748⟩
theorem selection1_0381_checked : selection1_0381.check profile0381 := by decide +kernel

noncomputable def selection2_0381 : Selection :=
  ⟨2, -11, 8, 11, 70, -74, 1116⟩
theorem selection2_0381_checked : selection2_0381.check profile0381 := by decide +kernel

noncomputable def profile0382 : ProfileCell :=
  ⟨(7/52), (5/37),
    [7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 2], [6, 6, 6, 6, 7],
    [⟨5, 7⟩, ⟨36, 14⟩, ⟨20, 9⟩, ⟨29, 13⟩, ⟨13, 8⟩, ⟨22, 12⟩, ⟨6, 7⟩, ⟨37, 14⟩, ⟨21, 9⟩, ⟨30, 13⟩, ⟨14, 8⟩, ⟨23, 12⟩, ⟨7, 7⟩, ⟨38, 14⟩, ⟨43, 21⟩, ⟨31, 13⟩, ⟨15, 8⟩, ⟨24, 12⟩, ⟨8, 7⟩, ⟨39, 14⟩, ⟨1, 6⟩, ⟨32, 13⟩, ⟨16, 8⟩, ⟨25, 12⟩, ⟨9, 7⟩, ⟨40, 14⟩, ⟨2, 6⟩, ⟨33, 13⟩, ⟨17, 8⟩, ⟨26, 12⟩, ⟨10, 7⟩, ⟨41, 14⟩, ⟨3, 6⟩, ⟨34, 13⟩, ⟨18, 8⟩, ⟨27, 12⟩, ⟨11, 7⟩, ⟨42, 14⟩, ⟨4, 6⟩, ⟨35, 13⟩, ⟨19, 8⟩, ⟨28, 12⟩, ⟨12, 7⟩]⟩
theorem profile0382_checked : profile0382.check := by decide +kernel

noncomputable def selection1_0382 : Selection :=
  ⟨1, -2, 4, (1331/100), 538, -50, 540⟩
theorem selection1_0382_checked : selection1_0382.check profile0382 := by decide +kernel

noncomputable def selection2_0382 : Selection :=
  ⟨2, -10, 8, (1311/100), 150, -46, 908⟩
theorem selection2_0382_checked : selection2_0382.check profile0382 := by decide +kernel

noncomputable def profile0383 : ProfileCell :=
  ⟨(5/37), (13/96),
    [7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 2], [6, 6, 6, 6, 7],
    [⟨5, 7⟩, ⟨20, 9⟩, ⟨36, 14⟩, ⟨13, 8⟩, ⟨29, 13⟩, ⟨6, 7⟩, ⟨22, 12⟩, ⟨21, 9⟩, ⟨37, 14⟩, ⟨14, 8⟩, ⟨30, 13⟩, ⟨7, 7⟩, ⟨23, 12⟩, ⟨38, 14⟩, ⟨43, 21⟩, ⟨15, 8⟩, ⟨31, 13⟩, ⟨8, 7⟩, ⟨24, 12⟩, ⟨39, 14⟩, ⟨1, 6⟩, ⟨16, 8⟩, ⟨32, 13⟩, ⟨9, 7⟩, ⟨25, 12⟩, ⟨40, 14⟩, ⟨2, 6⟩, ⟨17, 8⟩, ⟨33, 13⟩, ⟨10, 7⟩, ⟨26, 12⟩, ⟨41, 14⟩, ⟨3, 6⟩, ⟨18, 8⟩, ⟨34, 13⟩, ⟨11, 7⟩, ⟨27, 12⟩, ⟨42, 14⟩, ⟨4, 6⟩, ⟨19, 8⟩, ⟨35, 13⟩, ⟨12, 7⟩, ⟨28, 12⟩]⟩
theorem profile0383_checked : profile0383.check := by decide +kernel

noncomputable def selection1_0383 : Selection :=
  ⟨1, -2, 4, (269/20), 294, -130, 1132⟩
theorem selection1_0383_checked : selection1_0383.check profile0383 := by decide +kernel

noncomputable def selection2_0383 : Selection :=
  ⟨2, -10, 8, (66/5), 82, -126, 1500⟩
theorem selection2_0383_checked : selection2_0383.check profile0383 := by decide +kernel

noncomputable def leaf1_0320 : Block :=
  Block.single profile0320 selection1_0320 profile0320_checked selection1_0320_checked
noncomputable def leaf1_0321 : Block :=
  Block.single profile0321 selection1_0321 profile0321_checked selection1_0321_checked
noncomputable def leaf1_0322 : Block :=
  Block.single profile0322 selection1_0322 profile0322_checked selection1_0322_checked
noncomputable def leaf1_0323 : Block :=
  Block.single profile0323 selection1_0323 profile0323_checked selection1_0323_checked
noncomputable def leaf1_0324 : Block :=
  Block.single profile0324 selection1_0324 profile0324_checked selection1_0324_checked
noncomputable def leaf1_0325 : Block :=
  Block.single profile0325 selection1_0325 profile0325_checked selection1_0325_checked
noncomputable def leaf1_0326 : Block :=
  Block.single profile0326 selection1_0326 profile0326_checked selection1_0326_checked
noncomputable def leaf1_0327 : Block :=
  Block.single profile0327 selection1_0327 profile0327_checked selection1_0327_checked
noncomputable def leaf1_0328 : Block :=
  Block.single profile0328 selection1_0328 profile0328_checked selection1_0328_checked
noncomputable def leaf1_0329 : Block :=
  Block.single profile0329 selection1_0329 profile0329_checked selection1_0329_checked
noncomputable def leaf1_0330 : Block :=
  Block.single profile0330 selection1_0330 profile0330_checked selection1_0330_checked
noncomputable def leaf1_0331 : Block :=
  Block.single profile0331 selection1_0331 profile0331_checked selection1_0331_checked
noncomputable def leaf1_0332 : Block :=
  Block.single profile0332 selection1_0332 profile0332_checked selection1_0332_checked
noncomputable def leaf1_0333 : Block :=
  Block.single profile0333 selection1_0333 profile0333_checked selection1_0333_checked
noncomputable def leaf1_0334 : Block :=
  Block.single profile0334 selection1_0334 profile0334_checked selection1_0334_checked
noncomputable def leaf1_0335 : Block :=
  Block.single profile0335 selection1_0335 profile0335_checked selection1_0335_checked
noncomputable def leaf1_0336 : Block :=
  Block.single profile0336 selection1_0336 profile0336_checked selection1_0336_checked
noncomputable def leaf1_0337 : Block :=
  Block.single profile0337 selection1_0337 profile0337_checked selection1_0337_checked
noncomputable def leaf1_0338 : Block :=
  Block.single profile0338 selection1_0338 profile0338_checked selection1_0338_checked
noncomputable def leaf1_0339 : Block :=
  Block.single profile0339 selection1_0339 profile0339_checked selection1_0339_checked
noncomputable def leaf1_0340 : Block :=
  Block.single profile0340 selection1_0340 profile0340_checked selection1_0340_checked
noncomputable def leaf1_0341 : Block :=
  Block.single profile0341 selection1_0341 profile0341_checked selection1_0341_checked
noncomputable def leaf1_0342 : Block :=
  Block.single profile0342 selection1_0342 profile0342_checked selection1_0342_checked
noncomputable def leaf1_0343 : Block :=
  Block.single profile0343 selection1_0343 profile0343_checked selection1_0343_checked
noncomputable def leaf1_0344 : Block :=
  Block.single profile0344 selection1_0344 profile0344_checked selection1_0344_checked
noncomputable def leaf1_0345 : Block :=
  Block.single profile0345 selection1_0345 profile0345_checked selection1_0345_checked
noncomputable def leaf1_0346 : Block :=
  Block.single profile0346 selection1_0346 profile0346_checked selection1_0346_checked
noncomputable def leaf1_0347 : Block :=
  Block.single profile0347 selection1_0347 profile0347_checked selection1_0347_checked
noncomputable def leaf1_0348 : Block :=
  Block.single profile0348 selection1_0348 profile0348_checked selection1_0348_checked
noncomputable def leaf1_0349 : Block :=
  Block.single profile0349 selection1_0349 profile0349_checked selection1_0349_checked
noncomputable def leaf1_0350 : Block :=
  Block.single profile0350 selection1_0350 profile0350_checked selection1_0350_checked
noncomputable def leaf1_0351 : Block :=
  Block.single profile0351 selection1_0351 profile0351_checked selection1_0351_checked
noncomputable def leaf1_0352 : Block :=
  Block.single profile0352 selection1_0352 profile0352_checked selection1_0352_checked
noncomputable def leaf1_0353 : Block :=
  Block.single profile0353 selection1_0353 profile0353_checked selection1_0353_checked
noncomputable def leaf1_0354 : Block :=
  Block.single profile0354 selection1_0354 profile0354_checked selection1_0354_checked
noncomputable def leaf1_0355 : Block :=
  Block.single profile0355 selection1_0355 profile0355_checked selection1_0355_checked
noncomputable def leaf1_0356 : Block :=
  Block.single profile0356 selection1_0356 profile0356_checked selection1_0356_checked
noncomputable def leaf1_0357 : Block :=
  Block.single profile0357 selection1_0357 profile0357_checked selection1_0357_checked
noncomputable def leaf1_0358 : Block :=
  Block.single profile0358 selection1_0358 profile0358_checked selection1_0358_checked
noncomputable def leaf1_0359 : Block :=
  Block.single profile0359 selection1_0359 profile0359_checked selection1_0359_checked
noncomputable def leaf1_0360 : Block :=
  Block.single profile0360 selection1_0360 profile0360_checked selection1_0360_checked
noncomputable def leaf1_0361 : Block :=
  Block.single profile0361 selection1_0361 profile0361_checked selection1_0361_checked
noncomputable def leaf1_0362 : Block :=
  Block.single profile0362 selection1_0362 profile0362_checked selection1_0362_checked
noncomputable def leaf1_0363 : Block :=
  Block.single profile0363 selection1_0363 profile0363_checked selection1_0363_checked
noncomputable def leaf1_0364 : Block :=
  Block.single profile0364 selection1_0364 profile0364_checked selection1_0364_checked
noncomputable def leaf1_0365 : Block :=
  Block.single profile0365 selection1_0365 profile0365_checked selection1_0365_checked
noncomputable def leaf1_0366 : Block :=
  Block.single profile0366 selection1_0366 profile0366_checked selection1_0366_checked
noncomputable def leaf1_0367 : Block :=
  Block.single profile0367 selection1_0367 profile0367_checked selection1_0367_checked
noncomputable def leaf1_0368 : Block :=
  Block.single profile0368 selection1_0368 profile0368_checked selection1_0368_checked
noncomputable def leaf1_0369 : Block :=
  Block.single profile0369 selection1_0369 profile0369_checked selection1_0369_checked
noncomputable def leaf1_0370 : Block :=
  Block.single profile0370 selection1_0370 profile0370_checked selection1_0370_checked
noncomputable def leaf1_0371 : Block :=
  Block.single profile0371 selection1_0371 profile0371_checked selection1_0371_checked
noncomputable def leaf1_0372 : Block :=
  Block.single profile0372 selection1_0372 profile0372_checked selection1_0372_checked
noncomputable def leaf1_0373 : Block :=
  Block.single profile0373 selection1_0373 profile0373_checked selection1_0373_checked
noncomputable def leaf1_0374 : Block :=
  Block.single profile0374 selection1_0374 profile0374_checked selection1_0374_checked
noncomputable def leaf1_0375 : Block :=
  Block.single profile0375 selection1_0375 profile0375_checked selection1_0375_checked
noncomputable def leaf1_0376 : Block :=
  Block.single profile0376 selection1_0376 profile0376_checked selection1_0376_checked
noncomputable def leaf1_0377 : Block :=
  Block.single profile0377 selection1_0377 profile0377_checked selection1_0377_checked
noncomputable def leaf1_0378 : Block :=
  Block.single profile0378 selection1_0378 profile0378_checked selection1_0378_checked
noncomputable def leaf1_0379 : Block :=
  Block.single profile0379 selection1_0379 profile0379_checked selection1_0379_checked
noncomputable def leaf1_0380 : Block :=
  Block.single profile0380 selection1_0380 profile0380_checked selection1_0380_checked
noncomputable def leaf1_0381 : Block :=
  Block.single profile0381 selection1_0381 profile0381_checked selection1_0381_checked
noncomputable def leaf1_0382 : Block :=
  Block.single profile0382 selection1_0382 profile0382_checked selection1_0382_checked
noncomputable def leaf1_0383 : Block :=
  Block.single profile0383 selection1_0383 profile0383_checked selection1_0383_checked
noncomputable def batch005p1_0_0000 : Block :=
  Block.append leaf1_0320 leaf1_0321 (by decide +kernel)
noncomputable def batch005p1_0_0001 : Block :=
  Block.append leaf1_0322 leaf1_0323 (by decide +kernel)
noncomputable def batch005p1_0_0002 : Block :=
  Block.append leaf1_0324 leaf1_0325 (by decide +kernel)
noncomputable def batch005p1_0_0003 : Block :=
  Block.append leaf1_0326 leaf1_0327 (by decide +kernel)
noncomputable def batch005p1_0_0004 : Block :=
  Block.append leaf1_0328 leaf1_0329 (by decide +kernel)
noncomputable def batch005p1_0_0005 : Block :=
  Block.append leaf1_0330 leaf1_0331 (by decide +kernel)
noncomputable def batch005p1_0_0006 : Block :=
  Block.append leaf1_0332 leaf1_0333 (by decide +kernel)
noncomputable def batch005p1_0_0007 : Block :=
  Block.append leaf1_0334 leaf1_0335 (by decide +kernel)
noncomputable def batch005p1_0_0008 : Block :=
  Block.append leaf1_0336 leaf1_0337 (by decide +kernel)
noncomputable def batch005p1_0_0009 : Block :=
  Block.append leaf1_0338 leaf1_0339 (by decide +kernel)
noncomputable def batch005p1_0_0010 : Block :=
  Block.append leaf1_0340 leaf1_0341 (by decide +kernel)
noncomputable def batch005p1_0_0011 : Block :=
  Block.append leaf1_0342 leaf1_0343 (by decide +kernel)
noncomputable def batch005p1_0_0012 : Block :=
  Block.append leaf1_0344 leaf1_0345 (by decide +kernel)
noncomputable def batch005p1_0_0013 : Block :=
  Block.append leaf1_0346 leaf1_0347 (by decide +kernel)
noncomputable def batch005p1_0_0014 : Block :=
  Block.append leaf1_0348 leaf1_0349 (by decide +kernel)
noncomputable def batch005p1_0_0015 : Block :=
  Block.append leaf1_0350 leaf1_0351 (by decide +kernel)
noncomputable def batch005p1_0_0016 : Block :=
  Block.append leaf1_0352 leaf1_0353 (by decide +kernel)
noncomputable def batch005p1_0_0017 : Block :=
  Block.append leaf1_0354 leaf1_0355 (by decide +kernel)
noncomputable def batch005p1_0_0018 : Block :=
  Block.append leaf1_0356 leaf1_0357 (by decide +kernel)
noncomputable def batch005p1_0_0019 : Block :=
  Block.append leaf1_0358 leaf1_0359 (by decide +kernel)
noncomputable def batch005p1_0_0020 : Block :=
  Block.append leaf1_0360 leaf1_0361 (by decide +kernel)
noncomputable def batch005p1_0_0021 : Block :=
  Block.append leaf1_0362 leaf1_0363 (by decide +kernel)
noncomputable def batch005p1_0_0022 : Block :=
  Block.append leaf1_0364 leaf1_0365 (by decide +kernel)
noncomputable def batch005p1_0_0023 : Block :=
  Block.append leaf1_0366 leaf1_0367 (by decide +kernel)
noncomputable def batch005p1_0_0024 : Block :=
  Block.append leaf1_0368 leaf1_0369 (by decide +kernel)
noncomputable def batch005p1_0_0025 : Block :=
  Block.append leaf1_0370 leaf1_0371 (by decide +kernel)
noncomputable def batch005p1_0_0026 : Block :=
  Block.append leaf1_0372 leaf1_0373 (by decide +kernel)
noncomputable def batch005p1_0_0027 : Block :=
  Block.append leaf1_0374 leaf1_0375 (by decide +kernel)
noncomputable def batch005p1_0_0028 : Block :=
  Block.append leaf1_0376 leaf1_0377 (by decide +kernel)
noncomputable def batch005p1_0_0029 : Block :=
  Block.append leaf1_0378 leaf1_0379 (by decide +kernel)
noncomputable def batch005p1_0_0030 : Block :=
  Block.append leaf1_0380 leaf1_0381 (by decide +kernel)
noncomputable def batch005p1_0_0031 : Block :=
  Block.append leaf1_0382 leaf1_0383 (by decide +kernel)
noncomputable def batch005p1_1_0000 : Block :=
  Block.append batch005p1_0_0000 batch005p1_0_0001 (by decide +kernel)
noncomputable def batch005p1_1_0001 : Block :=
  Block.append batch005p1_0_0002 batch005p1_0_0003 (by decide +kernel)
noncomputable def batch005p1_1_0002 : Block :=
  Block.append batch005p1_0_0004 batch005p1_0_0005 (by decide +kernel)
noncomputable def batch005p1_1_0003 : Block :=
  Block.append batch005p1_0_0006 batch005p1_0_0007 (by decide +kernel)
noncomputable def batch005p1_1_0004 : Block :=
  Block.append batch005p1_0_0008 batch005p1_0_0009 (by decide +kernel)
noncomputable def batch005p1_1_0005 : Block :=
  Block.append batch005p1_0_0010 batch005p1_0_0011 (by decide +kernel)
noncomputable def batch005p1_1_0006 : Block :=
  Block.append batch005p1_0_0012 batch005p1_0_0013 (by decide +kernel)
noncomputable def batch005p1_1_0007 : Block :=
  Block.append batch005p1_0_0014 batch005p1_0_0015 (by decide +kernel)
noncomputable def batch005p1_1_0008 : Block :=
  Block.append batch005p1_0_0016 batch005p1_0_0017 (by decide +kernel)
noncomputable def batch005p1_1_0009 : Block :=
  Block.append batch005p1_0_0018 batch005p1_0_0019 (by decide +kernel)
noncomputable def batch005p1_1_0010 : Block :=
  Block.append batch005p1_0_0020 batch005p1_0_0021 (by decide +kernel)
noncomputable def batch005p1_1_0011 : Block :=
  Block.append batch005p1_0_0022 batch005p1_0_0023 (by decide +kernel)
noncomputable def batch005p1_1_0012 : Block :=
  Block.append batch005p1_0_0024 batch005p1_0_0025 (by decide +kernel)
noncomputable def batch005p1_1_0013 : Block :=
  Block.append batch005p1_0_0026 batch005p1_0_0027 (by decide +kernel)
noncomputable def batch005p1_1_0014 : Block :=
  Block.append batch005p1_0_0028 batch005p1_0_0029 (by decide +kernel)
noncomputable def batch005p1_1_0015 : Block :=
  Block.append batch005p1_0_0030 batch005p1_0_0031 (by decide +kernel)
noncomputable def batch005p1_2_0000 : Block :=
  Block.append batch005p1_1_0000 batch005p1_1_0001 (by decide +kernel)
noncomputable def batch005p1_2_0001 : Block :=
  Block.append batch005p1_1_0002 batch005p1_1_0003 (by decide +kernel)
noncomputable def batch005p1_2_0002 : Block :=
  Block.append batch005p1_1_0004 batch005p1_1_0005 (by decide +kernel)
noncomputable def batch005p1_2_0003 : Block :=
  Block.append batch005p1_1_0006 batch005p1_1_0007 (by decide +kernel)
noncomputable def batch005p1_2_0004 : Block :=
  Block.append batch005p1_1_0008 batch005p1_1_0009 (by decide +kernel)
noncomputable def batch005p1_2_0005 : Block :=
  Block.append batch005p1_1_0010 batch005p1_1_0011 (by decide +kernel)
noncomputable def batch005p1_2_0006 : Block :=
  Block.append batch005p1_1_0012 batch005p1_1_0013 (by decide +kernel)
noncomputable def batch005p1_2_0007 : Block :=
  Block.append batch005p1_1_0014 batch005p1_1_0015 (by decide +kernel)
noncomputable def batch005p1_3_0000 : Block :=
  Block.append batch005p1_2_0000 batch005p1_2_0001 (by decide +kernel)
noncomputable def batch005p1_3_0001 : Block :=
  Block.append batch005p1_2_0002 batch005p1_2_0003 (by decide +kernel)
noncomputable def batch005p1_3_0002 : Block :=
  Block.append batch005p1_2_0004 batch005p1_2_0005 (by decide +kernel)
noncomputable def batch005p1_3_0003 : Block :=
  Block.append batch005p1_2_0006 batch005p1_2_0007 (by decide +kernel)
noncomputable def batch005p1_4_0000 : Block :=
  Block.append batch005p1_3_0000 batch005p1_3_0001 (by decide +kernel)
noncomputable def batch005p1_4_0001 : Block :=
  Block.append batch005p1_3_0002 batch005p1_3_0003 (by decide +kernel)
noncomputable def batch005p1_5_0000 : Block :=
  Block.append batch005p1_4_0000 batch005p1_4_0001 (by decide +kernel)
theorem batch005p1_5_0000_left : batch005p1_5_0000.left = (49/44) := by decide +kernel
theorem batch005p1_5_0000_right : batch005p1_5_0000.right = (109/96) := by decide +kernel
theorem batch005p1_5_0000_units : batch005p1_5_0000.units = 25257 := by decide +kernel
noncomputable def leaf2_0320 : Block :=
  Block.single profile0320 selection2_0320 profile0320_checked selection2_0320_checked
noncomputable def leaf2_0321 : Block :=
  Block.single profile0321 selection2_0321 profile0321_checked selection2_0321_checked
noncomputable def leaf2_0322 : Block :=
  Block.single profile0322 selection2_0322 profile0322_checked selection2_0322_checked
noncomputable def leaf2_0323 : Block :=
  Block.single profile0323 selection2_0323 profile0323_checked selection2_0323_checked
noncomputable def leaf2_0324 : Block :=
  Block.single profile0324 selection2_0324 profile0324_checked selection2_0324_checked
noncomputable def leaf2_0325 : Block :=
  Block.single profile0325 selection2_0325 profile0325_checked selection2_0325_checked
noncomputable def leaf2_0326 : Block :=
  Block.single profile0326 selection2_0326 profile0326_checked selection2_0326_checked
noncomputable def leaf2_0327 : Block :=
  Block.single profile0327 selection2_0327 profile0327_checked selection2_0327_checked
noncomputable def leaf2_0328 : Block :=
  Block.single profile0328 selection2_0328 profile0328_checked selection2_0328_checked
noncomputable def leaf2_0329 : Block :=
  Block.single profile0329 selection2_0329 profile0329_checked selection2_0329_checked
noncomputable def leaf2_0330 : Block :=
  Block.single profile0330 selection2_0330 profile0330_checked selection2_0330_checked
noncomputable def leaf2_0331 : Block :=
  Block.single profile0331 selection2_0331 profile0331_checked selection2_0331_checked
noncomputable def leaf2_0332 : Block :=
  Block.single profile0332 selection2_0332 profile0332_checked selection2_0332_checked
noncomputable def leaf2_0333 : Block :=
  Block.single profile0333 selection2_0333 profile0333_checked selection2_0333_checked
noncomputable def leaf2_0334 : Block :=
  Block.single profile0334 selection2_0334 profile0334_checked selection2_0334_checked
noncomputable def leaf2_0335 : Block :=
  Block.single profile0335 selection2_0335 profile0335_checked selection2_0335_checked
noncomputable def leaf2_0336 : Block :=
  Block.single profile0336 selection2_0336 profile0336_checked selection2_0336_checked
noncomputable def leaf2_0337 : Block :=
  Block.single profile0337 selection2_0337 profile0337_checked selection2_0337_checked
noncomputable def leaf2_0338 : Block :=
  Block.single profile0338 selection2_0338 profile0338_checked selection2_0338_checked
noncomputable def leaf2_0339 : Block :=
  Block.single profile0339 selection2_0339 profile0339_checked selection2_0339_checked
noncomputable def leaf2_0340 : Block :=
  Block.single profile0340 selection2_0340 profile0340_checked selection2_0340_checked
noncomputable def leaf2_0341 : Block :=
  Block.single profile0341 selection2_0341 profile0341_checked selection2_0341_checked
noncomputable def leaf2_0342 : Block :=
  Block.single profile0342 selection2_0342 profile0342_checked selection2_0342_checked
noncomputable def leaf2_0343 : Block :=
  Block.single profile0343 selection2_0343 profile0343_checked selection2_0343_checked
noncomputable def leaf2_0344 : Block :=
  Block.single profile0344 selection2_0344 profile0344_checked selection2_0344_checked
noncomputable def leaf2_0345 : Block :=
  Block.single profile0345 selection2_0345 profile0345_checked selection2_0345_checked
noncomputable def leaf2_0346 : Block :=
  Block.single profile0346 selection2_0346 profile0346_checked selection2_0346_checked
noncomputable def leaf2_0347 : Block :=
  Block.single profile0347 selection2_0347 profile0347_checked selection2_0347_checked
noncomputable def leaf2_0348 : Block :=
  Block.single profile0348 selection2_0348 profile0348_checked selection2_0348_checked
noncomputable def leaf2_0349 : Block :=
  Block.single profile0349 selection2_0349 profile0349_checked selection2_0349_checked
noncomputable def leaf2_0350 : Block :=
  Block.single profile0350 selection2_0350 profile0350_checked selection2_0350_checked
noncomputable def leaf2_0351 : Block :=
  Block.single profile0351 selection2_0351 profile0351_checked selection2_0351_checked
noncomputable def leaf2_0352 : Block :=
  Block.single profile0352 selection2_0352 profile0352_checked selection2_0352_checked
noncomputable def leaf2_0353 : Block :=
  Block.single profile0353 selection2_0353 profile0353_checked selection2_0353_checked
noncomputable def leaf2_0354 : Block :=
  Block.single profile0354 selection2_0354 profile0354_checked selection2_0354_checked
noncomputable def leaf2_0355 : Block :=
  Block.single profile0355 selection2_0355 profile0355_checked selection2_0355_checked
noncomputable def leaf2_0356 : Block :=
  Block.single profile0356 selection2_0356 profile0356_checked selection2_0356_checked
noncomputable def leaf2_0357 : Block :=
  Block.single profile0357 selection2_0357 profile0357_checked selection2_0357_checked
noncomputable def leaf2_0358 : Block :=
  Block.single profile0358 selection2_0358 profile0358_checked selection2_0358_checked
noncomputable def leaf2_0359 : Block :=
  Block.single profile0359 selection2_0359 profile0359_checked selection2_0359_checked
noncomputable def leaf2_0360 : Block :=
  Block.single profile0360 selection2_0360 profile0360_checked selection2_0360_checked
noncomputable def leaf2_0361 : Block :=
  Block.single profile0361 selection2_0361 profile0361_checked selection2_0361_checked
noncomputable def leaf2_0362 : Block :=
  Block.single profile0362 selection2_0362 profile0362_checked selection2_0362_checked
noncomputable def leaf2_0363 : Block :=
  Block.single profile0363 selection2_0363 profile0363_checked selection2_0363_checked
noncomputable def leaf2_0364 : Block :=
  Block.single profile0364 selection2_0364 profile0364_checked selection2_0364_checked
noncomputable def leaf2_0365 : Block :=
  Block.single profile0365 selection2_0365 profile0365_checked selection2_0365_checked
noncomputable def leaf2_0366 : Block :=
  Block.single profile0366 selection2_0366 profile0366_checked selection2_0366_checked
noncomputable def leaf2_0367 : Block :=
  Block.single profile0367 selection2_0367 profile0367_checked selection2_0367_checked
noncomputable def leaf2_0368 : Block :=
  Block.single profile0368 selection2_0368 profile0368_checked selection2_0368_checked
noncomputable def leaf2_0369 : Block :=
  Block.single profile0369 selection2_0369 profile0369_checked selection2_0369_checked
noncomputable def leaf2_0370 : Block :=
  Block.single profile0370 selection2_0370 profile0370_checked selection2_0370_checked
noncomputable def leaf2_0371 : Block :=
  Block.single profile0371 selection2_0371 profile0371_checked selection2_0371_checked
noncomputable def leaf2_0372 : Block :=
  Block.single profile0372 selection2_0372 profile0372_checked selection2_0372_checked
noncomputable def leaf2_0373 : Block :=
  Block.single profile0373 selection2_0373 profile0373_checked selection2_0373_checked
noncomputable def leaf2_0374 : Block :=
  Block.single profile0374 selection2_0374 profile0374_checked selection2_0374_checked
noncomputable def leaf2_0375 : Block :=
  Block.single profile0375 selection2_0375 profile0375_checked selection2_0375_checked
noncomputable def leaf2_0376 : Block :=
  Block.single profile0376 selection2_0376 profile0376_checked selection2_0376_checked
noncomputable def leaf2_0377 : Block :=
  Block.single profile0377 selection2_0377 profile0377_checked selection2_0377_checked
noncomputable def leaf2_0378 : Block :=
  Block.single profile0378 selection2_0378 profile0378_checked selection2_0378_checked
noncomputable def leaf2_0379 : Block :=
  Block.single profile0379 selection2_0379 profile0379_checked selection2_0379_checked
noncomputable def leaf2_0380 : Block :=
  Block.single profile0380 selection2_0380 profile0380_checked selection2_0380_checked
noncomputable def leaf2_0381 : Block :=
  Block.single profile0381 selection2_0381 profile0381_checked selection2_0381_checked
noncomputable def leaf2_0382 : Block :=
  Block.single profile0382 selection2_0382 profile0382_checked selection2_0382_checked
noncomputable def leaf2_0383 : Block :=
  Block.single profile0383 selection2_0383 profile0383_checked selection2_0383_checked
noncomputable def batch005p2_0_0000 : Block :=
  Block.append leaf2_0320 leaf2_0321 (by decide +kernel)
noncomputable def batch005p2_0_0001 : Block :=
  Block.append leaf2_0322 leaf2_0323 (by decide +kernel)
noncomputable def batch005p2_0_0002 : Block :=
  Block.append leaf2_0324 leaf2_0325 (by decide +kernel)
noncomputable def batch005p2_0_0003 : Block :=
  Block.append leaf2_0326 leaf2_0327 (by decide +kernel)
noncomputable def batch005p2_0_0004 : Block :=
  Block.append leaf2_0328 leaf2_0329 (by decide +kernel)
noncomputable def batch005p2_0_0005 : Block :=
  Block.append leaf2_0330 leaf2_0331 (by decide +kernel)
noncomputable def batch005p2_0_0006 : Block :=
  Block.append leaf2_0332 leaf2_0333 (by decide +kernel)
noncomputable def batch005p2_0_0007 : Block :=
  Block.append leaf2_0334 leaf2_0335 (by decide +kernel)
noncomputable def batch005p2_0_0008 : Block :=
  Block.append leaf2_0336 leaf2_0337 (by decide +kernel)
noncomputable def batch005p2_0_0009 : Block :=
  Block.append leaf2_0338 leaf2_0339 (by decide +kernel)
noncomputable def batch005p2_0_0010 : Block :=
  Block.append leaf2_0340 leaf2_0341 (by decide +kernel)
noncomputable def batch005p2_0_0011 : Block :=
  Block.append leaf2_0342 leaf2_0343 (by decide +kernel)
noncomputable def batch005p2_0_0012 : Block :=
  Block.append leaf2_0344 leaf2_0345 (by decide +kernel)
noncomputable def batch005p2_0_0013 : Block :=
  Block.append leaf2_0346 leaf2_0347 (by decide +kernel)
noncomputable def batch005p2_0_0014 : Block :=
  Block.append leaf2_0348 leaf2_0349 (by decide +kernel)
noncomputable def batch005p2_0_0015 : Block :=
  Block.append leaf2_0350 leaf2_0351 (by decide +kernel)
noncomputable def batch005p2_0_0016 : Block :=
  Block.append leaf2_0352 leaf2_0353 (by decide +kernel)
noncomputable def batch005p2_0_0017 : Block :=
  Block.append leaf2_0354 leaf2_0355 (by decide +kernel)
noncomputable def batch005p2_0_0018 : Block :=
  Block.append leaf2_0356 leaf2_0357 (by decide +kernel)
noncomputable def batch005p2_0_0019 : Block :=
  Block.append leaf2_0358 leaf2_0359 (by decide +kernel)
noncomputable def batch005p2_0_0020 : Block :=
  Block.append leaf2_0360 leaf2_0361 (by decide +kernel)
noncomputable def batch005p2_0_0021 : Block :=
  Block.append leaf2_0362 leaf2_0363 (by decide +kernel)
noncomputable def batch005p2_0_0022 : Block :=
  Block.append leaf2_0364 leaf2_0365 (by decide +kernel)
noncomputable def batch005p2_0_0023 : Block :=
  Block.append leaf2_0366 leaf2_0367 (by decide +kernel)
noncomputable def batch005p2_0_0024 : Block :=
  Block.append leaf2_0368 leaf2_0369 (by decide +kernel)
noncomputable def batch005p2_0_0025 : Block :=
  Block.append leaf2_0370 leaf2_0371 (by decide +kernel)
noncomputable def batch005p2_0_0026 : Block :=
  Block.append leaf2_0372 leaf2_0373 (by decide +kernel)
noncomputable def batch005p2_0_0027 : Block :=
  Block.append leaf2_0374 leaf2_0375 (by decide +kernel)
noncomputable def batch005p2_0_0028 : Block :=
  Block.append leaf2_0376 leaf2_0377 (by decide +kernel)
noncomputable def batch005p2_0_0029 : Block :=
  Block.append leaf2_0378 leaf2_0379 (by decide +kernel)
noncomputable def batch005p2_0_0030 : Block :=
  Block.append leaf2_0380 leaf2_0381 (by decide +kernel)
noncomputable def batch005p2_0_0031 : Block :=
  Block.append leaf2_0382 leaf2_0383 (by decide +kernel)
noncomputable def batch005p2_1_0000 : Block :=
  Block.append batch005p2_0_0000 batch005p2_0_0001 (by decide +kernel)
noncomputable def batch005p2_1_0001 : Block :=
  Block.append batch005p2_0_0002 batch005p2_0_0003 (by decide +kernel)
noncomputable def batch005p2_1_0002 : Block :=
  Block.append batch005p2_0_0004 batch005p2_0_0005 (by decide +kernel)
noncomputable def batch005p2_1_0003 : Block :=
  Block.append batch005p2_0_0006 batch005p2_0_0007 (by decide +kernel)
noncomputable def batch005p2_1_0004 : Block :=
  Block.append batch005p2_0_0008 batch005p2_0_0009 (by decide +kernel)
noncomputable def batch005p2_1_0005 : Block :=
  Block.append batch005p2_0_0010 batch005p2_0_0011 (by decide +kernel)
noncomputable def batch005p2_1_0006 : Block :=
  Block.append batch005p2_0_0012 batch005p2_0_0013 (by decide +kernel)
noncomputable def batch005p2_1_0007 : Block :=
  Block.append batch005p2_0_0014 batch005p2_0_0015 (by decide +kernel)
noncomputable def batch005p2_1_0008 : Block :=
  Block.append batch005p2_0_0016 batch005p2_0_0017 (by decide +kernel)
noncomputable def batch005p2_1_0009 : Block :=
  Block.append batch005p2_0_0018 batch005p2_0_0019 (by decide +kernel)
noncomputable def batch005p2_1_0010 : Block :=
  Block.append batch005p2_0_0020 batch005p2_0_0021 (by decide +kernel)
noncomputable def batch005p2_1_0011 : Block :=
  Block.append batch005p2_0_0022 batch005p2_0_0023 (by decide +kernel)
noncomputable def batch005p2_1_0012 : Block :=
  Block.append batch005p2_0_0024 batch005p2_0_0025 (by decide +kernel)
noncomputable def batch005p2_1_0013 : Block :=
  Block.append batch005p2_0_0026 batch005p2_0_0027 (by decide +kernel)
noncomputable def batch005p2_1_0014 : Block :=
  Block.append batch005p2_0_0028 batch005p2_0_0029 (by decide +kernel)
noncomputable def batch005p2_1_0015 : Block :=
  Block.append batch005p2_0_0030 batch005p2_0_0031 (by decide +kernel)
noncomputable def batch005p2_2_0000 : Block :=
  Block.append batch005p2_1_0000 batch005p2_1_0001 (by decide +kernel)
noncomputable def batch005p2_2_0001 : Block :=
  Block.append batch005p2_1_0002 batch005p2_1_0003 (by decide +kernel)
noncomputable def batch005p2_2_0002 : Block :=
  Block.append batch005p2_1_0004 batch005p2_1_0005 (by decide +kernel)
noncomputable def batch005p2_2_0003 : Block :=
  Block.append batch005p2_1_0006 batch005p2_1_0007 (by decide +kernel)
noncomputable def batch005p2_2_0004 : Block :=
  Block.append batch005p2_1_0008 batch005p2_1_0009 (by decide +kernel)
noncomputable def batch005p2_2_0005 : Block :=
  Block.append batch005p2_1_0010 batch005p2_1_0011 (by decide +kernel)
noncomputable def batch005p2_2_0006 : Block :=
  Block.append batch005p2_1_0012 batch005p2_1_0013 (by decide +kernel)
noncomputable def batch005p2_2_0007 : Block :=
  Block.append batch005p2_1_0014 batch005p2_1_0015 (by decide +kernel)
noncomputable def batch005p2_3_0000 : Block :=
  Block.append batch005p2_2_0000 batch005p2_2_0001 (by decide +kernel)
noncomputable def batch005p2_3_0001 : Block :=
  Block.append batch005p2_2_0002 batch005p2_2_0003 (by decide +kernel)
noncomputable def batch005p2_3_0002 : Block :=
  Block.append batch005p2_2_0004 batch005p2_2_0005 (by decide +kernel)
noncomputable def batch005p2_3_0003 : Block :=
  Block.append batch005p2_2_0006 batch005p2_2_0007 (by decide +kernel)
noncomputable def batch005p2_4_0000 : Block :=
  Block.append batch005p2_3_0000 batch005p2_3_0001 (by decide +kernel)
noncomputable def batch005p2_4_0001 : Block :=
  Block.append batch005p2_3_0002 batch005p2_3_0003 (by decide +kernel)
noncomputable def batch005p2_5_0000 : Block :=
  Block.append batch005p2_4_0000 batch005p2_4_0001 (by decide +kernel)
theorem batch005p2_5_0000_left : batch005p2_5_0000.left = (93/44) := by decide +kernel
theorem batch005p2_5_0000_right : batch005p2_5_0000.right = (205/96) := by decide +kernel
theorem batch005p2_5_0000_units : batch005p2_5_0000.units = 6961 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
