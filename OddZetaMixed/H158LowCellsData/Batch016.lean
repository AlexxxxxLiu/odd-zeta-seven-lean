import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile1024 : ProfileCell :=
  ⟨(9/25), (22/61),
    [18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 10, 9, 8, 7], [17, 17, 18, 18, 18],
    [⟨3, 18⟩, ⟨32, 36⟩, ⟨17, 23⟩, ⟨6, 19⟩, ⟨35, 37⟩, ⟨20, 24⟩, ⟨24, 33⟩, ⟨9, 20⟩, ⟨38, 38⟩, ⟨27, 34⟩, ⟨12, 21⟩, ⟨41, 39⟩, ⟨1, 17⟩, ⟨30, 35⟩, ⟨15, 22⟩, ⟨4, 18⟩, ⟨33, 36⟩, ⟨18, 23⟩, ⟨22, 32⟩, ⟨7, 19⟩, ⟨36, 37⟩, ⟨21, 24⟩, ⟨25, 33⟩, ⟨10, 20⟩, ⟨39, 38⟩, ⟨28, 34⟩, ⟨13, 21⟩, ⟨42, 39⟩, ⟨2, 17⟩, ⟨31, 35⟩, ⟨16, 22⟩, ⟨5, 18⟩, ⟨34, 36⟩, ⟨19, 23⟩, ⟨23, 32⟩, ⟨8, 19⟩, ⟨37, 37⟩, ⟨26, 33⟩, ⟨11, 20⟩, ⟨40, 38⟩, ⟨43, 56⟩, ⟨29, 34⟩, ⟨14, 21⟩]⟩
theorem profile1024_checked : profile1024.check := by decide +kernel

noncomputable def selection0_1024 : Selection :=
  ⟨0, 6, 1, (853/50), 8617, 123, -334⟩
theorem selection0_1024_checked : selection0_1024.check profile1024 := by decide +kernel

noncomputable def selection1_1024 : Selection :=
  ⟨1, -2, 5, (1647/100), 584, 19, 34⟩
theorem selection1_1024_checked : selection1_1024.check profile1024 := by decide +kernel

noncomputable def selection2_1024 : Selection :=
  ⟨2, -10, 9, (1643/100), 194, -53, 402⟩
theorem selection2_1024_checked : selection2_1024.check profile1024 := by decide +kernel

noncomputable def profile1025 : ProfileCell :=
  ⟨(22/61), (57/158),
    [18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 10, 9, 8, 7], [17, 17, 18, 18, 18],
    [⟨14, 22⟩, ⟨3, 18⟩, ⟨32, 36⟩, ⟨17, 23⟩, ⟨6, 19⟩, ⟨35, 37⟩, ⟨20, 24⟩, ⟨24, 33⟩, ⟨9, 20⟩, ⟨38, 38⟩, ⟨27, 34⟩, ⟨12, 21⟩, ⟨1, 17⟩, ⟨41, 39⟩, ⟨30, 35⟩, ⟨15, 22⟩, ⟨4, 18⟩, ⟨33, 36⟩, ⟨18, 23⟩, ⟨22, 32⟩, ⟨7, 19⟩, ⟨36, 37⟩, ⟨21, 24⟩, ⟨25, 33⟩, ⟨10, 20⟩, ⟨39, 38⟩, ⟨28, 34⟩, ⟨13, 21⟩, ⟨2, 17⟩, ⟨42, 39⟩, ⟨31, 35⟩, ⟨16, 22⟩, ⟨5, 18⟩, ⟨34, 36⟩, ⟨19, 23⟩, ⟨23, 32⟩, ⟨8, 19⟩, ⟨37, 37⟩, ⟨26, 33⟩, ⟨11, 20⟩, ⟨40, 38⟩, ⟨29, 34⟩, ⟨43, 56⟩]⟩
theorem profile1025_checked : profile1025.check := by decide +kernel

noncomputable def selection0_1025 : Selection :=
  ⟨0, 6, 1, (419/25), 1337, -9, 32⟩
theorem selection0_1025_checked : selection0_1025.check profile1025 := by decide +kernel

noncomputable def selection1_1025 : Selection :=
  ⟨1, -2, 5, (412/25), 93, -113, 400⟩
theorem selection1_1025_checked : selection1_1025.check profile1025 := by decide +kernel

noncomputable def selection2_1025 : Selection :=
  ⟨2, -10, 9, (411/25), 31, -185, 768⟩
theorem selection2_1025_checked : selection2_1025.check profile1025 := by decide +kernel

noncomputable def profile1026 : ProfileCell :=
  ⟨(57/158), (35/97),
    [18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 10, 9, 8, 7], [17, 17, 18, 18, 18],
    [⟨43, 57⟩, ⟨14, 22⟩, ⟨3, 18⟩, ⟨32, 36⟩, ⟨17, 23⟩, ⟨6, 19⟩, ⟨35, 37⟩, ⟨20, 24⟩, ⟨24, 33⟩, ⟨9, 20⟩, ⟨38, 38⟩, ⟨27, 34⟩, ⟨12, 21⟩, ⟨1, 17⟩, ⟨41, 39⟩, ⟨30, 35⟩, ⟨15, 22⟩, ⟨4, 18⟩, ⟨33, 36⟩, ⟨18, 23⟩, ⟨22, 32⟩, ⟨7, 19⟩, ⟨36, 37⟩, ⟨21, 24⟩, ⟨25, 33⟩, ⟨10, 20⟩, ⟨39, 38⟩, ⟨28, 34⟩, ⟨13, 21⟩, ⟨2, 17⟩, ⟨42, 39⟩, ⟨31, 35⟩, ⟨16, 22⟩, ⟨5, 18⟩, ⟨34, 36⟩, ⟨19, 23⟩, ⟨23, 32⟩, ⟨8, 19⟩, ⟨37, 37⟩, ⟨26, 33⟩, ⟨11, 20⟩, ⟨40, 38⟩, ⟨29, 34⟩]⟩
theorem profile1026_checked : profile1026.check := by decide +kernel

noncomputable def selection0_1026 : Selection :=
  ⟨0, 6, 1, (1689/100), 847, -522, 1454⟩
theorem selection0_1026_checked : selection0_1026.check profile1026 := by decide +kernel

noncomputable def selection1_1026 : Selection :=
  ⟨1, -2, 5, (827/50), 59, -854, 2454⟩
theorem selection1_1026_checked : selection1_1026.check profile1026 := by decide +kernel

noncomputable def selection2_1026 : Selection :=
  ⟨2, -10, 9, (412/25), 20, -926, 2822⟩
theorem selection2_1026_checked : selection2_1026.check profile1026 := by decide +kernel

noncomputable def profile1027 : ProfileCell :=
  ⟨(35/97), (13/36),
    [18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 10, 9, 8, 7], [17, 17, 18, 18, 18],
    [⟨29, 35⟩, ⟨14, 22⟩, ⟨43, 57⟩, ⟨3, 18⟩, ⟨32, 36⟩, ⟨17, 23⟩, ⟨6, 19⟩, ⟨35, 37⟩, ⟨20, 24⟩, ⟨24, 33⟩, ⟨9, 20⟩, ⟨38, 38⟩, ⟨27, 34⟩, ⟨12, 21⟩, ⟨1, 17⟩, ⟨41, 39⟩, ⟨30, 35⟩, ⟨15, 22⟩, ⟨4, 18⟩, ⟨33, 36⟩, ⟨18, 23⟩, ⟨22, 32⟩, ⟨7, 19⟩, ⟨36, 37⟩, ⟨21, 24⟩, ⟨25, 33⟩, ⟨10, 20⟩, ⟨39, 38⟩, ⟨28, 34⟩, ⟨13, 21⟩, ⟨2, 17⟩, ⟨42, 39⟩, ⟨31, 35⟩, ⟨16, 22⟩, ⟨5, 18⟩, ⟨34, 36⟩, ⟨19, 23⟩, ⟨23, 32⟩, ⟨8, 19⟩, ⟨37, 37⟩, ⟨26, 33⟩, ⟨11, 20⟩, ⟨40, 38⟩]⟩
theorem profile1027_checked : profile1027.check := by decide +kernel

noncomputable def selection0_1027 : Selection :=
  ⟨0, 6, 1, (1739/100), 3822, -452, 1260⟩
theorem selection0_1027_checked : selection0_1027.check profile1027 := by decide +kernel

noncomputable def selection1_1027 : Selection :=
  ⟨1, -2, 5, (837/50), 259, -644, 1872⟩
theorem selection1_1027_checked : selection1_1027.check profile1027 := by decide +kernel

noncomputable def selection2_1027 : Selection :=
  ⟨2, -10, 9, (831/50), 86, -716, 2240⟩
theorem selection2_1027_checked : selection2_1027.check profile1027 := by decide +kernel

noncomputable def profile1028 : ProfileCell :=
  ⟨(13/36), (17/47),
    [18, 18, 17, 16, 15, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 7], [17, 17, 18, 18, 18],
    [⟨40, 39⟩, ⟨14, 22⟩, ⟨29, 35⟩, ⟨3, 18⟩, ⟨43, 57⟩, ⟨17, 23⟩, ⟨32, 36⟩, ⟨6, 19⟩, ⟨20, 24⟩, ⟨35, 37⟩, ⟨9, 20⟩, ⟨24, 33⟩, ⟨38, 38⟩, ⟨12, 21⟩, ⟨27, 34⟩, ⟨1, 17⟩, ⟨41, 39⟩, ⟨15, 22⟩, ⟨30, 35⟩, ⟨4, 18⟩, ⟨18, 23⟩, ⟨33, 36⟩, ⟨7, 19⟩, ⟨22, 32⟩, ⟨21, 24⟩, ⟨36, 37⟩, ⟨10, 20⟩, ⟨25, 33⟩, ⟨39, 38⟩, ⟨13, 21⟩, ⟨28, 34⟩, ⟨2, 17⟩, ⟨42, 39⟩, ⟨16, 22⟩, ⟨31, 35⟩, ⟨5, 18⟩, ⟨19, 23⟩, ⟨34, 36⟩, ⟨8, 19⟩, ⟨23, 32⟩, ⟨37, 37⟩, ⟨11, 20⟩, ⟨26, 33⟩]⟩
theorem profile1028_checked : profile1028.check := by decide +kernel

noncomputable def selection0_1028 : Selection :=
  ⟨0, 6, 1, (803/50), 7267, -330, 918⟩
theorem selection0_1028_checked : selection0_1028.check profile1028 := by decide +kernel

noncomputable def selection1_1028 : Selection :=
  ⟨1, -2, 5, (1507/100), 481, -484, 1414⟩
theorem selection1_1028_checked : selection1_1028.check profile1028 := by decide +kernel

noncomputable def selection2_1028 : Selection :=
  ⟨2, -10, 9, (297/20), 158, -560, 1782⟩
theorem selection2_1028_checked : selection2_1028.check profile1028 := by decide +kernel

noncomputable def profile1029 : ProfileCell :=
  ⟨(17/47), (38/105),
    [18, 18, 17, 16, 15, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 7], [17, 17, 18, 18, 18],
    [⟨26, 34⟩, ⟨14, 22⟩, ⟨40, 39⟩, ⟨3, 18⟩, ⟨29, 35⟩, ⟨17, 23⟩, ⟨43, 57⟩, ⟨6, 19⟩, ⟨32, 36⟩, ⟨20, 24⟩, ⟨9, 20⟩, ⟨35, 37⟩, ⟨24, 33⟩, ⟨12, 21⟩, ⟨38, 38⟩, ⟨1, 17⟩, ⟨27, 34⟩, ⟨15, 22⟩, ⟨41, 39⟩, ⟨4, 18⟩, ⟨30, 35⟩, ⟨18, 23⟩, ⟨7, 19⟩, ⟨33, 36⟩, ⟨22, 32⟩, ⟨21, 24⟩, ⟨10, 20⟩, ⟨36, 37⟩, ⟨25, 33⟩, ⟨13, 21⟩, ⟨39, 38⟩, ⟨2, 17⟩, ⟨28, 34⟩, ⟨16, 22⟩, ⟨42, 39⟩, ⟨5, 18⟩, ⟨31, 35⟩, ⟨19, 23⟩, ⟨8, 19⟩, ⟨34, 36⟩, ⟨23, 32⟩, ⟨11, 20⟩, ⟨37, 37⟩]⟩
theorem profile1029_checked : profile1029.check := by decide +kernel

noncomputable def selection0_1029 : Selection :=
  ⟨0, 6, 1, (82/5), 2539, -432, 1200⟩
theorem selection0_1029_checked : selection0_1029.check profile1029 := by decide +kernel

noncomputable def selection1_1029 : Selection :=
  ⟨1, -2, 5, (1519/100), 166, -552, 1602⟩
theorem selection1_1029_checked : selection1_1029.check profile1029 := by decide +kernel

noncomputable def selection2_1029 : Selection :=
  ⟨2, -10, 9, (747/50), 55, -628, 1970⟩
theorem selection2_1029_checked : selection2_1029.check profile1029 := by decide +kernel

noncomputable def profile1030 : ProfileCell :=
  ⟨(38/105), (21/58),
    [18, 18, 17, 16, 15, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 7], [17, 17, 18, 18, 18],
    [⟨37, 38⟩, ⟨26, 34⟩, ⟨14, 22⟩, ⟨40, 39⟩, ⟨3, 18⟩, ⟨29, 35⟩, ⟨17, 23⟩, ⟨6, 19⟩, ⟨43, 57⟩, ⟨32, 36⟩, ⟨20, 24⟩, ⟨9, 20⟩, ⟨35, 37⟩, ⟨24, 33⟩, ⟨12, 21⟩, ⟨38, 38⟩, ⟨1, 17⟩, ⟨27, 34⟩, ⟨15, 22⟩, ⟨41, 39⟩, ⟨4, 18⟩, ⟨30, 35⟩, ⟨18, 23⟩, ⟨7, 19⟩, ⟨33, 36⟩, ⟨22, 32⟩, ⟨21, 24⟩, ⟨10, 20⟩, ⟨36, 37⟩, ⟨25, 33⟩, ⟨13, 21⟩, ⟨39, 38⟩, ⟨2, 17⟩, ⟨28, 34⟩, ⟨16, 22⟩, ⟨42, 39⟩, ⟨5, 18⟩, ⟨31, 35⟩, ⟨19, 23⟩, ⟨8, 19⟩, ⟨34, 36⟩, ⟨23, 32⟩, ⟨11, 20⟩]⟩
theorem profile1030_checked : profile1030.check := by decide +kernel

noncomputable def selection0_1030 : Selection :=
  ⟨0, 6, 1, (829/50), 2078, -280, 780⟩
theorem selection0_1030_checked : selection0_1030.check profile1030 := by decide +kernel

noncomputable def selection1_1030 : Selection :=
  ⟨1, -2, 5, (61/4), 135, -324, 972⟩
theorem selection1_1030_checked : selection1_1030.check profile1030 := by decide +kernel

noncomputable def selection2_1030 : Selection :=
  ⟨2, -10, 9, (749/50), 45, -400, 1340⟩
theorem selection2_1030_checked : selection2_1030.check profile1030 := by decide +kernel

noncomputable def profile1031 : ProfileCell :=
  ⟨(21/58), (33/91),
    [18, 18, 17, 16, 15, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 7], [17, 17, 18, 18, 18],
    [⟨11, 21⟩, ⟨37, 38⟩, ⟨26, 34⟩, ⟨14, 22⟩, ⟨3, 18⟩, ⟨40, 39⟩, ⟨29, 35⟩, ⟨17, 23⟩, ⟨6, 19⟩, ⟨32, 36⟩, ⟨43, 57⟩, ⟨20, 24⟩, ⟨9, 20⟩, ⟨35, 37⟩, ⟨24, 33⟩, ⟨12, 21⟩, ⟨1, 17⟩, ⟨38, 38⟩, ⟨27, 34⟩, ⟨15, 22⟩, ⟨4, 18⟩, ⟨41, 39⟩, ⟨30, 35⟩, ⟨18, 23⟩, ⟨7, 19⟩, ⟨33, 36⟩, ⟨22, 32⟩, ⟨21, 24⟩, ⟨10, 20⟩, ⟨36, 37⟩, ⟨25, 33⟩, ⟨13, 21⟩, ⟨2, 17⟩, ⟨39, 38⟩, ⟨28, 34⟩, ⟨16, 22⟩, ⟨5, 18⟩, ⟨42, 39⟩, ⟨31, 35⟩, ⟨19, 23⟩, ⟨8, 19⟩, ⟨34, 36⟩, ⟨23, 32⟩]⟩
theorem profile1031_checked : profile1031.check := by decide +kernel

noncomputable def selection0_1031 : Selection :=
  ⟨0, 6, 1, (1737/100), 7520, -364, 1012⟩
theorem selection0_1031_checked : selection0_1031.check profile1031 := by decide +kernel

noncomputable def selection1_1031 : Selection :=
  ⟨1, -2, 5, (388/25), 476, -450, 1320⟩
theorem selection1_1031_checked : selection1_1031.check profile1031 := by decide +kernel

noncomputable def selection2_1031 : Selection :=
  ⟨2, -10, 9, (1519/100), 155, -526, 1688⟩
theorem selection2_1031_checked : selection2_1031.check profile1031 := by decide +kernel

noncomputable def profile1032 : ProfileCell :=
  ⟨(33/91), (37/102),
    [18, 18, 17, 16, 15, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 7], [17, 17, 18, 18, 18],
    [⟨23, 33⟩, ⟨11, 21⟩, ⟨37, 38⟩, ⟨26, 34⟩, ⟨14, 22⟩, ⟨3, 18⟩, ⟨40, 39⟩, ⟨29, 35⟩, ⟨17, 23⟩, ⟨6, 19⟩, ⟨32, 36⟩, ⟨20, 24⟩, ⟨43, 57⟩, ⟨9, 20⟩, ⟨35, 37⟩, ⟨24, 33⟩, ⟨12, 21⟩, ⟨1, 17⟩, ⟨38, 38⟩, ⟨27, 34⟩, ⟨15, 22⟩, ⟨4, 18⟩, ⟨41, 39⟩, ⟨30, 35⟩, ⟨18, 23⟩, ⟨7, 19⟩, ⟨33, 36⟩, ⟨22, 32⟩, ⟨21, 24⟩, ⟨10, 20⟩, ⟨36, 37⟩, ⟨25, 33⟩, ⟨13, 21⟩, ⟨2, 17⟩, ⟨39, 38⟩, ⟨28, 34⟩, ⟨16, 22⟩, ⟨5, 18⟩, ⟨42, 39⟩, ⟨31, 35⟩, ⟨19, 23⟩, ⟨8, 19⟩, ⟨34, 36⟩]⟩
theorem profile1032_checked : profile1032.check := by decide +kernel

noncomputable def selection0_1032 : Selection :=
  ⟨0, 6, 1, (873/50), 1430, -232, 648⟩
theorem selection0_1032_checked : selection0_1032.check profile1032 := by decide +kernel

noncomputable def selection1_1032 : Selection :=
  ⟨1, -2, 5, (311/20), 91, -252, 774⟩
theorem selection1_1032_checked : selection1_1032.check profile1032 := by decide +kernel

noncomputable def selection2_1032 : Selection :=
  ⟨2, -10, 9, (1521/100), 30, -328, 1142⟩
theorem selection2_1032_checked : selection2_1032.check profile1032 := by decide +kernel

noncomputable def profile1033 : ProfileCell :=
  ⟨(37/102), (4/11),
    [18, 18, 17, 16, 15, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 7], [17, 17, 18, 18, 18],
    [⟨34, 37⟩, ⟨23, 33⟩, ⟨11, 21⟩, ⟨37, 38⟩, ⟨26, 34⟩, ⟨14, 22⟩, ⟨3, 18⟩, ⟨40, 39⟩, ⟨29, 35⟩, ⟨17, 23⟩, ⟨6, 19⟩, ⟨32, 36⟩, ⟨20, 24⟩, ⟨9, 20⟩, ⟨43, 57⟩, ⟨35, 37⟩, ⟨24, 33⟩, ⟨12, 21⟩, ⟨1, 17⟩, ⟨38, 38⟩, ⟨27, 34⟩, ⟨15, 22⟩, ⟨4, 18⟩, ⟨41, 39⟩, ⟨30, 35⟩, ⟨18, 23⟩, ⟨7, 19⟩, ⟨33, 36⟩, ⟨22, 32⟩, ⟨21, 24⟩, ⟨10, 20⟩, ⟨36, 37⟩, ⟨25, 33⟩, ⟨13, 21⟩, ⟨2, 17⟩, ⟨39, 38⟩, ⟨28, 34⟩, ⟨16, 22⟩, ⟨5, 18⟩, ⟨42, 39⟩, ⟨31, 35⟩, ⟨19, 23⟩, ⟨8, 19⟩]⟩
theorem profile1033_checked : profile1033.check := by decide +kernel

noncomputable def selection0_1033 : Selection :=
  ⟨0, 6, 1, (71/4), 11994, -84, 240⟩
theorem selection0_1033_checked : selection0_1033.check profile1033 := by decide +kernel

noncomputable def selection1_1033 : Selection :=
  ⟨1, -2, 5, (1567/100), 752, -104, 366⟩
theorem selection1_1033_checked : selection1_1033.check profile1033 := by decide +kernel

noncomputable def selection2_1033 : Selection :=
  ⟨2, -10, 9, (307/20), 245, -180, 734⟩
theorem selection2_1033_checked : selection2_1033.check profile1033 := by decide +kernel

noncomputable def profile1034 : ProfileCell :=
  ⟨(4/11), (39/107),
    [18, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 8], [17, 17, 18, 18, 18],
    [⟨8, 20⟩, ⟨19, 24⟩, ⟨31, 36⟩, ⟨42, 40⟩, ⟨11, 21⟩, ⟨23, 33⟩, ⟨34, 37⟩, ⟨3, 18⟩, ⟨14, 22⟩, ⟨26, 34⟩, ⟨37, 38⟩, ⟨6, 19⟩, ⟨17, 23⟩, ⟨29, 35⟩, ⟨40, 39⟩, ⟨9, 20⟩, ⟨20, 24⟩, ⟨32, 36⟩, ⟨1, 17⟩, ⟨12, 21⟩, ⟨24, 33⟩, ⟨35, 37⟩, ⟨43, 57⟩, ⟨4, 18⟩, ⟨15, 22⟩, ⟨27, 34⟩, ⟨38, 38⟩, ⟨7, 19⟩, ⟨18, 23⟩, ⟨30, 35⟩, ⟨41, 39⟩, ⟨10, 20⟩, ⟨21, 24⟩, ⟨22, 32⟩, ⟨33, 36⟩, ⟨2, 17⟩, ⟨13, 21⟩, ⟨25, 33⟩, ⟨36, 37⟩, ⟨5, 18⟩, ⟨16, 22⟩, ⟨28, 34⟩, ⟨39, 38⟩]⟩
theorem profile1034_checked : profile1034.check := by decide +kernel

noncomputable def selection0_1034 : Selection :=
  ⟨0, 4, 1, (709/50), 9090, -132, 372⟩
theorem selection0_1034_checked : selection0_1034.check profile1034 := by decide +kernel

noncomputable def selection1_1034 : Selection :=
  ⟨1, -4, 5, (119/10), 544, -240, 740⟩
theorem selection1_1034_checked : selection1_1034.check profile1034 := by decide +kernel

noncomputable def selection2_1034 : Selection :=
  ⟨2, -12, 9, (231/20), 176, -316, 1108⟩
theorem selection2_1034_checked : selection2_1034.check profile1034 := by decide +kernel

noncomputable def profile1035 : ProfileCell :=
  ⟨(39/107), (35/96),
    [18, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 8], [17, 17, 18, 18, 18],
    [⟨39, 39⟩, ⟨8, 20⟩, ⟨19, 24⟩, ⟨31, 36⟩, ⟨42, 40⟩, ⟨11, 21⟩, ⟨23, 33⟩, ⟨34, 37⟩, ⟨3, 18⟩, ⟨14, 22⟩, ⟨26, 34⟩, ⟨37, 38⟩, ⟨6, 19⟩, ⟨17, 23⟩, ⟨29, 35⟩, ⟨40, 39⟩, ⟨9, 20⟩, ⟨20, 24⟩, ⟨32, 36⟩, ⟨1, 17⟩, ⟨12, 21⟩, ⟨24, 33⟩, ⟨35, 37⟩, ⟨4, 18⟩, ⟨43, 57⟩, ⟨15, 22⟩, ⟨27, 34⟩, ⟨38, 38⟩, ⟨7, 19⟩, ⟨18, 23⟩, ⟨30, 35⟩, ⟨41, 39⟩, ⟨10, 20⟩, ⟨21, 24⟩, ⟨22, 32⟩, ⟨33, 36⟩, ⟨2, 17⟩, ⟨13, 21⟩, ⟨25, 33⟩, ⟨36, 37⟩, ⟨5, 18⟩, ⟨16, 22⟩, ⟨28, 34⟩]⟩
theorem profile1035_checked : profile1035.check := by decide +kernel

noncomputable def selection0_1035 : Selection :=
  ⟨0, 4, 1, (709/50), 1039, 102, -270⟩
theorem selection0_1035_checked : selection0_1035.check profile1035 := by decide +kernel

noncomputable def selection1_1035 : Selection :=
  ⟨1, -4, 5, (1191/100), 63, -6, 98⟩
theorem selection1_1035_checked : selection1_1035.check profile1035 := by decide +kernel

noncomputable def selection2_1035 : Selection :=
  ⟨2, -12, 9, (289/25), 21, -82, 466⟩
theorem selection2_1035_checked : selection2_1035.check profile1035 := by decide +kernel

noncomputable def profile1036 : ProfileCell :=
  ⟨(35/96), (23/63),
    [18, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 8], [17, 17, 18, 18, 18],
    [⟨28, 35⟩, ⟨39, 39⟩, ⟨8, 20⟩, ⟨19, 24⟩, ⟨31, 36⟩, ⟨42, 40⟩, ⟨11, 21⟩, ⟨23, 33⟩, ⟨34, 37⟩, ⟨3, 18⟩, ⟨14, 22⟩, ⟨26, 34⟩, ⟨37, 38⟩, ⟨6, 19⟩, ⟨17, 23⟩, ⟨29, 35⟩, ⟨40, 39⟩, ⟨9, 20⟩, ⟨20, 24⟩, ⟨32, 36⟩, ⟨1, 17⟩, ⟨12, 21⟩, ⟨24, 33⟩, ⟨35, 37⟩, ⟨4, 18⟩, ⟨15, 22⟩, ⟨43, 57⟩, ⟨27, 34⟩, ⟨38, 38⟩, ⟨7, 19⟩, ⟨18, 23⟩, ⟨30, 35⟩, ⟨41, 39⟩, ⟨10, 20⟩, ⟨21, 24⟩, ⟨22, 32⟩, ⟨33, 36⟩, ⟨2, 17⟩, ⟨13, 21⟩, ⟨25, 33⟩, ⟨36, 37⟩, ⟨5, 18⟩, ⟨16, 22⟩]⟩
theorem profile1036_checked : profile1036.check := by decide +kernel

noncomputable def selection0_1036 : Selection :=
  ⟨0, 4, 1, (283/20), 5274, 242, -654⟩
theorem selection0_1036_checked : selection0_1036.check profile1036 := by decide +kernel

noncomputable def selection1_1036 : Selection :=
  ⟨1, -4, 5, (1191/100), 318, 134, -286⟩
theorem selection1_1036_checked : selection1_1036.check profile1036 := by decide +kernel

noncomputable def selection2_1036 : Selection :=
  ⟨2, -12, 9, (1157/100), 103, 58, 82⟩
theorem selection2_1036_checked : selection2_1036.check profile1036 := by decide +kernel

noncomputable def profile1037 : ProfileCell :=
  ⟨(23/63), (19/52),
    [18, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 8], [17, 17, 18, 18, 18],
    [⟨16, 23⟩, ⟨28, 35⟩, ⟨39, 39⟩, ⟨8, 20⟩, ⟨19, 24⟩, ⟨31, 36⟩, ⟨42, 40⟩, ⟨11, 21⟩, ⟨23, 33⟩, ⟨34, 37⟩, ⟨3, 18⟩, ⟨14, 22⟩, ⟨26, 34⟩, ⟨37, 38⟩, ⟨6, 19⟩, ⟨17, 23⟩, ⟨29, 35⟩, ⟨40, 39⟩, ⟨9, 20⟩, ⟨20, 24⟩, ⟨32, 36⟩, ⟨1, 17⟩, ⟨12, 21⟩, ⟨24, 33⟩, ⟨35, 37⟩, ⟨4, 18⟩, ⟨15, 22⟩, ⟨27, 34⟩, ⟨43, 57⟩, ⟨38, 38⟩, ⟨7, 19⟩, ⟨18, 23⟩, ⟨30, 35⟩, ⟨41, 39⟩, ⟨10, 20⟩, ⟨21, 24⟩, ⟨22, 32⟩, ⟨33, 36⟩, ⟨2, 17⟩, ⟨13, 21⟩, ⟨25, 33⟩, ⟨36, 37⟩, ⟨5, 18⟩]⟩
theorem profile1037_checked : profile1037.check := by decide +kernel

noncomputable def selection0_1037 : Selection :=
  ⟨0, 4, 1, (137/10), 3136, 150, -402⟩
theorem selection0_1037_checked : selection0_1037.check profile1037 := by decide +kernel

noncomputable def selection1_1037 : Selection :=
  ⟨1, -4, 5, (237/20), 195, 42, -34⟩
theorem selection1_1037_checked : selection1_1037.check profile1037 := by decide +kernel

noncomputable def selection2_1037 : Selection :=
  ⟨2, -12, 9, (1159/100), 64, -34, 334⟩
theorem selection2_1037_checked : selection2_1037.check profile1037 := by decide +kernel

noncomputable def profile1038 : ProfileCell :=
  ⟨(19/52), (34/93),
    [19, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 8], [17, 17, 18, 18, 19],
    [⟨5, 19⟩, ⟨36, 38⟩, ⟨16, 23⟩, ⟨28, 35⟩, ⟨8, 20⟩, ⟨39, 39⟩, ⟨19, 24⟩, ⟨31, 36⟩, ⟨11, 21⟩, ⟨42, 40⟩, ⟨23, 33⟩, ⟨3, 18⟩, ⟨34, 37⟩, ⟨14, 22⟩, ⟨26, 34⟩, ⟨6, 19⟩, ⟨37, 38⟩, ⟨17, 23⟩, ⟨29, 35⟩, ⟨9, 20⟩, ⟨40, 39⟩, ⟨20, 24⟩, ⟨1, 17⟩, ⟨32, 36⟩, ⟨12, 21⟩, ⟨24, 33⟩, ⟨4, 18⟩, ⟨35, 37⟩, ⟨15, 22⟩, ⟨27, 34⟩, ⟨7, 19⟩, ⟨38, 38⟩, ⟨43, 57⟩, ⟨18, 23⟩, ⟨30, 35⟩, ⟨10, 20⟩, ⟨41, 39⟩, ⟨21, 24⟩, ⟨22, 32⟩, ⟨2, 17⟩, ⟨33, 36⟩, ⟨13, 21⟩, ⟨25, 33⟩]⟩
theorem profile1038_checked : profile1038.check := by decide +kernel

noncomputable def selection0_1038 : Selection :=
  ⟨0, 5, 1, (1553/100), 2405, 150, -402⟩
theorem selection0_1038_checked : selection0_1038.check profile1038 := by decide +kernel

noncomputable def selection1_1038 : Selection :=
  ⟨1, -3, 5, (277/20), 154, 42, -34⟩
theorem selection1_1038_checked : selection1_1038.check profile1038 := by decide +kernel

noncomputable def selection2_1038 : Selection :=
  ⟨2, -11, 9, (68/5), 51, -34, 334⟩
theorem selection2_1038_checked : selection2_1038.check profile1038 := by decide +kernel

noncomputable def profile1039 : ProfileCell :=
  ⟨(34/93), (15/41),
    [19, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 8], [17, 17, 18, 18, 19],
    [⟨25, 34⟩, ⟨5, 19⟩, ⟨36, 38⟩, ⟨16, 23⟩, ⟨28, 35⟩, ⟨8, 20⟩, ⟨39, 39⟩, ⟨19, 24⟩, ⟨31, 36⟩, ⟨11, 21⟩, ⟨42, 40⟩, ⟨23, 33⟩, ⟨3, 18⟩, ⟨34, 37⟩, ⟨14, 22⟩, ⟨26, 34⟩, ⟨6, 19⟩, ⟨37, 38⟩, ⟨17, 23⟩, ⟨29, 35⟩, ⟨9, 20⟩, ⟨40, 39⟩, ⟨20, 24⟩, ⟨1, 17⟩, ⟨32, 36⟩, ⟨12, 21⟩, ⟨24, 33⟩, ⟨4, 18⟩, ⟨35, 37⟩, ⟨15, 22⟩, ⟨27, 34⟩, ⟨7, 19⟩, ⟨38, 38⟩, ⟨18, 23⟩, ⟨43, 57⟩, ⟨30, 35⟩, ⟨10, 20⟩, ⟨41, 39⟩, ⟨21, 24⟩, ⟨22, 32⟩, ⟨2, 17⟩, ⟨33, 36⟩, ⟨13, 21⟩]⟩
theorem profile1039_checked : profile1039.check := by decide +kernel

noncomputable def selection0_1039 : Selection :=
  ⟨0, 5, 1, (771/50), 3024, 286, -774⟩
theorem selection0_1039_checked : selection0_1039.check profile1039 := by decide +kernel

noncomputable def selection1_1039 : Selection :=
  ⟨1, -3, 5, (277/20), 195, 178, -406⟩
theorem selection1_1039_checked : selection1_1039.check profile1039 := by decide +kernel

noncomputable def selection2_1039 : Selection :=
  ⟨2, -11, 9, (68/5), 64, 102, -38⟩
theorem selection2_1039_checked : selection2_1039.check profile1039 := by decide +kernel

noncomputable def profile1040 : ProfileCell :=
  ⟨(15/41), (37/101),
    [19, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 8], [17, 17, 18, 18, 19],
    [⟨5, 19⟩, ⟨25, 34⟩, ⟨16, 23⟩, ⟨36, 38⟩, ⟨8, 20⟩, ⟨28, 35⟩, ⟨19, 24⟩, ⟨39, 39⟩, ⟨11, 21⟩, ⟨31, 36⟩, ⟨42, 40⟩, ⟨3, 18⟩, ⟨23, 33⟩, ⟨14, 22⟩, ⟨34, 37⟩, ⟨6, 19⟩, ⟨26, 34⟩, ⟨17, 23⟩, ⟨37, 38⟩, ⟨9, 20⟩, ⟨29, 35⟩, ⟨20, 24⟩, ⟨40, 39⟩, ⟨1, 17⟩, ⟨12, 21⟩, ⟨32, 36⟩, ⟨4, 18⟩, ⟨24, 33⟩, ⟨15, 22⟩, ⟨35, 37⟩, ⟨7, 19⟩, ⟨27, 34⟩, ⟨18, 23⟩, ⟨38, 38⟩, ⟨43, 57⟩, ⟨10, 20⟩, ⟨30, 35⟩, ⟨21, 24⟩, ⟨41, 39⟩, ⟨2, 17⟩, ⟨22, 32⟩, ⟨13, 21⟩, ⟨33, 36⟩]⟩
theorem profile1040_checked : profile1040.check := by decide +kernel

noncomputable def selection0_1040 : Selection :=
  ⟨0, 5, 1, (757/50), 5456, 136, -364⟩
theorem selection0_1040_checked : selection0_1040.check profile1040 := by decide +kernel

noncomputable def selection1_1040 : Selection :=
  ⟨1, -3, 5, (1381/100), 358, 28, 4⟩
theorem selection1_1040_checked : selection1_1040.check profile1040 := by decide +kernel

noncomputable def selection2_1040 : Selection :=
  ⟨2, -11, 9, (341/25), 118, -48, 372⟩
theorem selection2_1040_checked : selection2_1040.check profile1040 := by decide +kernel

noncomputable def profile1041 : ProfileCell :=
  ⟨(37/101), (11/30),
    [19, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 10, 10, 9, 8, 8], [17, 17, 18, 18, 19],
    [⟨33, 37⟩, ⟨5, 19⟩, ⟨25, 34⟩, ⟨16, 23⟩, ⟨36, 38⟩, ⟨8, 20⟩, ⟨28, 35⟩, ⟨19, 24⟩, ⟨39, 39⟩, ⟨11, 21⟩, ⟨31, 36⟩, ⟨42, 40⟩, ⟨3, 18⟩, ⟨23, 33⟩, ⟨14, 22⟩, ⟨34, 37⟩, ⟨6, 19⟩, ⟨26, 34⟩, ⟨17, 23⟩, ⟨37, 38⟩, ⟨9, 20⟩, ⟨29, 35⟩, ⟨20, 24⟩, ⟨40, 39⟩, ⟨1, 17⟩, ⟨12, 21⟩, ⟨32, 36⟩, ⟨4, 18⟩, ⟨24, 33⟩, ⟨15, 22⟩, ⟨35, 37⟩, ⟨7, 19⟩, ⟨27, 34⟩, ⟨18, 23⟩, ⟨38, 38⟩, ⟨10, 20⟩, ⟨43, 57⟩, ⟨30, 35⟩, ⟨21, 24⟩, ⟨41, 39⟩, ⟨2, 17⟩, ⟨22, 32⟩, ⟨13, 21⟩]⟩
theorem profile1041_checked : profile1041.check := by decide +kernel

noncomputable def selection0_1041 : Selection :=
  ⟨0, 5, 1, (149/10), 3661, 358, -970⟩
theorem selection0_1041_checked : selection0_1041.check profile1041 := by decide +kernel

noncomputable def selection1_1041 : Selection :=
  ⟨1, -3, 5, (1381/100), 245, 250, -602⟩
theorem selection1_1041_checked : selection1_1041.check profile1041 := by decide +kernel

noncomputable def selection2_1041 : Selection :=
  ⟨2, -11, 9, (341/25), 81, 174, -234⟩
theorem selection2_1041_checked : selection2_1041.check profile1041 := by decide +kernel

noncomputable def profile1042 : ProfileCell :=
  ⟨(11/30), (40/109),
    [19, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 11, 10, 9, 8, 8], [17, 17, 18, 18, 19],
    [⟨13, 22⟩, ⟨22, 33⟩, ⟨33, 37⟩, ⟨5, 19⟩, ⟨16, 23⟩, ⟨25, 34⟩, ⟨36, 38⟩, ⟨8, 20⟩, ⟨19, 24⟩, ⟨28, 35⟩, ⟨39, 39⟩, ⟨11, 21⟩, ⟨31, 36⟩, ⟨3, 18⟩, ⟨42, 40⟩, ⟨14, 22⟩, ⟨23, 33⟩, ⟨34, 37⟩, ⟨6, 19⟩, ⟨17, 23⟩, ⟨26, 34⟩, ⟨37, 38⟩, ⟨9, 20⟩, ⟨20, 24⟩, ⟨29, 35⟩, ⟨1, 17⟩, ⟨40, 39⟩, ⟨12, 21⟩, ⟨32, 36⟩, ⟨4, 18⟩, ⟨15, 22⟩, ⟨24, 33⟩, ⟨35, 37⟩, ⟨7, 19⟩, ⟨18, 23⟩, ⟨27, 34⟩, ⟨38, 38⟩, ⟨10, 20⟩, ⟨21, 24⟩, ⟨30, 35⟩, ⟨43, 57⟩, ⟨2, 17⟩, ⟨41, 39⟩]⟩
theorem profile1042_checked : profile1042.check := by decide +kernel

noncomputable def selection0_1042 : Selection :=
  ⟨0, 4, 1, (623/50), 2832, 358, -970⟩
theorem selection0_1042_checked : selection0_1042.check profile1042 := by decide +kernel

noncomputable def selection1_1042 : Selection :=
  ⟨1, -4, 5, (587/50), 193, 250, -602⟩
theorem selection1_1042_checked : selection1_1042.check profile1042 := by decide +kernel

noncomputable def selection2_1042 : Selection :=
  ⟨2, -12, 9, (581/50), 64, 174, -234⟩
theorem selection2_1042_checked : selection2_1042.check profile1042 := by decide +kernel

noncomputable def profile1043 : ProfileCell :=
  ⟨(40/109), (29/79),
    [19, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 11, 10, 9, 8, 8], [17, 17, 18, 18, 19],
    [⟨41, 40⟩, ⟨13, 22⟩, ⟨22, 33⟩, ⟨33, 37⟩, ⟨5, 19⟩, ⟨16, 23⟩, ⟨25, 34⟩, ⟨36, 38⟩, ⟨8, 20⟩, ⟨19, 24⟩, ⟨28, 35⟩, ⟨39, 39⟩, ⟨11, 21⟩, ⟨31, 36⟩, ⟨3, 18⟩, ⟨42, 40⟩, ⟨14, 22⟩, ⟨23, 33⟩, ⟨34, 37⟩, ⟨6, 19⟩, ⟨17, 23⟩, ⟨26, 34⟩, ⟨37, 38⟩, ⟨9, 20⟩, ⟨20, 24⟩, ⟨29, 35⟩, ⟨1, 17⟩, ⟨40, 39⟩, ⟨12, 21⟩, ⟨32, 36⟩, ⟨4, 18⟩, ⟨15, 22⟩, ⟨24, 33⟩, ⟨35, 37⟩, ⟨7, 19⟩, ⟨18, 23⟩, ⟨27, 34⟩, ⟨38, 38⟩, ⟨10, 20⟩, ⟨21, 24⟩, ⟨30, 35⟩, ⟨2, 17⟩, ⟨43, 57⟩]⟩
theorem profile1043_checked : profile1043.check := by decide +kernel

noncomputable def selection0_1043 : Selection :=
  ⟨0, 4, 1, (241/20), 1039, 518, -1406⟩
theorem selection0_1043_checked : selection0_1043.check profile1043 := by decide +kernel

noncomputable def selection1_1043 : Selection :=
  ⟨1, -4, 5, (1167/100), 73, 410, -1038⟩
theorem selection1_1043_checked : selection1_1043.check profile1043 := by decide +kernel

noncomputable def selection2_1043 : Selection :=
  ⟨2, -12, 9, (1161/100), 25, 334, -670⟩
theorem selection2_1043_checked : selection2_1043.check profile1043 := by decide +kernel

noncomputable def profile1044 : ProfileCell :=
  ⟨(29/79), (18/49),
    [19, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 11, 10, 9, 8, 8], [17, 17, 18, 18, 19],
    [⟨43, 58⟩, ⟨41, 40⟩, ⟨13, 22⟩, ⟨22, 33⟩, ⟨33, 37⟩, ⟨5, 19⟩, ⟨16, 23⟩, ⟨25, 34⟩, ⟨36, 38⟩, ⟨8, 20⟩, ⟨19, 24⟩, ⟨28, 35⟩, ⟨39, 39⟩, ⟨11, 21⟩, ⟨31, 36⟩, ⟨3, 18⟩, ⟨42, 40⟩, ⟨14, 22⟩, ⟨23, 33⟩, ⟨34, 37⟩, ⟨6, 19⟩, ⟨17, 23⟩, ⟨26, 34⟩, ⟨37, 38⟩, ⟨9, 20⟩, ⟨20, 24⟩, ⟨29, 35⟩, ⟨1, 17⟩, ⟨40, 39⟩, ⟨12, 21⟩, ⟨32, 36⟩, ⟨4, 18⟩, ⟨15, 22⟩, ⟨24, 33⟩, ⟨35, 37⟩, ⟨7, 19⟩, ⟨18, 23⟩, ⟨27, 34⟩, ⟨38, 38⟩, ⟨10, 20⟩, ⟨21, 24⟩, ⟨30, 35⟩, ⟨2, 17⟩]⟩
theorem profile1044_checked : profile1044.check := by decide +kernel

noncomputable def selection0_1044 : Selection :=
  ⟨0, 4, 1, 12, 2299, -178, 490⟩
theorem selection0_1044_checked : selection0_1044.check profile1044 := by decide +kernel

noncomputable def selection1_1044 : Selection :=
  ⟨1, -4, 5, (1171/100), 162, -286, 858⟩
theorem selection1_1044_checked : selection1_1044.check profile1044 := by decide +kernel

noncomputable def selection2_1044 : Selection :=
  ⟨2, -12, 9, (583/50), 54, -362, 1226⟩
theorem selection2_1044_checked : selection2_1044.check profile1044 := by decide +kernel

noncomputable def profile1045 : ProfileCell :=
  ⟨(18/49), (25/68),
    [19, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨2, 18⟩, ⟨30, 36⟩, ⟨13, 22⟩, ⟨41, 40⟩, ⟨43, 58⟩, ⟨22, 33⟩, ⟨5, 19⟩, ⟨33, 37⟩, ⟨16, 23⟩, ⟨25, 34⟩, ⟨8, 20⟩, ⟨36, 38⟩, ⟨19, 24⟩, ⟨28, 35⟩, ⟨11, 21⟩, ⟨39, 39⟩, ⟨3, 18⟩, ⟨31, 36⟩, ⟨14, 22⟩, ⟨42, 40⟩, ⟨23, 33⟩, ⟨6, 19⟩, ⟨34, 37⟩, ⟨17, 23⟩, ⟨26, 34⟩, ⟨9, 20⟩, ⟨37, 38⟩, ⟨20, 24⟩, ⟨1, 17⟩, ⟨29, 35⟩, ⟨12, 21⟩, ⟨40, 39⟩, ⟨4, 18⟩, ⟨32, 36⟩, ⟨15, 22⟩, ⟨24, 33⟩, ⟨7, 19⟩, ⟨35, 37⟩, ⟨18, 23⟩, ⟨27, 34⟩, ⟨10, 20⟩, ⟨38, 38⟩, ⟨21, 24⟩]⟩
theorem profile1045_checked : profile1045.check := by decide +kernel

noncomputable def selection0_1045 : Selection :=
  ⟨0, 6, 1, (408/25), 3627, -286, 784⟩
theorem selection0_1045_checked : selection0_1045.check profile1045 := by decide +kernel

noncomputable def selection1_1045 : Selection :=
  ⟨1, -2, 5, (1583/100), 255, -394, 1152⟩
theorem selection1_1045_checked : selection1_1045.check profile1045 := by decide +kernel

noncomputable def selection2_1045 : Selection :=
  ⟨2, -10, 9, (394/25), 85, -470, 1520⟩
theorem selection2_1045_checked : selection2_1045.check profile1045 := by decide +kernel

noncomputable def profile1046 : ProfileCell :=
  ⟨(25/68), (39/106),
    [19, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨21, 25⟩, ⟨2, 18⟩, ⟨30, 36⟩, ⟨13, 22⟩, ⟨41, 40⟩, ⟨22, 33⟩, ⟨43, 58⟩, ⟨5, 19⟩, ⟨33, 37⟩, ⟨16, 23⟩, ⟨25, 34⟩, ⟨8, 20⟩, ⟨36, 38⟩, ⟨19, 24⟩, ⟨28, 35⟩, ⟨11, 21⟩, ⟨39, 39⟩, ⟨3, 18⟩, ⟨31, 36⟩, ⟨14, 22⟩, ⟨42, 40⟩, ⟨23, 33⟩, ⟨6, 19⟩, ⟨34, 37⟩, ⟨17, 23⟩, ⟨26, 34⟩, ⟨9, 20⟩, ⟨37, 38⟩, ⟨20, 24⟩, ⟨1, 17⟩, ⟨29, 35⟩, ⟨12, 21⟩, ⟨40, 39⟩, ⟨4, 18⟩, ⟨32, 36⟩, ⟨15, 22⟩, ⟨24, 33⟩, ⟨7, 19⟩, ⟨35, 37⟩, ⟨18, 23⟩, ⟨27, 34⟩, ⟨10, 20⟩, ⟨38, 38⟩]⟩
theorem profile1046_checked : profile1046.check := by decide +kernel

noncomputable def selection0_1046 : Selection :=
  ⟨0, 6, 1, (418/25), 3430, -386, 1056⟩
theorem selection0_1046_checked : selection0_1046.check profile1046 := by decide +kernel

noncomputable def selection1_1046 : Selection :=
  ⟨1, -2, 5, (1599/100), 238, -544, 1560⟩
theorem selection1_1046_checked : selection1_1046.check profile1046 := by decide +kernel

noncomputable def selection2_1046 : Selection :=
  ⟨2, -10, 9, (1587/100), 79, -620, 1928⟩
theorem selection2_1046_checked : selection2_1046.check profile1046 := by decide +kernel

noncomputable def profile1047 : ProfileCell :=
  ⟨(39/106), (7/19),
    [19, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨38, 39⟩, ⟨21, 25⟩, ⟨2, 18⟩, ⟨30, 36⟩, ⟨13, 22⟩, ⟨41, 40⟩, ⟨22, 33⟩, ⟨5, 19⟩, ⟨43, 58⟩, ⟨33, 37⟩, ⟨16, 23⟩, ⟨25, 34⟩, ⟨8, 20⟩, ⟨36, 38⟩, ⟨19, 24⟩, ⟨28, 35⟩, ⟨11, 21⟩, ⟨39, 39⟩, ⟨3, 18⟩, ⟨31, 36⟩, ⟨14, 22⟩, ⟨42, 40⟩, ⟨23, 33⟩, ⟨6, 19⟩, ⟨34, 37⟩, ⟨17, 23⟩, ⟨26, 34⟩, ⟨9, 20⟩, ⟨37, 38⟩, ⟨20, 24⟩, ⟨1, 17⟩, ⟨29, 35⟩, ⟨12, 21⟩, ⟨40, 39⟩, ⟨4, 18⟩, ⟨32, 36⟩, ⟨15, 22⟩, ⟨24, 33⟩, ⟨7, 19⟩, ⟨35, 37⟩, ⟨18, 23⟩, ⟨27, 34⟩, ⟨10, 20⟩]⟩
theorem profile1047_checked : profile1047.check := by decide +kernel

noncomputable def selection0_1047 : Selection :=
  ⟨0, 6, 1, (343/20), 6283, -230, 632⟩
theorem selection0_1047_checked : selection0_1047.check profile1047 := by decide +kernel

noncomputable def selection1_1047 : Selection :=
  ⟨1, -2, 5, (404/25), 429, -310, 924⟩
theorem selection1_1047_checked : selection1_1047.check profile1047 := by decide +kernel

noncomputable def selection2_1047 : Selection :=
  ⟨2, -10, 9, 16, 142, -386, 1292⟩
theorem selection2_1047_checked : selection2_1047.check profile1047 := by decide +kernel

noncomputable def profile1048 : ProfileCell :=
  ⟨(7/19), (38/103),
    [19, 18, 17, 16, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨10, 21⟩, ⟨27, 35⟩, ⟨2, 18⟩, ⟨21, 25⟩, ⟨38, 39⟩, ⟨13, 22⟩, ⟨30, 36⟩, ⟨5, 19⟩, ⟨22, 33⟩, ⟨41, 40⟩, ⟨16, 23⟩, ⟨33, 37⟩, ⟨43, 58⟩, ⟨8, 20⟩, ⟨25, 34⟩, ⟨19, 24⟩, ⟨36, 38⟩, ⟨11, 21⟩, ⟨28, 35⟩, ⟨3, 18⟩, ⟨39, 39⟩, ⟨14, 22⟩, ⟨31, 36⟩, ⟨6, 19⟩, ⟨23, 33⟩, ⟨42, 40⟩, ⟨17, 23⟩, ⟨34, 37⟩, ⟨9, 20⟩, ⟨26, 34⟩, ⟨1, 17⟩, ⟨20, 24⟩, ⟨37, 38⟩, ⟨12, 21⟩, ⟨29, 35⟩, ⟨4, 18⟩, ⟨40, 39⟩, ⟨15, 22⟩, ⟨32, 36⟩, ⟨7, 19⟩, ⟨24, 33⟩, ⟨18, 23⟩, ⟨35, 37⟩]⟩
theorem profile1048_checked : profile1048.check := by decide +kernel

noncomputable def selection0_1048 : Selection :=
  ⟨0, 5, 1, (779/50), 5858, -230, 632⟩
theorem selection0_1048_checked : selection0_1048.check profile1048 := by decide +kernel

noncomputable def selection1_1048 : Selection :=
  ⟨1, -3, 5, (287/20), 392, -338, 1000⟩
theorem selection1_1048_checked : selection1_1048.check profile1048 := by decide +kernel

noncomputable def selection2_1048 : Selection :=
  ⟨2, -11, 9, (283/20), 129, -414, 1368⟩
theorem selection2_1048_checked : selection2_1048.check profile1048 := by decide +kernel

noncomputable def profile1049 : ProfileCell :=
  ⟨(38/103), (24/65),
    [19, 18, 17, 16, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨35, 38⟩, ⟨10, 21⟩, ⟨27, 35⟩, ⟨2, 18⟩, ⟨21, 25⟩, ⟨38, 39⟩, ⟨13, 22⟩, ⟨30, 36⟩, ⟨5, 19⟩, ⟨22, 33⟩, ⟨41, 40⟩, ⟨16, 23⟩, ⟨33, 37⟩, ⟨8, 20⟩, ⟨43, 58⟩, ⟨25, 34⟩, ⟨19, 24⟩, ⟨36, 38⟩, ⟨11, 21⟩, ⟨28, 35⟩, ⟨3, 18⟩, ⟨39, 39⟩, ⟨14, 22⟩, ⟨31, 36⟩, ⟨6, 19⟩, ⟨23, 33⟩, ⟨42, 40⟩, ⟨17, 23⟩, ⟨34, 37⟩, ⟨9, 20⟩, ⟨26, 34⟩, ⟨1, 17⟩, ⟨20, 24⟩, ⟨37, 38⟩, ⟨12, 21⟩, ⟨29, 35⟩, ⟨4, 18⟩, ⟨40, 39⟩, ⟨15, 22⟩, ⟨32, 36⟩, ⟨7, 19⟩, ⟨24, 33⟩, ⟨18, 23⟩]⟩
theorem profile1049_checked : profile1049.check := by decide +kernel

noncomputable def selection0_1049 : Selection :=
  ⟨0, 5, 1, (1567/100), 3437, -78, 220⟩
theorem selection0_1049_checked : selection0_1049.check profile1049 := by decide +kernel

noncomputable def selection1_1049 : Selection :=
  ⟨1, -3, 5, (1441/100), 230, -186, 588⟩
theorem selection1_1049_checked : selection1_1049.check profile1049 := by decide +kernel

noncomputable def selection2_1049 : Selection :=
  ⟨2, -11, 9, (1421/100), 76, -262, 956⟩
theorem selection2_1049_checked : selection2_1049.check profile1049 := by decide +kernel

noncomputable def profile1050 : ProfileCell :=
  ⟨(24/65), (17/46),
    [19, 18, 17, 16, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨18, 24⟩, ⟨35, 38⟩, ⟨10, 21⟩, ⟨27, 35⟩, ⟨2, 18⟩, ⟨21, 25⟩, ⟨38, 39⟩, ⟨13, 22⟩, ⟨30, 36⟩, ⟨5, 19⟩, ⟨22, 33⟩, ⟨41, 40⟩, ⟨16, 23⟩, ⟨33, 37⟩, ⟨8, 20⟩, ⟨25, 34⟩, ⟨43, 58⟩, ⟨19, 24⟩, ⟨36, 38⟩, ⟨11, 21⟩, ⟨28, 35⟩, ⟨3, 18⟩, ⟨39, 39⟩, ⟨14, 22⟩, ⟨31, 36⟩, ⟨6, 19⟩, ⟨23, 33⟩, ⟨42, 40⟩, ⟨17, 23⟩, ⟨34, 37⟩, ⟨9, 20⟩, ⟨26, 34⟩, ⟨1, 17⟩, ⟨20, 24⟩, ⟨37, 38⟩, ⟨12, 21⟩, ⟨29, 35⟩, ⟨4, 18⟩, ⟨40, 39⟩, ⟨15, 22⟩, ⟨32, 36⟩, ⟨7, 19⟩, ⟨24, 33⟩]⟩
theorem profile1050_checked : profile1050.check := by decide +kernel

noncomputable def selection0_1050 : Selection :=
  ⟨0, 5, 1, (1589/100), 3895, -174, 480⟩
theorem selection0_1050_checked : selection0_1050.check profile1050 := by decide +kernel

noncomputable def selection1_1050 : Selection :=
  ⟨1, -3, 5, (1451/100), 259, -282, 848⟩
theorem selection1_1050_checked : selection1_1050.check profile1050 := by decide +kernel

noncomputable def selection2_1050 : Selection :=
  ⟨2, -11, 9, (143/10), 86, -358, 1216⟩
theorem selection2_1050_checked : selection2_1050.check profile1050 := by decide +kernel

noncomputable def profile1051 : ProfileCell :=
  ⟨(17/46), (37/100),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨24, 34⟩, ⟨18, 24⟩, ⟨10, 21⟩, ⟨35, 38⟩, ⟨2, 18⟩, ⟨27, 35⟩, ⟨21, 25⟩, ⟨13, 22⟩, ⟨38, 39⟩, ⟨5, 19⟩, ⟨30, 36⟩, ⟨22, 33⟩, ⟨16, 23⟩, ⟨41, 40⟩, ⟨8, 20⟩, ⟨33, 37⟩, ⟨25, 34⟩, ⟨19, 24⟩, ⟨43, 58⟩, ⟨11, 21⟩, ⟨36, 38⟩, ⟨3, 18⟩, ⟨28, 35⟩, ⟨14, 22⟩, ⟨39, 39⟩, ⟨6, 19⟩, ⟨31, 36⟩, ⟨23, 33⟩, ⟨17, 23⟩, ⟨42, 40⟩, ⟨9, 20⟩, ⟨34, 37⟩, ⟨1, 17⟩, ⟨26, 34⟩, ⟨20, 24⟩, ⟨12, 21⟩, ⟨37, 38⟩, ⟨4, 18⟩, ⟨29, 35⟩, ⟨15, 22⟩, ⟨40, 39⟩, ⟨7, 19⟩, ⟨32, 36⟩]⟩
theorem profile1051_checked : profile1051.check := by decide +kernel

noncomputable def selection0_1051 : Selection :=
  ⟨0, 4, 1, (711/50), 4522, -208, 572⟩
theorem selection0_1051_checked : selection0_1051.check profile1051 := by decide +kernel

noncomputable def selection1_1051 : Selection :=
  ⟨1, -4, 5, (633/50), 294, -316, 940⟩
theorem selection1_1051_checked : selection1_1051.check profile1051 := by decide +kernel

noncomputable def selection2_1051 : Selection :=
  ⟨2, -12, 9, (621/50), 97, -392, 1308⟩
theorem selection2_1051_checked : selection2_1051.check profile1051 := by decide +kernel

noncomputable def profile1052 : ProfileCell :=
  ⟨(37/100), (10/27),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨32, 37⟩, ⟨24, 34⟩, ⟨18, 24⟩, ⟨10, 21⟩, ⟨35, 38⟩, ⟨2, 18⟩, ⟨27, 35⟩, ⟨21, 25⟩, ⟨13, 22⟩, ⟨38, 39⟩, ⟨5, 19⟩, ⟨30, 36⟩, ⟨22, 33⟩, ⟨16, 23⟩, ⟨41, 40⟩, ⟨8, 20⟩, ⟨33, 37⟩, ⟨25, 34⟩, ⟨19, 24⟩, ⟨11, 21⟩, ⟨43, 58⟩, ⟨36, 38⟩, ⟨3, 18⟩, ⟨28, 35⟩, ⟨14, 22⟩, ⟨39, 39⟩, ⟨6, 19⟩, ⟨31, 36⟩, ⟨23, 33⟩, ⟨17, 23⟩, ⟨42, 40⟩, ⟨9, 20⟩, ⟨34, 37⟩, ⟨1, 17⟩, ⟨26, 34⟩, ⟨20, 24⟩, ⟨12, 21⟩, ⟨37, 38⟩, ⟨4, 18⟩, ⟨29, 35⟩, ⟨15, 22⟩, ⟨40, 39⟩, ⟨7, 19⟩]⟩
theorem profile1052_checked : profile1052.check := by decide +kernel

noncomputable def selection0_1052 : Selection :=
  ⟨0, 4, 1, (711/50), 3844, 14, -28⟩
theorem selection0_1052_checked : selection0_1052.check profile1052 := by decide +kernel

noncomputable def selection1_1052 : Selection :=
  ⟨1, -4, 5, (1271/100), 251, -94, 340⟩
theorem selection1_1052_checked : selection1_1052.check profile1052 := by decide +kernel

noncomputable def selection2_1052 : Selection :=
  ⟨2, -12, 9, (1247/100), 83, -170, 708⟩
theorem selection2_1052_checked : selection2_1052.check profile1052 := by decide +kernel

noncomputable def profile1053 : ProfileCell :=
  ⟨(10/27), (23/62),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨7, 20⟩, ⟨40, 40⟩, ⟨32, 37⟩, ⟨18, 24⟩, ⟨24, 34⟩, ⟨10, 21⟩, ⟨2, 18⟩, ⟨35, 38⟩, ⟨21, 25⟩, ⟨27, 35⟩, ⟨13, 22⟩, ⟨5, 19⟩, ⟨38, 39⟩, ⟨30, 36⟩, ⟨16, 23⟩, ⟨22, 33⟩, ⟨8, 20⟩, ⟨41, 40⟩, ⟨33, 37⟩, ⟨19, 24⟩, ⟨25, 34⟩, ⟨11, 21⟩, ⟨3, 18⟩, ⟨36, 38⟩, ⟨43, 58⟩, ⟨28, 35⟩, ⟨14, 22⟩, ⟨6, 19⟩, ⟨39, 39⟩, ⟨31, 36⟩, ⟨17, 23⟩, ⟨23, 33⟩, ⟨9, 20⟩, ⟨42, 40⟩, ⟨1, 17⟩, ⟨34, 37⟩, ⟨20, 24⟩, ⟨26, 34⟩, ⟨12, 21⟩, ⟨4, 18⟩, ⟨37, 38⟩, ⟨29, 35⟩, ⟨15, 22⟩]⟩
theorem profile1053_checked : profile1053.check := by decide +kernel

noncomputable def selection0_1053 : Selection :=
  ⟨0, 4, 1, (1427/100), 6205, -26, 80⟩
theorem selection0_1053_checked : selection0_1053.check profile1053 := by decide +kernel

noncomputable def selection1_1053 : Selection :=
  ⟨1, -4, 5, (64/5), 407, -134, 448⟩
theorem selection1_1053_checked : selection1_1053.check profile1053 := by decide +kernel

noncomputable def selection2_1053 : Selection :=
  ⟨2, -12, 9, (629/50), 134, -210, 816⟩
theorem selection2_1053_checked : selection2_1053.check profile1053 := by decide +kernel

noncomputable def profile1054 : ProfileCell :=
  ⟨(23/62), (36/97),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨15, 23⟩, ⟨7, 20⟩, ⟨40, 40⟩, ⟨32, 37⟩, ⟨18, 24⟩, ⟨24, 34⟩, ⟨10, 21⟩, ⟨2, 18⟩, ⟨35, 38⟩, ⟨21, 25⟩, ⟨27, 35⟩, ⟨13, 22⟩, ⟨5, 19⟩, ⟨38, 39⟩, ⟨30, 36⟩, ⟨16, 23⟩, ⟨22, 33⟩, ⟨8, 20⟩, ⟨41, 40⟩, ⟨33, 37⟩, ⟨19, 24⟩, ⟨25, 34⟩, ⟨11, 21⟩, ⟨3, 18⟩, ⟨36, 38⟩, ⟨28, 35⟩, ⟨43, 58⟩, ⟨14, 22⟩, ⟨6, 19⟩, ⟨39, 39⟩, ⟨31, 36⟩, ⟨17, 23⟩, ⟨23, 33⟩, ⟨9, 20⟩, ⟨1, 17⟩, ⟨42, 40⟩, ⟨34, 37⟩, ⟨20, 24⟩, ⟨26, 34⟩, ⟨12, 21⟩, ⟨4, 18⟩, ⟨37, 38⟩, ⟨29, 35⟩]⟩
theorem profile1054_checked : profile1054.check := by decide +kernel

noncomputable def selection0_1054 : Selection :=
  ⟨0, 4, 1, (1437/100), 1736, -164, 452⟩
theorem selection0_1054_checked : selection0_1054.check profile1054 := by decide +kernel

noncomputable def selection1_1054 : Selection :=
  ⟨1, -4, 5, (257/20), 114, -272, 820⟩
theorem selection1_1054_checked : selection1_1054.check profile1054 := by decide +kernel

noncomputable def selection2_1054 : Selection :=
  ⟨2, -12, 9, (631/50), 38, -348, 1188⟩
theorem selection2_1054_checked : selection2_1054.check profile1054 := by decide +kernel

noncomputable def profile1055 : ProfileCell :=
  ⟨(36/97), (13/35),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨29, 36⟩, ⟨15, 23⟩, ⟨7, 20⟩, ⟨40, 40⟩, ⟨32, 37⟩, ⟨18, 24⟩, ⟨24, 34⟩, ⟨10, 21⟩, ⟨2, 18⟩, ⟨35, 38⟩, ⟨21, 25⟩, ⟨27, 35⟩, ⟨13, 22⟩, ⟨5, 19⟩, ⟨38, 39⟩, ⟨30, 36⟩, ⟨16, 23⟩, ⟨22, 33⟩, ⟨8, 20⟩, ⟨41, 40⟩, ⟨33, 37⟩, ⟨19, 24⟩, ⟨25, 34⟩, ⟨11, 21⟩, ⟨3, 18⟩, ⟨36, 38⟩, ⟨28, 35⟩, ⟨14, 22⟩, ⟨43, 58⟩, ⟨6, 19⟩, ⟨39, 39⟩, ⟨31, 36⟩, ⟨17, 23⟩, ⟨23, 33⟩, ⟨9, 20⟩, ⟨1, 17⟩, ⟨42, 40⟩, ⟨34, 37⟩, ⟨20, 24⟩, ⟨26, 34⟩, ⟨12, 21⟩, ⟨4, 18⟩, ⟨37, 38⟩]⟩
theorem profile1055_checked : profile1055.check := by decide +kernel

noncomputable def selection0_1055 : Selection :=
  ⟨0, 4, 1, (1437/100), 3071, 52, -130⟩
theorem selection0_1055_checked : selection0_1055.check profile1055 := by decide +kernel

noncomputable def selection1_1055 : Selection :=
  ⟨1, -4, 5, (322/25), 202, -56, 238⟩
theorem selection1_1055_checked : selection1_1055.check profile1055 := by decide +kernel

noncomputable def selection2_1055 : Selection :=
  ⟨2, -12, 9, (633/50), 67, -132, 606⟩
theorem selection2_1055_checked : selection2_1055.check profile1055 := by decide +kernel

noncomputable def profile1056 : ProfileCell :=
  ⟨(13/35), (16/43),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨37, 39⟩, ⟨15, 23⟩, ⟨29, 36⟩, ⟨7, 20⟩, ⟨40, 40⟩, ⟨18, 24⟩, ⟨32, 37⟩, ⟨10, 21⟩, ⟨24, 34⟩, ⟨2, 18⟩, ⟨21, 25⟩, ⟨35, 38⟩, ⟨13, 22⟩, ⟨27, 35⟩, ⟨5, 19⟩, ⟨38, 39⟩, ⟨16, 23⟩, ⟨30, 36⟩, ⟨8, 20⟩, ⟨22, 33⟩, ⟨41, 40⟩, ⟨19, 24⟩, ⟨33, 37⟩, ⟨11, 21⟩, ⟨25, 34⟩, ⟨3, 18⟩, ⟨36, 38⟩, ⟨14, 22⟩, ⟨28, 35⟩, ⟨6, 19⟩, ⟨43, 58⟩, ⟨39, 39⟩, ⟨17, 23⟩, ⟨31, 36⟩, ⟨9, 20⟩, ⟨23, 33⟩, ⟨1, 17⟩, ⟨42, 40⟩, ⟨20, 24⟩, ⟨34, 37⟩, ⟨12, 21⟩, ⟨26, 34⟩, ⟨4, 18⟩]⟩
theorem profile1056_checked : profile1056.check := by decide +kernel

noncomputable def selection0_1056 : Selection :=
  ⟨0, 4, 1, (1431/100), 6880, 130, -340⟩
theorem selection0_1056_checked : selection0_1056.check profile1056 := by decide +kernel

noncomputable def selection1_1056 : Selection :=
  ⟨1, -4, 5, (1289/100), 456, 22, 28⟩
theorem selection1_1056_checked : selection1_1056.check profile1056 := by decide +kernel

noncomputable def selection2_1056 : Selection :=
  ⟨2, -12, 9, (1271/100), 151, -54, 396⟩
theorem selection2_1056_checked : selection2_1056.check profile1056 := by decide +kernel

noncomputable def profile1057 : ProfileCell :=
  ⟨(16/43), (35/94),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨15, 23⟩, ⟨37, 39⟩, ⟨7, 20⟩, ⟨29, 36⟩, ⟨18, 24⟩, ⟨40, 40⟩, ⟨10, 21⟩, ⟨32, 37⟩, ⟨2, 18⟩, ⟨24, 34⟩, ⟨21, 25⟩, ⟨13, 22⟩, ⟨35, 38⟩, ⟨5, 19⟩, ⟨27, 35⟩, ⟨16, 23⟩, ⟨38, 39⟩, ⟨8, 20⟩, ⟨30, 36⟩, ⟨22, 33⟩, ⟨19, 24⟩, ⟨41, 40⟩, ⟨11, 21⟩, ⟨33, 37⟩, ⟨3, 18⟩, ⟨25, 34⟩, ⟨14, 22⟩, ⟨36, 38⟩, ⟨6, 19⟩, ⟨28, 35⟩, ⟨43, 58⟩, ⟨17, 23⟩, ⟨39, 39⟩, ⟨9, 20⟩, ⟨31, 36⟩, ⟨1, 17⟩, ⟨23, 33⟩, ⟨20, 24⟩, ⟨42, 40⟩, ⟨12, 21⟩, ⟨34, 37⟩, ⟨4, 18⟩, ⟨26, 34⟩]⟩
theorem profile1057_checked : profile1057.check := by decide +kernel

noncomputable def selection0_1057 : Selection :=
  ⟨0, 4, 1, (1403/100), 2506, -30, 90⟩
theorem selection0_1057_checked : selection0_1057.check profile1057 := by decide +kernel

noncomputable def selection1_1057 : Selection :=
  ⟨1, -4, 5, (1293/100), 170, -138, 458⟩
theorem selection1_1057_checked : selection1_1057.check profile1057 := by decide +kernel

noncomputable def selection2_1057 : Selection :=
  ⟨2, -12, 9, (51/4), 57, -214, 826⟩
theorem selection2_1057_checked : selection2_1057.check profile1057 := by decide +kernel

noncomputable def profile1058 : ProfileCell :=
  ⟨(35/94), (19/51),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 18, 19],
    [⟨26, 35⟩, ⟨15, 23⟩, ⟨37, 39⟩, ⟨7, 20⟩, ⟨29, 36⟩, ⟨18, 24⟩, ⟨40, 40⟩, ⟨10, 21⟩, ⟨32, 37⟩, ⟨2, 18⟩, ⟨24, 34⟩, ⟨21, 25⟩, ⟨13, 22⟩, ⟨35, 38⟩, ⟨5, 19⟩, ⟨27, 35⟩, ⟨16, 23⟩, ⟨38, 39⟩, ⟨8, 20⟩, ⟨30, 36⟩, ⟨22, 33⟩, ⟨19, 24⟩, ⟨41, 40⟩, ⟨11, 21⟩, ⟨33, 37⟩, ⟨3, 18⟩, ⟨25, 34⟩, ⟨14, 22⟩, ⟨36, 38⟩, ⟨6, 19⟩, ⟨28, 35⟩, ⟨17, 23⟩, ⟨43, 58⟩, ⟨39, 39⟩, ⟨9, 20⟩, ⟨31, 36⟩, ⟨1, 17⟩, ⟨23, 33⟩, ⟨20, 24⟩, ⟨42, 40⟩, ⟨12, 21⟩, ⟨34, 37⟩, ⟨4, 18⟩]⟩
theorem profile1058_checked : profile1058.check := by decide +kernel

noncomputable def selection0_1058 : Selection :=
  ⟨0, 4, 1, (1403/100), 2110, 180, -474⟩
theorem selection0_1058_checked : selection0_1058.check profile1058 := by decide +kernel

noncomputable def selection1_1058 : Selection :=
  ⟨1, -4, 5, (1293/100), 144, 72, -106⟩
theorem selection1_1058_checked : selection1_1058.check profile1058 := by decide +kernel

noncomputable def selection2_1058 : Selection :=
  ⟨2, -12, 9, (1277/100), 48, -4, 262⟩
theorem selection2_1058_checked : selection2_1058.check profile1058 := by decide +kernel

noncomputable def profile1059 : ProfileCell :=
  ⟨(19/51), (41/110),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 19, 19],
    [⟨4, 19⟩, ⟨34, 38⟩, ⟨26, 35⟩, ⟨15, 23⟩, ⟨7, 20⟩, ⟨37, 39⟩, ⟨29, 36⟩, ⟨18, 24⟩, ⟨10, 21⟩, ⟨40, 40⟩, ⟨2, 18⟩, ⟨32, 37⟩, ⟨24, 34⟩, ⟨21, 25⟩, ⟨13, 22⟩, ⟨5, 19⟩, ⟨35, 38⟩, ⟨27, 35⟩, ⟨16, 23⟩, ⟨8, 20⟩, ⟨38, 39⟩, ⟨30, 36⟩, ⟨22, 33⟩, ⟨19, 24⟩, ⟨11, 21⟩, ⟨41, 40⟩, ⟨3, 18⟩, ⟨33, 37⟩, ⟨25, 34⟩, ⟨14, 22⟩, ⟨6, 19⟩, ⟨36, 38⟩, ⟨28, 35⟩, ⟨17, 23⟩, ⟨9, 20⟩, ⟨39, 39⟩, ⟨43, 58⟩, ⟨1, 17⟩, ⟨31, 36⟩, ⟨23, 33⟩, ⟨20, 24⟩, ⟨12, 21⟩, ⟨42, 40⟩]⟩
theorem profile1059_checked : profile1059.check := by decide +kernel

noncomputable def selection0_1059 : Selection :=
  ⟨0, 6, 1, (179/10), 2298, 142, -372⟩
theorem selection0_1059_checked : selection0_1059.check profile1059 := by decide +kernel

noncomputable def selection1_1059 : Selection :=
  ⟨1, -2, 5, (423/25), 161, 34, -4⟩
theorem selection1_1059_checked : selection1_1059.check profile1059 := by decide +kernel

noncomputable def selection2_1059 : Selection :=
  ⟨2, -10, 9, (839/50), 54, -42, 364⟩
theorem selection2_1059_checked : selection2_1059.check profile1059 := by decide +kernel

noncomputable def profile1060 : ProfileCell :=
  ⟨(41/110), (22/59),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 19, 19],
    [⟨42, 41⟩, ⟨4, 19⟩, ⟨34, 38⟩, ⟨26, 35⟩, ⟨15, 23⟩, ⟨7, 20⟩, ⟨37, 39⟩, ⟨29, 36⟩, ⟨18, 24⟩, ⟨10, 21⟩, ⟨40, 40⟩, ⟨2, 18⟩, ⟨32, 37⟩, ⟨24, 34⟩, ⟨21, 25⟩, ⟨13, 22⟩, ⟨5, 19⟩, ⟨35, 38⟩, ⟨27, 35⟩, ⟨16, 23⟩, ⟨8, 20⟩, ⟨38, 39⟩, ⟨30, 36⟩, ⟨22, 33⟩, ⟨19, 24⟩, ⟨11, 21⟩, ⟨41, 40⟩, ⟨3, 18⟩, ⟨33, 37⟩, ⟨25, 34⟩, ⟨14, 22⟩, ⟨6, 19⟩, ⟨36, 38⟩, ⟨28, 35⟩, ⟨17, 23⟩, ⟨9, 20⟩, ⟨39, 39⟩, ⟨1, 17⟩, ⟨43, 58⟩, ⟨31, 36⟩, ⟨23, 33⟩, ⟨20, 24⟩, ⟨12, 21⟩]⟩
theorem profile1060_checked : profile1060.check := by decide +kernel

noncomputable def selection0_1060 : Selection :=
  ⟨0, 6, 1, (1781/100), 1975, 306, -812⟩
theorem selection0_1060_checked : selection0_1060.check profile1060 := by decide +kernel

noncomputable def selection1_1060 : Selection :=
  ⟨1, -2, 5, (423/25), 139, 198, -444⟩
theorem selection1_1060_checked : selection1_1060.check profile1060 := by decide +kernel

noncomputable def selection2_1060 : Selection :=
  ⟨2, -10, 9, (839/50), 46, 122, -76⟩
theorem selection2_1060_checked : selection2_1060.check profile1060 := by decide +kernel

noncomputable def profile1061 : ProfileCell :=
  ⟨(22/59), (25/67),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 19, 19],
    [⟨12, 22⟩, ⟨4, 19⟩, ⟨42, 41⟩, ⟨34, 38⟩, ⟨26, 35⟩, ⟨15, 23⟩, ⟨7, 20⟩, ⟨37, 39⟩, ⟨29, 36⟩, ⟨18, 24⟩, ⟨10, 21⟩, ⟨2, 18⟩, ⟨40, 40⟩, ⟨32, 37⟩, ⟨24, 34⟩, ⟨21, 25⟩, ⟨13, 22⟩, ⟨5, 19⟩, ⟨35, 38⟩, ⟨27, 35⟩, ⟨16, 23⟩, ⟨8, 20⟩, ⟨38, 39⟩, ⟨30, 36⟩, ⟨22, 33⟩, ⟨19, 24⟩, ⟨11, 21⟩, ⟨3, 18⟩, ⟨41, 40⟩, ⟨33, 37⟩, ⟨25, 34⟩, ⟨14, 22⟩, ⟨6, 19⟩, ⟨36, 38⟩, ⟨28, 35⟩, ⟨17, 23⟩, ⟨9, 20⟩, ⟨1, 17⟩, ⟨39, 39⟩, ⟨31, 36⟩, ⟨43, 58⟩, ⟨23, 33⟩, ⟨20, 24⟩]⟩
theorem profile1061_checked : profile1061.check := by decide +kernel

noncomputable def selection0_1061 : Selection :=
  ⟨0, 6, 1, (441/25), 3208, 218, -576⟩
theorem selection0_1061_checked : selection0_1061.check profile1061 := by decide +kernel

noncomputable def selection1_1061 : Selection :=
  ⟨1, -2, 5, (1689/100), 227, 110, -208⟩
theorem selection1_1061_checked : selection1_1061.check profile1061 := by decide +kernel

noncomputable def selection2_1061 : Selection :=
  ⟨2, -10, 9, (839/50), 76, 34, 160⟩
theorem selection2_1061_checked : selection2_1061.check profile1061 := by decide +kernel

noncomputable def profile1062 : ProfileCell :=
  ⟨(25/67), (59/158),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 19, 19],
    [⟨20, 25⟩, ⟨12, 22⟩, ⟨4, 19⟩, ⟨42, 41⟩, ⟨34, 38⟩, ⟨26, 35⟩, ⟨15, 23⟩, ⟨7, 20⟩, ⟨37, 39⟩, ⟨29, 36⟩, ⟨18, 24⟩, ⟨10, 21⟩, ⟨2, 18⟩, ⟨40, 40⟩, ⟨32, 37⟩, ⟨24, 34⟩, ⟨21, 25⟩, ⟨13, 22⟩, ⟨5, 19⟩, ⟨35, 38⟩, ⟨27, 35⟩, ⟨16, 23⟩, ⟨8, 20⟩, ⟨38, 39⟩, ⟨30, 36⟩, ⟨22, 33⟩, ⟨19, 24⟩, ⟨11, 21⟩, ⟨3, 18⟩, ⟨41, 40⟩, ⟨33, 37⟩, ⟨25, 34⟩, ⟨14, 22⟩, ⟨6, 19⟩, ⟨36, 38⟩, ⟨28, 35⟩, ⟨17, 23⟩, ⟨9, 20⟩, ⟨1, 17⟩, ⟨39, 39⟩, ⟨31, 36⟩, ⟨23, 33⟩, ⟨43, 58⟩]⟩
theorem profile1062_checked : profile1062.check := by decide +kernel

noncomputable def selection0_1062 : Selection :=
  ⟨0, 6, 1, (436/25), 3548, 68, -174⟩
theorem selection0_1062_checked : selection0_1062.check profile1062 := by decide +kernel

noncomputable def selection1_1062 : Selection :=
  ⟨1, -2, 5, (1689/100), 254, -40, 194⟩
theorem selection1_1062_checked : selection1_1062.check profile1062 := by decide +kernel

noncomputable def selection2_1062 : Selection :=
  ⟨2, -10, 9, (841/50), 85, -116, 562⟩
theorem selection2_1062_checked : selection2_1062.check profile1062 := by decide +kernel

noncomputable def profile1063 : ProfileCell :=
  ⟨(59/158), (34/91),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 19, 19],
    [⟨43, 59⟩, ⟨20, 25⟩, ⟨12, 22⟩, ⟨4, 19⟩, ⟨42, 41⟩, ⟨34, 38⟩, ⟨26, 35⟩, ⟨15, 23⟩, ⟨7, 20⟩, ⟨37, 39⟩, ⟨29, 36⟩, ⟨18, 24⟩, ⟨10, 21⟩, ⟨2, 18⟩, ⟨40, 40⟩, ⟨32, 37⟩, ⟨24, 34⟩, ⟨21, 25⟩, ⟨13, 22⟩, ⟨5, 19⟩, ⟨35, 38⟩, ⟨27, 35⟩, ⟨16, 23⟩, ⟨8, 20⟩, ⟨38, 39⟩, ⟨30, 36⟩, ⟨22, 33⟩, ⟨19, 24⟩, ⟨11, 21⟩, ⟨3, 18⟩, ⟨41, 40⟩, ⟨33, 37⟩, ⟨25, 34⟩, ⟨14, 22⟩, ⟨6, 19⟩, ⟨36, 38⟩, ⟨28, 35⟩, ⟨17, 23⟩, ⟨9, 20⟩, ⟨1, 17⟩, ⟨39, 39⟩, ⟨31, 36⟩, ⟨23, 33⟩]⟩
theorem profile1063_checked : profile1063.check := by decide +kernel

noncomputable def selection0_1063 : Selection :=
  ⟨0, 6, 1, (1777/100), 2658, -522, 1406⟩
theorem selection0_1063_checked : selection0_1063.check profile1063 := by decide +kernel

noncomputable def selection1_1063 : Selection :=
  ⟨1, -2, 5, (341/20), 189, -748, 2090⟩
theorem selection1_1063_checked : selection1_1063.check profile1063 := by decide +kernel

noncomputable def selection2_1063 : Selection :=
  ⟨2, -10, 9, (1693/100), 63, -824, 2458⟩
theorem selection2_1063_checked : selection2_1063.check profile1063 := by decide +kernel

noncomputable def profile1064 : ProfileCell :=
  ⟨(34/91), (37/99),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 19, 19],
    [⟨23, 34⟩, ⟨20, 25⟩, ⟨43, 59⟩, ⟨12, 22⟩, ⟨4, 19⟩, ⟨42, 41⟩, ⟨34, 38⟩, ⟨26, 35⟩, ⟨15, 23⟩, ⟨7, 20⟩, ⟨37, 39⟩, ⟨29, 36⟩, ⟨18, 24⟩, ⟨10, 21⟩, ⟨2, 18⟩, ⟨40, 40⟩, ⟨32, 37⟩, ⟨24, 34⟩, ⟨21, 25⟩, ⟨13, 22⟩, ⟨5, 19⟩, ⟨35, 38⟩, ⟨27, 35⟩, ⟨16, 23⟩, ⟨8, 20⟩, ⟨38, 39⟩, ⟨30, 36⟩, ⟨22, 33⟩, ⟨19, 24⟩, ⟨11, 21⟩, ⟨3, 18⟩, ⟨41, 40⟩, ⟨33, 37⟩, ⟨25, 34⟩, ⟨14, 22⟩, ⟨6, 19⟩, ⟨36, 38⟩, ⟨28, 35⟩, ⟨17, 23⟩, ⟨9, 20⟩, ⟨1, 17⟩, ⟨39, 39⟩, ⟨31, 36⟩]⟩
theorem profile1064_checked : profile1064.check := by decide +kernel

noncomputable def selection0_1064 : Selection :=
  ⟨0, 7, 1, (448/25), 1425, -386, 1038⟩
theorem selection0_1064_checked : selection0_1064.check profile1064 := by decide +kernel

noncomputable def selection1_1064 : Selection :=
  ⟨1, -2, 5, (428/25), 101, -612, 1726⟩
theorem selection1_1064_checked : selection1_1064.check profile1064 := by decide +kernel

noncomputable def selection2_1064 : Selection :=
  ⟨2, -10, 9, (849/50), 34, -688, 2094⟩
theorem selection2_1064_checked : selection2_1064.check profile1064 := by decide +kernel

noncomputable def profile1065 : ProfileCell :=
  ⟨(37/99), (40/107),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 19, 19],
    [⟨31, 37⟩, ⟨23, 34⟩, ⟨20, 25⟩, ⟨12, 22⟩, ⟨43, 59⟩, ⟨4, 19⟩, ⟨42, 41⟩, ⟨34, 38⟩, ⟨26, 35⟩, ⟨15, 23⟩, ⟨7, 20⟩, ⟨37, 39⟩, ⟨29, 36⟩, ⟨18, 24⟩, ⟨10, 21⟩, ⟨2, 18⟩, ⟨40, 40⟩, ⟨32, 37⟩, ⟨24, 34⟩, ⟨21, 25⟩, ⟨13, 22⟩, ⟨5, 19⟩, ⟨35, 38⟩, ⟨27, 35⟩, ⟨16, 23⟩, ⟨8, 20⟩, ⟨38, 39⟩, ⟨30, 36⟩, ⟨22, 33⟩, ⟨19, 24⟩, ⟨11, 21⟩, ⟨3, 18⟩, ⟨41, 40⟩, ⟨33, 37⟩, ⟨25, 34⟩, ⟨14, 22⟩, ⟨6, 19⟩, ⟨36, 38⟩, ⟨28, 35⟩, ⟨17, 23⟩, ⟨9, 20⟩, ⟨1, 17⟩, ⟨39, 39⟩]⟩
theorem profile1065_checked : profile1065.check := by decide +kernel

noncomputable def selection0_1065 : Selection :=
  ⟨0, 7, 1, (1803/100), 1219, -312, 840⟩
theorem selection0_1065_checked : selection0_1065.check profile1065 := by decide +kernel

noncomputable def selection1_1065 : Selection :=
  ⟨1, -2, 5, (429/25), 86, -390, 1132⟩
theorem selection1_1065_checked : selection1_1065.check profile1065 := by decide +kernel

noncomputable def selection2_1065 : Selection :=
  ⟨2, -10, 9, 17, 29, -466, 1500⟩
theorem selection2_1065_checked : selection2_1065.check profile1065 := by decide +kernel

noncomputable def profile1066 : ProfileCell :=
  ⟨(40/107), (3/8),
    [19, 18, 17, 17, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 8], [17, 18, 18, 19, 19],
    [⟨39, 40⟩, ⟨31, 37⟩, ⟨23, 34⟩, ⟨20, 25⟩, ⟨12, 22⟩, ⟨4, 19⟩, ⟨43, 59⟩, ⟨42, 41⟩, ⟨34, 38⟩, ⟨26, 35⟩, ⟨15, 23⟩, ⟨7, 20⟩, ⟨37, 39⟩, ⟨29, 36⟩, ⟨18, 24⟩, ⟨10, 21⟩, ⟨2, 18⟩, ⟨40, 40⟩, ⟨32, 37⟩, ⟨24, 34⟩, ⟨21, 25⟩, ⟨13, 22⟩, ⟨5, 19⟩, ⟨35, 38⟩, ⟨27, 35⟩, ⟨16, 23⟩, ⟨8, 20⟩, ⟨38, 39⟩, ⟨30, 36⟩, ⟨22, 33⟩, ⟨19, 24⟩, ⟨11, 21⟩, ⟨3, 18⟩, ⟨41, 40⟩, ⟨33, 37⟩, ⟨25, 34⟩, ⟨14, 22⟩, ⟨6, 19⟩, ⟨36, 38⟩, ⟨28, 35⟩, ⟨17, 23⟩, ⟨9, 20⟩, ⟨1, 17⟩]⟩
theorem profile1066_checked : profile1066.check := by decide +kernel

noncomputable def selection0_1066 : Selection :=
  ⟨0, 7, 1, (1867/100), 15559, -152, 412⟩
theorem selection0_1066_checked : selection0_1066.check profile1066 := by decide +kernel

noncomputable def selection1_1066 : Selection :=
  ⟨1, -2, 5, (873/50), 1080, -230, 704⟩
theorem selection1_1066_checked : selection1_1066.check profile1066 := by decide +kernel

noncomputable def selection2_1066 : Selection :=
  ⟨2, -10, 9, (1727/100), 358, -306, 1072⟩
theorem selection2_1066_checked : selection2_1066.check profile1066 := by decide +kernel

noncomputable def profile1067 : ProfileCell :=
  ⟨(3/8), (41/109),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨1, 18⟩, ⟨9, 21⟩, ⟨17, 24⟩, ⟨28, 36⟩, ⟨36, 39⟩, ⟨4, 19⟩, ⟨12, 22⟩, ⟨20, 25⟩, ⟨23, 34⟩, ⟨31, 37⟩, ⟨39, 40⟩, ⟨7, 20⟩, ⟨15, 23⟩, ⟨26, 35⟩, ⟨34, 38⟩, ⟨42, 41⟩, ⟨43, 59⟩, ⟨2, 18⟩, ⟨10, 21⟩, ⟨18, 24⟩, ⟨29, 36⟩, ⟨37, 39⟩, ⟨5, 19⟩, ⟨13, 22⟩, ⟨21, 25⟩, ⟨24, 34⟩, ⟨32, 37⟩, ⟨40, 40⟩, ⟨8, 20⟩, ⟨16, 23⟩, ⟨27, 35⟩, ⟨35, 38⟩, ⟨3, 18⟩, ⟨11, 21⟩, ⟨19, 24⟩, ⟨22, 33⟩, ⟨30, 36⟩, ⟨38, 39⟩, ⟨6, 19⟩, ⟨14, 22⟩, ⟨25, 34⟩, ⟨33, 37⟩, ⟨41, 40⟩]⟩
theorem profile1067_checked : profile1067.check := by decide +kernel

noncomputable def selection0_1067 : Selection :=
  ⟨0, 5, 1, (1621/100), 13179, -377, 1012⟩
theorem selection0_1067_checked : selection0_1067.check profile1067 := by decide +kernel

noncomputable def selection1_1067 : Selection :=
  ⟨1, -4, 5, (1407/100), 853, -518, 1472⟩
theorem selection1_1067_checked : selection1_1067.check profile1067 := by decide +kernel

noncomputable def selection2_1067 : Selection :=
  ⟨2, -12, 9, (1371/100), 279, -594, 1840⟩
theorem selection2_1067_checked : selection2_1067.check profile1067 := by decide +kernel

noncomputable def profile1068 : ProfileCell :=
  ⟨(41/109), (38/101),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨41, 41⟩, ⟨1, 18⟩, ⟨9, 21⟩, ⟨17, 24⟩, ⟨28, 36⟩, ⟨36, 39⟩, ⟨4, 19⟩, ⟨12, 22⟩, ⟨20, 25⟩, ⟨23, 34⟩, ⟨31, 37⟩, ⟨39, 40⟩, ⟨7, 20⟩, ⟨15, 23⟩, ⟨26, 35⟩, ⟨34, 38⟩, ⟨42, 41⟩, ⟨2, 18⟩, ⟨43, 59⟩, ⟨10, 21⟩, ⟨18, 24⟩, ⟨29, 36⟩, ⟨37, 39⟩, ⟨5, 19⟩, ⟨13, 22⟩, ⟨21, 25⟩, ⟨24, 34⟩, ⟨32, 37⟩, ⟨40, 40⟩, ⟨8, 20⟩, ⟨16, 23⟩, ⟨27, 35⟩, ⟨35, 38⟩, ⟨3, 18⟩, ⟨11, 21⟩, ⟨19, 24⟩, ⟨22, 33⟩, ⟨30, 36⟩, ⟨38, 39⟩, ⟨6, 19⟩, ⟨14, 22⟩, ⟨25, 34⟩, ⟨33, 37⟩]⟩
theorem profile1068_checked : profile1068.check := by decide +kernel

noncomputable def selection0_1068 : Selection :=
  ⟨0, 5, 1, (407/25), 1045, -213, 576⟩
theorem selection0_1068_checked : selection0_1068.check profile1068 := by decide +kernel

noncomputable def selection1_1068 : Selection :=
  ⟨1, -3, 5, (141/10), 68, -279, 822⟩
theorem selection1_1068_checked : selection1_1068.check profile1068 := by decide +kernel

noncomputable def selection2_1068 : Selection :=
  ⟨2, -11, 9, (687/50), 23, -359, 1190⟩
theorem selection2_1068_checked : selection2_1068.check profile1068 := by decide +kernel

noncomputable def profile1069 : ProfileCell :=
  ⟨(38/101), (35/93),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨33, 38⟩, ⟨41, 41⟩, ⟨1, 18⟩, ⟨9, 21⟩, ⟨17, 24⟩, ⟨28, 36⟩, ⟨36, 39⟩, ⟨4, 19⟩, ⟨12, 22⟩, ⟨20, 25⟩, ⟨23, 34⟩, ⟨31, 37⟩, ⟨39, 40⟩, ⟨7, 20⟩, ⟨15, 23⟩, ⟨26, 35⟩, ⟨34, 38⟩, ⟨42, 41⟩, ⟨2, 18⟩, ⟨10, 21⟩, ⟨43, 59⟩, ⟨18, 24⟩, ⟨29, 36⟩, ⟨37, 39⟩, ⟨5, 19⟩, ⟨13, 22⟩, ⟨21, 25⟩, ⟨24, 34⟩, ⟨32, 37⟩, ⟨40, 40⟩, ⟨8, 20⟩, ⟨16, 23⟩, ⟨27, 35⟩, ⟨35, 38⟩, ⟨3, 18⟩, ⟨11, 21⟩, ⟨19, 24⟩, ⟨22, 33⟩, ⟨30, 36⟩, ⟨38, 39⟩, ⟨6, 19⟩, ⟨14, 22⟩, ⟨25, 34⟩]⟩
theorem profile1069_checked : profile1069.check := by decide +kernel

noncomputable def selection0_1069 : Selection :=
  ⟨0, 5, 1, (163/10), 1226, -61, 172⟩
theorem selection0_1069_checked : selection0_1069.check profile1069 := by decide +kernel

noncomputable def selection1_1069 : Selection :=
  ⟨1, -3, 5, (353/25), 80, -127, 418⟩
theorem selection1_1069_checked : selection1_1069.check profile1069 := by decide +kernel

noncomputable def selection2_1069 : Selection :=
  ⟨2, -11, 9, (55/4), 26, -207, 786⟩
theorem selection2_1069_checked : selection2_1069.check profile1069 := by decide +kernel

noncomputable def profile1070 : ProfileCell :=
  ⟨(35/93), (23/61),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨25, 35⟩, ⟨33, 38⟩, ⟨41, 41⟩, ⟨1, 18⟩, ⟨9, 21⟩, ⟨17, 24⟩, ⟨28, 36⟩, ⟨36, 39⟩, ⟨4, 19⟩, ⟨12, 22⟩, ⟨20, 25⟩, ⟨23, 34⟩, ⟨31, 37⟩, ⟨39, 40⟩, ⟨7, 20⟩, ⟨15, 23⟩, ⟨26, 35⟩, ⟨34, 38⟩, ⟨42, 41⟩, ⟨2, 18⟩, ⟨10, 21⟩, ⟨18, 24⟩, ⟨43, 59⟩, ⟨29, 36⟩, ⟨37, 39⟩, ⟨5, 19⟩, ⟨13, 22⟩, ⟨21, 25⟩, ⟨24, 34⟩, ⟨32, 37⟩, ⟨40, 40⟩, ⟨8, 20⟩, ⟨16, 23⟩, ⟨27, 35⟩, ⟨35, 38⟩, ⟨3, 18⟩, ⟨11, 21⟩, ⟨19, 24⟩, ⟨22, 33⟩, ⟨30, 36⟩, ⟨38, 39⟩, ⟨6, 19⟩, ⟨14, 22⟩]⟩
theorem profile1070_checked : profile1070.check := by decide +kernel

noncomputable def selection0_1070 : Selection :=
  ⟨0, 5, 1, (163/10), 8100, 149, -386⟩
theorem selection0_1070_checked : selection0_1070.check profile1070 := by decide +kernel

noncomputable def selection1_1070 : Selection :=
  ⟨1, -3, 5, (353/25), 526, 83, -140⟩
theorem selection1_1070_checked : selection1_1070.check profile1070 := by decide +kernel

noncomputable def selection2_1070 : Selection :=
  ⟨2, -11, 9, (1379/100), 173, 3, 228⟩
theorem selection2_1070_checked : selection2_1070.check profile1070 := by decide +kernel

noncomputable def profile1071 : ProfileCell :=
  ⟨(23/61), (20/53),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨14, 23⟩, ⟨25, 35⟩, ⟨33, 38⟩, ⟨1, 18⟩, ⟨41, 41⟩, ⟨9, 21⟩, ⟨17, 24⟩, ⟨28, 36⟩, ⟨36, 39⟩, ⟨4, 19⟩, ⟨12, 22⟩, ⟨20, 25⟩, ⟨23, 34⟩, ⟨31, 37⟩, ⟨39, 40⟩, ⟨7, 20⟩, ⟨15, 23⟩, ⟨26, 35⟩, ⟨34, 38⟩, ⟨2, 18⟩, ⟨42, 41⟩, ⟨10, 21⟩, ⟨18, 24⟩, ⟨29, 36⟩, ⟨43, 59⟩, ⟨37, 39⟩, ⟨5, 19⟩, ⟨13, 22⟩, ⟨21, 25⟩, ⟨24, 34⟩, ⟨32, 37⟩, ⟨40, 40⟩, ⟨8, 20⟩, ⟨16, 23⟩, ⟨27, 35⟩, ⟨35, 38⟩, ⟨3, 18⟩, ⟨11, 21⟩, ⟨19, 24⟩, ⟨22, 33⟩, ⟨30, 36⟩, ⟨38, 39⟩, ⟨6, 19⟩]⟩
theorem profile1071_checked : profile1071.check := by decide +kernel

noncomputable def selection0_1071 : Selection :=
  ⟨0, 5, 1, (797/50), 3466, 11, -20⟩
theorem selection0_1071_checked : selection0_1071.check profile1071 := by decide +kernel

noncomputable def selection1_1071 : Selection :=
  ⟨1, -3, 5, (353/25), 231, -101, 348⟩
theorem selection1_1071_checked : selection1_1071.check profile1071 := by decide +kernel

noncomputable def selection2_1071 : Selection :=
  ⟨2, -11, 9, (1383/100), 76, -181, 716⟩
theorem selection2_1071_checked : selection2_1071.check profile1071 := by decide +kernel

noncomputable def profile1072 : ProfileCell :=
  ⟨(20/53), (37/98),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨6, 20⟩, ⟨38, 40⟩, ⟨14, 23⟩, ⟨25, 35⟩, ⟨1, 18⟩, ⟨33, 38⟩, ⟨9, 21⟩, ⟨41, 41⟩, ⟨17, 24⟩, ⟨28, 36⟩, ⟨4, 19⟩, ⟨36, 39⟩, ⟨12, 22⟩, ⟨20, 25⟩, ⟨23, 34⟩, ⟨31, 37⟩, ⟨7, 20⟩, ⟨39, 40⟩, ⟨15, 23⟩, ⟨26, 35⟩, ⟨2, 18⟩, ⟨34, 38⟩, ⟨10, 21⟩, ⟨42, 41⟩, ⟨18, 24⟩, ⟨29, 36⟩, ⟨5, 19⟩, ⟨37, 39⟩, ⟨43, 59⟩, ⟨13, 22⟩, ⟨21, 25⟩, ⟨24, 34⟩, ⟨32, 37⟩, ⟨8, 20⟩, ⟨40, 40⟩, ⟨16, 23⟩, ⟨27, 35⟩, ⟨3, 18⟩, ⟨35, 38⟩, ⟨11, 21⟩, ⟨19, 24⟩, ⟨22, 33⟩, ⟨30, 36⟩]⟩
theorem profile1072_checked : profile1072.check := by decide +kernel

noncomputable def selection0_1072 : Selection :=
  ⟨0, 5, 1, (1593/100), 2153, 51, -126⟩
theorem selection0_1072_checked : selection0_1072.check profile1072 := by decide +kernel

noncomputable def selection1_1072 : Selection :=
  ⟨1, -3, 5, (707/50), 144, -61, 242⟩
theorem selection1_1072_checked : selection1_1072.check profile1072 := by decide +kernel

noncomputable def selection2_1072 : Selection :=
  ⟨2, -11, 9, (693/50), 48, -141, 610⟩
theorem selection2_1072_checked : selection2_1072.check profile1072 := by decide +kernel

noncomputable def profile1073 : ProfileCell :=
  ⟨(37/98), (17/45),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨30, 37⟩, ⟨6, 20⟩, ⟨38, 40⟩, ⟨14, 23⟩, ⟨25, 35⟩, ⟨1, 18⟩, ⟨33, 38⟩, ⟨9, 21⟩, ⟨41, 41⟩, ⟨17, 24⟩, ⟨28, 36⟩, ⟨4, 19⟩, ⟨36, 39⟩, ⟨12, 22⟩, ⟨20, 25⟩, ⟨23, 34⟩, ⟨31, 37⟩, ⟨7, 20⟩, ⟨39, 40⟩, ⟨15, 23⟩, ⟨26, 35⟩, ⟨2, 18⟩, ⟨34, 38⟩, ⟨10, 21⟩, ⟨42, 41⟩, ⟨18, 24⟩, ⟨29, 36⟩, ⟨5, 19⟩, ⟨37, 39⟩, ⟨13, 22⟩, ⟨43, 59⟩, ⟨21, 25⟩, ⟨24, 34⟩, ⟨32, 37⟩, ⟨8, 20⟩, ⟨40, 40⟩, ⟨16, 23⟩, ⟨27, 35⟩, ⟨3, 18⟩, ⟨35, 38⟩, ⟨11, 21⟩, ⟨19, 24⟩, ⟨22, 33⟩]⟩
theorem profile1073_checked : profile1073.check := by decide +kernel

noncomputable def selection0_1073 : Selection :=
  ⟨0, 5, 1, (159/10), 2528, 273, -714⟩
theorem selection0_1073_checked : selection0_1073.check profile1073 := by decide +kernel

noncomputable def selection1_1073 : Selection :=
  ⟨1, -3, 5, (707/50), 169, 161, -346⟩
theorem selection1_1073_checked : selection1_1073.check profile1073 := by decide +kernel

noncomputable def selection2_1073 : Selection :=
  ⟨2, -11, 9, (693/50), 56, 81, 22⟩
theorem selection2_1073_checked : selection2_1073.check profile1073 := by decide +kernel

noncomputable def profile1074 : ProfileCell :=
  ⟨(17/45), (14/37),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨22, 34⟩, ⟨6, 20⟩, ⟨30, 37⟩, ⟨14, 23⟩, ⟨38, 40⟩, ⟨1, 18⟩, ⟨25, 35⟩, ⟨9, 21⟩, ⟨33, 38⟩, ⟨17, 24⟩, ⟨41, 41⟩, ⟨4, 19⟩, ⟨28, 36⟩, ⟨12, 22⟩, ⟨36, 39⟩, ⟨20, 25⟩, ⟨23, 34⟩, ⟨7, 20⟩, ⟨31, 37⟩, ⟨15, 23⟩, ⟨39, 40⟩, ⟨2, 18⟩, ⟨26, 35⟩, ⟨10, 21⟩, ⟨34, 38⟩, ⟨18, 24⟩, ⟨42, 41⟩, ⟨5, 19⟩, ⟨29, 36⟩, ⟨13, 22⟩, ⟨37, 39⟩, ⟨21, 25⟩, ⟨43, 59⟩, ⟨24, 34⟩, ⟨8, 20⟩, ⟨32, 37⟩, ⟨16, 23⟩, ⟨40, 40⟩, ⟨3, 18⟩, ⟨27, 35⟩, ⟨11, 21⟩, ⟨35, 38⟩, ⟨19, 24⟩]⟩
theorem profile1074_checked : profile1074.check := by decide +kernel

noncomputable def selection0_1074 : Selection :=
  ⟨0, 5, 1, (392/25), 6589, 171, -444⟩
theorem selection0_1074_checked : selection0_1074.check profile1074 := by decide +kernel

noncomputable def selection1_1074 : Selection :=
  ⟨1, -3, 5, (1411/100), 447, 59, -76⟩
theorem selection1_1074_checked : selection1_1074.check profile1074 := by decide +kernel

noncomputable def selection2_1074 : Selection :=
  ⟨2, -11, 9, (139/10), 148, -21, 292⟩
theorem selection2_1074_checked : selection2_1074.check profile1074 := by decide +kernel

noncomputable def profile1075 : ProfileCell :=
  ⟨(14/37), (39/103),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨6, 20⟩, ⟨22, 34⟩, ⟨14, 23⟩, ⟨30, 37⟩, ⟨38, 40⟩, ⟨1, 18⟩, ⟨9, 21⟩, ⟨25, 35⟩, ⟨17, 24⟩, ⟨33, 38⟩, ⟨41, 41⟩, ⟨4, 19⟩, ⟨12, 22⟩, ⟨28, 36⟩, ⟨20, 25⟩, ⟨36, 39⟩, ⟨7, 20⟩, ⟨23, 34⟩, ⟨15, 23⟩, ⟨31, 37⟩, ⟨39, 40⟩, ⟨2, 18⟩, ⟨10, 21⟩, ⟨26, 35⟩, ⟨18, 24⟩, ⟨34, 38⟩, ⟨42, 41⟩, ⟨5, 19⟩, ⟨13, 22⟩, ⟨29, 36⟩, ⟨21, 25⟩, ⟨37, 39⟩, ⟨43, 59⟩, ⟨8, 20⟩, ⟨24, 34⟩, ⟨16, 23⟩, ⟨32, 37⟩, ⟨40, 40⟩, ⟨3, 18⟩, ⟨11, 21⟩, ⟨27, 35⟩, ⟨19, 24⟩, ⟨35, 38⟩]⟩
theorem profile1075_checked : profile1075.check := by decide +kernel

noncomputable def selection0_1075 : Selection :=
  ⟨0, 5, 1, (1533/100), 2808, 115, -296⟩
theorem selection0_1075_checked : selection0_1075.check profile1075 := by decide +kernel

noncomputable def selection1_1075 : Selection :=
  ⟨1, -3, 5, (141/10), 195, 3, 72⟩
theorem selection1_1075_checked : selection1_1075.check profile1075 := by decide +kernel

noncomputable def selection2_1075 : Selection :=
  ⟨2, -11, 9, (348/25), 65, -77, 440⟩
theorem selection2_1075_checked : selection2_1075.check profile1075 := by decide +kernel

noncomputable def profile1076 : ProfileCell :=
  ⟨(39/103), (25/66),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨35, 39⟩, ⟨6, 20⟩, ⟨22, 34⟩, ⟨14, 23⟩, ⟨30, 37⟩, ⟨38, 40⟩, ⟨1, 18⟩, ⟨9, 21⟩, ⟨25, 35⟩, ⟨17, 24⟩, ⟨33, 38⟩, ⟨41, 41⟩, ⟨4, 19⟩, ⟨12, 22⟩, ⟨28, 36⟩, ⟨20, 25⟩, ⟨36, 39⟩, ⟨7, 20⟩, ⟨23, 34⟩, ⟨15, 23⟩, ⟨31, 37⟩, ⟨39, 40⟩, ⟨2, 18⟩, ⟨10, 21⟩, ⟨26, 35⟩, ⟨18, 24⟩, ⟨34, 38⟩, ⟨42, 41⟩, ⟨5, 19⟩, ⟨13, 22⟩, ⟨29, 36⟩, ⟨21, 25⟩, ⟨37, 39⟩, ⟨8, 20⟩, ⟨43, 59⟩, ⟨24, 34⟩, ⟨16, 23⟩, ⟨32, 37⟩, ⟨40, 40⟩, ⟨3, 18⟩, ⟨11, 21⟩, ⟨27, 35⟩, ⟨19, 24⟩]⟩
theorem profile1076_checked : profile1076.check := by decide +kernel

noncomputable def selection0_1076 : Selection :=
  ⟨0, 5, 1, (761/50), 1562, 349, -914⟩
theorem selection0_1076_checked : selection0_1076.check profile1076 := by decide +kernel

noncomputable def selection1_1076 : Selection :=
  ⟨1, -3, 5, (141/10), 110, 237, -546⟩
theorem selection1_1076_checked : selection1_1076.check profile1076 := by decide +kernel

noncomputable def selection2_1076 : Selection :=
  ⟨2, -11, 9, (348/25), 37, 157, -178⟩
theorem selection2_1076_checked : selection2_1076.check profile1076 := by decide +kernel

noncomputable def profile1077 : ProfileCell :=
  ⟨(25/66), (36/95),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨19, 25⟩, ⟨35, 39⟩, ⟨6, 20⟩, ⟨22, 34⟩, ⟨14, 23⟩, ⟨30, 37⟩, ⟨38, 40⟩, ⟨1, 18⟩, ⟨9, 21⟩, ⟨25, 35⟩, ⟨17, 24⟩, ⟨33, 38⟩, ⟨41, 41⟩, ⟨4, 19⟩, ⟨12, 22⟩, ⟨28, 36⟩, ⟨20, 25⟩, ⟨36, 39⟩, ⟨7, 20⟩, ⟨23, 34⟩, ⟨15, 23⟩, ⟨31, 37⟩, ⟨39, 40⟩, ⟨2, 18⟩, ⟨10, 21⟩, ⟨26, 35⟩, ⟨18, 24⟩, ⟨34, 38⟩, ⟨42, 41⟩, ⟨5, 19⟩, ⟨13, 22⟩, ⟨29, 36⟩, ⟨21, 25⟩, ⟨37, 39⟩, ⟨8, 20⟩, ⟨24, 34⟩, ⟨43, 59⟩, ⟨16, 23⟩, ⟨32, 37⟩, ⟨40, 40⟩, ⟨3, 18⟩, ⟨11, 21⟩, ⟨27, 35⟩]⟩
theorem profile1077_checked : profile1077.check := by decide +kernel

noncomputable def selection0_1077 : Selection :=
  ⟨0, 5, 1, (376/25), 1672, 199, -518⟩
theorem selection0_1077_checked : selection0_1077.check profile1077 := by decide +kernel

noncomputable def selection1_1077 : Selection :=
  ⟨1, -3, 5, (1407/100), 119, 87, -150⟩
theorem selection1_1077_checked : selection1_1077.check profile1077 := by decide +kernel

noncomputable def selection2_1077 : Selection :=
  ⟨2, -11, 9, (348/25), 40, 7, 218⟩
theorem selection2_1077_checked : selection2_1077.check profile1077 := by decide +kernel

noncomputable def profile1078 : ProfileCell :=
  ⟨(36/95), (11/29),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨27, 36⟩, ⟨19, 25⟩, ⟨35, 39⟩, ⟨6, 20⟩, ⟨22, 34⟩, ⟨14, 23⟩, ⟨30, 37⟩, ⟨38, 40⟩, ⟨1, 18⟩, ⟨9, 21⟩, ⟨25, 35⟩, ⟨17, 24⟩, ⟨33, 38⟩, ⟨41, 41⟩, ⟨4, 19⟩, ⟨12, 22⟩, ⟨28, 36⟩, ⟨20, 25⟩, ⟨36, 39⟩, ⟨7, 20⟩, ⟨23, 34⟩, ⟨15, 23⟩, ⟨31, 37⟩, ⟨39, 40⟩, ⟨2, 18⟩, ⟨10, 21⟩, ⟨26, 35⟩, ⟨18, 24⟩, ⟨34, 38⟩, ⟨42, 41⟩, ⟨5, 19⟩, ⟨13, 22⟩, ⟨29, 36⟩, ⟨21, 25⟩, ⟨37, 39⟩, ⟨8, 20⟩, ⟨24, 34⟩, ⟨16, 23⟩, ⟨43, 59⟩, ⟨32, 37⟩, ⟨40, 40⟩, ⟨3, 18⟩, ⟨11, 21⟩]⟩
theorem profile1078_checked : profile1078.check := by decide +kernel

noncomputable def selection0_1078 : Selection :=
  ⟨0, 5, 1, (747/50), 3773, 415, -1088⟩
theorem selection0_1078_checked : selection0_1078.check profile1078 := by decide +kernel

noncomputable def selection1_1078 : Selection :=
  ⟨1, -3, 5, (703/50), 269, 303, -720⟩
theorem selection1_1078_checked : selection1_1078.check profile1078 := by decide +kernel

noncomputable def selection2_1078 : Selection :=
  ⟨2, -11, 9, (348/25), 90, 223, -352⟩
theorem selection2_1078_checked : selection2_1078.check profile1078 := by decide +kernel

noncomputable def profile1079 : ProfileCell :=
  ⟨(11/29), (41/108),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨11, 22⟩, ⟨19, 25⟩, ⟨27, 36⟩, ⟨35, 39⟩, ⟨6, 20⟩, ⟨14, 23⟩, ⟨22, 34⟩, ⟨30, 37⟩, ⟨1, 18⟩, ⟨38, 40⟩, ⟨9, 21⟩, ⟨17, 24⟩, ⟨25, 35⟩, ⟨33, 38⟩, ⟨4, 19⟩, ⟨41, 41⟩, ⟨12, 22⟩, ⟨20, 25⟩, ⟨28, 36⟩, ⟨36, 39⟩, ⟨7, 20⟩, ⟨15, 23⟩, ⟨23, 34⟩, ⟨31, 37⟩, ⟨2, 18⟩, ⟨39, 40⟩, ⟨10, 21⟩, ⟨18, 24⟩, ⟨26, 35⟩, ⟨34, 38⟩, ⟨5, 19⟩, ⟨42, 41⟩, ⟨13, 22⟩, ⟨21, 25⟩, ⟨29, 36⟩, ⟨37, 39⟩, ⟨8, 20⟩, ⟨16, 23⟩, ⟨24, 34⟩, ⟨32, 37⟩, ⟨43, 59⟩, ⟨3, 18⟩, ⟨40, 40⟩]⟩
theorem profile1079_checked : profile1079.check := by decide +kernel

noncomputable def selection0_1079 : Selection :=
  ⟨0, 5, 1, (1441/100), 3196, 173, -450⟩
theorem selection0_1079_checked : selection0_1079.check profile1079 := by decide +kernel

noncomputable def selection1_1079 : Selection :=
  ⟨1, -3, 5, (1397/100), 235, 61, -82⟩
theorem selection1_1079_checked : selection1_1079.check profile1079 := by decide +kernel

noncomputable def selection2_1079 : Selection :=
  ⟨2, -11, 9, (348/25), 79, -19, 286⟩
theorem selection2_1079_checked : selection2_1079.check profile1079 := by decide +kernel

noncomputable def profile1080 : ProfileCell :=
  ⟨(41/108), (30/79),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨40, 41⟩, ⟨11, 22⟩, ⟨19, 25⟩, ⟨27, 36⟩, ⟨35, 39⟩, ⟨6, 20⟩, ⟨14, 23⟩, ⟨22, 34⟩, ⟨30, 37⟩, ⟨1, 18⟩, ⟨38, 40⟩, ⟨9, 21⟩, ⟨17, 24⟩, ⟨25, 35⟩, ⟨33, 38⟩, ⟨4, 19⟩, ⟨41, 41⟩, ⟨12, 22⟩, ⟨20, 25⟩, ⟨28, 36⟩, ⟨36, 39⟩, ⟨7, 20⟩, ⟨15, 23⟩, ⟨23, 34⟩, ⟨31, 37⟩, ⟨2, 18⟩, ⟨39, 40⟩, ⟨10, 21⟩, ⟨18, 24⟩, ⟨26, 35⟩, ⟨34, 38⟩, ⟨5, 19⟩, ⟨42, 41⟩, ⟨13, 22⟩, ⟨21, 25⟩, ⟨29, 36⟩, ⟨37, 39⟩, ⟨8, 20⟩, ⟨16, 23⟩, ⟨24, 34⟩, ⟨32, 37⟩, ⟨3, 18⟩, ⟨43, 59⟩]⟩
theorem profile1080_checked : profile1080.check := by decide +kernel

noncomputable def selection0_1080 : Selection :=
  ⟨0, 5, 1, (711/50), 1157, 419, -1098⟩
theorem selection0_1080_checked : selection0_1080.check profile1080 := by decide +kernel

noncomputable def selection1_1080 : Selection :=
  ⟨1, -3, 5, (349/25), 86, 307, -730⟩
theorem selection1_1080_checked : selection1_1080.check profile1080 := by decide +kernel

noncomputable def selection2_1080 : Selection :=
  ⟨2, -11, 9, (348/25), 29, 227, -362⟩
theorem selection2_1080_checked : selection2_1080.check profile1080 := by decide +kernel

noncomputable def profile1081 : ProfileCell :=
  ⟨(30/79), (19/50),
    [19, 18, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 18, 19, 19],
    [⟨43, 60⟩, ⟨40, 41⟩, ⟨11, 22⟩, ⟨19, 25⟩, ⟨27, 36⟩, ⟨35, 39⟩, ⟨6, 20⟩, ⟨14, 23⟩, ⟨22, 34⟩, ⟨30, 37⟩, ⟨1, 18⟩, ⟨38, 40⟩, ⟨9, 21⟩, ⟨17, 24⟩, ⟨25, 35⟩, ⟨33, 38⟩, ⟨4, 19⟩, ⟨41, 41⟩, ⟨12, 22⟩, ⟨20, 25⟩, ⟨28, 36⟩, ⟨36, 39⟩, ⟨7, 20⟩, ⟨15, 23⟩, ⟨23, 34⟩, ⟨31, 37⟩, ⟨2, 18⟩, ⟨39, 40⟩, ⟨10, 21⟩, ⟨18, 24⟩, ⟨26, 35⟩, ⟨34, 38⟩, ⟨5, 19⟩, ⟨42, 41⟩, ⟨13, 22⟩, ⟨21, 25⟩, ⟨29, 36⟩, ⟨37, 39⟩, ⟨8, 20⟩, ⟨16, 23⟩, ⟨24, 34⟩, ⟨32, 37⟩, ⟨3, 18⟩]⟩
theorem profile1081_checked : profile1081.check := by decide +kernel

noncomputable def selection0_1081 : Selection :=
  ⟨0, 5, 1, (358/25), 2513, -301, 798⟩
theorem selection0_1081_checked : selection0_1081.check profile1081 := by decide +kernel

noncomputable def selection1_1081 : Selection :=
  ⟨1, -3, 5, (281/20), 187, -473, 1324⟩
theorem selection1_1081_checked : selection1_1081.check profile1081 := by decide +kernel

noncomputable def selection2_1081 : Selection :=
  ⟨2, -11, 9, 14, 63, -553, 1692⟩
theorem selection2_1081_checked : selection2_1081.check profile1081 := by decide +kernel

noncomputable def profile1082 : ProfileCell :=
  ⟨(19/50), (35/92),
    [19, 19, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 19, 19, 19],
    [⟨3, 19⟩, ⟨32, 38⟩, ⟨11, 22⟩, ⟨40, 41⟩, ⟨43, 60⟩, ⟨19, 25⟩, ⟨27, 36⟩, ⟨6, 20⟩, ⟨35, 39⟩, ⟨14, 23⟩, ⟨22, 34⟩, ⟨1, 18⟩, ⟨30, 37⟩, ⟨9, 21⟩, ⟨38, 40⟩, ⟨17, 24⟩, ⟨25, 35⟩, ⟨4, 19⟩, ⟨33, 38⟩, ⟨12, 22⟩, ⟨41, 41⟩, ⟨20, 25⟩, ⟨28, 36⟩, ⟨7, 20⟩, ⟨36, 39⟩, ⟨15, 23⟩, ⟨23, 34⟩, ⟨2, 18⟩, ⟨31, 37⟩, ⟨10, 21⟩, ⟨39, 40⟩, ⟨18, 24⟩, ⟨26, 35⟩, ⟨5, 19⟩, ⟨34, 38⟩, ⟨13, 22⟩, ⟨42, 41⟩, ⟨21, 25⟩, ⟨29, 36⟩, ⟨8, 20⟩, ⟨37, 39⟩, ⟨16, 23⟩, ⟨24, 34⟩]⟩
theorem profile1082_checked : profile1082.check := by decide +kernel

noncomputable def selection0_1082 : Selection :=
  ⟨0, 6, 1, (1703/100), 5122, -472, 1248⟩
theorem selection0_1082_checked : selection0_1082.check profile1082 := by decide +kernel

noncomputable def selection1_1082 : Selection :=
  ⟨1, -2, 5, (1631/100), 373, -606, 1674⟩
theorem selection1_1082_checked : selection1_1082.check profile1082 := by decide +kernel

noncomputable def selection2_1082 : Selection :=
  ⟨2, -10, 9, (809/50), 125, -686, 2042⟩
theorem selection2_1082_checked : selection2_1082.check profile1082 := by decide +kernel

noncomputable def profile1083 : ProfileCell :=
  ⟨(35/92), (8/21),
    [19, 19, 18, 17, 16, 15, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 19, 19, 19],
    [⟨24, 35⟩, ⟨3, 19⟩, ⟨32, 38⟩, ⟨11, 22⟩, ⟨40, 41⟩, ⟨19, 25⟩, ⟨43, 60⟩, ⟨27, 36⟩, ⟨6, 20⟩, ⟨35, 39⟩, ⟨14, 23⟩, ⟨22, 34⟩, ⟨1, 18⟩, ⟨30, 37⟩, ⟨9, 21⟩, ⟨38, 40⟩, ⟨17, 24⟩, ⟨25, 35⟩, ⟨4, 19⟩, ⟨33, 38⟩, ⟨12, 22⟩, ⟨41, 41⟩, ⟨20, 25⟩, ⟨28, 36⟩, ⟨7, 20⟩, ⟨36, 39⟩, ⟨15, 23⟩, ⟨23, 34⟩, ⟨2, 18⟩, ⟨31, 37⟩, ⟨10, 21⟩, ⟨39, 40⟩, ⟨18, 24⟩, ⟨26, 35⟩, ⟨5, 19⟩, ⟨34, 38⟩, ⟨13, 22⟩, ⟨42, 41⟩, ⟨21, 25⟩, ⟨29, 36⟩, ⟨8, 20⟩, ⟨37, 39⟩, ⟨16, 23⟩]⟩
theorem profile1083_checked : profile1083.check := by decide +kernel

noncomputable def selection0_1083 : Selection :=
  ⟨0, 6, 1, (1763/100), 6297, -332, 880⟩
theorem selection0_1083_checked : selection0_1083.check profile1083 := by decide +kernel

noncomputable def selection1_1083 : Selection :=
  ⟨1, -2, 5, (413/25), 449, -396, 1122⟩
theorem selection1_1083_checked : selection1_1083.check profile1083 := by decide +kernel

noncomputable def selection2_1083 : Selection :=
  ⟨2, -10, 9, (817/50), 150, -476, 1490⟩
theorem selection2_1083_checked : selection2_1083.check profile1083 := by decide +kernel

noncomputable def profile1084 : ProfileCell :=
  ⟨(8/21), (37/97),
    [19, 19, 18, 17, 16, 16, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 19, 19, 19],
    [⟨16, 24⟩, ⟨37, 40⟩, ⟨3, 19⟩, ⟨24, 35⟩, ⟨11, 22⟩, ⟨32, 38⟩, ⟨19, 25⟩, ⟨40, 41⟩, ⟨6, 20⟩, ⟨27, 36⟩, ⟨43, 60⟩, ⟨14, 23⟩, ⟨35, 39⟩, ⟨1, 18⟩, ⟨22, 34⟩, ⟨9, 21⟩, ⟨30, 37⟩, ⟨17, 24⟩, ⟨38, 40⟩, ⟨4, 19⟩, ⟨25, 35⟩, ⟨12, 22⟩, ⟨33, 38⟩, ⟨20, 25⟩, ⟨41, 41⟩, ⟨7, 20⟩, ⟨28, 36⟩, ⟨15, 23⟩, ⟨36, 39⟩, ⟨2, 18⟩, ⟨23, 34⟩, ⟨10, 21⟩, ⟨31, 37⟩, ⟨18, 24⟩, ⟨39, 40⟩, ⟨5, 19⟩, ⟨26, 35⟩, ⟨13, 22⟩, ⟨34, 38⟩, ⟨21, 25⟩, ⟨42, 41⟩, ⟨8, 20⟩, ⟨29, 36⟩]⟩
theorem profile1084_checked : profile1084.check := by decide +kernel

noncomputable def selection0_1084 : Selection :=
  ⟨0, 6, 1, (1617/100), 5463, -390, 1028⟩
theorem selection0_1084_checked : selection0_1084.check profile1084 := by decide +kernel

noncomputable def selection1_1084 : Selection :=
  ⟨1, -3, 5, (1471/100), 379, -380, 1080⟩
theorem selection1_1084_checked : selection1_1084.check profile1084 := by decide +kernel

noncomputable def selection2_1084 : Selection :=
  ⟨2, -11, 9, (1449/100), 126, -460, 1448⟩
theorem selection2_1084_checked : selection2_1084.check profile1084 := by decide +kernel

noncomputable def profile1085 : ProfileCell :=
  ⟨(37/97), (21/55),
    [19, 19, 18, 17, 16, 16, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 19, 19, 19],
    [⟨29, 37⟩, ⟨16, 24⟩, ⟨37, 40⟩, ⟨3, 19⟩, ⟨24, 35⟩, ⟨11, 22⟩, ⟨32, 38⟩, ⟨19, 25⟩, ⟨40, 41⟩, ⟨6, 20⟩, ⟨27, 36⟩, ⟨14, 23⟩, ⟨43, 60⟩, ⟨35, 39⟩, ⟨1, 18⟩, ⟨22, 34⟩, ⟨9, 21⟩, ⟨30, 37⟩, ⟨17, 24⟩, ⟨38, 40⟩, ⟨4, 19⟩, ⟨25, 35⟩, ⟨12, 22⟩, ⟨33, 38⟩, ⟨20, 25⟩, ⟨41, 41⟩, ⟨7, 20⟩, ⟨28, 36⟩, ⟨15, 23⟩, ⟨36, 39⟩, ⟨2, 18⟩, ⟨23, 34⟩, ⟨10, 21⟩, ⟨31, 37⟩, ⟨18, 24⟩, ⟨39, 40⟩, ⟨5, 19⟩, ⟨26, 35⟩, ⟨13, 22⟩, ⟨34, 38⟩, ⟨21, 25⟩, ⟨42, 41⟩, ⟨8, 20⟩]⟩
theorem profile1085_checked : profile1085.check := by decide +kernel

noncomputable def selection0_1085 : Selection :=
  ⟨0, 5, 1, (406/25), 4181, -120, 324⟩
theorem selection0_1085_checked : selection0_1085.check profile1085 := by decide +kernel

noncomputable def selection1_1085 : Selection :=
  ⟨1, -3, 5, (1481/100), 291, -232, 692⟩
theorem selection1_1085_checked : selection1_1085.check profile1085 := by decide +kernel

noncomputable def selection2_1085 : Selection :=
  ⟨2, -11, 9, (729/50), 97, -312, 1060⟩
theorem selection2_1085_checked : selection2_1085.check profile1085 := by decide +kernel

noncomputable def profile1086 : ProfileCell :=
  ⟨(21/55), (13/34),
    [19, 19, 18, 17, 16, 16, 15, 14, 13, 12, 12, 11, 10, 9, 9, 8], [18, 18, 19, 19, 19],
    [⟨8, 21⟩, ⟨42, 42⟩, ⟨29, 37⟩, ⟨16, 24⟩, ⟨3, 19⟩, ⟨37, 40⟩, ⟨24, 35⟩, ⟨11, 22⟩, ⟨32, 38⟩, ⟨19, 25⟩, ⟨6, 20⟩, ⟨40, 41⟩, ⟨27, 36⟩, ⟨14, 23⟩, ⟨1, 18⟩, ⟨35, 39⟩, ⟨43, 60⟩, ⟨22, 34⟩, ⟨9, 21⟩, ⟨30, 37⟩, ⟨17, 24⟩, ⟨4, 19⟩, ⟨38, 40⟩, ⟨25, 35⟩, ⟨12, 22⟩, ⟨33, 38⟩, ⟨20, 25⟩, ⟨7, 20⟩, ⟨41, 41⟩, ⟨28, 36⟩, ⟨15, 23⟩, ⟨2, 18⟩, ⟨36, 39⟩, ⟨23, 34⟩, ⟨10, 21⟩, ⟨31, 37⟩, ⟨18, 24⟩, ⟨5, 19⟩, ⟨39, 40⟩, ⟨26, 35⟩, ⟨13, 22⟩, ⟨34, 38⟩, ⟨21, 25⟩]⟩
theorem profile1086_checked : profile1086.check := by decide +kernel

noncomputable def selection0_1086 : Selection :=
  ⟨0, 5, 1, (1647/100), 6033, -120, 324⟩
theorem selection0_1086_checked : selection0_1086.check profile1086 := by decide +kernel

noncomputable def selection1_1086 : Selection :=
  ⟨1, -3, 5, (747/50), 419, -232, 692⟩
theorem selection1_1086_checked : selection1_1086.check profile1086 := by decide +kernel

noncomputable def selection2_1086 : Selection :=
  ⟨2, -11, 9, (147/10), 139, -312, 1060⟩
theorem selection2_1086_checked : selection2_1086.check profile1086 := by decide +kernel

noncomputable def profile1087 : ProfileCell :=
  ⟨(13/34), (18/47),
    [19, 19, 18, 17, 16, 16, 15, 14, 13, 13, 12, 11, 10, 9, 9, 8], [18, 18, 19, 19, 19],
    [⟨21, 26⟩, ⟨34, 39⟩, ⟨8, 21⟩, ⟨42, 42⟩, ⟨16, 24⟩, ⟨29, 37⟩, ⟨3, 19⟩, ⟨37, 40⟩, ⟨11, 22⟩, ⟨24, 35⟩, ⟨19, 25⟩, ⟨32, 38⟩, ⟨6, 20⟩, ⟨40, 41⟩, ⟨14, 23⟩, ⟨27, 36⟩, ⟨1, 18⟩, ⟨35, 39⟩, ⟨9, 21⟩, ⟨22, 34⟩, ⟨43, 60⟩, ⟨17, 24⟩, ⟨30, 37⟩, ⟨4, 19⟩, ⟨38, 40⟩, ⟨12, 22⟩, ⟨25, 35⟩, ⟨20, 25⟩, ⟨33, 38⟩, ⟨7, 20⟩, ⟨41, 41⟩, ⟨15, 23⟩, ⟨28, 36⟩, ⟨2, 18⟩, ⟨36, 39⟩, ⟨10, 21⟩, ⟨23, 34⟩, ⟨18, 24⟩, ⟨31, 37⟩, ⟨5, 19⟩, ⟨39, 40⟩, ⟨13, 22⟩, ⟨26, 35⟩]⟩
theorem profile1087_checked : profile1087.check := by decide +kernel

noncomputable def selection0_1087 : Selection :=
  ⟨0, 4, 1, (1481/100), 6330, -159, 426⟩
theorem selection0_1087_checked : selection0_1087.check profile1087 := by decide +kernel

noncomputable def selection1_1087 : Selection :=
  ⟨1, -4, 5, (328/25), 430, -271, 794⟩
theorem selection1_1087_checked : selection1_1087.check profile1087 := by decide +kernel

noncomputable def selection2_1087 : Selection :=
  ⟨2, -12, 9, (257/20), 142, -351, 1162⟩
theorem selection2_1087_checked : selection2_1087.check profile1087 := by decide +kernel

noncomputable def leaf0_1024 : Block :=
  Block.single profile1024 selection0_1024 profile1024_checked selection0_1024_checked
noncomputable def leaf0_1025 : Block :=
  Block.single profile1025 selection0_1025 profile1025_checked selection0_1025_checked
noncomputable def leaf0_1026 : Block :=
  Block.single profile1026 selection0_1026 profile1026_checked selection0_1026_checked
noncomputable def leaf0_1027 : Block :=
  Block.single profile1027 selection0_1027 profile1027_checked selection0_1027_checked
noncomputable def leaf0_1028 : Block :=
  Block.single profile1028 selection0_1028 profile1028_checked selection0_1028_checked
noncomputable def leaf0_1029 : Block :=
  Block.single profile1029 selection0_1029 profile1029_checked selection0_1029_checked
noncomputable def leaf0_1030 : Block :=
  Block.single profile1030 selection0_1030 profile1030_checked selection0_1030_checked
noncomputable def leaf0_1031 : Block :=
  Block.single profile1031 selection0_1031 profile1031_checked selection0_1031_checked
noncomputable def leaf0_1032 : Block :=
  Block.single profile1032 selection0_1032 profile1032_checked selection0_1032_checked
noncomputable def leaf0_1033 : Block :=
  Block.single profile1033 selection0_1033 profile1033_checked selection0_1033_checked
noncomputable def leaf0_1034 : Block :=
  Block.single profile1034 selection0_1034 profile1034_checked selection0_1034_checked
noncomputable def leaf0_1035 : Block :=
  Block.single profile1035 selection0_1035 profile1035_checked selection0_1035_checked
noncomputable def leaf0_1036 : Block :=
  Block.single profile1036 selection0_1036 profile1036_checked selection0_1036_checked
noncomputable def leaf0_1037 : Block :=
  Block.single profile1037 selection0_1037 profile1037_checked selection0_1037_checked
noncomputable def leaf0_1038 : Block :=
  Block.single profile1038 selection0_1038 profile1038_checked selection0_1038_checked
noncomputable def leaf0_1039 : Block :=
  Block.single profile1039 selection0_1039 profile1039_checked selection0_1039_checked
noncomputable def leaf0_1040 : Block :=
  Block.single profile1040 selection0_1040 profile1040_checked selection0_1040_checked
noncomputable def leaf0_1041 : Block :=
  Block.single profile1041 selection0_1041 profile1041_checked selection0_1041_checked
noncomputable def leaf0_1042 : Block :=
  Block.single profile1042 selection0_1042 profile1042_checked selection0_1042_checked
noncomputable def leaf0_1043 : Block :=
  Block.single profile1043 selection0_1043 profile1043_checked selection0_1043_checked
noncomputable def leaf0_1044 : Block :=
  Block.single profile1044 selection0_1044 profile1044_checked selection0_1044_checked
noncomputable def leaf0_1045 : Block :=
  Block.single profile1045 selection0_1045 profile1045_checked selection0_1045_checked
noncomputable def leaf0_1046 : Block :=
  Block.single profile1046 selection0_1046 profile1046_checked selection0_1046_checked
noncomputable def leaf0_1047 : Block :=
  Block.single profile1047 selection0_1047 profile1047_checked selection0_1047_checked
noncomputable def leaf0_1048 : Block :=
  Block.single profile1048 selection0_1048 profile1048_checked selection0_1048_checked
noncomputable def leaf0_1049 : Block :=
  Block.single profile1049 selection0_1049 profile1049_checked selection0_1049_checked
noncomputable def leaf0_1050 : Block :=
  Block.single profile1050 selection0_1050 profile1050_checked selection0_1050_checked
noncomputable def leaf0_1051 : Block :=
  Block.single profile1051 selection0_1051 profile1051_checked selection0_1051_checked
noncomputable def leaf0_1052 : Block :=
  Block.single profile1052 selection0_1052 profile1052_checked selection0_1052_checked
noncomputable def leaf0_1053 : Block :=
  Block.single profile1053 selection0_1053 profile1053_checked selection0_1053_checked
noncomputable def leaf0_1054 : Block :=
  Block.single profile1054 selection0_1054 profile1054_checked selection0_1054_checked
noncomputable def leaf0_1055 : Block :=
  Block.single profile1055 selection0_1055 profile1055_checked selection0_1055_checked
noncomputable def leaf0_1056 : Block :=
  Block.single profile1056 selection0_1056 profile1056_checked selection0_1056_checked
noncomputable def leaf0_1057 : Block :=
  Block.single profile1057 selection0_1057 profile1057_checked selection0_1057_checked
noncomputable def leaf0_1058 : Block :=
  Block.single profile1058 selection0_1058 profile1058_checked selection0_1058_checked
noncomputable def leaf0_1059 : Block :=
  Block.single profile1059 selection0_1059 profile1059_checked selection0_1059_checked
noncomputable def leaf0_1060 : Block :=
  Block.single profile1060 selection0_1060 profile1060_checked selection0_1060_checked
noncomputable def leaf0_1061 : Block :=
  Block.single profile1061 selection0_1061 profile1061_checked selection0_1061_checked
noncomputable def leaf0_1062 : Block :=
  Block.single profile1062 selection0_1062 profile1062_checked selection0_1062_checked
noncomputable def leaf0_1063 : Block :=
  Block.single profile1063 selection0_1063 profile1063_checked selection0_1063_checked
noncomputable def leaf0_1064 : Block :=
  Block.single profile1064 selection0_1064 profile1064_checked selection0_1064_checked
noncomputable def leaf0_1065 : Block :=
  Block.single profile1065 selection0_1065 profile1065_checked selection0_1065_checked
noncomputable def leaf0_1066 : Block :=
  Block.single profile1066 selection0_1066 profile1066_checked selection0_1066_checked
noncomputable def leaf0_1067 : Block :=
  Block.single profile1067 selection0_1067 profile1067_checked selection0_1067_checked
noncomputable def leaf0_1068 : Block :=
  Block.single profile1068 selection0_1068 profile1068_checked selection0_1068_checked
noncomputable def leaf0_1069 : Block :=
  Block.single profile1069 selection0_1069 profile1069_checked selection0_1069_checked
noncomputable def leaf0_1070 : Block :=
  Block.single profile1070 selection0_1070 profile1070_checked selection0_1070_checked
noncomputable def leaf0_1071 : Block :=
  Block.single profile1071 selection0_1071 profile1071_checked selection0_1071_checked
noncomputable def leaf0_1072 : Block :=
  Block.single profile1072 selection0_1072 profile1072_checked selection0_1072_checked
noncomputable def leaf0_1073 : Block :=
  Block.single profile1073 selection0_1073 profile1073_checked selection0_1073_checked
noncomputable def leaf0_1074 : Block :=
  Block.single profile1074 selection0_1074 profile1074_checked selection0_1074_checked
noncomputable def leaf0_1075 : Block :=
  Block.single profile1075 selection0_1075 profile1075_checked selection0_1075_checked
noncomputable def leaf0_1076 : Block :=
  Block.single profile1076 selection0_1076 profile1076_checked selection0_1076_checked
noncomputable def leaf0_1077 : Block :=
  Block.single profile1077 selection0_1077 profile1077_checked selection0_1077_checked
noncomputable def leaf0_1078 : Block :=
  Block.single profile1078 selection0_1078 profile1078_checked selection0_1078_checked
noncomputable def leaf0_1079 : Block :=
  Block.single profile1079 selection0_1079 profile1079_checked selection0_1079_checked
noncomputable def leaf0_1080 : Block :=
  Block.single profile1080 selection0_1080 profile1080_checked selection0_1080_checked
noncomputable def leaf0_1081 : Block :=
  Block.single profile1081 selection0_1081 profile1081_checked selection0_1081_checked
noncomputable def leaf0_1082 : Block :=
  Block.single profile1082 selection0_1082 profile1082_checked selection0_1082_checked
noncomputable def leaf0_1083 : Block :=
  Block.single profile1083 selection0_1083 profile1083_checked selection0_1083_checked
noncomputable def leaf0_1084 : Block :=
  Block.single profile1084 selection0_1084 profile1084_checked selection0_1084_checked
noncomputable def leaf0_1085 : Block :=
  Block.single profile1085 selection0_1085 profile1085_checked selection0_1085_checked
noncomputable def leaf0_1086 : Block :=
  Block.single profile1086 selection0_1086 profile1086_checked selection0_1086_checked
noncomputable def leaf0_1087 : Block :=
  Block.single profile1087 selection0_1087 profile1087_checked selection0_1087_checked
noncomputable def batch016p0_0_0000 : Block :=
  Block.append leaf0_1024 leaf0_1025 (by decide +kernel)
noncomputable def batch016p0_0_0001 : Block :=
  Block.append leaf0_1026 leaf0_1027 (by decide +kernel)
noncomputable def batch016p0_0_0002 : Block :=
  Block.append leaf0_1028 leaf0_1029 (by decide +kernel)
noncomputable def batch016p0_0_0003 : Block :=
  Block.append leaf0_1030 leaf0_1031 (by decide +kernel)
noncomputable def batch016p0_0_0004 : Block :=
  Block.append leaf0_1032 leaf0_1033 (by decide +kernel)
noncomputable def batch016p0_0_0005 : Block :=
  Block.append leaf0_1034 leaf0_1035 (by decide +kernel)
noncomputable def batch016p0_0_0006 : Block :=
  Block.append leaf0_1036 leaf0_1037 (by decide +kernel)
noncomputable def batch016p0_0_0007 : Block :=
  Block.append leaf0_1038 leaf0_1039 (by decide +kernel)
noncomputable def batch016p0_0_0008 : Block :=
  Block.append leaf0_1040 leaf0_1041 (by decide +kernel)
noncomputable def batch016p0_0_0009 : Block :=
  Block.append leaf0_1042 leaf0_1043 (by decide +kernel)
noncomputable def batch016p0_0_0010 : Block :=
  Block.append leaf0_1044 leaf0_1045 (by decide +kernel)
noncomputable def batch016p0_0_0011 : Block :=
  Block.append leaf0_1046 leaf0_1047 (by decide +kernel)
noncomputable def batch016p0_0_0012 : Block :=
  Block.append leaf0_1048 leaf0_1049 (by decide +kernel)
noncomputable def batch016p0_0_0013 : Block :=
  Block.append leaf0_1050 leaf0_1051 (by decide +kernel)
noncomputable def batch016p0_0_0014 : Block :=
  Block.append leaf0_1052 leaf0_1053 (by decide +kernel)
noncomputable def batch016p0_0_0015 : Block :=
  Block.append leaf0_1054 leaf0_1055 (by decide +kernel)
noncomputable def batch016p0_0_0016 : Block :=
  Block.append leaf0_1056 leaf0_1057 (by decide +kernel)
noncomputable def batch016p0_0_0017 : Block :=
  Block.append leaf0_1058 leaf0_1059 (by decide +kernel)
noncomputable def batch016p0_0_0018 : Block :=
  Block.append leaf0_1060 leaf0_1061 (by decide +kernel)
noncomputable def batch016p0_0_0019 : Block :=
  Block.append leaf0_1062 leaf0_1063 (by decide +kernel)
noncomputable def batch016p0_0_0020 : Block :=
  Block.append leaf0_1064 leaf0_1065 (by decide +kernel)
noncomputable def batch016p0_0_0021 : Block :=
  Block.append leaf0_1066 leaf0_1067 (by decide +kernel)
noncomputable def batch016p0_0_0022 : Block :=
  Block.append leaf0_1068 leaf0_1069 (by decide +kernel)
noncomputable def batch016p0_0_0023 : Block :=
  Block.append leaf0_1070 leaf0_1071 (by decide +kernel)
noncomputable def batch016p0_0_0024 : Block :=
  Block.append leaf0_1072 leaf0_1073 (by decide +kernel)
noncomputable def batch016p0_0_0025 : Block :=
  Block.append leaf0_1074 leaf0_1075 (by decide +kernel)
noncomputable def batch016p0_0_0026 : Block :=
  Block.append leaf0_1076 leaf0_1077 (by decide +kernel)
noncomputable def batch016p0_0_0027 : Block :=
  Block.append leaf0_1078 leaf0_1079 (by decide +kernel)
noncomputable def batch016p0_0_0028 : Block :=
  Block.append leaf0_1080 leaf0_1081 (by decide +kernel)
noncomputable def batch016p0_0_0029 : Block :=
  Block.append leaf0_1082 leaf0_1083 (by decide +kernel)
noncomputable def batch016p0_0_0030 : Block :=
  Block.append leaf0_1084 leaf0_1085 (by decide +kernel)
noncomputable def batch016p0_0_0031 : Block :=
  Block.append leaf0_1086 leaf0_1087 (by decide +kernel)
noncomputable def batch016p0_1_0000 : Block :=
  Block.append batch016p0_0_0000 batch016p0_0_0001 (by decide +kernel)
noncomputable def batch016p0_1_0001 : Block :=
  Block.append batch016p0_0_0002 batch016p0_0_0003 (by decide +kernel)
noncomputable def batch016p0_1_0002 : Block :=
  Block.append batch016p0_0_0004 batch016p0_0_0005 (by decide +kernel)
noncomputable def batch016p0_1_0003 : Block :=
  Block.append batch016p0_0_0006 batch016p0_0_0007 (by decide +kernel)
noncomputable def batch016p0_1_0004 : Block :=
  Block.append batch016p0_0_0008 batch016p0_0_0009 (by decide +kernel)
noncomputable def batch016p0_1_0005 : Block :=
  Block.append batch016p0_0_0010 batch016p0_0_0011 (by decide +kernel)
noncomputable def batch016p0_1_0006 : Block :=
  Block.append batch016p0_0_0012 batch016p0_0_0013 (by decide +kernel)
noncomputable def batch016p0_1_0007 : Block :=
  Block.append batch016p0_0_0014 batch016p0_0_0015 (by decide +kernel)
noncomputable def batch016p0_1_0008 : Block :=
  Block.append batch016p0_0_0016 batch016p0_0_0017 (by decide +kernel)
noncomputable def batch016p0_1_0009 : Block :=
  Block.append batch016p0_0_0018 batch016p0_0_0019 (by decide +kernel)
noncomputable def batch016p0_1_0010 : Block :=
  Block.append batch016p0_0_0020 batch016p0_0_0021 (by decide +kernel)
noncomputable def batch016p0_1_0011 : Block :=
  Block.append batch016p0_0_0022 batch016p0_0_0023 (by decide +kernel)
noncomputable def batch016p0_1_0012 : Block :=
  Block.append batch016p0_0_0024 batch016p0_0_0025 (by decide +kernel)
noncomputable def batch016p0_1_0013 : Block :=
  Block.append batch016p0_0_0026 batch016p0_0_0027 (by decide +kernel)
noncomputable def batch016p0_1_0014 : Block :=
  Block.append batch016p0_0_0028 batch016p0_0_0029 (by decide +kernel)
noncomputable def batch016p0_1_0015 : Block :=
  Block.append batch016p0_0_0030 batch016p0_0_0031 (by decide +kernel)
noncomputable def batch016p0_2_0000 : Block :=
  Block.append batch016p0_1_0000 batch016p0_1_0001 (by decide +kernel)
noncomputable def batch016p0_2_0001 : Block :=
  Block.append batch016p0_1_0002 batch016p0_1_0003 (by decide +kernel)
noncomputable def batch016p0_2_0002 : Block :=
  Block.append batch016p0_1_0004 batch016p0_1_0005 (by decide +kernel)
noncomputable def batch016p0_2_0003 : Block :=
  Block.append batch016p0_1_0006 batch016p0_1_0007 (by decide +kernel)
noncomputable def batch016p0_2_0004 : Block :=
  Block.append batch016p0_1_0008 batch016p0_1_0009 (by decide +kernel)
noncomputable def batch016p0_2_0005 : Block :=
  Block.append batch016p0_1_0010 batch016p0_1_0011 (by decide +kernel)
noncomputable def batch016p0_2_0006 : Block :=
  Block.append batch016p0_1_0012 batch016p0_1_0013 (by decide +kernel)
noncomputable def batch016p0_2_0007 : Block :=
  Block.append batch016p0_1_0014 batch016p0_1_0015 (by decide +kernel)
noncomputable def batch016p0_3_0000 : Block :=
  Block.append batch016p0_2_0000 batch016p0_2_0001 (by decide +kernel)
noncomputable def batch016p0_3_0001 : Block :=
  Block.append batch016p0_2_0002 batch016p0_2_0003 (by decide +kernel)
noncomputable def batch016p0_3_0002 : Block :=
  Block.append batch016p0_2_0004 batch016p0_2_0005 (by decide +kernel)
noncomputable def batch016p0_3_0003 : Block :=
  Block.append batch016p0_2_0006 batch016p0_2_0007 (by decide +kernel)
noncomputable def batch016p0_4_0000 : Block :=
  Block.append batch016p0_3_0000 batch016p0_3_0001 (by decide +kernel)
noncomputable def batch016p0_4_0001 : Block :=
  Block.append batch016p0_3_0002 batch016p0_3_0003 (by decide +kernel)
noncomputable def batch016p0_5_0000 : Block :=
  Block.append batch016p0_4_0000 batch016p0_4_0001 (by decide +kernel)
theorem batch016p0_5_0000_left : batch016p0_5_0000.left = (9/25) := by decide +kernel
theorem batch016p0_5_0000_right : batch016p0_5_0000.right = (18/47) := by decide +kernel
theorem batch016p0_5_0000_units : batch016p0_5_0000.units = 264393 := by decide +kernel
noncomputable def leaf1_1024 : Block :=
  Block.single profile1024 selection1_1024 profile1024_checked selection1_1024_checked
noncomputable def leaf1_1025 : Block :=
  Block.single profile1025 selection1_1025 profile1025_checked selection1_1025_checked
noncomputable def leaf1_1026 : Block :=
  Block.single profile1026 selection1_1026 profile1026_checked selection1_1026_checked
noncomputable def leaf1_1027 : Block :=
  Block.single profile1027 selection1_1027 profile1027_checked selection1_1027_checked
noncomputable def leaf1_1028 : Block :=
  Block.single profile1028 selection1_1028 profile1028_checked selection1_1028_checked
noncomputable def leaf1_1029 : Block :=
  Block.single profile1029 selection1_1029 profile1029_checked selection1_1029_checked
noncomputable def leaf1_1030 : Block :=
  Block.single profile1030 selection1_1030 profile1030_checked selection1_1030_checked
noncomputable def leaf1_1031 : Block :=
  Block.single profile1031 selection1_1031 profile1031_checked selection1_1031_checked
noncomputable def leaf1_1032 : Block :=
  Block.single profile1032 selection1_1032 profile1032_checked selection1_1032_checked
noncomputable def leaf1_1033 : Block :=
  Block.single profile1033 selection1_1033 profile1033_checked selection1_1033_checked
noncomputable def leaf1_1034 : Block :=
  Block.single profile1034 selection1_1034 profile1034_checked selection1_1034_checked
noncomputable def leaf1_1035 : Block :=
  Block.single profile1035 selection1_1035 profile1035_checked selection1_1035_checked
noncomputable def leaf1_1036 : Block :=
  Block.single profile1036 selection1_1036 profile1036_checked selection1_1036_checked
noncomputable def leaf1_1037 : Block :=
  Block.single profile1037 selection1_1037 profile1037_checked selection1_1037_checked
noncomputable def leaf1_1038 : Block :=
  Block.single profile1038 selection1_1038 profile1038_checked selection1_1038_checked
noncomputable def leaf1_1039 : Block :=
  Block.single profile1039 selection1_1039 profile1039_checked selection1_1039_checked
noncomputable def leaf1_1040 : Block :=
  Block.single profile1040 selection1_1040 profile1040_checked selection1_1040_checked
noncomputable def leaf1_1041 : Block :=
  Block.single profile1041 selection1_1041 profile1041_checked selection1_1041_checked
noncomputable def leaf1_1042 : Block :=
  Block.single profile1042 selection1_1042 profile1042_checked selection1_1042_checked
noncomputable def leaf1_1043 : Block :=
  Block.single profile1043 selection1_1043 profile1043_checked selection1_1043_checked
noncomputable def leaf1_1044 : Block :=
  Block.single profile1044 selection1_1044 profile1044_checked selection1_1044_checked
noncomputable def leaf1_1045 : Block :=
  Block.single profile1045 selection1_1045 profile1045_checked selection1_1045_checked
noncomputable def leaf1_1046 : Block :=
  Block.single profile1046 selection1_1046 profile1046_checked selection1_1046_checked
noncomputable def leaf1_1047 : Block :=
  Block.single profile1047 selection1_1047 profile1047_checked selection1_1047_checked
noncomputable def leaf1_1048 : Block :=
  Block.single profile1048 selection1_1048 profile1048_checked selection1_1048_checked
noncomputable def leaf1_1049 : Block :=
  Block.single profile1049 selection1_1049 profile1049_checked selection1_1049_checked
noncomputable def leaf1_1050 : Block :=
  Block.single profile1050 selection1_1050 profile1050_checked selection1_1050_checked
noncomputable def leaf1_1051 : Block :=
  Block.single profile1051 selection1_1051 profile1051_checked selection1_1051_checked
noncomputable def leaf1_1052 : Block :=
  Block.single profile1052 selection1_1052 profile1052_checked selection1_1052_checked
noncomputable def leaf1_1053 : Block :=
  Block.single profile1053 selection1_1053 profile1053_checked selection1_1053_checked
noncomputable def leaf1_1054 : Block :=
  Block.single profile1054 selection1_1054 profile1054_checked selection1_1054_checked
noncomputable def leaf1_1055 : Block :=
  Block.single profile1055 selection1_1055 profile1055_checked selection1_1055_checked
noncomputable def leaf1_1056 : Block :=
  Block.single profile1056 selection1_1056 profile1056_checked selection1_1056_checked
noncomputable def leaf1_1057 : Block :=
  Block.single profile1057 selection1_1057 profile1057_checked selection1_1057_checked
noncomputable def leaf1_1058 : Block :=
  Block.single profile1058 selection1_1058 profile1058_checked selection1_1058_checked
noncomputable def leaf1_1059 : Block :=
  Block.single profile1059 selection1_1059 profile1059_checked selection1_1059_checked
noncomputable def leaf1_1060 : Block :=
  Block.single profile1060 selection1_1060 profile1060_checked selection1_1060_checked
noncomputable def leaf1_1061 : Block :=
  Block.single profile1061 selection1_1061 profile1061_checked selection1_1061_checked
noncomputable def leaf1_1062 : Block :=
  Block.single profile1062 selection1_1062 profile1062_checked selection1_1062_checked
noncomputable def leaf1_1063 : Block :=
  Block.single profile1063 selection1_1063 profile1063_checked selection1_1063_checked
noncomputable def leaf1_1064 : Block :=
  Block.single profile1064 selection1_1064 profile1064_checked selection1_1064_checked
noncomputable def leaf1_1065 : Block :=
  Block.single profile1065 selection1_1065 profile1065_checked selection1_1065_checked
noncomputable def leaf1_1066 : Block :=
  Block.single profile1066 selection1_1066 profile1066_checked selection1_1066_checked
noncomputable def leaf1_1067 : Block :=
  Block.single profile1067 selection1_1067 profile1067_checked selection1_1067_checked
noncomputable def leaf1_1068 : Block :=
  Block.single profile1068 selection1_1068 profile1068_checked selection1_1068_checked
noncomputable def leaf1_1069 : Block :=
  Block.single profile1069 selection1_1069 profile1069_checked selection1_1069_checked
noncomputable def leaf1_1070 : Block :=
  Block.single profile1070 selection1_1070 profile1070_checked selection1_1070_checked
noncomputable def leaf1_1071 : Block :=
  Block.single profile1071 selection1_1071 profile1071_checked selection1_1071_checked
noncomputable def leaf1_1072 : Block :=
  Block.single profile1072 selection1_1072 profile1072_checked selection1_1072_checked
noncomputable def leaf1_1073 : Block :=
  Block.single profile1073 selection1_1073 profile1073_checked selection1_1073_checked
noncomputable def leaf1_1074 : Block :=
  Block.single profile1074 selection1_1074 profile1074_checked selection1_1074_checked
noncomputable def leaf1_1075 : Block :=
  Block.single profile1075 selection1_1075 profile1075_checked selection1_1075_checked
noncomputable def leaf1_1076 : Block :=
  Block.single profile1076 selection1_1076 profile1076_checked selection1_1076_checked
noncomputable def leaf1_1077 : Block :=
  Block.single profile1077 selection1_1077 profile1077_checked selection1_1077_checked
noncomputable def leaf1_1078 : Block :=
  Block.single profile1078 selection1_1078 profile1078_checked selection1_1078_checked
noncomputable def leaf1_1079 : Block :=
  Block.single profile1079 selection1_1079 profile1079_checked selection1_1079_checked
noncomputable def leaf1_1080 : Block :=
  Block.single profile1080 selection1_1080 profile1080_checked selection1_1080_checked
noncomputable def leaf1_1081 : Block :=
  Block.single profile1081 selection1_1081 profile1081_checked selection1_1081_checked
noncomputable def leaf1_1082 : Block :=
  Block.single profile1082 selection1_1082 profile1082_checked selection1_1082_checked
noncomputable def leaf1_1083 : Block :=
  Block.single profile1083 selection1_1083 profile1083_checked selection1_1083_checked
noncomputable def leaf1_1084 : Block :=
  Block.single profile1084 selection1_1084 profile1084_checked selection1_1084_checked
noncomputable def leaf1_1085 : Block :=
  Block.single profile1085 selection1_1085 profile1085_checked selection1_1085_checked
noncomputable def leaf1_1086 : Block :=
  Block.single profile1086 selection1_1086 profile1086_checked selection1_1086_checked
noncomputable def leaf1_1087 : Block :=
  Block.single profile1087 selection1_1087 profile1087_checked selection1_1087_checked
noncomputable def batch016p1_0_0000 : Block :=
  Block.append leaf1_1024 leaf1_1025 (by decide +kernel)
noncomputable def batch016p1_0_0001 : Block :=
  Block.append leaf1_1026 leaf1_1027 (by decide +kernel)
noncomputable def batch016p1_0_0002 : Block :=
  Block.append leaf1_1028 leaf1_1029 (by decide +kernel)
noncomputable def batch016p1_0_0003 : Block :=
  Block.append leaf1_1030 leaf1_1031 (by decide +kernel)
noncomputable def batch016p1_0_0004 : Block :=
  Block.append leaf1_1032 leaf1_1033 (by decide +kernel)
noncomputable def batch016p1_0_0005 : Block :=
  Block.append leaf1_1034 leaf1_1035 (by decide +kernel)
noncomputable def batch016p1_0_0006 : Block :=
  Block.append leaf1_1036 leaf1_1037 (by decide +kernel)
noncomputable def batch016p1_0_0007 : Block :=
  Block.append leaf1_1038 leaf1_1039 (by decide +kernel)
noncomputable def batch016p1_0_0008 : Block :=
  Block.append leaf1_1040 leaf1_1041 (by decide +kernel)
noncomputable def batch016p1_0_0009 : Block :=
  Block.append leaf1_1042 leaf1_1043 (by decide +kernel)
noncomputable def batch016p1_0_0010 : Block :=
  Block.append leaf1_1044 leaf1_1045 (by decide +kernel)
noncomputable def batch016p1_0_0011 : Block :=
  Block.append leaf1_1046 leaf1_1047 (by decide +kernel)
noncomputable def batch016p1_0_0012 : Block :=
  Block.append leaf1_1048 leaf1_1049 (by decide +kernel)
noncomputable def batch016p1_0_0013 : Block :=
  Block.append leaf1_1050 leaf1_1051 (by decide +kernel)
noncomputable def batch016p1_0_0014 : Block :=
  Block.append leaf1_1052 leaf1_1053 (by decide +kernel)
noncomputable def batch016p1_0_0015 : Block :=
  Block.append leaf1_1054 leaf1_1055 (by decide +kernel)
noncomputable def batch016p1_0_0016 : Block :=
  Block.append leaf1_1056 leaf1_1057 (by decide +kernel)
noncomputable def batch016p1_0_0017 : Block :=
  Block.append leaf1_1058 leaf1_1059 (by decide +kernel)
noncomputable def batch016p1_0_0018 : Block :=
  Block.append leaf1_1060 leaf1_1061 (by decide +kernel)
noncomputable def batch016p1_0_0019 : Block :=
  Block.append leaf1_1062 leaf1_1063 (by decide +kernel)
noncomputable def batch016p1_0_0020 : Block :=
  Block.append leaf1_1064 leaf1_1065 (by decide +kernel)
noncomputable def batch016p1_0_0021 : Block :=
  Block.append leaf1_1066 leaf1_1067 (by decide +kernel)
noncomputable def batch016p1_0_0022 : Block :=
  Block.append leaf1_1068 leaf1_1069 (by decide +kernel)
noncomputable def batch016p1_0_0023 : Block :=
  Block.append leaf1_1070 leaf1_1071 (by decide +kernel)
noncomputable def batch016p1_0_0024 : Block :=
  Block.append leaf1_1072 leaf1_1073 (by decide +kernel)
noncomputable def batch016p1_0_0025 : Block :=
  Block.append leaf1_1074 leaf1_1075 (by decide +kernel)
noncomputable def batch016p1_0_0026 : Block :=
  Block.append leaf1_1076 leaf1_1077 (by decide +kernel)
noncomputable def batch016p1_0_0027 : Block :=
  Block.append leaf1_1078 leaf1_1079 (by decide +kernel)
noncomputable def batch016p1_0_0028 : Block :=
  Block.append leaf1_1080 leaf1_1081 (by decide +kernel)
noncomputable def batch016p1_0_0029 : Block :=
  Block.append leaf1_1082 leaf1_1083 (by decide +kernel)
noncomputable def batch016p1_0_0030 : Block :=
  Block.append leaf1_1084 leaf1_1085 (by decide +kernel)
noncomputable def batch016p1_0_0031 : Block :=
  Block.append leaf1_1086 leaf1_1087 (by decide +kernel)
noncomputable def batch016p1_1_0000 : Block :=
  Block.append batch016p1_0_0000 batch016p1_0_0001 (by decide +kernel)
noncomputable def batch016p1_1_0001 : Block :=
  Block.append batch016p1_0_0002 batch016p1_0_0003 (by decide +kernel)
noncomputable def batch016p1_1_0002 : Block :=
  Block.append batch016p1_0_0004 batch016p1_0_0005 (by decide +kernel)
noncomputable def batch016p1_1_0003 : Block :=
  Block.append batch016p1_0_0006 batch016p1_0_0007 (by decide +kernel)
noncomputable def batch016p1_1_0004 : Block :=
  Block.append batch016p1_0_0008 batch016p1_0_0009 (by decide +kernel)
noncomputable def batch016p1_1_0005 : Block :=
  Block.append batch016p1_0_0010 batch016p1_0_0011 (by decide +kernel)
noncomputable def batch016p1_1_0006 : Block :=
  Block.append batch016p1_0_0012 batch016p1_0_0013 (by decide +kernel)
noncomputable def batch016p1_1_0007 : Block :=
  Block.append batch016p1_0_0014 batch016p1_0_0015 (by decide +kernel)
noncomputable def batch016p1_1_0008 : Block :=
  Block.append batch016p1_0_0016 batch016p1_0_0017 (by decide +kernel)
noncomputable def batch016p1_1_0009 : Block :=
  Block.append batch016p1_0_0018 batch016p1_0_0019 (by decide +kernel)
noncomputable def batch016p1_1_0010 : Block :=
  Block.append batch016p1_0_0020 batch016p1_0_0021 (by decide +kernel)
noncomputable def batch016p1_1_0011 : Block :=
  Block.append batch016p1_0_0022 batch016p1_0_0023 (by decide +kernel)
noncomputable def batch016p1_1_0012 : Block :=
  Block.append batch016p1_0_0024 batch016p1_0_0025 (by decide +kernel)
noncomputable def batch016p1_1_0013 : Block :=
  Block.append batch016p1_0_0026 batch016p1_0_0027 (by decide +kernel)
noncomputable def batch016p1_1_0014 : Block :=
  Block.append batch016p1_0_0028 batch016p1_0_0029 (by decide +kernel)
noncomputable def batch016p1_1_0015 : Block :=
  Block.append batch016p1_0_0030 batch016p1_0_0031 (by decide +kernel)
noncomputable def batch016p1_2_0000 : Block :=
  Block.append batch016p1_1_0000 batch016p1_1_0001 (by decide +kernel)
noncomputable def batch016p1_2_0001 : Block :=
  Block.append batch016p1_1_0002 batch016p1_1_0003 (by decide +kernel)
noncomputable def batch016p1_2_0002 : Block :=
  Block.append batch016p1_1_0004 batch016p1_1_0005 (by decide +kernel)
noncomputable def batch016p1_2_0003 : Block :=
  Block.append batch016p1_1_0006 batch016p1_1_0007 (by decide +kernel)
noncomputable def batch016p1_2_0004 : Block :=
  Block.append batch016p1_1_0008 batch016p1_1_0009 (by decide +kernel)
noncomputable def batch016p1_2_0005 : Block :=
  Block.append batch016p1_1_0010 batch016p1_1_0011 (by decide +kernel)
noncomputable def batch016p1_2_0006 : Block :=
  Block.append batch016p1_1_0012 batch016p1_1_0013 (by decide +kernel)
noncomputable def batch016p1_2_0007 : Block :=
  Block.append batch016p1_1_0014 batch016p1_1_0015 (by decide +kernel)
noncomputable def batch016p1_3_0000 : Block :=
  Block.append batch016p1_2_0000 batch016p1_2_0001 (by decide +kernel)
noncomputable def batch016p1_3_0001 : Block :=
  Block.append batch016p1_2_0002 batch016p1_2_0003 (by decide +kernel)
noncomputable def batch016p1_3_0002 : Block :=
  Block.append batch016p1_2_0004 batch016p1_2_0005 (by decide +kernel)
noncomputable def batch016p1_3_0003 : Block :=
  Block.append batch016p1_2_0006 batch016p1_2_0007 (by decide +kernel)
noncomputable def batch016p1_4_0000 : Block :=
  Block.append batch016p1_3_0000 batch016p1_3_0001 (by decide +kernel)
noncomputable def batch016p1_4_0001 : Block :=
  Block.append batch016p1_3_0002 batch016p1_3_0003 (by decide +kernel)
noncomputable def batch016p1_5_0000 : Block :=
  Block.append batch016p1_4_0000 batch016p1_4_0001 (by decide +kernel)
theorem batch016p1_5_0000_left : batch016p1_5_0000.left = (34/25) := by decide +kernel
theorem batch016p1_5_0000_right : batch016p1_5_0000.right = (65/47) := by decide +kernel
theorem batch016p1_5_0000_units : batch016p1_5_0000.units = 17734 := by decide +kernel
noncomputable def leaf2_1024 : Block :=
  Block.single profile1024 selection2_1024 profile1024_checked selection2_1024_checked
noncomputable def leaf2_1025 : Block :=
  Block.single profile1025 selection2_1025 profile1025_checked selection2_1025_checked
noncomputable def leaf2_1026 : Block :=
  Block.single profile1026 selection2_1026 profile1026_checked selection2_1026_checked
noncomputable def leaf2_1027 : Block :=
  Block.single profile1027 selection2_1027 profile1027_checked selection2_1027_checked
noncomputable def leaf2_1028 : Block :=
  Block.single profile1028 selection2_1028 profile1028_checked selection2_1028_checked
noncomputable def leaf2_1029 : Block :=
  Block.single profile1029 selection2_1029 profile1029_checked selection2_1029_checked
noncomputable def leaf2_1030 : Block :=
  Block.single profile1030 selection2_1030 profile1030_checked selection2_1030_checked
noncomputable def leaf2_1031 : Block :=
  Block.single profile1031 selection2_1031 profile1031_checked selection2_1031_checked
noncomputable def leaf2_1032 : Block :=
  Block.single profile1032 selection2_1032 profile1032_checked selection2_1032_checked
noncomputable def leaf2_1033 : Block :=
  Block.single profile1033 selection2_1033 profile1033_checked selection2_1033_checked
noncomputable def leaf2_1034 : Block :=
  Block.single profile1034 selection2_1034 profile1034_checked selection2_1034_checked
noncomputable def leaf2_1035 : Block :=
  Block.single profile1035 selection2_1035 profile1035_checked selection2_1035_checked
noncomputable def leaf2_1036 : Block :=
  Block.single profile1036 selection2_1036 profile1036_checked selection2_1036_checked
noncomputable def leaf2_1037 : Block :=
  Block.single profile1037 selection2_1037 profile1037_checked selection2_1037_checked
noncomputable def leaf2_1038 : Block :=
  Block.single profile1038 selection2_1038 profile1038_checked selection2_1038_checked
noncomputable def leaf2_1039 : Block :=
  Block.single profile1039 selection2_1039 profile1039_checked selection2_1039_checked
noncomputable def leaf2_1040 : Block :=
  Block.single profile1040 selection2_1040 profile1040_checked selection2_1040_checked
noncomputable def leaf2_1041 : Block :=
  Block.single profile1041 selection2_1041 profile1041_checked selection2_1041_checked
noncomputable def leaf2_1042 : Block :=
  Block.single profile1042 selection2_1042 profile1042_checked selection2_1042_checked
noncomputable def leaf2_1043 : Block :=
  Block.single profile1043 selection2_1043 profile1043_checked selection2_1043_checked
noncomputable def leaf2_1044 : Block :=
  Block.single profile1044 selection2_1044 profile1044_checked selection2_1044_checked
noncomputable def leaf2_1045 : Block :=
  Block.single profile1045 selection2_1045 profile1045_checked selection2_1045_checked
noncomputable def leaf2_1046 : Block :=
  Block.single profile1046 selection2_1046 profile1046_checked selection2_1046_checked
noncomputable def leaf2_1047 : Block :=
  Block.single profile1047 selection2_1047 profile1047_checked selection2_1047_checked
noncomputable def leaf2_1048 : Block :=
  Block.single profile1048 selection2_1048 profile1048_checked selection2_1048_checked
noncomputable def leaf2_1049 : Block :=
  Block.single profile1049 selection2_1049 profile1049_checked selection2_1049_checked
noncomputable def leaf2_1050 : Block :=
  Block.single profile1050 selection2_1050 profile1050_checked selection2_1050_checked
noncomputable def leaf2_1051 : Block :=
  Block.single profile1051 selection2_1051 profile1051_checked selection2_1051_checked
noncomputable def leaf2_1052 : Block :=
  Block.single profile1052 selection2_1052 profile1052_checked selection2_1052_checked
noncomputable def leaf2_1053 : Block :=
  Block.single profile1053 selection2_1053 profile1053_checked selection2_1053_checked
noncomputable def leaf2_1054 : Block :=
  Block.single profile1054 selection2_1054 profile1054_checked selection2_1054_checked
noncomputable def leaf2_1055 : Block :=
  Block.single profile1055 selection2_1055 profile1055_checked selection2_1055_checked
noncomputable def leaf2_1056 : Block :=
  Block.single profile1056 selection2_1056 profile1056_checked selection2_1056_checked
noncomputable def leaf2_1057 : Block :=
  Block.single profile1057 selection2_1057 profile1057_checked selection2_1057_checked
noncomputable def leaf2_1058 : Block :=
  Block.single profile1058 selection2_1058 profile1058_checked selection2_1058_checked
noncomputable def leaf2_1059 : Block :=
  Block.single profile1059 selection2_1059 profile1059_checked selection2_1059_checked
noncomputable def leaf2_1060 : Block :=
  Block.single profile1060 selection2_1060 profile1060_checked selection2_1060_checked
noncomputable def leaf2_1061 : Block :=
  Block.single profile1061 selection2_1061 profile1061_checked selection2_1061_checked
noncomputable def leaf2_1062 : Block :=
  Block.single profile1062 selection2_1062 profile1062_checked selection2_1062_checked
noncomputable def leaf2_1063 : Block :=
  Block.single profile1063 selection2_1063 profile1063_checked selection2_1063_checked
noncomputable def leaf2_1064 : Block :=
  Block.single profile1064 selection2_1064 profile1064_checked selection2_1064_checked
noncomputable def leaf2_1065 : Block :=
  Block.single profile1065 selection2_1065 profile1065_checked selection2_1065_checked
noncomputable def leaf2_1066 : Block :=
  Block.single profile1066 selection2_1066 profile1066_checked selection2_1066_checked
noncomputable def leaf2_1067 : Block :=
  Block.single profile1067 selection2_1067 profile1067_checked selection2_1067_checked
noncomputable def leaf2_1068 : Block :=
  Block.single profile1068 selection2_1068 profile1068_checked selection2_1068_checked
noncomputable def leaf2_1069 : Block :=
  Block.single profile1069 selection2_1069 profile1069_checked selection2_1069_checked
noncomputable def leaf2_1070 : Block :=
  Block.single profile1070 selection2_1070 profile1070_checked selection2_1070_checked
noncomputable def leaf2_1071 : Block :=
  Block.single profile1071 selection2_1071 profile1071_checked selection2_1071_checked
noncomputable def leaf2_1072 : Block :=
  Block.single profile1072 selection2_1072 profile1072_checked selection2_1072_checked
noncomputable def leaf2_1073 : Block :=
  Block.single profile1073 selection2_1073 profile1073_checked selection2_1073_checked
noncomputable def leaf2_1074 : Block :=
  Block.single profile1074 selection2_1074 profile1074_checked selection2_1074_checked
noncomputable def leaf2_1075 : Block :=
  Block.single profile1075 selection2_1075 profile1075_checked selection2_1075_checked
noncomputable def leaf2_1076 : Block :=
  Block.single profile1076 selection2_1076 profile1076_checked selection2_1076_checked
noncomputable def leaf2_1077 : Block :=
  Block.single profile1077 selection2_1077 profile1077_checked selection2_1077_checked
noncomputable def leaf2_1078 : Block :=
  Block.single profile1078 selection2_1078 profile1078_checked selection2_1078_checked
noncomputable def leaf2_1079 : Block :=
  Block.single profile1079 selection2_1079 profile1079_checked selection2_1079_checked
noncomputable def leaf2_1080 : Block :=
  Block.single profile1080 selection2_1080 profile1080_checked selection2_1080_checked
noncomputable def leaf2_1081 : Block :=
  Block.single profile1081 selection2_1081 profile1081_checked selection2_1081_checked
noncomputable def leaf2_1082 : Block :=
  Block.single profile1082 selection2_1082 profile1082_checked selection2_1082_checked
noncomputable def leaf2_1083 : Block :=
  Block.single profile1083 selection2_1083 profile1083_checked selection2_1083_checked
noncomputable def leaf2_1084 : Block :=
  Block.single profile1084 selection2_1084 profile1084_checked selection2_1084_checked
noncomputable def leaf2_1085 : Block :=
  Block.single profile1085 selection2_1085 profile1085_checked selection2_1085_checked
noncomputable def leaf2_1086 : Block :=
  Block.single profile1086 selection2_1086 profile1086_checked selection2_1086_checked
noncomputable def leaf2_1087 : Block :=
  Block.single profile1087 selection2_1087 profile1087_checked selection2_1087_checked
noncomputable def batch016p2_0_0000 : Block :=
  Block.append leaf2_1024 leaf2_1025 (by decide +kernel)
noncomputable def batch016p2_0_0001 : Block :=
  Block.append leaf2_1026 leaf2_1027 (by decide +kernel)
noncomputable def batch016p2_0_0002 : Block :=
  Block.append leaf2_1028 leaf2_1029 (by decide +kernel)
noncomputable def batch016p2_0_0003 : Block :=
  Block.append leaf2_1030 leaf2_1031 (by decide +kernel)
noncomputable def batch016p2_0_0004 : Block :=
  Block.append leaf2_1032 leaf2_1033 (by decide +kernel)
noncomputable def batch016p2_0_0005 : Block :=
  Block.append leaf2_1034 leaf2_1035 (by decide +kernel)
noncomputable def batch016p2_0_0006 : Block :=
  Block.append leaf2_1036 leaf2_1037 (by decide +kernel)
noncomputable def batch016p2_0_0007 : Block :=
  Block.append leaf2_1038 leaf2_1039 (by decide +kernel)
noncomputable def batch016p2_0_0008 : Block :=
  Block.append leaf2_1040 leaf2_1041 (by decide +kernel)
noncomputable def batch016p2_0_0009 : Block :=
  Block.append leaf2_1042 leaf2_1043 (by decide +kernel)
noncomputable def batch016p2_0_0010 : Block :=
  Block.append leaf2_1044 leaf2_1045 (by decide +kernel)
noncomputable def batch016p2_0_0011 : Block :=
  Block.append leaf2_1046 leaf2_1047 (by decide +kernel)
noncomputable def batch016p2_0_0012 : Block :=
  Block.append leaf2_1048 leaf2_1049 (by decide +kernel)
noncomputable def batch016p2_0_0013 : Block :=
  Block.append leaf2_1050 leaf2_1051 (by decide +kernel)
noncomputable def batch016p2_0_0014 : Block :=
  Block.append leaf2_1052 leaf2_1053 (by decide +kernel)
noncomputable def batch016p2_0_0015 : Block :=
  Block.append leaf2_1054 leaf2_1055 (by decide +kernel)
noncomputable def batch016p2_0_0016 : Block :=
  Block.append leaf2_1056 leaf2_1057 (by decide +kernel)
noncomputable def batch016p2_0_0017 : Block :=
  Block.append leaf2_1058 leaf2_1059 (by decide +kernel)
noncomputable def batch016p2_0_0018 : Block :=
  Block.append leaf2_1060 leaf2_1061 (by decide +kernel)
noncomputable def batch016p2_0_0019 : Block :=
  Block.append leaf2_1062 leaf2_1063 (by decide +kernel)
noncomputable def batch016p2_0_0020 : Block :=
  Block.append leaf2_1064 leaf2_1065 (by decide +kernel)
noncomputable def batch016p2_0_0021 : Block :=
  Block.append leaf2_1066 leaf2_1067 (by decide +kernel)
noncomputable def batch016p2_0_0022 : Block :=
  Block.append leaf2_1068 leaf2_1069 (by decide +kernel)
noncomputable def batch016p2_0_0023 : Block :=
  Block.append leaf2_1070 leaf2_1071 (by decide +kernel)
noncomputable def batch016p2_0_0024 : Block :=
  Block.append leaf2_1072 leaf2_1073 (by decide +kernel)
noncomputable def batch016p2_0_0025 : Block :=
  Block.append leaf2_1074 leaf2_1075 (by decide +kernel)
noncomputable def batch016p2_0_0026 : Block :=
  Block.append leaf2_1076 leaf2_1077 (by decide +kernel)
noncomputable def batch016p2_0_0027 : Block :=
  Block.append leaf2_1078 leaf2_1079 (by decide +kernel)
noncomputable def batch016p2_0_0028 : Block :=
  Block.append leaf2_1080 leaf2_1081 (by decide +kernel)
noncomputable def batch016p2_0_0029 : Block :=
  Block.append leaf2_1082 leaf2_1083 (by decide +kernel)
noncomputable def batch016p2_0_0030 : Block :=
  Block.append leaf2_1084 leaf2_1085 (by decide +kernel)
noncomputable def batch016p2_0_0031 : Block :=
  Block.append leaf2_1086 leaf2_1087 (by decide +kernel)
noncomputable def batch016p2_1_0000 : Block :=
  Block.append batch016p2_0_0000 batch016p2_0_0001 (by decide +kernel)
noncomputable def batch016p2_1_0001 : Block :=
  Block.append batch016p2_0_0002 batch016p2_0_0003 (by decide +kernel)
noncomputable def batch016p2_1_0002 : Block :=
  Block.append batch016p2_0_0004 batch016p2_0_0005 (by decide +kernel)
noncomputable def batch016p2_1_0003 : Block :=
  Block.append batch016p2_0_0006 batch016p2_0_0007 (by decide +kernel)
noncomputable def batch016p2_1_0004 : Block :=
  Block.append batch016p2_0_0008 batch016p2_0_0009 (by decide +kernel)
noncomputable def batch016p2_1_0005 : Block :=
  Block.append batch016p2_0_0010 batch016p2_0_0011 (by decide +kernel)
noncomputable def batch016p2_1_0006 : Block :=
  Block.append batch016p2_0_0012 batch016p2_0_0013 (by decide +kernel)
noncomputable def batch016p2_1_0007 : Block :=
  Block.append batch016p2_0_0014 batch016p2_0_0015 (by decide +kernel)
noncomputable def batch016p2_1_0008 : Block :=
  Block.append batch016p2_0_0016 batch016p2_0_0017 (by decide +kernel)
noncomputable def batch016p2_1_0009 : Block :=
  Block.append batch016p2_0_0018 batch016p2_0_0019 (by decide +kernel)
noncomputable def batch016p2_1_0010 : Block :=
  Block.append batch016p2_0_0020 batch016p2_0_0021 (by decide +kernel)
noncomputable def batch016p2_1_0011 : Block :=
  Block.append batch016p2_0_0022 batch016p2_0_0023 (by decide +kernel)
noncomputable def batch016p2_1_0012 : Block :=
  Block.append batch016p2_0_0024 batch016p2_0_0025 (by decide +kernel)
noncomputable def batch016p2_1_0013 : Block :=
  Block.append batch016p2_0_0026 batch016p2_0_0027 (by decide +kernel)
noncomputable def batch016p2_1_0014 : Block :=
  Block.append batch016p2_0_0028 batch016p2_0_0029 (by decide +kernel)
noncomputable def batch016p2_1_0015 : Block :=
  Block.append batch016p2_0_0030 batch016p2_0_0031 (by decide +kernel)
noncomputable def batch016p2_2_0000 : Block :=
  Block.append batch016p2_1_0000 batch016p2_1_0001 (by decide +kernel)
noncomputable def batch016p2_2_0001 : Block :=
  Block.append batch016p2_1_0002 batch016p2_1_0003 (by decide +kernel)
noncomputable def batch016p2_2_0002 : Block :=
  Block.append batch016p2_1_0004 batch016p2_1_0005 (by decide +kernel)
noncomputable def batch016p2_2_0003 : Block :=
  Block.append batch016p2_1_0006 batch016p2_1_0007 (by decide +kernel)
noncomputable def batch016p2_2_0004 : Block :=
  Block.append batch016p2_1_0008 batch016p2_1_0009 (by decide +kernel)
noncomputable def batch016p2_2_0005 : Block :=
  Block.append batch016p2_1_0010 batch016p2_1_0011 (by decide +kernel)
noncomputable def batch016p2_2_0006 : Block :=
  Block.append batch016p2_1_0012 batch016p2_1_0013 (by decide +kernel)
noncomputable def batch016p2_2_0007 : Block :=
  Block.append batch016p2_1_0014 batch016p2_1_0015 (by decide +kernel)
noncomputable def batch016p2_3_0000 : Block :=
  Block.append batch016p2_2_0000 batch016p2_2_0001 (by decide +kernel)
noncomputable def batch016p2_3_0001 : Block :=
  Block.append batch016p2_2_0002 batch016p2_2_0003 (by decide +kernel)
noncomputable def batch016p2_3_0002 : Block :=
  Block.append batch016p2_2_0004 batch016p2_2_0005 (by decide +kernel)
noncomputable def batch016p2_3_0003 : Block :=
  Block.append batch016p2_2_0006 batch016p2_2_0007 (by decide +kernel)
noncomputable def batch016p2_4_0000 : Block :=
  Block.append batch016p2_3_0000 batch016p2_3_0001 (by decide +kernel)
noncomputable def batch016p2_4_0001 : Block :=
  Block.append batch016p2_3_0002 batch016p2_3_0003 (by decide +kernel)
noncomputable def batch016p2_5_0000 : Block :=
  Block.append batch016p2_4_0000 batch016p2_4_0001 (by decide +kernel)
theorem batch016p2_5_0000_left : batch016p2_5_0000.left = (59/25) := by decide +kernel
theorem batch016p2_5_0000_right : batch016p2_5_0000.right = (112/47) := by decide +kernel
theorem batch016p2_5_0000_units : batch016p2_5_0000.units = 5868 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
