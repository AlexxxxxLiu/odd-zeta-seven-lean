import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile0256 : ProfileCell :=
  ⟨(9/100), (1/11),
    [4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨32, 9⟩, ⟨20, 6⟩, ⟨9, 5⟩, ⟨33, 9⟩, ⟨22, 8⟩, ⟨21, 6⟩, ⟨10, 5⟩, ⟨34, 9⟩, ⟨23, 8⟩, ⟨11, 5⟩, ⟨43, 14⟩, ⟨35, 9⟩, ⟨24, 8⟩, ⟨12, 5⟩, ⟨1, 4⟩, ⟨36, 9⟩, ⟨25, 8⟩, ⟨13, 5⟩, ⟨2, 4⟩, ⟨37, 9⟩, ⟨26, 8⟩, ⟨14, 5⟩, ⟨3, 4⟩, ⟨38, 9⟩, ⟨27, 8⟩, ⟨15, 5⟩, ⟨4, 4⟩, ⟨39, 9⟩, ⟨28, 8⟩, ⟨16, 5⟩, ⟨5, 4⟩, ⟨40, 9⟩, ⟨29, 8⟩, ⟨17, 5⟩, ⟨6, 4⟩, ⟨41, 9⟩, ⟨30, 8⟩, ⟨18, 5⟩, ⟨7, 4⟩, ⟨42, 9⟩, ⟨31, 8⟩, ⟨19, 5⟩, ⟨8, 4⟩]⟩
theorem profile0256_checked : profile0256.check := by decide +kernel

noncomputable def selection1_0256 : Selection :=
  ⟨1, -1, 4, (767/50), 1173, -44, 736⟩
theorem selection1_0256_checked : selection1_0256.check profile0256 := by decide +kernel

noncomputable def selection2_0256 : Selection :=
  ⟨2, -9, 8, (301/20), 314, -24, 1104⟩
theorem selection2_0256_checked : selection2_0256.check profile0256 := by decide +kernel

noncomputable def profile0257 : ProfileCell :=
  ⟨(1/11), (10/109),
    [4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨8, 5⟩, ⟨19, 6⟩, ⟨31, 9⟩, ⟨42, 10⟩, ⟨9, 5⟩, ⟨20, 6⟩, ⟨32, 9⟩, ⟨10, 5⟩, ⟨21, 6⟩, ⟨22, 8⟩, ⟨33, 9⟩, ⟨11, 5⟩, ⟨23, 8⟩, ⟨34, 9⟩, ⟨1, 4⟩, ⟨12, 5⟩, ⟨24, 8⟩, ⟨35, 9⟩, ⟨43, 14⟩, ⟨2, 4⟩, ⟨13, 5⟩, ⟨25, 8⟩, ⟨36, 9⟩, ⟨3, 4⟩, ⟨14, 5⟩, ⟨26, 8⟩, ⟨37, 9⟩, ⟨4, 4⟩, ⟨15, 5⟩, ⟨27, 8⟩, ⟨38, 9⟩, ⟨5, 4⟩, ⟨16, 5⟩, ⟨28, 8⟩, ⟨39, 9⟩, ⟨6, 4⟩, ⟨17, 5⟩, ⟨29, 8⟩, ⟨40, 9⟩, ⟨7, 4⟩, ⟨18, 5⟩, ⟨30, 8⟩, ⟨41, 9⟩]⟩
theorem profile0257_checked : profile0257.check := by decide +kernel

noncomputable def selection1_0257 : Selection :=
  ⟨1, -3, 4, (294/25), 824, -78, 1110⟩
theorem selection1_0257_checked : selection1_0257.check profile0257 := by decide +kernel

noncomputable def selection2_0257 : Selection :=
  ⟨2, -11, 8, (567/50), 217, -58, 1478⟩
theorem selection2_0257_checked : selection2_0257.check profile0257 := by decide +kernel

noncomputable def profile0258 : ProfileCell :=
  ⟨(10/109), (9/98),
    [4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨41, 10⟩, ⟨8, 5⟩, ⟨19, 6⟩, ⟨31, 9⟩, ⟨42, 10⟩, ⟨9, 5⟩, ⟨20, 6⟩, ⟨32, 9⟩, ⟨10, 5⟩, ⟨21, 6⟩, ⟨22, 8⟩, ⟨33, 9⟩, ⟨11, 5⟩, ⟨23, 8⟩, ⟨34, 9⟩, ⟨1, 4⟩, ⟨12, 5⟩, ⟨24, 8⟩, ⟨35, 9⟩, ⟨2, 4⟩, ⟨43, 14⟩, ⟨13, 5⟩, ⟨25, 8⟩, ⟨36, 9⟩, ⟨3, 4⟩, ⟨14, 5⟩, ⟨26, 8⟩, ⟨37, 9⟩, ⟨4, 4⟩, ⟨15, 5⟩, ⟨27, 8⟩, ⟨38, 9⟩, ⟨5, 4⟩, ⟨16, 5⟩, ⟨28, 8⟩, ⟨39, 9⟩, ⟨6, 4⟩, ⟨17, 5⟩, ⟨29, 8⟩, ⟨40, 9⟩, ⟨7, 4⟩, ⟨18, 5⟩, ⟨30, 8⟩]⟩
theorem profile0258_checked : profile0258.check := by decide +kernel

noncomputable def selection1_0258 : Selection :=
  ⟨1, -2, 4, (47/4), 93, -25, 484⟩
theorem selection1_0258_checked : selection1_0258.check profile0258 := by decide +kernel

noncomputable def selection2_0258 : Selection :=
  ⟨2, -10, 8, (227/20), 25, -9, 852⟩
theorem selection2_0258_checked : selection2_0258.check profile0258 := by decide +kernel

noncomputable def profile0259 : ProfileCell :=
  ⟨(9/98), (6/65),
    [4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨30, 9⟩, ⟨41, 10⟩, ⟨8, 5⟩, ⟨19, 6⟩, ⟨31, 9⟩, ⟨42, 10⟩, ⟨9, 5⟩, ⟨20, 6⟩, ⟨32, 9⟩, ⟨10, 5⟩, ⟨21, 6⟩, ⟨22, 8⟩, ⟨33, 9⟩, ⟨11, 5⟩, ⟨23, 8⟩, ⟨34, 9⟩, ⟨1, 4⟩, ⟨12, 5⟩, ⟨24, 8⟩, ⟨35, 9⟩, ⟨2, 4⟩, ⟨13, 5⟩, ⟨43, 14⟩, ⟨25, 8⟩, ⟨36, 9⟩, ⟨3, 4⟩, ⟨14, 5⟩, ⟨26, 8⟩, ⟨37, 9⟩, ⟨4, 4⟩, ⟨15, 5⟩, ⟨27, 8⟩, ⟨38, 9⟩, ⟨5, 4⟩, ⟨16, 5⟩, ⟨28, 8⟩, ⟨39, 9⟩, ⟨6, 4⟩, ⟨17, 5⟩, ⟨29, 8⟩, ⟨40, 9⟩, ⟨7, 4⟩, ⟨18, 5⟩]⟩
theorem profile0259_checked : profile0259.check := by decide +kernel

noncomputable def selection1_0259 : Selection :=
  ⟨1, -2, 4, (47/4), 464, 29, -104⟩
theorem selection1_0259_checked : selection1_0259.check profile0259 := by decide +kernel

noncomputable def selection2_0259 : Selection :=
  ⟨2, -10, 8, (569/50), 123, 45, 264⟩
theorem selection2_0259_checked : selection2_0259.check profile0259 := by decide +kernel

noncomputable def profile0260 : ProfileCell :=
  ⟨(6/65), (5/54),
    [4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨18, 6⟩, ⟨30, 9⟩, ⟨41, 10⟩, ⟨8, 5⟩, ⟨19, 6⟩, ⟨31, 9⟩, ⟨42, 10⟩, ⟨9, 5⟩, ⟨20, 6⟩, ⟨32, 9⟩, ⟨10, 5⟩, ⟨21, 6⟩, ⟨22, 8⟩, ⟨33, 9⟩, ⟨11, 5⟩, ⟨23, 8⟩, ⟨34, 9⟩, ⟨1, 4⟩, ⟨12, 5⟩, ⟨24, 8⟩, ⟨35, 9⟩, ⟨2, 4⟩, ⟨13, 5⟩, ⟨25, 8⟩, ⟨43, 14⟩, ⟨36, 9⟩, ⟨3, 4⟩, ⟨14, 5⟩, ⟨26, 8⟩, ⟨37, 9⟩, ⟨4, 4⟩, ⟨15, 5⟩, ⟨27, 8⟩, ⟨38, 9⟩, ⟨5, 4⟩, ⟨16, 5⟩, ⟨28, 8⟩, ⟨39, 9⟩, ⟨6, 4⟩, ⟨17, 5⟩, ⟨29, 8⟩, ⟨40, 9⟩, ⟨7, 4⟩]⟩
theorem profile0260_checked : profile0260.check := by decide +kernel

noncomputable def selection1_0260 : Selection :=
  ⟨1, -2, 4, (1177/100), 281, -7, 286⟩
theorem selection1_0260_checked : selection1_0260.check profile0260 := by decide +kernel

noncomputable def selection2_0260 : Selection :=
  ⟨2, -10, 8, (571/50), 75, 9, 654⟩
theorem selection2_0260_checked : selection2_0260.check profile0260 := by decide +kernel

noncomputable def profile0261 : ProfileCell :=
  ⟨(5/54), (9/97),
    [4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨7, 5⟩, ⟨40, 10⟩, ⟨18, 6⟩, ⟨30, 9⟩, ⟨8, 5⟩, ⟨41, 10⟩, ⟨19, 6⟩, ⟨31, 9⟩, ⟨9, 5⟩, ⟨42, 10⟩, ⟨20, 6⟩, ⟨32, 9⟩, ⟨10, 5⟩, ⟨21, 6⟩, ⟨22, 8⟩, ⟨33, 9⟩, ⟨11, 5⟩, ⟨23, 8⟩, ⟨1, 4⟩, ⟨34, 9⟩, ⟨12, 5⟩, ⟨24, 8⟩, ⟨2, 4⟩, ⟨35, 9⟩, ⟨13, 5⟩, ⟨25, 8⟩, ⟨3, 4⟩, ⟨36, 9⟩, ⟨43, 14⟩, ⟨14, 5⟩, ⟨26, 8⟩, ⟨4, 4⟩, ⟨37, 9⟩, ⟨15, 5⟩, ⟨27, 8⟩, ⟨5, 4⟩, ⟨38, 9⟩, ⟨16, 5⟩, ⟨28, 8⟩, ⟨6, 4⟩, ⟨39, 9⟩, ⟨17, 5⟩, ⟨29, 8⟩]⟩
theorem profile0261_checked : profile0261.check := by decide +kernel

noncomputable def selection1_0261 : Selection :=
  ⟨1, -2, 4, (1179/100), 189, -2, 232⟩
theorem selection1_0261_checked : selection1_0261.check profile0261 := by decide +kernel

noncomputable def selection2_0261 : Selection :=
  ⟨2, -10, 8, (229/20), 50, 14, 600⟩
theorem selection2_0261_checked : selection2_0261.check profile0261 := by decide +kernel

noncomputable def profile0262 : ProfileCell :=
  ⟨(9/97), (4/43),
    [4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨29, 9⟩, ⟨7, 5⟩, ⟨40, 10⟩, ⟨18, 6⟩, ⟨30, 9⟩, ⟨8, 5⟩, ⟨41, 10⟩, ⟨19, 6⟩, ⟨31, 9⟩, ⟨9, 5⟩, ⟨42, 10⟩, ⟨20, 6⟩, ⟨32, 9⟩, ⟨10, 5⟩, ⟨21, 6⟩, ⟨22, 8⟩, ⟨33, 9⟩, ⟨11, 5⟩, ⟨23, 8⟩, ⟨1, 4⟩, ⟨34, 9⟩, ⟨12, 5⟩, ⟨24, 8⟩, ⟨2, 4⟩, ⟨35, 9⟩, ⟨13, 5⟩, ⟨25, 8⟩, ⟨3, 4⟩, ⟨36, 9⟩, ⟨14, 5⟩, ⟨43, 14⟩, ⟨26, 8⟩, ⟨4, 4⟩, ⟨37, 9⟩, ⟨15, 5⟩, ⟨27, 8⟩, ⟨5, 4⟩, ⟨38, 9⟩, ⟨16, 5⟩, ⟨28, 8⟩, ⟨6, 4⟩, ⟨39, 9⟩, ⟨17, 5⟩]⟩
theorem profile0262_checked : profile0262.check := by decide +kernel

noncomputable def selection1_0262 : Selection :=
  ⟨1, -2, 4, (1179/100), 237, 52, -350⟩
theorem selection1_0262_checked : selection1_0262.check profile0262 := by decide +kernel

noncomputable def selection2_0262 : Selection :=
  ⟨2, -10, 8, (229/20), 63, 68, 18⟩
theorem selection2_0262_checked : selection2_0262.check profile0262 := by decide +kernel

noncomputable def profile0263 : ProfileCell :=
  ⟨(4/43), (10/107),
    [4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨7, 5⟩, ⟨29, 9⟩, ⟨18, 6⟩, ⟨40, 10⟩, ⟨8, 5⟩, ⟨30, 9⟩, ⟨19, 6⟩, ⟨41, 10⟩, ⟨9, 5⟩, ⟨31, 9⟩, ⟨20, 6⟩, ⟨42, 10⟩, ⟨10, 5⟩, ⟨32, 9⟩, ⟨21, 6⟩, ⟨22, 8⟩, ⟨11, 5⟩, ⟨33, 9⟩, ⟨1, 4⟩, ⟨23, 8⟩, ⟨12, 5⟩, ⟨34, 9⟩, ⟨2, 4⟩, ⟨24, 8⟩, ⟨13, 5⟩, ⟨35, 9⟩, ⟨3, 4⟩, ⟨25, 8⟩, ⟨14, 5⟩, ⟨36, 9⟩, ⟨43, 14⟩, ⟨4, 4⟩, ⟨26, 8⟩, ⟨15, 5⟩, ⟨37, 9⟩, ⟨5, 4⟩, ⟨27, 8⟩, ⟨16, 5⟩, ⟨38, 9⟩, ⟨6, 4⟩, ⟨28, 8⟩, ⟨17, 5⟩, ⟨39, 9⟩]⟩
theorem profile0263_checked : profile0263.check := by decide +kernel

noncomputable def selection1_0263 : Selection :=
  ⟨1, -2, 4, (59/5), 430, -4, 252⟩
theorem selection1_0263_checked : selection1_0263.check profile0263 := by decide +kernel

noncomputable def selection2_0263 : Selection :=
  ⟨2, -10, 8, (1151/100), 115, 12, 620⟩
theorem selection2_0263_checked : selection2_0263.check profile0263 := by decide +kernel

noncomputable def profile0264 : ProfileCell :=
  ⟨(10/107), (3/32),
    [4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨39, 10⟩, ⟨7, 5⟩, ⟨29, 9⟩, ⟨18, 6⟩, ⟨40, 10⟩, ⟨8, 5⟩, ⟨30, 9⟩, ⟨19, 6⟩, ⟨41, 10⟩, ⟨9, 5⟩, ⟨31, 9⟩, ⟨20, 6⟩, ⟨42, 10⟩, ⟨10, 5⟩, ⟨32, 9⟩, ⟨21, 6⟩, ⟨22, 8⟩, ⟨11, 5⟩, ⟨33, 9⟩, ⟨1, 4⟩, ⟨23, 8⟩, ⟨12, 5⟩, ⟨34, 9⟩, ⟨2, 4⟩, ⟨24, 8⟩, ⟨13, 5⟩, ⟨35, 9⟩, ⟨3, 4⟩, ⟨25, 8⟩, ⟨14, 5⟩, ⟨36, 9⟩, ⟨4, 4⟩, ⟨43, 14⟩, ⟨26, 8⟩, ⟨15, 5⟩, ⟨37, 9⟩, ⟨5, 4⟩, ⟨27, 8⟩, ⟨16, 5⟩, ⟨38, 9⟩, ⟨6, 4⟩, ⟨28, 8⟩, ⟨17, 5⟩]⟩
theorem profile0264_checked : profile0264.check := by decide +kernel

noncomputable def selection1_0264 : Selection :=
  ⟨1, -2, 4, (59/5), 289, 36, -176⟩
theorem selection1_0264_checked : selection1_0264.check profile0264 := by decide +kernel

noncomputable def selection2_0264 : Selection :=
  ⟨2, -10, 8, (1153/100), 77, 52, 192⟩
theorem selection2_0264_checked : selection2_0264.check profile0264 := by decide +kernel

noncomputable def profile0265 : ProfileCell :=
  ⟨(3/32), (5/53),
    [4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨17, 6⟩, ⟨28, 9⟩, ⟨39, 10⟩, ⟨7, 5⟩, ⟨18, 6⟩, ⟨29, 9⟩, ⟨40, 10⟩, ⟨8, 5⟩, ⟨19, 6⟩, ⟨30, 9⟩, ⟨41, 10⟩, ⟨9, 5⟩, ⟨20, 6⟩, ⟨31, 9⟩, ⟨42, 10⟩, ⟨10, 5⟩, ⟨21, 6⟩, ⟨32, 9⟩, ⟨11, 5⟩, ⟨22, 8⟩, ⟨33, 9⟩, ⟨1, 4⟩, ⟨12, 5⟩, ⟨23, 8⟩, ⟨34, 9⟩, ⟨2, 4⟩, ⟨13, 5⟩, ⟨24, 8⟩, ⟨35, 9⟩, ⟨3, 4⟩, ⟨14, 5⟩, ⟨25, 8⟩, ⟨36, 9⟩, ⟨4, 4⟩, ⟨15, 5⟩, ⟨26, 8⟩, ⟨43, 14⟩, ⟨37, 9⟩, ⟨5, 4⟩, ⟨16, 5⟩, ⟨27, 8⟩, ⟨38, 9⟩, ⟨6, 4⟩]⟩
theorem profile0265_checked : profile0265.check := by decide +kernel

noncomputable def selection1_0265 : Selection :=
  ⟨1, -3, 4, (489/50), 482, 45, -272⟩
theorem selection1_0265_checked : selection1_0265.check profile0265 := by decide +kernel

noncomputable def selection2_0265 : Selection :=
  ⟨2, -11, 8, (477/50), 129, 61, 96⟩
theorem selection2_0265_checked : selection2_0265.check profile0265 := by decide +kernel

noncomputable def profile0266 : ProfileCell :=
  ⟨(5/53), (9/95),
    [4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨6, 5⟩, ⟨38, 10⟩, ⟨17, 6⟩, ⟨28, 9⟩, ⟨7, 5⟩, ⟨39, 10⟩, ⟨18, 6⟩, ⟨29, 9⟩, ⟨8, 5⟩, ⟨40, 10⟩, ⟨19, 6⟩, ⟨30, 9⟩, ⟨9, 5⟩, ⟨41, 10⟩, ⟨20, 6⟩, ⟨31, 9⟩, ⟨10, 5⟩, ⟨42, 10⟩, ⟨21, 6⟩, ⟨32, 9⟩, ⟨11, 5⟩, ⟨22, 8⟩, ⟨1, 4⟩, ⟨33, 9⟩, ⟨12, 5⟩, ⟨23, 8⟩, ⟨2, 4⟩, ⟨34, 9⟩, ⟨13, 5⟩, ⟨24, 8⟩, ⟨3, 4⟩, ⟨35, 9⟩, ⟨14, 5⟩, ⟨25, 8⟩, ⟨4, 4⟩, ⟨36, 9⟩, ⟨15, 5⟩, ⟨26, 8⟩, ⟨5, 4⟩, ⟨37, 9⟩, ⟨43, 14⟩, ⟨16, 5⟩, ⟨27, 8⟩]⟩
theorem profile0266_checked : profile0266.check := by decide +kernel

noncomputable def selection1_0266 : Selection :=
  ⟨1, -3, 4, (97/10), 322, 65, -484⟩
theorem selection1_0266_checked : selection1_0266.check profile0266 := by decide +kernel

noncomputable def selection2_0266 : Selection :=
  ⟨2, -11, 8, (477/50), 87, 81, -116⟩
theorem selection2_0266_checked : selection2_0266.check profile0266 := by decide +kernel

noncomputable def profile0267 : ProfileCell :=
  ⟨(9/95), (15/158),
    [4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨27, 9⟩, ⟨6, 5⟩, ⟨38, 10⟩, ⟨17, 6⟩, ⟨28, 9⟩, ⟨7, 5⟩, ⟨39, 10⟩, ⟨18, 6⟩, ⟨29, 9⟩, ⟨8, 5⟩, ⟨40, 10⟩, ⟨19, 6⟩, ⟨30, 9⟩, ⟨9, 5⟩, ⟨41, 10⟩, ⟨20, 6⟩, ⟨31, 9⟩, ⟨10, 5⟩, ⟨42, 10⟩, ⟨21, 6⟩, ⟨32, 9⟩, ⟨11, 5⟩, ⟨22, 8⟩, ⟨1, 4⟩, ⟨33, 9⟩, ⟨12, 5⟩, ⟨23, 8⟩, ⟨2, 4⟩, ⟨34, 9⟩, ⟨13, 5⟩, ⟨24, 8⟩, ⟨3, 4⟩, ⟨35, 9⟩, ⟨14, 5⟩, ⟨25, 8⟩, ⟨4, 4⟩, ⟨36, 9⟩, ⟨15, 5⟩, ⟨26, 8⟩, ⟨5, 4⟩, ⟨37, 9⟩, ⟨16, 5⟩, ⟨43, 14⟩]⟩
theorem profile0267_checked : profile0267.check := by decide +kernel

noncomputable def selection1_0267 : Selection :=
  ⟨1, -3, 4, (481/50), 161, 119, -1054⟩
theorem selection1_0267_checked : selection1_0267.check profile0267 := by decide +kernel

noncomputable def selection2_0267 : Selection :=
  ⟨2, -11, 8, (953/100), 44, 135, -686⟩
theorem selection2_0267_checked : selection2_0267.check profile0267 := by decide +kernel

noncomputable def profile0268 : ProfileCell :=
  ⟨(15/158), (2/21),
    [4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨43, 15⟩, ⟨27, 9⟩, ⟨6, 5⟩, ⟨38, 10⟩, ⟨17, 6⟩, ⟨28, 9⟩, ⟨7, 5⟩, ⟨39, 10⟩, ⟨18, 6⟩, ⟨29, 9⟩, ⟨8, 5⟩, ⟨40, 10⟩, ⟨19, 6⟩, ⟨30, 9⟩, ⟨9, 5⟩, ⟨41, 10⟩, ⟨20, 6⟩, ⟨31, 9⟩, ⟨10, 5⟩, ⟨42, 10⟩, ⟨21, 6⟩, ⟨32, 9⟩, ⟨11, 5⟩, ⟨22, 8⟩, ⟨1, 4⟩, ⟨33, 9⟩, ⟨12, 5⟩, ⟨23, 8⟩, ⟨2, 4⟩, ⟨34, 9⟩, ⟨13, 5⟩, ⟨24, 8⟩, ⟨3, 4⟩, ⟨35, 9⟩, ⟨14, 5⟩, ⟨25, 8⟩, ⟨4, 4⟩, ⟨36, 9⟩, ⟨15, 5⟩, ⟨26, 8⟩, ⟨5, 4⟩, ⟨37, 9⟩, ⟨16, 5⟩]⟩
theorem profile0268_checked : profile0268.check := by decide +kernel

noncomputable def selection1_0268 : Selection :=
  ⟨1, -3, 4, (483/50), 243, -76, 1000⟩
theorem selection1_0268_checked : selection1_0268.check profile0268 := by decide +kernel

noncomputable def selection2_0268 : Selection :=
  ⟨2, -11, 8, (48/5), 66, -60, 1368⟩
theorem selection2_0268_checked : selection2_0268.check profile0268 := by decide +kernel

noncomputable def profile0269 : ProfileCell :=
  ⟨(2/21), (9/94),
    [4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨16, 6⟩, ⟨37, 10⟩, ⟨6, 5⟩, ⟨27, 9⟩, ⟨43, 15⟩, ⟨17, 6⟩, ⟨38, 10⟩, ⟨7, 5⟩, ⟨28, 9⟩, ⟨18, 6⟩, ⟨39, 10⟩, ⟨8, 5⟩, ⟨29, 9⟩, ⟨19, 6⟩, ⟨40, 10⟩, ⟨9, 5⟩, ⟨30, 9⟩, ⟨20, 6⟩, ⟨41, 10⟩, ⟨10, 5⟩, ⟨31, 9⟩, ⟨21, 6⟩, ⟨42, 10⟩, ⟨11, 5⟩, ⟨32, 9⟩, ⟨1, 4⟩, ⟨22, 8⟩, ⟨12, 5⟩, ⟨33, 9⟩, ⟨2, 4⟩, ⟨23, 8⟩, ⟨13, 5⟩, ⟨34, 9⟩, ⟨3, 4⟩, ⟨24, 8⟩, ⟨14, 5⟩, ⟨35, 9⟩, ⟨4, 4⟩, ⟨25, 8⟩, ⟨15, 5⟩, ⟨36, 9⟩, ⟨5, 4⟩, ⟨26, 8⟩]⟩
theorem profile0269_checked : profile0269.check := by decide +kernel

noncomputable def selection1_0269 : Selection :=
  ⟨1, -4, 4, (803/100), 339, -136, 1630⟩
theorem selection1_0269_checked : selection1_0269.check profile0269 := by decide +kernel

noncomputable def selection2_0269 : Selection :=
  ⟨2, -12, 8, (196/25), 91, -120, 1998⟩
theorem selection2_0269_checked : selection2_0269.check profile0269 := by decide +kernel

noncomputable def profile0270 : ProfileCell :=
  ⟨(9/94), (5/52),
    [4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4],
    [⟨26, 9⟩, ⟨16, 6⟩, ⟨37, 10⟩, ⟨6, 5⟩, ⟨27, 9⟩, ⟨17, 6⟩, ⟨43, 15⟩, ⟨38, 10⟩, ⟨7, 5⟩, ⟨28, 9⟩, ⟨18, 6⟩, ⟨39, 10⟩, ⟨8, 5⟩, ⟨29, 9⟩, ⟨19, 6⟩, ⟨40, 10⟩, ⟨9, 5⟩, ⟨30, 9⟩, ⟨20, 6⟩, ⟨41, 10⟩, ⟨10, 5⟩, ⟨31, 9⟩, ⟨21, 6⟩, ⟨42, 10⟩, ⟨11, 5⟩, ⟨32, 9⟩, ⟨1, 4⟩, ⟨22, 8⟩, ⟨12, 5⟩, ⟨33, 9⟩, ⟨2, 4⟩, ⟨23, 8⟩, ⟨13, 5⟩, ⟨34, 9⟩, ⟨3, 4⟩, ⟨24, 8⟩, ⟨14, 5⟩, ⟨35, 9⟩, ⟨4, 4⟩, ⟨25, 8⟩, ⟨15, 5⟩, ⟨36, 9⟩, ⟨5, 4⟩]⟩
theorem profile0270_checked : profile0270.check := by decide +kernel

noncomputable def selection1_0270 : Selection :=
  ⟨1, -4, 4, (823/100), 281, -82, 1066⟩
theorem selection1_0270_checked : selection1_0270.check profile0270 := by decide +kernel

noncomputable def selection2_0270 : Selection :=
  ⟨2, -12, 8, (399/50), 75, -66, 1434⟩
theorem selection2_0270_checked : selection2_0270.check profile0270 := by decide +kernel

noncomputable def profile0271 : ProfileCell :=
  ⟨(5/52), (3/31),
    [5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 4, 5],
    [⟨5, 5⟩, ⟨36, 10⟩, ⟨26, 9⟩, ⟨16, 6⟩, ⟨6, 5⟩, ⟨37, 10⟩, ⟨27, 9⟩, ⟨17, 6⟩, ⟨7, 5⟩, ⟨38, 10⟩, ⟨43, 15⟩, ⟨28, 9⟩, ⟨18, 6⟩, ⟨8, 5⟩, ⟨39, 10⟩, ⟨29, 9⟩, ⟨19, 6⟩, ⟨9, 5⟩, ⟨40, 10⟩, ⟨30, 9⟩, ⟨20, 6⟩, ⟨10, 5⟩, ⟨41, 10⟩, ⟨31, 9⟩, ⟨21, 6⟩, ⟨11, 5⟩, ⟨42, 10⟩, ⟨1, 4⟩, ⟨32, 9⟩, ⟨22, 8⟩, ⟨12, 5⟩, ⟨2, 4⟩, ⟨33, 9⟩, ⟨23, 8⟩, ⟨13, 5⟩, ⟨3, 4⟩, ⟨34, 9⟩, ⟨24, 8⟩, ⟨14, 5⟩, ⟨4, 4⟩, ⟨35, 9⟩, ⟨25, 8⟩, ⟨15, 5⟩]⟩
theorem profile0271_checked : profile0271.check := by decide +kernel

noncomputable def selection1_0271 : Selection :=
  ⟨1, -3, 4, (1049/100), 542, -67, 910⟩
theorem selection1_0271_checked : selection1_0271.check profile0271 := by decide +kernel

noncomputable def selection2_0271 : Selection :=
  ⟨2, -11, 8, (1017/100), 144, -51, 1278⟩
theorem selection2_0271_checked : selection2_0271.check profile0271 := by decide +kernel

noncomputable def profile0272 : ProfileCell :=
  ⟨(3/31), (10/103),
    [5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 4, 5],
    [⟨15, 6⟩, ⟨25, 9⟩, ⟨5, 5⟩, ⟨36, 10⟩, ⟨16, 6⟩, ⟨26, 9⟩, ⟨6, 5⟩, ⟨37, 10⟩, ⟨17, 6⟩, ⟨27, 9⟩, ⟨7, 5⟩, ⟨38, 10⟩, ⟨18, 6⟩, ⟨28, 9⟩, ⟨43, 15⟩, ⟨8, 5⟩, ⟨39, 10⟩, ⟨19, 6⟩, ⟨29, 9⟩, ⟨9, 5⟩, ⟨40, 10⟩, ⟨20, 6⟩, ⟨30, 9⟩, ⟨10, 5⟩, ⟨41, 10⟩, ⟨21, 6⟩, ⟨31, 9⟩, ⟨11, 5⟩, ⟨1, 4⟩, ⟨42, 10⟩, ⟨32, 9⟩, ⟨12, 5⟩, ⟨22, 8⟩, ⟨2, 4⟩, ⟨33, 9⟩, ⟨13, 5⟩, ⟨23, 8⟩, ⟨3, 4⟩, ⟨34, 9⟩, ⟨14, 5⟩, ⟨24, 8⟩, ⟨4, 4⟩, ⟨35, 9⟩]⟩
theorem profile0272_checked : profile0272.check := by decide +kernel

noncomputable def selection1_0272 : Selection :=
  ⟨1, -3, 4, (531/50), 277, -67, 910⟩
theorem selection1_0272_checked : selection1_0272.check profile0272 := by decide +kernel

noncomputable def selection2_0272 : Selection :=
  ⟨2, -11, 8, (513/50), 74, -51, 1278⟩
theorem selection2_0272_checked : selection2_0272.check profile0272 := by decide +kernel

noncomputable def profile0273 : ProfileCell :=
  ⟨(10/103), (4/41),
    [5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 4, 5],
    [⟨35, 10⟩, ⟨15, 6⟩, ⟨25, 9⟩, ⟨5, 5⟩, ⟨36, 10⟩, ⟨16, 6⟩, ⟨26, 9⟩, ⟨6, 5⟩, ⟨37, 10⟩, ⟨17, 6⟩, ⟨27, 9⟩, ⟨7, 5⟩, ⟨38, 10⟩, ⟨18, 6⟩, ⟨28, 9⟩, ⟨8, 5⟩, ⟨43, 15⟩, ⟨39, 10⟩, ⟨19, 6⟩, ⟨29, 9⟩, ⟨9, 5⟩, ⟨40, 10⟩, ⟨20, 6⟩, ⟨30, 9⟩, ⟨10, 5⟩, ⟨41, 10⟩, ⟨21, 6⟩, ⟨31, 9⟩, ⟨11, 5⟩, ⟨1, 4⟩, ⟨42, 10⟩, ⟨32, 9⟩, ⟨12, 5⟩, ⟨22, 8⟩, ⟨2, 4⟩, ⟨33, 9⟩, ⟨13, 5⟩, ⟨23, 8⟩, ⟨3, 4⟩, ⟨34, 9⟩, ⟨14, 5⟩, ⟨24, 8⟩, ⟨4, 4⟩]⟩
theorem profile0273_checked : profile0273.check := by decide +kernel

noncomputable def selection1_0273 : Selection :=
  ⟨1, -3, 4, (1073/100), 423, -27, 498⟩
theorem selection1_0273_checked : selection1_0273.check profile0273 := by decide +kernel

noncomputable def selection2_0273 : Selection :=
  ⟨2, -11, 8, (259/25), 112, -11, 866⟩
theorem selection2_0273_checked : selection2_0273.check profile0273 := by decide +kernel

noncomputable def profile0274 : ProfileCell :=
  ⟨(4/41), (9/92),
    [5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 4, 5],
    [⟨15, 6⟩, ⟨35, 10⟩, ⟨5, 5⟩, ⟨25, 9⟩, ⟨16, 6⟩, ⟨36, 10⟩, ⟨6, 5⟩, ⟨26, 9⟩, ⟨17, 6⟩, ⟨37, 10⟩, ⟨7, 5⟩, ⟨27, 9⟩, ⟨18, 6⟩, ⟨38, 10⟩, ⟨8, 5⟩, ⟨28, 9⟩, ⟨43, 15⟩, ⟨19, 6⟩, ⟨39, 10⟩, ⟨9, 5⟩, ⟨29, 9⟩, ⟨20, 6⟩, ⟨40, 10⟩, ⟨10, 5⟩, ⟨30, 9⟩, ⟨21, 6⟩, ⟨41, 10⟩, ⟨11, 5⟩, ⟨31, 9⟩, ⟨1, 4⟩, ⟨42, 10⟩, ⟨12, 5⟩, ⟨32, 9⟩, ⟨2, 4⟩, ⟨22, 8⟩, ⟨13, 5⟩, ⟨33, 9⟩, ⟨3, 4⟩, ⟨23, 8⟩, ⟨14, 5⟩, ⟨34, 9⟩, ⟨4, 4⟩, ⟨24, 8⟩]⟩
theorem profile0274_checked : profile0274.check := by decide +kernel

noncomputable def selection1_0274 : Selection :=
  ⟨1, -3, 4, (217/20), 239, -75, 990⟩
theorem selection1_0274_checked : selection1_0274.check profile0274 := by decide +kernel

noncomputable def selection2_0274 : Selection :=
  ⟨2, -11, 8, (209/20), 63, -59, 1358⟩
theorem selection2_0274_checked : selection2_0274.check profile0274 := by decide +kernel

noncomputable def profile0275 : ProfileCell :=
  ⟨(9/92), (5/51),
    [5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 4, 5],
    [⟨24, 9⟩, ⟨15, 6⟩, ⟨35, 10⟩, ⟨5, 5⟩, ⟨25, 9⟩, ⟨16, 6⟩, ⟨36, 10⟩, ⟨6, 5⟩, ⟨26, 9⟩, ⟨17, 6⟩, ⟨37, 10⟩, ⟨7, 5⟩, ⟨27, 9⟩, ⟨18, 6⟩, ⟨38, 10⟩, ⟨8, 5⟩, ⟨28, 9⟩, ⟨19, 6⟩, ⟨43, 15⟩, ⟨39, 10⟩, ⟨9, 5⟩, ⟨29, 9⟩, ⟨20, 6⟩, ⟨40, 10⟩, ⟨10, 5⟩, ⟨30, 9⟩, ⟨21, 6⟩, ⟨41, 10⟩, ⟨11, 5⟩, ⟨31, 9⟩, ⟨1, 4⟩, ⟨42, 10⟩, ⟨12, 5⟩, ⟨32, 9⟩, ⟨2, 4⟩, ⟨22, 8⟩, ⟨13, 5⟩, ⟨33, 9⟩, ⟨3, 4⟩, ⟨23, 8⟩, ⟨14, 5⟩, ⟨34, 9⟩, ⟨4, 4⟩]⟩
theorem profile0275_checked : profile0275.check := by decide +kernel

noncomputable def selection1_0275 : Selection :=
  ⟨1, -3, 4, (1089/100), 193, -21, 438⟩
theorem selection1_0275_checked : selection1_0275.check profile0275 := by decide +kernel

noncomputable def selection2_0275 : Selection :=
  ⟨2, -11, 8, (1049/100), 51, -5, 806⟩
theorem selection2_0275_checked : selection2_0275.check profile0275 := by decide +kernel

noncomputable def profile0276 : ProfileCell :=
  ⟨(5/51), (6/61),
    [5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 5, 5],
    [⟨4, 5⟩, ⟨34, 10⟩, ⟨24, 9⟩, ⟨15, 6⟩, ⟨5, 5⟩, ⟨35, 10⟩, ⟨25, 9⟩, ⟨16, 6⟩, ⟨6, 5⟩, ⟨36, 10⟩, ⟨26, 9⟩, ⟨17, 6⟩, ⟨7, 5⟩, ⟨37, 10⟩, ⟨27, 9⟩, ⟨18, 6⟩, ⟨8, 5⟩, ⟨38, 10⟩, ⟨28, 9⟩, ⟨19, 6⟩, ⟨9, 5⟩, ⟨39, 10⟩, ⟨43, 15⟩, ⟨29, 9⟩, ⟨20, 6⟩, ⟨10, 5⟩, ⟨40, 10⟩, ⟨30, 9⟩, ⟨21, 6⟩, ⟨11, 5⟩, ⟨41, 10⟩, ⟨1, 4⟩, ⟨31, 9⟩, ⟨12, 5⟩, ⟨42, 10⟩, ⟨2, 4⟩, ⟨32, 9⟩, ⟨22, 8⟩, ⟨13, 5⟩, ⟨3, 4⟩, ⟨33, 9⟩, ⟨23, 8⟩, ⟨14, 5⟩]⟩
theorem profile0276_checked : profile0276.check := by decide +kernel

noncomputable def selection1_0276 : Selection :=
  ⟨1, -1, 4, (299/20), 399, -21, 438⟩
theorem selection1_0276_checked : selection1_0276.check profile0276 := by decide +kernel

noncomputable def selection2_0276 : Selection :=
  ⟨2, -9, 8, (291/20), 107, -5, 806⟩
theorem selection2_0276_checked : selection2_0276.check profile0276 := by decide +kernel

noncomputable def profile0277 : ProfileCell :=
  ⟨(6/61), (9/91),
    [5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 5, 5],
    [⟨14, 6⟩, ⟨4, 5⟩, ⟨34, 10⟩, ⟨24, 9⟩, ⟨15, 6⟩, ⟨5, 5⟩, ⟨35, 10⟩, ⟨25, 9⟩, ⟨16, 6⟩, ⟨6, 5⟩, ⟨36, 10⟩, ⟨26, 9⟩, ⟨17, 6⟩, ⟨7, 5⟩, ⟨37, 10⟩, ⟨27, 9⟩, ⟨18, 6⟩, ⟨8, 5⟩, ⟨38, 10⟩, ⟨28, 9⟩, ⟨19, 6⟩, ⟨9, 5⟩, ⟨39, 10⟩, ⟨29, 9⟩, ⟨43, 15⟩, ⟨20, 6⟩, ⟨10, 5⟩, ⟨40, 10⟩, ⟨30, 9⟩, ⟨21, 6⟩, ⟨11, 5⟩, ⟨1, 4⟩, ⟨41, 10⟩, ⟨31, 9⟩, ⟨12, 5⟩, ⟨2, 4⟩, ⟨42, 10⟩, ⟨32, 9⟩, ⟨22, 8⟩, ⟨13, 5⟩, ⟨3, 4⟩, ⟨33, 9⟩, ⟨23, 8⟩]⟩
theorem profile0277_checked : profile0277.check := by decide +kernel

noncomputable def selection1_0277 : Selection :=
  ⟨1, -1, 4, (759/50), 680, -69, 926⟩
theorem selection1_0277_checked : selection1_0277.check profile0277 := by decide +kernel

noncomputable def selection2_0277 : Selection :=
  ⟨2, -9, 8, (1471/100), 181, -53, 1294⟩
theorem selection2_0277_checked : selection2_0277.check profile0277 := by decide +kernel

noncomputable def profile0278 : ProfileCell :=
  ⟨(9/91), (10/101),
    [5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 5, 5],
    [⟨23, 9⟩, ⟨14, 6⟩, ⟨4, 5⟩, ⟨34, 10⟩, ⟨24, 9⟩, ⟨15, 6⟩, ⟨5, 5⟩, ⟨35, 10⟩, ⟨25, 9⟩, ⟨16, 6⟩, ⟨6, 5⟩, ⟨36, 10⟩, ⟨26, 9⟩, ⟨17, 6⟩, ⟨7, 5⟩, ⟨37, 10⟩, ⟨27, 9⟩, ⟨18, 6⟩, ⟨8, 5⟩, ⟨38, 10⟩, ⟨28, 9⟩, ⟨19, 6⟩, ⟨9, 5⟩, ⟨39, 10⟩, ⟨29, 9⟩, ⟨20, 6⟩, ⟨43, 15⟩, ⟨10, 5⟩, ⟨40, 10⟩, ⟨30, 9⟩, ⟨21, 6⟩, ⟨11, 5⟩, ⟨1, 4⟩, ⟨41, 10⟩, ⟨31, 9⟩, ⟨12, 5⟩, ⟨2, 4⟩, ⟨42, 10⟩, ⟨32, 9⟩, ⟨22, 8⟩, ⟨13, 5⟩, ⟨3, 4⟩, ⟨33, 9⟩]⟩
theorem profile0278_checked : profile0278.check := by decide +kernel

noncomputable def selection1_0278 : Selection :=
  ⟨1, -1, 4, (76/5), 137, -15, 380⟩
theorem selection1_0278_checked : selection1_0278.check profile0278 := by decide +kernel

noncomputable def selection2_0278 : Selection :=
  ⟨2, -9, 8, (1473/100), 37, 1, 748⟩
theorem selection2_0278_checked : selection2_0278.check profile0278 := by decide +kernel

noncomputable def profile0279 : ProfileCell :=
  ⟨(10/101), (1/10),
    [5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2], [4, 4, 4, 5, 5],
    [⟨33, 10⟩, ⟨23, 9⟩, ⟨14, 6⟩, ⟨4, 5⟩, ⟨34, 10⟩, ⟨24, 9⟩, ⟨15, 6⟩, ⟨5, 5⟩, ⟨35, 10⟩, ⟨25, 9⟩, ⟨16, 6⟩, ⟨6, 5⟩, ⟨36, 10⟩, ⟨26, 9⟩, ⟨17, 6⟩, ⟨7, 5⟩, ⟨37, 10⟩, ⟨27, 9⟩, ⟨18, 6⟩, ⟨8, 5⟩, ⟨38, 10⟩, ⟨28, 9⟩, ⟨19, 6⟩, ⟨9, 5⟩, ⟨39, 10⟩, ⟨29, 9⟩, ⟨20, 6⟩, ⟨10, 5⟩, ⟨43, 15⟩, ⟨40, 10⟩, ⟨30, 9⟩, ⟨21, 6⟩, ⟨11, 5⟩, ⟨1, 4⟩, ⟨41, 10⟩, ⟨31, 9⟩, ⟨12, 5⟩, ⟨2, 4⟩, ⟨42, 10⟩, ⟨32, 9⟩, ⟨22, 8⟩, ⟨13, 5⟩, ⟨3, 4⟩]⟩
theorem profile0279_checked : profile0279.check := by decide +kernel

noncomputable def selection1_0279 : Selection :=
  ⟨1, 0, 4, (76/5), 1245, 42, -240⟩
theorem selection1_0279_checked : selection1_0279.check profile0279 := by decide +kernel

noncomputable def selection2_0279 : Selection :=
  ⟨2, -8, 8, (1477/100), 332, 54, 128⟩
theorem selection2_0279_checked : selection2_0279.check profile0279 := by decide +kernel

noncomputable def profile0280 : ProfileCell :=
  ⟨(1/10), (11/109),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 4, 5, 5, 5],
    [⟨3, 5⟩, ⟨13, 6⟩, ⟨22, 9⟩, ⟨32, 10⟩, ⟨42, 11⟩, ⟨4, 5⟩, ⟨14, 6⟩, ⟨23, 9⟩, ⟨33, 10⟩, ⟨5, 5⟩, ⟨15, 6⟩, ⟨24, 9⟩, ⟨34, 10⟩, ⟨6, 5⟩, ⟨16, 6⟩, ⟨25, 9⟩, ⟨35, 10⟩, ⟨7, 5⟩, ⟨17, 6⟩, ⟨26, 9⟩, ⟨36, 10⟩, ⟨8, 5⟩, ⟨18, 6⟩, ⟨27, 9⟩, ⟨37, 10⟩, ⟨9, 5⟩, ⟨19, 6⟩, ⟨28, 9⟩, ⟨38, 10⟩, ⟨10, 5⟩, ⟨20, 6⟩, ⟨29, 9⟩, ⟨39, 10⟩, ⟨1, 4⟩, ⟨11, 5⟩, ⟨21, 6⟩, ⟨30, 9⟩, ⟨40, 10⟩, ⟨43, 15⟩, ⟨2, 4⟩, ⟨12, 5⟩, ⟨31, 9⟩, ⟨41, 10⟩]⟩
theorem profile0280_checked : profile0280.check := by decide +kernel

noncomputable def selection1_0280 : Selection :=
  ⟨1, -1, 4, (131/10), 993, 40, -220⟩
theorem selection1_0280_checked : selection1_0280.check profile0280 := by decide +kernel

noncomputable def selection2_0280 : Selection :=
  ⟨2, -9, 8, (64/5), 267, 52, 148⟩
theorem selection2_0280_checked : selection2_0280.check profile0280 := by decide +kernel

noncomputable def profile0281 : ProfileCell :=
  ⟨(11/109), (10/99),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 4, 5, 5, 5],
    [⟨41, 11⟩, ⟨3, 5⟩, ⟨13, 6⟩, ⟨22, 9⟩, ⟨32, 10⟩, ⟨42, 11⟩, ⟨4, 5⟩, ⟨14, 6⟩, ⟨23, 9⟩, ⟨33, 10⟩, ⟨5, 5⟩, ⟨15, 6⟩, ⟨24, 9⟩, ⟨34, 10⟩, ⟨6, 5⟩, ⟨16, 6⟩, ⟨25, 9⟩, ⟨35, 10⟩, ⟨7, 5⟩, ⟨17, 6⟩, ⟨26, 9⟩, ⟨36, 10⟩, ⟨8, 5⟩, ⟨18, 6⟩, ⟨27, 9⟩, ⟨37, 10⟩, ⟨9, 5⟩, ⟨19, 6⟩, ⟨28, 9⟩, ⟨38, 10⟩, ⟨10, 5⟩, ⟨20, 6⟩, ⟨29, 9⟩, ⟨39, 10⟩, ⟨1, 4⟩, ⟨11, 5⟩, ⟨21, 6⟩, ⟨30, 9⟩, ⟨40, 10⟩, ⟨2, 4⟩, ⟨43, 15⟩, ⟨12, 5⟩, ⟨31, 9⟩]⟩
theorem profile0281_checked : profile0281.check := by decide +kernel

noncomputable def selection1_0281 : Selection :=
  ⟨1, -1, 4, 13, 100, 106, -874⟩
theorem selection1_0281_checked : selection1_0281.check profile0281 := by decide +kernel

noncomputable def selection2_0281 : Selection :=
  ⟨2, -9, 8, (64/5), 27, 118, -506⟩
theorem selection2_0281_checked : selection2_0281.check profile0281 := by decide +kernel

noncomputable def profile0282 : ProfileCell :=
  ⟨(10/99), (8/79),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 4, 5, 5, 5],
    [⟨31, 10⟩, ⟨41, 11⟩, ⟨3, 5⟩, ⟨13, 6⟩, ⟨22, 9⟩, ⟨32, 10⟩, ⟨42, 11⟩, ⟨4, 5⟩, ⟨14, 6⟩, ⟨23, 9⟩, ⟨33, 10⟩, ⟨5, 5⟩, ⟨15, 6⟩, ⟨24, 9⟩, ⟨34, 10⟩, ⟨6, 5⟩, ⟨16, 6⟩, ⟨25, 9⟩, ⟨35, 10⟩, ⟨7, 5⟩, ⟨17, 6⟩, ⟨26, 9⟩, ⟨36, 10⟩, ⟨8, 5⟩, ⟨18, 6⟩, ⟨27, 9⟩, ⟨37, 10⟩, ⟨9, 5⟩, ⟨19, 6⟩, ⟨28, 9⟩, ⟨38, 10⟩, ⟨10, 5⟩, ⟨20, 6⟩, ⟨29, 9⟩, ⟨39, 10⟩, ⟨1, 4⟩, ⟨11, 5⟩, ⟨21, 6⟩, ⟨30, 9⟩, ⟨40, 10⟩, ⟨2, 4⟩, ⟨12, 5⟩, ⟨43, 15⟩]⟩
theorem profile0282_checked : profile0282.check := by decide +kernel

noncomputable def selection1_0282 : Selection :=
  ⟨1, -1, 4, (1297/100), 274, 146, -1270⟩
theorem selection1_0282_checked : selection1_0282.check profile0282 := by decide +kernel

noncomputable def selection2_0282 : Selection :=
  ⟨2, -9, 8, (1279/100), 75, 158, -902⟩
theorem selection2_0282_checked : selection2_0282.check profile0282 := by decide +kernel

noncomputable def profile0283 : ProfileCell :=
  ⟨(8/79), (6/59),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 4, 5, 5, 5],
    [⟨43, 16⟩, ⟨31, 10⟩, ⟨41, 11⟩, ⟨3, 5⟩, ⟨13, 6⟩, ⟨22, 9⟩, ⟨32, 10⟩, ⟨42, 11⟩, ⟨4, 5⟩, ⟨14, 6⟩, ⟨23, 9⟩, ⟨33, 10⟩, ⟨5, 5⟩, ⟨15, 6⟩, ⟨24, 9⟩, ⟨34, 10⟩, ⟨6, 5⟩, ⟨16, 6⟩, ⟨25, 9⟩, ⟨35, 10⟩, ⟨7, 5⟩, ⟨17, 6⟩, ⟨26, 9⟩, ⟨36, 10⟩, ⟨8, 5⟩, ⟨18, 6⟩, ⟨27, 9⟩, ⟨37, 10⟩, ⟨9, 5⟩, ⟨19, 6⟩, ⟨28, 9⟩, ⟨38, 10⟩, ⟨10, 5⟩, ⟨20, 6⟩, ⟨29, 9⟩, ⟨39, 10⟩, ⟨1, 4⟩, ⟨11, 5⟩, ⟨21, 6⟩, ⟨30, 9⟩, ⟨40, 10⟩, ⟨2, 4⟩, ⟨12, 5⟩]⟩
theorem profile0283_checked : profile0283.check := by decide +kernel

noncomputable def selection1_0283 : Selection :=
  ⟨1, -1, 4, (647/50), 458, -46, 626⟩
theorem selection1_0283_checked : selection1_0283.check profile0283 := by decide +kernel

noncomputable def selection2_0283 : Selection :=
  ⟨2, -9, 8, (321/25), 125, -34, 994⟩
theorem selection2_0283_checked : selection2_0283.check profile0283 := by decide +kernel

noncomputable def profile0284 : ProfileCell :=
  ⟨(6/59), (11/108),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 4, 5, 5, 5],
    [⟨12, 6⟩, ⟨31, 10⟩, ⟨43, 16⟩, ⟨3, 5⟩, ⟨41, 11⟩, ⟨13, 6⟩, ⟨22, 9⟩, ⟨32, 10⟩, ⟨4, 5⟩, ⟨42, 11⟩, ⟨14, 6⟩, ⟨23, 9⟩, ⟨33, 10⟩, ⟨5, 5⟩, ⟨15, 6⟩, ⟨24, 9⟩, ⟨34, 10⟩, ⟨6, 5⟩, ⟨16, 6⟩, ⟨25, 9⟩, ⟨35, 10⟩, ⟨7, 5⟩, ⟨17, 6⟩, ⟨26, 9⟩, ⟨36, 10⟩, ⟨8, 5⟩, ⟨18, 6⟩, ⟨27, 9⟩, ⟨37, 10⟩, ⟨9, 5⟩, ⟨19, 6⟩, ⟨28, 9⟩, ⟨38, 10⟩, ⟨10, 5⟩, ⟨20, 6⟩, ⟨29, 9⟩, ⟨1, 4⟩, ⟨39, 10⟩, ⟨11, 5⟩, ⟨21, 6⟩, ⟨30, 9⟩, ⟨2, 4⟩, ⟨40, 10⟩]⟩
theorem profile0284_checked : profile0284.check := by decide +kernel

noncomputable def selection1_0284 : Selection :=
  ⟨1, -1, 4, (651/50), 169, -94, 1098⟩
theorem selection1_0284_checked : selection1_0284.check profile0284 := by decide +kernel

noncomputable def selection2_0284 : Selection :=
  ⟨2, -9, 8, (1289/100), 46, -82, 1466⟩
theorem selection2_0284_checked : selection2_0284.check profile0284 := by decide +kernel

noncomputable def profile0285 : ProfileCell :=
  ⟨(11/108), (5/49),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 4, 5, 5, 5],
    [⟨40, 11⟩, ⟨12, 6⟩, ⟨31, 10⟩, ⟨3, 5⟩, ⟨43, 16⟩, ⟨41, 11⟩, ⟨13, 6⟩, ⟨22, 9⟩, ⟨32, 10⟩, ⟨4, 5⟩, ⟨42, 11⟩, ⟨14, 6⟩, ⟨23, 9⟩, ⟨33, 10⟩, ⟨5, 5⟩, ⟨15, 6⟩, ⟨24, 9⟩, ⟨34, 10⟩, ⟨6, 5⟩, ⟨16, 6⟩, ⟨25, 9⟩, ⟨35, 10⟩, ⟨7, 5⟩, ⟨17, 6⟩, ⟨26, 9⟩, ⟨36, 10⟩, ⟨8, 5⟩, ⟨18, 6⟩, ⟨27, 9⟩, ⟨37, 10⟩, ⟨9, 5⟩, ⟨19, 6⟩, ⟨28, 9⟩, ⟨38, 10⟩, ⟨10, 5⟩, ⟨20, 6⟩, ⟨29, 9⟩, ⟨1, 4⟩, ⟨39, 10⟩, ⟨11, 5⟩, ⟨21, 6⟩, ⟨30, 9⟩, ⟨2, 4⟩]⟩
theorem profile0285_checked : profile0285.check := by decide +kernel

noncomputable def selection1_0285 : Selection :=
  ⟨1, -1, 4, (653/50), 204, -28, 450⟩
theorem selection1_0285_checked : selection1_0285.check profile0285 := by decide +kernel

noncomputable def selection2_0285 : Selection :=
  ⟨2, -9, 8, (1293/100), 56, -16, 818⟩
theorem selection2_0285_checked : selection2_0285.check profile0285 := by decide +kernel

noncomputable def profile0286 : ProfileCell :=
  ⟨(5/49), (4/39),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 5, 5, 5, 5],
    [⟨2, 5⟩, ⟨30, 10⟩, ⟨12, 6⟩, ⟨40, 11⟩, ⟨3, 5⟩, ⟨31, 10⟩, ⟨13, 6⟩, ⟨41, 11⟩, ⟨43, 16⟩, ⟨22, 9⟩, ⟨4, 5⟩, ⟨32, 10⟩, ⟨14, 6⟩, ⟨42, 11⟩, ⟨23, 9⟩, ⟨5, 5⟩, ⟨33, 10⟩, ⟨15, 6⟩, ⟨24, 9⟩, ⟨6, 5⟩, ⟨34, 10⟩, ⟨16, 6⟩, ⟨25, 9⟩, ⟨7, 5⟩, ⟨35, 10⟩, ⟨17, 6⟩, ⟨26, 9⟩, ⟨8, 5⟩, ⟨36, 10⟩, ⟨18, 6⟩, ⟨27, 9⟩, ⟨9, 5⟩, ⟨37, 10⟩, ⟨19, 6⟩, ⟨28, 9⟩, ⟨10, 5⟩, ⟨38, 10⟩, ⟨20, 6⟩, ⟨1, 4⟩, ⟨29, 9⟩, ⟨11, 5⟩, ⟨39, 10⟩, ⟨21, 6⟩]⟩
theorem profile0286_checked : profile0286.check := by decide +kernel

noncomputable def selection1_0286 : Selection :=
  ⟨1, 1, 4, (1719/100), 741, -38, 548⟩
theorem selection1_0286_checked : selection1_0286.check profile0286 := by decide +kernel

noncomputable def selection2_0286 : Selection :=
  ⟨2, -7, 8, (426/25), 202, -26, 916⟩
theorem selection2_0286_checked : selection2_0286.check profile0286 := by decide +kernel

noncomputable def profile0287 : ProfileCell :=
  ⟨(4/39), (11/107),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 5, 5, 5, 5],
    [⟨2, 5⟩, ⟨12, 6⟩, ⟨30, 10⟩, ⟨40, 11⟩, ⟨3, 5⟩, ⟨13, 6⟩, ⟨31, 10⟩, ⟨41, 11⟩, ⟨43, 16⟩, ⟨4, 5⟩, ⟨22, 9⟩, ⟨14, 6⟩, ⟨32, 10⟩, ⟨42, 11⟩, ⟨5, 5⟩, ⟨23, 9⟩, ⟨15, 6⟩, ⟨33, 10⟩, ⟨6, 5⟩, ⟨24, 9⟩, ⟨16, 6⟩, ⟨34, 10⟩, ⟨7, 5⟩, ⟨25, 9⟩, ⟨17, 6⟩, ⟨35, 10⟩, ⟨8, 5⟩, ⟨26, 9⟩, ⟨18, 6⟩, ⟨36, 10⟩, ⟨9, 5⟩, ⟨27, 9⟩, ⟨19, 6⟩, ⟨37, 10⟩, ⟨10, 5⟩, ⟨28, 9⟩, ⟨20, 6⟩, ⟨38, 10⟩, ⟨1, 4⟩, ⟨11, 5⟩, ⟨29, 9⟩, ⟨21, 6⟩, ⟨39, 10⟩]⟩
theorem profile0287_checked : profile0287.check := by decide +kernel

noncomputable def selection1_0287 : Selection :=
  ⟨1, 1, 4, (173/10), 341, -86, 1016⟩
theorem selection1_0287_checked : selection1_0287.check profile0287 := by decide +kernel

noncomputable def selection2_0287 : Selection :=
  ⟨2, -7, 8, (428/25), 93, -74, 1384⟩
theorem selection2_0287_checked : selection2_0287.check profile0287 := by decide +kernel

noncomputable def profile0288 : ProfileCell :=
  ⟨(11/107), (7/68),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 5, 5, 5, 5],
    [⟨39, 11⟩, ⟨2, 5⟩, ⟨12, 6⟩, ⟨30, 10⟩, ⟨40, 11⟩, ⟨3, 5⟩, ⟨13, 6⟩, ⟨31, 10⟩, ⟨41, 11⟩, ⟨4, 5⟩, ⟨43, 16⟩, ⟨22, 9⟩, ⟨14, 6⟩, ⟨32, 10⟩, ⟨42, 11⟩, ⟨5, 5⟩, ⟨23, 9⟩, ⟨15, 6⟩, ⟨33, 10⟩, ⟨6, 5⟩, ⟨24, 9⟩, ⟨16, 6⟩, ⟨34, 10⟩, ⟨7, 5⟩, ⟨25, 9⟩, ⟨17, 6⟩, ⟨35, 10⟩, ⟨8, 5⟩, ⟨26, 9⟩, ⟨18, 6⟩, ⟨36, 10⟩, ⟨9, 5⟩, ⟨27, 9⟩, ⟨19, 6⟩, ⟨37, 10⟩, ⟨10, 5⟩, ⟨28, 9⟩, ⟨20, 6⟩, ⟨38, 10⟩, ⟨1, 4⟩, ⟨11, 5⟩, ⟨29, 9⟩, ⟨21, 6⟩]⟩
theorem profile0288_checked : profile0288.check := by decide +kernel

noncomputable def selection1_0288 : Selection :=
  ⟨1, 1, 4, (867/50), 196, -42, 588⟩
theorem selection1_0288_checked : selection1_0288.check profile0288 := by decide +kernel

noncomputable def selection2_0288 : Selection :=
  ⟨2, -7, 8, (343/20), 54, -30, 956⟩
theorem selection2_0288_checked : selection2_0288.check profile0288 := by decide +kernel

noncomputable def profile0289 : ProfileCell :=
  ⟨(7/68), (10/97),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 5, 5, 5, 5],
    [⟨21, 7⟩, ⟨39, 11⟩, ⟨2, 5⟩, ⟨12, 6⟩, ⟨30, 10⟩, ⟨40, 11⟩, ⟨3, 5⟩, ⟨13, 6⟩, ⟨31, 10⟩, ⟨41, 11⟩, ⟨4, 5⟩, ⟨22, 9⟩, ⟨43, 16⟩, ⟨14, 6⟩, ⟨32, 10⟩, ⟨42, 11⟩, ⟨5, 5⟩, ⟨23, 9⟩, ⟨15, 6⟩, ⟨33, 10⟩, ⟨6, 5⟩, ⟨24, 9⟩, ⟨16, 6⟩, ⟨34, 10⟩, ⟨7, 5⟩, ⟨25, 9⟩, ⟨17, 6⟩, ⟨35, 10⟩, ⟨8, 5⟩, ⟨26, 9⟩, ⟨18, 6⟩, ⟨36, 10⟩, ⟨9, 5⟩, ⟨27, 9⟩, ⟨19, 6⟩, ⟨37, 10⟩, ⟨10, 5⟩, ⟨28, 9⟩, ⟨20, 6⟩, ⟨38, 10⟩, ⟨1, 4⟩, ⟨11, 5⟩, ⟨29, 9⟩]⟩
theorem profile0289_checked : profile0289.check := by decide +kernel

noncomputable def selection1_0289 : Selection :=
  ⟨1, 1, 4, (87/5), 217, -70, 860⟩
theorem selection1_0289_checked : selection1_0289.check profile0289 := by decide +kernel

noncomputable def selection2_0289 : Selection :=
  ⟨2, -7, 8, (86/5), 59, -58, 1228⟩
theorem selection2_0289_checked : selection2_0289.check profile0289 := by decide +kernel

noncomputable def profile0290 : ProfileCell :=
  ⟨(10/97), (3/29),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 5, 5, 5, 5],
    [⟨29, 10⟩, ⟨21, 7⟩, ⟨39, 11⟩, ⟨2, 5⟩, ⟨12, 6⟩, ⟨30, 10⟩, ⟨40, 11⟩, ⟨3, 5⟩, ⟨13, 6⟩, ⟨31, 10⟩, ⟨41, 11⟩, ⟨4, 5⟩, ⟨22, 9⟩, ⟨14, 6⟩, ⟨43, 16⟩, ⟨32, 10⟩, ⟨42, 11⟩, ⟨5, 5⟩, ⟨23, 9⟩, ⟨15, 6⟩, ⟨33, 10⟩, ⟨6, 5⟩, ⟨24, 9⟩, ⟨16, 6⟩, ⟨34, 10⟩, ⟨7, 5⟩, ⟨25, 9⟩, ⟨17, 6⟩, ⟨35, 10⟩, ⟨8, 5⟩, ⟨26, 9⟩, ⟨18, 6⟩, ⟨36, 10⟩, ⟨9, 5⟩, ⟨27, 9⟩, ⟨19, 6⟩, ⟨37, 10⟩, ⟨10, 5⟩, ⟨28, 9⟩, ⟨20, 6⟩, ⟨38, 10⟩, ⟨1, 4⟩, ⟨11, 5⟩]⟩
theorem profile0290_checked : profile0290.check := by decide +kernel

noncomputable def selection1_0290 : Selection :=
  ⟨1, 1, 4, (1747/100), 511, -30, 472⟩
theorem selection1_0290_checked : selection1_0290.check profile0290 := by decide +kernel

noncomputable def selection2_0290 : Selection :=
  ⟨2, -7, 8, (1727/100), 139, -18, 840⟩
theorem selection2_0290_checked : selection2_0290.check profile0290 := by decide +kernel

noncomputable def profile0291 : ProfileCell :=
  ⟨(3/29), (11/106),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 5, 5, 5, 5],
    [⟨11, 6⟩, ⟨21, 7⟩, ⟨29, 10⟩, ⟨2, 5⟩, ⟨39, 11⟩, ⟨12, 6⟩, ⟨30, 10⟩, ⟨3, 5⟩, ⟨40, 11⟩, ⟨13, 6⟩, ⟨31, 10⟩, ⟨4, 5⟩, ⟨41, 11⟩, ⟨14, 6⟩, ⟨22, 9⟩, ⟨32, 10⟩, ⟨43, 16⟩, ⟨5, 5⟩, ⟨42, 11⟩, ⟨15, 6⟩, ⟨23, 9⟩, ⟨33, 10⟩, ⟨6, 5⟩, ⟨16, 6⟩, ⟨24, 9⟩, ⟨34, 10⟩, ⟨7, 5⟩, ⟨17, 6⟩, ⟨25, 9⟩, ⟨35, 10⟩, ⟨8, 5⟩, ⟨18, 6⟩, ⟨26, 9⟩, ⟨36, 10⟩, ⟨9, 5⟩, ⟨19, 6⟩, ⟨27, 9⟩, ⟨37, 10⟩, ⟨10, 5⟩, ⟨20, 6⟩, ⟨28, 9⟩, ⟨1, 4⟩, ⟨38, 10⟩]⟩
theorem profile0291_checked : profile0291.check := by decide +kernel

noncomputable def selection1_0291 : Selection :=
  ⟨1, 1, 4, (879/50), 470, -54, 704⟩
theorem selection1_0291_checked : selection1_0291.check profile0291 := by decide +kernel

noncomputable def selection2_0291 : Selection :=
  ⟨2, -7, 8, (347/20), 128, -42, 1072⟩
theorem selection2_0291_checked : selection2_0291.check profile0291 := by decide +kernel

noncomputable def profile0292 : ProfileCell :=
  ⟨(11/106), (5/48),
    [5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [4, 5, 5, 5, 5],
    [⟨38, 11⟩, ⟨11, 6⟩, ⟨21, 7⟩, ⟨29, 10⟩, ⟨2, 5⟩, ⟨39, 11⟩, ⟨12, 6⟩, ⟨30, 10⟩, ⟨3, 5⟩, ⟨40, 11⟩, ⟨13, 6⟩, ⟨31, 10⟩, ⟨4, 5⟩, ⟨41, 11⟩, ⟨14, 6⟩, ⟨22, 9⟩, ⟨32, 10⟩, ⟨5, 5⟩, ⟨43, 16⟩, ⟨42, 11⟩, ⟨15, 6⟩, ⟨23, 9⟩, ⟨33, 10⟩, ⟨6, 5⟩, ⟨16, 6⟩, ⟨24, 9⟩, ⟨34, 10⟩, ⟨7, 5⟩, ⟨17, 6⟩, ⟨25, 9⟩, ⟨35, 10⟩, ⟨8, 5⟩, ⟨18, 6⟩, ⟨26, 9⟩, ⟨36, 10⟩, ⟨9, 5⟩, ⟨19, 6⟩, ⟨27, 9⟩, ⟨37, 10⟩, ⟨10, 5⟩, ⟨20, 6⟩, ⟨28, 9⟩, ⟨1, 4⟩]⟩
theorem profile0292_checked : profile0292.check := by decide +kernel

noncomputable def selection1_0292 : Selection :=
  ⟨1, 1, 4, (1763/100), 569, -10, 280⟩
theorem selection1_0292_checked : selection1_0292.check profile0292 := by decide +kernel

noncomputable def selection2_0292 : Selection :=
  ⟨2, -7, 8, (1741/100), 155, 2, 648⟩
theorem selection2_0292_checked : selection2_0292.check profile0292 := by decide +kernel

noncomputable def profile0293 : ProfileCell :=
  ⟨(5/48), (7/67),
    [5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨1, 5⟩, ⟨28, 10⟩, ⟨11, 6⟩, ⟨38, 11⟩, ⟨21, 7⟩, ⟨2, 5⟩, ⟨29, 10⟩, ⟨12, 6⟩, ⟨39, 11⟩, ⟨3, 5⟩, ⟨30, 10⟩, ⟨13, 6⟩, ⟨40, 11⟩, ⟨4, 5⟩, ⟨31, 10⟩, ⟨14, 6⟩, ⟨41, 11⟩, ⟨22, 9⟩, ⟨5, 5⟩, ⟨32, 10⟩, ⟨15, 6⟩, ⟨42, 11⟩, ⟨43, 16⟩, ⟨23, 9⟩, ⟨6, 5⟩, ⟨33, 10⟩, ⟨16, 6⟩, ⟨24, 9⟩, ⟨7, 5⟩, ⟨34, 10⟩, ⟨17, 6⟩, ⟨25, 9⟩, ⟨8, 5⟩, ⟨35, 10⟩, ⟨18, 6⟩, ⟨26, 9⟩, ⟨9, 5⟩, ⟨36, 10⟩, ⟨19, 6⟩, ⟨27, 9⟩, ⟨10, 5⟩, ⟨37, 10⟩, ⟨20, 6⟩]⟩
theorem profile0293_checked : profile0293.check := by decide +kernel

noncomputable def selection1_0293 : Selection :=
  ⟨1, 2, 4, (492/25), 502, -20, 376⟩
theorem selection1_0293_checked : selection1_0293.check profile0293 := by decide +kernel

noncomputable def selection2_0293 : Selection :=
  ⟨2, -6, 8, (1947/100), 137, -8, 744⟩
theorem selection2_0293_checked : selection2_0293.check profile0293 := by decide +kernel

noncomputable def profile0294 : ProfileCell :=
  ⟨(7/67), (11/105),
    [5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨20, 7⟩, ⟨1, 5⟩, ⟨28, 10⟩, ⟨11, 6⟩, ⟨38, 11⟩, ⟨21, 7⟩, ⟨2, 5⟩, ⟨29, 10⟩, ⟨12, 6⟩, ⟨39, 11⟩, ⟨3, 5⟩, ⟨30, 10⟩, ⟨13, 6⟩, ⟨40, 11⟩, ⟨4, 5⟩, ⟨31, 10⟩, ⟨14, 6⟩, ⟨41, 11⟩, ⟨22, 9⟩, ⟨5, 5⟩, ⟨32, 10⟩, ⟨15, 6⟩, ⟨42, 11⟩, ⟨23, 9⟩, ⟨43, 16⟩, ⟨6, 5⟩, ⟨33, 10⟩, ⟨16, 6⟩, ⟨24, 9⟩, ⟨7, 5⟩, ⟨34, 10⟩, ⟨17, 6⟩, ⟨25, 9⟩, ⟨8, 5⟩, ⟨35, 10⟩, ⟨18, 6⟩, ⟨26, 9⟩, ⟨9, 5⟩, ⟨36, 10⟩, ⟨19, 6⟩, ⟨27, 9⟩, ⟨10, 5⟩, ⟨37, 10⟩]⟩
theorem profile0294_checked : profile0294.check := by decide +kernel

noncomputable def selection1_0294 : Selection :=
  ⟨1, 2, 4, (494/25), 461, -48, 644⟩
theorem selection1_0294_checked : selection1_0294.check profile0294 := by decide +kernel

noncomputable def selection2_0294 : Selection :=
  ⟨2, -6, 8, (1953/100), 126, -36, 1012⟩
theorem selection2_0294_checked : selection2_0294.check profile0294 := by decide +kernel

noncomputable def profile0295 : ProfileCell :=
  ⟨(11/105), (2/19),
    [5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨37, 11⟩, ⟨20, 7⟩, ⟨1, 5⟩, ⟨28, 10⟩, ⟨11, 6⟩, ⟨38, 11⟩, ⟨21, 7⟩, ⟨2, 5⟩, ⟨29, 10⟩, ⟨12, 6⟩, ⟨39, 11⟩, ⟨3, 5⟩, ⟨30, 10⟩, ⟨13, 6⟩, ⟨40, 11⟩, ⟨4, 5⟩, ⟨31, 10⟩, ⟨14, 6⟩, ⟨41, 11⟩, ⟨22, 9⟩, ⟨5, 5⟩, ⟨32, 10⟩, ⟨15, 6⟩, ⟨42, 11⟩, ⟨23, 9⟩, ⟨6, 5⟩, ⟨43, 16⟩, ⟨33, 10⟩, ⟨16, 6⟩, ⟨24, 9⟩, ⟨7, 5⟩, ⟨34, 10⟩, ⟨17, 6⟩, ⟨25, 9⟩, ⟨8, 5⟩, ⟨35, 10⟩, ⟨18, 6⟩, ⟨26, 9⟩, ⟨9, 5⟩, ⟨36, 10⟩, ⟨19, 6⟩, ⟨27, 9⟩, ⟨10, 5⟩]⟩
theorem profile0295_checked : profile0295.check := by decide +kernel

noncomputable def selection1_0295 : Selection :=
  ⟨1, 2, 4, (1981/100), 814, -4, 224⟩
theorem selection1_0295_checked : selection1_0295.check profile0295 := by decide +kernel

noncomputable def selection2_0295 : Selection :=
  ⟨2, -6, 8, (98/5), 222, 8, 592⟩
theorem selection2_0295_checked : selection2_0295.check profile0295 := by decide +kernel

noncomputable def profile0296 : ProfileCell :=
  ⟨(2/19), (11/104),
    [5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨10, 6⟩, ⟨27, 10⟩, ⟨1, 5⟩, ⟨20, 7⟩, ⟨37, 11⟩, ⟨11, 6⟩, ⟨28, 10⟩, ⟨2, 5⟩, ⟨21, 7⟩, ⟨38, 11⟩, ⟨12, 6⟩, ⟨29, 10⟩, ⟨3, 5⟩, ⟨39, 11⟩, ⟨13, 6⟩, ⟨30, 10⟩, ⟨4, 5⟩, ⟨40, 11⟩, ⟨14, 6⟩, ⟨31, 10⟩, ⟨5, 5⟩, ⟨22, 9⟩, ⟨41, 11⟩, ⟨15, 6⟩, ⟨32, 10⟩, ⟨6, 5⟩, ⟨23, 9⟩, ⟨42, 11⟩, ⟨16, 6⟩, ⟨33, 10⟩, ⟨43, 16⟩, ⟨7, 5⟩, ⟨24, 9⟩, ⟨17, 6⟩, ⟨34, 10⟩, ⟨8, 5⟩, ⟨25, 9⟩, ⟨18, 6⟩, ⟨35, 10⟩, ⟨9, 5⟩, ⟨26, 9⟩, ⟨19, 6⟩, ⟨36, 10⟩]⟩
theorem profile0296_checked : profile0296.check := by decide +kernel

noncomputable def selection1_0296 : Selection :=
  ⟨1, 1, 4, (897/50), 743, -36, 528⟩
theorem selection1_0296_checked : selection1_0296.check profile0296 := by decide +kernel

noncomputable def selection2_0296 : Selection :=
  ⟨2, -7, 8, (1771/100), 203, -24, 896⟩
theorem selection2_0296_checked : selection2_0296.check profile0296 := by decide +kernel

noncomputable def profile0297 : ProfileCell :=
  ⟨(11/104), (7/66),
    [5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨36, 11⟩, ⟨10, 6⟩, ⟨27, 10⟩, ⟨1, 5⟩, ⟨20, 7⟩, ⟨37, 11⟩, ⟨11, 6⟩, ⟨28, 10⟩, ⟨2, 5⟩, ⟨21, 7⟩, ⟨38, 11⟩, ⟨12, 6⟩, ⟨29, 10⟩, ⟨3, 5⟩, ⟨39, 11⟩, ⟨13, 6⟩, ⟨30, 10⟩, ⟨4, 5⟩, ⟨40, 11⟩, ⟨14, 6⟩, ⟨31, 10⟩, ⟨5, 5⟩, ⟨22, 9⟩, ⟨41, 11⟩, ⟨15, 6⟩, ⟨32, 10⟩, ⟨6, 5⟩, ⟨23, 9⟩, ⟨42, 11⟩, ⟨16, 6⟩, ⟨33, 10⟩, ⟨7, 5⟩, ⟨43, 16⟩, ⟨24, 9⟩, ⟨17, 6⟩, ⟨34, 10⟩, ⟨8, 5⟩, ⟨25, 9⟩, ⟨18, 6⟩, ⟨35, 10⟩, ⟨9, 5⟩, ⟨26, 9⟩, ⟨19, 6⟩]⟩
theorem profile0297_checked : profile0297.check := by decide +kernel

noncomputable def selection1_0297 : Selection :=
  ⟨1, 1, 4, (897/50), 428, 30, -96⟩
theorem selection1_0297_checked : selection1_0297.check profile0297 := by decide +kernel

noncomputable def selection2_0297 : Selection :=
  ⟨2, -7, 8, (1773/100), 117, 42, 272⟩
theorem selection2_0297_checked : selection2_0297.check profile0297 := by decide +kernel

noncomputable def profile0298 : ProfileCell :=
  ⟨(7/66), (5/47),
    [5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨19, 7⟩, ⟨36, 11⟩, ⟨10, 6⟩, ⟨27, 10⟩, ⟨1, 5⟩, ⟨20, 7⟩, ⟨37, 11⟩, ⟨11, 6⟩, ⟨28, 10⟩, ⟨2, 5⟩, ⟨21, 7⟩, ⟨38, 11⟩, ⟨12, 6⟩, ⟨29, 10⟩, ⟨3, 5⟩, ⟨39, 11⟩, ⟨13, 6⟩, ⟨30, 10⟩, ⟨4, 5⟩, ⟨40, 11⟩, ⟨14, 6⟩, ⟨31, 10⟩, ⟨5, 5⟩, ⟨22, 9⟩, ⟨41, 11⟩, ⟨15, 6⟩, ⟨32, 10⟩, ⟨6, 5⟩, ⟨23, 9⟩, ⟨42, 11⟩, ⟨16, 6⟩, ⟨33, 10⟩, ⟨7, 5⟩, ⟨24, 9⟩, ⟨43, 16⟩, ⟨17, 6⟩, ⟨34, 10⟩, ⟨8, 5⟩, ⟨25, 9⟩, ⟨18, 6⟩, ⟨35, 10⟩, ⟨9, 5⟩, ⟨26, 9⟩]⟩
theorem profile0298_checked : profile0298.check := by decide +kernel

noncomputable def selection1_0298 : Selection :=
  ⟨1, 1, 4, (1797/100), 474, -12, 300⟩
theorem selection1_0298_checked : selection1_0298.check profile0298 := by decide +kernel

noncomputable def selection2_0298 : Selection :=
  ⟨2, -7, 8, (889/50), 130, 0, 668⟩
theorem selection2_0298_checked : selection2_0298.check profile0298 := by decide +kernel

noncomputable def profile0299 : ProfileCell :=
  ⟨(5/47), (11/103),
    [5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨26, 10⟩, ⟨19, 7⟩, ⟨10, 6⟩, ⟨36, 11⟩, ⟨1, 5⟩, ⟨27, 10⟩, ⟨20, 7⟩, ⟨11, 6⟩, ⟨37, 11⟩, ⟨2, 5⟩, ⟨28, 10⟩, ⟨21, 7⟩, ⟨12, 6⟩, ⟨38, 11⟩, ⟨3, 5⟩, ⟨29, 10⟩, ⟨13, 6⟩, ⟨39, 11⟩, ⟨4, 5⟩, ⟨30, 10⟩, ⟨14, 6⟩, ⟨40, 11⟩, ⟨5, 5⟩, ⟨31, 10⟩, ⟨22, 9⟩, ⟨15, 6⟩, ⟨41, 11⟩, ⟨6, 5⟩, ⟨32, 10⟩, ⟨23, 9⟩, ⟨16, 6⟩, ⟨42, 11⟩, ⟨7, 5⟩, ⟨33, 10⟩, ⟨24, 9⟩, ⟨17, 6⟩, ⟨43, 16⟩, ⟨8, 5⟩, ⟨34, 10⟩, ⟨25, 9⟩, ⟨18, 6⟩, ⟨9, 5⟩, ⟨35, 10⟩]⟩
theorem profile0299_checked : profile0299.check := by decide +kernel

noncomputable def selection1_0299 : Selection :=
  ⟨1, 1, 4, 18, 608, -2, 206⟩
theorem selection1_0299_checked : selection1_0299.check profile0299 := by decide +kernel

noncomputable def selection2_0299 : Selection :=
  ⟨2, -7, 8, (446/25), 167, 10, 574⟩
theorem selection2_0299_checked : selection2_0299.check profile0299 := by decide +kernel

noncomputable def profile0300 : ProfileCell :=
  ⟨(11/103), (3/28),
    [5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨35, 11⟩, ⟨26, 10⟩, ⟨19, 7⟩, ⟨10, 6⟩, ⟨36, 11⟩, ⟨1, 5⟩, ⟨27, 10⟩, ⟨20, 7⟩, ⟨11, 6⟩, ⟨37, 11⟩, ⟨2, 5⟩, ⟨28, 10⟩, ⟨21, 7⟩, ⟨12, 6⟩, ⟨38, 11⟩, ⟨3, 5⟩, ⟨29, 10⟩, ⟨13, 6⟩, ⟨39, 11⟩, ⟨4, 5⟩, ⟨30, 10⟩, ⟨14, 6⟩, ⟨40, 11⟩, ⟨5, 5⟩, ⟨31, 10⟩, ⟨22, 9⟩, ⟨15, 6⟩, ⟨41, 11⟩, ⟨6, 5⟩, ⟨32, 10⟩, ⟨23, 9⟩, ⟨16, 6⟩, ⟨42, 11⟩, ⟨7, 5⟩, ⟨33, 10⟩, ⟨24, 9⟩, ⟨17, 6⟩, ⟨8, 5⟩, ⟨43, 16⟩, ⟨34, 10⟩, ⟨25, 9⟩, ⟨18, 6⟩, ⟨9, 5⟩]⟩
theorem profile0300_checked : profile0300.check := by decide +kernel

noncomputable def selection1_0300 : Selection :=
  ⟨1, 1, 4, 18, 510, 42, -206⟩
theorem selection1_0300_checked : selection1_0300.check profile0300 := by decide +kernel

noncomputable def selection2_0300 : Selection :=
  ⟨2, -7, 8, (357/20), 140, 54, 162⟩
theorem selection2_0300_checked : selection2_0300.check profile0300 := by decide +kernel

noncomputable def profile0301 : ProfileCell :=
  ⟨(3/28), (10/93),
    [5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨9, 6⟩, ⟨35, 11⟩, ⟨19, 7⟩, ⟨26, 10⟩, ⟨10, 6⟩, ⟨1, 5⟩, ⟨36, 11⟩, ⟨20, 7⟩, ⟨27, 10⟩, ⟨11, 6⟩, ⟨2, 5⟩, ⟨37, 11⟩, ⟨21, 7⟩, ⟨28, 10⟩, ⟨12, 6⟩, ⟨3, 5⟩, ⟨38, 11⟩, ⟨29, 10⟩, ⟨13, 6⟩, ⟨4, 5⟩, ⟨39, 11⟩, ⟨30, 10⟩, ⟨14, 6⟩, ⟨5, 5⟩, ⟨40, 11⟩, ⟨31, 10⟩, ⟨15, 6⟩, ⟨22, 9⟩, ⟨6, 5⟩, ⟨41, 11⟩, ⟨32, 10⟩, ⟨16, 6⟩, ⟨23, 9⟩, ⟨7, 5⟩, ⟨42, 11⟩, ⟨33, 10⟩, ⟨17, 6⟩, ⟨24, 9⟩, ⟨8, 5⟩, ⟨34, 10⟩, ⟨43, 16⟩, ⟨18, 6⟩, ⟨25, 9⟩]⟩
theorem profile0301_checked : profile0301.check := by decide +kernel

noncomputable def selection1_0301 : Selection :=
  ⟨1, 0, 4, (1601/100), 502, -6, 242⟩
theorem selection1_0301_checked : selection1_0301.check profile0301 := by decide +kernel

noncomputable def selection2_0301 : Selection :=
  ⟨2, -8, 8, (1591/100), 138, 6, 610⟩
theorem selection2_0301_checked : selection2_0301.check profile0301 := by decide +kernel

noncomputable def profile0302 : ProfileCell :=
  ⟨(10/93), (17/158),
    [5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨25, 10⟩, ⟨9, 6⟩, ⟨35, 11⟩, ⟨19, 7⟩, ⟨26, 10⟩, ⟨10, 6⟩, ⟨1, 5⟩, ⟨36, 11⟩, ⟨20, 7⟩, ⟨27, 10⟩, ⟨11, 6⟩, ⟨2, 5⟩, ⟨37, 11⟩, ⟨21, 7⟩, ⟨28, 10⟩, ⟨12, 6⟩, ⟨3, 5⟩, ⟨38, 11⟩, ⟨29, 10⟩, ⟨13, 6⟩, ⟨4, 5⟩, ⟨39, 11⟩, ⟨30, 10⟩, ⟨14, 6⟩, ⟨5, 5⟩, ⟨40, 11⟩, ⟨31, 10⟩, ⟨15, 6⟩, ⟨22, 9⟩, ⟨6, 5⟩, ⟨41, 11⟩, ⟨32, 10⟩, ⟨16, 6⟩, ⟨23, 9⟩, ⟨7, 5⟩, ⟨42, 11⟩, ⟨33, 10⟩, ⟨17, 6⟩, ⟨24, 9⟩, ⟨8, 5⟩, ⟨34, 10⟩, ⟨18, 6⟩, ⟨43, 16⟩]⟩
theorem profile0302_checked : profile0302.check := by decide +kernel

noncomputable def selection1_0302 : Selection :=
  ⟨1, 0, 4, (1601/100), 89, 34, -130⟩
theorem selection1_0302_checked : selection1_0302.check profile0302 := by decide +kernel

noncomputable def selection2_0302 : Selection :=
  ⟨2, -8, 8, (1591/100), 25, 46, 238⟩
theorem selection2_0302_checked : selection2_0302.check profile0302 := by decide +kernel

noncomputable def profile0303 : ProfileCell :=
  ⟨(17/158), (7/65),
    [5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨43, 17⟩, ⟨25, 10⟩, ⟨9, 6⟩, ⟨35, 11⟩, ⟨19, 7⟩, ⟨26, 10⟩, ⟨10, 6⟩, ⟨1, 5⟩, ⟨36, 11⟩, ⟨20, 7⟩, ⟨27, 10⟩, ⟨11, 6⟩, ⟨2, 5⟩, ⟨37, 11⟩, ⟨21, 7⟩, ⟨28, 10⟩, ⟨12, 6⟩, ⟨3, 5⟩, ⟨38, 11⟩, ⟨29, 10⟩, ⟨13, 6⟩, ⟨4, 5⟩, ⟨39, 11⟩, ⟨30, 10⟩, ⟨14, 6⟩, ⟨5, 5⟩, ⟨40, 11⟩, ⟨31, 10⟩, ⟨15, 6⟩, ⟨22, 9⟩, ⟨6, 5⟩, ⟨41, 11⟩, ⟨32, 10⟩, ⟨16, 6⟩, ⟨23, 9⟩, ⟨7, 5⟩, ⟨42, 11⟩, ⟨33, 10⟩, ⟨17, 6⟩, ⟨24, 9⟩, ⟨8, 5⟩, ⟨34, 10⟩, ⟨18, 6⟩]⟩
theorem profile0303_checked : profile0303.check := by decide +kernel

noncomputable def selection1_0303 : Selection :=
  ⟨1, 0, 4, (1609/100), 128, -170, 1766⟩
theorem selection1_0303_checked : selection1_0303.check profile0303 := by decide +kernel

noncomputable def selection2_0303 : Selection :=
  ⟨2, -8, 8, (399/25), 35, -158, 2134⟩
theorem selection2_0303_checked : selection2_0303.check profile0303 := by decide +kernel

noncomputable def profile0304 : ProfileCell :=
  ⟨(7/65), (11/102),
    [5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨18, 7⟩, ⟨25, 10⟩, ⟨43, 17⟩, ⟨9, 6⟩, ⟨35, 11⟩, ⟨19, 7⟩, ⟨26, 10⟩, ⟨10, 6⟩, ⟨1, 5⟩, ⟨36, 11⟩, ⟨20, 7⟩, ⟨27, 10⟩, ⟨11, 6⟩, ⟨2, 5⟩, ⟨37, 11⟩, ⟨21, 7⟩, ⟨28, 10⟩, ⟨12, 6⟩, ⟨3, 5⟩, ⟨38, 11⟩, ⟨29, 10⟩, ⟨13, 6⟩, ⟨4, 5⟩, ⟨39, 11⟩, ⟨30, 10⟩, ⟨14, 6⟩, ⟨5, 5⟩, ⟨40, 11⟩, ⟨31, 10⟩, ⟨15, 6⟩, ⟨22, 9⟩, ⟨6, 5⟩, ⟨41, 11⟩, ⟨32, 10⟩, ⟨16, 6⟩, ⟨23, 9⟩, ⟨7, 5⟩, ⟨42, 11⟩, ⟨33, 10⟩, ⟨17, 6⟩, ⟨24, 9⟩, ⟨8, 5⟩, ⟨34, 10⟩]⟩
theorem profile0304_checked : profile0304.check := by decide +kernel

noncomputable def selection1_0304 : Selection :=
  ⟨1, 0, 4, (406/25), 200, -212, 2156⟩
theorem selection1_0304_checked : selection1_0304.check profile0304 := by decide +kernel

noncomputable def selection2_0304 : Selection :=
  ⟨2, -8, 8, (321/20), 55, -200, 2524⟩
theorem selection2_0304_checked : selection2_0304.check profile0304 := by decide +kernel

noncomputable def profile0305 : ProfileCell :=
  ⟨(11/102), (4/37),
    [5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨34, 11⟩, ⟨18, 7⟩, ⟨25, 10⟩, ⟨9, 6⟩, ⟨43, 17⟩, ⟨35, 11⟩, ⟨19, 7⟩, ⟨26, 10⟩, ⟨10, 6⟩, ⟨1, 5⟩, ⟨36, 11⟩, ⟨20, 7⟩, ⟨27, 10⟩, ⟨11, 6⟩, ⟨2, 5⟩, ⟨37, 11⟩, ⟨21, 7⟩, ⟨28, 10⟩, ⟨12, 6⟩, ⟨3, 5⟩, ⟨38, 11⟩, ⟨29, 10⟩, ⟨13, 6⟩, ⟨4, 5⟩, ⟨39, 11⟩, ⟨30, 10⟩, ⟨14, 6⟩, ⟨5, 5⟩, ⟨40, 11⟩, ⟨31, 10⟩, ⟨15, 6⟩, ⟨22, 9⟩, ⟨6, 5⟩, ⟨41, 11⟩, ⟨32, 10⟩, ⟨16, 6⟩, ⟨23, 9⟩, ⟨7, 5⟩, ⟨42, 11⟩, ⟨33, 10⟩, ⟨17, 6⟩, ⟨24, 9⟩, ⟨8, 5⟩]⟩
theorem profile0305_checked : profile0305.check := by decide +kernel

noncomputable def selection1_0305 : Selection :=
  ⟨1, 0, 4, (821/50), 355, -146, 1544⟩
theorem selection1_0305_checked : selection1_0305.check profile0305 := by decide +kernel

noncomputable def selection2_0305 : Selection :=
  ⟨2, -8, 8, (1617/100), 97, -134, 1912⟩
theorem selection2_0305_checked : selection2_0305.check profile0305 := by decide +kernel

noncomputable def profile0306 : ProfileCell :=
  ⟨(4/37), (5/46),
    [5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨18, 7⟩, ⟨34, 11⟩, ⟨9, 6⟩, ⟨25, 10⟩, ⟨43, 17⟩, ⟨19, 7⟩, ⟨35, 11⟩, ⟨10, 6⟩, ⟨26, 10⟩, ⟨1, 5⟩, ⟨20, 7⟩, ⟨36, 11⟩, ⟨11, 6⟩, ⟨27, 10⟩, ⟨2, 5⟩, ⟨21, 7⟩, ⟨37, 11⟩, ⟨12, 6⟩, ⟨28, 10⟩, ⟨3, 5⟩, ⟨38, 11⟩, ⟨13, 6⟩, ⟨29, 10⟩, ⟨4, 5⟩, ⟨39, 11⟩, ⟨14, 6⟩, ⟨30, 10⟩, ⟨5, 5⟩, ⟨40, 11⟩, ⟨15, 6⟩, ⟨31, 10⟩, ⟨6, 5⟩, ⟨22, 9⟩, ⟨41, 11⟩, ⟨16, 6⟩, ⟨32, 10⟩, ⟨7, 5⟩, ⟨23, 9⟩, ⟨42, 11⟩, ⟨17, 6⟩, ⟨33, 10⟩, ⟨8, 5⟩, ⟨24, 9⟩]⟩
theorem profile0306_checked : profile0306.check := by decide +kernel

noncomputable def selection1_0306 : Selection :=
  ⟨1, 0, 4, (1689/100), 808, -170, 1766⟩
theorem selection1_0306_checked : selection1_0306.check profile0306 := by decide +kernel

noncomputable def selection2_0306 : Selection :=
  ⟨2, -8, 8, (1647/100), 218, -158, 2134⟩
theorem selection2_0306_checked : selection2_0306.check profile0306 := by decide +kernel

noncomputable def profile0307 : ProfileCell :=
  ⟨(5/46), (11/101),
    [5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨24, 10⟩, ⟨18, 7⟩, ⟨9, 6⟩, ⟨34, 11⟩, ⟨25, 10⟩, ⟨19, 7⟩, ⟨43, 17⟩, ⟨10, 6⟩, ⟨35, 11⟩, ⟨1, 5⟩, ⟨26, 10⟩, ⟨20, 7⟩, ⟨11, 6⟩, ⟨36, 11⟩, ⟨2, 5⟩, ⟨27, 10⟩, ⟨21, 7⟩, ⟨12, 6⟩, ⟨37, 11⟩, ⟨3, 5⟩, ⟨28, 10⟩, ⟨13, 6⟩, ⟨38, 11⟩, ⟨4, 5⟩, ⟨29, 10⟩, ⟨14, 6⟩, ⟨39, 11⟩, ⟨5, 5⟩, ⟨30, 10⟩, ⟨15, 6⟩, ⟨40, 11⟩, ⟨6, 5⟩, ⟨31, 10⟩, ⟨22, 9⟩, ⟨16, 6⟩, ⟨41, 11⟩, ⟨7, 5⟩, ⟨32, 10⟩, ⟨23, 9⟩, ⟨17, 6⟩, ⟨42, 11⟩, ⟨8, 5⟩, ⟨33, 10⟩]⟩
theorem profile0307_checked : profile0307.check := by decide +kernel

noncomputable def selection1_0307 : Selection :=
  ⟨1, -1, 4, (377/25), 265, -190, 1950⟩
theorem selection1_0307_checked : selection1_0307.check profile0307 := by decide +kernel

noncomputable def selection2_0307 : Selection :=
  ⟨2, -9, 8, (1459/100), 71, -178, 2318⟩
theorem selection2_0307_checked : selection2_0307.check profile0307 := by decide +kernel

noncomputable def profile0308 : ProfileCell :=
  ⟨(11/101), (6/55),
    [5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨33, 11⟩, ⟨24, 10⟩, ⟨18, 7⟩, ⟨9, 6⟩, ⟨34, 11⟩, ⟨25, 10⟩, ⟨19, 7⟩, ⟨10, 6⟩, ⟨43, 17⟩, ⟨35, 11⟩, ⟨1, 5⟩, ⟨26, 10⟩, ⟨20, 7⟩, ⟨11, 6⟩, ⟨36, 11⟩, ⟨2, 5⟩, ⟨27, 10⟩, ⟨21, 7⟩, ⟨12, 6⟩, ⟨37, 11⟩, ⟨3, 5⟩, ⟨28, 10⟩, ⟨13, 6⟩, ⟨38, 11⟩, ⟨4, 5⟩, ⟨29, 10⟩, ⟨14, 6⟩, ⟨39, 11⟩, ⟨5, 5⟩, ⟨30, 10⟩, ⟨15, 6⟩, ⟨40, 11⟩, ⟨6, 5⟩, ⟨31, 10⟩, ⟨22, 9⟩, ⟨16, 6⟩, ⟨41, 11⟩, ⟨7, 5⟩, ⟨32, 10⟩, ⟨23, 9⟩, ⟨17, 6⟩, ⟨42, 11⟩, ⟨8, 5⟩]⟩
theorem profile0308_checked : profile0308.check := by decide +kernel

noncomputable def selection1_0308 : Selection :=
  ⟨1, -1, 4, (1519/100), 223, -124, 1344⟩
theorem selection1_0308_checked : selection1_0308.check profile0308 := by decide +kernel

noncomputable def selection2_0308 : Selection :=
  ⟨2, -9, 8, (733/50), 60, -112, 1712⟩
theorem selection2_0308_checked : selection2_0308.check profile0308 := by decide +kernel

noncomputable def profile0309 : ProfileCell :=
  ⟨(6/55), (7/64),
    [5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨8, 6⟩, ⟨42, 12⟩, ⟨33, 11⟩, ⟨24, 10⟩, ⟨18, 7⟩, ⟨9, 6⟩, ⟨34, 11⟩, ⟨25, 10⟩, ⟨19, 7⟩, ⟨10, 6⟩, ⟨1, 5⟩, ⟨35, 11⟩, ⟨43, 17⟩, ⟨26, 10⟩, ⟨20, 7⟩, ⟨11, 6⟩, ⟨2, 5⟩, ⟨36, 11⟩, ⟨27, 10⟩, ⟨21, 7⟩, ⟨12, 6⟩, ⟨3, 5⟩, ⟨37, 11⟩, ⟨28, 10⟩, ⟨13, 6⟩, ⟨4, 5⟩, ⟨38, 11⟩, ⟨29, 10⟩, ⟨14, 6⟩, ⟨5, 5⟩, ⟨39, 11⟩, ⟨30, 10⟩, ⟨15, 6⟩, ⟨6, 5⟩, ⟨40, 11⟩, ⟨31, 10⟩, ⟨22, 9⟩, ⟨16, 6⟩, ⟨7, 5⟩, ⟨41, 11⟩, ⟨32, 10⟩, ⟨23, 9⟩, ⟨17, 6⟩]⟩
theorem profile0309_checked : profile0309.check := by decide +kernel

noncomputable def selection1_0309 : Selection :=
  ⟨1, -1, 4, (767/50), 355, -112, 1234⟩
theorem selection1_0309_checked : selection1_0309.check profile0309 := by decide +kernel

noncomputable def selection2_0309 : Selection :=
  ⟨2, -9, 8, (1477/100), 95, -100, 1602⟩
theorem selection2_0309_checked : selection2_0309.check profile0309 := by decide +kernel

noncomputable def profile0310 : ProfileCell :=
  ⟨(7/64), (10/91),
    [5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨17, 7⟩, ⟨8, 6⟩, ⟨42, 12⟩, ⟨33, 11⟩, ⟨24, 10⟩, ⟨18, 7⟩, ⟨9, 6⟩, ⟨34, 11⟩, ⟨25, 10⟩, ⟨19, 7⟩, ⟨10, 6⟩, ⟨1, 5⟩, ⟨35, 11⟩, ⟨26, 10⟩, ⟨43, 17⟩, ⟨20, 7⟩, ⟨11, 6⟩, ⟨2, 5⟩, ⟨36, 11⟩, ⟨27, 10⟩, ⟨21, 7⟩, ⟨12, 6⟩, ⟨3, 5⟩, ⟨37, 11⟩, ⟨28, 10⟩, ⟨13, 6⟩, ⟨4, 5⟩, ⟨38, 11⟩, ⟨29, 10⟩, ⟨14, 6⟩, ⟨5, 5⟩, ⟨39, 11⟩, ⟨30, 10⟩, ⟨15, 6⟩, ⟨6, 5⟩, ⟨40, 11⟩, ⟨31, 10⟩, ⟨22, 9⟩, ⟨16, 6⟩, ⟨7, 5⟩, ⟨41, 11⟩, ⟨32, 10⟩, ⟨23, 9⟩]⟩
theorem profile0310_checked : profile0310.check := by decide +kernel

noncomputable def selection1_0310 : Selection :=
  ⟨1, -1, 4, (393/25), 658, -154, 1618⟩
theorem selection1_0310_checked : selection1_0310.check profile0310 := by decide +kernel

noncomputable def selection2_0310 : Selection :=
  ⟨2, -9, 8, (1501/100), 174, -142, 1986⟩
theorem selection2_0310_checked : selection2_0310.check profile0310 := by decide +kernel

noncomputable def profile0311 : ProfileCell :=
  ⟨(10/91), (11/100),
    [5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨23, 10⟩, ⟨17, 7⟩, ⟨8, 6⟩, ⟨42, 12⟩, ⟨33, 11⟩, ⟨24, 10⟩, ⟨18, 7⟩, ⟨9, 6⟩, ⟨34, 11⟩, ⟨25, 10⟩, ⟨19, 7⟩, ⟨10, 6⟩, ⟨1, 5⟩, ⟨35, 11⟩, ⟨26, 10⟩, ⟨20, 7⟩, ⟨43, 17⟩, ⟨11, 6⟩, ⟨2, 5⟩, ⟨36, 11⟩, ⟨27, 10⟩, ⟨21, 7⟩, ⟨12, 6⟩, ⟨3, 5⟩, ⟨37, 11⟩, ⟨28, 10⟩, ⟨13, 6⟩, ⟨4, 5⟩, ⟨38, 11⟩, ⟨29, 10⟩, ⟨14, 6⟩, ⟨5, 5⟩, ⟨39, 11⟩, ⟨30, 10⟩, ⟨15, 6⟩, ⟨6, 5⟩, ⟨40, 11⟩, ⟨31, 10⟩, ⟨22, 9⟩, ⟨16, 6⟩, ⟨7, 5⟩, ⟨41, 11⟩, ⟨32, 10⟩]⟩
theorem profile0311_checked : profile0311.check := by decide +kernel

noncomputable def selection1_0311 : Selection :=
  ⟨1, -1, 4, (1577/100), 141, -94, 1072⟩
theorem selection1_0311_checked : selection1_0311.check profile0311 := by decide +kernel

noncomputable def selection2_0311 : Selection :=
  ⟨2, -9, 8, (301/20), 38, -82, 1440⟩
theorem selection2_0311_checked : selection2_0311.check profile0311 := by decide +kernel

noncomputable def profile0312 : ProfileCell :=
  ⟨(11/100), (12/109),
    [5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨32, 11⟩, ⟨23, 10⟩, ⟨17, 7⟩, ⟨8, 6⟩, ⟨42, 12⟩, ⟨33, 11⟩, ⟨24, 10⟩, ⟨18, 7⟩, ⟨9, 6⟩, ⟨34, 11⟩, ⟨25, 10⟩, ⟨19, 7⟩, ⟨10, 6⟩, ⟨1, 5⟩, ⟨35, 11⟩, ⟨26, 10⟩, ⟨20, 7⟩, ⟨11, 6⟩, ⟨43, 17⟩, ⟨2, 5⟩, ⟨36, 11⟩, ⟨27, 10⟩, ⟨21, 7⟩, ⟨12, 6⟩, ⟨3, 5⟩, ⟨37, 11⟩, ⟨28, 10⟩, ⟨13, 6⟩, ⟨4, 5⟩, ⟨38, 11⟩, ⟨29, 10⟩, ⟨14, 6⟩, ⟨5, 5⟩, ⟨39, 11⟩, ⟨30, 10⟩, ⟨15, 6⟩, ⟨6, 5⟩, ⟨40, 11⟩, ⟨31, 10⟩, ⟨22, 9⟩, ⟨16, 6⟩, ⟨7, 5⟩, ⟨41, 11⟩]⟩
theorem profile0312_checked : profile0312.check := by decide +kernel

noncomputable def selection1_0312 : Selection :=
  ⟨1, -1, 4, (79/5), 118, -50, 672⟩
theorem selection1_0312_checked : selection1_0312.check profile0312 := by decide +kernel

noncomputable def selection2_0312 : Selection :=
  ⟨2, -9, 8, (1507/100), 32, -38, 1040⟩
theorem selection2_0312_checked : selection2_0312.check profile0312 := by decide +kernel

noncomputable def profile0313 : ProfileCell :=
  ⟨(12/109), (1/9),
    [5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨41, 12⟩, ⟨32, 11⟩, ⟨23, 10⟩, ⟨17, 7⟩, ⟨8, 6⟩, ⟨42, 12⟩, ⟨33, 11⟩, ⟨24, 10⟩, ⟨18, 7⟩, ⟨9, 6⟩, ⟨34, 11⟩, ⟨25, 10⟩, ⟨19, 7⟩, ⟨10, 6⟩, ⟨1, 5⟩, ⟨35, 11⟩, ⟨26, 10⟩, ⟨20, 7⟩, ⟨11, 6⟩, ⟨2, 5⟩, ⟨43, 17⟩, ⟨36, 11⟩, ⟨27, 10⟩, ⟨21, 7⟩, ⟨12, 6⟩, ⟨3, 5⟩, ⟨37, 11⟩, ⟨28, 10⟩, ⟨13, 6⟩, ⟨4, 5⟩, ⟨38, 11⟩, ⟨29, 10⟩, ⟨14, 6⟩, ⟨5, 5⟩, ⟨39, 11⟩, ⟨30, 10⟩, ⟨15, 6⟩, ⟨6, 5⟩, ⟨40, 11⟩, ⟨31, 10⟩, ⟨22, 9⟩, ⟨16, 6⟩, ⟨7, 5⟩]⟩
theorem profile0313_checked : profile0313.check := by decide +kernel

noncomputable def selection1_0313 : Selection :=
  ⟨1, -1, 4, (79/5), 1306, 22, 18⟩
theorem selection1_0313_checked : selection1_0313.check profile0313 := by decide +kernel

noncomputable def selection2_0313 : Selection :=
  ⟨2, -9, 8, (379/25), 347, 34, 386⟩
theorem selection2_0313_checked : selection2_0313.check profile0313 := by decide +kernel

noncomputable def profile0314 : ProfileCell :=
  ⟨(1/9), (12/107),
    [5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨7, 6⟩, ⟨16, 7⟩, ⟨22, 10⟩, ⟨31, 11⟩, ⟨40, 12⟩, ⟨8, 6⟩, ⟨17, 7⟩, ⟨23, 10⟩, ⟨32, 11⟩, ⟨41, 12⟩, ⟨9, 6⟩, ⟨18, 7⟩, ⟨24, 10⟩, ⟨33, 11⟩, ⟨42, 12⟩, ⟨1, 5⟩, ⟨10, 6⟩, ⟨19, 7⟩, ⟨25, 10⟩, ⟨34, 11⟩, ⟨2, 5⟩, ⟨11, 6⟩, ⟨20, 7⟩, ⟨26, 10⟩, ⟨35, 11⟩, ⟨3, 5⟩, ⟨12, 6⟩, ⟨21, 7⟩, ⟨27, 10⟩, ⟨36, 11⟩, ⟨43, 17⟩, ⟨4, 5⟩, ⟨13, 6⟩, ⟨28, 10⟩, ⟨37, 11⟩, ⟨5, 5⟩, ⟨14, 6⟩, ⟨29, 10⟩, ⟨38, 11⟩, ⟨6, 5⟩, ⟨15, 6⟩, ⟨30, 10⟩, ⟨39, 11⟩]⟩
theorem profile0314_checked : profile0314.check := by decide +kernel

noncomputable def selection1_0314 : Selection :=
  ⟨1, -2, 4, (346/25), 1164, 16, 72⟩
theorem selection1_0314_checked : selection1_0314.check profile0314 := by decide +kernel

noncomputable def selection2_0314 : Selection :=
  ⟨2, -10, 8, (1327/100), 310, 28, 440⟩
theorem selection2_0314_checked : selection2_0314.check profile0314 := by decide +kernel

noncomputable def profile0315 : ProfileCell :=
  ⟨(12/107), (11/98),
    [5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨39, 12⟩, ⟨7, 6⟩, ⟨16, 7⟩, ⟨22, 10⟩, ⟨31, 11⟩, ⟨40, 12⟩, ⟨8, 6⟩, ⟨17, 7⟩, ⟨23, 10⟩, ⟨32, 11⟩, ⟨41, 12⟩, ⟨9, 6⟩, ⟨18, 7⟩, ⟨24, 10⟩, ⟨33, 11⟩, ⟨42, 12⟩, ⟨1, 5⟩, ⟨10, 6⟩, ⟨19, 7⟩, ⟨25, 10⟩, ⟨34, 11⟩, ⟨2, 5⟩, ⟨11, 6⟩, ⟨20, 7⟩, ⟨26, 10⟩, ⟨35, 11⟩, ⟨3, 5⟩, ⟨12, 6⟩, ⟨21, 7⟩, ⟨27, 10⟩, ⟨36, 11⟩, ⟨4, 5⟩, ⟨43, 17⟩, ⟨13, 6⟩, ⟨28, 10⟩, ⟨37, 11⟩, ⟨5, 5⟩, ⟨14, 6⟩, ⟨29, 10⟩, ⟨38, 11⟩, ⟨6, 5⟩, ⟨15, 6⟩, ⟨30, 10⟩]⟩
theorem profile0315_checked : profile0315.check := by decide +kernel

noncomputable def selection1_0315 : Selection :=
  ⟨1, -2, 4, (346/25), 107, 88, -570⟩
theorem selection1_0315_checked : selection1_0315.check profile0315 := by decide +kernel

noncomputable def selection2_0315 : Selection :=
  ⟨2, -10, 8, (1327/100), 29, 100, -202⟩
theorem selection2_0315_checked : selection2_0315.check profile0315 := by decide +kernel

noncomputable def profile0316 : ProfileCell :=
  ⟨(11/98), (7/62),
    [5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨30, 11⟩, ⟨39, 12⟩, ⟨7, 6⟩, ⟨16, 7⟩, ⟨22, 10⟩, ⟨31, 11⟩, ⟨40, 12⟩, ⟨8, 6⟩, ⟨17, 7⟩, ⟨23, 10⟩, ⟨32, 11⟩, ⟨41, 12⟩, ⟨9, 6⟩, ⟨18, 7⟩, ⟨24, 10⟩, ⟨33, 11⟩, ⟨42, 12⟩, ⟨1, 5⟩, ⟨10, 6⟩, ⟨19, 7⟩, ⟨25, 10⟩, ⟨34, 11⟩, ⟨2, 5⟩, ⟨11, 6⟩, ⟨20, 7⟩, ⟨26, 10⟩, ⟨35, 11⟩, ⟨3, 5⟩, ⟨12, 6⟩, ⟨21, 7⟩, ⟨27, 10⟩, ⟨36, 11⟩, ⟨4, 5⟩, ⟨13, 6⟩, ⟨43, 17⟩, ⟨28, 10⟩, ⟨37, 11⟩, ⟨5, 5⟩, ⟨14, 6⟩, ⟨29, 10⟩, ⟨38, 11⟩, ⟨6, 5⟩, ⟨15, 6⟩]⟩
theorem profile0316_checked : profile0316.check := by decide +kernel

noncomputable def selection1_0316 : Selection :=
  ⟨1, -2, 4, (1381/100), 735, 132, -962⟩
theorem selection1_0316_checked : selection1_0316.check profile0316 := by decide +kernel

noncomputable def selection2_0316 : Selection :=
  ⟨2, -10, 8, (1327/100), 196, 144, -594⟩
theorem selection2_0316_checked : selection2_0316.check profile0316 := by decide +kernel

noncomputable def profile0317 : ProfileCell :=
  ⟨(7/62), (6/53),
    [5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨15, 7⟩, ⟨30, 11⟩, ⟨39, 12⟩, ⟨7, 6⟩, ⟨16, 7⟩, ⟨22, 10⟩, ⟨31, 11⟩, ⟨40, 12⟩, ⟨8, 6⟩, ⟨17, 7⟩, ⟨23, 10⟩, ⟨32, 11⟩, ⟨41, 12⟩, ⟨9, 6⟩, ⟨18, 7⟩, ⟨24, 10⟩, ⟨33, 11⟩, ⟨1, 5⟩, ⟨42, 12⟩, ⟨10, 6⟩, ⟨19, 7⟩, ⟨25, 10⟩, ⟨34, 11⟩, ⟨2, 5⟩, ⟨11, 6⟩, ⟨20, 7⟩, ⟨26, 10⟩, ⟨35, 11⟩, ⟨3, 5⟩, ⟨12, 6⟩, ⟨21, 7⟩, ⟨27, 10⟩, ⟨36, 11⟩, ⟨4, 5⟩, ⟨13, 6⟩, ⟨28, 10⟩, ⟨43, 17⟩, ⟨37, 11⟩, ⟨5, 5⟩, ⟨14, 6⟩, ⟨29, 10⟩, ⟨38, 11⟩, ⟨6, 5⟩]⟩
theorem profile0317_checked : profile0317.check := by decide +kernel

noncomputable def selection1_0317 : Selection :=
  ⟨1, -1, 4, (1351/100), 332, 95, -674⟩
theorem selection1_0317_checked : selection1_0317.check profile0317 := by decide +kernel

noncomputable def selection2_0317 : Selection :=
  ⟨2, -9, 8, (1317/100), 90, 103, -306⟩
theorem selection2_0317_checked : selection2_0317.check profile0317 := by decide +kernel

noncomputable def profile0318 : ProfileCell :=
  ⟨(6/53), (11/97),
    [5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨6, 6⟩, ⟨38, 12⟩, ⟨15, 7⟩, ⟨30, 11⟩, ⟨7, 6⟩, ⟨39, 12⟩, ⟨16, 7⟩, ⟨22, 10⟩, ⟨31, 11⟩, ⟨8, 6⟩, ⟨40, 12⟩, ⟨17, 7⟩, ⟨23, 10⟩, ⟨32, 11⟩, ⟨9, 6⟩, ⟨41, 12⟩, ⟨18, 7⟩, ⟨24, 10⟩, ⟨1, 5⟩, ⟨33, 11⟩, ⟨10, 6⟩, ⟨42, 12⟩, ⟨19, 7⟩, ⟨25, 10⟩, ⟨2, 5⟩, ⟨34, 11⟩, ⟨11, 6⟩, ⟨20, 7⟩, ⟨26, 10⟩, ⟨3, 5⟩, ⟨35, 11⟩, ⟨12, 6⟩, ⟨21, 7⟩, ⟨27, 10⟩, ⟨4, 5⟩, ⟨36, 11⟩, ⟨13, 6⟩, ⟨28, 10⟩, ⟨5, 5⟩, ⟨37, 11⟩, ⟨43, 17⟩, ⟨14, 6⟩, ⟨29, 10⟩]⟩
theorem profile0318_checked : profile0318.check := by decide +kernel

noncomputable def selection1_0318 : Selection :=
  ⟨1, -1, 4, (671/50), 211, 107, -780⟩
theorem selection1_0318_checked : selection1_0318.check profile0318 := by decide +kernel

noncomputable def selection2_0318 : Selection :=
  ⟨2, -9, 8, (657/50), 58, 115, -412⟩
theorem selection2_0318_checked : selection2_0318.check profile0318 := by decide +kernel

noncomputable def profile0319 : ProfileCell :=
  ⟨(11/97), (5/44),
    [5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2], [5, 5, 5, 5, 5],
    [⟨29, 11⟩, ⟨6, 6⟩, ⟨38, 12⟩, ⟨15, 7⟩, ⟨30, 11⟩, ⟨7, 6⟩, ⟨39, 12⟩, ⟨16, 7⟩, ⟨22, 10⟩, ⟨31, 11⟩, ⟨8, 6⟩, ⟨40, 12⟩, ⟨17, 7⟩, ⟨23, 10⟩, ⟨32, 11⟩, ⟨9, 6⟩, ⟨41, 12⟩, ⟨18, 7⟩, ⟨24, 10⟩, ⟨1, 5⟩, ⟨33, 11⟩, ⟨10, 6⟩, ⟨42, 12⟩, ⟨19, 7⟩, ⟨25, 10⟩, ⟨2, 5⟩, ⟨34, 11⟩, ⟨11, 6⟩, ⟨20, 7⟩, ⟨26, 10⟩, ⟨3, 5⟩, ⟨35, 11⟩, ⟨12, 6⟩, ⟨21, 7⟩, ⟨27, 10⟩, ⟨4, 5⟩, ⟨36, 11⟩, ⟨13, 6⟩, ⟨28, 10⟩, ⟨5, 5⟩, ⟨37, 11⟩, ⟨14, 6⟩, ⟨43, 17⟩]⟩
theorem profile0319_checked : profile0319.check := by decide +kernel

noncomputable def selection1_0319 : Selection :=
  ⟨1, -1, 4, (267/20), 253, 173, -1362⟩
theorem selection1_0319_checked : selection1_0319.check profile0319 := by decide +kernel

noncomputable def selection2_0319 : Selection :=
  ⟨2, -9, 8, (328/25), 69, 181, -994⟩
theorem selection2_0319_checked : selection2_0319.check profile0319 := by decide +kernel

noncomputable def leaf1_0256 : Block :=
  Block.single profile0256 selection1_0256 profile0256_checked selection1_0256_checked
noncomputable def leaf1_0257 : Block :=
  Block.single profile0257 selection1_0257 profile0257_checked selection1_0257_checked
noncomputable def leaf1_0258 : Block :=
  Block.single profile0258 selection1_0258 profile0258_checked selection1_0258_checked
noncomputable def leaf1_0259 : Block :=
  Block.single profile0259 selection1_0259 profile0259_checked selection1_0259_checked
noncomputable def leaf1_0260 : Block :=
  Block.single profile0260 selection1_0260 profile0260_checked selection1_0260_checked
noncomputable def leaf1_0261 : Block :=
  Block.single profile0261 selection1_0261 profile0261_checked selection1_0261_checked
noncomputable def leaf1_0262 : Block :=
  Block.single profile0262 selection1_0262 profile0262_checked selection1_0262_checked
noncomputable def leaf1_0263 : Block :=
  Block.single profile0263 selection1_0263 profile0263_checked selection1_0263_checked
noncomputable def leaf1_0264 : Block :=
  Block.single profile0264 selection1_0264 profile0264_checked selection1_0264_checked
noncomputable def leaf1_0265 : Block :=
  Block.single profile0265 selection1_0265 profile0265_checked selection1_0265_checked
noncomputable def leaf1_0266 : Block :=
  Block.single profile0266 selection1_0266 profile0266_checked selection1_0266_checked
noncomputable def leaf1_0267 : Block :=
  Block.single profile0267 selection1_0267 profile0267_checked selection1_0267_checked
noncomputable def leaf1_0268 : Block :=
  Block.single profile0268 selection1_0268 profile0268_checked selection1_0268_checked
noncomputable def leaf1_0269 : Block :=
  Block.single profile0269 selection1_0269 profile0269_checked selection1_0269_checked
noncomputable def leaf1_0270 : Block :=
  Block.single profile0270 selection1_0270 profile0270_checked selection1_0270_checked
noncomputable def leaf1_0271 : Block :=
  Block.single profile0271 selection1_0271 profile0271_checked selection1_0271_checked
noncomputable def leaf1_0272 : Block :=
  Block.single profile0272 selection1_0272 profile0272_checked selection1_0272_checked
noncomputable def leaf1_0273 : Block :=
  Block.single profile0273 selection1_0273 profile0273_checked selection1_0273_checked
noncomputable def leaf1_0274 : Block :=
  Block.single profile0274 selection1_0274 profile0274_checked selection1_0274_checked
noncomputable def leaf1_0275 : Block :=
  Block.single profile0275 selection1_0275 profile0275_checked selection1_0275_checked
noncomputable def leaf1_0276 : Block :=
  Block.single profile0276 selection1_0276 profile0276_checked selection1_0276_checked
noncomputable def leaf1_0277 : Block :=
  Block.single profile0277 selection1_0277 profile0277_checked selection1_0277_checked
noncomputable def leaf1_0278 : Block :=
  Block.single profile0278 selection1_0278 profile0278_checked selection1_0278_checked
noncomputable def leaf1_0279 : Block :=
  Block.single profile0279 selection1_0279 profile0279_checked selection1_0279_checked
noncomputable def leaf1_0280 : Block :=
  Block.single profile0280 selection1_0280 profile0280_checked selection1_0280_checked
noncomputable def leaf1_0281 : Block :=
  Block.single profile0281 selection1_0281 profile0281_checked selection1_0281_checked
noncomputable def leaf1_0282 : Block :=
  Block.single profile0282 selection1_0282 profile0282_checked selection1_0282_checked
noncomputable def leaf1_0283 : Block :=
  Block.single profile0283 selection1_0283 profile0283_checked selection1_0283_checked
noncomputable def leaf1_0284 : Block :=
  Block.single profile0284 selection1_0284 profile0284_checked selection1_0284_checked
noncomputable def leaf1_0285 : Block :=
  Block.single profile0285 selection1_0285 profile0285_checked selection1_0285_checked
noncomputable def leaf1_0286 : Block :=
  Block.single profile0286 selection1_0286 profile0286_checked selection1_0286_checked
noncomputable def leaf1_0287 : Block :=
  Block.single profile0287 selection1_0287 profile0287_checked selection1_0287_checked
noncomputable def leaf1_0288 : Block :=
  Block.single profile0288 selection1_0288 profile0288_checked selection1_0288_checked
noncomputable def leaf1_0289 : Block :=
  Block.single profile0289 selection1_0289 profile0289_checked selection1_0289_checked
noncomputable def leaf1_0290 : Block :=
  Block.single profile0290 selection1_0290 profile0290_checked selection1_0290_checked
noncomputable def leaf1_0291 : Block :=
  Block.single profile0291 selection1_0291 profile0291_checked selection1_0291_checked
noncomputable def leaf1_0292 : Block :=
  Block.single profile0292 selection1_0292 profile0292_checked selection1_0292_checked
noncomputable def leaf1_0293 : Block :=
  Block.single profile0293 selection1_0293 profile0293_checked selection1_0293_checked
noncomputable def leaf1_0294 : Block :=
  Block.single profile0294 selection1_0294 profile0294_checked selection1_0294_checked
noncomputable def leaf1_0295 : Block :=
  Block.single profile0295 selection1_0295 profile0295_checked selection1_0295_checked
noncomputable def leaf1_0296 : Block :=
  Block.single profile0296 selection1_0296 profile0296_checked selection1_0296_checked
noncomputable def leaf1_0297 : Block :=
  Block.single profile0297 selection1_0297 profile0297_checked selection1_0297_checked
noncomputable def leaf1_0298 : Block :=
  Block.single profile0298 selection1_0298 profile0298_checked selection1_0298_checked
noncomputable def leaf1_0299 : Block :=
  Block.single profile0299 selection1_0299 profile0299_checked selection1_0299_checked
noncomputable def leaf1_0300 : Block :=
  Block.single profile0300 selection1_0300 profile0300_checked selection1_0300_checked
noncomputable def leaf1_0301 : Block :=
  Block.single profile0301 selection1_0301 profile0301_checked selection1_0301_checked
noncomputable def leaf1_0302 : Block :=
  Block.single profile0302 selection1_0302 profile0302_checked selection1_0302_checked
noncomputable def leaf1_0303 : Block :=
  Block.single profile0303 selection1_0303 profile0303_checked selection1_0303_checked
noncomputable def leaf1_0304 : Block :=
  Block.single profile0304 selection1_0304 profile0304_checked selection1_0304_checked
noncomputable def leaf1_0305 : Block :=
  Block.single profile0305 selection1_0305 profile0305_checked selection1_0305_checked
noncomputable def leaf1_0306 : Block :=
  Block.single profile0306 selection1_0306 profile0306_checked selection1_0306_checked
noncomputable def leaf1_0307 : Block :=
  Block.single profile0307 selection1_0307 profile0307_checked selection1_0307_checked
noncomputable def leaf1_0308 : Block :=
  Block.single profile0308 selection1_0308 profile0308_checked selection1_0308_checked
noncomputable def leaf1_0309 : Block :=
  Block.single profile0309 selection1_0309 profile0309_checked selection1_0309_checked
noncomputable def leaf1_0310 : Block :=
  Block.single profile0310 selection1_0310 profile0310_checked selection1_0310_checked
noncomputable def leaf1_0311 : Block :=
  Block.single profile0311 selection1_0311 profile0311_checked selection1_0311_checked
noncomputable def leaf1_0312 : Block :=
  Block.single profile0312 selection1_0312 profile0312_checked selection1_0312_checked
noncomputable def leaf1_0313 : Block :=
  Block.single profile0313 selection1_0313 profile0313_checked selection1_0313_checked
noncomputable def leaf1_0314 : Block :=
  Block.single profile0314 selection1_0314 profile0314_checked selection1_0314_checked
noncomputable def leaf1_0315 : Block :=
  Block.single profile0315 selection1_0315 profile0315_checked selection1_0315_checked
noncomputable def leaf1_0316 : Block :=
  Block.single profile0316 selection1_0316 profile0316_checked selection1_0316_checked
noncomputable def leaf1_0317 : Block :=
  Block.single profile0317 selection1_0317 profile0317_checked selection1_0317_checked
noncomputable def leaf1_0318 : Block :=
  Block.single profile0318 selection1_0318 profile0318_checked selection1_0318_checked
noncomputable def leaf1_0319 : Block :=
  Block.single profile0319 selection1_0319 profile0319_checked selection1_0319_checked
noncomputable def batch004p1_0_0000 : Block :=
  Block.append leaf1_0256 leaf1_0257 (by decide +kernel)
noncomputable def batch004p1_0_0001 : Block :=
  Block.append leaf1_0258 leaf1_0259 (by decide +kernel)
noncomputable def batch004p1_0_0002 : Block :=
  Block.append leaf1_0260 leaf1_0261 (by decide +kernel)
noncomputable def batch004p1_0_0003 : Block :=
  Block.append leaf1_0262 leaf1_0263 (by decide +kernel)
noncomputable def batch004p1_0_0004 : Block :=
  Block.append leaf1_0264 leaf1_0265 (by decide +kernel)
noncomputable def batch004p1_0_0005 : Block :=
  Block.append leaf1_0266 leaf1_0267 (by decide +kernel)
noncomputable def batch004p1_0_0006 : Block :=
  Block.append leaf1_0268 leaf1_0269 (by decide +kernel)
noncomputable def batch004p1_0_0007 : Block :=
  Block.append leaf1_0270 leaf1_0271 (by decide +kernel)
noncomputable def batch004p1_0_0008 : Block :=
  Block.append leaf1_0272 leaf1_0273 (by decide +kernel)
noncomputable def batch004p1_0_0009 : Block :=
  Block.append leaf1_0274 leaf1_0275 (by decide +kernel)
noncomputable def batch004p1_0_0010 : Block :=
  Block.append leaf1_0276 leaf1_0277 (by decide +kernel)
noncomputable def batch004p1_0_0011 : Block :=
  Block.append leaf1_0278 leaf1_0279 (by decide +kernel)
noncomputable def batch004p1_0_0012 : Block :=
  Block.append leaf1_0280 leaf1_0281 (by decide +kernel)
noncomputable def batch004p1_0_0013 : Block :=
  Block.append leaf1_0282 leaf1_0283 (by decide +kernel)
noncomputable def batch004p1_0_0014 : Block :=
  Block.append leaf1_0284 leaf1_0285 (by decide +kernel)
noncomputable def batch004p1_0_0015 : Block :=
  Block.append leaf1_0286 leaf1_0287 (by decide +kernel)
noncomputable def batch004p1_0_0016 : Block :=
  Block.append leaf1_0288 leaf1_0289 (by decide +kernel)
noncomputable def batch004p1_0_0017 : Block :=
  Block.append leaf1_0290 leaf1_0291 (by decide +kernel)
noncomputable def batch004p1_0_0018 : Block :=
  Block.append leaf1_0292 leaf1_0293 (by decide +kernel)
noncomputable def batch004p1_0_0019 : Block :=
  Block.append leaf1_0294 leaf1_0295 (by decide +kernel)
noncomputable def batch004p1_0_0020 : Block :=
  Block.append leaf1_0296 leaf1_0297 (by decide +kernel)
noncomputable def batch004p1_0_0021 : Block :=
  Block.append leaf1_0298 leaf1_0299 (by decide +kernel)
noncomputable def batch004p1_0_0022 : Block :=
  Block.append leaf1_0300 leaf1_0301 (by decide +kernel)
noncomputable def batch004p1_0_0023 : Block :=
  Block.append leaf1_0302 leaf1_0303 (by decide +kernel)
noncomputable def batch004p1_0_0024 : Block :=
  Block.append leaf1_0304 leaf1_0305 (by decide +kernel)
noncomputable def batch004p1_0_0025 : Block :=
  Block.append leaf1_0306 leaf1_0307 (by decide +kernel)
noncomputable def batch004p1_0_0026 : Block :=
  Block.append leaf1_0308 leaf1_0309 (by decide +kernel)
noncomputable def batch004p1_0_0027 : Block :=
  Block.append leaf1_0310 leaf1_0311 (by decide +kernel)
noncomputable def batch004p1_0_0028 : Block :=
  Block.append leaf1_0312 leaf1_0313 (by decide +kernel)
noncomputable def batch004p1_0_0029 : Block :=
  Block.append leaf1_0314 leaf1_0315 (by decide +kernel)
noncomputable def batch004p1_0_0030 : Block :=
  Block.append leaf1_0316 leaf1_0317 (by decide +kernel)
noncomputable def batch004p1_0_0031 : Block :=
  Block.append leaf1_0318 leaf1_0319 (by decide +kernel)
noncomputable def batch004p1_1_0000 : Block :=
  Block.append batch004p1_0_0000 batch004p1_0_0001 (by decide +kernel)
noncomputable def batch004p1_1_0001 : Block :=
  Block.append batch004p1_0_0002 batch004p1_0_0003 (by decide +kernel)
noncomputable def batch004p1_1_0002 : Block :=
  Block.append batch004p1_0_0004 batch004p1_0_0005 (by decide +kernel)
noncomputable def batch004p1_1_0003 : Block :=
  Block.append batch004p1_0_0006 batch004p1_0_0007 (by decide +kernel)
noncomputable def batch004p1_1_0004 : Block :=
  Block.append batch004p1_0_0008 batch004p1_0_0009 (by decide +kernel)
noncomputable def batch004p1_1_0005 : Block :=
  Block.append batch004p1_0_0010 batch004p1_0_0011 (by decide +kernel)
noncomputable def batch004p1_1_0006 : Block :=
  Block.append batch004p1_0_0012 batch004p1_0_0013 (by decide +kernel)
noncomputable def batch004p1_1_0007 : Block :=
  Block.append batch004p1_0_0014 batch004p1_0_0015 (by decide +kernel)
noncomputable def batch004p1_1_0008 : Block :=
  Block.append batch004p1_0_0016 batch004p1_0_0017 (by decide +kernel)
noncomputable def batch004p1_1_0009 : Block :=
  Block.append batch004p1_0_0018 batch004p1_0_0019 (by decide +kernel)
noncomputable def batch004p1_1_0010 : Block :=
  Block.append batch004p1_0_0020 batch004p1_0_0021 (by decide +kernel)
noncomputable def batch004p1_1_0011 : Block :=
  Block.append batch004p1_0_0022 batch004p1_0_0023 (by decide +kernel)
noncomputable def batch004p1_1_0012 : Block :=
  Block.append batch004p1_0_0024 batch004p1_0_0025 (by decide +kernel)
noncomputable def batch004p1_1_0013 : Block :=
  Block.append batch004p1_0_0026 batch004p1_0_0027 (by decide +kernel)
noncomputable def batch004p1_1_0014 : Block :=
  Block.append batch004p1_0_0028 batch004p1_0_0029 (by decide +kernel)
noncomputable def batch004p1_1_0015 : Block :=
  Block.append batch004p1_0_0030 batch004p1_0_0031 (by decide +kernel)
noncomputable def batch004p1_2_0000 : Block :=
  Block.append batch004p1_1_0000 batch004p1_1_0001 (by decide +kernel)
noncomputable def batch004p1_2_0001 : Block :=
  Block.append batch004p1_1_0002 batch004p1_1_0003 (by decide +kernel)
noncomputable def batch004p1_2_0002 : Block :=
  Block.append batch004p1_1_0004 batch004p1_1_0005 (by decide +kernel)
noncomputable def batch004p1_2_0003 : Block :=
  Block.append batch004p1_1_0006 batch004p1_1_0007 (by decide +kernel)
noncomputable def batch004p1_2_0004 : Block :=
  Block.append batch004p1_1_0008 batch004p1_1_0009 (by decide +kernel)
noncomputable def batch004p1_2_0005 : Block :=
  Block.append batch004p1_1_0010 batch004p1_1_0011 (by decide +kernel)
noncomputable def batch004p1_2_0006 : Block :=
  Block.append batch004p1_1_0012 batch004p1_1_0013 (by decide +kernel)
noncomputable def batch004p1_2_0007 : Block :=
  Block.append batch004p1_1_0014 batch004p1_1_0015 (by decide +kernel)
noncomputable def batch004p1_3_0000 : Block :=
  Block.append batch004p1_2_0000 batch004p1_2_0001 (by decide +kernel)
noncomputable def batch004p1_3_0001 : Block :=
  Block.append batch004p1_2_0002 batch004p1_2_0003 (by decide +kernel)
noncomputable def batch004p1_3_0002 : Block :=
  Block.append batch004p1_2_0004 batch004p1_2_0005 (by decide +kernel)
noncomputable def batch004p1_3_0003 : Block :=
  Block.append batch004p1_2_0006 batch004p1_2_0007 (by decide +kernel)
noncomputable def batch004p1_4_0000 : Block :=
  Block.append batch004p1_3_0000 batch004p1_3_0001 (by decide +kernel)
noncomputable def batch004p1_4_0001 : Block :=
  Block.append batch004p1_3_0002 batch004p1_3_0003 (by decide +kernel)
noncomputable def batch004p1_5_0000 : Block :=
  Block.append batch004p1_4_0000 batch004p1_4_0001 (by decide +kernel)
theorem batch004p1_5_0000_left : batch004p1_5_0000.left = (109/100) := by decide +kernel
theorem batch004p1_5_0000_right : batch004p1_5_0000.right = (49/44) := by decide +kernel
theorem batch004p1_5_0000_units : batch004p1_5_0000.units = 27676 := by decide +kernel
noncomputable def leaf2_0256 : Block :=
  Block.single profile0256 selection2_0256 profile0256_checked selection2_0256_checked
noncomputable def leaf2_0257 : Block :=
  Block.single profile0257 selection2_0257 profile0257_checked selection2_0257_checked
noncomputable def leaf2_0258 : Block :=
  Block.single profile0258 selection2_0258 profile0258_checked selection2_0258_checked
noncomputable def leaf2_0259 : Block :=
  Block.single profile0259 selection2_0259 profile0259_checked selection2_0259_checked
noncomputable def leaf2_0260 : Block :=
  Block.single profile0260 selection2_0260 profile0260_checked selection2_0260_checked
noncomputable def leaf2_0261 : Block :=
  Block.single profile0261 selection2_0261 profile0261_checked selection2_0261_checked
noncomputable def leaf2_0262 : Block :=
  Block.single profile0262 selection2_0262 profile0262_checked selection2_0262_checked
noncomputable def leaf2_0263 : Block :=
  Block.single profile0263 selection2_0263 profile0263_checked selection2_0263_checked
noncomputable def leaf2_0264 : Block :=
  Block.single profile0264 selection2_0264 profile0264_checked selection2_0264_checked
noncomputable def leaf2_0265 : Block :=
  Block.single profile0265 selection2_0265 profile0265_checked selection2_0265_checked
noncomputable def leaf2_0266 : Block :=
  Block.single profile0266 selection2_0266 profile0266_checked selection2_0266_checked
noncomputable def leaf2_0267 : Block :=
  Block.single profile0267 selection2_0267 profile0267_checked selection2_0267_checked
noncomputable def leaf2_0268 : Block :=
  Block.single profile0268 selection2_0268 profile0268_checked selection2_0268_checked
noncomputable def leaf2_0269 : Block :=
  Block.single profile0269 selection2_0269 profile0269_checked selection2_0269_checked
noncomputable def leaf2_0270 : Block :=
  Block.single profile0270 selection2_0270 profile0270_checked selection2_0270_checked
noncomputable def leaf2_0271 : Block :=
  Block.single profile0271 selection2_0271 profile0271_checked selection2_0271_checked
noncomputable def leaf2_0272 : Block :=
  Block.single profile0272 selection2_0272 profile0272_checked selection2_0272_checked
noncomputable def leaf2_0273 : Block :=
  Block.single profile0273 selection2_0273 profile0273_checked selection2_0273_checked
noncomputable def leaf2_0274 : Block :=
  Block.single profile0274 selection2_0274 profile0274_checked selection2_0274_checked
noncomputable def leaf2_0275 : Block :=
  Block.single profile0275 selection2_0275 profile0275_checked selection2_0275_checked
noncomputable def leaf2_0276 : Block :=
  Block.single profile0276 selection2_0276 profile0276_checked selection2_0276_checked
noncomputable def leaf2_0277 : Block :=
  Block.single profile0277 selection2_0277 profile0277_checked selection2_0277_checked
noncomputable def leaf2_0278 : Block :=
  Block.single profile0278 selection2_0278 profile0278_checked selection2_0278_checked
noncomputable def leaf2_0279 : Block :=
  Block.single profile0279 selection2_0279 profile0279_checked selection2_0279_checked
noncomputable def leaf2_0280 : Block :=
  Block.single profile0280 selection2_0280 profile0280_checked selection2_0280_checked
noncomputable def leaf2_0281 : Block :=
  Block.single profile0281 selection2_0281 profile0281_checked selection2_0281_checked
noncomputable def leaf2_0282 : Block :=
  Block.single profile0282 selection2_0282 profile0282_checked selection2_0282_checked
noncomputable def leaf2_0283 : Block :=
  Block.single profile0283 selection2_0283 profile0283_checked selection2_0283_checked
noncomputable def leaf2_0284 : Block :=
  Block.single profile0284 selection2_0284 profile0284_checked selection2_0284_checked
noncomputable def leaf2_0285 : Block :=
  Block.single profile0285 selection2_0285 profile0285_checked selection2_0285_checked
noncomputable def leaf2_0286 : Block :=
  Block.single profile0286 selection2_0286 profile0286_checked selection2_0286_checked
noncomputable def leaf2_0287 : Block :=
  Block.single profile0287 selection2_0287 profile0287_checked selection2_0287_checked
noncomputable def leaf2_0288 : Block :=
  Block.single profile0288 selection2_0288 profile0288_checked selection2_0288_checked
noncomputable def leaf2_0289 : Block :=
  Block.single profile0289 selection2_0289 profile0289_checked selection2_0289_checked
noncomputable def leaf2_0290 : Block :=
  Block.single profile0290 selection2_0290 profile0290_checked selection2_0290_checked
noncomputable def leaf2_0291 : Block :=
  Block.single profile0291 selection2_0291 profile0291_checked selection2_0291_checked
noncomputable def leaf2_0292 : Block :=
  Block.single profile0292 selection2_0292 profile0292_checked selection2_0292_checked
noncomputable def leaf2_0293 : Block :=
  Block.single profile0293 selection2_0293 profile0293_checked selection2_0293_checked
noncomputable def leaf2_0294 : Block :=
  Block.single profile0294 selection2_0294 profile0294_checked selection2_0294_checked
noncomputable def leaf2_0295 : Block :=
  Block.single profile0295 selection2_0295 profile0295_checked selection2_0295_checked
noncomputable def leaf2_0296 : Block :=
  Block.single profile0296 selection2_0296 profile0296_checked selection2_0296_checked
noncomputable def leaf2_0297 : Block :=
  Block.single profile0297 selection2_0297 profile0297_checked selection2_0297_checked
noncomputable def leaf2_0298 : Block :=
  Block.single profile0298 selection2_0298 profile0298_checked selection2_0298_checked
noncomputable def leaf2_0299 : Block :=
  Block.single profile0299 selection2_0299 profile0299_checked selection2_0299_checked
noncomputable def leaf2_0300 : Block :=
  Block.single profile0300 selection2_0300 profile0300_checked selection2_0300_checked
noncomputable def leaf2_0301 : Block :=
  Block.single profile0301 selection2_0301 profile0301_checked selection2_0301_checked
noncomputable def leaf2_0302 : Block :=
  Block.single profile0302 selection2_0302 profile0302_checked selection2_0302_checked
noncomputable def leaf2_0303 : Block :=
  Block.single profile0303 selection2_0303 profile0303_checked selection2_0303_checked
noncomputable def leaf2_0304 : Block :=
  Block.single profile0304 selection2_0304 profile0304_checked selection2_0304_checked
noncomputable def leaf2_0305 : Block :=
  Block.single profile0305 selection2_0305 profile0305_checked selection2_0305_checked
noncomputable def leaf2_0306 : Block :=
  Block.single profile0306 selection2_0306 profile0306_checked selection2_0306_checked
noncomputable def leaf2_0307 : Block :=
  Block.single profile0307 selection2_0307 profile0307_checked selection2_0307_checked
noncomputable def leaf2_0308 : Block :=
  Block.single profile0308 selection2_0308 profile0308_checked selection2_0308_checked
noncomputable def leaf2_0309 : Block :=
  Block.single profile0309 selection2_0309 profile0309_checked selection2_0309_checked
noncomputable def leaf2_0310 : Block :=
  Block.single profile0310 selection2_0310 profile0310_checked selection2_0310_checked
noncomputable def leaf2_0311 : Block :=
  Block.single profile0311 selection2_0311 profile0311_checked selection2_0311_checked
noncomputable def leaf2_0312 : Block :=
  Block.single profile0312 selection2_0312 profile0312_checked selection2_0312_checked
noncomputable def leaf2_0313 : Block :=
  Block.single profile0313 selection2_0313 profile0313_checked selection2_0313_checked
noncomputable def leaf2_0314 : Block :=
  Block.single profile0314 selection2_0314 profile0314_checked selection2_0314_checked
noncomputable def leaf2_0315 : Block :=
  Block.single profile0315 selection2_0315 profile0315_checked selection2_0315_checked
noncomputable def leaf2_0316 : Block :=
  Block.single profile0316 selection2_0316 profile0316_checked selection2_0316_checked
noncomputable def leaf2_0317 : Block :=
  Block.single profile0317 selection2_0317 profile0317_checked selection2_0317_checked
noncomputable def leaf2_0318 : Block :=
  Block.single profile0318 selection2_0318 profile0318_checked selection2_0318_checked
noncomputable def leaf2_0319 : Block :=
  Block.single profile0319 selection2_0319 profile0319_checked selection2_0319_checked
noncomputable def batch004p2_0_0000 : Block :=
  Block.append leaf2_0256 leaf2_0257 (by decide +kernel)
noncomputable def batch004p2_0_0001 : Block :=
  Block.append leaf2_0258 leaf2_0259 (by decide +kernel)
noncomputable def batch004p2_0_0002 : Block :=
  Block.append leaf2_0260 leaf2_0261 (by decide +kernel)
noncomputable def batch004p2_0_0003 : Block :=
  Block.append leaf2_0262 leaf2_0263 (by decide +kernel)
noncomputable def batch004p2_0_0004 : Block :=
  Block.append leaf2_0264 leaf2_0265 (by decide +kernel)
noncomputable def batch004p2_0_0005 : Block :=
  Block.append leaf2_0266 leaf2_0267 (by decide +kernel)
noncomputable def batch004p2_0_0006 : Block :=
  Block.append leaf2_0268 leaf2_0269 (by decide +kernel)
noncomputable def batch004p2_0_0007 : Block :=
  Block.append leaf2_0270 leaf2_0271 (by decide +kernel)
noncomputable def batch004p2_0_0008 : Block :=
  Block.append leaf2_0272 leaf2_0273 (by decide +kernel)
noncomputable def batch004p2_0_0009 : Block :=
  Block.append leaf2_0274 leaf2_0275 (by decide +kernel)
noncomputable def batch004p2_0_0010 : Block :=
  Block.append leaf2_0276 leaf2_0277 (by decide +kernel)
noncomputable def batch004p2_0_0011 : Block :=
  Block.append leaf2_0278 leaf2_0279 (by decide +kernel)
noncomputable def batch004p2_0_0012 : Block :=
  Block.append leaf2_0280 leaf2_0281 (by decide +kernel)
noncomputable def batch004p2_0_0013 : Block :=
  Block.append leaf2_0282 leaf2_0283 (by decide +kernel)
noncomputable def batch004p2_0_0014 : Block :=
  Block.append leaf2_0284 leaf2_0285 (by decide +kernel)
noncomputable def batch004p2_0_0015 : Block :=
  Block.append leaf2_0286 leaf2_0287 (by decide +kernel)
noncomputable def batch004p2_0_0016 : Block :=
  Block.append leaf2_0288 leaf2_0289 (by decide +kernel)
noncomputable def batch004p2_0_0017 : Block :=
  Block.append leaf2_0290 leaf2_0291 (by decide +kernel)
noncomputable def batch004p2_0_0018 : Block :=
  Block.append leaf2_0292 leaf2_0293 (by decide +kernel)
noncomputable def batch004p2_0_0019 : Block :=
  Block.append leaf2_0294 leaf2_0295 (by decide +kernel)
noncomputable def batch004p2_0_0020 : Block :=
  Block.append leaf2_0296 leaf2_0297 (by decide +kernel)
noncomputable def batch004p2_0_0021 : Block :=
  Block.append leaf2_0298 leaf2_0299 (by decide +kernel)
noncomputable def batch004p2_0_0022 : Block :=
  Block.append leaf2_0300 leaf2_0301 (by decide +kernel)
noncomputable def batch004p2_0_0023 : Block :=
  Block.append leaf2_0302 leaf2_0303 (by decide +kernel)
noncomputable def batch004p2_0_0024 : Block :=
  Block.append leaf2_0304 leaf2_0305 (by decide +kernel)
noncomputable def batch004p2_0_0025 : Block :=
  Block.append leaf2_0306 leaf2_0307 (by decide +kernel)
noncomputable def batch004p2_0_0026 : Block :=
  Block.append leaf2_0308 leaf2_0309 (by decide +kernel)
noncomputable def batch004p2_0_0027 : Block :=
  Block.append leaf2_0310 leaf2_0311 (by decide +kernel)
noncomputable def batch004p2_0_0028 : Block :=
  Block.append leaf2_0312 leaf2_0313 (by decide +kernel)
noncomputable def batch004p2_0_0029 : Block :=
  Block.append leaf2_0314 leaf2_0315 (by decide +kernel)
noncomputable def batch004p2_0_0030 : Block :=
  Block.append leaf2_0316 leaf2_0317 (by decide +kernel)
noncomputable def batch004p2_0_0031 : Block :=
  Block.append leaf2_0318 leaf2_0319 (by decide +kernel)
noncomputable def batch004p2_1_0000 : Block :=
  Block.append batch004p2_0_0000 batch004p2_0_0001 (by decide +kernel)
noncomputable def batch004p2_1_0001 : Block :=
  Block.append batch004p2_0_0002 batch004p2_0_0003 (by decide +kernel)
noncomputable def batch004p2_1_0002 : Block :=
  Block.append batch004p2_0_0004 batch004p2_0_0005 (by decide +kernel)
noncomputable def batch004p2_1_0003 : Block :=
  Block.append batch004p2_0_0006 batch004p2_0_0007 (by decide +kernel)
noncomputable def batch004p2_1_0004 : Block :=
  Block.append batch004p2_0_0008 batch004p2_0_0009 (by decide +kernel)
noncomputable def batch004p2_1_0005 : Block :=
  Block.append batch004p2_0_0010 batch004p2_0_0011 (by decide +kernel)
noncomputable def batch004p2_1_0006 : Block :=
  Block.append batch004p2_0_0012 batch004p2_0_0013 (by decide +kernel)
noncomputable def batch004p2_1_0007 : Block :=
  Block.append batch004p2_0_0014 batch004p2_0_0015 (by decide +kernel)
noncomputable def batch004p2_1_0008 : Block :=
  Block.append batch004p2_0_0016 batch004p2_0_0017 (by decide +kernel)
noncomputable def batch004p2_1_0009 : Block :=
  Block.append batch004p2_0_0018 batch004p2_0_0019 (by decide +kernel)
noncomputable def batch004p2_1_0010 : Block :=
  Block.append batch004p2_0_0020 batch004p2_0_0021 (by decide +kernel)
noncomputable def batch004p2_1_0011 : Block :=
  Block.append batch004p2_0_0022 batch004p2_0_0023 (by decide +kernel)
noncomputable def batch004p2_1_0012 : Block :=
  Block.append batch004p2_0_0024 batch004p2_0_0025 (by decide +kernel)
noncomputable def batch004p2_1_0013 : Block :=
  Block.append batch004p2_0_0026 batch004p2_0_0027 (by decide +kernel)
noncomputable def batch004p2_1_0014 : Block :=
  Block.append batch004p2_0_0028 batch004p2_0_0029 (by decide +kernel)
noncomputable def batch004p2_1_0015 : Block :=
  Block.append batch004p2_0_0030 batch004p2_0_0031 (by decide +kernel)
noncomputable def batch004p2_2_0000 : Block :=
  Block.append batch004p2_1_0000 batch004p2_1_0001 (by decide +kernel)
noncomputable def batch004p2_2_0001 : Block :=
  Block.append batch004p2_1_0002 batch004p2_1_0003 (by decide +kernel)
noncomputable def batch004p2_2_0002 : Block :=
  Block.append batch004p2_1_0004 batch004p2_1_0005 (by decide +kernel)
noncomputable def batch004p2_2_0003 : Block :=
  Block.append batch004p2_1_0006 batch004p2_1_0007 (by decide +kernel)
noncomputable def batch004p2_2_0004 : Block :=
  Block.append batch004p2_1_0008 batch004p2_1_0009 (by decide +kernel)
noncomputable def batch004p2_2_0005 : Block :=
  Block.append batch004p2_1_0010 batch004p2_1_0011 (by decide +kernel)
noncomputable def batch004p2_2_0006 : Block :=
  Block.append batch004p2_1_0012 batch004p2_1_0013 (by decide +kernel)
noncomputable def batch004p2_2_0007 : Block :=
  Block.append batch004p2_1_0014 batch004p2_1_0015 (by decide +kernel)
noncomputable def batch004p2_3_0000 : Block :=
  Block.append batch004p2_2_0000 batch004p2_2_0001 (by decide +kernel)
noncomputable def batch004p2_3_0001 : Block :=
  Block.append batch004p2_2_0002 batch004p2_2_0003 (by decide +kernel)
noncomputable def batch004p2_3_0002 : Block :=
  Block.append batch004p2_2_0004 batch004p2_2_0005 (by decide +kernel)
noncomputable def batch004p2_3_0003 : Block :=
  Block.append batch004p2_2_0006 batch004p2_2_0007 (by decide +kernel)
noncomputable def batch004p2_4_0000 : Block :=
  Block.append batch004p2_3_0000 batch004p2_3_0001 (by decide +kernel)
noncomputable def batch004p2_4_0001 : Block :=
  Block.append batch004p2_3_0002 batch004p2_3_0003 (by decide +kernel)
noncomputable def batch004p2_5_0000 : Block :=
  Block.append batch004p2_4_0000 batch004p2_4_0001 (by decide +kernel)
theorem batch004p2_5_0000_left : batch004p2_5_0000.left = (209/100) := by decide +kernel
theorem batch004p2_5_0000_right : batch004p2_5_0000.right = (93/44) := by decide +kernel
theorem batch004p2_5_0000_units : batch004p2_5_0000.units = 7457 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
