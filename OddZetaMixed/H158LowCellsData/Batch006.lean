import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile0384 : ProfileCell :=
  ⟨(13/96), (8/59),
    [7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 2], [6, 6, 6, 6, 7],
    [⟨28, 13⟩, ⟨5, 7⟩, ⟨20, 9⟩, ⟨36, 14⟩, ⟨13, 8⟩, ⟨29, 13⟩, ⟨6, 7⟩, ⟨22, 12⟩, ⟨21, 9⟩, ⟨37, 14⟩, ⟨14, 8⟩, ⟨30, 13⟩, ⟨7, 7⟩, ⟨23, 12⟩, ⟨38, 14⟩, ⟨15, 8⟩, ⟨43, 21⟩, ⟨31, 13⟩, ⟨8, 7⟩, ⟨24, 12⟩, ⟨39, 14⟩, ⟨1, 6⟩, ⟨16, 8⟩, ⟨32, 13⟩, ⟨9, 7⟩, ⟨25, 12⟩, ⟨40, 14⟩, ⟨2, 6⟩, ⟨17, 8⟩, ⟨33, 13⟩, ⟨10, 7⟩, ⟨26, 12⟩, ⟨41, 14⟩, ⟨3, 6⟩, ⟨18, 8⟩, ⟨34, 13⟩, ⟨11, 7⟩, ⟨27, 12⟩, ⟨42, 14⟩, ⟨4, 6⟩, ⟨19, 8⟩, ⟨35, 13⟩, ⟨12, 7⟩]⟩
theorem profile0384_checked : profile0384.check := by decide +kernel

noncomputable def selection1_0384 : Selection :=
  ⟨1, -2, 4, (27/2), 185, -52, 556⟩
theorem selection1_0384_checked : selection1_0384.check profile0384 := by decide +kernel

noncomputable def selection2_0384 : Selection :=
  ⟨2, -10, 8, (331/25), 52, -48, 924⟩
theorem selection2_0384_checked : selection2_0384.check profile0384 := by decide +kernel

noncomputable def profile0385 : ProfileCell :=
  ⟨(8/59), (14/103),
    [7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 2], [6, 6, 6, 6, 7],
    [⟨12, 8⟩, ⟨28, 13⟩, ⟨5, 7⟩, ⟨20, 9⟩, ⟨36, 14⟩, ⟨13, 8⟩, ⟨29, 13⟩, ⟨6, 7⟩, ⟨22, 12⟩, ⟨21, 9⟩, ⟨37, 14⟩, ⟨14, 8⟩, ⟨30, 13⟩, ⟨7, 7⟩, ⟨23, 12⟩, ⟨38, 14⟩, ⟨15, 8⟩, ⟨31, 13⟩, ⟨43, 21⟩, ⟨8, 7⟩, ⟨24, 12⟩, ⟨1, 6⟩, ⟨39, 14⟩, ⟨16, 8⟩, ⟨32, 13⟩, ⟨9, 7⟩, ⟨25, 12⟩, ⟨2, 6⟩, ⟨40, 14⟩, ⟨17, 8⟩, ⟨33, 13⟩, ⟨10, 7⟩, ⟨26, 12⟩, ⟨3, 6⟩, ⟨41, 14⟩, ⟨18, 8⟩, ⟨34, 13⟩, ⟨11, 7⟩, ⟨27, 12⟩, ⟨4, 6⟩, ⟨42, 14⟩, ⟨19, 8⟩, ⟨35, 13⟩]⟩
theorem profile0385_checked : profile0385.check := by decide +kernel

noncomputable def selection1_0385 : Selection :=
  ⟨1, -2, 4, (683/50), 349, -132, 1146⟩
theorem selection1_0385_checked : selection1_0385.check profile0385 := by decide +kernel

noncomputable def selection2_0385 : Selection :=
  ⟨2, -10, 8, (334/25), 97, -128, 1514⟩
theorem selection2_0385_checked : selection2_0385.check profile0385 := by decide +kernel

noncomputable def profile0386 : ProfileCell :=
  ⟨(14/103), (3/22),
    [7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 2], [6, 6, 6, 6, 7],
    [⟨35, 14⟩, ⟨12, 8⟩, ⟨28, 13⟩, ⟨5, 7⟩, ⟨20, 9⟩, ⟨36, 14⟩, ⟨13, 8⟩, ⟨29, 13⟩, ⟨6, 7⟩, ⟨22, 12⟩, ⟨21, 9⟩, ⟨37, 14⟩, ⟨14, 8⟩, ⟨30, 13⟩, ⟨7, 7⟩, ⟨23, 12⟩, ⟨38, 14⟩, ⟨15, 8⟩, ⟨31, 13⟩, ⟨8, 7⟩, ⟨43, 21⟩, ⟨24, 12⟩, ⟨1, 6⟩, ⟨39, 14⟩, ⟨16, 8⟩, ⟨32, 13⟩, ⟨9, 7⟩, ⟨25, 12⟩, ⟨2, 6⟩, ⟨40, 14⟩, ⟨17, 8⟩, ⟨33, 13⟩, ⟨10, 7⟩, ⟨26, 12⟩, ⟨3, 6⟩, ⟨41, 14⟩, ⟨18, 8⟩, ⟨34, 13⟩, ⟨11, 7⟩, ⟨27, 12⟩, ⟨4, 6⟩, ⟨42, 14⟩, ⟨19, 8⟩]⟩
theorem profile0386_checked : profile0386.check := by decide +kernel

noncomputable def selection1_0386 : Selection :=
  ⟨1, -1, 4, (343/25), 470, -21, 296⟩
theorem selection1_0386_checked : selection1_0386.check profile0386 := by decide +kernel

noncomputable def selection2_0386 : Selection :=
  ⟨2, -9, 8, (1343/100), 130, -21, 664⟩
theorem selection2_0386_checked : selection2_0386.check profile0386 := by decide +kernel

noncomputable def profile0387 : ProfileCell :=
  ⟨(3/22), (13/95),
    [7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3], [6, 6, 6, 6, 7],
    [⟨19, 9⟩, ⟨42, 15⟩, ⟨12, 8⟩, ⟨35, 14⟩, ⟨5, 7⟩, ⟨28, 13⟩, ⟨20, 9⟩, ⟨13, 8⟩, ⟨36, 14⟩, ⟨6, 7⟩, ⟨29, 13⟩, ⟨21, 9⟩, ⟨22, 12⟩, ⟨14, 8⟩, ⟨37, 14⟩, ⟨7, 7⟩, ⟨30, 13⟩, ⟨23, 12⟩, ⟨15, 8⟩, ⟨38, 14⟩, ⟨8, 7⟩, ⟨31, 13⟩, ⟨1, 6⟩, ⟨24, 12⟩, ⟨43, 21⟩, ⟨16, 8⟩, ⟨39, 14⟩, ⟨9, 7⟩, ⟨32, 13⟩, ⟨2, 6⟩, ⟨25, 12⟩, ⟨17, 8⟩, ⟨40, 14⟩, ⟨10, 7⟩, ⟨33, 13⟩, ⟨3, 6⟩, ⟨26, 12⟩, ⟨18, 8⟩, ⟨41, 14⟩, ⟨11, 7⟩, ⟨34, 13⟩, ⟨4, 6⟩, ⟨27, 12⟩]⟩
theorem profile0387_checked : profile0387.check := by decide +kernel

noncomputable def selection1_0387 : Selection :=
  ⟨1, -3, 4, (247/25), 366, -78, 714⟩
theorem selection1_0387_checked : selection1_0387.check profile0387 := by decide +kernel

noncomputable def selection2_0387 : Selection :=
  ⟨2, -11, 8, (191/20), 101, -78, 1082⟩
theorem selection2_0387_checked : selection2_0387.check profile0387 := by decide +kernel

noncomputable def profile0388 : ProfileCell :=
  ⟨(13/95), (7/51),
    [7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3], [6, 6, 6, 6, 7],
    [⟨27, 13⟩, ⟨19, 9⟩, ⟨42, 15⟩, ⟨12, 8⟩, ⟨35, 14⟩, ⟨5, 7⟩, ⟨28, 13⟩, ⟨20, 9⟩, ⟨13, 8⟩, ⟨36, 14⟩, ⟨6, 7⟩, ⟨29, 13⟩, ⟨21, 9⟩, ⟨22, 12⟩, ⟨14, 8⟩, ⟨37, 14⟩, ⟨7, 7⟩, ⟨30, 13⟩, ⟨23, 12⟩, ⟨15, 8⟩, ⟨38, 14⟩, ⟨8, 7⟩, ⟨31, 13⟩, ⟨1, 6⟩, ⟨24, 12⟩, ⟨16, 8⟩, ⟨43, 21⟩, ⟨39, 14⟩, ⟨9, 7⟩, ⟨32, 13⟩, ⟨2, 6⟩, ⟨25, 12⟩, ⟨17, 8⟩, ⟨40, 14⟩, ⟨10, 7⟩, ⟨33, 13⟩, ⟨3, 6⟩, ⟨26, 12⟩, ⟨18, 8⟩, ⟨41, 14⟩, ⟨11, 7⟩, ⟨34, 13⟩, ⟨4, 6⟩]⟩
theorem profile0388_checked : profile0388.check := by decide +kernel

noncomputable def selection1_0388 : Selection :=
  ⟨1, -3, 4, (99/10), 317, 0, 144⟩
theorem selection1_0388_checked : selection1_0388.check profile0388 := by decide +kernel

noncomputable def selection2_0388 : Selection :=
  ⟨2, -11, 8, (48/5), 87, 0, 512⟩
theorem selection2_0388_checked : selection2_0388.check profile0388 := by decide +kernel

noncomputable def profile0389 : ProfileCell :=
  ⟨(7/51), (15/109),
    [7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3], [6, 6, 6, 7, 7],
    [⟨4, 7⟩, ⟨34, 14⟩, ⟨27, 13⟩, ⟨19, 9⟩, ⟨12, 8⟩, ⟨42, 15⟩, ⟨5, 7⟩, ⟨35, 14⟩, ⟨28, 13⟩, ⟨20, 9⟩, ⟨13, 8⟩, ⟨6, 7⟩, ⟨36, 14⟩, ⟨29, 13⟩, ⟨21, 9⟩, ⟨22, 12⟩, ⟨14, 8⟩, ⟨7, 7⟩, ⟨37, 14⟩, ⟨30, 13⟩, ⟨23, 12⟩, ⟨15, 8⟩, ⟨8, 7⟩, ⟨38, 14⟩, ⟨1, 6⟩, ⟨31, 13⟩, ⟨24, 12⟩, ⟨16, 8⟩, ⟨9, 7⟩, ⟨39, 14⟩, ⟨43, 21⟩, ⟨2, 6⟩, ⟨32, 13⟩, ⟨25, 12⟩, ⟨17, 8⟩, ⟨10, 7⟩, ⟨40, 14⟩, ⟨3, 6⟩, ⟨33, 13⟩, ⟨26, 12⟩, ⟨18, 8⟩, ⟨11, 7⟩, ⟨41, 14⟩]⟩
theorem profile0389_checked : profile0389.check := by decide +kernel

noncomputable def selection1_0389 : Selection :=
  ⟨1, -1, 4, (348/25), 388, 0, 144⟩
theorem selection1_0389_checked : selection1_0389.check profile0389 := by decide +kernel

noncomputable def selection2_0389 : Selection :=
  ⟨2, -9, 8, (341/25), 108, 0, 512⟩
theorem selection2_0389_checked : selection2_0389.check profile0389 := by decide +kernel

noncomputable def profile0390 : ProfileCell :=
  ⟨(15/109), (4/29),
    [7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3], [6, 6, 6, 7, 7],
    [⟨41, 15⟩, ⟨4, 7⟩, ⟨34, 14⟩, ⟨27, 13⟩, ⟨19, 9⟩, ⟨12, 8⟩, ⟨42, 15⟩, ⟨5, 7⟩, ⟨35, 14⟩, ⟨28, 13⟩, ⟨20, 9⟩, ⟨13, 8⟩, ⟨6, 7⟩, ⟨36, 14⟩, ⟨29, 13⟩, ⟨21, 9⟩, ⟨22, 12⟩, ⟨14, 8⟩, ⟨7, 7⟩, ⟨37, 14⟩, ⟨30, 13⟩, ⟨23, 12⟩, ⟨15, 8⟩, ⟨8, 7⟩, ⟨38, 14⟩, ⟨1, 6⟩, ⟨31, 13⟩, ⟨24, 12⟩, ⟨16, 8⟩, ⟨9, 7⟩, ⟨39, 14⟩, ⟨2, 6⟩, ⟨43, 21⟩, ⟨32, 13⟩, ⟨25, 12⟩, ⟨17, 8⟩, ⟨10, 7⟩, ⟨40, 14⟩, ⟨3, 6⟩, ⟨33, 13⟩, ⟨26, 12⟩, ⟨18, 8⟩, ⟨11, 7⟩]⟩
theorem profile0390_checked : profile0390.check := by decide +kernel

noncomputable def selection1_0390 : Selection :=
  ⟨1, -1, 4, (348/25), 341, 60, -292⟩
theorem selection1_0390_checked : selection1_0390.check profile0390 := by decide +kernel

noncomputable def selection2_0390 : Selection :=
  ⟨2, -9, 8, (273/20), 95, 60, 76⟩
theorem selection2_0390_checked : selection2_0390.check profile0390 := by decide +kernel

noncomputable def profile0391 : ProfileCell :=
  ⟨(4/29), (13/94),
    [7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3], [6, 6, 6, 7, 7],
    [⟨11, 8⟩, ⟨4, 7⟩, ⟨41, 15⟩, ⟨34, 14⟩, ⟨19, 9⟩, ⟨27, 13⟩, ⟨12, 8⟩, ⟨5, 7⟩, ⟨42, 15⟩, ⟨35, 14⟩, ⟨20, 9⟩, ⟨28, 13⟩, ⟨13, 8⟩, ⟨6, 7⟩, ⟨36, 14⟩, ⟨21, 9⟩, ⟨29, 13⟩, ⟨14, 8⟩, ⟨22, 12⟩, ⟨7, 7⟩, ⟨37, 14⟩, ⟨30, 13⟩, ⟨15, 8⟩, ⟨23, 12⟩, ⟨8, 7⟩, ⟨1, 6⟩, ⟨38, 14⟩, ⟨31, 13⟩, ⟨16, 8⟩, ⟨24, 12⟩, ⟨9, 7⟩, ⟨2, 6⟩, ⟨39, 14⟩, ⟨32, 13⟩, ⟨43, 21⟩, ⟨17, 8⟩, ⟨25, 12⟩, ⟨10, 7⟩, ⟨3, 6⟩, ⟨40, 14⟩, ⟨33, 13⟩, ⟨18, 8⟩, ⟨26, 12⟩]⟩
theorem profile0391_checked : profile0391.check := by decide +kernel

noncomputable def selection1_0391 : Selection :=
  ⟨1, -1, 4, (139/10), 394, 4, 114⟩
theorem selection1_0391_checked : selection1_0391.check profile0391 := by decide +kernel

noncomputable def selection2_0391 : Selection :=
  ⟨2, -9, 8, (1369/100), 110, 4, 482⟩
theorem selection2_0391_checked : selection2_0391.check profile0391 := by decide +kernel

noncomputable def profile0392 : ProfileCell :=
  ⟨(13/94), (9/65),
    [7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3], [6, 6, 6, 7, 7],
    [⟨26, 13⟩, ⟨11, 8⟩, ⟨4, 7⟩, ⟨41, 15⟩, ⟨34, 14⟩, ⟨19, 9⟩, ⟨27, 13⟩, ⟨12, 8⟩, ⟨5, 7⟩, ⟨42, 15⟩, ⟨35, 14⟩, ⟨20, 9⟩, ⟨28, 13⟩, ⟨13, 8⟩, ⟨6, 7⟩, ⟨36, 14⟩, ⟨21, 9⟩, ⟨29, 13⟩, ⟨14, 8⟩, ⟨22, 12⟩, ⟨7, 7⟩, ⟨37, 14⟩, ⟨30, 13⟩, ⟨15, 8⟩, ⟨23, 12⟩, ⟨8, 7⟩, ⟨1, 6⟩, ⟨38, 14⟩, ⟨31, 13⟩, ⟨16, 8⟩, ⟨24, 12⟩, ⟨9, 7⟩, ⟨2, 6⟩, ⟨39, 14⟩, ⟨32, 13⟩, ⟨17, 8⟩, ⟨43, 21⟩, ⟨25, 12⟩, ⟨10, 7⟩, ⟨3, 6⟩, ⟨40, 14⟩, ⟨33, 13⟩, ⟨18, 8⟩]⟩
theorem profile0392_checked : profile0392.check := by decide +kernel

noncomputable def selection1_0392 : Selection :=
  ⟨1, -1, 4, (139/10), 176, 56, -262⟩
theorem selection1_0392_checked : selection1_0392.check profile0392 := by decide +kernel

noncomputable def selection2_0392 : Selection :=
  ⟨2, -9, 8, (137/10), 50, 56, 106⟩
theorem selection2_0392_checked : selection2_0392.check profile0392 := by decide +kernel

noncomputable def profile0393 : ProfileCell :=
  ⟨(9/65), (14/101),
    [7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3], [6, 6, 6, 7, 7],
    [⟨18, 9⟩, ⟨26, 13⟩, ⟨11, 8⟩, ⟨4, 7⟩, ⟨41, 15⟩, ⟨34, 14⟩, ⟨19, 9⟩, ⟨27, 13⟩, ⟨12, 8⟩, ⟨5, 7⟩, ⟨42, 15⟩, ⟨35, 14⟩, ⟨20, 9⟩, ⟨28, 13⟩, ⟨13, 8⟩, ⟨6, 7⟩, ⟨36, 14⟩, ⟨21, 9⟩, ⟨29, 13⟩, ⟨14, 8⟩, ⟨22, 12⟩, ⟨7, 7⟩, ⟨37, 14⟩, ⟨30, 13⟩, ⟨15, 8⟩, ⟨23, 12⟩, ⟨8, 7⟩, ⟨1, 6⟩, ⟨38, 14⟩, ⟨31, 13⟩, ⟨16, 8⟩, ⟨24, 12⟩, ⟨9, 7⟩, ⟨2, 6⟩, ⟨39, 14⟩, ⟨32, 13⟩, ⟨17, 8⟩, ⟨25, 12⟩, ⟨43, 21⟩, ⟨10, 7⟩, ⟨3, 6⟩, ⟨40, 14⟩, ⟨33, 13⟩]⟩
theorem profile0393_checked : profile0393.check := by decide +kernel

noncomputable def selection1_0393 : Selection :=
  ⟨1, -1, 4, (347/25), 164, 20, -2⟩
theorem selection1_0393_checked : selection1_0393.check profile0393 := by decide +kernel

noncomputable def selection2_0393 : Selection :=
  ⟨2, -9, 8, (1371/100), 46, 20, 366⟩
theorem selection2_0393_checked : selection2_0393.check profile0393 := by decide +kernel

noncomputable def profile0394 : ProfileCell :=
  ⟨(14/101), (5/36),
    [7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3], [6, 6, 6, 7, 7],
    [⟨33, 14⟩, ⟨18, 9⟩, ⟨26, 13⟩, ⟨11, 8⟩, ⟨4, 7⟩, ⟨41, 15⟩, ⟨34, 14⟩, ⟨19, 9⟩, ⟨27, 13⟩, ⟨12, 8⟩, ⟨5, 7⟩, ⟨42, 15⟩, ⟨35, 14⟩, ⟨20, 9⟩, ⟨28, 13⟩, ⟨13, 8⟩, ⟨6, 7⟩, ⟨36, 14⟩, ⟨21, 9⟩, ⟨29, 13⟩, ⟨14, 8⟩, ⟨22, 12⟩, ⟨7, 7⟩, ⟨37, 14⟩, ⟨30, 13⟩, ⟨15, 8⟩, ⟨23, 12⟩, ⟨8, 7⟩, ⟨1, 6⟩, ⟨38, 14⟩, ⟨31, 13⟩, ⟨16, 8⟩, ⟨24, 12⟩, ⟨9, 7⟩, ⟨2, 6⟩, ⟨39, 14⟩, ⟨32, 13⟩, ⟨17, 8⟩, ⟨25, 12⟩, ⟨10, 7⟩, ⟨43, 21⟩, ⟨3, 6⟩, ⟨40, 14⟩]⟩
theorem profile0394_checked : profile0394.check := by decide +kernel

noncomputable def selection1_0394 : Selection :=
  ⟨1, -1, 4, (347/25), 295, 76, -406⟩
theorem selection1_0394_checked : selection1_0394.check profile0394 := by decide +kernel

noncomputable def selection2_0394 : Selection :=
  ⟨2, -9, 8, (1371/100), 83, 76, -38⟩
theorem selection2_0394_checked : selection2_0394.check profile0394 := by decide +kernel

noncomputable def profile0395 : ProfileCell :=
  ⟨(5/36), (11/79),
    [7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3], [6, 6, 6, 7, 7],
    [⟨40, 15⟩, ⟨18, 9⟩, ⟨33, 14⟩, ⟨11, 8⟩, ⟨26, 13⟩, ⟨4, 7⟩, ⟨41, 15⟩, ⟨19, 9⟩, ⟨34, 14⟩, ⟨12, 8⟩, ⟨27, 13⟩, ⟨5, 7⟩, ⟨42, 15⟩, ⟨20, 9⟩, ⟨35, 14⟩, ⟨13, 8⟩, ⟨28, 13⟩, ⟨6, 7⟩, ⟨21, 9⟩, ⟨36, 14⟩, ⟨14, 8⟩, ⟨29, 13⟩, ⟨7, 7⟩, ⟨22, 12⟩, ⟨37, 14⟩, ⟨15, 8⟩, ⟨30, 13⟩, ⟨8, 7⟩, ⟨23, 12⟩, ⟨1, 6⟩, ⟨38, 14⟩, ⟨16, 8⟩, ⟨31, 13⟩, ⟨9, 7⟩, ⟨24, 12⟩, ⟨2, 6⟩, ⟨39, 14⟩, ⟨17, 8⟩, ⟨32, 13⟩, ⟨10, 7⟩, ⟨25, 12⟩, ⟨3, 6⟩, ⟨43, 21⟩]⟩
theorem profile0395_checked : profile0395.check := by decide +kernel

noncomputable def selection1_0395 : Selection :=
  ⟨1, -2, 4, (1183/100), 321, 151, -946⟩
theorem selection1_0395_checked : selection1_0395.check profile0395 := by decide +kernel

noncomputable def selection2_0395 : Selection :=
  ⟨2, -10, 8, (1171/100), 90, 151, -578⟩
theorem selection2_0395_checked : selection2_0395.check profile0395 := by decide +kernel

noncomputable def profile0396 : ProfileCell :=
  ⟨(11/79), (6/43),
    [7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3], [6, 6, 6, 7, 7],
    [⟨43, 22⟩, ⟨40, 15⟩, ⟨18, 9⟩, ⟨33, 14⟩, ⟨11, 8⟩, ⟨26, 13⟩, ⟨4, 7⟩, ⟨41, 15⟩, ⟨19, 9⟩, ⟨34, 14⟩, ⟨12, 8⟩, ⟨27, 13⟩, ⟨5, 7⟩, ⟨42, 15⟩, ⟨20, 9⟩, ⟨35, 14⟩, ⟨13, 8⟩, ⟨28, 13⟩, ⟨6, 7⟩, ⟨21, 9⟩, ⟨36, 14⟩, ⟨14, 8⟩, ⟨29, 13⟩, ⟨7, 7⟩, ⟨22, 12⟩, ⟨37, 14⟩, ⟨15, 8⟩, ⟨30, 13⟩, ⟨8, 7⟩, ⟨23, 12⟩, ⟨1, 6⟩, ⟨38, 14⟩, ⟨16, 8⟩, ⟨31, 13⟩, ⟨9, 7⟩, ⟨24, 12⟩, ⟨2, 6⟩, ⟨39, 14⟩, ⟨17, 8⟩, ⟨32, 13⟩, ⟨10, 7⟩, ⟨25, 12⟩, ⟨3, 6⟩]⟩
theorem profile0396_checked : profile0396.check := by decide +kernel

noncomputable def selection1_0396 : Selection :=
  ⟨1, -2, 4, (1183/100), 269, -135, 1108⟩
theorem selection1_0396_checked : selection1_0396.check profile0396 := by decide +kernel

noncomputable def selection2_0396 : Selection :=
  ⟨2, -10, 8, (294/25), 76, -135, 1476⟩
theorem selection2_0396_checked : selection2_0396.check profile0396 := by decide +kernel

noncomputable def profile0397 : ProfileCell :=
  ⟨(6/43), (13/93),
    [7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3], [6, 6, 6, 7, 7],
    [⟨43, 22⟩, ⟨18, 9⟩, ⟨40, 15⟩, ⟨11, 8⟩, ⟨33, 14⟩, ⟨4, 7⟩, ⟨26, 13⟩, ⟨19, 9⟩, ⟨41, 15⟩, ⟨12, 8⟩, ⟨34, 14⟩, ⟨5, 7⟩, ⟨27, 13⟩, ⟨20, 9⟩, ⟨42, 15⟩, ⟨13, 8⟩, ⟨35, 14⟩, ⟨6, 7⟩, ⟨28, 13⟩, ⟨21, 9⟩, ⟨14, 8⟩, ⟨36, 14⟩, ⟨7, 7⟩, ⟨29, 13⟩, ⟨22, 12⟩, ⟨15, 8⟩, ⟨37, 14⟩, ⟨8, 7⟩, ⟨30, 13⟩, ⟨1, 6⟩, ⟨23, 12⟩, ⟨16, 8⟩, ⟨38, 14⟩, ⟨9, 7⟩, ⟨31, 13⟩, ⟨2, 6⟩, ⟨24, 12⟩, ⟨17, 8⟩, ⟨39, 14⟩, ⟨10, 7⟩, ⟨32, 13⟩, ⟨3, 6⟩, ⟨25, 12⟩]⟩
theorem profile0397_checked : profile0397.check := by decide +kernel

noncomputable def selection1_0397 : Selection :=
  ⟨1, -2, 4, (301/25), 232, -243, 1882⟩
theorem selection1_0397_checked : selection1_0397.check profile0397 := by decide +kernel

noncomputable def selection2_0397 : Selection :=
  ⟨2, -10, 8, (1189/100), 65, -243, 2250⟩
theorem selection2_0397_checked : selection2_0397.check profile0397 := by decide +kernel

noncomputable def profile0398 : ProfileCell :=
  ⟨(13/93), (7/50),
    [7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3], [6, 6, 6, 7, 7],
    [⟨25, 13⟩, ⟨18, 9⟩, ⟨43, 22⟩, ⟨40, 15⟩, ⟨11, 8⟩, ⟨33, 14⟩, ⟨4, 7⟩, ⟨26, 13⟩, ⟨19, 9⟩, ⟨41, 15⟩, ⟨12, 8⟩, ⟨34, 14⟩, ⟨5, 7⟩, ⟨27, 13⟩, ⟨20, 9⟩, ⟨42, 15⟩, ⟨13, 8⟩, ⟨35, 14⟩, ⟨6, 7⟩, ⟨28, 13⟩, ⟨21, 9⟩, ⟨14, 8⟩, ⟨36, 14⟩, ⟨7, 7⟩, ⟨29, 13⟩, ⟨22, 12⟩, ⟨15, 8⟩, ⟨37, 14⟩, ⟨8, 7⟩, ⟨30, 13⟩, ⟨1, 6⟩, ⟨23, 12⟩, ⟨16, 8⟩, ⟨38, 14⟩, ⟨9, 7⟩, ⟨31, 13⟩, ⟨2, 6⟩, ⟨24, 12⟩, ⟨17, 8⟩, ⟨39, 14⟩, ⟨10, 7⟩, ⟨32, 13⟩, ⟨3, 6⟩]⟩
theorem profile0398_checked : profile0398.check := by decide +kernel

noncomputable def selection1_0398 : Selection :=
  ⟨1, -2, 4, (304/25), 202, -165, 1324⟩
theorem selection1_0398_checked : selection1_0398.check profile0398 := by decide +kernel

noncomputable def selection2_0398 : Selection :=
  ⟨2, -10, 8, (599/50), 57, -165, 1692⟩
theorem selection2_0398_checked : selection2_0398.check profile0398 := by decide +kernel

noncomputable def profile0399 : ProfileCell :=
  ⟨(7/50), (15/107),
    [7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3], [6, 6, 7, 7, 7],
    [⟨3, 7⟩, ⟨32, 14⟩, ⟨25, 13⟩, ⟨18, 9⟩, ⟨11, 8⟩, ⟨40, 15⟩, ⟨43, 22⟩, ⟨4, 7⟩, ⟨33, 14⟩, ⟨26, 13⟩, ⟨19, 9⟩, ⟨12, 8⟩, ⟨41, 15⟩, ⟨5, 7⟩, ⟨34, 14⟩, ⟨27, 13⟩, ⟨20, 9⟩, ⟨13, 8⟩, ⟨42, 15⟩, ⟨6, 7⟩, ⟨35, 14⟩, ⟨28, 13⟩, ⟨21, 9⟩, ⟨14, 8⟩, ⟨7, 7⟩, ⟨36, 14⟩, ⟨29, 13⟩, ⟨22, 12⟩, ⟨15, 8⟩, ⟨8, 7⟩, ⟨37, 14⟩, ⟨1, 6⟩, ⟨30, 13⟩, ⟨23, 12⟩, ⟨16, 8⟩, ⟨9, 7⟩, ⟨38, 14⟩, ⟨2, 6⟩, ⟨31, 13⟩, ⟨24, 12⟩, ⟨17, 8⟩, ⟨10, 7⟩, ⟨39, 14⟩]⟩
theorem profile0399_checked : profile0399.check := by decide +kernel

noncomputable def selection1_0399 : Selection :=
  ⟨1, -1, 4, (713/50), 206, -144, 1174⟩
theorem selection1_0399_checked : selection1_0399.check profile0399 := by decide +kernel

noncomputable def selection2_0399 : Selection :=
  ⟨2, -9, 8, (351/25), 58, -144, 1542⟩
theorem selection2_0399_checked : selection2_0399.check profile0399 := by decide +kernel

noncomputable def profile0400 : ProfileCell :=
  ⟨(15/107), (8/57),
    [7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3], [6, 6, 7, 7, 7],
    [⟨39, 15⟩, ⟨3, 7⟩, ⟨32, 14⟩, ⟨25, 13⟩, ⟨18, 9⟩, ⟨11, 8⟩, ⟨40, 15⟩, ⟨4, 7⟩, ⟨43, 22⟩, ⟨33, 14⟩, ⟨26, 13⟩, ⟨19, 9⟩, ⟨12, 8⟩, ⟨41, 15⟩, ⟨5, 7⟩, ⟨34, 14⟩, ⟨27, 13⟩, ⟨20, 9⟩, ⟨13, 8⟩, ⟨42, 15⟩, ⟨6, 7⟩, ⟨35, 14⟩, ⟨28, 13⟩, ⟨21, 9⟩, ⟨14, 8⟩, ⟨7, 7⟩, ⟨36, 14⟩, ⟨29, 13⟩, ⟨22, 12⟩, ⟨15, 8⟩, ⟨8, 7⟩, ⟨37, 14⟩, ⟨1, 6⟩, ⟨30, 13⟩, ⟨23, 12⟩, ⟨16, 8⟩, ⟨9, 7⟩, ⟨38, 14⟩, ⟨2, 6⟩, ⟨31, 13⟩, ⟨24, 12⟩, ⟨17, 8⟩, ⟨10, 7⟩]⟩
theorem profile0400_checked : profile0400.check := by decide +kernel

noncomputable def selection1_0400 : Selection :=
  ⟨1, -1, 4, (1431/100), 181, -84, 746⟩
theorem selection1_0400_checked : selection1_0400.check profile0400 := by decide +kernel

noncomputable def selection2_0400 : Selection :=
  ⟨2, -9, 8, (1409/100), 51, -84, 1114⟩
theorem selection2_0400_checked : selection2_0400.check profile0400 := by decide +kernel

noncomputable def profile0401 : ProfileCell :=
  ⟨(8/57), (9/64),
    [7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3], [6, 6, 7, 7, 7],
    [⟨10, 8⟩, ⟨3, 7⟩, ⟨39, 15⟩, ⟨32, 14⟩, ⟨25, 13⟩, ⟨18, 9⟩, ⟨11, 8⟩, ⟨4, 7⟩, ⟨40, 15⟩, ⟨33, 14⟩, ⟨43, 22⟩, ⟨26, 13⟩, ⟨19, 9⟩, ⟨12, 8⟩, ⟨5, 7⟩, ⟨41, 15⟩, ⟨34, 14⟩, ⟨27, 13⟩, ⟨20, 9⟩, ⟨13, 8⟩, ⟨6, 7⟩, ⟨42, 15⟩, ⟨35, 14⟩, ⟨28, 13⟩, ⟨21, 9⟩, ⟨14, 8⟩, ⟨7, 7⟩, ⟨36, 14⟩, ⟨29, 13⟩, ⟨22, 12⟩, ⟨15, 8⟩, ⟨8, 7⟩, ⟨1, 6⟩, ⟨37, 14⟩, ⟨30, 13⟩, ⟨23, 12⟩, ⟨16, 8⟩, ⟨9, 7⟩, ⟨2, 6⟩, ⟨38, 14⟩, ⟨31, 13⟩, ⟨24, 12⟩, ⟨17, 8⟩]⟩
theorem profile0401_checked : profile0401.check := by decide +kernel

noncomputable def selection1_0401 : Selection :=
  ⟨1, -1, 4, (723/50), 305, -148, 1202⟩
theorem selection1_0401_checked : selection1_0401.check profile0401 := by decide +kernel

noncomputable def selection2_0401 : Selection :=
  ⟨2, -9, 8, (1419/100), 85, -148, 1570⟩
theorem selection2_0401_checked : selection2_0401.check profile0401 := by decide +kernel

noncomputable def profile0402 : ProfileCell :=
  ⟨(9/64), (13/92),
    [7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3], [6, 6, 7, 7, 7],
    [⟨17, 9⟩, ⟨10, 8⟩, ⟨3, 7⟩, ⟨39, 15⟩, ⟨32, 14⟩, ⟨25, 13⟩, ⟨18, 9⟩, ⟨11, 8⟩, ⟨4, 7⟩, ⟨40, 15⟩, ⟨33, 14⟩, ⟨26, 13⟩, ⟨43, 22⟩, ⟨19, 9⟩, ⟨12, 8⟩, ⟨5, 7⟩, ⟨41, 15⟩, ⟨34, 14⟩, ⟨27, 13⟩, ⟨20, 9⟩, ⟨13, 8⟩, ⟨6, 7⟩, ⟨42, 15⟩, ⟨35, 14⟩, ⟨28, 13⟩, ⟨21, 9⟩, ⟨14, 8⟩, ⟨7, 7⟩, ⟨36, 14⟩, ⟨29, 13⟩, ⟨22, 12⟩, ⟨15, 8⟩, ⟨8, 7⟩, ⟨1, 6⟩, ⟨37, 14⟩, ⟨30, 13⟩, ⟨23, 12⟩, ⟨16, 8⟩, ⟨9, 7⟩, ⟨2, 6⟩, ⟨38, 14⟩, ⟨31, 13⟩, ⟨24, 12⟩]⟩
theorem profile0402_checked : profile0402.check := by decide +kernel

noncomputable def selection1_0402 : Selection :=
  ⟨1, -1, 4, (1493/100), 780, -202, 1586⟩
theorem selection1_0402_checked : selection1_0402.check profile0402 := by decide +kernel

noncomputable def selection2_0402 : Selection :=
  ⟨2, -9, 8, (29/2), 215, -202, 1954⟩
theorem selection2_0402_checked : selection2_0402.check profile0402 := by decide +kernel

noncomputable def profile0403 : ProfileCell :=
  ⟨(13/92), (14/99),
    [7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3], [6, 6, 7, 7, 7],
    [⟨24, 13⟩, ⟨17, 9⟩, ⟨10, 8⟩, ⟨3, 7⟩, ⟨39, 15⟩, ⟨32, 14⟩, ⟨25, 13⟩, ⟨18, 9⟩, ⟨11, 8⟩, ⟨4, 7⟩, ⟨40, 15⟩, ⟨33, 14⟩, ⟨26, 13⟩, ⟨19, 9⟩, ⟨43, 22⟩, ⟨12, 8⟩, ⟨5, 7⟩, ⟨41, 15⟩, ⟨34, 14⟩, ⟨27, 13⟩, ⟨20, 9⟩, ⟨13, 8⟩, ⟨6, 7⟩, ⟨42, 15⟩, ⟨35, 14⟩, ⟨28, 13⟩, ⟨21, 9⟩, ⟨14, 8⟩, ⟨7, 7⟩, ⟨36, 14⟩, ⟨29, 13⟩, ⟨22, 12⟩, ⟨15, 8⟩, ⟨8, 7⟩, ⟨1, 6⟩, ⟨37, 14⟩, ⟨30, 13⟩, ⟨23, 12⟩, ⟨16, 8⟩, ⟨9, 7⟩, ⟨2, 6⟩, ⟨38, 14⟩, ⟨31, 13⟩]⟩
theorem profile0403_checked : profile0403.check := by decide +kernel

noncomputable def selection1_0403 : Selection :=
  ⟨1, -1, 4, (749/50), 127, -124, 1034⟩
theorem selection1_0403_checked : selection1_0403.check profile0403 := by decide +kernel

noncomputable def selection2_0403 : Selection :=
  ⟨2, -9, 8, (1453/100), 35, -124, 1402⟩
theorem selection2_0403_checked : selection2_0403.check profile0403 := by decide +kernel

noncomputable def profile0404 : ProfileCell :=
  ⟨(14/99), (15/106),
    [7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3], [6, 6, 7, 7, 7],
    [⟨31, 14⟩, ⟨24, 13⟩, ⟨17, 9⟩, ⟨10, 8⟩, ⟨3, 7⟩, ⟨39, 15⟩, ⟨32, 14⟩, ⟨25, 13⟩, ⟨18, 9⟩, ⟨11, 8⟩, ⟨4, 7⟩, ⟨40, 15⟩, ⟨33, 14⟩, ⟨26, 13⟩, ⟨19, 9⟩, ⟨12, 8⟩, ⟨43, 22⟩, ⟨5, 7⟩, ⟨41, 15⟩, ⟨34, 14⟩, ⟨27, 13⟩, ⟨20, 9⟩, ⟨13, 8⟩, ⟨6, 7⟩, ⟨42, 15⟩, ⟨35, 14⟩, ⟨28, 13⟩, ⟨21, 9⟩, ⟨14, 8⟩, ⟨7, 7⟩, ⟨36, 14⟩, ⟨29, 13⟩, ⟨22, 12⟩, ⟨15, 8⟩, ⟨8, 7⟩, ⟨1, 6⟩, ⟨37, 14⟩, ⟨30, 13⟩, ⟨23, 12⟩, ⟨16, 8⟩, ⟨9, 7⟩, ⟨2, 6⟩, ⟨38, 14⟩]⟩
theorem profile0404_checked : profile0404.check := by decide +kernel

noncomputable def selection1_0404 : Selection :=
  ⟨1, -1, 4, 15, 110, -68, 638⟩
theorem selection1_0404_checked : selection1_0404.check profile0404 := by decide +kernel

noncomputable def selection2_0404 : Selection :=
  ⟨2, -9, 8, (364/25), 31, -68, 1006⟩
theorem selection2_0404_checked : selection2_0404.check profile0404 := by decide +kernel

noncomputable def profile0405 : ProfileCell :=
  ⟨(15/106), (1/7),
    [7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3], [6, 6, 7, 7, 7],
    [⟨38, 15⟩, ⟨31, 14⟩, ⟨24, 13⟩, ⟨17, 9⟩, ⟨10, 8⟩, ⟨3, 7⟩, ⟨39, 15⟩, ⟨32, 14⟩, ⟨25, 13⟩, ⟨18, 9⟩, ⟨11, 8⟩, ⟨4, 7⟩, ⟨40, 15⟩, ⟨33, 14⟩, ⟨26, 13⟩, ⟨19, 9⟩, ⟨12, 8⟩, ⟨5, 7⟩, ⟨43, 22⟩, ⟨41, 15⟩, ⟨34, 14⟩, ⟨27, 13⟩, ⟨20, 9⟩, ⟨13, 8⟩, ⟨6, 7⟩, ⟨42, 15⟩, ⟨35, 14⟩, ⟨28, 13⟩, ⟨21, 9⟩, ⟨14, 8⟩, ⟨7, 7⟩, ⟨36, 14⟩, ⟨29, 13⟩, ⟨22, 12⟩, ⟨15, 8⟩, ⟨8, 7⟩, ⟨1, 6⟩, ⟨37, 14⟩, ⟨30, 13⟩, ⟨23, 12⟩, ⟨16, 8⟩, ⟨9, 7⟩, ⟨2, 6⟩]⟩
theorem profile0405_checked : profile0405.check := by decide +kernel

noncomputable def selection1_0405 : Selection :=
  ⟨1, -1, 4, 15, 1550, 22, 2⟩
theorem selection1_0405_checked : selection1_0405.check profile0405 := by decide +kernel

noncomputable def selection2_0405 : Selection :=
  ⟨2, -9, 8, (1467/100), 431, 22, 370⟩
theorem selection2_0405_checked : selection2_0405.check profile0405 := by decide +kernel

noncomputable def profile0406 : ProfileCell :=
  ⟨(1/7), (15/104),
    [7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3], [6, 7, 7, 7, 7],
    [⟨2, 7⟩, ⟨9, 8⟩, ⟨16, 9⟩, ⟨23, 13⟩, ⟨30, 14⟩, ⟨37, 15⟩, ⟨3, 7⟩, ⟨10, 8⟩, ⟨17, 9⟩, ⟨24, 13⟩, ⟨31, 14⟩, ⟨38, 15⟩, ⟨4, 7⟩, ⟨11, 8⟩, ⟨18, 9⟩, ⟨25, 13⟩, ⟨32, 14⟩, ⟨39, 15⟩, ⟨5, 7⟩, ⟨12, 8⟩, ⟨19, 9⟩, ⟨26, 13⟩, ⟨33, 14⟩, ⟨40, 15⟩, ⟨6, 7⟩, ⟨13, 8⟩, ⟨20, 9⟩, ⟨27, 13⟩, ⟨34, 14⟩, ⟨41, 15⟩, ⟨43, 22⟩, ⟨7, 7⟩, ⟨14, 8⟩, ⟨21, 9⟩, ⟨28, 13⟩, ⟨35, 14⟩, ⟨42, 15⟩, ⟨1, 6⟩, ⟨8, 7⟩, ⟨15, 8⟩, ⟨22, 12⟩, ⟨29, 13⟩, ⟨36, 14⟩]⟩
theorem profile0406_checked : profile0406.check := by decide +kernel

noncomputable def selection1_0406 : Selection :=
  ⟨1, -1, 4, (383/25), 1610, -52, 520⟩
theorem selection1_0406_checked : selection1_0406.check profile0406 := by decide +kernel

noncomputable def selection2_0406 : Selection :=
  ⟨2, -9, 8, (374/25), 448, -52, 888⟩
theorem selection2_0406_checked : selection2_0406.check profile0406 := by decide +kernel

noncomputable def profile0407 : ProfileCell :=
  ⟨(15/104), (14/97),
    [7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3], [6, 7, 7, 7, 7],
    [⟨36, 15⟩, ⟨2, 7⟩, ⟨9, 8⟩, ⟨16, 9⟩, ⟨23, 13⟩, ⟨30, 14⟩, ⟨37, 15⟩, ⟨3, 7⟩, ⟨10, 8⟩, ⟨17, 9⟩, ⟨24, 13⟩, ⟨31, 14⟩, ⟨38, 15⟩, ⟨4, 7⟩, ⟨11, 8⟩, ⟨18, 9⟩, ⟨25, 13⟩, ⟨32, 14⟩, ⟨39, 15⟩, ⟨5, 7⟩, ⟨12, 8⟩, ⟨19, 9⟩, ⟨26, 13⟩, ⟨33, 14⟩, ⟨40, 15⟩, ⟨6, 7⟩, ⟨13, 8⟩, ⟨20, 9⟩, ⟨27, 13⟩, ⟨34, 14⟩, ⟨41, 15⟩, ⟨7, 7⟩, ⟨43, 22⟩, ⟨14, 8⟩, ⟨21, 9⟩, ⟨28, 13⟩, ⟨35, 14⟩, ⟨42, 15⟩, ⟨1, 6⟩, ⟨8, 7⟩, ⟨15, 8⟩, ⟨22, 12⟩, ⟨29, 13⟩]⟩
theorem profile0407_checked : profile0407.check := by decide +kernel

noncomputable def selection1_0407 : Selection :=
  ⟨1, -1, 4, (383/25), 116, 8, 104⟩
theorem selection1_0407_checked : selection1_0407.check profile0407 := by decide +kernel

noncomputable def selection2_0407 : Selection :=
  ⟨2, -9, 8, (1497/100), 33, 8, 472⟩
theorem selection2_0407_checked : selection2_0407.check profile0407 := by decide +kernel

noncomputable def profile0408 : ProfileCell :=
  ⟨(14/97), (13/90),
    [7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3], [6, 7, 7, 7, 7],
    [⟨29, 14⟩, ⟨36, 15⟩, ⟨2, 7⟩, ⟨9, 8⟩, ⟨16, 9⟩, ⟨23, 13⟩, ⟨30, 14⟩, ⟨37, 15⟩, ⟨3, 7⟩, ⟨10, 8⟩, ⟨17, 9⟩, ⟨24, 13⟩, ⟨31, 14⟩, ⟨38, 15⟩, ⟨4, 7⟩, ⟨11, 8⟩, ⟨18, 9⟩, ⟨25, 13⟩, ⟨32, 14⟩, ⟨39, 15⟩, ⟨5, 7⟩, ⟨12, 8⟩, ⟨19, 9⟩, ⟨26, 13⟩, ⟨33, 14⟩, ⟨40, 15⟩, ⟨6, 7⟩, ⟨13, 8⟩, ⟨20, 9⟩, ⟨27, 13⟩, ⟨34, 14⟩, ⟨41, 15⟩, ⟨7, 7⟩, ⟨14, 8⟩, ⟨43, 22⟩, ⟨21, 9⟩, ⟨28, 13⟩, ⟨35, 14⟩, ⟨42, 15⟩, ⟨1, 6⟩, ⟨8, 7⟩, ⟨15, 8⟩, ⟨22, 12⟩]⟩
theorem profile0408_checked : profile0408.check := by decide +kernel

noncomputable def selection1_0408 : Selection :=
  ⟨1, -1, 4, (383/25), 134, 92, -478⟩
theorem selection1_0408_checked : selection1_0408.check profile0408 := by decide +kernel

noncomputable def selection2_0408 : Selection :=
  ⟨2, -9, 8, (1497/100), 38, 92, -110⟩
theorem selection2_0408_checked : selection2_0408.check profile0408 := by decide +kernel

noncomputable def profile0409 : ProfileCell :=
  ⟨(13/90), (9/62),
    [7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3], [6, 7, 7, 7, 7],
    [⟨22, 13⟩, ⟨29, 14⟩, ⟨36, 15⟩, ⟨2, 7⟩, ⟨9, 8⟩, ⟨16, 9⟩, ⟨23, 13⟩, ⟨30, 14⟩, ⟨37, 15⟩, ⟨3, 7⟩, ⟨10, 8⟩, ⟨17, 9⟩, ⟨24, 13⟩, ⟨31, 14⟩, ⟨38, 15⟩, ⟨4, 7⟩, ⟨11, 8⟩, ⟨18, 9⟩, ⟨25, 13⟩, ⟨32, 14⟩, ⟨39, 15⟩, ⟨5, 7⟩, ⟨12, 8⟩, ⟨19, 9⟩, ⟨26, 13⟩, ⟨33, 14⟩, ⟨40, 15⟩, ⟨6, 7⟩, ⟨13, 8⟩, ⟨20, 9⟩, ⟨27, 13⟩, ⟨34, 14⟩, ⟨41, 15⟩, ⟨7, 7⟩, ⟨14, 8⟩, ⟨21, 9⟩, ⟨43, 22⟩, ⟨28, 13⟩, ⟨35, 14⟩, ⟨42, 15⟩, ⟨1, 6⟩, ⟨8, 7⟩, ⟨15, 8⟩]⟩
theorem profile0409_checked : profile0409.check := by decide +kernel

noncomputable def selection1_0409 : Selection :=
  ⟨1, -1, 4, (153/10), 837, 144, -838⟩
theorem selection1_0409_checked : selection1_0409.check profile0409 := by decide +kernel

noncomputable def selection2_0409 : Selection :=
  ⟨2, -9, 8, (374/25), 234, 144, -470⟩
theorem selection2_0409_checked : selection2_0409.check profile0409 := by decide +kernel

noncomputable def profile0410 : ProfileCell :=
  ⟨(9/62), (8/55),
    [7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3], [6, 7, 7, 7, 7],
    [⟨15, 9⟩, ⟨22, 13⟩, ⟨29, 14⟩, ⟨36, 15⟩, ⟨2, 7⟩, ⟨9, 8⟩, ⟨16, 9⟩, ⟨23, 13⟩, ⟨30, 14⟩, ⟨37, 15⟩, ⟨3, 7⟩, ⟨10, 8⟩, ⟨17, 9⟩, ⟨24, 13⟩, ⟨31, 14⟩, ⟨38, 15⟩, ⟨4, 7⟩, ⟨11, 8⟩, ⟨18, 9⟩, ⟨25, 13⟩, ⟨32, 14⟩, ⟨39, 15⟩, ⟨5, 7⟩, ⟨12, 8⟩, ⟨19, 9⟩, ⟨26, 13⟩, ⟨33, 14⟩, ⟨40, 15⟩, ⟨6, 7⟩, ⟨13, 8⟩, ⟨20, 9⟩, ⟨27, 13⟩, ⟨34, 14⟩, ⟨41, 15⟩, ⟨7, 7⟩, ⟨14, 8⟩, ⟨21, 9⟩, ⟨28, 13⟩, ⟨43, 22⟩, ⟨35, 14⟩, ⟨1, 6⟩, ⟨42, 15⟩, ⟨8, 7⟩]⟩
theorem profile0410_checked : profile0410.check := by decide +kernel

noncomputable def selection1_0410 : Selection :=
  ⟨1, -1, 4, (1503/100), 337, 99, -528⟩
theorem selection1_0410_checked : selection1_0410.check profile0410 := by decide +kernel

noncomputable def selection2_0410 : Selection :=
  ⟨2, -9, 8, (372/25), 95, 99, -160⟩
theorem selection2_0410_checked : selection2_0410.check profile0410 := by decide +kernel

noncomputable def profile0411 : ProfileCell :=
  ⟨(8/55), (23/158),
    [7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3], [6, 7, 7, 7, 7],
    [⟨8, 8⟩, ⟨42, 16⟩, ⟨15, 9⟩, ⟨22, 13⟩, ⟨29, 14⟩, ⟨2, 7⟩, ⟨36, 15⟩, ⟨9, 8⟩, ⟨16, 9⟩, ⟨23, 13⟩, ⟨30, 14⟩, ⟨3, 7⟩, ⟨37, 15⟩, ⟨10, 8⟩, ⟨17, 9⟩, ⟨24, 13⟩, ⟨31, 14⟩, ⟨4, 7⟩, ⟨38, 15⟩, ⟨11, 8⟩, ⟨18, 9⟩, ⟨25, 13⟩, ⟨32, 14⟩, ⟨5, 7⟩, ⟨39, 15⟩, ⟨12, 8⟩, ⟨19, 9⟩, ⟨26, 13⟩, ⟨33, 14⟩, ⟨6, 7⟩, ⟨40, 15⟩, ⟨13, 8⟩, ⟨20, 9⟩, ⟨27, 13⟩, ⟨34, 14⟩, ⟨7, 7⟩, ⟨41, 15⟩, ⟨14, 8⟩, ⟨21, 9⟩, ⟨28, 13⟩, ⟨1, 6⟩, ⟨35, 14⟩, ⟨43, 22⟩]⟩
theorem profile0411_checked : profile0411.check := by decide +kernel

noncomputable def selection1_0411 : Selection :=
  ⟨1, -1, 4, (1497/100), 132, 131, -748⟩
theorem selection1_0411_checked : selection1_0411.check profile0411 := by decide +kernel

noncomputable def selection2_0411 : Selection :=
  ⟨2, -9, 8, (1487/100), 38, 131, -380⟩
theorem selection2_0411_checked : selection2_0411.check profile0411 := by decide +kernel

noncomputable def profile0412 : ProfileCell :=
  ⟨(23/158), (15/103),
    [7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3], [6, 7, 7, 7, 7],
    [⟨43, 23⟩, ⟨8, 8⟩, ⟨42, 16⟩, ⟨15, 9⟩, ⟨22, 13⟩, ⟨29, 14⟩, ⟨2, 7⟩, ⟨36, 15⟩, ⟨9, 8⟩, ⟨16, 9⟩, ⟨23, 13⟩, ⟨30, 14⟩, ⟨3, 7⟩, ⟨37, 15⟩, ⟨10, 8⟩, ⟨17, 9⟩, ⟨24, 13⟩, ⟨31, 14⟩, ⟨4, 7⟩, ⟨38, 15⟩, ⟨11, 8⟩, ⟨18, 9⟩, ⟨25, 13⟩, ⟨32, 14⟩, ⟨5, 7⟩, ⟨39, 15⟩, ⟨12, 8⟩, ⟨19, 9⟩, ⟨26, 13⟩, ⟨33, 14⟩, ⟨6, 7⟩, ⟨40, 15⟩, ⟨13, 8⟩, ⟨20, 9⟩, ⟨27, 13⟩, ⟨34, 14⟩, ⟨7, 7⟩, ⟨41, 15⟩, ⟨14, 8⟩, ⟨21, 9⟩, ⟨28, 13⟩, ⟨1, 6⟩, ⟨35, 14⟩]⟩
theorem profile0412_checked : profile0412.check := by decide +kernel

noncomputable def selection1_0412 : Selection :=
  ⟨1, -1, 4, (374/25), 71, -168, 1306⟩
theorem selection1_0412_checked : selection1_0412.check profile0412 := by decide +kernel

noncomputable def selection2_0412 : Selection :=
  ⟨2, -9, 8, (1489/100), 20, -168, 1674⟩
theorem selection2_0412_checked : selection2_0412.check profile0412 := by decide +kernel

noncomputable def profile0413 : ProfileCell :=
  ⟨(15/103), (7/48),
    [7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3], [6, 7, 7, 7, 7],
    [⟨35, 15⟩, ⟨8, 8⟩, ⟨43, 23⟩, ⟨42, 16⟩, ⟨15, 9⟩, ⟨22, 13⟩, ⟨29, 14⟩, ⟨2, 7⟩, ⟨36, 15⟩, ⟨9, 8⟩, ⟨16, 9⟩, ⟨23, 13⟩, ⟨30, 14⟩, ⟨3, 7⟩, ⟨37, 15⟩, ⟨10, 8⟩, ⟨17, 9⟩, ⟨24, 13⟩, ⟨31, 14⟩, ⟨4, 7⟩, ⟨38, 15⟩, ⟨11, 8⟩, ⟨18, 9⟩, ⟨25, 13⟩, ⟨32, 14⟩, ⟨5, 7⟩, ⟨39, 15⟩, ⟨12, 8⟩, ⟨19, 9⟩, ⟨26, 13⟩, ⟨33, 14⟩, ⟨6, 7⟩, ⟨40, 15⟩, ⟨13, 8⟩, ⟨20, 9⟩, ⟨27, 13⟩, ⟨34, 14⟩, ⟨7, 7⟩, ⟨41, 15⟩, ⟨14, 8⟩, ⟨21, 9⟩, ⟨28, 13⟩, ⟨1, 6⟩]⟩
theorem profile0413_checked : profile0413.check := by decide +kernel

noncomputable def selection1_0413 : Selection :=
  ⟨1, -1, 4, (751/50), 232, -78, 688⟩
theorem selection1_0413_checked : selection1_0413.check profile0413 := by decide +kernel

noncomputable def selection2_0413 : Selection :=
  ⟨2, -9, 8, (747/50), 66, -78, 1056⟩
theorem selection2_0413_checked : selection2_0413.check profile0413 := by decide +kernel

noncomputable def profile0414 : ProfileCell :=
  ⟨(7/48), (6/41),
    [7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨1, 7⟩, ⟨28, 14⟩, ⟨8, 8⟩, ⟨35, 15⟩, ⟨15, 9⟩, ⟨42, 16⟩, ⟨43, 23⟩, ⟨22, 13⟩, ⟨2, 7⟩, ⟨29, 14⟩, ⟨9, 8⟩, ⟨36, 15⟩, ⟨16, 9⟩, ⟨23, 13⟩, ⟨3, 7⟩, ⟨30, 14⟩, ⟨10, 8⟩, ⟨37, 15⟩, ⟨17, 9⟩, ⟨24, 13⟩, ⟨4, 7⟩, ⟨31, 14⟩, ⟨11, 8⟩, ⟨38, 15⟩, ⟨18, 9⟩, ⟨25, 13⟩, ⟨5, 7⟩, ⟨32, 14⟩, ⟨12, 8⟩, ⟨39, 15⟩, ⟨19, 9⟩, ⟨26, 13⟩, ⟨6, 7⟩, ⟨33, 14⟩, ⟨13, 8⟩, ⟨40, 15⟩, ⟨20, 9⟩, ⟨27, 13⟩, ⟨7, 7⟩, ⟨34, 14⟩, ⟨14, 8⟩, ⟨41, 15⟩, ⟨21, 9⟩]⟩
theorem profile0414_checked : profile0414.check := by decide +kernel

noncomputable def selection1_0414 : Selection :=
  ⟨1, 1, 4, (861/50), 667, -86, 712⟩
theorem selection1_0414_checked : selection1_0414.check profile0414 := by decide +kernel

noncomputable def selection2_0414 : Selection :=
  ⟨2, -7, 8, (427/25), 189, -90, 1080⟩
theorem selection2_0414_checked : selection2_0414.check profile0414 := by decide +kernel

noncomputable def profile0415 : ProfileCell :=
  ⟨(6/41), (16/109),
    [7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨1, 7⟩, ⟨8, 8⟩, ⟨28, 14⟩, ⟨15, 9⟩, ⟨35, 15⟩, ⟨42, 16⟩, ⟨43, 23⟩, ⟨2, 7⟩, ⟨22, 13⟩, ⟨9, 8⟩, ⟨29, 14⟩, ⟨16, 9⟩, ⟨36, 15⟩, ⟨3, 7⟩, ⟨23, 13⟩, ⟨10, 8⟩, ⟨30, 14⟩, ⟨17, 9⟩, ⟨37, 15⟩, ⟨4, 7⟩, ⟨24, 13⟩, ⟨11, 8⟩, ⟨31, 14⟩, ⟨18, 9⟩, ⟨38, 15⟩, ⟨5, 7⟩, ⟨25, 13⟩, ⟨12, 8⟩, ⟨32, 14⟩, ⟨19, 9⟩, ⟨39, 15⟩, ⟨6, 7⟩, ⟨26, 13⟩, ⟨13, 8⟩, ⟨33, 14⟩, ⟨20, 9⟩, ⟨40, 15⟩, ⟨7, 7⟩, ⟨27, 13⟩, ⟨14, 8⟩, ⟨34, 14⟩, ⟨21, 9⟩, ⟨41, 15⟩]⟩
theorem profile0415_checked : profile0415.check := by decide +kernel

noncomputable def selection1_0415 : Selection :=
  ⟨1, 1, 4, (438/25), 597, -206, 1532⟩
theorem selection1_0415_checked : selection1_0415.check profile0415 := by decide +kernel

noncomputable def selection2_0415 : Selection :=
  ⟨2, -7, 8, (432/25), 168, -210, 1900⟩
theorem selection2_0415_checked : selection2_0415.check profile0415 := by decide +kernel

noncomputable def profile0416 : ProfileCell :=
  ⟨(16/109), (5/34),
    [7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨41, 16⟩, ⟨1, 7⟩, ⟨8, 8⟩, ⟨28, 14⟩, ⟨15, 9⟩, ⟨35, 15⟩, ⟨42, 16⟩, ⟨2, 7⟩, ⟨43, 23⟩, ⟨22, 13⟩, ⟨9, 8⟩, ⟨29, 14⟩, ⟨16, 9⟩, ⟨36, 15⟩, ⟨3, 7⟩, ⟨23, 13⟩, ⟨10, 8⟩, ⟨30, 14⟩, ⟨17, 9⟩, ⟨37, 15⟩, ⟨4, 7⟩, ⟨24, 13⟩, ⟨11, 8⟩, ⟨31, 14⟩, ⟨18, 9⟩, ⟨38, 15⟩, ⟨5, 7⟩, ⟨25, 13⟩, ⟨12, 8⟩, ⟨32, 14⟩, ⟨19, 9⟩, ⟨39, 15⟩, ⟨6, 7⟩, ⟨26, 13⟩, ⟨13, 8⟩, ⟨33, 14⟩, ⟨20, 9⟩, ⟨40, 15⟩, ⟨7, 7⟩, ⟨27, 13⟩, ⟨14, 8⟩, ⟨34, 14⟩, ⟨21, 9⟩]⟩
theorem profile0416_checked : profile0416.check := by decide +kernel

noncomputable def selection1_0416 : Selection :=
  ⟨1, 0, 4, (1757/100), 361, -77, 684⟩
theorem selection1_0416_checked : selection1_0416.check profile0416 := by decide +kernel

noncomputable def selection2_0416 : Selection :=
  ⟨2, -8, 8, (1733/100), 102, -77, 1052⟩
theorem selection2_0416_checked : selection2_0416.check profile0416 := by decide +kernel

noncomputable def profile0417 : ProfileCell :=
  ⟨(5/34), (14/95),
    [7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨21, 10⟩, ⟨34, 15⟩, ⟨41, 16⟩, ⟨1, 7⟩, ⟨8, 8⟩, ⟨15, 9⟩, ⟨28, 14⟩, ⟨35, 15⟩, ⟨42, 16⟩, ⟨2, 7⟩, ⟨9, 8⟩, ⟨22, 13⟩, ⟨43, 23⟩, ⟨16, 9⟩, ⟨29, 14⟩, ⟨36, 15⟩, ⟨3, 7⟩, ⟨10, 8⟩, ⟨23, 13⟩, ⟨17, 9⟩, ⟨30, 14⟩, ⟨37, 15⟩, ⟨4, 7⟩, ⟨11, 8⟩, ⟨24, 13⟩, ⟨18, 9⟩, ⟨31, 14⟩, ⟨38, 15⟩, ⟨5, 7⟩, ⟨12, 8⟩, ⟨25, 13⟩, ⟨19, 9⟩, ⟨32, 14⟩, ⟨39, 15⟩, ⟨6, 7⟩, ⟨13, 8⟩, ⟨26, 13⟩, ⟨20, 9⟩, ⟨33, 14⟩, ⟨40, 15⟩, ⟨7, 7⟩, ⟨14, 8⟩, ⟨27, 13⟩]⟩
theorem profile0417_checked : profile0417.check := by decide +kernel

noncomputable def selection1_0417 : Selection :=
  ⟨1, -1, 4, (1569/100), 370, -112, 922⟩
theorem selection1_0417_checked : selection1_0417.check profile0417 := by decide +kernel

noncomputable def selection2_0417 : Selection :=
  ⟨2, -9, 8, (1543/100), 104, -112, 1290⟩
theorem selection2_0417_checked : selection2_0417.check profile0417 := by decide +kernel

noncomputable def profile0418 : ProfileCell :=
  ⟨(14/95), (9/61),
    [7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨27, 14⟩, ⟨21, 10⟩, ⟨34, 15⟩, ⟨41, 16⟩, ⟨1, 7⟩, ⟨8, 8⟩, ⟨15, 9⟩, ⟨28, 14⟩, ⟨35, 15⟩, ⟨42, 16⟩, ⟨2, 7⟩, ⟨9, 8⟩, ⟨22, 13⟩, ⟨16, 9⟩, ⟨43, 23⟩, ⟨29, 14⟩, ⟨36, 15⟩, ⟨3, 7⟩, ⟨10, 8⟩, ⟨23, 13⟩, ⟨17, 9⟩, ⟨30, 14⟩, ⟨37, 15⟩, ⟨4, 7⟩, ⟨11, 8⟩, ⟨24, 13⟩, ⟨18, 9⟩, ⟨31, 14⟩, ⟨38, 15⟩, ⟨5, 7⟩, ⟨12, 8⟩, ⟨25, 13⟩, ⟨19, 9⟩, ⟨32, 14⟩, ⟨39, 15⟩, ⟨6, 7⟩, ⟨13, 8⟩, ⟨26, 13⟩, ⟨20, 9⟩, ⟨33, 14⟩, ⟨40, 15⟩, ⟨7, 7⟩, ⟨14, 8⟩]⟩
theorem profile0418_checked : profile0418.check := by decide +kernel

noncomputable def selection1_0418 : Selection :=
  ⟨1, -1, 4, (393/25), 207, -28, 352⟩
theorem selection1_0418_checked : selection1_0418.check profile0418 := by decide +kernel

noncomputable def selection2_0418 : Selection :=
  ⟨2, -9, 8, (773/50), 58, -28, 720⟩
theorem selection2_0418_checked : selection2_0418.check profile0418 := by decide +kernel

noncomputable def profile0419 : ProfileCell :=
  ⟨(9/61), (4/27),
    [7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨14, 9⟩, ⟨27, 14⟩, ⟨21, 10⟩, ⟨34, 15⟩, ⟨1, 7⟩, ⟨41, 16⟩, ⟨8, 8⟩, ⟨15, 9⟩, ⟨28, 14⟩, ⟨35, 15⟩, ⟨2, 7⟩, ⟨42, 16⟩, ⟨9, 8⟩, ⟨22, 13⟩, ⟨16, 9⟩, ⟨29, 14⟩, ⟨43, 23⟩, ⟨36, 15⟩, ⟨3, 7⟩, ⟨10, 8⟩, ⟨23, 13⟩, ⟨17, 9⟩, ⟨30, 14⟩, ⟨37, 15⟩, ⟨4, 7⟩, ⟨11, 8⟩, ⟨24, 13⟩, ⟨18, 9⟩, ⟨31, 14⟩, ⟨38, 15⟩, ⟨5, 7⟩, ⟨12, 8⟩, ⟨25, 13⟩, ⟨19, 9⟩, ⟨32, 14⟩, ⟨39, 15⟩, ⟨6, 7⟩, ⟨13, 8⟩, ⟨26, 13⟩, ⟨20, 9⟩, ⟨33, 14⟩, ⟨40, 15⟩, ⟨7, 7⟩]⟩
theorem profile0419_checked : profile0419.check := by decide +kernel

noncomputable def selection1_0419 : Selection :=
  ⟨1, -1, 4, (1591/100), 734, -82, 718⟩
theorem selection1_0419_checked : selection1_0419.check profile0419 := by decide +kernel

noncomputable def selection2_0419 : Selection :=
  ⟨2, -9, 8, (1561/100), 206, -82, 1086⟩
theorem selection2_0419_checked : selection2_0419.check profile0419 := by decide +kernel

noncomputable def profile0420 : ProfileCell :=
  ⟨(4/27), (15/101),
    [7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨7, 8⟩, ⟨40, 16⟩, ⟨14, 9⟩, ⟨21, 10⟩, ⟨27, 14⟩, ⟨1, 7⟩, ⟨34, 15⟩, ⟨8, 8⟩, ⟨41, 16⟩, ⟨15, 9⟩, ⟨28, 14⟩, ⟨2, 7⟩, ⟨35, 15⟩, ⟨9, 8⟩, ⟨42, 16⟩, ⟨16, 9⟩, ⟨22, 13⟩, ⟨29, 14⟩, ⟨3, 7⟩, ⟨36, 15⟩, ⟨43, 23⟩, ⟨10, 8⟩, ⟨17, 9⟩, ⟨23, 13⟩, ⟨30, 14⟩, ⟨4, 7⟩, ⟨37, 15⟩, ⟨11, 8⟩, ⟨18, 9⟩, ⟨24, 13⟩, ⟨31, 14⟩, ⟨5, 7⟩, ⟨38, 15⟩, ⟨12, 8⟩, ⟨19, 9⟩, ⟨25, 13⟩, ⟨32, 14⟩, ⟨6, 7⟩, ⟨39, 15⟩, ⟨13, 8⟩, ⟨20, 9⟩, ⟨26, 13⟩, ⟨33, 14⟩]⟩
theorem profile0420_checked : profile0420.check := by decide +kernel

noncomputable def selection1_0420 : Selection :=
  ⟨1, -1, 4, (803/50), 447, -114, 934⟩
theorem selection1_0420_checked : selection1_0420.check profile0420 := by decide +kernel

noncomputable def selection2_0420 : Selection :=
  ⟨2, -9, 8, (393/25), 125, -114, 1302⟩
theorem selection2_0420_checked : selection2_0420.check profile0420 := by decide +kernel

noncomputable def profile0421 : ProfileCell :=
  ⟨(15/101), (7/47),
    [7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨33, 15⟩, ⟨7, 8⟩, ⟨40, 16⟩, ⟨14, 9⟩, ⟨21, 10⟩, ⟨27, 14⟩, ⟨1, 7⟩, ⟨34, 15⟩, ⟨8, 8⟩, ⟨41, 16⟩, ⟨15, 9⟩, ⟨28, 14⟩, ⟨2, 7⟩, ⟨35, 15⟩, ⟨9, 8⟩, ⟨42, 16⟩, ⟨16, 9⟩, ⟨22, 13⟩, ⟨29, 14⟩, ⟨3, 7⟩, ⟨36, 15⟩, ⟨10, 8⟩, ⟨43, 23⟩, ⟨17, 9⟩, ⟨23, 13⟩, ⟨30, 14⟩, ⟨4, 7⟩, ⟨37, 15⟩, ⟨11, 8⟩, ⟨18, 9⟩, ⟨24, 13⟩, ⟨31, 14⟩, ⟨5, 7⟩, ⟨38, 15⟩, ⟨12, 8⟩, ⟨19, 9⟩, ⟨25, 13⟩, ⟨32, 14⟩, ⟨6, 7⟩, ⟨39, 15⟩, ⟨13, 8⟩, ⟨20, 9⟩, ⟨26, 13⟩]⟩
theorem profile0421_checked : profile0421.check := by decide +kernel

noncomputable def selection1_0421 : Selection :=
  ⟨1, 0, 4, (402/25), 514, -12, 216⟩
theorem selection1_0421_checked : selection1_0421.check profile0421 := by decide +kernel

noncomputable def selection2_0421 : Selection :=
  ⟨2, -8, 8, (1577/100), 144, -16, 584⟩
theorem selection2_0421_checked : selection2_0421.check profile0421 := by decide +kernel

noncomputable def profile0422 : ProfileCell :=
  ⟨(7/47), (10/67),
    [7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨26, 14⟩, ⟨7, 8⟩, ⟨33, 15⟩, ⟨14, 9⟩, ⟨40, 16⟩, ⟨21, 10⟩, ⟨1, 7⟩, ⟨27, 14⟩, ⟨8, 8⟩, ⟨34, 15⟩, ⟨15, 9⟩, ⟨41, 16⟩, ⟨2, 7⟩, ⟨28, 14⟩, ⟨9, 8⟩, ⟨35, 15⟩, ⟨16, 9⟩, ⟨42, 16⟩, ⟨22, 13⟩, ⟨3, 7⟩, ⟨29, 14⟩, ⟨10, 8⟩, ⟨36, 15⟩, ⟨17, 9⟩, ⟨43, 23⟩, ⟨23, 13⟩, ⟨4, 7⟩, ⟨30, 14⟩, ⟨11, 8⟩, ⟨37, 15⟩, ⟨18, 9⟩, ⟨24, 13⟩, ⟨5, 7⟩, ⟨31, 14⟩, ⟨12, 8⟩, ⟨38, 15⟩, ⟨19, 9⟩, ⟨25, 13⟩, ⟨6, 7⟩, ⟨32, 14⟩, ⟨13, 8⟩, ⟨39, 15⟩, ⟨20, 9⟩]⟩
theorem profile0422_checked : profile0422.check := by decide +kernel

noncomputable def selection1_0422 : Selection :=
  ⟨1, 0, 4, (1611/100), 388, -12, 216⟩
theorem selection1_0422_checked : selection1_0422.check profile0422 := by decide +kernel

noncomputable def selection2_0422 : Selection :=
  ⟨2, -8, 8, (1581/100), 109, -16, 584⟩
theorem selection2_0422_checked : selection2_0422.check profile0422 := by decide +kernel

noncomputable def profile0423 : ProfileCell :=
  ⟨(10/67), (16/107),
    [7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨20, 10⟩, ⟨26, 14⟩, ⟨7, 8⟩, ⟨33, 15⟩, ⟨14, 9⟩, ⟨40, 16⟩, ⟨21, 10⟩, ⟨1, 7⟩, ⟨27, 14⟩, ⟨8, 8⟩, ⟨34, 15⟩, ⟨15, 9⟩, ⟨41, 16⟩, ⟨2, 7⟩, ⟨28, 14⟩, ⟨9, 8⟩, ⟨35, 15⟩, ⟨16, 9⟩, ⟨42, 16⟩, ⟨22, 13⟩, ⟨3, 7⟩, ⟨29, 14⟩, ⟨10, 8⟩, ⟨36, 15⟩, ⟨17, 9⟩, ⟨23, 13⟩, ⟨43, 23⟩, ⟨4, 7⟩, ⟨30, 14⟩, ⟨11, 8⟩, ⟨37, 15⟩, ⟨18, 9⟩, ⟨24, 13⟩, ⟨5, 7⟩, ⟨31, 14⟩, ⟨12, 8⟩, ⟨38, 15⟩, ⟨19, 9⟩, ⟨25, 13⟩, ⟨6, 7⟩, ⟨32, 14⟩, ⟨13, 8⟩, ⟨39, 15⟩]⟩
theorem profile0423_checked : profile0423.check := by decide +kernel

noncomputable def selection1_0423 : Selection :=
  ⟨1, 0, 4, (809/50), 342, -72, 618⟩
theorem selection1_0423_checked : selection1_0423.check profile0423 := by decide +kernel

noncomputable def selection2_0423 : Selection :=
  ⟨2, -8, 8, (1587/100), 96, -76, 986⟩
theorem selection2_0423_checked : selection2_0423.check profile0423 := by decide +kernel

noncomputable def profile0424 : ProfileCell :=
  ⟨(16/107), (3/20),
    [7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨39, 16⟩, ⟨20, 10⟩, ⟨26, 14⟩, ⟨7, 8⟩, ⟨33, 15⟩, ⟨14, 9⟩, ⟨40, 16⟩, ⟨21, 10⟩, ⟨1, 7⟩, ⟨27, 14⟩, ⟨8, 8⟩, ⟨34, 15⟩, ⟨15, 9⟩, ⟨41, 16⟩, ⟨2, 7⟩, ⟨28, 14⟩, ⟨9, 8⟩, ⟨35, 15⟩, ⟨16, 9⟩, ⟨42, 16⟩, ⟨22, 13⟩, ⟨3, 7⟩, ⟨29, 14⟩, ⟨10, 8⟩, ⟨36, 15⟩, ⟨17, 9⟩, ⟨23, 13⟩, ⟨4, 7⟩, ⟨43, 23⟩, ⟨30, 14⟩, ⟨11, 8⟩, ⟨37, 15⟩, ⟨18, 9⟩, ⟨24, 13⟩, ⟨5, 7⟩, ⟨31, 14⟩, ⟨12, 8⟩, ⟨38, 15⟩, ⟨19, 9⟩, ⟨25, 13⟩, ⟨6, 7⟩, ⟨32, 14⟩, ⟨13, 8⟩]⟩
theorem profile0424_checked : profile0424.check := by decide +kernel

noncomputable def selection1_0424 : Selection :=
  ⟨1, 0, 4, (809/50), 572, 24, -24⟩
theorem selection1_0424_checked : selection1_0424.check profile0424 := by decide +kernel

noncomputable def selection2_0424 : Selection :=
  ⟨2, -8, 8, (1591/100), 161, 20, 344⟩
theorem selection2_0424_checked : selection2_0424.check profile0424 := by decide +kernel

noncomputable def profile0425 : ProfileCell :=
  ⟨(3/20), (14/93),
    [7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨13, 9⟩, ⟨32, 15⟩, ⟨20, 10⟩, ⟨39, 16⟩, ⟨7, 8⟩, ⟨26, 14⟩, ⟨14, 9⟩, ⟨33, 15⟩, ⟨1, 7⟩, ⟨21, 10⟩, ⟨40, 16⟩, ⟨8, 8⟩, ⟨27, 14⟩, ⟨15, 9⟩, ⟨34, 15⟩, ⟨2, 7⟩, ⟨41, 16⟩, ⟨9, 8⟩, ⟨28, 14⟩, ⟨16, 9⟩, ⟨35, 15⟩, ⟨3, 7⟩, ⟨22, 13⟩, ⟨42, 16⟩, ⟨10, 8⟩, ⟨29, 14⟩, ⟨17, 9⟩, ⟨36, 15⟩, ⟨4, 7⟩, ⟨23, 13⟩, ⟨11, 8⟩, ⟨30, 14⟩, ⟨43, 23⟩, ⟨18, 9⟩, ⟨37, 15⟩, ⟨5, 7⟩, ⟨24, 13⟩, ⟨12, 8⟩, ⟨31, 14⟩, ⟨19, 9⟩, ⟨38, 15⟩, ⟨6, 7⟩, ⟨25, 13⟩]⟩
theorem profile0425_checked : profile0425.check := by decide +kernel

noncomputable def selection1_0425 : Selection :=
  ⟨1, -1, 4, (1421/100), 578, 0, 136⟩
theorem selection1_0425_checked : selection1_0425.check profile0425 := by decide +kernel

noncomputable def selection2_0425 : Selection :=
  ⟨2, -9, 8, (1397/100), 163, -4, 504⟩
theorem selection2_0425_checked : selection2_0425.check profile0425 := by decide +kernel

noncomputable def profile0426 : ProfileCell :=
  ⟨(14/93), (8/53),
    [7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨25, 14⟩, ⟨13, 9⟩, ⟨32, 15⟩, ⟨20, 10⟩, ⟨39, 16⟩, ⟨7, 8⟩, ⟨26, 14⟩, ⟨14, 9⟩, ⟨33, 15⟩, ⟨1, 7⟩, ⟨21, 10⟩, ⟨40, 16⟩, ⟨8, 8⟩, ⟨27, 14⟩, ⟨15, 9⟩, ⟨34, 15⟩, ⟨2, 7⟩, ⟨41, 16⟩, ⟨9, 8⟩, ⟨28, 14⟩, ⟨16, 9⟩, ⟨35, 15⟩, ⟨3, 7⟩, ⟨22, 13⟩, ⟨42, 16⟩, ⟨10, 8⟩, ⟨29, 14⟩, ⟨17, 9⟩, ⟨36, 15⟩, ⟨4, 7⟩, ⟨23, 13⟩, ⟨11, 8⟩, ⟨30, 14⟩, ⟨18, 9⟩, ⟨43, 23⟩, ⟨37, 15⟩, ⟨5, 7⟩, ⟨24, 13⟩, ⟨12, 8⟩, ⟨31, 14⟩, ⟨19, 9⟩, ⟨38, 15⟩, ⟨6, 7⟩]⟩
theorem profile0426_checked : profile0426.check := by decide +kernel

noncomputable def selection1_0426 : Selection :=
  ⟨1, -1, 4, (1421/100), 436, 56, -236⟩
theorem selection1_0426_checked : selection1_0426.check profile0426 := by decide +kernel

noncomputable def selection2_0426 : Selection :=
  ⟨2, -9, 8, (1399/100), 123, 52, 132⟩
theorem selection2_0426_checked : selection2_0426.check profile0426 := by decide +kernel

noncomputable def profile0427 : ProfileCell :=
  ⟨(8/53), (5/33),
    [7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨6, 8⟩, ⟨38, 16⟩, ⟨25, 14⟩, ⟨13, 9⟩, ⟨32, 15⟩, ⟨20, 10⟩, ⟨7, 8⟩, ⟨39, 16⟩, ⟨26, 14⟩, ⟨14, 9⟩, ⟨1, 7⟩, ⟨33, 15⟩, ⟨21, 10⟩, ⟨8, 8⟩, ⟨40, 16⟩, ⟨27, 14⟩, ⟨15, 9⟩, ⟨2, 7⟩, ⟨34, 15⟩, ⟨9, 8⟩, ⟨41, 16⟩, ⟨28, 14⟩, ⟨16, 9⟩, ⟨3, 7⟩, ⟨35, 15⟩, ⟨22, 13⟩, ⟨10, 8⟩, ⟨42, 16⟩, ⟨29, 14⟩, ⟨17, 9⟩, ⟨4, 7⟩, ⟨36, 15⟩, ⟨23, 13⟩, ⟨11, 8⟩, ⟨30, 14⟩, ⟨18, 9⟩, ⟨5, 7⟩, ⟨37, 15⟩, ⟨43, 23⟩, ⟨24, 13⟩, ⟨12, 8⟩, ⟨31, 14⟩, ⟨19, 9⟩]⟩
theorem profile0427_checked : profile0427.check := by decide +kernel

noncomputable def selection1_0427 : Selection :=
  ⟨1, -1, 4, (1417/100), 612, 56, -236⟩
theorem selection1_0427_checked : selection1_0427.check profile0427 := by decide +kernel

noncomputable def selection2_0427 : Selection :=
  ⟨2, -9, 8, 14, 173, 52, 132⟩
theorem selection2_0427_checked : selection2_0427.check profile0427 := by decide +kernel

noncomputable def profile0428 : ProfileCell :=
  ⟨(5/33), (12/79),
    [7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨19, 10⟩, ⟨31, 15⟩, ⟨6, 8⟩, ⟨38, 16⟩, ⟨13, 9⟩, ⟨25, 14⟩, ⟨20, 10⟩, ⟨32, 15⟩, ⟨7, 8⟩, ⟨39, 16⟩, ⟨14, 9⟩, ⟨26, 14⟩, ⟨1, 7⟩, ⟨21, 10⟩, ⟨33, 15⟩, ⟨8, 8⟩, ⟨40, 16⟩, ⟨15, 9⟩, ⟨27, 14⟩, ⟨2, 7⟩, ⟨34, 15⟩, ⟨9, 8⟩, ⟨41, 16⟩, ⟨16, 9⟩, ⟨28, 14⟩, ⟨3, 7⟩, ⟨35, 15⟩, ⟨10, 8⟩, ⟨22, 13⟩, ⟨42, 16⟩, ⟨17, 9⟩, ⟨29, 14⟩, ⟨4, 7⟩, ⟨36, 15⟩, ⟨11, 8⟩, ⟨23, 13⟩, ⟨18, 9⟩, ⟨30, 14⟩, ⟨5, 7⟩, ⟨37, 15⟩, ⟨12, 8⟩, ⟨24, 13⟩, ⟨43, 23⟩]⟩
theorem profile0428_checked : profile0428.check := by decide +kernel

noncomputable def selection1_0428 : Selection :=
  ⟨1, -1, 4, (1411/100), 409, 56, -236⟩
theorem selection1_0428_checked : selection1_0428.check profile0428 := by decide +kernel

noncomputable def selection2_0428 : Selection :=
  ⟨2, -9, 8, (701/50), 117, 52, 132⟩
theorem selection2_0428_checked : selection2_0428.check profile0428 := by decide +kernel

noncomputable def profile0429 : ProfileCell :=
  ⟨(12/79), (7/46),
    [7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨43, 24⟩, ⟨19, 10⟩, ⟨31, 15⟩, ⟨6, 8⟩, ⟨38, 16⟩, ⟨13, 9⟩, ⟨25, 14⟩, ⟨20, 10⟩, ⟨32, 15⟩, ⟨7, 8⟩, ⟨39, 16⟩, ⟨14, 9⟩, ⟨26, 14⟩, ⟨1, 7⟩, ⟨21, 10⟩, ⟨33, 15⟩, ⟨8, 8⟩, ⟨40, 16⟩, ⟨15, 9⟩, ⟨27, 14⟩, ⟨2, 7⟩, ⟨34, 15⟩, ⟨9, 8⟩, ⟨41, 16⟩, ⟨16, 9⟩, ⟨28, 14⟩, ⟨3, 7⟩, ⟨35, 15⟩, ⟨10, 8⟩, ⟨22, 13⟩, ⟨42, 16⟩, ⟨17, 9⟩, ⟨29, 14⟩, ⟨4, 7⟩, ⟨36, 15⟩, ⟨11, 8⟩, ⟨23, 13⟩, ⟨18, 9⟩, ⟨30, 14⟩, ⟨5, 7⟩, ⟨37, 15⟩, ⟨12, 8⟩, ⟨24, 13⟩]⟩
theorem profile0429_checked : profile0429.check := by decide +kernel

noncomputable def selection1_0429 : Selection :=
  ⟨1, -1, 4, (1427/100), 296, -232, 1660⟩
theorem selection1_0429_checked : selection1_0429.check profile0429 := by decide +kernel

noncomputable def selection2_0429 : Selection :=
  ⟨2, -9, 8, (283/20), 85, -236, 2028⟩
theorem selection2_0429_checked : selection2_0429.check profile0429 := by decide +kernel

noncomputable def profile0430 : ProfileCell :=
  ⟨(7/46), (16/105),
    [7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨24, 14⟩, ⟨19, 10⟩, ⟨43, 24⟩, ⟨6, 8⟩, ⟨31, 15⟩, ⟨13, 9⟩, ⟨38, 16⟩, ⟨25, 14⟩, ⟨20, 10⟩, ⟨7, 8⟩, ⟨32, 15⟩, ⟨14, 9⟩, ⟨39, 16⟩, ⟨1, 7⟩, ⟨26, 14⟩, ⟨21, 10⟩, ⟨8, 8⟩, ⟨33, 15⟩, ⟨15, 9⟩, ⟨40, 16⟩, ⟨2, 7⟩, ⟨27, 14⟩, ⟨9, 8⟩, ⟨34, 15⟩, ⟨16, 9⟩, ⟨41, 16⟩, ⟨3, 7⟩, ⟨28, 14⟩, ⟨10, 8⟩, ⟨35, 15⟩, ⟨22, 13⟩, ⟨17, 9⟩, ⟨42, 16⟩, ⟨4, 7⟩, ⟨29, 14⟩, ⟨11, 8⟩, ⟨36, 15⟩, ⟨23, 13⟩, ⟨18, 9⟩, ⟨5, 7⟩, ⟨30, 14⟩, ⟨12, 8⟩, ⟨37, 15⟩]⟩
theorem profile0430_checked : profile0430.check := by decide +kernel

noncomputable def selection1_0430 : Selection :=
  ⟨1, -2, 4, (1243/100), 194, -246, 1752⟩
theorem selection1_0430_checked : selection1_0430.check profile0430 := by decide +kernel

noncomputable def selection2_0430 : Selection :=
  ⟨2, -10, 8, (49/4), 55, -250, 2120⟩
theorem selection2_0430_checked : selection2_0430.check profile0430 := by decide +kernel

noncomputable def profile0431 : ProfileCell :=
  ⟨(16/105), (9/59),
    [7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨37, 16⟩, ⟨24, 14⟩, ⟨19, 10⟩, ⟨6, 8⟩, ⟨43, 24⟩, ⟨31, 15⟩, ⟨13, 9⟩, ⟨38, 16⟩, ⟨25, 14⟩, ⟨20, 10⟩, ⟨7, 8⟩, ⟨32, 15⟩, ⟨14, 9⟩, ⟨39, 16⟩, ⟨1, 7⟩, ⟨26, 14⟩, ⟨21, 10⟩, ⟨8, 8⟩, ⟨33, 15⟩, ⟨15, 9⟩, ⟨40, 16⟩, ⟨2, 7⟩, ⟨27, 14⟩, ⟨9, 8⟩, ⟨34, 15⟩, ⟨16, 9⟩, ⟨41, 16⟩, ⟨3, 7⟩, ⟨28, 14⟩, ⟨10, 8⟩, ⟨35, 15⟩, ⟨22, 13⟩, ⟨17, 9⟩, ⟨42, 16⟩, ⟨4, 7⟩, ⟨29, 14⟩, ⟨11, 8⟩, ⟨36, 15⟩, ⟨23, 13⟩, ⟨18, 9⟩, ⟨5, 7⟩, ⟨30, 14⟩, ⟨12, 8⟩]⟩
theorem profile0431_checked : profile0431.check := by decide +kernel

noncomputable def selection1_0431 : Selection :=
  ⟨1, -2, 4, (25/2), 152, -150, 1122⟩
theorem selection1_0431_checked : selection1_0431.check profile0431 := by decide +kernel

noncomputable def selection2_0431 : Selection :=
  ⟨2, -10, 8, (123/10), 43, -154, 1490⟩
theorem selection2_0431_checked : selection2_0431.check profile0431 := by decide +kernel

noncomputable def profile0432 : ProfileCell :=
  ⟨(9/59), (15/98),
    [7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨12, 9⟩, ⟨37, 16⟩, ⟨24, 14⟩, ⟨19, 10⟩, ⟨6, 8⟩, ⟨31, 15⟩, ⟨43, 24⟩, ⟨13, 9⟩, ⟨38, 16⟩, ⟨25, 14⟩, ⟨20, 10⟩, ⟨7, 8⟩, ⟨32, 15⟩, ⟨14, 9⟩, ⟨1, 7⟩, ⟨39, 16⟩, ⟨26, 14⟩, ⟨21, 10⟩, ⟨8, 8⟩, ⟨33, 15⟩, ⟨15, 9⟩, ⟨2, 7⟩, ⟨40, 16⟩, ⟨27, 14⟩, ⟨9, 8⟩, ⟨34, 15⟩, ⟨16, 9⟩, ⟨3, 7⟩, ⟨41, 16⟩, ⟨28, 14⟩, ⟨10, 8⟩, ⟨35, 15⟩, ⟨22, 13⟩, ⟨17, 9⟩, ⟨4, 7⟩, ⟨42, 16⟩, ⟨29, 14⟩, ⟨11, 8⟩, ⟨36, 15⟩, ⟨23, 13⟩, ⟨18, 9⟩, ⟨5, 7⟩, ⟨30, 14⟩]⟩
theorem profile0432_checked : profile0432.check := by decide +kernel

noncomputable def selection1_0432 : Selection :=
  ⟨1, -2, 4, (643/50), 503, -222, 1594⟩
theorem selection1_0432_checked : selection1_0432.check profile0432 := by decide +kernel

noncomputable def selection2_0432 : Selection :=
  ⟨2, -10, 8, (627/50), 141, -226, 1962⟩
theorem selection2_0432_checked : selection2_0432.check profile0432 := by decide +kernel

noncomputable def profile0433 : ProfileCell :=
  ⟨(15/98), (2/13),
    [7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3], [7, 7, 7, 7, 7],
    [⟨30, 15⟩, ⟨12, 9⟩, ⟨37, 16⟩, ⟨24, 14⟩, ⟨19, 10⟩, ⟨6, 8⟩, ⟨31, 15⟩, ⟨13, 9⟩, ⟨43, 24⟩, ⟨38, 16⟩, ⟨25, 14⟩, ⟨20, 10⟩, ⟨7, 8⟩, ⟨32, 15⟩, ⟨14, 9⟩, ⟨1, 7⟩, ⟨39, 16⟩, ⟨26, 14⟩, ⟨21, 10⟩, ⟨8, 8⟩, ⟨33, 15⟩, ⟨15, 9⟩, ⟨2, 7⟩, ⟨40, 16⟩, ⟨27, 14⟩, ⟨9, 8⟩, ⟨34, 15⟩, ⟨16, 9⟩, ⟨3, 7⟩, ⟨41, 16⟩, ⟨28, 14⟩, ⟨10, 8⟩, ⟨35, 15⟩, ⟨22, 13⟩, ⟨17, 9⟩, ⟨4, 7⟩, ⟨42, 16⟩, ⟨29, 14⟩, ⟨11, 8⟩, ⟨36, 15⟩, ⟨23, 13⟩, ⟨18, 9⟩, ⟨5, 7⟩]⟩
theorem profile0433_checked : profile0433.check := by decide +kernel

noncomputable def selection1_0433 : Selection :=
  ⟨1, -2, 4, (66/5), 779, -132, 1006⟩
theorem selection1_0433_checked : selection1_0433.check profile0433 := by decide +kernel

noncomputable def selection2_0433 : Selection :=
  ⟨2, -10, 8, (1279/100), 217, -136, 1374⟩
theorem selection2_0433_checked : selection2_0433.check profile0433 := by decide +kernel

noncomputable def profile0434 : ProfileCell :=
  ⟨(2/13), (17/110),
    [8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3], [7, 7, 7, 7, 8],
    [⟨5, 8⟩, ⟨18, 10⟩, ⟨23, 14⟩, ⟨36, 16⟩, ⟨12, 9⟩, ⟨30, 15⟩, ⟨6, 8⟩, ⟨19, 10⟩, ⟨24, 14⟩, ⟨37, 16⟩, ⟨13, 9⟩, ⟨31, 15⟩, ⟨7, 8⟩, ⟨20, 10⟩, ⟨25, 14⟩, ⟨38, 16⟩, ⟨43, 24⟩, ⟨1, 7⟩, ⟨14, 9⟩, ⟨32, 15⟩, ⟨8, 8⟩, ⟨21, 10⟩, ⟨26, 14⟩, ⟨39, 16⟩, ⟨2, 7⟩, ⟨15, 9⟩, ⟨33, 15⟩, ⟨9, 8⟩, ⟨27, 14⟩, ⟨40, 16⟩, ⟨3, 7⟩, ⟨16, 9⟩, ⟨34, 15⟩, ⟨10, 8⟩, ⟨28, 14⟩, ⟨41, 16⟩, ⟨4, 7⟩, ⟨17, 9⟩, ⟨22, 13⟩, ⟨35, 15⟩, ⟨11, 8⟩, ⟨29, 14⟩, ⟨42, 16⟩]⟩
theorem profile0434_checked : profile0434.check := by decide +kernel

noncomputable def selection1_0434 : Selection :=
  ⟨1, -2, 4, (68/5), 714, -176, 1292⟩
theorem selection1_0434_checked : selection1_0434.check profile0434 := by decide +kernel

noncomputable def selection2_0434 : Selection :=
  ⟨2, -10, 8, (653/50), 197, -180, 1660⟩
theorem selection2_0434_checked : selection2_0434.check profile0434 := by decide +kernel

noncomputable def profile0435 : ProfileCell :=
  ⟨(17/110), (15/97),
    [8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3], [7, 7, 7, 7, 8],
    [⟨42, 17⟩, ⟨5, 8⟩, ⟨18, 10⟩, ⟨23, 14⟩, ⟨36, 16⟩, ⟨12, 9⟩, ⟨30, 15⟩, ⟨6, 8⟩, ⟨19, 10⟩, ⟨24, 14⟩, ⟨37, 16⟩, ⟨13, 9⟩, ⟨31, 15⟩, ⟨7, 8⟩, ⟨20, 10⟩, ⟨25, 14⟩, ⟨38, 16⟩, ⟨1, 7⟩, ⟨43, 24⟩, ⟨14, 9⟩, ⟨32, 15⟩, ⟨8, 8⟩, ⟨21, 10⟩, ⟨26, 14⟩, ⟨39, 16⟩, ⟨2, 7⟩, ⟨15, 9⟩, ⟨33, 15⟩, ⟨9, 8⟩, ⟨27, 14⟩, ⟨40, 16⟩, ⟨3, 7⟩, ⟨16, 9⟩, ⟨34, 15⟩, ⟨10, 8⟩, ⟨28, 14⟩, ⟨41, 16⟩, ⟨4, 7⟩, ⟨17, 9⟩, ⟨22, 13⟩, ⟨35, 15⟩, ⟨11, 8⟩, ⟨29, 14⟩]⟩
theorem profile0435_checked : profile0435.check := by decide +kernel

noncomputable def selection1_0435 : Selection :=
  ⟨1, -2, 4, (1363/100), 96, -108, 852⟩
theorem selection1_0435_checked : selection1_0435.check profile0435 := by decide +kernel

noncomputable def selection2_0435 : Selection :=
  ⟨2, -10, 8, (1309/100), 27, -112, 1220⟩
theorem selection2_0435_checked : selection2_0435.check profile0435 := by decide +kernel

noncomputable def profile0436 : ProfileCell :=
  ⟨(15/97), (9/58),
    [8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3], [7, 7, 7, 7, 8],
    [⟨29, 15⟩, ⟨42, 17⟩, ⟨5, 8⟩, ⟨18, 10⟩, ⟨23, 14⟩, ⟨36, 16⟩, ⟨12, 9⟩, ⟨30, 15⟩, ⟨6, 8⟩, ⟨19, 10⟩, ⟨24, 14⟩, ⟨37, 16⟩, ⟨13, 9⟩, ⟨31, 15⟩, ⟨7, 8⟩, ⟨20, 10⟩, ⟨25, 14⟩, ⟨38, 16⟩, ⟨1, 7⟩, ⟨14, 9⟩, ⟨43, 24⟩, ⟨32, 15⟩, ⟨8, 8⟩, ⟨21, 10⟩, ⟨26, 14⟩, ⟨39, 16⟩, ⟨2, 7⟩, ⟨15, 9⟩, ⟨33, 15⟩, ⟨9, 8⟩, ⟨27, 14⟩, ⟨40, 16⟩, ⟨3, 7⟩, ⟨16, 9⟩, ⟨34, 15⟩, ⟨10, 8⟩, ⟨28, 14⟩, ⟨41, 16⟩, ⟨4, 7⟩, ⟨17, 9⟩, ⟨22, 13⟩, ⟨35, 15⟩, ⟨11, 8⟩]⟩
theorem profile0436_checked : profile0436.check := by decide +kernel

noncomputable def selection1_0436 : Selection :=
  ⟨1, -2, 4, (1369/100), 548, -18, 270⟩
theorem selection1_0436_checked : selection1_0436.check profile0436 := by decide +kernel

noncomputable def selection2_0436 : Selection :=
  ⟨2, -10, 8, (329/25), 152, -22, 638⟩
theorem selection2_0436_checked : selection2_0436.check profile0436 := by decide +kernel

noncomputable def profile0437 : ProfileCell :=
  ⟨(9/58), (16/103),
    [8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3], [7, 7, 7, 7, 8],
    [⟨11, 9⟩, ⟨29, 15⟩, ⟨5, 8⟩, ⟨42, 17⟩, ⟨18, 10⟩, ⟨23, 14⟩, ⟨36, 16⟩, ⟨12, 9⟩, ⟨30, 15⟩, ⟨6, 8⟩, ⟨19, 10⟩, ⟨24, 14⟩, ⟨37, 16⟩, ⟨13, 9⟩, ⟨31, 15⟩, ⟨7, 8⟩, ⟨20, 10⟩, ⟨25, 14⟩, ⟨1, 7⟩, ⟨38, 16⟩, ⟨14, 9⟩, ⟨32, 15⟩, ⟨43, 24⟩, ⟨8, 8⟩, ⟨21, 10⟩, ⟨26, 14⟩, ⟨2, 7⟩, ⟨39, 16⟩, ⟨15, 9⟩, ⟨33, 15⟩, ⟨9, 8⟩, ⟨27, 14⟩, ⟨3, 7⟩, ⟨40, 16⟩, ⟨16, 9⟩, ⟨34, 15⟩, ⟨10, 8⟩, ⟨28, 14⟩, ⟨4, 7⟩, ⟨41, 16⟩, ⟨17, 9⟩, ⟨22, 13⟩, ⟨35, 15⟩]⟩
theorem profile0437_checked : profile0437.check := by decide +kernel

noncomputable def selection1_0437 : Selection :=
  ⟨1, -2, 4, (687/50), 173, -72, 618⟩
theorem selection1_0437_checked : selection1_0437.check profile0437 := by decide +kernel

noncomputable def selection2_0437 : Selection :=
  ⟨2, -10, 8, (66/5), 48, -76, 986⟩
theorem selection2_0437_checked : selection2_0437.check profile0437 := by decide +kernel

noncomputable def profile0438 : ProfileCell :=
  ⟨(16/103), (7/45),
    [8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3], [7, 7, 7, 7, 8],
    [⟨35, 16⟩, ⟨11, 9⟩, ⟨29, 15⟩, ⟨5, 8⟩, ⟨42, 17⟩, ⟨18, 10⟩, ⟨23, 14⟩, ⟨36, 16⟩, ⟨12, 9⟩, ⟨30, 15⟩, ⟨6, 8⟩, ⟨19, 10⟩, ⟨24, 14⟩, ⟨37, 16⟩, ⟨13, 9⟩, ⟨31, 15⟩, ⟨7, 8⟩, ⟨20, 10⟩, ⟨25, 14⟩, ⟨1, 7⟩, ⟨38, 16⟩, ⟨14, 9⟩, ⟨32, 15⟩, ⟨8, 8⟩, ⟨43, 24⟩, ⟨21, 10⟩, ⟨26, 14⟩, ⟨2, 7⟩, ⟨39, 16⟩, ⟨15, 9⟩, ⟨33, 15⟩, ⟨9, 8⟩, ⟨27, 14⟩, ⟨3, 7⟩, ⟨40, 16⟩, ⟨16, 9⟩, ⟨34, 15⟩, ⟨10, 8⟩, ⟨28, 14⟩, ⟨4, 7⟩, ⟨41, 16⟩, ⟨17, 9⟩, ⟨22, 13⟩]⟩
theorem profile0438_checked : profile0438.check := by decide +kernel

noncomputable def selection1_0438 : Selection :=
  ⟨1, -2, 4, (687/50), 223, 24, 0⟩
theorem selection1_0438_checked : selection1_0438.check profile0438 := by decide +kernel

noncomputable def selection2_0438 : Selection :=
  ⟨2, -10, 8, (661/50), 62, 20, 368⟩
theorem selection2_0438_checked : selection2_0438.check profile0438 := by decide +kernel

noncomputable def profile0439 : ProfileCell :=
  ⟨(7/45), (17/109),
    [8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3], [7, 7, 7, 7, 8],
    [⟨22, 14⟩, ⟨11, 9⟩, ⟨35, 16⟩, ⟨5, 8⟩, ⟨29, 15⟩, ⟨18, 10⟩, ⟨42, 17⟩, ⟨23, 14⟩, ⟨12, 9⟩, ⟨36, 16⟩, ⟨6, 8⟩, ⟨30, 15⟩, ⟨19, 10⟩, ⟨24, 14⟩, ⟨13, 9⟩, ⟨37, 16⟩, ⟨7, 8⟩, ⟨31, 15⟩, ⟨20, 10⟩, ⟨1, 7⟩, ⟨25, 14⟩, ⟨14, 9⟩, ⟨38, 16⟩, ⟨8, 8⟩, ⟨32, 15⟩, ⟨21, 10⟩, ⟨43, 24⟩, ⟨2, 7⟩, ⟨26, 14⟩, ⟨15, 9⟩, ⟨39, 16⟩, ⟨9, 8⟩, ⟨33, 15⟩, ⟨3, 7⟩, ⟨27, 14⟩, ⟨16, 9⟩, ⟨40, 16⟩, ⟨10, 8⟩, ⟨34, 15⟩, ⟨4, 7⟩, ⟨28, 14⟩, ⟨17, 9⟩, ⟨41, 16⟩]⟩
theorem profile0439_checked : profile0439.check := by decide +kernel

noncomputable def selection1_0439 : Selection :=
  ⟨1, -2, 4, (689/50), 421, -18, 270⟩
theorem selection1_0439_checked : selection1_0439.check profile0439 := by decide +kernel

noncomputable def selection2_0439 : Selection :=
  ⟨2, -10, 8, (332/25), 117, -22, 638⟩
theorem selection2_0439_checked : selection2_0439.check profile0439 := by decide +kernel

noncomputable def profile0440 : ProfileCell :=
  ⟨(17/109), (5/32),
    [8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3], [7, 7, 7, 7, 8],
    [⟨41, 17⟩, ⟨22, 14⟩, ⟨11, 9⟩, ⟨35, 16⟩, ⟨5, 8⟩, ⟨29, 15⟩, ⟨18, 10⟩, ⟨42, 17⟩, ⟨23, 14⟩, ⟨12, 9⟩, ⟨36, 16⟩, ⟨6, 8⟩, ⟨30, 15⟩, ⟨19, 10⟩, ⟨24, 14⟩, ⟨13, 9⟩, ⟨37, 16⟩, ⟨7, 8⟩, ⟨31, 15⟩, ⟨20, 10⟩, ⟨1, 7⟩, ⟨25, 14⟩, ⟨14, 9⟩, ⟨38, 16⟩, ⟨8, 8⟩, ⟨32, 15⟩, ⟨21, 10⟩, ⟨2, 7⟩, ⟨43, 24⟩, ⟨26, 14⟩, ⟨15, 9⟩, ⟨39, 16⟩, ⟨9, 8⟩, ⟨33, 15⟩, ⟨3, 7⟩, ⟨27, 14⟩, ⟨16, 9⟩, ⟨40, 16⟩, ⟨10, 8⟩, ⟨34, 15⟩, ⟨4, 7⟩, ⟨28, 14⟩, ⟨17, 9⟩]⟩
theorem profile0440_checked : profile0440.check := by decide +kernel

noncomputable def selection1_0440 : Selection :=
  ⟨1, -2, 4, (689/50), 296, 84, -384⟩
theorem selection1_0440_checked : selection1_0440.check profile0440 := by decide +kernel

noncomputable def selection2_0440 : Selection :=
  ⟨2, -10, 8, (332/25), 82, 80, -16⟩
theorem selection2_0440_checked : selection2_0440.check profile0440 := by decide +kernel

noncomputable def profile0441 : ProfileCell :=
  ⟨(5/32), (8/51),
    [8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 7, 7, 8],
    [⟨17, 10⟩, ⟨28, 15⟩, ⟨41, 17⟩, ⟨11, 9⟩, ⟨22, 14⟩, ⟨35, 16⟩, ⟨5, 8⟩, ⟨18, 10⟩, ⟨29, 15⟩, ⟨42, 17⟩, ⟨12, 9⟩, ⟨23, 14⟩, ⟨36, 16⟩, ⟨6, 8⟩, ⟨19, 10⟩, ⟨30, 15⟩, ⟨13, 9⟩, ⟨24, 14⟩, ⟨37, 16⟩, ⟨7, 8⟩, ⟨20, 10⟩, ⟨31, 15⟩, ⟨1, 7⟩, ⟨14, 9⟩, ⟨25, 14⟩, ⟨38, 16⟩, ⟨8, 8⟩, ⟨21, 10⟩, ⟨32, 15⟩, ⟨2, 7⟩, ⟨15, 9⟩, ⟨26, 14⟩, ⟨43, 24⟩, ⟨39, 16⟩, ⟨9, 8⟩, ⟨33, 15⟩, ⟨3, 7⟩, ⟨16, 9⟩, ⟨27, 14⟩, ⟨40, 16⟩, ⟨10, 8⟩, ⟨34, 15⟩, ⟨4, 7⟩]⟩
theorem profile0441_checked : profile0441.check := by decide +kernel

noncomputable def selection1_0441 : Selection :=
  ⟨1, -3, 4, (1173/100), 538, 84, -384⟩
theorem selection1_0441_checked : selection1_0441.check profile0441 := by decide +kernel

noncomputable def selection2_0441 : Selection :=
  ⟨2, -11, 8, (282/25), 149, 80, -16⟩
theorem selection2_0441_checked : selection2_0441.check profile0441 := by decide +kernel

noncomputable def profile0442 : ProfileCell :=
  ⟨(8/51), (17/108),
    [8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 7, 8, 8],
    [⟨4, 8⟩, ⟨34, 16⟩, ⟨17, 10⟩, ⟨28, 15⟩, ⟨11, 9⟩, ⟨41, 17⟩, ⟨22, 14⟩, ⟨5, 8⟩, ⟨35, 16⟩, ⟨18, 10⟩, ⟨29, 15⟩, ⟨12, 9⟩, ⟨42, 17⟩, ⟨23, 14⟩, ⟨6, 8⟩, ⟨36, 16⟩, ⟨19, 10⟩, ⟨30, 15⟩, ⟨13, 9⟩, ⟨24, 14⟩, ⟨7, 8⟩, ⟨37, 16⟩, ⟨20, 10⟩, ⟨1, 7⟩, ⟨31, 15⟩, ⟨14, 9⟩, ⟨25, 14⟩, ⟨8, 8⟩, ⟨38, 16⟩, ⟨21, 10⟩, ⟨2, 7⟩, ⟨32, 15⟩, ⟨15, 9⟩, ⟨26, 14⟩, ⟨9, 8⟩, ⟨39, 16⟩, ⟨43, 24⟩, ⟨3, 7⟩, ⟨33, 15⟩, ⟨16, 9⟩, ⟨27, 14⟩, ⟨10, 8⟩, ⟨40, 16⟩]⟩
theorem profile0442_checked : profile0442.check := by decide +kernel

noncomputable def selection1_0442 : Selection :=
  ⟨1, -1, 4, (1563/100), 636, 84, -384⟩
theorem selection1_0442_checked : selection1_0442.check profile0442 := by decide +kernel

noncomputable def selection2_0442 : Selection :=
  ⟨2, -9, 8, (382/25), 179, 80, -16⟩
theorem selection2_0442_checked : selection2_0442.check profile0442 := by decide +kernel

noncomputable def profile0443 : ProfileCell :=
  ⟨(17/108), (3/19),
    [8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 7, 8, 8],
    [⟨40, 17⟩, ⟨4, 8⟩, ⟨34, 16⟩, ⟨17, 10⟩, ⟨28, 15⟩, ⟨11, 9⟩, ⟨41, 17⟩, ⟨22, 14⟩, ⟨5, 8⟩, ⟨35, 16⟩, ⟨18, 10⟩, ⟨29, 15⟩, ⟨12, 9⟩, ⟨42, 17⟩, ⟨23, 14⟩, ⟨6, 8⟩, ⟨36, 16⟩, ⟨19, 10⟩, ⟨30, 15⟩, ⟨13, 9⟩, ⟨24, 14⟩, ⟨7, 8⟩, ⟨37, 16⟩, ⟨20, 10⟩, ⟨1, 7⟩, ⟨31, 15⟩, ⟨14, 9⟩, ⟨25, 14⟩, ⟨8, 8⟩, ⟨38, 16⟩, ⟨21, 10⟩, ⟨2, 7⟩, ⟨32, 15⟩, ⟨15, 9⟩, ⟨26, 14⟩, ⟨9, 8⟩, ⟨39, 16⟩, ⟨3, 7⟩, ⟨43, 24⟩, ⟨33, 15⟩, ⟨16, 9⟩, ⟨27, 14⟩, ⟨10, 8⟩]⟩
theorem profile0443_checked : profile0443.check := by decide +kernel

noncomputable def selection1_0443 : Selection :=
  ⟨1, -1, 4, (777/50), 566, 152, -816⟩
theorem selection1_0443_checked : selection1_0443.check profile0443 := by decide +kernel

noncomputable def selection2_0443 : Selection :=
  ⟨2, -9, 8, (382/25), 160, 148, -448⟩
theorem selection2_0443_checked : selection2_0443.check profile0443 := by decide +kernel

noncomputable def profile0444 : ProfileCell :=
  ⟨(3/19), (25/158),
    [8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 7, 8, 8],
    [⟨10, 9⟩, ⟨27, 15⟩, ⟨4, 8⟩, ⟨40, 17⟩, ⟨17, 10⟩, ⟨34, 16⟩, ⟨11, 9⟩, ⟨28, 15⟩, ⟨5, 8⟩, ⟨22, 14⟩, ⟨41, 17⟩, ⟨18, 10⟩, ⟨35, 16⟩, ⟨12, 9⟩, ⟨29, 15⟩, ⟨6, 8⟩, ⟨23, 14⟩, ⟨42, 17⟩, ⟨19, 10⟩, ⟨36, 16⟩, ⟨13, 9⟩, ⟨30, 15⟩, ⟨7, 8⟩, ⟨24, 14⟩, ⟨1, 7⟩, ⟨20, 10⟩, ⟨37, 16⟩, ⟨14, 9⟩, ⟨31, 15⟩, ⟨8, 8⟩, ⟨25, 14⟩, ⟨2, 7⟩, ⟨21, 10⟩, ⟨38, 16⟩, ⟨15, 9⟩, ⟨32, 15⟩, ⟨9, 8⟩, ⟨26, 14⟩, ⟨3, 7⟩, ⟨39, 16⟩, ⟨16, 9⟩, ⟨33, 15⟩, ⟨43, 24⟩]⟩
theorem profile0444_checked : profile0444.check := by decide +kernel

noncomputable def selection1_0444 : Selection :=
  ⟨1, -2, 4, (1337/100), 333, 128, -664⟩
theorem selection1_0444_checked : selection1_0444.check profile0444 := by decide +kernel

noncomputable def selection2_0444 : Selection :=
  ⟨2, -10, 8, (661/50), 95, 124, -296⟩
theorem selection2_0444_checked : selection2_0444.check profile0444 := by decide +kernel

noncomputable def profile0445 : ProfileCell :=
  ⟨(25/158), (16/101),
    [8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 7, 8, 8],
    [⟨43, 25⟩, ⟨10, 9⟩, ⟨27, 15⟩, ⟨4, 8⟩, ⟨40, 17⟩, ⟨17, 10⟩, ⟨34, 16⟩, ⟨11, 9⟩, ⟨28, 15⟩, ⟨5, 8⟩, ⟨22, 14⟩, ⟨41, 17⟩, ⟨18, 10⟩, ⟨35, 16⟩, ⟨12, 9⟩, ⟨29, 15⟩, ⟨6, 8⟩, ⟨23, 14⟩, ⟨42, 17⟩, ⟨19, 10⟩, ⟨36, 16⟩, ⟨13, 9⟩, ⟨30, 15⟩, ⟨7, 8⟩, ⟨24, 14⟩, ⟨1, 7⟩, ⟨20, 10⟩, ⟨37, 16⟩, ⟨14, 9⟩, ⟨31, 15⟩, ⟨8, 8⟩, ⟨25, 14⟩, ⟨2, 7⟩, ⟨21, 10⟩, ⟨38, 16⟩, ⟨15, 9⟩, ⟨32, 15⟩, ⟨9, 8⟩, ⟨26, 14⟩, ⟨3, 7⟩, ⟨39, 16⟩, ⟨16, 9⟩, ⟨33, 15⟩]⟩
theorem profile0445_checked : profile0445.check := by decide +kernel

noncomputable def selection1_0445 : Selection :=
  ⟨1, -2, 4, (1337/100), 188, -172, 1232⟩
theorem selection1_0445_checked : selection1_0445.check profile0445 := by decide +kernel

noncomputable def selection2_0445 : Selection :=
  ⟨2, -10, 8, (1327/100), 54, -176, 1600⟩
theorem selection2_0445_checked : selection2_0445.check profile0445 := by decide +kernel

noncomputable def profile0446 : ProfileCell :=
  ⟨(16/101), (10/63),
    [8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 7, 8, 8],
    [⟨33, 16⟩, ⟨10, 9⟩, ⟨43, 25⟩, ⟨27, 15⟩, ⟨4, 8⟩, ⟨40, 17⟩, ⟨17, 10⟩, ⟨34, 16⟩, ⟨11, 9⟩, ⟨28, 15⟩, ⟨5, 8⟩, ⟨22, 14⟩, ⟨41, 17⟩, ⟨18, 10⟩, ⟨35, 16⟩, ⟨12, 9⟩, ⟨29, 15⟩, ⟨6, 8⟩, ⟨23, 14⟩, ⟨42, 17⟩, ⟨19, 10⟩, ⟨36, 16⟩, ⟨13, 9⟩, ⟨30, 15⟩, ⟨7, 8⟩, ⟨24, 14⟩, ⟨1, 7⟩, ⟨20, 10⟩, ⟨37, 16⟩, ⟨14, 9⟩, ⟨31, 15⟩, ⟨8, 8⟩, ⟨25, 14⟩, ⟨2, 7⟩, ⟨21, 10⟩, ⟨38, 16⟩, ⟨15, 9⟩, ⟨32, 15⟩, ⟨9, 8⟩, ⟨26, 14⟩, ⟨3, 7⟩, ⟨39, 16⟩, ⟨16, 9⟩]⟩
theorem profile0446_checked : profile0446.check := by decide +kernel

noncomputable def selection1_0446 : Selection :=
  ⟨1, -2, 4, (337/25), 316, -108, 828⟩
theorem selection1_0446_checked : selection1_0446.check profile0446 := by decide +kernel

noncomputable def selection2_0446 : Selection :=
  ⟨2, -10, 8, (334/25), 91, -112, 1196⟩
theorem selection2_0446_checked : selection2_0446.check profile0446 := by decide +kernel

noncomputable def profile0447 : ProfileCell :=
  ⟨(10/63), (17/107),
    [8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3], [7, 7, 7, 8, 8],
    [⟨16, 10⟩, ⟨33, 16⟩, ⟨10, 9⟩, ⟨27, 15⟩, ⟨43, 25⟩, ⟨4, 8⟩, ⟨40, 17⟩, ⟨17, 10⟩, ⟨34, 16⟩, ⟨11, 9⟩, ⟨28, 15⟩, ⟨5, 8⟩, ⟨22, 14⟩, ⟨41, 17⟩, ⟨18, 10⟩, ⟨35, 16⟩, ⟨12, 9⟩, ⟨29, 15⟩, ⟨6, 8⟩, ⟨23, 14⟩, ⟨42, 17⟩, ⟨19, 10⟩, ⟨36, 16⟩, ⟨13, 9⟩, ⟨30, 15⟩, ⟨7, 8⟩, ⟨24, 14⟩, ⟨1, 7⟩, ⟨20, 10⟩, ⟨37, 16⟩, ⟨14, 9⟩, ⟨31, 15⟩, ⟨8, 8⟩, ⟨25, 14⟩, ⟨2, 7⟩, ⟨21, 10⟩, ⟨38, 16⟩, ⟨15, 9⟩, ⟨32, 15⟩, ⟨9, 8⟩, ⟨26, 14⟩, ⟨3, 7⟩, ⟨39, 16⟩]⟩
theorem profile0447_checked : profile0447.check := by decide +kernel

noncomputable def selection1_0447 : Selection :=
  ⟨1, -2, 4, (271/20), 150, -148, 1080⟩
theorem selection1_0447_checked : selection1_0447.check profile0447 := by decide +kernel

noncomputable def selection2_0447 : Selection :=
  ⟨2, -10, 8, (1341/100), 43, -152, 1448⟩
theorem selection2_0447_checked : selection2_0447.check profile0447 := by decide +kernel

noncomputable def leaf1_0384 : Block :=
  Block.single profile0384 selection1_0384 profile0384_checked selection1_0384_checked
noncomputable def leaf1_0385 : Block :=
  Block.single profile0385 selection1_0385 profile0385_checked selection1_0385_checked
noncomputable def leaf1_0386 : Block :=
  Block.single profile0386 selection1_0386 profile0386_checked selection1_0386_checked
noncomputable def leaf1_0387 : Block :=
  Block.single profile0387 selection1_0387 profile0387_checked selection1_0387_checked
noncomputable def leaf1_0388 : Block :=
  Block.single profile0388 selection1_0388 profile0388_checked selection1_0388_checked
noncomputable def leaf1_0389 : Block :=
  Block.single profile0389 selection1_0389 profile0389_checked selection1_0389_checked
noncomputable def leaf1_0390 : Block :=
  Block.single profile0390 selection1_0390 profile0390_checked selection1_0390_checked
noncomputable def leaf1_0391 : Block :=
  Block.single profile0391 selection1_0391 profile0391_checked selection1_0391_checked
noncomputable def leaf1_0392 : Block :=
  Block.single profile0392 selection1_0392 profile0392_checked selection1_0392_checked
noncomputable def leaf1_0393 : Block :=
  Block.single profile0393 selection1_0393 profile0393_checked selection1_0393_checked
noncomputable def leaf1_0394 : Block :=
  Block.single profile0394 selection1_0394 profile0394_checked selection1_0394_checked
noncomputable def leaf1_0395 : Block :=
  Block.single profile0395 selection1_0395 profile0395_checked selection1_0395_checked
noncomputable def leaf1_0396 : Block :=
  Block.single profile0396 selection1_0396 profile0396_checked selection1_0396_checked
noncomputable def leaf1_0397 : Block :=
  Block.single profile0397 selection1_0397 profile0397_checked selection1_0397_checked
noncomputable def leaf1_0398 : Block :=
  Block.single profile0398 selection1_0398 profile0398_checked selection1_0398_checked
noncomputable def leaf1_0399 : Block :=
  Block.single profile0399 selection1_0399 profile0399_checked selection1_0399_checked
noncomputable def leaf1_0400 : Block :=
  Block.single profile0400 selection1_0400 profile0400_checked selection1_0400_checked
noncomputable def leaf1_0401 : Block :=
  Block.single profile0401 selection1_0401 profile0401_checked selection1_0401_checked
noncomputable def leaf1_0402 : Block :=
  Block.single profile0402 selection1_0402 profile0402_checked selection1_0402_checked
noncomputable def leaf1_0403 : Block :=
  Block.single profile0403 selection1_0403 profile0403_checked selection1_0403_checked
noncomputable def leaf1_0404 : Block :=
  Block.single profile0404 selection1_0404 profile0404_checked selection1_0404_checked
noncomputable def leaf1_0405 : Block :=
  Block.single profile0405 selection1_0405 profile0405_checked selection1_0405_checked
noncomputable def leaf1_0406 : Block :=
  Block.single profile0406 selection1_0406 profile0406_checked selection1_0406_checked
noncomputable def leaf1_0407 : Block :=
  Block.single profile0407 selection1_0407 profile0407_checked selection1_0407_checked
noncomputable def leaf1_0408 : Block :=
  Block.single profile0408 selection1_0408 profile0408_checked selection1_0408_checked
noncomputable def leaf1_0409 : Block :=
  Block.single profile0409 selection1_0409 profile0409_checked selection1_0409_checked
noncomputable def leaf1_0410 : Block :=
  Block.single profile0410 selection1_0410 profile0410_checked selection1_0410_checked
noncomputable def leaf1_0411 : Block :=
  Block.single profile0411 selection1_0411 profile0411_checked selection1_0411_checked
noncomputable def leaf1_0412 : Block :=
  Block.single profile0412 selection1_0412 profile0412_checked selection1_0412_checked
noncomputable def leaf1_0413 : Block :=
  Block.single profile0413 selection1_0413 profile0413_checked selection1_0413_checked
noncomputable def leaf1_0414 : Block :=
  Block.single profile0414 selection1_0414 profile0414_checked selection1_0414_checked
noncomputable def leaf1_0415 : Block :=
  Block.single profile0415 selection1_0415 profile0415_checked selection1_0415_checked
noncomputable def leaf1_0416 : Block :=
  Block.single profile0416 selection1_0416 profile0416_checked selection1_0416_checked
noncomputable def leaf1_0417 : Block :=
  Block.single profile0417 selection1_0417 profile0417_checked selection1_0417_checked
noncomputable def leaf1_0418 : Block :=
  Block.single profile0418 selection1_0418 profile0418_checked selection1_0418_checked
noncomputable def leaf1_0419 : Block :=
  Block.single profile0419 selection1_0419 profile0419_checked selection1_0419_checked
noncomputable def leaf1_0420 : Block :=
  Block.single profile0420 selection1_0420 profile0420_checked selection1_0420_checked
noncomputable def leaf1_0421 : Block :=
  Block.single profile0421 selection1_0421 profile0421_checked selection1_0421_checked
noncomputable def leaf1_0422 : Block :=
  Block.single profile0422 selection1_0422 profile0422_checked selection1_0422_checked
noncomputable def leaf1_0423 : Block :=
  Block.single profile0423 selection1_0423 profile0423_checked selection1_0423_checked
noncomputable def leaf1_0424 : Block :=
  Block.single profile0424 selection1_0424 profile0424_checked selection1_0424_checked
noncomputable def leaf1_0425 : Block :=
  Block.single profile0425 selection1_0425 profile0425_checked selection1_0425_checked
noncomputable def leaf1_0426 : Block :=
  Block.single profile0426 selection1_0426 profile0426_checked selection1_0426_checked
noncomputable def leaf1_0427 : Block :=
  Block.single profile0427 selection1_0427 profile0427_checked selection1_0427_checked
noncomputable def leaf1_0428 : Block :=
  Block.single profile0428 selection1_0428 profile0428_checked selection1_0428_checked
noncomputable def leaf1_0429 : Block :=
  Block.single profile0429 selection1_0429 profile0429_checked selection1_0429_checked
noncomputable def leaf1_0430 : Block :=
  Block.single profile0430 selection1_0430 profile0430_checked selection1_0430_checked
noncomputable def leaf1_0431 : Block :=
  Block.single profile0431 selection1_0431 profile0431_checked selection1_0431_checked
noncomputable def leaf1_0432 : Block :=
  Block.single profile0432 selection1_0432 profile0432_checked selection1_0432_checked
noncomputable def leaf1_0433 : Block :=
  Block.single profile0433 selection1_0433 profile0433_checked selection1_0433_checked
noncomputable def leaf1_0434 : Block :=
  Block.single profile0434 selection1_0434 profile0434_checked selection1_0434_checked
noncomputable def leaf1_0435 : Block :=
  Block.single profile0435 selection1_0435 profile0435_checked selection1_0435_checked
noncomputable def leaf1_0436 : Block :=
  Block.single profile0436 selection1_0436 profile0436_checked selection1_0436_checked
noncomputable def leaf1_0437 : Block :=
  Block.single profile0437 selection1_0437 profile0437_checked selection1_0437_checked
noncomputable def leaf1_0438 : Block :=
  Block.single profile0438 selection1_0438 profile0438_checked selection1_0438_checked
noncomputable def leaf1_0439 : Block :=
  Block.single profile0439 selection1_0439 profile0439_checked selection1_0439_checked
noncomputable def leaf1_0440 : Block :=
  Block.single profile0440 selection1_0440 profile0440_checked selection1_0440_checked
noncomputable def leaf1_0441 : Block :=
  Block.single profile0441 selection1_0441 profile0441_checked selection1_0441_checked
noncomputable def leaf1_0442 : Block :=
  Block.single profile0442 selection1_0442 profile0442_checked selection1_0442_checked
noncomputable def leaf1_0443 : Block :=
  Block.single profile0443 selection1_0443 profile0443_checked selection1_0443_checked
noncomputable def leaf1_0444 : Block :=
  Block.single profile0444 selection1_0444 profile0444_checked selection1_0444_checked
noncomputable def leaf1_0445 : Block :=
  Block.single profile0445 selection1_0445 profile0445_checked selection1_0445_checked
noncomputable def leaf1_0446 : Block :=
  Block.single profile0446 selection1_0446 profile0446_checked selection1_0446_checked
noncomputable def leaf1_0447 : Block :=
  Block.single profile0447 selection1_0447 profile0447_checked selection1_0447_checked
noncomputable def batch006p1_0_0000 : Block :=
  Block.append leaf1_0384 leaf1_0385 (by decide +kernel)
noncomputable def batch006p1_0_0001 : Block :=
  Block.append leaf1_0386 leaf1_0387 (by decide +kernel)
noncomputable def batch006p1_0_0002 : Block :=
  Block.append leaf1_0388 leaf1_0389 (by decide +kernel)
noncomputable def batch006p1_0_0003 : Block :=
  Block.append leaf1_0390 leaf1_0391 (by decide +kernel)
noncomputable def batch006p1_0_0004 : Block :=
  Block.append leaf1_0392 leaf1_0393 (by decide +kernel)
noncomputable def batch006p1_0_0005 : Block :=
  Block.append leaf1_0394 leaf1_0395 (by decide +kernel)
noncomputable def batch006p1_0_0006 : Block :=
  Block.append leaf1_0396 leaf1_0397 (by decide +kernel)
noncomputable def batch006p1_0_0007 : Block :=
  Block.append leaf1_0398 leaf1_0399 (by decide +kernel)
noncomputable def batch006p1_0_0008 : Block :=
  Block.append leaf1_0400 leaf1_0401 (by decide +kernel)
noncomputable def batch006p1_0_0009 : Block :=
  Block.append leaf1_0402 leaf1_0403 (by decide +kernel)
noncomputable def batch006p1_0_0010 : Block :=
  Block.append leaf1_0404 leaf1_0405 (by decide +kernel)
noncomputable def batch006p1_0_0011 : Block :=
  Block.append leaf1_0406 leaf1_0407 (by decide +kernel)
noncomputable def batch006p1_0_0012 : Block :=
  Block.append leaf1_0408 leaf1_0409 (by decide +kernel)
noncomputable def batch006p1_0_0013 : Block :=
  Block.append leaf1_0410 leaf1_0411 (by decide +kernel)
noncomputable def batch006p1_0_0014 : Block :=
  Block.append leaf1_0412 leaf1_0413 (by decide +kernel)
noncomputable def batch006p1_0_0015 : Block :=
  Block.append leaf1_0414 leaf1_0415 (by decide +kernel)
noncomputable def batch006p1_0_0016 : Block :=
  Block.append leaf1_0416 leaf1_0417 (by decide +kernel)
noncomputable def batch006p1_0_0017 : Block :=
  Block.append leaf1_0418 leaf1_0419 (by decide +kernel)
noncomputable def batch006p1_0_0018 : Block :=
  Block.append leaf1_0420 leaf1_0421 (by decide +kernel)
noncomputable def batch006p1_0_0019 : Block :=
  Block.append leaf1_0422 leaf1_0423 (by decide +kernel)
noncomputable def batch006p1_0_0020 : Block :=
  Block.append leaf1_0424 leaf1_0425 (by decide +kernel)
noncomputable def batch006p1_0_0021 : Block :=
  Block.append leaf1_0426 leaf1_0427 (by decide +kernel)
noncomputable def batch006p1_0_0022 : Block :=
  Block.append leaf1_0428 leaf1_0429 (by decide +kernel)
noncomputable def batch006p1_0_0023 : Block :=
  Block.append leaf1_0430 leaf1_0431 (by decide +kernel)
noncomputable def batch006p1_0_0024 : Block :=
  Block.append leaf1_0432 leaf1_0433 (by decide +kernel)
noncomputable def batch006p1_0_0025 : Block :=
  Block.append leaf1_0434 leaf1_0435 (by decide +kernel)
noncomputable def batch006p1_0_0026 : Block :=
  Block.append leaf1_0436 leaf1_0437 (by decide +kernel)
noncomputable def batch006p1_0_0027 : Block :=
  Block.append leaf1_0438 leaf1_0439 (by decide +kernel)
noncomputable def batch006p1_0_0028 : Block :=
  Block.append leaf1_0440 leaf1_0441 (by decide +kernel)
noncomputable def batch006p1_0_0029 : Block :=
  Block.append leaf1_0442 leaf1_0443 (by decide +kernel)
noncomputable def batch006p1_0_0030 : Block :=
  Block.append leaf1_0444 leaf1_0445 (by decide +kernel)
noncomputable def batch006p1_0_0031 : Block :=
  Block.append leaf1_0446 leaf1_0447 (by decide +kernel)
noncomputable def batch006p1_1_0000 : Block :=
  Block.append batch006p1_0_0000 batch006p1_0_0001 (by decide +kernel)
noncomputable def batch006p1_1_0001 : Block :=
  Block.append batch006p1_0_0002 batch006p1_0_0003 (by decide +kernel)
noncomputable def batch006p1_1_0002 : Block :=
  Block.append batch006p1_0_0004 batch006p1_0_0005 (by decide +kernel)
noncomputable def batch006p1_1_0003 : Block :=
  Block.append batch006p1_0_0006 batch006p1_0_0007 (by decide +kernel)
noncomputable def batch006p1_1_0004 : Block :=
  Block.append batch006p1_0_0008 batch006p1_0_0009 (by decide +kernel)
noncomputable def batch006p1_1_0005 : Block :=
  Block.append batch006p1_0_0010 batch006p1_0_0011 (by decide +kernel)
noncomputable def batch006p1_1_0006 : Block :=
  Block.append batch006p1_0_0012 batch006p1_0_0013 (by decide +kernel)
noncomputable def batch006p1_1_0007 : Block :=
  Block.append batch006p1_0_0014 batch006p1_0_0015 (by decide +kernel)
noncomputable def batch006p1_1_0008 : Block :=
  Block.append batch006p1_0_0016 batch006p1_0_0017 (by decide +kernel)
noncomputable def batch006p1_1_0009 : Block :=
  Block.append batch006p1_0_0018 batch006p1_0_0019 (by decide +kernel)
noncomputable def batch006p1_1_0010 : Block :=
  Block.append batch006p1_0_0020 batch006p1_0_0021 (by decide +kernel)
noncomputable def batch006p1_1_0011 : Block :=
  Block.append batch006p1_0_0022 batch006p1_0_0023 (by decide +kernel)
noncomputable def batch006p1_1_0012 : Block :=
  Block.append batch006p1_0_0024 batch006p1_0_0025 (by decide +kernel)
noncomputable def batch006p1_1_0013 : Block :=
  Block.append batch006p1_0_0026 batch006p1_0_0027 (by decide +kernel)
noncomputable def batch006p1_1_0014 : Block :=
  Block.append batch006p1_0_0028 batch006p1_0_0029 (by decide +kernel)
noncomputable def batch006p1_1_0015 : Block :=
  Block.append batch006p1_0_0030 batch006p1_0_0031 (by decide +kernel)
noncomputable def batch006p1_2_0000 : Block :=
  Block.append batch006p1_1_0000 batch006p1_1_0001 (by decide +kernel)
noncomputable def batch006p1_2_0001 : Block :=
  Block.append batch006p1_1_0002 batch006p1_1_0003 (by decide +kernel)
noncomputable def batch006p1_2_0002 : Block :=
  Block.append batch006p1_1_0004 batch006p1_1_0005 (by decide +kernel)
noncomputable def batch006p1_2_0003 : Block :=
  Block.append batch006p1_1_0006 batch006p1_1_0007 (by decide +kernel)
noncomputable def batch006p1_2_0004 : Block :=
  Block.append batch006p1_1_0008 batch006p1_1_0009 (by decide +kernel)
noncomputable def batch006p1_2_0005 : Block :=
  Block.append batch006p1_1_0010 batch006p1_1_0011 (by decide +kernel)
noncomputable def batch006p1_2_0006 : Block :=
  Block.append batch006p1_1_0012 batch006p1_1_0013 (by decide +kernel)
noncomputable def batch006p1_2_0007 : Block :=
  Block.append batch006p1_1_0014 batch006p1_1_0015 (by decide +kernel)
noncomputable def batch006p1_3_0000 : Block :=
  Block.append batch006p1_2_0000 batch006p1_2_0001 (by decide +kernel)
noncomputable def batch006p1_3_0001 : Block :=
  Block.append batch006p1_2_0002 batch006p1_2_0003 (by decide +kernel)
noncomputable def batch006p1_3_0002 : Block :=
  Block.append batch006p1_2_0004 batch006p1_2_0005 (by decide +kernel)
noncomputable def batch006p1_3_0003 : Block :=
  Block.append batch006p1_2_0006 batch006p1_2_0007 (by decide +kernel)
noncomputable def batch006p1_4_0000 : Block :=
  Block.append batch006p1_3_0000 batch006p1_3_0001 (by decide +kernel)
noncomputable def batch006p1_4_0001 : Block :=
  Block.append batch006p1_3_0002 batch006p1_3_0003 (by decide +kernel)
noncomputable def batch006p1_5_0000 : Block :=
  Block.append batch006p1_4_0000 batch006p1_4_0001 (by decide +kernel)
theorem batch006p1_5_0000_left : batch006p1_5_0000.left = (109/96) := by decide +kernel
theorem batch006p1_5_0000_right : batch006p1_5_0000.right = (124/107) := by decide +kernel
theorem batch006p1_5_0000_units : batch006p1_5_0000.units = 25553 := by decide +kernel
noncomputable def leaf2_0384 : Block :=
  Block.single profile0384 selection2_0384 profile0384_checked selection2_0384_checked
noncomputable def leaf2_0385 : Block :=
  Block.single profile0385 selection2_0385 profile0385_checked selection2_0385_checked
noncomputable def leaf2_0386 : Block :=
  Block.single profile0386 selection2_0386 profile0386_checked selection2_0386_checked
noncomputable def leaf2_0387 : Block :=
  Block.single profile0387 selection2_0387 profile0387_checked selection2_0387_checked
noncomputable def leaf2_0388 : Block :=
  Block.single profile0388 selection2_0388 profile0388_checked selection2_0388_checked
noncomputable def leaf2_0389 : Block :=
  Block.single profile0389 selection2_0389 profile0389_checked selection2_0389_checked
noncomputable def leaf2_0390 : Block :=
  Block.single profile0390 selection2_0390 profile0390_checked selection2_0390_checked
noncomputable def leaf2_0391 : Block :=
  Block.single profile0391 selection2_0391 profile0391_checked selection2_0391_checked
noncomputable def leaf2_0392 : Block :=
  Block.single profile0392 selection2_0392 profile0392_checked selection2_0392_checked
noncomputable def leaf2_0393 : Block :=
  Block.single profile0393 selection2_0393 profile0393_checked selection2_0393_checked
noncomputable def leaf2_0394 : Block :=
  Block.single profile0394 selection2_0394 profile0394_checked selection2_0394_checked
noncomputable def leaf2_0395 : Block :=
  Block.single profile0395 selection2_0395 profile0395_checked selection2_0395_checked
noncomputable def leaf2_0396 : Block :=
  Block.single profile0396 selection2_0396 profile0396_checked selection2_0396_checked
noncomputable def leaf2_0397 : Block :=
  Block.single profile0397 selection2_0397 profile0397_checked selection2_0397_checked
noncomputable def leaf2_0398 : Block :=
  Block.single profile0398 selection2_0398 profile0398_checked selection2_0398_checked
noncomputable def leaf2_0399 : Block :=
  Block.single profile0399 selection2_0399 profile0399_checked selection2_0399_checked
noncomputable def leaf2_0400 : Block :=
  Block.single profile0400 selection2_0400 profile0400_checked selection2_0400_checked
noncomputable def leaf2_0401 : Block :=
  Block.single profile0401 selection2_0401 profile0401_checked selection2_0401_checked
noncomputable def leaf2_0402 : Block :=
  Block.single profile0402 selection2_0402 profile0402_checked selection2_0402_checked
noncomputable def leaf2_0403 : Block :=
  Block.single profile0403 selection2_0403 profile0403_checked selection2_0403_checked
noncomputable def leaf2_0404 : Block :=
  Block.single profile0404 selection2_0404 profile0404_checked selection2_0404_checked
noncomputable def leaf2_0405 : Block :=
  Block.single profile0405 selection2_0405 profile0405_checked selection2_0405_checked
noncomputable def leaf2_0406 : Block :=
  Block.single profile0406 selection2_0406 profile0406_checked selection2_0406_checked
noncomputable def leaf2_0407 : Block :=
  Block.single profile0407 selection2_0407 profile0407_checked selection2_0407_checked
noncomputable def leaf2_0408 : Block :=
  Block.single profile0408 selection2_0408 profile0408_checked selection2_0408_checked
noncomputable def leaf2_0409 : Block :=
  Block.single profile0409 selection2_0409 profile0409_checked selection2_0409_checked
noncomputable def leaf2_0410 : Block :=
  Block.single profile0410 selection2_0410 profile0410_checked selection2_0410_checked
noncomputable def leaf2_0411 : Block :=
  Block.single profile0411 selection2_0411 profile0411_checked selection2_0411_checked
noncomputable def leaf2_0412 : Block :=
  Block.single profile0412 selection2_0412 profile0412_checked selection2_0412_checked
noncomputable def leaf2_0413 : Block :=
  Block.single profile0413 selection2_0413 profile0413_checked selection2_0413_checked
noncomputable def leaf2_0414 : Block :=
  Block.single profile0414 selection2_0414 profile0414_checked selection2_0414_checked
noncomputable def leaf2_0415 : Block :=
  Block.single profile0415 selection2_0415 profile0415_checked selection2_0415_checked
noncomputable def leaf2_0416 : Block :=
  Block.single profile0416 selection2_0416 profile0416_checked selection2_0416_checked
noncomputable def leaf2_0417 : Block :=
  Block.single profile0417 selection2_0417 profile0417_checked selection2_0417_checked
noncomputable def leaf2_0418 : Block :=
  Block.single profile0418 selection2_0418 profile0418_checked selection2_0418_checked
noncomputable def leaf2_0419 : Block :=
  Block.single profile0419 selection2_0419 profile0419_checked selection2_0419_checked
noncomputable def leaf2_0420 : Block :=
  Block.single profile0420 selection2_0420 profile0420_checked selection2_0420_checked
noncomputable def leaf2_0421 : Block :=
  Block.single profile0421 selection2_0421 profile0421_checked selection2_0421_checked
noncomputable def leaf2_0422 : Block :=
  Block.single profile0422 selection2_0422 profile0422_checked selection2_0422_checked
noncomputable def leaf2_0423 : Block :=
  Block.single profile0423 selection2_0423 profile0423_checked selection2_0423_checked
noncomputable def leaf2_0424 : Block :=
  Block.single profile0424 selection2_0424 profile0424_checked selection2_0424_checked
noncomputable def leaf2_0425 : Block :=
  Block.single profile0425 selection2_0425 profile0425_checked selection2_0425_checked
noncomputable def leaf2_0426 : Block :=
  Block.single profile0426 selection2_0426 profile0426_checked selection2_0426_checked
noncomputable def leaf2_0427 : Block :=
  Block.single profile0427 selection2_0427 profile0427_checked selection2_0427_checked
noncomputable def leaf2_0428 : Block :=
  Block.single profile0428 selection2_0428 profile0428_checked selection2_0428_checked
noncomputable def leaf2_0429 : Block :=
  Block.single profile0429 selection2_0429 profile0429_checked selection2_0429_checked
noncomputable def leaf2_0430 : Block :=
  Block.single profile0430 selection2_0430 profile0430_checked selection2_0430_checked
noncomputable def leaf2_0431 : Block :=
  Block.single profile0431 selection2_0431 profile0431_checked selection2_0431_checked
noncomputable def leaf2_0432 : Block :=
  Block.single profile0432 selection2_0432 profile0432_checked selection2_0432_checked
noncomputable def leaf2_0433 : Block :=
  Block.single profile0433 selection2_0433 profile0433_checked selection2_0433_checked
noncomputable def leaf2_0434 : Block :=
  Block.single profile0434 selection2_0434 profile0434_checked selection2_0434_checked
noncomputable def leaf2_0435 : Block :=
  Block.single profile0435 selection2_0435 profile0435_checked selection2_0435_checked
noncomputable def leaf2_0436 : Block :=
  Block.single profile0436 selection2_0436 profile0436_checked selection2_0436_checked
noncomputable def leaf2_0437 : Block :=
  Block.single profile0437 selection2_0437 profile0437_checked selection2_0437_checked
noncomputable def leaf2_0438 : Block :=
  Block.single profile0438 selection2_0438 profile0438_checked selection2_0438_checked
noncomputable def leaf2_0439 : Block :=
  Block.single profile0439 selection2_0439 profile0439_checked selection2_0439_checked
noncomputable def leaf2_0440 : Block :=
  Block.single profile0440 selection2_0440 profile0440_checked selection2_0440_checked
noncomputable def leaf2_0441 : Block :=
  Block.single profile0441 selection2_0441 profile0441_checked selection2_0441_checked
noncomputable def leaf2_0442 : Block :=
  Block.single profile0442 selection2_0442 profile0442_checked selection2_0442_checked
noncomputable def leaf2_0443 : Block :=
  Block.single profile0443 selection2_0443 profile0443_checked selection2_0443_checked
noncomputable def leaf2_0444 : Block :=
  Block.single profile0444 selection2_0444 profile0444_checked selection2_0444_checked
noncomputable def leaf2_0445 : Block :=
  Block.single profile0445 selection2_0445 profile0445_checked selection2_0445_checked
noncomputable def leaf2_0446 : Block :=
  Block.single profile0446 selection2_0446 profile0446_checked selection2_0446_checked
noncomputable def leaf2_0447 : Block :=
  Block.single profile0447 selection2_0447 profile0447_checked selection2_0447_checked
noncomputable def batch006p2_0_0000 : Block :=
  Block.append leaf2_0384 leaf2_0385 (by decide +kernel)
noncomputable def batch006p2_0_0001 : Block :=
  Block.append leaf2_0386 leaf2_0387 (by decide +kernel)
noncomputable def batch006p2_0_0002 : Block :=
  Block.append leaf2_0388 leaf2_0389 (by decide +kernel)
noncomputable def batch006p2_0_0003 : Block :=
  Block.append leaf2_0390 leaf2_0391 (by decide +kernel)
noncomputable def batch006p2_0_0004 : Block :=
  Block.append leaf2_0392 leaf2_0393 (by decide +kernel)
noncomputable def batch006p2_0_0005 : Block :=
  Block.append leaf2_0394 leaf2_0395 (by decide +kernel)
noncomputable def batch006p2_0_0006 : Block :=
  Block.append leaf2_0396 leaf2_0397 (by decide +kernel)
noncomputable def batch006p2_0_0007 : Block :=
  Block.append leaf2_0398 leaf2_0399 (by decide +kernel)
noncomputable def batch006p2_0_0008 : Block :=
  Block.append leaf2_0400 leaf2_0401 (by decide +kernel)
noncomputable def batch006p2_0_0009 : Block :=
  Block.append leaf2_0402 leaf2_0403 (by decide +kernel)
noncomputable def batch006p2_0_0010 : Block :=
  Block.append leaf2_0404 leaf2_0405 (by decide +kernel)
noncomputable def batch006p2_0_0011 : Block :=
  Block.append leaf2_0406 leaf2_0407 (by decide +kernel)
noncomputable def batch006p2_0_0012 : Block :=
  Block.append leaf2_0408 leaf2_0409 (by decide +kernel)
noncomputable def batch006p2_0_0013 : Block :=
  Block.append leaf2_0410 leaf2_0411 (by decide +kernel)
noncomputable def batch006p2_0_0014 : Block :=
  Block.append leaf2_0412 leaf2_0413 (by decide +kernel)
noncomputable def batch006p2_0_0015 : Block :=
  Block.append leaf2_0414 leaf2_0415 (by decide +kernel)
noncomputable def batch006p2_0_0016 : Block :=
  Block.append leaf2_0416 leaf2_0417 (by decide +kernel)
noncomputable def batch006p2_0_0017 : Block :=
  Block.append leaf2_0418 leaf2_0419 (by decide +kernel)
noncomputable def batch006p2_0_0018 : Block :=
  Block.append leaf2_0420 leaf2_0421 (by decide +kernel)
noncomputable def batch006p2_0_0019 : Block :=
  Block.append leaf2_0422 leaf2_0423 (by decide +kernel)
noncomputable def batch006p2_0_0020 : Block :=
  Block.append leaf2_0424 leaf2_0425 (by decide +kernel)
noncomputable def batch006p2_0_0021 : Block :=
  Block.append leaf2_0426 leaf2_0427 (by decide +kernel)
noncomputable def batch006p2_0_0022 : Block :=
  Block.append leaf2_0428 leaf2_0429 (by decide +kernel)
noncomputable def batch006p2_0_0023 : Block :=
  Block.append leaf2_0430 leaf2_0431 (by decide +kernel)
noncomputable def batch006p2_0_0024 : Block :=
  Block.append leaf2_0432 leaf2_0433 (by decide +kernel)
noncomputable def batch006p2_0_0025 : Block :=
  Block.append leaf2_0434 leaf2_0435 (by decide +kernel)
noncomputable def batch006p2_0_0026 : Block :=
  Block.append leaf2_0436 leaf2_0437 (by decide +kernel)
noncomputable def batch006p2_0_0027 : Block :=
  Block.append leaf2_0438 leaf2_0439 (by decide +kernel)
noncomputable def batch006p2_0_0028 : Block :=
  Block.append leaf2_0440 leaf2_0441 (by decide +kernel)
noncomputable def batch006p2_0_0029 : Block :=
  Block.append leaf2_0442 leaf2_0443 (by decide +kernel)
noncomputable def batch006p2_0_0030 : Block :=
  Block.append leaf2_0444 leaf2_0445 (by decide +kernel)
noncomputable def batch006p2_0_0031 : Block :=
  Block.append leaf2_0446 leaf2_0447 (by decide +kernel)
noncomputable def batch006p2_1_0000 : Block :=
  Block.append batch006p2_0_0000 batch006p2_0_0001 (by decide +kernel)
noncomputable def batch006p2_1_0001 : Block :=
  Block.append batch006p2_0_0002 batch006p2_0_0003 (by decide +kernel)
noncomputable def batch006p2_1_0002 : Block :=
  Block.append batch006p2_0_0004 batch006p2_0_0005 (by decide +kernel)
noncomputable def batch006p2_1_0003 : Block :=
  Block.append batch006p2_0_0006 batch006p2_0_0007 (by decide +kernel)
noncomputable def batch006p2_1_0004 : Block :=
  Block.append batch006p2_0_0008 batch006p2_0_0009 (by decide +kernel)
noncomputable def batch006p2_1_0005 : Block :=
  Block.append batch006p2_0_0010 batch006p2_0_0011 (by decide +kernel)
noncomputable def batch006p2_1_0006 : Block :=
  Block.append batch006p2_0_0012 batch006p2_0_0013 (by decide +kernel)
noncomputable def batch006p2_1_0007 : Block :=
  Block.append batch006p2_0_0014 batch006p2_0_0015 (by decide +kernel)
noncomputable def batch006p2_1_0008 : Block :=
  Block.append batch006p2_0_0016 batch006p2_0_0017 (by decide +kernel)
noncomputable def batch006p2_1_0009 : Block :=
  Block.append batch006p2_0_0018 batch006p2_0_0019 (by decide +kernel)
noncomputable def batch006p2_1_0010 : Block :=
  Block.append batch006p2_0_0020 batch006p2_0_0021 (by decide +kernel)
noncomputable def batch006p2_1_0011 : Block :=
  Block.append batch006p2_0_0022 batch006p2_0_0023 (by decide +kernel)
noncomputable def batch006p2_1_0012 : Block :=
  Block.append batch006p2_0_0024 batch006p2_0_0025 (by decide +kernel)
noncomputable def batch006p2_1_0013 : Block :=
  Block.append batch006p2_0_0026 batch006p2_0_0027 (by decide +kernel)
noncomputable def batch006p2_1_0014 : Block :=
  Block.append batch006p2_0_0028 batch006p2_0_0029 (by decide +kernel)
noncomputable def batch006p2_1_0015 : Block :=
  Block.append batch006p2_0_0030 batch006p2_0_0031 (by decide +kernel)
noncomputable def batch006p2_2_0000 : Block :=
  Block.append batch006p2_1_0000 batch006p2_1_0001 (by decide +kernel)
noncomputable def batch006p2_2_0001 : Block :=
  Block.append batch006p2_1_0002 batch006p2_1_0003 (by decide +kernel)
noncomputable def batch006p2_2_0002 : Block :=
  Block.append batch006p2_1_0004 batch006p2_1_0005 (by decide +kernel)
noncomputable def batch006p2_2_0003 : Block :=
  Block.append batch006p2_1_0006 batch006p2_1_0007 (by decide +kernel)
noncomputable def batch006p2_2_0004 : Block :=
  Block.append batch006p2_1_0008 batch006p2_1_0009 (by decide +kernel)
noncomputable def batch006p2_2_0005 : Block :=
  Block.append batch006p2_1_0010 batch006p2_1_0011 (by decide +kernel)
noncomputable def batch006p2_2_0006 : Block :=
  Block.append batch006p2_1_0012 batch006p2_1_0013 (by decide +kernel)
noncomputable def batch006p2_2_0007 : Block :=
  Block.append batch006p2_1_0014 batch006p2_1_0015 (by decide +kernel)
noncomputable def batch006p2_3_0000 : Block :=
  Block.append batch006p2_2_0000 batch006p2_2_0001 (by decide +kernel)
noncomputable def batch006p2_3_0001 : Block :=
  Block.append batch006p2_2_0002 batch006p2_2_0003 (by decide +kernel)
noncomputable def batch006p2_3_0002 : Block :=
  Block.append batch006p2_2_0004 batch006p2_2_0005 (by decide +kernel)
noncomputable def batch006p2_3_0003 : Block :=
  Block.append batch006p2_2_0006 batch006p2_2_0007 (by decide +kernel)
noncomputable def batch006p2_4_0000 : Block :=
  Block.append batch006p2_3_0000 batch006p2_3_0001 (by decide +kernel)
noncomputable def batch006p2_4_0001 : Block :=
  Block.append batch006p2_3_0002 batch006p2_3_0003 (by decide +kernel)
noncomputable def batch006p2_5_0000 : Block :=
  Block.append batch006p2_4_0000 batch006p2_4_0001 (by decide +kernel)
theorem batch006p2_5_0000_left : batch006p2_5_0000.left = (205/96) := by decide +kernel
theorem batch006p2_5_0000_right : batch006p2_5_0000.right = (231/107) := by decide +kernel
theorem batch006p2_5_0000_units : batch006p2_5_0000.units = 7160 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
