import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile1280 : ProfileCell :=
  ⟨(49/109), (9/20),
    [23, 22, 21, 20, 19, 18, 17, 17, 16, 15, 14, 13, 12, 11, 10, 9], [21, 22, 22, 22, 23],
    [⟨41, 49⟩, ⟨2, 22⟩, ⟨43, 71⟩, ⟨30, 44⟩, ⟨11, 26⟩, ⟨39, 48⟩, ⟨20, 30⟩, ⟨28, 43⟩, ⟨9, 25⟩, ⟨37, 47⟩, ⟨18, 29⟩, ⟨26, 42⟩, ⟨7, 24⟩, ⟨35, 46⟩, ⟨16, 28⟩, ⟨24, 41⟩, ⟨5, 23⟩, ⟨33, 45⟩, ⟨14, 27⟩, ⟨42, 49⟩, ⟨22, 40⟩, ⟨3, 22⟩, ⟨31, 44⟩, ⟨12, 26⟩, ⟨40, 48⟩, ⟨21, 30⟩, ⟨1, 21⟩, ⟨29, 43⟩, ⟨10, 25⟩, ⟨38, 47⟩, ⟨19, 29⟩, ⟨27, 42⟩, ⟨8, 24⟩, ⟨36, 46⟩, ⟨17, 28⟩, ⟨25, 41⟩, ⟨6, 23⟩, ⟨34, 45⟩, ⟨15, 27⟩, ⟨23, 40⟩, ⟨4, 22⟩, ⟨32, 44⟩, ⟨13, 26⟩]⟩
theorem profile1280_checked : profile1280.check := by decide +kernel

noncomputable def selection0_1280 : Selection :=
  ⟨0, 6, 1, (439/25), 3982, -398, 892⟩
theorem selection0_1280_checked : selection0_1280.check profile1280 := by decide +kernel

noncomputable def selection1_1280 : Selection :=
  ⟨1, -2, 5, (426/25), 372, -507, 1200⟩
theorem selection1_1280_checked : selection1_1280.check profile1280 := by decide +kernel

noncomputable def selection2_1280 : Selection :=
  ⟨2, -10, 9, (847/50), 130, -611, 1568⟩
theorem selection2_1280_checked : selection2_1280.check profile1280 := by decide +kernel

noncomputable def profile1281 : ProfileCell :=
  ⟨(9/20), (41/91),
    [23, 22, 21, 20, 19, 18, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9], [21, 22, 22, 22, 23],
    [⟨13, 27⟩, ⟨32, 45⟩, ⟨2, 22⟩, ⟨41, 49⟩, ⟨11, 26⟩, ⟨30, 44⟩, ⟨43, 71⟩, ⟨20, 30⟩, ⟨39, 48⟩, ⟨9, 25⟩, ⟨28, 43⟩, ⟨18, 29⟩, ⟨37, 47⟩, ⟨7, 24⟩, ⟨26, 42⟩, ⟨16, 28⟩, ⟨35, 46⟩, ⟨5, 23⟩, ⟨24, 41⟩, ⟨14, 27⟩, ⟨33, 45⟩, ⟨3, 22⟩, ⟨22, 40⟩, ⟨42, 49⟩, ⟨12, 26⟩, ⟨31, 44⟩, ⟨1, 21⟩, ⟨21, 30⟩, ⟨40, 48⟩, ⟨10, 25⟩, ⟨29, 43⟩, ⟨19, 29⟩, ⟨38, 47⟩, ⟨8, 24⟩, ⟨27, 42⟩, ⟨17, 28⟩, ⟨36, 46⟩, ⟨6, 23⟩, ⟨25, 41⟩, ⟨15, 27⟩, ⟨34, 45⟩, ⟨4, 22⟩, ⟨23, 40⟩]⟩
theorem profile1281_checked : profile1281.check := by decide +kernel

noncomputable def selection0_1281 : Selection :=
  ⟨0, 5, 1, (402/25), 4358, -380, 852⟩
theorem selection0_1281_checked : selection0_1281.check profile1281 := by decide +kernel

noncomputable def selection1_1281 : Selection :=
  ⟨1, -3, 5, (1527/100), 399, -516, 1220⟩
theorem selection1_1281_checked : selection1_1281.check profile1281 := by decide +kernel

noncomputable def selection2_1281 : Selection :=
  ⟨2, -11, 9, (378/25), 139, -620, 1588⟩
theorem selection2_1281_checked : selection2_1281.check profile1281 := by decide +kernel

noncomputable def profile1282 : ProfileCell :=
  ⟨(41/91), (23/51),
    [23, 22, 21, 20, 19, 18, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9], [21, 22, 22, 22, 23],
    [⟨23, 41⟩, ⟨13, 27⟩, ⟨32, 45⟩, ⟨2, 22⟩, ⟨41, 49⟩, ⟨11, 26⟩, ⟨30, 44⟩, ⟨20, 30⟩, ⟨43, 71⟩, ⟨39, 48⟩, ⟨9, 25⟩, ⟨28, 43⟩, ⟨18, 29⟩, ⟨37, 47⟩, ⟨7, 24⟩, ⟨26, 42⟩, ⟨16, 28⟩, ⟨35, 46⟩, ⟨5, 23⟩, ⟨24, 41⟩, ⟨14, 27⟩, ⟨33, 45⟩, ⟨3, 22⟩, ⟨22, 40⟩, ⟨42, 49⟩, ⟨12, 26⟩, ⟨31, 44⟩, ⟨1, 21⟩, ⟨21, 30⟩, ⟨40, 48⟩, ⟨10, 25⟩, ⟨29, 43⟩, ⟨19, 29⟩, ⟨38, 47⟩, ⟨8, 24⟩, ⟨27, 42⟩, ⟨17, 28⟩, ⟨36, 46⟩, ⟨6, 23⟩, ⟨25, 41⟩, ⟨15, 27⟩, ⟨34, 45⟩, ⟨4, 22⟩]⟩
theorem profile1282_checked : profile1282.check := by decide +kernel

noncomputable def selection0_1282 : Selection :=
  ⟨0, 5, 1, (1631/100), 3460, -216, 488⟩
theorem selection0_1282_checked : selection0_1282.check profile1282 := by decide +kernel

noncomputable def selection1_1282 : Selection :=
  ⟨1, -3, 5, (77/5), 316, -352, 856⟩
theorem selection1_1282_checked : selection1_1282.check profile1282 := by decide +kernel

noncomputable def selection2_1282 : Selection :=
  ⟨2, -11, 9, (1523/100), 110, -456, 1224⟩
theorem selection2_1282_checked : selection2_1282.check profile1282 := by decide +kernel

noncomputable def profile1283 : ProfileCell :=
  ⟨(23/51), (14/31),
    [23, 22, 21, 20, 19, 18, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9], [21, 22, 22, 23, 23],
    [⟨4, 23⟩, ⟨34, 46⟩, ⟨23, 41⟩, ⟨13, 27⟩, ⟨2, 22⟩, ⟨32, 45⟩, ⟨11, 26⟩, ⟨41, 49⟩, ⟨30, 44⟩, ⟨20, 30⟩, ⟨9, 25⟩, ⟨39, 48⟩, ⟨43, 71⟩, ⟨28, 43⟩, ⟨18, 29⟩, ⟨7, 24⟩, ⟨37, 47⟩, ⟨26, 42⟩, ⟨16, 28⟩, ⟨5, 23⟩, ⟨35, 46⟩, ⟨24, 41⟩, ⟨14, 27⟩, ⟨3, 22⟩, ⟨33, 45⟩, ⟨22, 40⟩, ⟨12, 26⟩, ⟨42, 49⟩, ⟨1, 21⟩, ⟨31, 44⟩, ⟨21, 30⟩, ⟨10, 25⟩, ⟨40, 48⟩, ⟨29, 43⟩, ⟨19, 29⟩, ⟨8, 24⟩, ⟨38, 47⟩, ⟨27, 42⟩, ⟨17, 28⟩, ⟨6, 23⟩, ⟨36, 46⟩, ⟨25, 41⟩, ⟨15, 27⟩]⟩
theorem profile1283_checked : profile1283.check := by decide +kernel

noncomputable def selection0_1283 : Selection :=
  ⟨0, 7, 1, (518/25), 6435, -262, 590⟩
theorem selection0_1283_checked : selection0_1283.check profile1283 := by decide +kernel

noncomputable def selection1_1283 : Selection :=
  ⟨1, -1, 5, (98/5), 589, -398, 958⟩
theorem selection1_1283_checked : selection1_1283.check profile1283 := by decide +kernel

noncomputable def selection2_1283 : Selection :=
  ⟨2, -9, 9, (97/5), 205, -502, 1326⟩
theorem selection2_1283_checked : selection2_1283.check profile1283 := by decide +kernel

noncomputable def profile1284 : ProfileCell :=
  ⟨(14/31), (47/104),
    [23, 22, 21, 20, 19, 18, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9], [21, 22, 22, 23, 23],
    [⟨15, 28⟩, ⟨25, 42⟩, ⟨4, 23⟩, ⟨34, 46⟩, ⟨13, 27⟩, ⟨23, 41⟩, ⟨2, 22⟩, ⟨32, 45⟩, ⟨11, 26⟩, ⟨41, 49⟩, ⟨20, 30⟩, ⟨30, 44⟩, ⟨9, 25⟩, ⟨39, 48⟩, ⟨18, 29⟩, ⟨28, 43⟩, ⟨43, 71⟩, ⟨7, 24⟩, ⟨37, 47⟩, ⟨16, 28⟩, ⟨26, 42⟩, ⟨5, 23⟩, ⟨35, 46⟩, ⟨14, 27⟩, ⟨24, 41⟩, ⟨3, 22⟩, ⟨33, 45⟩, ⟨12, 26⟩, ⟨22, 40⟩, ⟨1, 21⟩, ⟨42, 49⟩, ⟨21, 30⟩, ⟨31, 44⟩, ⟨10, 25⟩, ⟨40, 48⟩, ⟨19, 29⟩, ⟨29, 43⟩, ⟨8, 24⟩, ⟨38, 47⟩, ⟨17, 28⟩, ⟨27, 42⟩, ⟨6, 23⟩, ⟨36, 46⟩]⟩
theorem profile1284_checked : profile1284.check := by decide +kernel

noncomputable def selection0_1284 : Selection :=
  ⟨0, 7, 1, (524/25), 3186, -318, 714⟩
theorem selection0_1284_checked : selection0_1284.check profile1284 := by decide +kernel

noncomputable def selection1_1284 : Selection :=
  ⟨1, -1, 5, (493/25), 291, -454, 1082⟩
theorem selection1_1284_checked : selection1_1284.check profile1284 := by decide +kernel

noncomputable def selection2_1284 : Selection :=
  ⟨2, -9, 9, (1949/100), 101, -558, 1450⟩
theorem selection2_1284_checked : selection2_1284.check profile1284 := by decide +kernel

noncomputable def profile1285 : ProfileCell :=
  ⟨(47/104), (19/42),
    [23, 22, 21, 20, 19, 18, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9], [21, 22, 22, 23, 23],
    [⟨36, 47⟩, ⟨15, 28⟩, ⟨25, 42⟩, ⟨4, 23⟩, ⟨34, 46⟩, ⟨13, 27⟩, ⟨23, 41⟩, ⟨2, 22⟩, ⟨32, 45⟩, ⟨11, 26⟩, ⟨41, 49⟩, ⟨20, 30⟩, ⟨30, 44⟩, ⟨9, 25⟩, ⟨39, 48⟩, ⟨18, 29⟩, ⟨28, 43⟩, ⟨7, 24⟩, ⟨43, 71⟩, ⟨37, 47⟩, ⟨16, 28⟩, ⟨26, 42⟩, ⟨5, 23⟩, ⟨35, 46⟩, ⟨14, 27⟩, ⟨24, 41⟩, ⟨3, 22⟩, ⟨33, 45⟩, ⟨12, 26⟩, ⟨22, 40⟩, ⟨1, 21⟩, ⟨42, 49⟩, ⟨21, 30⟩, ⟨31, 44⟩, ⟨10, 25⟩, ⟨40, 48⟩, ⟨19, 29⟩, ⟨29, 43⟩, ⟨8, 24⟩, ⟨38, 47⟩, ⟨17, 28⟩, ⟨27, 42⟩, ⟨6, 23⟩]⟩
theorem profile1285_checked : profile1285.check := by decide +kernel

noncomputable def selection0_1285 : Selection :=
  ⟨0, 7, 1, 21, 4704, -36, 90⟩
theorem selection0_1285_checked : selection0_1285.check profile1285 := by decide +kernel

noncomputable def selection1_1285 : Selection :=
  ⟨1, -1, 5, (1979/100), 430, -172, 458⟩
theorem selection1_1285_checked : selection1_1285.check profile1285 := by decide +kernel

noncomputable def selection2_1285 : Selection :=
  ⟨2, -9, 9, (1957/100), 150, -276, 826⟩
theorem selection2_1285_checked : selection2_1285.check profile1285 := by decide +kernel

noncomputable def profile1286 : ProfileCell :=
  ⟨(19/42), (43/95),
    [23, 22, 21, 20, 19, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9], [21, 22, 22, 23, 23],
    [⟨15, 28⟩, ⟨36, 47⟩, ⟨4, 23⟩, ⟨25, 42⟩, ⟨13, 27⟩, ⟨34, 46⟩, ⟨2, 22⟩, ⟨23, 41⟩, ⟨11, 26⟩, ⟨32, 45⟩, ⟨20, 30⟩, ⟨41, 49⟩, ⟨9, 25⟩, ⟨30, 44⟩, ⟨18, 29⟩, ⟨39, 48⟩, ⟨7, 24⟩, ⟨28, 43⟩, ⟨43, 71⟩, ⟨16, 28⟩, ⟨37, 47⟩, ⟨5, 23⟩, ⟨26, 42⟩, ⟨14, 27⟩, ⟨35, 46⟩, ⟨3, 22⟩, ⟨24, 41⟩, ⟨12, 26⟩, ⟨33, 45⟩, ⟨1, 21⟩, ⟨22, 40⟩, ⟨21, 30⟩, ⟨42, 49⟩, ⟨10, 25⟩, ⟨31, 44⟩, ⟨19, 29⟩, ⟨40, 48⟩, ⟨8, 24⟩, ⟨29, 43⟩, ⟨17, 28⟩, ⟨38, 47⟩, ⟨6, 23⟩, ⟨27, 42⟩]⟩
theorem profile1286_checked : profile1286.check := by decide +kernel

noncomputable def selection0_1286 : Selection :=
  ⟨0, 6, 1, (1913/100), 2342, -207, 468⟩
theorem selection0_1286_checked : selection0_1286.check profile1286 := by decide +kernel

noncomputable def selection1_1286 : Selection :=
  ⟨1, -2, 5, (893/50), 213, -343, 836⟩
theorem selection1_1286_checked : selection1_1286.check profile1286 := by decide +kernel

noncomputable def selection2_1286 : Selection :=
  ⟨2, -10, 9, (1763/100), 74, -447, 1204⟩
theorem selection2_1286_checked : selection2_1286.check profile1286 := by decide +kernel

noncomputable def profile1287 : ProfileCell :=
  ⟨(43/95), (24/53),
    [23, 22, 21, 20, 19, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9], [21, 22, 22, 23, 23],
    [⟨27, 43⟩, ⟨15, 28⟩, ⟨36, 47⟩, ⟨4, 23⟩, ⟨25, 42⟩, ⟨13, 27⟩, ⟨34, 46⟩, ⟨2, 22⟩, ⟨23, 41⟩, ⟨11, 26⟩, ⟨32, 45⟩, ⟨20, 30⟩, ⟨41, 49⟩, ⟨9, 25⟩, ⟨30, 44⟩, ⟨18, 29⟩, ⟨39, 48⟩, ⟨7, 24⟩, ⟨28, 43⟩, ⟨16, 28⟩, ⟨43, 71⟩, ⟨37, 47⟩, ⟨5, 23⟩, ⟨26, 42⟩, ⟨14, 27⟩, ⟨35, 46⟩, ⟨3, 22⟩, ⟨24, 41⟩, ⟨12, 26⟩, ⟨33, 45⟩, ⟨1, 21⟩, ⟨22, 40⟩, ⟨21, 30⟩, ⟨42, 49⟩, ⟨10, 25⟩, ⟨31, 44⟩, ⟨19, 29⟩, ⟨40, 48⟩, ⟨8, 24⟩, ⟨29, 43⟩, ⟨17, 28⟩, ⟨38, 47⟩, ⟨6, 23⟩]⟩
theorem profile1287_checked : profile1287.check := by decide +kernel

noncomputable def selection0_1287 : Selection :=
  ⟨0, 6, 1, (383/20), 1856, -35, 88⟩
theorem selection0_1287_checked : selection0_1287.check profile1287 := by decide +kernel

noncomputable def selection1_1287 : Selection :=
  ⟨1, -2, 5, (1789/100), 169, -171, 456⟩
theorem selection1_1287_checked : selection1_1287.check profile1287 := by decide +kernel

noncomputable def selection2_1287 : Selection :=
  ⟨2, -10, 9, (883/50), 59, -275, 824⟩
theorem selection2_1287_checked : selection2_1287.check profile1287 := by decide +kernel

noncomputable def profile1288 : ProfileCell :=
  ⟨(24/53), (29/64),
    [23, 22, 21, 20, 19, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9], [21, 22, 22, 23, 23],
    [⟨6, 24⟩, ⟨38, 48⟩, ⟨27, 43⟩, ⟨15, 28⟩, ⟨4, 23⟩, ⟨36, 47⟩, ⟨25, 42⟩, ⟨13, 27⟩, ⟨2, 22⟩, ⟨34, 46⟩, ⟨23, 41⟩, ⟨11, 26⟩, ⟨32, 45⟩, ⟨20, 30⟩, ⟨9, 25⟩, ⟨41, 49⟩, ⟨30, 44⟩, ⟨18, 29⟩, ⟨7, 24⟩, ⟨39, 48⟩, ⟨28, 43⟩, ⟨16, 28⟩, ⟨5, 23⟩, ⟨37, 47⟩, ⟨43, 71⟩, ⟨26, 42⟩, ⟨14, 27⟩, ⟨3, 22⟩, ⟨35, 46⟩, ⟨24, 41⟩, ⟨12, 26⟩, ⟨1, 21⟩, ⟨33, 45⟩, ⟨22, 40⟩, ⟨21, 30⟩, ⟨10, 25⟩, ⟨42, 49⟩, ⟨31, 44⟩, ⟨19, 29⟩, ⟨8, 24⟩, ⟨40, 48⟩, ⟨29, 43⟩, ⟨17, 28⟩]⟩
theorem profile1288_checked : profile1288.check := by decide +kernel

noncomputable def selection0_1288 : Selection :=
  ⟨0, 6, 1, (959/50), 2756, -35, 88⟩
theorem selection0_1288_checked : selection0_1288.check profile1288 := by decide +kernel

noncomputable def selection1_1288 : Selection :=
  ⟨1, -2, 5, (897/50), 251, -171, 456⟩
theorem selection1_1288_checked : selection1_1288.check profile1288 := by decide +kernel

noncomputable def selection2_1288 : Selection :=
  ⟨2, -10, 9, (1771/100), 87, -275, 824⟩
theorem selection2_1288_checked : selection2_1288.check profile1288 := by decide +kernel

noncomputable def profile1289 : ProfileCell :=
  ⟨(29/64), (44/97),
    [23, 22, 21, 20, 19, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9], [21, 22, 22, 23, 23],
    [⟨17, 29⟩, ⟨6, 24⟩, ⟨38, 48⟩, ⟨27, 43⟩, ⟨15, 28⟩, ⟨4, 23⟩, ⟨36, 47⟩, ⟨25, 42⟩, ⟨13, 27⟩, ⟨2, 22⟩, ⟨34, 46⟩, ⟨23, 41⟩, ⟨11, 26⟩, ⟨32, 45⟩, ⟨20, 30⟩, ⟨9, 25⟩, ⟨41, 49⟩, ⟨30, 44⟩, ⟨18, 29⟩, ⟨7, 24⟩, ⟨39, 48⟩, ⟨28, 43⟩, ⟨16, 28⟩, ⟨5, 23⟩, ⟨37, 47⟩, ⟨26, 42⟩, ⟨43, 71⟩, ⟨14, 27⟩, ⟨3, 22⟩, ⟨35, 46⟩, ⟨24, 41⟩, ⟨12, 26⟩, ⟨1, 21⟩, ⟨33, 45⟩, ⟨22, 40⟩, ⟨21, 30⟩, ⟨10, 25⟩, ⟨42, 49⟩, ⟨31, 44⟩, ⟨19, 29⟩, ⟨8, 24⟩, ⟨40, 48⟩, ⟨29, 43⟩]⟩
theorem profile1289_checked : profile1289.check := by decide +kernel

noncomputable def selection0_1289 : Selection :=
  ⟨0, 6, 1, (484/25), 4552, -151, 344⟩
theorem selection0_1289_checked : selection0_1289.check profile1289 := by decide +kernel

noncomputable def selection1_1289 : Selection :=
  ⟨1, -2, 5, (903/50), 414, -287, 712⟩
theorem selection1_1289_checked : selection1_1289.check profile1289 := by decide +kernel

noncomputable def selection2_1289 : Selection :=
  ⟨2, -10, 9, (891/50), 144, -391, 1080⟩
theorem selection2_1289_checked : selection2_1289.check profile1289 := by decide +kernel

noncomputable def profile1290 : ProfileCell :=
  ⟨(44/97), (49/108),
    [23, 22, 21, 20, 19, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9], [21, 22, 22, 23, 23],
    [⟨29, 44⟩, ⟨17, 29⟩, ⟨6, 24⟩, ⟨38, 48⟩, ⟨27, 43⟩, ⟨15, 28⟩, ⟨4, 23⟩, ⟨36, 47⟩, ⟨25, 42⟩, ⟨13, 27⟩, ⟨2, 22⟩, ⟨34, 46⟩, ⟨23, 41⟩, ⟨11, 26⟩, ⟨32, 45⟩, ⟨20, 30⟩, ⟨9, 25⟩, ⟨41, 49⟩, ⟨30, 44⟩, ⟨18, 29⟩, ⟨7, 24⟩, ⟨39, 48⟩, ⟨28, 43⟩, ⟨16, 28⟩, ⟨5, 23⟩, ⟨37, 47⟩, ⟨26, 42⟩, ⟨14, 27⟩, ⟨43, 71⟩, ⟨3, 22⟩, ⟨35, 46⟩, ⟨24, 41⟩, ⟨12, 26⟩, ⟨1, 21⟩, ⟨33, 45⟩, ⟨22, 40⟩, ⟨21, 30⟩, ⟨10, 25⟩, ⟨42, 49⟩, ⟨31, 44⟩, ⟨19, 29⟩, ⟨8, 24⟩, ⟨40, 48⟩]⟩
theorem profile1290_checked : profile1290.check := by decide +kernel

noncomputable def selection0_1290 : Selection :=
  ⟨0, 6, 1, (484/25), 898, 25, -44⟩
theorem selection0_1290_checked : selection0_1290.check profile1290 := by decide +kernel

noncomputable def selection1_1290 : Selection :=
  ⟨1, -2, 5, (1807/100), 82, -111, 324⟩
theorem selection1_1290_checked : selection1_1290.check profile1290 := by decide +kernel

noncomputable def selection2_1290 : Selection :=
  ⟨2, -10, 9, (1783/100), 29, -215, 692⟩
theorem selection2_1290_checked : selection2_1290.check profile1290 := by decide +kernel

noncomputable def profile1291 : ProfileCell :=
  ⟨(49/108), (5/11),
    [23, 22, 21, 20, 19, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9], [21, 22, 22, 23, 23],
    [⟨40, 49⟩, ⟨29, 44⟩, ⟨17, 29⟩, ⟨6, 24⟩, ⟨38, 48⟩, ⟨27, 43⟩, ⟨15, 28⟩, ⟨4, 23⟩, ⟨36, 47⟩, ⟨25, 42⟩, ⟨13, 27⟩, ⟨2, 22⟩, ⟨34, 46⟩, ⟨23, 41⟩, ⟨11, 26⟩, ⟨32, 45⟩, ⟨20, 30⟩, ⟨9, 25⟩, ⟨41, 49⟩, ⟨30, 44⟩, ⟨18, 29⟩, ⟨7, 24⟩, ⟨39, 48⟩, ⟨28, 43⟩, ⟨16, 28⟩, ⟨5, 23⟩, ⟨37, 47⟩, ⟨26, 42⟩, ⟨14, 27⟩, ⟨3, 22⟩, ⟨43, 71⟩, ⟨35, 46⟩, ⟨24, 41⟩, ⟨12, 26⟩, ⟨1, 21⟩, ⟨33, 45⟩, ⟨22, 40⟩, ⟨21, 30⟩, ⟨10, 25⟩, ⟨42, 49⟩, ⟨31, 44⟩, ⟨19, 29⟩, ⟨8, 24⟩]⟩
theorem profile1291_checked : profile1291.check := by decide +kernel

noncomputable def selection0_1291 : Selection :=
  ⟨0, 6, 1, (387/20), 7898, 319, -692⟩
theorem selection0_1291_checked : selection0_1291.check profile1291 := by decide +kernel

noncomputable def selection1_1291 : Selection :=
  ⟨1, -2, 5, (1807/100), 720, 183, -324⟩
theorem selection1_1291_checked : selection1_1291.check profile1291 := by decide +kernel

noncomputable def selection2_1291 : Selection :=
  ⟨2, -10, 9, (446/25), 250, 79, 44⟩
theorem selection2_1291_checked : selection2_1291.check profile1291 := by decide +kernel

noncomputable def profile1292 : ProfileCell :=
  ⟨(5/11), (46/101),
    [23, 22, 21, 20, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10], [21, 22, 22, 23, 23],
    [⟨8, 25⟩, ⟨19, 30⟩, ⟨31, 45⟩, ⟨42, 50⟩, ⟨6, 24⟩, ⟨17, 29⟩, ⟨29, 44⟩, ⟨40, 49⟩, ⟨4, 23⟩, ⟨15, 28⟩, ⟨27, 43⟩, ⟨38, 48⟩, ⟨2, 22⟩, ⟨13, 27⟩, ⟨25, 42⟩, ⟨36, 47⟩, ⟨11, 26⟩, ⟨23, 41⟩, ⟨34, 46⟩, ⟨9, 25⟩, ⟨20, 30⟩, ⟨32, 45⟩, ⟨7, 24⟩, ⟨18, 29⟩, ⟨30, 44⟩, ⟨41, 49⟩, ⟨5, 23⟩, ⟨16, 28⟩, ⟨28, 43⟩, ⟨39, 48⟩, ⟨3, 22⟩, ⟨14, 27⟩, ⟨26, 42⟩, ⟨37, 47⟩, ⟨1, 21⟩, ⟨12, 26⟩, ⟨24, 41⟩, ⟨35, 46⟩, ⟨43, 71⟩, ⟨10, 25⟩, ⟨21, 30⟩, ⟨22, 40⟩, ⟨33, 45⟩]⟩
theorem profile1292_checked : profile1292.check := by decide +kernel

noncomputable def selection0_1292 : Selection :=
  ⟨0, 4, 1, (147/10), 6392, 159, -340⟩
theorem selection0_1292_checked : selection0_1292.check profile1292 := by decide +kernel

noncomputable def selection1_1292 : Selection :=
  ⟨1, -4, 5, (699/50), 595, 23, 28⟩
theorem selection1_1292_checked : selection1_1292.check profile1292 := by decide +kernel

noncomputable def selection2_1292 : Selection :=
  ⟨2, -12, 9, (1391/100), 208, -81, 396⟩
theorem selection2_1292_checked : selection2_1292.check profile1292 := by decide +kernel

noncomputable def profile1293 : ProfileCell :=
  ⟨(46/101), (41/90),
    [23, 22, 21, 20, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10], [21, 22, 22, 23, 23],
    [⟨33, 46⟩, ⟨8, 25⟩, ⟨19, 30⟩, ⟨31, 45⟩, ⟨42, 50⟩, ⟨6, 24⟩, ⟨17, 29⟩, ⟨29, 44⟩, ⟨40, 49⟩, ⟨4, 23⟩, ⟨15, 28⟩, ⟨27, 43⟩, ⟨38, 48⟩, ⟨2, 22⟩, ⟨13, 27⟩, ⟨25, 42⟩, ⟨36, 47⟩, ⟨11, 26⟩, ⟨23, 41⟩, ⟨34, 46⟩, ⟨9, 25⟩, ⟨20, 30⟩, ⟨32, 45⟩, ⟨7, 24⟩, ⟨18, 29⟩, ⟨30, 44⟩, ⟨41, 49⟩, ⟨5, 23⟩, ⟨16, 28⟩, ⟨28, 43⟩, ⟨39, 48⟩, ⟨3, 22⟩, ⟨14, 27⟩, ⟨26, 42⟩, ⟨37, 47⟩, ⟨1, 21⟩, ⟨12, 26⟩, ⟨24, 41⟩, ⟨35, 46⟩, ⟨10, 25⟩, ⟨43, 71⟩, ⟨21, 30⟩, ⟨22, 40⟩]⟩
theorem profile1293_checked : profile1293.check := by decide +kernel

noncomputable def selection0_1293 : Selection :=
  ⟨0, 4, 1, (359/25), 762, 343, -744⟩
theorem selection0_1293_checked : selection0_1293.check profile1293 := by decide +kernel

noncomputable def selection1_1293 : Selection :=
  ⟨1, -4, 5, (699/50), 73, 207, -376⟩
theorem selection1_1293_checked : selection1_1293.check profile1293 := by decide +kernel

noncomputable def selection2_1293 : Selection :=
  ⟨2, -12, 9, (1391/100), 26, 103, -8⟩
theorem selection2_1293_checked : selection2_1293.check profile1293 := by decide +kernel

noncomputable def profile1294 : ProfileCell :=
  ⟨(41/90), (36/79),
    [23, 22, 21, 20, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10], [21, 22, 22, 23, 23],
    [⟨22, 41⟩, ⟨33, 46⟩, ⟨8, 25⟩, ⟨19, 30⟩, ⟨31, 45⟩, ⟨42, 50⟩, ⟨6, 24⟩, ⟨17, 29⟩, ⟨29, 44⟩, ⟨40, 49⟩, ⟨4, 23⟩, ⟨15, 28⟩, ⟨27, 43⟩, ⟨38, 48⟩, ⟨2, 22⟩, ⟨13, 27⟩, ⟨25, 42⟩, ⟨36, 47⟩, ⟨11, 26⟩, ⟨23, 41⟩, ⟨34, 46⟩, ⟨9, 25⟩, ⟨20, 30⟩, ⟨32, 45⟩, ⟨7, 24⟩, ⟨18, 29⟩, ⟨30, 44⟩, ⟨41, 49⟩, ⟨5, 23⟩, ⟨16, 28⟩, ⟨28, 43⟩, ⟨39, 48⟩, ⟨3, 22⟩, ⟨14, 27⟩, ⟨26, 42⟩, ⟨37, 47⟩, ⟨1, 21⟩, ⟨12, 26⟩, ⟨24, 41⟩, ⟨35, 46⟩, ⟨10, 25⟩, ⟨21, 30⟩, ⟨43, 71⟩]⟩
theorem profile1294_checked : profile1294.check := by decide +kernel

noncomputable def selection0_1294 : Selection :=
  ⟨0, 4, 1, (1427/100), 967, 589, -1284⟩
theorem selection0_1294_checked : selection0_1294.check profile1294 := by decide +kernel

noncomputable def selection1_1294 : Selection :=
  ⟨1, -4, 5, (1397/100), 93, 453, -916⟩
theorem selection1_1294_checked : selection1_1294.check profile1294 := by decide +kernel

noncomputable def selection2_1294 : Selection :=
  ⟨2, -12, 9, (1391/100), 33, 349, -548⟩
theorem selection2_1294_checked : selection2_1294.check profile1294 := by decide +kernel

noncomputable def profile1295 : ProfileCell :=
  ⟨(36/79), (31/68),
    [23, 22, 21, 20, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10], [21, 22, 22, 23, 23],
    [⟨43, 72⟩, ⟨22, 41⟩, ⟨33, 46⟩, ⟨8, 25⟩, ⟨19, 30⟩, ⟨31, 45⟩, ⟨42, 50⟩, ⟨6, 24⟩, ⟨17, 29⟩, ⟨29, 44⟩, ⟨40, 49⟩, ⟨4, 23⟩, ⟨15, 28⟩, ⟨27, 43⟩, ⟨38, 48⟩, ⟨2, 22⟩, ⟨13, 27⟩, ⟨25, 42⟩, ⟨36, 47⟩, ⟨11, 26⟩, ⟨23, 41⟩, ⟨34, 46⟩, ⟨9, 25⟩, ⟨20, 30⟩, ⟨32, 45⟩, ⟨7, 24⟩, ⟨18, 29⟩, ⟨30, 44⟩, ⟨41, 49⟩, ⟨5, 23⟩, ⟨16, 28⟩, ⟨28, 43⟩, ⟨39, 48⟩, ⟨3, 22⟩, ⟨14, 27⟩, ⟨26, 42⟩, ⟨37, 47⟩, ⟨1, 21⟩, ⟨12, 26⟩, ⟨24, 41⟩, ⟨35, 46⟩, ⟨10, 25⟩, ⟨21, 30⟩]⟩
theorem profile1295_checked : profile1295.check := by decide +kernel

noncomputable def selection0_1295 : Selection :=
  ⟨0, 4, 1, (1423/100), 1276, -347, 770⟩
theorem selection0_1295_checked : selection0_1295.check profile1295 := by decide +kernel

noncomputable def selection1_1295 : Selection :=
  ⟨1, -4, 5, (1399/100), 123, -483, 1138⟩
theorem selection1_1295_checked : selection1_1295.check profile1295 := by decide +kernel

noncomputable def selection2_1295 : Selection :=
  ⟨2, -12, 9, (279/20), 44, -587, 1506⟩
theorem selection2_1295_checked : selection2_1295.check profile1295 := by decide +kernel

noncomputable def profile1296 : ProfileCell :=
  ⟨(31/68), (26/57),
    [23, 22, 21, 20, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10], [21, 22, 22, 23, 23],
    [⟨21, 31⟩, ⟨22, 41⟩, ⟨43, 72⟩, ⟨33, 46⟩, ⟨8, 25⟩, ⟨19, 30⟩, ⟨31, 45⟩, ⟨42, 50⟩, ⟨6, 24⟩, ⟨17, 29⟩, ⟨29, 44⟩, ⟨40, 49⟩, ⟨4, 23⟩, ⟨15, 28⟩, ⟨27, 43⟩, ⟨38, 48⟩, ⟨2, 22⟩, ⟨13, 27⟩, ⟨25, 42⟩, ⟨36, 47⟩, ⟨11, 26⟩, ⟨23, 41⟩, ⟨34, 46⟩, ⟨9, 25⟩, ⟨20, 30⟩, ⟨32, 45⟩, ⟨7, 24⟩, ⟨18, 29⟩, ⟨30, 44⟩, ⟨41, 49⟩, ⟨5, 23⟩, ⟨16, 28⟩, ⟨28, 43⟩, ⟨39, 48⟩, ⟨3, 22⟩, ⟨14, 27⟩, ⟨26, 42⟩, ⟨37, 47⟩, ⟨1, 21⟩, ⟨12, 26⟩, ⟨24, 41⟩, ⟨35, 46⟩, ⟨10, 25⟩]⟩
theorem profile1296_checked : profile1296.check := by decide +kernel

noncomputable def selection0_1296 : Selection :=
  ⟨0, 4, 1, (363/25), 1802, -471, 1042⟩
theorem selection0_1296_checked : selection0_1296.check profile1296 := by decide +kernel

noncomputable def selection1_1296 : Selection :=
  ⟨1, -4, 5, (353/25), 172, -607, 1410⟩
theorem selection1_1296_checked : selection1_1296.check profile1296 := by decide +kernel

noncomputable def selection2_1296 : Selection :=
  ⟨2, -12, 9, (351/25), 61, -711, 1778⟩
theorem selection2_1296_checked : selection2_1296.check profile1296 := by decide +kernel

noncomputable def profile1297 : ProfileCell :=
  ⟨(26/57), (47/103),
    [23, 22, 21, 20, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10], [21, 22, 22, 23, 23],
    [⟨10, 26⟩, ⟨21, 31⟩, ⟨22, 41⟩, ⟨33, 46⟩, ⟨43, 72⟩, ⟨8, 25⟩, ⟨19, 30⟩, ⟨31, 45⟩, ⟨6, 24⟩, ⟨42, 50⟩, ⟨17, 29⟩, ⟨29, 44⟩, ⟨4, 23⟩, ⟨40, 49⟩, ⟨15, 28⟩, ⟨27, 43⟩, ⟨2, 22⟩, ⟨38, 48⟩, ⟨13, 27⟩, ⟨25, 42⟩, ⟨36, 47⟩, ⟨11, 26⟩, ⟨23, 41⟩, ⟨34, 46⟩, ⟨9, 25⟩, ⟨20, 30⟩, ⟨32, 45⟩, ⟨7, 24⟩, ⟨18, 29⟩, ⟨30, 44⟩, ⟨5, 23⟩, ⟨41, 49⟩, ⟨16, 28⟩, ⟨28, 43⟩, ⟨3, 22⟩, ⟨39, 48⟩, ⟨14, 27⟩, ⟨26, 42⟩, ⟨1, 21⟩, ⟨37, 47⟩, ⟨12, 26⟩, ⟨24, 41⟩, ⟨35, 46⟩]⟩
theorem profile1297_checked : profile1297.check := by decide +kernel

noncomputable def selection0_1297 : Selection :=
  ⟨0, 4, 1, (369/25), 1208, -575, 1270⟩
theorem selection0_1297_checked : selection0_1297.check profile1297 := by decide +kernel

noncomputable def selection1_1297 : Selection :=
  ⟨1, -4, 5, (711/50), 115, -763, 1752⟩
theorem selection1_1297_checked : selection1_1297.check profile1297 := by decide +kernel

noncomputable def selection2_1297 : Selection :=
  ⟨2, -12, 9, (353/25), 40, -867, 2120⟩
theorem selection2_1297_checked : selection2_1297.check profile1297 := by decide +kernel

noncomputable def profile1298 : ProfileCell :=
  ⟨(47/103), (21/46),
    [23, 22, 21, 20, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10], [21, 22, 22, 23, 23],
    [⟨35, 47⟩, ⟨10, 26⟩, ⟨21, 31⟩, ⟨22, 41⟩, ⟨33, 46⟩, ⟨8, 25⟩, ⟨43, 72⟩, ⟨19, 30⟩, ⟨31, 45⟩, ⟨6, 24⟩, ⟨42, 50⟩, ⟨17, 29⟩, ⟨29, 44⟩, ⟨4, 23⟩, ⟨40, 49⟩, ⟨15, 28⟩, ⟨27, 43⟩, ⟨2, 22⟩, ⟨38, 48⟩, ⟨13, 27⟩, ⟨25, 42⟩, ⟨36, 47⟩, ⟨11, 26⟩, ⟨23, 41⟩, ⟨34, 46⟩, ⟨9, 25⟩, ⟨20, 30⟩, ⟨32, 45⟩, ⟨7, 24⟩, ⟨18, 29⟩, ⟨30, 44⟩, ⟨5, 23⟩, ⟨41, 49⟩, ⟨16, 28⟩, ⟨28, 43⟩, ⟨3, 22⟩, ⟨39, 48⟩, ⟨14, 27⟩, ⟨26, 42⟩, ⟨1, 21⟩, ⟨37, 47⟩, ⟨12, 26⟩, ⟨24, 41⟩]⟩
theorem profile1298_checked : profile1298.check := by decide +kernel

noncomputable def selection0_1298 : Selection :=
  ⟨0, 4, 1, (374/25), 1516, -387, 858⟩
theorem selection0_1298_checked : selection0_1298.check profile1298 := by decide +kernel

noncomputable def selection1_1298 : Selection :=
  ⟨1, -4, 5, (143/10), 143, -481, 1134⟩
theorem selection1_1298_checked : selection1_1298.check profile1298 := by decide +kernel

noncomputable def selection2_1298 : Selection :=
  ⟨2, -12, 9, (709/50), 50, -585, 1502⟩
theorem selection2_1298_checked : selection2_1298.check profile1298 := by decide +kernel

noncomputable def profile1299 : ProfileCell :=
  ⟨(21/46), (16/35),
    [23, 22, 21, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10], [21, 22, 22, 23, 23],
    [⟨24, 42⟩, ⟨10, 26⟩, ⟨35, 47⟩, ⟨21, 31⟩, ⟨22, 41⟩, ⟨8, 25⟩, ⟨33, 46⟩, ⟨19, 30⟩, ⟨43, 72⟩, ⟨6, 24⟩, ⟨31, 45⟩, ⟨17, 29⟩, ⟨42, 50⟩, ⟨4, 23⟩, ⟨29, 44⟩, ⟨15, 28⟩, ⟨40, 49⟩, ⟨2, 22⟩, ⟨27, 43⟩, ⟨13, 27⟩, ⟨38, 48⟩, ⟨25, 42⟩, ⟨11, 26⟩, ⟨36, 47⟩, ⟨23, 41⟩, ⟨9, 25⟩, ⟨34, 46⟩, ⟨20, 30⟩, ⟨7, 24⟩, ⟨32, 45⟩, ⟨18, 29⟩, ⟨5, 23⟩, ⟨30, 44⟩, ⟨16, 28⟩, ⟨41, 49⟩, ⟨3, 22⟩, ⟨28, 43⟩, ⟨14, 27⟩, ⟨39, 48⟩, ⟨1, 21⟩, ⟨26, 42⟩, ⟨12, 26⟩, ⟨37, 47⟩]⟩
theorem profile1299_checked : profile1299.check := by decide +kernel

noncomputable def selection0_1299 : Selection :=
  ⟨0, 3, 1, (1369/100), 4075, -492, 1088⟩
theorem selection0_1299_checked : selection0_1299.check profile1299 := by decide +kernel

noncomputable def selection1_1299 : Selection :=
  ⟨1, -5, 5, (1261/100), 370, -628, 1456⟩
theorem selection1_1299_checked : selection1_1299.check profile1299 := by decide +kernel

noncomputable def selection2_1299 : Selection :=
  ⟨2, -13, 9, (1241/100), 128, -732, 1824⟩
theorem selection2_1299_checked : selection2_1299.check profile1299 := by decide +kernel

noncomputable def profile1300 : ProfileCell :=
  ⟨(16/35), (43/94),
    [23, 22, 21, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10], [21, 22, 22, 23, 23],
    [⟨37, 48⟩, ⟨10, 26⟩, ⟨24, 42⟩, ⟨21, 31⟩, ⟨35, 47⟩, ⟨8, 25⟩, ⟨22, 41⟩, ⟨19, 30⟩, ⟨33, 46⟩, ⟨6, 24⟩, ⟨43, 72⟩, ⟨17, 29⟩, ⟨31, 45⟩, ⟨42, 50⟩, ⟨4, 23⟩, ⟨15, 28⟩, ⟨29, 44⟩, ⟨40, 49⟩, ⟨2, 22⟩, ⟨13, 27⟩, ⟨27, 43⟩, ⟨38, 48⟩, ⟨11, 26⟩, ⟨25, 42⟩, ⟨36, 47⟩, ⟨9, 25⟩, ⟨23, 41⟩, ⟨20, 30⟩, ⟨34, 46⟩, ⟨7, 24⟩, ⟨18, 29⟩, ⟨32, 45⟩, ⟨5, 23⟩, ⟨16, 28⟩, ⟨30, 44⟩, ⟨41, 49⟩, ⟨3, 22⟩, ⟨14, 27⟩, ⟨28, 43⟩, ⟨39, 48⟩, ⟨1, 21⟩, ⟨12, 26⟩, ⟨26, 42⟩]⟩
theorem profile1300_checked : profile1300.check := by decide +kernel

noncomputable def selection0_1300 : Selection :=
  ⟨0, 4, 1, (346/25), 2012, -290, 642⟩
theorem selection0_1300_checked : selection0_1300.check profile1300 := by decide +kernel

noncomputable def selection1_1300 : Selection :=
  ⟨1, -4, 5, (127/10), 182, -430, 1010⟩
theorem selection1_1300_checked : selection1_1300.check profile1300 := by decide +kernel

noncomputable def selection2_1300 : Selection :=
  ⟨2, -12, 9, (1249/100), 63, -538, 1378⟩
theorem selection2_1300_checked : selection2_1300.check profile1300 := by decide +kernel

noncomputable def profile1301 : ProfileCell :=
  ⟨(43/94), (27/59),
    [23, 22, 21, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10], [21, 22, 22, 23, 23],
    [⟨26, 43⟩, ⟨37, 48⟩, ⟨10, 26⟩, ⟨24, 42⟩, ⟨21, 31⟩, ⟨35, 47⟩, ⟨8, 25⟩, ⟨22, 41⟩, ⟨19, 30⟩, ⟨33, 46⟩, ⟨6, 24⟩, ⟨17, 29⟩, ⟨43, 72⟩, ⟨31, 45⟩, ⟨42, 50⟩, ⟨4, 23⟩, ⟨15, 28⟩, ⟨29, 44⟩, ⟨40, 49⟩, ⟨2, 22⟩, ⟨13, 27⟩, ⟨27, 43⟩, ⟨38, 48⟩, ⟨11, 26⟩, ⟨25, 42⟩, ⟨36, 47⟩, ⟨9, 25⟩, ⟨23, 41⟩, ⟨20, 30⟩, ⟨34, 46⟩, ⟨7, 24⟩, ⟨18, 29⟩, ⟨32, 45⟩, ⟨5, 23⟩, ⟨16, 28⟩, ⟨30, 44⟩, ⟨41, 49⟩, ⟨3, 22⟩, ⟨14, 27⟩, ⟨28, 43⟩, ⟨39, 48⟩, ⟨1, 21⟩, ⟨12, 26⟩]⟩
theorem profile1301_checked : profile1301.check := by decide +kernel

noncomputable def selection0_1301 : Selection :=
  ⟨0, 4, 1, (693/50), 1194, -32, 78⟩
theorem selection0_1301_checked : selection0_1301.check profile1301 := by decide +kernel

noncomputable def selection1_1301 : Selection :=
  ⟨1, -4, 5, (1273/100), 109, -172, 446⟩
theorem selection1_1301_checked : selection1_1301.check profile1301 := by decide +kernel

noncomputable def selection2_1301 : Selection :=
  ⟨2, -12, 9, (313/25), 38, -280, 814⟩
theorem selection2_1301_checked : selection2_1301.check profile1301 := by decide +kernel

noncomputable def profile1302 : ProfileCell :=
  ⟨(27/59), (49/107),
    [23, 22, 21, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10], [21, 22, 22, 23, 23],
    [⟨12, 27⟩, ⟨26, 43⟩, ⟨37, 48⟩, ⟨10, 26⟩, ⟨24, 42⟩, ⟨21, 31⟩, ⟨35, 47⟩, ⟨8, 25⟩, ⟨22, 41⟩, ⟨19, 30⟩, ⟨33, 46⟩, ⟨6, 24⟩, ⟨17, 29⟩, ⟨31, 45⟩, ⟨43, 72⟩, ⟨4, 23⟩, ⟨42, 50⟩, ⟨15, 28⟩, ⟨29, 44⟩, ⟨2, 22⟩, ⟨40, 49⟩, ⟨13, 27⟩, ⟨27, 43⟩, ⟨38, 48⟩, ⟨11, 26⟩, ⟨25, 42⟩, ⟨36, 47⟩, ⟨9, 25⟩, ⟨23, 41⟩, ⟨20, 30⟩, ⟨34, 46⟩, ⟨7, 24⟩, ⟨18, 29⟩, ⟨32, 45⟩, ⟨5, 23⟩, ⟨16, 28⟩, ⟨30, 44⟩, ⟨3, 22⟩, ⟨41, 49⟩, ⟨14, 27⟩, ⟨28, 43⟩, ⟨1, 21⟩, ⟨39, 48⟩]⟩
theorem profile1302_checked : profile1302.check := by decide +kernel

noncomputable def selection0_1302 : Selection :=
  ⟨0, 3, 1, (1403/100), 2121, -172, 388⟩
theorem selection0_1302_checked : selection0_1302.check profile1302 := by decide +kernel

noncomputable def selection1_1302 : Selection :=
  ⟨1, -5, 5, (641/50), 192, -308, 756⟩
theorem selection1_1302_checked : selection1_1302.check profile1302 := by decide +kernel

noncomputable def selection2_1302 : Selection :=
  ⟨2, -13, 9, (1259/100), 67, -412, 1124⟩
theorem selection2_1302_checked : selection2_1302.check profile1302 := by decide +kernel

noncomputable def profile1303 : ProfileCell :=
  ⟨(49/107), (11/24),
    [23, 22, 21, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10], [21, 22, 22, 23, 23],
    [⟨39, 49⟩, ⟨12, 27⟩, ⟨26, 43⟩, ⟨37, 48⟩, ⟨10, 26⟩, ⟨24, 42⟩, ⟨21, 31⟩, ⟨35, 47⟩, ⟨8, 25⟩, ⟨22, 41⟩, ⟨19, 30⟩, ⟨33, 46⟩, ⟨6, 24⟩, ⟨17, 29⟩, ⟨31, 45⟩, ⟨4, 23⟩, ⟨43, 72⟩, ⟨42, 50⟩, ⟨15, 28⟩, ⟨29, 44⟩, ⟨2, 22⟩, ⟨40, 49⟩, ⟨13, 27⟩, ⟨27, 43⟩, ⟨38, 48⟩, ⟨11, 26⟩, ⟨25, 42⟩, ⟨36, 47⟩, ⟨9, 25⟩, ⟨23, 41⟩, ⟨20, 30⟩, ⟨34, 46⟩, ⟨7, 24⟩, ⟨18, 29⟩, ⟨32, 45⟩, ⟨5, 23⟩, ⟨16, 28⟩, ⟨30, 44⟩, ⟨3, 22⟩, ⟨41, 49⟩, ⟨14, 27⟩, ⟨28, 43⟩, ⟨1, 21⟩]⟩
theorem profile1303_checked : profile1303.check := by decide +kernel

noncomputable def selection0_1303 : Selection :=
  ⟨0, 3, 1, (1403/100), 2603, 24, -40⟩
theorem selection0_1303_checked : selection0_1303.check profile1303 := by decide +kernel

noncomputable def selection1_1303 : Selection :=
  ⟨1, -5, 5, (643/50), 236, -112, 328⟩
theorem selection1_1303_checked : selection1_1303.check profile1303 := by decide +kernel

noncomputable def selection2_1303 : Selection :=
  ⟨2, -13, 9, (253/20), 82, -216, 696⟩
theorem selection2_1303_checked : selection2_1303.check profile1303 := by decide +kernel

noncomputable def profile1304 : ProfileCell :=
  ⟨(11/24), (50/109),
    [23, 22, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 11, 10], [22, 22, 22, 23, 23],
    [⟨1, 22⟩, ⟨28, 44⟩, ⟨12, 27⟩, ⟨39, 49⟩, ⟨26, 43⟩, ⟨10, 26⟩, ⟨37, 48⟩, ⟨21, 31⟩, ⟨24, 42⟩, ⟨8, 25⟩, ⟨35, 47⟩, ⟨19, 30⟩, ⟨22, 41⟩, ⟨6, 24⟩, ⟨33, 46⟩, ⟨17, 29⟩, ⟨4, 23⟩, ⟨31, 45⟩, ⟨15, 28⟩, ⟨42, 50⟩, ⟨43, 72⟩, ⟨2, 22⟩, ⟨29, 44⟩, ⟨13, 27⟩, ⟨40, 49⟩, ⟨27, 43⟩, ⟨11, 26⟩, ⟨38, 48⟩, ⟨25, 42⟩, ⟨9, 25⟩, ⟨36, 47⟩, ⟨20, 30⟩, ⟨23, 41⟩, ⟨7, 24⟩, ⟨34, 46⟩, ⟨18, 29⟩, ⟨5, 23⟩, ⟨32, 45⟩, ⟨16, 28⟩, ⟨3, 22⟩, ⟨30, 44⟩, ⟨14, 27⟩, ⟨41, 49⟩]⟩
theorem profile1304_checked : profile1304.check := by decide +kernel

noncomputable def selection0_1304 : Selection :=
  ⟨0, 3, 1, (1411/100), 2566, -119, 272⟩
theorem selection0_1304_checked : selection0_1304.check profile1304 := by decide +kernel

noncomputable def selection1_1304 : Selection :=
  ⟨1, -5, 5, (259/20), 233, -255, 640⟩
theorem selection1_1304_checked : selection1_1304.check profile1304 := by decide +kernel

noncomputable def selection2_1304 : Selection :=
  ⟨2, -13, 9, (1273/100), 81, -359, 1008⟩
theorem selection2_1304_checked : selection2_1304.check profile1304 := by decide +kernel

noncomputable def profile1305 : ProfileCell :=
  ⟨(50/109), (28/61),
    [23, 22, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 11, 10], [22, 22, 22, 23, 23],
    [⟨41, 50⟩, ⟨1, 22⟩, ⟨28, 44⟩, ⟨12, 27⟩, ⟨39, 49⟩, ⟨26, 43⟩, ⟨10, 26⟩, ⟨37, 48⟩, ⟨21, 31⟩, ⟨24, 42⟩, ⟨8, 25⟩, ⟨35, 47⟩, ⟨19, 30⟩, ⟨22, 41⟩, ⟨6, 24⟩, ⟨33, 46⟩, ⟨17, 29⟩, ⟨4, 23⟩, ⟨31, 45⟩, ⟨15, 28⟩, ⟨42, 50⟩, ⟨2, 22⟩, ⟨43, 72⟩, ⟨29, 44⟩, ⟨13, 27⟩, ⟨40, 49⟩, ⟨27, 43⟩, ⟨11, 26⟩, ⟨38, 48⟩, ⟨25, 42⟩, ⟨9, 25⟩, ⟨36, 47⟩, ⟨20, 30⟩, ⟨23, 41⟩, ⟨7, 24⟩, ⟨34, 46⟩, ⟨18, 29⟩, ⟨5, 23⟩, ⟨32, 45⟩, ⟨16, 28⟩, ⟨3, 22⟩, ⟨30, 44⟩, ⟨14, 27⟩]⟩
theorem profile1305_checked : profile1305.check := by decide +kernel

noncomputable def selection0_1305 : Selection :=
  ⟨0, 4, 1, (141/10), 2015, 192, -410⟩
theorem selection0_1305_checked : selection0_1305.check profile1305 := by decide +kernel

noncomputable def selection1_1305 : Selection :=
  ⟨1, -4, 5, (647/50), 183, 52, -42⟩
theorem selection1_1305_checked : selection1_1305.check profile1305 := by decide +kernel

noncomputable def selection2_1305 : Selection :=
  ⟨2, -12, 9, (637/50), 64, -56, 326⟩
theorem selection2_1305_checked : selection2_1305.check profile1305 := by decide +kernel

noncomputable def profile1306 : ProfileCell :=
  ⟨(28/61), (45/98),
    [23, 22, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 11, 10], [22, 22, 22, 23, 23],
    [⟨14, 28⟩, ⟨1, 22⟩, ⟨41, 50⟩, ⟨28, 44⟩, ⟨12, 27⟩, ⟨39, 49⟩, ⟨26, 43⟩, ⟨10, 26⟩, ⟨37, 48⟩, ⟨21, 31⟩, ⟨24, 42⟩, ⟨8, 25⟩, ⟨35, 47⟩, ⟨19, 30⟩, ⟨22, 41⟩, ⟨6, 24⟩, ⟨33, 46⟩, ⟨17, 29⟩, ⟨4, 23⟩, ⟨31, 45⟩, ⟨15, 28⟩, ⟨2, 22⟩, ⟨42, 50⟩, ⟨29, 44⟩, ⟨43, 72⟩, ⟨13, 27⟩, ⟨40, 49⟩, ⟨27, 43⟩, ⟨11, 26⟩, ⟨38, 48⟩, ⟨25, 42⟩, ⟨9, 25⟩, ⟨36, 47⟩, ⟨20, 30⟩, ⟨23, 41⟩, ⟨7, 24⟩, ⟨34, 46⟩, ⟨18, 29⟩, ⟨5, 23⟩, ⟨32, 45⟩, ⟨16, 28⟩, ⟨3, 22⟩, ⟨30, 44⟩]⟩
theorem profile1306_checked : profile1306.check := by decide +kernel

noncomputable def selection0_1306 : Selection :=
  ⟨0, 4, 1, (1397/100), 1109, 80, -166⟩
theorem selection0_1306_checked : selection0_1306.check profile1306 := by decide +kernel

noncomputable def selection1_1306 : Selection :=
  ⟨1, -4, 5, (259/20), 102, -60, 202⟩
theorem selection1_1306_checked : selection1_1306.check profile1306 := by decide +kernel

noncomputable def selection2_1306 : Selection :=
  ⟨2, -12, 9, (319/25), 36, -168, 570⟩
theorem selection2_1306_checked : selection2_1306.check profile1306 := by decide +kernel

noncomputable def profile1307 : ProfileCell :=
  ⟨(45/98), (17/37),
    [23, 22, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 11, 10], [22, 22, 22, 23, 23],
    [⟨30, 45⟩, ⟨14, 28⟩, ⟨1, 22⟩, ⟨41, 50⟩, ⟨28, 44⟩, ⟨12, 27⟩, ⟨39, 49⟩, ⟨26, 43⟩, ⟨10, 26⟩, ⟨37, 48⟩, ⟨21, 31⟩, ⟨24, 42⟩, ⟨8, 25⟩, ⟨35, 47⟩, ⟨19, 30⟩, ⟨22, 41⟩, ⟨6, 24⟩, ⟨33, 46⟩, ⟨17, 29⟩, ⟨4, 23⟩, ⟨31, 45⟩, ⟨15, 28⟩, ⟨2, 22⟩, ⟨42, 50⟩, ⟨29, 44⟩, ⟨13, 27⟩, ⟨43, 72⟩, ⟨40, 49⟩, ⟨27, 43⟩, ⟨11, 26⟩, ⟨38, 48⟩, ⟨25, 42⟩, ⟨9, 25⟩, ⟨36, 47⟩, ⟨20, 30⟩, ⟨23, 41⟩, ⟨7, 24⟩, ⟨34, 46⟩, ⟨18, 29⟩, ⟨5, 23⟩, ⟨32, 45⟩, ⟨16, 28⟩, ⟨3, 22⟩]⟩
theorem profile1307_checked : profile1307.check := by decide +kernel

noncomputable def selection0_1307 : Selection :=
  ⟨0, 4, 1, (697/50), 1823, 260, -558⟩
theorem selection0_1307_checked : selection0_1307.check profile1307 := by decide +kernel

noncomputable def selection1_1307 : Selection :=
  ⟨1, -4, 5, (259/20), 168, 120, -190⟩
theorem selection1_1307_checked : selection1_1307.check profile1307 := by decide +kernel

noncomputable def selection2_1307 : Selection :=
  ⟨2, -12, 9, (1277/100), 59, 12, 178⟩
theorem selection2_1307_checked : selection2_1307.check profile1307 := by decide +kernel

noncomputable def profile1308 : ProfileCell :=
  ⟨(17/37), (23/50),
    [23, 22, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 11, 10], [22, 22, 22, 23, 23],
    [⟨14, 28⟩, ⟨30, 45⟩, ⟨1, 22⟩, ⟨41, 50⟩, ⟨12, 27⟩, ⟨28, 44⟩, ⟨39, 49⟩, ⟨10, 26⟩, ⟨26, 43⟩, ⟨21, 31⟩, ⟨37, 48⟩, ⟨8, 25⟩, ⟨24, 42⟩, ⟨19, 30⟩, ⟨35, 47⟩, ⟨6, 24⟩, ⟨22, 41⟩, ⟨17, 29⟩, ⟨33, 46⟩, ⟨4, 23⟩, ⟨15, 28⟩, ⟨31, 45⟩, ⟨2, 22⟩, ⟨42, 50⟩, ⟨13, 27⟩, ⟨29, 44⟩, ⟨43, 72⟩, ⟨40, 49⟩, ⟨11, 26⟩, ⟨27, 43⟩, ⟨38, 48⟩, ⟨9, 25⟩, ⟨25, 42⟩, ⟨20, 30⟩, ⟨36, 47⟩, ⟨7, 24⟩, ⟨23, 41⟩, ⟨18, 29⟩, ⟨34, 46⟩, ⟨5, 23⟩, ⟨16, 28⟩, ⟨32, 45⟩, ⟨3, 22⟩]⟩
theorem profile1308_checked : profile1308.check := by decide +kernel

noncomputable def selection0_1308 : Selection :=
  ⟨0, 4, 1, (1377/100), 3522, 90, -188⟩
theorem selection0_1308_checked : selection0_1308.check profile1308 := by decide +kernel

noncomputable def selection1_1308 : Selection :=
  ⟨1, -4, 5, (324/25), 329, -50, 180⟩
theorem selection1_1308_checked : selection1_1308.check profile1308 := by decide +kernel

noncomputable def selection2_1308 : Selection :=
  ⟨2, -12, 9, (1283/100), 115, -158, 548⟩
theorem selection2_1308_checked : selection2_1308.check profile1308 := by decide +kernel

noncomputable def profile1309 : ProfileCell :=
  ⟨(23/50), (29/63),
    [23, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 11, 10], [22, 22, 23, 23, 23],
    [⟨3, 23⟩, ⟨32, 46⟩, ⟨14, 28⟩, ⟨1, 22⟩, ⟨30, 45⟩, ⟨12, 27⟩, ⟨41, 50⟩, ⟨28, 44⟩, ⟨10, 26⟩, ⟨39, 49⟩, ⟨26, 43⟩, ⟨21, 31⟩, ⟨8, 25⟩, ⟨37, 48⟩, ⟨24, 42⟩, ⟨19, 30⟩, ⟨6, 24⟩, ⟨35, 47⟩, ⟨22, 41⟩, ⟨17, 29⟩, ⟨4, 23⟩, ⟨33, 46⟩, ⟨15, 28⟩, ⟨2, 22⟩, ⟨31, 45⟩, ⟨13, 27⟩, ⟨42, 50⟩, ⟨29, 44⟩, ⟨11, 26⟩, ⟨40, 49⟩, ⟨43, 72⟩, ⟨27, 43⟩, ⟨9, 25⟩, ⟨38, 48⟩, ⟨25, 42⟩, ⟨20, 30⟩, ⟨7, 24⟩, ⟨36, 47⟩, ⟨23, 41⟩, ⟨18, 29⟩, ⟨5, 23⟩, ⟨34, 46⟩, ⟨16, 28⟩]⟩
theorem profile1309_checked : profile1309.check := by decide +kernel

noncomputable def selection0_1309 : Selection :=
  ⟨0, 5, 1, (783/50), 2348, 90, -188⟩
theorem selection0_1309_checked : selection0_1309.check profile1309 := by decide +kernel

noncomputable def selection1_1309 : Selection :=
  ⟨1, -3, 5, (749/50), 224, -50, 180⟩
theorem selection1_1309_checked : selection1_1309.check profile1309 := by decide +kernel

noncomputable def selection2_1309 : Selection :=
  ⟨2, -11, 9, (1487/100), 78, -158, 548⟩
theorem selection2_1309_checked : selection2_1309.check profile1309 := by decide +kernel

noncomputable def profile1310 : ProfileCell :=
  ⟨(29/63), (47/102),
    [23, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 11, 10], [22, 22, 23, 23, 23],
    [⟨16, 29⟩, ⟨3, 23⟩, ⟨32, 46⟩, ⟨14, 28⟩, ⟨1, 22⟩, ⟨30, 45⟩, ⟨12, 27⟩, ⟨41, 50⟩, ⟨28, 44⟩, ⟨10, 26⟩, ⟨39, 49⟩, ⟨26, 43⟩, ⟨21, 31⟩, ⟨8, 25⟩, ⟨37, 48⟩, ⟨24, 42⟩, ⟨19, 30⟩, ⟨6, 24⟩, ⟨35, 47⟩, ⟨22, 41⟩, ⟨17, 29⟩, ⟨4, 23⟩, ⟨33, 46⟩, ⟨15, 28⟩, ⟨2, 22⟩, ⟨31, 45⟩, ⟨13, 27⟩, ⟨42, 50⟩, ⟨29, 44⟩, ⟨11, 26⟩, ⟨40, 49⟩, ⟨27, 43⟩, ⟨43, 72⟩, ⟨9, 25⟩, ⟨38, 48⟩, ⟨25, 42⟩, ⟨20, 30⟩, ⟨7, 24⟩, ⟨36, 47⟩, ⟨23, 41⟩, ⟨18, 29⟩, ⟨5, 23⟩, ⟨34, 46⟩]⟩
theorem profile1310_checked : profile1310.check := by decide +kernel

noncomputable def selection0_1310 : Selection :=
  ⟨0, 5, 1, (781/50), 3439, -26, 64⟩
theorem selection0_1310_checked : selection0_1310.check profile1310 := by decide +kernel

noncomputable def selection1_1310 : Selection :=
  ⟨1, -3, 5, (301/20), 330, -166, 432⟩
theorem selection1_1310_checked : selection1_1310.check profile1310 := by decide +kernel

noncomputable def selection2_1310 : Selection :=
  ⟨2, -11, 9, (299/20), 116, -274, 800⟩
theorem selection2_1310_checked : selection2_1310.check profile1310 := by decide +kernel

noncomputable def profile1311 : ProfileCell :=
  ⟨(47/102), (6/13),
    [23, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 11, 10], [22, 22, 23, 23, 23],
    [⟨34, 47⟩, ⟨16, 29⟩, ⟨3, 23⟩, ⟨32, 46⟩, ⟨14, 28⟩, ⟨1, 22⟩, ⟨30, 45⟩, ⟨12, 27⟩, ⟨41, 50⟩, ⟨28, 44⟩, ⟨10, 26⟩, ⟨39, 49⟩, ⟨26, 43⟩, ⟨21, 31⟩, ⟨8, 25⟩, ⟨37, 48⟩, ⟨24, 42⟩, ⟨19, 30⟩, ⟨6, 24⟩, ⟨35, 47⟩, ⟨22, 41⟩, ⟨17, 29⟩, ⟨4, 23⟩, ⟨33, 46⟩, ⟨15, 28⟩, ⟨2, 22⟩, ⟨31, 45⟩, ⟨13, 27⟩, ⟨42, 50⟩, ⟨29, 44⟩, ⟨11, 26⟩, ⟨40, 49⟩, ⟨27, 43⟩, ⟨9, 25⟩, ⟨43, 72⟩, ⟨38, 48⟩, ⟨25, 42⟩, ⟨20, 30⟩, ⟨7, 24⟩, ⟨36, 47⟩, ⟨23, 41⟩, ⟨18, 29⟩, ⟨5, 23⟩]⟩
theorem profile1311_checked : profile1311.check := by decide +kernel

noncomputable def selection0_1311 : Selection :=
  ⟨0, 5, 1, (781/50), 5540, 162, -344⟩
theorem selection0_1311_checked : selection0_1311.check profile1311 := by decide +kernel

noncomputable def selection1_1311 : Selection :=
  ⟨1, -3, 5, (753/50), 532, 22, 24⟩
theorem selection1_1311_checked : selection1_1311.check profile1311 := by decide +kernel

noncomputable def selection2_1311 : Selection :=
  ⟨2, -11, 9, 15, 187, -86, 392⟩
theorem selection2_1311_checked : selection2_1311.check profile1311 := by decide +kernel

noncomputable def profile1312 : ProfileCell :=
  ⟨(6/13), (73/158),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨5, 24⟩, ⟨18, 30⟩, ⟨23, 42⟩, ⟨36, 48⟩, ⟨3, 23⟩, ⟨16, 29⟩, ⟨34, 47⟩, ⟨1, 22⟩, ⟨14, 28⟩, ⟨32, 46⟩, ⟨12, 27⟩, ⟨30, 45⟩, ⟨10, 26⟩, ⟨28, 44⟩, ⟨41, 50⟩, ⟨8, 25⟩, ⟨21, 31⟩, ⟨26, 43⟩, ⟨39, 49⟩, ⟨6, 24⟩, ⟨19, 30⟩, ⟨24, 42⟩, ⟨37, 48⟩, ⟨4, 23⟩, ⟨17, 29⟩, ⟨22, 41⟩, ⟨35, 47⟩, ⟨2, 22⟩, ⟨15, 28⟩, ⟨33, 46⟩, ⟨13, 27⟩, ⟨31, 45⟩, ⟨11, 26⟩, ⟨29, 44⟩, ⟨42, 50⟩, ⟨9, 25⟩, ⟨27, 43⟩, ⟨40, 49⟩, ⟨7, 24⟩, ⟨20, 30⟩, ⟨25, 42⟩, ⟨38, 48⟩, ⟨43, 72⟩]⟩
theorem profile1312_checked : profile1312.check := by decide +kernel

noncomputable def selection0_1312 : Selection :=
  ⟨0, 5, 1, (767/50), 3503, 66, -136⟩
theorem selection0_1312_checked : selection0_1312.check profile1312 := by decide +kernel

noncomputable def selection1_1312 : Selection :=
  ⟨1, -3, 5, (151/10), 345, -74, 232⟩
theorem selection1_1312_checked : selection1_1312.check profile1312 := by decide +kernel

noncomputable def selection2_1312 : Selection :=
  ⟨2, -11, 9, (753/50), 121, -182, 600⟩
theorem selection2_1312_checked : selection2_1312.check profile1312 := by decide +kernel

noncomputable def profile1313 : ProfileCell :=
  ⟨(73/158), (49/106),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨43, 73⟩, ⟨5, 24⟩, ⟨18, 30⟩, ⟨23, 42⟩, ⟨36, 48⟩, ⟨3, 23⟩, ⟨16, 29⟩, ⟨34, 47⟩, ⟨1, 22⟩, ⟨14, 28⟩, ⟨32, 46⟩, ⟨12, 27⟩, ⟨30, 45⟩, ⟨10, 26⟩, ⟨28, 44⟩, ⟨41, 50⟩, ⟨8, 25⟩, ⟨21, 31⟩, ⟨26, 43⟩, ⟨39, 49⟩, ⟨6, 24⟩, ⟨19, 30⟩, ⟨24, 42⟩, ⟨37, 48⟩, ⟨4, 23⟩, ⟨17, 29⟩, ⟨22, 41⟩, ⟨35, 47⟩, ⟨2, 22⟩, ⟨15, 28⟩, ⟨33, 46⟩, ⟨13, 27⟩, ⟨31, 45⟩, ⟨11, 26⟩, ⟨29, 44⟩, ⟨42, 50⟩, ⟨9, 25⟩, ⟨27, 43⟩, ⟨40, 49⟩, ⟨7, 24⟩, ⟨20, 30⟩, ⟨25, 42⟩, ⟨38, 48⟩]⟩
theorem profile1313_checked : profile1313.check := by decide +kernel

noncomputable def selection0_1313 : Selection :=
  ⟨0, 5, 1, (391/25), 1749, -664, 1444⟩
theorem selection0_1313_checked : selection0_1313.check profile1313 := by decide +kernel

noncomputable def selection1_1313 : Selection :=
  ⟨1, -3, 5, (1527/100), 171, -950, 2128⟩
theorem selection1_1313_checked : selection1_1313.check profile1313 := by decide +kernel

noncomputable def selection2_1313 : Selection :=
  ⟨2, -11, 9, (1519/100), 60, -1058, 2496⟩
theorem selection2_1313_checked : selection2_1313.check profile1313 := by decide +kernel

noncomputable def profile1314 : ProfileCell :=
  ⟨(49/106), (43/93),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨38, 49⟩, ⟨5, 24⟩, ⟨43, 73⟩, ⟨18, 30⟩, ⟨23, 42⟩, ⟨36, 48⟩, ⟨3, 23⟩, ⟨16, 29⟩, ⟨34, 47⟩, ⟨1, 22⟩, ⟨14, 28⟩, ⟨32, 46⟩, ⟨12, 27⟩, ⟨30, 45⟩, ⟨10, 26⟩, ⟨28, 44⟩, ⟨41, 50⟩, ⟨8, 25⟩, ⟨21, 31⟩, ⟨26, 43⟩, ⟨39, 49⟩, ⟨6, 24⟩, ⟨19, 30⟩, ⟨24, 42⟩, ⟨37, 48⟩, ⟨4, 23⟩, ⟨17, 29⟩, ⟨22, 41⟩, ⟨35, 47⟩, ⟨2, 22⟩, ⟨15, 28⟩, ⟨33, 46⟩, ⟨13, 27⟩, ⟨31, 45⟩, ⟨11, 26⟩, ⟨29, 44⟩, ⟨42, 50⟩, ⟨9, 25⟩, ⟨27, 43⟩, ⟨40, 49⟩, ⟨7, 24⟩, ⟨20, 30⟩, ⟨25, 42⟩]⟩
theorem profile1314_checked : profile1314.check := by decide +kernel

noncomputable def selection0_1314 : Selection :=
  ⟨0, 5, 1, (1577/100), 749, -566, 1232⟩
theorem selection0_1314_checked : selection0_1314.check profile1314 := by decide +kernel

noncomputable def selection1_1314 : Selection :=
  ⟨1, -3, 5, (1533/100), 73, -754, 1704⟩
theorem selection1_1314_checked : selection1_1314.check profile1314 := by decide +kernel

noncomputable def selection2_1314 : Selection :=
  ⟨2, -11, 9, (1523/100), 26, -862, 2072⟩
theorem selection2_1314_checked : selection2_1314.check profile1314 := by decide +kernel

noncomputable def profile1315 : ProfileCell :=
  ⟨(43/93), (31/67),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨25, 43⟩, ⟨38, 49⟩, ⟨5, 24⟩, ⟨18, 30⟩, ⟨43, 73⟩, ⟨23, 42⟩, ⟨36, 48⟩, ⟨3, 23⟩, ⟨16, 29⟩, ⟨34, 47⟩, ⟨1, 22⟩, ⟨14, 28⟩, ⟨32, 46⟩, ⟨12, 27⟩, ⟨30, 45⟩, ⟨10, 26⟩, ⟨28, 44⟩, ⟨41, 50⟩, ⟨8, 25⟩, ⟨21, 31⟩, ⟨26, 43⟩, ⟨39, 49⟩, ⟨6, 24⟩, ⟨19, 30⟩, ⟨24, 42⟩, ⟨37, 48⟩, ⟨4, 23⟩, ⟨17, 29⟩, ⟨22, 41⟩, ⟨35, 47⟩, ⟨2, 22⟩, ⟨15, 28⟩, ⟨33, 46⟩, ⟨13, 27⟩, ⟨31, 45⟩, ⟨11, 26⟩, ⟨29, 44⟩, ⟨42, 50⟩, ⟨9, 25⟩, ⟨27, 43⟩, ⟨40, 49⟩, ⟨7, 24⟩, ⟨20, 30⟩]⟩
theorem profile1315_checked : profile1315.check := by decide +kernel

noncomputable def selection0_1315 : Selection :=
  ⟨0, 5, 1, (1607/100), 2412, -394, 860⟩
theorem selection0_1315_checked : selection0_1315.check profile1315 := by decide +kernel

noncomputable def selection1_1315 : Selection :=
  ⟨1, -3, 5, (309/20), 232, -496, 1146⟩
theorem selection1_1315_checked : selection1_1315.check profile1315 := by decide +kernel

noncomputable def selection2_1315 : Selection :=
  ⟨2, -11, 9, (1533/100), 82, -604, 1514⟩
theorem selection2_1315_checked : selection2_1315.check profile1315 := by decide +kernel

noncomputable def profile1316 : ProfileCell :=
  ⟨(31/67), (25/54),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨20, 31⟩, ⟨25, 43⟩, ⟨38, 49⟩, ⟨5, 24⟩, ⟨18, 30⟩, ⟨23, 42⟩, ⟨43, 73⟩, ⟨36, 48⟩, ⟨3, 23⟩, ⟨16, 29⟩, ⟨34, 47⟩, ⟨1, 22⟩, ⟨14, 28⟩, ⟨32, 46⟩, ⟨12, 27⟩, ⟨30, 45⟩, ⟨10, 26⟩, ⟨28, 44⟩, ⟨41, 50⟩, ⟨8, 25⟩, ⟨21, 31⟩, ⟨26, 43⟩, ⟨39, 49⟩, ⟨6, 24⟩, ⟨19, 30⟩, ⟨24, 42⟩, ⟨37, 48⟩, ⟨4, 23⟩, ⟨17, 29⟩, ⟨22, 41⟩, ⟨35, 47⟩, ⟨2, 22⟩, ⟨15, 28⟩, ⟨33, 46⟩, ⟨13, 27⟩, ⟨31, 45⟩, ⟨11, 26⟩, ⟨29, 44⟩, ⟨42, 50⟩, ⟨9, 25⟩, ⟨27, 43⟩, ⟨40, 49⟩, ⟨7, 24⟩]⟩
theorem profile1316_checked : profile1316.check := by decide +kernel

noncomputable def selection0_1316 : Selection :=
  ⟨0, 5, 1, (82/5), 2117, -518, 1128⟩
theorem selection0_1316_checked : selection0_1316.check profile1316 := by decide +kernel

noncomputable def selection1_1316 : Selection :=
  ⟨1, -3, 5, (78/5), 202, -682, 1548⟩
theorem selection1_1316_checked : selection1_1316.check profile1316 := by decide +kernel

noncomputable def selection2_1316 : Selection :=
  ⟨2, -11, 9, (1543/100), 71, -790, 1916⟩
theorem selection2_1316_checked : selection2_1316.check profile1316 := by decide +kernel

noncomputable def profile1317 : ProfileCell :=
  ⟨(25/54), (44/95),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨7, 25⟩, ⟨40, 50⟩, ⟨20, 31⟩, ⟨25, 43⟩, ⟨5, 24⟩, ⟨38, 49⟩, ⟨18, 30⟩, ⟨23, 42⟩, ⟨3, 23⟩, ⟨36, 48⟩, ⟨43, 73⟩, ⟨16, 29⟩, ⟨1, 22⟩, ⟨34, 47⟩, ⟨14, 28⟩, ⟨32, 46⟩, ⟨12, 27⟩, ⟨30, 45⟩, ⟨10, 26⟩, ⟨28, 44⟩, ⟨8, 25⟩, ⟨41, 50⟩, ⟨21, 31⟩, ⟨26, 43⟩, ⟨6, 24⟩, ⟨39, 49⟩, ⟨19, 30⟩, ⟨24, 42⟩, ⟨4, 23⟩, ⟨37, 48⟩, ⟨17, 29⟩, ⟨22, 41⟩, ⟨2, 22⟩, ⟨35, 47⟩, ⟨15, 28⟩, ⟨33, 46⟩, ⟨13, 27⟩, ⟨31, 45⟩, ⟨11, 26⟩, ⟨29, 44⟩, ⟨9, 25⟩, ⟨42, 50⟩, ⟨27, 43⟩]⟩
theorem profile1317_checked : profile1317.check := by decide +kernel

noncomputable def selection0_1317 : Selection :=
  ⟨0, 5, 1, (831/50), 1511, -468, 1020⟩
theorem selection0_1317_checked : selection0_1317.check profile1317 := by decide +kernel

noncomputable def selection1_1317 : Selection :=
  ⟨1, -3, 5, (1569/100), 143, -582, 1332⟩
theorem selection1_1317_checked : selection1_1317.check profile1317 := by decide +kernel

noncomputable def selection2_1317 : Selection :=
  ⟨2, -11, 9, (31/2), 50, -690, 1700⟩
theorem selection2_1317_checked : selection2_1317.check profile1317 := by decide +kernel

noncomputable def profile1318 : ProfileCell :=
  ⟨(44/95), (19/41),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨27, 44⟩, ⟨7, 25⟩, ⟨40, 50⟩, ⟨20, 31⟩, ⟨25, 43⟩, ⟨5, 24⟩, ⟨38, 49⟩, ⟨18, 30⟩, ⟨23, 42⟩, ⟨3, 23⟩, ⟨36, 48⟩, ⟨16, 29⟩, ⟨43, 73⟩, ⟨1, 22⟩, ⟨34, 47⟩, ⟨14, 28⟩, ⟨32, 46⟩, ⟨12, 27⟩, ⟨30, 45⟩, ⟨10, 26⟩, ⟨28, 44⟩, ⟨8, 25⟩, ⟨41, 50⟩, ⟨21, 31⟩, ⟨26, 43⟩, ⟨6, 24⟩, ⟨39, 49⟩, ⟨19, 30⟩, ⟨24, 42⟩, ⟨4, 23⟩, ⟨37, 48⟩, ⟨17, 29⟩, ⟨22, 41⟩, ⟨2, 22⟩, ⟨35, 47⟩, ⟨15, 28⟩, ⟨33, 46⟩, ⟨13, 27⟩, ⟨31, 45⟩, ⟨11, 26⟩, ⟨29, 44⟩, ⟨9, 25⟩, ⟨42, 50⟩]⟩
theorem profile1318_checked : profile1318.check := by decide +kernel

noncomputable def selection0_1318 : Selection :=
  ⟨0, 5, 1, (1679/100), 2009, -292, 640⟩
theorem selection0_1318_checked : selection0_1318.check profile1318 := by decide +kernel

noncomputable def selection1_1318 : Selection :=
  ⟨1, -3, 5, (63/4), 189, -318, 762⟩
theorem selection1_1318_checked : selection1_1318.check profile1318 := by decide +kernel

noncomputable def selection2_1318 : Selection :=
  ⟨2, -11, 9, (389/25), 66, -426, 1130⟩
theorem selection2_1318_checked : selection2_1318.check profile1318 := by decide +kernel

noncomputable def profile1319 : ProfileCell :=
  ⟨(19/41), (51/110),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨7, 25⟩, ⟨27, 44⟩, ⟨20, 31⟩, ⟨40, 50⟩, ⟨5, 24⟩, ⟨25, 43⟩, ⟨18, 30⟩, ⟨38, 49⟩, ⟨3, 23⟩, ⟨23, 42⟩, ⟨16, 29⟩, ⟨36, 48⟩, ⟨43, 73⟩, ⟨1, 22⟩, ⟨14, 28⟩, ⟨34, 47⟩, ⟨12, 27⟩, ⟨32, 46⟩, ⟨10, 26⟩, ⟨30, 45⟩, ⟨8, 25⟩, ⟨28, 44⟩, ⟨21, 31⟩, ⟨41, 50⟩, ⟨6, 24⟩, ⟨26, 43⟩, ⟨19, 30⟩, ⟨39, 49⟩, ⟨4, 23⟩, ⟨24, 42⟩, ⟨17, 29⟩, ⟨37, 48⟩, ⟨2, 22⟩, ⟨22, 41⟩, ⟨15, 28⟩, ⟨35, 47⟩, ⟨13, 27⟩, ⟨33, 46⟩, ⟨11, 26⟩, ⟨31, 45⟩, ⟨9, 25⟩, ⟨29, 44⟩, ⟨42, 50⟩]⟩
theorem profile1319_checked : profile1319.check := by decide +kernel

noncomputable def selection0_1319 : Selection :=
  ⟨0, 5, 1, (427/25), 1763, -558, 1214⟩
theorem selection0_1319_checked : selection0_1319.check profile1319 := by decide +kernel

noncomputable def selection1_1319 : Selection :=
  ⟨1, -3, 5, (1587/100), 165, -698, 1582⟩
theorem selection1_1319_checked : selection1_1319.check profile1319 := by decide +kernel

noncomputable def selection2_1319 : Selection :=
  ⟨2, -11, 9, (313/20), 58, -806, 1950⟩
theorem selection2_1319_checked : selection2_1319.check profile1319 := by decide +kernel

noncomputable def profile1320 : ProfileCell :=
  ⟨(51/110), (45/97),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨42, 51⟩, ⟨7, 25⟩, ⟨27, 44⟩, ⟨20, 31⟩, ⟨40, 50⟩, ⟨5, 24⟩, ⟨25, 43⟩, ⟨18, 30⟩, ⟨38, 49⟩, ⟨3, 23⟩, ⟨23, 42⟩, ⟨16, 29⟩, ⟨36, 48⟩, ⟨1, 22⟩, ⟨43, 73⟩, ⟨14, 28⟩, ⟨34, 47⟩, ⟨12, 27⟩, ⟨32, 46⟩, ⟨10, 26⟩, ⟨30, 45⟩, ⟨8, 25⟩, ⟨28, 44⟩, ⟨21, 31⟩, ⟨41, 50⟩, ⟨6, 24⟩, ⟨26, 43⟩, ⟨19, 30⟩, ⟨39, 49⟩, ⟨4, 23⟩, ⟨24, 42⟩, ⟨17, 29⟩, ⟨37, 48⟩, ⟨2, 22⟩, ⟨22, 41⟩, ⟨15, 28⟩, ⟨35, 47⟩, ⟨13, 27⟩, ⟨33, 46⟩, ⟨11, 26⟩, ⟨31, 45⟩, ⟨9, 25⟩, ⟨29, 44⟩]⟩
theorem profile1320_checked : profile1320.check := by decide +kernel

noncomputable def selection0_1320 : Selection :=
  ⟨0, 5, 1, (433/25), 2265, -354, 774⟩
theorem selection0_1320_checked : selection0_1320.check profile1320 := by decide +kernel

noncomputable def selection1_1320 : Selection :=
  ⟨1, -3, 5, (799/50), 210, -494, 1142⟩
theorem selection1_1320_checked : selection1_1320.check profile1320 := by decide +kernel

noncomputable def selection2_1320 : Selection :=
  ⟨2, -11, 9, (1573/100), 73, -602, 1510⟩
theorem selection2_1320_checked : selection2_1320.check profile1320 := by decide +kernel

noncomputable def profile1321 : ProfileCell :=
  ⟨(45/97), (13/28),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨29, 45⟩, ⟨42, 51⟩, ⟨7, 25⟩, ⟨27, 44⟩, ⟨20, 31⟩, ⟨40, 50⟩, ⟨5, 24⟩, ⟨25, 43⟩, ⟨18, 30⟩, ⟨38, 49⟩, ⟨3, 23⟩, ⟨23, 42⟩, ⟨16, 29⟩, ⟨36, 48⟩, ⟨1, 22⟩, ⟨14, 28⟩, ⟨43, 73⟩, ⟨34, 47⟩, ⟨12, 27⟩, ⟨32, 46⟩, ⟨10, 26⟩, ⟨30, 45⟩, ⟨8, 25⟩, ⟨28, 44⟩, ⟨21, 31⟩, ⟨41, 50⟩, ⟨6, 24⟩, ⟨26, 43⟩, ⟨19, 30⟩, ⟨39, 49⟩, ⟨4, 23⟩, ⟨24, 42⟩, ⟨17, 29⟩, ⟨37, 48⟩, ⟨2, 22⟩, ⟨22, 41⟩, ⟨15, 28⟩, ⟨35, 47⟩, ⟨13, 27⟩, ⟨33, 46⟩, ⟨11, 26⟩, ⟨31, 45⟩, ⟨9, 25⟩]⟩
theorem profile1321_checked : profile1321.check := by decide +kernel

noncomputable def selection0_1321 : Selection :=
  ⟨0, 5, 1, (1739/100), 2973, -84, 192⟩
theorem selection0_1321_checked : selection0_1321.check profile1321 := by decide +kernel

noncomputable def selection1_1321 : Selection :=
  ⟨1, -3, 5, (321/20), 276, -224, 560⟩
theorem selection1_1321_checked : selection1_1321.check profile1321 := by decide +kernel

noncomputable def selection2_1321 : Selection :=
  ⟨2, -11, 9, (79/5), 96, -332, 928⟩
theorem selection2_1321_checked : selection2_1321.check profile1321 := by decide +kernel

noncomputable def profile1322 : ProfileCell :=
  ⟨(13/28), (46/99),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨9, 26⟩, ⟨29, 45⟩, ⟨7, 25⟩, ⟨42, 51⟩, ⟨20, 31⟩, ⟨27, 44⟩, ⟨5, 24⟩, ⟨40, 50⟩, ⟨18, 30⟩, ⟨25, 43⟩, ⟨3, 23⟩, ⟨38, 49⟩, ⟨16, 29⟩, ⟨23, 42⟩, ⟨1, 22⟩, ⟨36, 48⟩, ⟨14, 28⟩, ⟨34, 47⟩, ⟨43, 73⟩, ⟨12, 27⟩, ⟨32, 46⟩, ⟨10, 26⟩, ⟨30, 45⟩, ⟨8, 25⟩, ⟨21, 31⟩, ⟨28, 44⟩, ⟨6, 24⟩, ⟨41, 50⟩, ⟨19, 30⟩, ⟨26, 43⟩, ⟨4, 23⟩, ⟨39, 49⟩, ⟨17, 29⟩, ⟨24, 42⟩, ⟨2, 22⟩, ⟨37, 48⟩, ⟨15, 28⟩, ⟨22, 41⟩, ⟨35, 47⟩, ⟨13, 27⟩, ⟨33, 46⟩, ⟨11, 26⟩, ⟨31, 45⟩]⟩
theorem profile1322_checked : profile1322.check := by decide +kernel

noncomputable def selection0_1322 : Selection :=
  ⟨0, 4, 1, (1559/100), 2608, -240, 528⟩
theorem selection0_1322_checked : selection0_1322.check profile1322 := by decide +kernel

noncomputable def selection1_1322 : Selection :=
  ⟨1, -4, 5, (354/25), 239, -380, 896⟩
theorem selection1_1322_checked : selection1_1322.check profile1322 := by decide +kernel

noncomputable def selection2_1322 : Selection :=
  ⟨2, -12, 9, (1389/100), 83, -488, 1264⟩
theorem selection2_1322_checked : selection2_1322.check profile1322 := by decide +kernel

noncomputable def profile1323 : ProfileCell :=
  ⟨(46/99), (20/43),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨31, 46⟩, ⟨9, 26⟩, ⟨29, 45⟩, ⟨7, 25⟩, ⟨42, 51⟩, ⟨20, 31⟩, ⟨27, 44⟩, ⟨5, 24⟩, ⟨40, 50⟩, ⟨18, 30⟩, ⟨25, 43⟩, ⟨3, 23⟩, ⟨38, 49⟩, ⟨16, 29⟩, ⟨23, 42⟩, ⟨1, 22⟩, ⟨36, 48⟩, ⟨14, 28⟩, ⟨34, 47⟩, ⟨12, 27⟩, ⟨43, 73⟩, ⟨32, 46⟩, ⟨10, 26⟩, ⟨30, 45⟩, ⟨8, 25⟩, ⟨21, 31⟩, ⟨28, 44⟩, ⟨6, 24⟩, ⟨41, 50⟩, ⟨19, 30⟩, ⟨26, 43⟩, ⟨4, 23⟩, ⟨39, 49⟩, ⟨17, 29⟩, ⟨24, 42⟩, ⟨2, 22⟩, ⟨37, 48⟩, ⟨15, 28⟩, ⟨22, 41⟩, ⟨35, 47⟩, ⟨13, 27⟩, ⟨33, 46⟩, ⟨11, 26⟩]⟩
theorem profile1323_checked : profile1323.check := by decide +kernel

noncomputable def selection0_1323 : Selection :=
  ⟨0, 4, 1, (1559/100), 3390, 36, -66⟩
theorem selection0_1323_checked : selection0_1323.check profile1323 := by decide +kernel

noncomputable def selection1_1323 : Selection :=
  ⟨1, -4, 5, (1421/100), 312, -104, 302⟩
theorem selection1_1323_checked : selection1_1323.check profile1323 := by decide +kernel

noncomputable def selection2_1323 : Selection :=
  ⟨2, -12, 9, (349/25), 108, -212, 670⟩
theorem selection2_1323_checked : selection2_1323.check profile1323 := by decide +kernel

noncomputable def profile1324 : ProfileCell :=
  ⟨(20/43), (47/101),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨9, 26⟩, ⟨31, 46⟩, ⟨7, 25⟩, ⟨29, 45⟩, ⟨20, 31⟩, ⟨42, 51⟩, ⟨5, 24⟩, ⟨27, 44⟩, ⟨18, 30⟩, ⟨40, 50⟩, ⟨3, 23⟩, ⟨25, 43⟩, ⟨16, 29⟩, ⟨38, 49⟩, ⟨1, 22⟩, ⟨23, 42⟩, ⟨14, 28⟩, ⟨36, 48⟩, ⟨12, 27⟩, ⟨34, 47⟩, ⟨43, 73⟩, ⟨10, 26⟩, ⟨32, 46⟩, ⟨8, 25⟩, ⟨30, 45⟩, ⟨21, 31⟩, ⟨6, 24⟩, ⟨28, 44⟩, ⟨19, 30⟩, ⟨41, 50⟩, ⟨4, 23⟩, ⟨26, 43⟩, ⟨17, 29⟩, ⟨39, 49⟩, ⟨2, 22⟩, ⟨24, 42⟩, ⟨15, 28⟩, ⟨37, 48⟩, ⟨22, 41⟩, ⟨13, 27⟩, ⟨35, 47⟩, ⟨11, 26⟩, ⟨33, 46⟩]⟩
theorem profile1324_checked : profile1324.check := by decide +kernel

noncomputable def selection0_1324 : Selection :=
  ⟨0, 4, 1, (1571/100), 1672, -284, 622⟩
theorem selection0_1324_checked : selection0_1324.check profile1324 := by decide +kernel

noncomputable def selection1_1324 : Selection :=
  ⟨1, -4, 5, (1429/100), 154, -424, 990⟩
theorem selection1_1324_checked : selection1_1324.check profile1324 := by decide +kernel

noncomputable def selection2_1324 : Selection :=
  ⟨2, -12, 9, (701/50), 54, -532, 1358⟩
theorem selection2_1324_checked : selection2_1324.check profile1324 := by decide +kernel

noncomputable def profile1325 : ProfileCell :=
  ⟨(47/101), (27/58),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨33, 47⟩, ⟨9, 26⟩, ⟨31, 46⟩, ⟨7, 25⟩, ⟨29, 45⟩, ⟨20, 31⟩, ⟨42, 51⟩, ⟨5, 24⟩, ⟨27, 44⟩, ⟨18, 30⟩, ⟨40, 50⟩, ⟨3, 23⟩, ⟨25, 43⟩, ⟨16, 29⟩, ⟨38, 49⟩, ⟨1, 22⟩, ⟨23, 42⟩, ⟨14, 28⟩, ⟨36, 48⟩, ⟨12, 27⟩, ⟨34, 47⟩, ⟨10, 26⟩, ⟨43, 73⟩, ⟨32, 46⟩, ⟨8, 25⟩, ⟨30, 45⟩, ⟨21, 31⟩, ⟨6, 24⟩, ⟨28, 44⟩, ⟨19, 30⟩, ⟨41, 50⟩, ⟨4, 23⟩, ⟨26, 43⟩, ⟨17, 29⟩, ⟨39, 49⟩, ⟨2, 22⟩, ⟨24, 42⟩, ⟨15, 28⟩, ⟨37, 48⟩, ⟨22, 41⟩, ⟨13, 27⟩, ⟨35, 47⟩, ⟨11, 26⟩]⟩
theorem profile1325_checked : profile1325.check := by decide +kernel

noncomputable def selection0_1325 : Selection :=
  ⟨0, 4, 1, (63/4), 1242, -96, 218⟩
theorem selection0_1325_checked : selection0_1325.check profile1325 := by decide +kernel

noncomputable def selection1_1325 : Selection :=
  ⟨1, -4, 5, (358/25), 114, -236, 586⟩
theorem selection1_1325_checked : selection1_1325.check profile1325 := by decide +kernel

noncomputable def selection2_1325 : Selection :=
  ⟨2, -12, 9, (281/20), 40, -344, 954⟩
theorem selection2_1325_checked : selection2_1325.check profile1325 := by decide +kernel

noncomputable def profile1326 : ProfileCell :=
  ⟨(27/58), (48/103),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨11, 27⟩, ⟨33, 47⟩, ⟨9, 26⟩, ⟨31, 46⟩, ⟨7, 25⟩, ⟨29, 45⟩, ⟨20, 31⟩, ⟨5, 24⟩, ⟨42, 51⟩, ⟨27, 44⟩, ⟨18, 30⟩, ⟨3, 23⟩, ⟨40, 50⟩, ⟨25, 43⟩, ⟨16, 29⟩, ⟨1, 22⟩, ⟨38, 49⟩, ⟨23, 42⟩, ⟨14, 28⟩, ⟨36, 48⟩, ⟨12, 27⟩, ⟨34, 47⟩, ⟨10, 26⟩, ⟨32, 46⟩, ⟨43, 73⟩, ⟨8, 25⟩, ⟨30, 45⟩, ⟨21, 31⟩, ⟨6, 24⟩, ⟨28, 44⟩, ⟨19, 30⟩, ⟨4, 23⟩, ⟨41, 50⟩, ⟨26, 43⟩, ⟨17, 29⟩, ⟨2, 22⟩, ⟨39, 49⟩, ⟨24, 42⟩, ⟨15, 28⟩, ⟨37, 48⟩, ⟨22, 41⟩, ⟨13, 27⟩, ⟨35, 47⟩]⟩
theorem profile1326_checked : profile1326.check := by decide +kernel

noncomputable def selection0_1326 : Selection :=
  ⟨0, 4, 1, (799/50), 3700, -204, 450⟩
theorem selection0_1326_checked : selection0_1326.check profile1326 := by decide +kernel

noncomputable def selection1_1326 : Selection :=
  ⟨1, -4, 5, (723/50), 338, -344, 818⟩
theorem selection1_1326_checked : selection1_1326.check profile1326 := by decide +kernel

noncomputable def selection2_1326 : Selection :=
  ⟨2, -12, 9, (1417/100), 118, -452, 1186⟩
theorem selection2_1326_checked : selection2_1326.check profile1326 := by decide +kernel

noncomputable def profile1327 : ProfileCell :=
  ⟨(48/103), (7/15),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨35, 48⟩, ⟨11, 27⟩, ⟨33, 47⟩, ⟨9, 26⟩, ⟨31, 46⟩, ⟨7, 25⟩, ⟨29, 45⟩, ⟨20, 31⟩, ⟨5, 24⟩, ⟨42, 51⟩, ⟨27, 44⟩, ⟨18, 30⟩, ⟨3, 23⟩, ⟨40, 50⟩, ⟨25, 43⟩, ⟨16, 29⟩, ⟨1, 22⟩, ⟨38, 49⟩, ⟨23, 42⟩, ⟨14, 28⟩, ⟨36, 48⟩, ⟨12, 27⟩, ⟨34, 47⟩, ⟨10, 26⟩, ⟨32, 46⟩, ⟨8, 25⟩, ⟨43, 73⟩, ⟨30, 45⟩, ⟨21, 31⟩, ⟨6, 24⟩, ⟨28, 44⟩, ⟨19, 30⟩, ⟨4, 23⟩, ⟨41, 50⟩, ⟨26, 43⟩, ⟨17, 29⟩, ⟨2, 22⟩, ⟨39, 49⟩, ⟨24, 42⟩, ⟨15, 28⟩, ⟨37, 48⟩, ⟨22, 41⟩, ⟨13, 27⟩]⟩
theorem profile1327_checked : profile1327.check := by decide +kernel

noncomputable def selection0_1327 : Selection :=
  ⟨0, 4, 1, 16, 4762, -12, 38⟩
theorem selection0_1327_checked : selection0_1327.check profile1327 := by decide +kernel

noncomputable def selection1_1327 : Selection :=
  ⟨1, -4, 5, (291/20), 438, -152, 406⟩
theorem selection1_1327_checked : selection1_1327.check profile1327 := by decide +kernel

noncomputable def selection2_1327 : Selection :=
  ⟨2, -12, 9, (357/25), 152, -260, 774⟩
theorem selection2_1327_checked : selection2_1327.check profile1327 := by decide +kernel

noncomputable def profile1328 : ProfileCell :=
  ⟨(7/15), (50/107),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 14, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨13, 28⟩, ⟨22, 42⟩, ⟨37, 49⟩, ⟨11, 27⟩, ⟨35, 48⟩, ⟨9, 26⟩, ⟨33, 47⟩, ⟨7, 25⟩, ⟨31, 46⟩, ⟨5, 24⟩, ⟨20, 31⟩, ⟨29, 45⟩, ⟨3, 23⟩, ⟨18, 30⟩, ⟨27, 44⟩, ⟨42, 51⟩, ⟨1, 22⟩, ⟨16, 29⟩, ⟨25, 43⟩, ⟨40, 50⟩, ⟨14, 28⟩, ⟨23, 42⟩, ⟨38, 49⟩, ⟨12, 27⟩, ⟨36, 48⟩, ⟨10, 26⟩, ⟨34, 47⟩, ⟨8, 25⟩, ⟨32, 46⟩, ⟨6, 24⟩, ⟨21, 31⟩, ⟨30, 45⟩, ⟨43, 73⟩, ⟨4, 23⟩, ⟨19, 30⟩, ⟨28, 44⟩, ⟨2, 22⟩, ⟨17, 29⟩, ⟨26, 43⟩, ⟨41, 50⟩, ⟨15, 28⟩, ⟨24, 42⟩, ⟨39, 49⟩]⟩
theorem profile1328_checked : profile1328.check := by decide +kernel

noncomputable def selection0_1328 : Selection :=
  ⟨0, 3, 1, 14, 4000, 128, -262⟩
theorem selection0_1328_checked : selection0_1328.check profile1328 := by decide +kernel

noncomputable def selection1_1328 : Selection :=
  ⟨1, -5, 5, (1257/100), 364, -12, 106⟩
theorem selection1_1328_checked : selection1_1328.check profile1328 := by decide +kernel

noncomputable def selection2_1328 : Selection :=
  ⟨2, -13, 9, (1233/100), 127, -120, 474⟩
theorem selection2_1328_checked : selection2_1328.check profile1328 := by decide +kernel

noncomputable def profile1329 : ProfileCell :=
  ⟨(50/107), (43/92),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 14, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨39, 50⟩, ⟨13, 28⟩, ⟨22, 42⟩, ⟨37, 49⟩, ⟨11, 27⟩, ⟨35, 48⟩, ⟨9, 26⟩, ⟨33, 47⟩, ⟨7, 25⟩, ⟨31, 46⟩, ⟨5, 24⟩, ⟨20, 31⟩, ⟨29, 45⟩, ⟨3, 23⟩, ⟨18, 30⟩, ⟨27, 44⟩, ⟨42, 51⟩, ⟨1, 22⟩, ⟨16, 29⟩, ⟨25, 43⟩, ⟨40, 50⟩, ⟨14, 28⟩, ⟨23, 42⟩, ⟨38, 49⟩, ⟨12, 27⟩, ⟨36, 48⟩, ⟨10, 26⟩, ⟨34, 47⟩, ⟨8, 25⟩, ⟨32, 46⟩, ⟨6, 24⟩, ⟨21, 31⟩, ⟨30, 45⟩, ⟨4, 23⟩, ⟨43, 73⟩, ⟨19, 30⟩, ⟨28, 44⟩, ⟨2, 22⟩, ⟨17, 29⟩, ⟨26, 43⟩, ⟨41, 50⟩, ⟨15, 28⟩, ⟨24, 42⟩]⟩
theorem profile1329_checked : profile1329.check := by decide +kernel

noncomputable def selection0_1329 : Selection :=
  ⟨0, 3, 1, (691/50), 643, 328, -690⟩
theorem selection0_1329_checked : selection0_1329.check profile1329 := by decide +kernel

noncomputable def selection1_1329 : Selection :=
  ⟨1, -5, 5, (1257/100), 60, 188, -322⟩
theorem selection1_1329_checked : selection1_1329.check profile1329 := by decide +kernel

noncomputable def selection2_1329 : Selection :=
  ⟨2, -13, 9, (617/50), 21, 80, 46⟩
theorem selection2_1329_checked : selection2_1329.check profile1329 := by decide +kernel

noncomputable def profile1330 : ProfileCell :=
  ⟨(43/92), (29/62),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 14, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨24, 43⟩, ⟨39, 50⟩, ⟨13, 28⟩, ⟨22, 42⟩, ⟨37, 49⟩, ⟨11, 27⟩, ⟨35, 48⟩, ⟨9, 26⟩, ⟨33, 47⟩, ⟨7, 25⟩, ⟨31, 46⟩, ⟨5, 24⟩, ⟨20, 31⟩, ⟨29, 45⟩, ⟨3, 23⟩, ⟨18, 30⟩, ⟨27, 44⟩, ⟨42, 51⟩, ⟨1, 22⟩, ⟨16, 29⟩, ⟨25, 43⟩, ⟨40, 50⟩, ⟨14, 28⟩, ⟨23, 42⟩, ⟨38, 49⟩, ⟨12, 27⟩, ⟨36, 48⟩, ⟨10, 26⟩, ⟨34, 47⟩, ⟨8, 25⟩, ⟨32, 46⟩, ⟨6, 24⟩, ⟨21, 31⟩, ⟨30, 45⟩, ⟨4, 23⟩, ⟨19, 30⟩, ⟨43, 73⟩, ⟨28, 44⟩, ⟨2, 22⟩, ⟨17, 29⟩, ⟨26, 43⟩, ⟨41, 50⟩, ⟨15, 28⟩]⟩
theorem profile1330_checked : profile1330.check := by decide +kernel

noncomputable def selection0_1330 : Selection :=
  ⟨0, 3, 1, (55/4), 2206, 586, -1242⟩
theorem selection0_1330_checked : selection0_1330.check profile1330 := by decide +kernel

noncomputable def selection1_1330 : Selection :=
  ⟨1, -5, 5, (314/25), 205, 446, -874⟩
theorem selection1_1330_checked : selection1_1330.check profile1330 := by decide +kernel

noncomputable def selection2_1330 : Selection :=
  ⟨2, -13, 9, (617/50), 72, 338, -506⟩
theorem selection2_1330_checked : selection2_1330.check profile1330 := by decide +kernel

noncomputable def profile1331 : ProfileCell :=
  ⟨(29/62), (51/109),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 14, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨15, 29⟩, ⟨24, 43⟩, ⟨39, 50⟩, ⟨13, 28⟩, ⟨22, 42⟩, ⟨37, 49⟩, ⟨11, 27⟩, ⟨35, 48⟩, ⟨9, 26⟩, ⟨33, 47⟩, ⟨7, 25⟩, ⟨31, 46⟩, ⟨5, 24⟩, ⟨20, 31⟩, ⟨29, 45⟩, ⟨3, 23⟩, ⟨18, 30⟩, ⟨27, 44⟩, ⟨1, 22⟩, ⟨42, 51⟩, ⟨16, 29⟩, ⟨25, 43⟩, ⟨40, 50⟩, ⟨14, 28⟩, ⟨23, 42⟩, ⟨38, 49⟩, ⟨12, 27⟩, ⟨36, 48⟩, ⟨10, 26⟩, ⟨34, 47⟩, ⟨8, 25⟩, ⟨32, 46⟩, ⟨6, 24⟩, ⟨21, 31⟩, ⟨30, 45⟩, ⟨4, 23⟩, ⟨19, 30⟩, ⟨28, 44⟩, ⟨43, 73⟩, ⟨2, 22⟩, ⟨17, 29⟩, ⟨26, 43⟩, ⟨41, 50⟩]⟩
theorem profile1331_checked : profile1331.check := by decide +kernel

noncomputable def selection0_1331 : Selection :=
  ⟨0, 3, 1, (332/25), 898, 412, -870⟩
theorem selection0_1331_checked : selection0_1331.check profile1331 := by decide +kernel

noncomputable def selection1_1331 : Selection :=
  ⟨1, -5, 5, (623/50), 86, 272, -502⟩
theorem selection1_1331_checked : selection1_1331.check profile1331 := by decide +kernel

noncomputable def selection2_1331 : Selection :=
  ⟨2, -13, 9, (123/10), 30, 164, -134⟩
theorem selection2_1331_checked : selection2_1331.check profile1331 := by decide +kernel

noncomputable def profile1332 : ProfileCell :=
  ⟨(51/109), (22/47),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 14, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨41, 51⟩, ⟨15, 29⟩, ⟨24, 43⟩, ⟨39, 50⟩, ⟨13, 28⟩, ⟨22, 42⟩, ⟨37, 49⟩, ⟨11, 27⟩, ⟨35, 48⟩, ⟨9, 26⟩, ⟨33, 47⟩, ⟨7, 25⟩, ⟨31, 46⟩, ⟨5, 24⟩, ⟨20, 31⟩, ⟨29, 45⟩, ⟨3, 23⟩, ⟨18, 30⟩, ⟨27, 44⟩, ⟨1, 22⟩, ⟨42, 51⟩, ⟨16, 29⟩, ⟨25, 43⟩, ⟨40, 50⟩, ⟨14, 28⟩, ⟨23, 42⟩, ⟨38, 49⟩, ⟨12, 27⟩, ⟨36, 48⟩, ⟨10, 26⟩, ⟨34, 47⟩, ⟨8, 25⟩, ⟨32, 46⟩, ⟨6, 24⟩, ⟨21, 31⟩, ⟨30, 45⟩, ⟨4, 23⟩, ⟨19, 30⟩, ⟨28, 44⟩, ⟨2, 22⟩, ⟨43, 73⟩, ⟨17, 29⟩, ⟨26, 43⟩]⟩
theorem profile1332_checked : profile1332.check := by decide +kernel

noncomputable def selection0_1332 : Selection :=
  ⟨0, 3, 1, (657/50), 1172, 718, -1524⟩
theorem selection0_1332_checked : selection0_1332.check profile1332 := by decide +kernel

noncomputable def selection1_1332 : Selection :=
  ⟨1, -5, 5, (1243/100), 113, 578, -1156⟩
theorem selection1_1332_checked : selection1_1332.check profile1332 := by decide +kernel

noncomputable def selection2_1332 : Selection :=
  ⟨2, -13, 9, (1229/100), 40, 470, -788⟩
theorem selection2_1332_checked : selection2_1332.check profile1332 := by decide +kernel

noncomputable def profile1333 : ProfileCell :=
  ⟨(22/47), (37/79),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 14, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨26, 44⟩, ⟨15, 29⟩, ⟨41, 51⟩, ⟨24, 43⟩, ⟨13, 28⟩, ⟨39, 50⟩, ⟨22, 42⟩, ⟨11, 27⟩, ⟨37, 49⟩, ⟨9, 26⟩, ⟨35, 48⟩, ⟨7, 25⟩, ⟨33, 47⟩, ⟨5, 24⟩, ⟨31, 46⟩, ⟨20, 31⟩, ⟨3, 23⟩, ⟨29, 45⟩, ⟨18, 30⟩, ⟨1, 22⟩, ⟨27, 44⟩, ⟨16, 29⟩, ⟨42, 51⟩, ⟨25, 43⟩, ⟨14, 28⟩, ⟨40, 50⟩, ⟨23, 42⟩, ⟨12, 27⟩, ⟨38, 49⟩, ⟨10, 26⟩, ⟨36, 48⟩, ⟨8, 25⟩, ⟨34, 47⟩, ⟨6, 24⟩, ⟨32, 46⟩, ⟨21, 31⟩, ⟨4, 23⟩, ⟨30, 45⟩, ⟨19, 30⟩, ⟨2, 22⟩, ⟨28, 44⟩, ⟨17, 29⟩, ⟨43, 73⟩]⟩
theorem profile1333_checked : profile1333.check := by decide +kernel

noncomputable def selection0_1333 : Selection :=
  ⟨0, 3, 1, (641/50), 1575, 630, -1336⟩
theorem selection0_1333_checked : selection0_1333.check profile1333 := by decide +kernel

noncomputable def selection1_1333 : Selection :=
  ⟨1, -5, 5, (247/20), 155, 490, -968⟩
theorem selection1_1333_checked : selection1_1333.check profile1333 := by decide +kernel

noncomputable def selection2_1333 : Selection :=
  ⟨2, -13, 9, (613/50), 55, 382, -600⟩
theorem selection2_1333_checked : selection2_1333.check profile1333 := by decide +kernel

noncomputable def profile1334 : ProfileCell :=
  ⟨(37/79), (15/32),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 14, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨43, 74⟩, ⟨26, 44⟩, ⟨15, 29⟩, ⟨41, 51⟩, ⟨24, 43⟩, ⟨13, 28⟩, ⟨39, 50⟩, ⟨22, 42⟩, ⟨11, 27⟩, ⟨37, 49⟩, ⟨9, 26⟩, ⟨35, 48⟩, ⟨7, 25⟩, ⟨33, 47⟩, ⟨5, 24⟩, ⟨31, 46⟩, ⟨20, 31⟩, ⟨3, 23⟩, ⟨29, 45⟩, ⟨18, 30⟩, ⟨1, 22⟩, ⟨27, 44⟩, ⟨16, 29⟩, ⟨42, 51⟩, ⟨25, 43⟩, ⟨14, 28⟩, ⟨40, 50⟩, ⟨23, 42⟩, ⟨12, 27⟩, ⟨38, 49⟩, ⟨10, 26⟩, ⟨36, 48⟩, ⟨8, 25⟩, ⟨34, 47⟩, ⟨6, 24⟩, ⟨32, 46⟩, ⟨21, 31⟩, ⟨4, 23⟩, ⟨30, 45⟩, ⟨19, 30⟩, ⟨2, 22⟩, ⟨28, 44⟩, ⟨17, 29⟩]⟩
theorem profile1334_checked : profile1334.check := by decide +kernel

noncomputable def selection0_1334 : Selection :=
  ⟨0, 3, 1, (1267/100), 2283, -258, 560⟩
theorem selection0_1334_checked : selection0_1334.check profile1334 := by decide +kernel

noncomputable def selection1_1334 : Selection :=
  ⟨1, -5, 5, (1239/100), 228, -398, 928⟩
theorem selection1_1334_checked : selection1_1334.check profile1334 := by decide +kernel

noncomputable def selection2_1334 : Selection :=
  ⟨2, -13, 9, (1233/100), 81, -506, 1296⟩
theorem selection2_1334_checked : selection2_1334.check profile1334 := by decide +kernel

noncomputable def profile1335 : ProfileCell :=
  ⟨(15/32), (23/49),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 15, 14, 13, 12, 11, 10], [22, 22, 23, 23, 24],
    [⟨17, 30⟩, ⟨28, 45⟩, ⟨15, 29⟩, ⟨26, 44⟩, ⟨43, 74⟩, ⟨41, 51⟩, ⟨13, 28⟩, ⟨24, 43⟩, ⟨39, 50⟩, ⟨11, 27⟩, ⟨22, 42⟩, ⟨37, 49⟩, ⟨9, 26⟩, ⟨35, 48⟩, ⟨7, 25⟩, ⟨33, 47⟩, ⟨5, 24⟩, ⟨20, 31⟩, ⟨31, 46⟩, ⟨3, 23⟩, ⟨18, 30⟩, ⟨29, 45⟩, ⟨1, 22⟩, ⟨16, 29⟩, ⟨27, 44⟩, ⟨42, 51⟩, ⟨14, 28⟩, ⟨25, 43⟩, ⟨40, 50⟩, ⟨12, 27⟩, ⟨23, 42⟩, ⟨38, 49⟩, ⟨10, 26⟩, ⟨36, 48⟩, ⟨8, 25⟩, ⟨34, 47⟩, ⟨6, 24⟩, ⟨21, 31⟩, ⟨32, 46⟩, ⟨4, 23⟩, ⟨19, 30⟩, ⟨30, 45⟩, ⟨2, 22⟩]⟩
theorem profile1335_checked : profile1335.check := by decide +kernel

noncomputable def selection0_1335 : Selection :=
  ⟨0, 2, 1, (221/20), 3203, -258, 560⟩
theorem selection0_1335_checked : selection0_1335.check profile1335 := by decide +kernel

noncomputable def selection1_1335 : Selection :=
  ⟨1, -6, 5, (1059/100), 313, -398, 928⟩
theorem selection1_1335_checked : selection1_1335.check profile1335 := by decide +kernel

noncomputable def selection2_1335 : Selection :=
  ⟨2, -14, 9, (21/2), 110, -506, 1296⟩
theorem selection2_1335_checked : selection2_1335.check profile1335 := by decide +kernel

noncomputable def profile1336 : ProfileCell :=
  ⟨(23/49), (31/66),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 15, 14, 13, 12, 11, 10], [22, 23, 23, 23, 24],
    [⟨2, 23⟩, ⟨30, 46⟩, ⟨17, 30⟩, ⟨28, 45⟩, ⟨15, 29⟩, ⟨26, 44⟩, ⟨13, 28⟩, ⟨41, 51⟩, ⟨43, 74⟩, ⟨24, 43⟩, ⟨11, 27⟩, ⟨39, 50⟩, ⟨22, 42⟩, ⟨9, 26⟩, ⟨37, 49⟩, ⟨7, 25⟩, ⟨35, 48⟩, ⟨5, 24⟩, ⟨33, 47⟩, ⟨20, 31⟩, ⟨3, 23⟩, ⟨31, 46⟩, ⟨18, 30⟩, ⟨1, 22⟩, ⟨29, 45⟩, ⟨16, 29⟩, ⟨27, 44⟩, ⟨14, 28⟩, ⟨42, 51⟩, ⟨25, 43⟩, ⟨12, 27⟩, ⟨40, 50⟩, ⟨23, 42⟩, ⟨10, 26⟩, ⟨38, 49⟩, ⟨8, 25⟩, ⟨36, 48⟩, ⟨6, 24⟩, ⟨34, 47⟩, ⟨21, 31⟩, ⟨4, 23⟩, ⟨32, 46⟩, ⟨19, 30⟩]⟩
theorem profile1336_checked : profile1336.check := by decide +kernel

noncomputable def selection0_1336 : Selection :=
  ⟨0, 5, 1, (1523/100), 2137, -289, 622⟩
theorem selection0_1336_checked : selection0_1336.check profile1336 := by decide +kernel

noncomputable def selection1_1336 : Selection :=
  ⟨1, -3, 5, (1469/100), 211, -433, 990⟩
theorem selection1_1336_checked : selection1_1336.check profile1336 := by decide +kernel

noncomputable def selection2_1336 : Selection :=
  ⟨2, -11, 9, (729/50), 74, -545, 1358⟩
theorem selection2_1336_checked : selection2_1336.check profile1336 := by decide +kernel

noncomputable def profile1337 : ProfileCell :=
  ⟨(31/66), (47/100),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 15, 14, 13, 12, 11, 10], [22, 23, 23, 23, 24],
    [⟨19, 31⟩, ⟨2, 23⟩, ⟨30, 46⟩, ⟨17, 30⟩, ⟨28, 45⟩, ⟨15, 29⟩, ⟨26, 44⟩, ⟨13, 28⟩, ⟨41, 51⟩, ⟨24, 43⟩, ⟨43, 74⟩, ⟨11, 27⟩, ⟨39, 50⟩, ⟨22, 42⟩, ⟨9, 26⟩, ⟨37, 49⟩, ⟨7, 25⟩, ⟨35, 48⟩, ⟨5, 24⟩, ⟨33, 47⟩, ⟨20, 31⟩, ⟨3, 23⟩, ⟨31, 46⟩, ⟨18, 30⟩, ⟨1, 22⟩, ⟨29, 45⟩, ⟨16, 29⟩, ⟨27, 44⟩, ⟨14, 28⟩, ⟨42, 51⟩, ⟨25, 43⟩, ⟨12, 27⟩, ⟨40, 50⟩, ⟨23, 42⟩, ⟨10, 26⟩, ⟨38, 49⟩, ⟨8, 25⟩, ⟨36, 48⟩, ⟨6, 24⟩, ⟨34, 47⟩, ⟨21, 31⟩, ⟨4, 23⟩, ⟨32, 46⟩]⟩
theorem profile1337_checked : profile1337.check := by decide +kernel

noncomputable def selection0_1337 : Selection :=
  ⟨0, 5, 1, (388/25), 2131, -413, 886⟩
theorem selection0_1337_checked : selection0_1337.check profile1337 := by decide +kernel

noncomputable def selection1_1337 : Selection :=
  ⟨1, -3, 5, (1481/100), 208, -557, 1254⟩
theorem selection1_1337_checked : selection1_1337.check profile1337 := by decide +kernel

noncomputable def selection2_1337 : Selection :=
  ⟨2, -11, 9, (367/25), 73, -669, 1622⟩
theorem selection2_1337_checked : selection2_1337.check profile1337 := by decide +kernel

noncomputable def profile1338 : ProfileCell :=
  ⟨(47/100), (8/17),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 15, 14, 13, 12, 11, 10], [22, 23, 23, 23, 24],
    [⟨32, 47⟩, ⟨19, 31⟩, ⟨2, 23⟩, ⟨30, 46⟩, ⟨17, 30⟩, ⟨28, 45⟩, ⟨15, 29⟩, ⟨26, 44⟩, ⟨13, 28⟩, ⟨41, 51⟩, ⟨24, 43⟩, ⟨11, 27⟩, ⟨43, 74⟩, ⟨39, 50⟩, ⟨22, 42⟩, ⟨9, 26⟩, ⟨37, 49⟩, ⟨7, 25⟩, ⟨35, 48⟩, ⟨5, 24⟩, ⟨33, 47⟩, ⟨20, 31⟩, ⟨3, 23⟩, ⟨31, 46⟩, ⟨18, 30⟩, ⟨1, 22⟩, ⟨29, 45⟩, ⟨16, 29⟩, ⟨27, 44⟩, ⟨14, 28⟩, ⟨42, 51⟩, ⟨25, 43⟩, ⟨12, 27⟩, ⟨40, 50⟩, ⟨23, 42⟩, ⟨10, 26⟩, ⟨38, 49⟩, ⟨8, 25⟩, ⟨36, 48⟩, ⟨6, 24⟩, ⟨34, 47⟩, ⟨21, 31⟩, ⟨4, 23⟩]⟩
theorem profile1338_checked : profile1338.check := by decide +kernel

noncomputable def selection0_1338 : Selection :=
  ⟨0, 4, 1, (63/4), 4189, -162, 356⟩
theorem selection0_1338_checked : selection0_1338.check profile1338 := by decide +kernel

noncomputable def selection1_1338 : Selection :=
  ⟨1, -4, 5, (374/25), 408, -302, 724⟩
theorem selection1_1338_checked : selection1_1338.check profile1338 := by decide +kernel

noncomputable def selection2_1338 : Selection :=
  ⟨2, -12, 9, (1481/100), 143, -410, 1092⟩
theorem selection2_1338_checked : selection2_1338.check profile1338 := by decide +kernel

noncomputable def profile1339 : ProfileCell :=
  ⟨(8/17), (49/104),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 16, 15, 14, 13, 12, 11, 10], [22, 23, 23, 24, 24],
    [⟨4, 24⟩, ⟨21, 32⟩, ⟨34, 48⟩, ⟨2, 23⟩, ⟨19, 31⟩, ⟨32, 47⟩, ⟨17, 30⟩, ⟨30, 46⟩, ⟨15, 29⟩, ⟨28, 45⟩, ⟨13, 28⟩, ⟨26, 44⟩, ⟨11, 27⟩, ⟨24, 43⟩, ⟨41, 51⟩, ⟨9, 26⟩, ⟨22, 42⟩, ⟨39, 50⟩, ⟨43, 74⟩, ⟨7, 25⟩, ⟨37, 49⟩, ⟨5, 24⟩, ⟨35, 48⟩, ⟨3, 23⟩, ⟨20, 31⟩, ⟨33, 47⟩, ⟨1, 22⟩, ⟨18, 30⟩, ⟨31, 46⟩, ⟨16, 29⟩, ⟨29, 45⟩, ⟨14, 28⟩, ⟨27, 44⟩, ⟨12, 27⟩, ⟨25, 43⟩, ⟨42, 51⟩, ⟨10, 26⟩, ⟨23, 42⟩, ⟨40, 50⟩, ⟨8, 25⟩, ⟨38, 49⟩, ⟨6, 24⟩, ⟨36, 48⟩]⟩
theorem profile1339_checked : profile1339.check := by decide +kernel

noncomputable def selection0_1339 : Selection :=
  ⟨0, 5, 1, (1839/100), 4692, -498, 1070⟩
theorem selection0_1339_checked : selection0_1339.check profile1339 := by decide +kernel

noncomputable def selection1_1339 : Selection :=
  ⟨1, -3, 5, (431/25), 451, -638, 1438⟩
theorem selection1_1339_checked : selection1_1339.check profile1339 := by decide +kernel

noncomputable def selection2_1339 : Selection :=
  ⟨2, -11, 9, (851/50), 158, -746, 1806⟩
theorem selection2_1339_checked : selection2_1339.check profile1339 := by decide +kernel

noncomputable def profile1340 : ProfileCell :=
  ⟨(49/104), (25/53),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 16, 15, 14, 13, 12, 11, 10], [22, 23, 23, 24, 24],
    [⟨36, 49⟩, ⟨4, 24⟩, ⟨21, 32⟩, ⟨34, 48⟩, ⟨2, 23⟩, ⟨19, 31⟩, ⟨32, 47⟩, ⟨17, 30⟩, ⟨30, 46⟩, ⟨15, 29⟩, ⟨28, 45⟩, ⟨13, 28⟩, ⟨26, 44⟩, ⟨11, 27⟩, ⟨24, 43⟩, ⟨41, 51⟩, ⟨9, 26⟩, ⟨22, 42⟩, ⟨39, 50⟩, ⟨7, 25⟩, ⟨43, 74⟩, ⟨37, 49⟩, ⟨5, 24⟩, ⟨35, 48⟩, ⟨3, 23⟩, ⟨20, 31⟩, ⟨33, 47⟩, ⟨1, 22⟩, ⟨18, 30⟩, ⟨31, 46⟩, ⟨16, 29⟩, ⟨29, 45⟩, ⟨14, 28⟩, ⟨27, 44⟩, ⟨12, 27⟩, ⟨25, 43⟩, ⟨42, 51⟩, ⟨10, 26⟩, ⟨23, 42⟩, ⟨40, 50⟩, ⟨8, 25⟩, ⟨38, 49⟩, ⟨6, 24⟩]⟩
theorem profile1340_checked : profile1340.check := by decide +kernel

noncomputable def selection0_1340 : Selection :=
  ⟨0, 6, 1, (929/50), 4551, -205, 444⟩
theorem selection0_1340_checked : selection0_1340.check profile1340 := by decide +kernel

noncomputable def selection1_1340 : Selection :=
  ⟨1, -2, 5, (1737/100), 437, -349, 812⟩
theorem selection1_1340_checked : selection1_1340.check profile1340 := by decide +kernel

noncomputable def selection2_1340 : Selection :=
  ⟨2, -10, 9, (857/50), 153, -461, 1180⟩
theorem selection2_1340_checked : selection2_1340.check profile1340 := by decide +kernel

noncomputable def profile1341 : ProfileCell :=
  ⟨(25/53), (17/36),
    [24, 23, 22, 21, 20, 19, 18, 17, 16, 16, 15, 14, 13, 12, 11, 10], [22, 23, 23, 24, 24],
    [⟨6, 25⟩, ⟨38, 50⟩, ⟨4, 24⟩, ⟨36, 49⟩, ⟨21, 32⟩, ⟨2, 23⟩, ⟨34, 48⟩, ⟨19, 31⟩, ⟨32, 47⟩, ⟨17, 30⟩, ⟨30, 46⟩, ⟨15, 29⟩, ⟨28, 45⟩, ⟨13, 28⟩, ⟨26, 44⟩, ⟨11, 27⟩, ⟨24, 43⟩, ⟨9, 26⟩, ⟨41, 51⟩, ⟨22, 42⟩, ⟨7, 25⟩, ⟨39, 50⟩, ⟨5, 24⟩, ⟨37, 49⟩, ⟨43, 74⟩, ⟨3, 23⟩, ⟨35, 48⟩, ⟨20, 31⟩, ⟨1, 22⟩, ⟨33, 47⟩, ⟨18, 30⟩, ⟨31, 46⟩, ⟨16, 29⟩, ⟨29, 45⟩, ⟨14, 28⟩, ⟨27, 44⟩, ⟨12, 27⟩, ⟨25, 43⟩, ⟨10, 26⟩, ⟨42, 51⟩, ⟨23, 42⟩, ⟨8, 25⟩, ⟨40, 50⟩]⟩
theorem profile1341_checked : profile1341.check := by decide +kernel

noncomputable def selection0_1341 : Selection :=
  ⟨0, 6, 1, (1883/100), 4431, -205, 444⟩
theorem selection0_1341_checked : selection0_1341.check profile1341 := by decide +kernel

noncomputable def selection1_1341 : Selection :=
  ⟨1, -2, 5, (1751/100), 424, -349, 812⟩
theorem selection1_1341_checked : selection1_1341.check profile1341 := by decide +kernel

noncomputable def selection2_1341 : Selection :=
  ⟨2, -10, 9, (863/50), 149, -461, 1180⟩
theorem selection2_1341_checked : selection2_1341.check profile1341 := by decide +kernel

noncomputable def profile1342 : ProfileCell :=
  ⟨(17/36), (43/91),
    [24, 23, 22, 21, 20, 19, 18, 17, 17, 16, 15, 14, 13, 12, 11, 10], [22, 23, 23, 24, 24],
    [⟨40, 51⟩, ⟨6, 25⟩, ⟨38, 50⟩, ⟨4, 24⟩, ⟨21, 32⟩, ⟨36, 49⟩, ⟨2, 23⟩, ⟨19, 31⟩, ⟨34, 48⟩, ⟨17, 30⟩, ⟨32, 47⟩, ⟨15, 29⟩, ⟨30, 46⟩, ⟨13, 28⟩, ⟨28, 45⟩, ⟨11, 27⟩, ⟨26, 44⟩, ⟨9, 26⟩, ⟨24, 43⟩, ⟨41, 51⟩, ⟨7, 25⟩, ⟨22, 42⟩, ⟨39, 50⟩, ⟨5, 24⟩, ⟨37, 49⟩, ⟨3, 23⟩, ⟨43, 74⟩, ⟨20, 31⟩, ⟨35, 48⟩, ⟨1, 22⟩, ⟨18, 30⟩, ⟨33, 47⟩, ⟨16, 29⟩, ⟨31, 46⟩, ⟨14, 28⟩, ⟨29, 45⟩, ⟨12, 27⟩, ⟨27, 44⟩, ⟨10, 26⟩, ⟨25, 43⟩, ⟨42, 51⟩, ⟨8, 25⟩, ⟨23, 42⟩]⟩
theorem profile1342_checked : profile1342.check := by decide +kernel

noncomputable def selection0_1342 : Selection :=
  ⟨0, 5, 1, (421/25), 2304, -18, 48⟩
theorem selection0_1342_checked : selection0_1342.check profile1342 := by decide +kernel

noncomputable def selection1_1342 : Selection :=
  ⟨1, -3, 5, (389/25), 220, -162, 416⟩
theorem selection1_1342_checked : selection1_1342.check profile1342 := by decide +kernel

noncomputable def selection2_1342 : Selection :=
  ⟨2, -11, 9, (1531/100), 77, -274, 784⟩
theorem selection2_1342_checked : selection2_1342.check profile1342 := by decide +kernel

noncomputable def profile1343 : ProfileCell :=
  ⟨(43/91), (26/55),
    [24, 23, 22, 21, 20, 19, 18, 17, 17, 16, 15, 14, 13, 12, 11, 10], [22, 23, 23, 24, 24],
    [⟨23, 43⟩, ⟨40, 51⟩, ⟨6, 25⟩, ⟨38, 50⟩, ⟨4, 24⟩, ⟨21, 32⟩, ⟨36, 49⟩, ⟨2, 23⟩, ⟨19, 31⟩, ⟨34, 48⟩, ⟨17, 30⟩, ⟨32, 47⟩, ⟨15, 29⟩, ⟨30, 46⟩, ⟨13, 28⟩, ⟨28, 45⟩, ⟨11, 27⟩, ⟨26, 44⟩, ⟨9, 26⟩, ⟨24, 43⟩, ⟨41, 51⟩, ⟨7, 25⟩, ⟨22, 42⟩, ⟨39, 50⟩, ⟨5, 24⟩, ⟨37, 49⟩, ⟨3, 23⟩, ⟨20, 31⟩, ⟨43, 74⟩, ⟨35, 48⟩, ⟨1, 22⟩, ⟨18, 30⟩, ⟨33, 47⟩, ⟨16, 29⟩, ⟨31, 46⟩, ⟨14, 28⟩, ⟨29, 45⟩, ⟨12, 27⟩, ⟨27, 44⟩, ⟨10, 26⟩, ⟨25, 43⟩, ⟨42, 51⟩, ⟨8, 25⟩]⟩
theorem profile1343_checked : profile1343.check := by decide +kernel

noncomputable def selection0_1343 : Selection :=
  ⟨0, 5, 1, (421/25), 1507, 154, -316⟩
theorem selection0_1343_checked : selection0_1343.check profile1343 := by decide +kernel

noncomputable def selection1_1343 : Selection :=
  ⟨1, -3, 5, (389/25), 144, 10, 52⟩
theorem selection1_1343_checked : selection1_1343.check profile1343 := by decide +kernel

noncomputable def selection2_1343 : Selection :=
  ⟨2, -11, 9, (1533/100), 51, -102, 420⟩
theorem selection2_1343_checked : selection2_1343.check profile1343 := by decide +kernel

noncomputable def leaf0_1280 : Block :=
  Block.single profile1280 selection0_1280 profile1280_checked selection0_1280_checked
noncomputable def leaf0_1281 : Block :=
  Block.single profile1281 selection0_1281 profile1281_checked selection0_1281_checked
noncomputable def leaf0_1282 : Block :=
  Block.single profile1282 selection0_1282 profile1282_checked selection0_1282_checked
noncomputable def leaf0_1283 : Block :=
  Block.single profile1283 selection0_1283 profile1283_checked selection0_1283_checked
noncomputable def leaf0_1284 : Block :=
  Block.single profile1284 selection0_1284 profile1284_checked selection0_1284_checked
noncomputable def leaf0_1285 : Block :=
  Block.single profile1285 selection0_1285 profile1285_checked selection0_1285_checked
noncomputable def leaf0_1286 : Block :=
  Block.single profile1286 selection0_1286 profile1286_checked selection0_1286_checked
noncomputable def leaf0_1287 : Block :=
  Block.single profile1287 selection0_1287 profile1287_checked selection0_1287_checked
noncomputable def leaf0_1288 : Block :=
  Block.single profile1288 selection0_1288 profile1288_checked selection0_1288_checked
noncomputable def leaf0_1289 : Block :=
  Block.single profile1289 selection0_1289 profile1289_checked selection0_1289_checked
noncomputable def leaf0_1290 : Block :=
  Block.single profile1290 selection0_1290 profile1290_checked selection0_1290_checked
noncomputable def leaf0_1291 : Block :=
  Block.single profile1291 selection0_1291 profile1291_checked selection0_1291_checked
noncomputable def leaf0_1292 : Block :=
  Block.single profile1292 selection0_1292 profile1292_checked selection0_1292_checked
noncomputable def leaf0_1293 : Block :=
  Block.single profile1293 selection0_1293 profile1293_checked selection0_1293_checked
noncomputable def leaf0_1294 : Block :=
  Block.single profile1294 selection0_1294 profile1294_checked selection0_1294_checked
noncomputable def leaf0_1295 : Block :=
  Block.single profile1295 selection0_1295 profile1295_checked selection0_1295_checked
noncomputable def leaf0_1296 : Block :=
  Block.single profile1296 selection0_1296 profile1296_checked selection0_1296_checked
noncomputable def leaf0_1297 : Block :=
  Block.single profile1297 selection0_1297 profile1297_checked selection0_1297_checked
noncomputable def leaf0_1298 : Block :=
  Block.single profile1298 selection0_1298 profile1298_checked selection0_1298_checked
noncomputable def leaf0_1299 : Block :=
  Block.single profile1299 selection0_1299 profile1299_checked selection0_1299_checked
noncomputable def leaf0_1300 : Block :=
  Block.single profile1300 selection0_1300 profile1300_checked selection0_1300_checked
noncomputable def leaf0_1301 : Block :=
  Block.single profile1301 selection0_1301 profile1301_checked selection0_1301_checked
noncomputable def leaf0_1302 : Block :=
  Block.single profile1302 selection0_1302 profile1302_checked selection0_1302_checked
noncomputable def leaf0_1303 : Block :=
  Block.single profile1303 selection0_1303 profile1303_checked selection0_1303_checked
noncomputable def leaf0_1304 : Block :=
  Block.single profile1304 selection0_1304 profile1304_checked selection0_1304_checked
noncomputable def leaf0_1305 : Block :=
  Block.single profile1305 selection0_1305 profile1305_checked selection0_1305_checked
noncomputable def leaf0_1306 : Block :=
  Block.single profile1306 selection0_1306 profile1306_checked selection0_1306_checked
noncomputable def leaf0_1307 : Block :=
  Block.single profile1307 selection0_1307 profile1307_checked selection0_1307_checked
noncomputable def leaf0_1308 : Block :=
  Block.single profile1308 selection0_1308 profile1308_checked selection0_1308_checked
noncomputable def leaf0_1309 : Block :=
  Block.single profile1309 selection0_1309 profile1309_checked selection0_1309_checked
noncomputable def leaf0_1310 : Block :=
  Block.single profile1310 selection0_1310 profile1310_checked selection0_1310_checked
noncomputable def leaf0_1311 : Block :=
  Block.single profile1311 selection0_1311 profile1311_checked selection0_1311_checked
noncomputable def leaf0_1312 : Block :=
  Block.single profile1312 selection0_1312 profile1312_checked selection0_1312_checked
noncomputable def leaf0_1313 : Block :=
  Block.single profile1313 selection0_1313 profile1313_checked selection0_1313_checked
noncomputable def leaf0_1314 : Block :=
  Block.single profile1314 selection0_1314 profile1314_checked selection0_1314_checked
noncomputable def leaf0_1315 : Block :=
  Block.single profile1315 selection0_1315 profile1315_checked selection0_1315_checked
noncomputable def leaf0_1316 : Block :=
  Block.single profile1316 selection0_1316 profile1316_checked selection0_1316_checked
noncomputable def leaf0_1317 : Block :=
  Block.single profile1317 selection0_1317 profile1317_checked selection0_1317_checked
noncomputable def leaf0_1318 : Block :=
  Block.single profile1318 selection0_1318 profile1318_checked selection0_1318_checked
noncomputable def leaf0_1319 : Block :=
  Block.single profile1319 selection0_1319 profile1319_checked selection0_1319_checked
noncomputable def leaf0_1320 : Block :=
  Block.single profile1320 selection0_1320 profile1320_checked selection0_1320_checked
noncomputable def leaf0_1321 : Block :=
  Block.single profile1321 selection0_1321 profile1321_checked selection0_1321_checked
noncomputable def leaf0_1322 : Block :=
  Block.single profile1322 selection0_1322 profile1322_checked selection0_1322_checked
noncomputable def leaf0_1323 : Block :=
  Block.single profile1323 selection0_1323 profile1323_checked selection0_1323_checked
noncomputable def leaf0_1324 : Block :=
  Block.single profile1324 selection0_1324 profile1324_checked selection0_1324_checked
noncomputable def leaf0_1325 : Block :=
  Block.single profile1325 selection0_1325 profile1325_checked selection0_1325_checked
noncomputable def leaf0_1326 : Block :=
  Block.single profile1326 selection0_1326 profile1326_checked selection0_1326_checked
noncomputable def leaf0_1327 : Block :=
  Block.single profile1327 selection0_1327 profile1327_checked selection0_1327_checked
noncomputable def leaf0_1328 : Block :=
  Block.single profile1328 selection0_1328 profile1328_checked selection0_1328_checked
noncomputable def leaf0_1329 : Block :=
  Block.single profile1329 selection0_1329 profile1329_checked selection0_1329_checked
noncomputable def leaf0_1330 : Block :=
  Block.single profile1330 selection0_1330 profile1330_checked selection0_1330_checked
noncomputable def leaf0_1331 : Block :=
  Block.single profile1331 selection0_1331 profile1331_checked selection0_1331_checked
noncomputable def leaf0_1332 : Block :=
  Block.single profile1332 selection0_1332 profile1332_checked selection0_1332_checked
noncomputable def leaf0_1333 : Block :=
  Block.single profile1333 selection0_1333 profile1333_checked selection0_1333_checked
noncomputable def leaf0_1334 : Block :=
  Block.single profile1334 selection0_1334 profile1334_checked selection0_1334_checked
noncomputable def leaf0_1335 : Block :=
  Block.single profile1335 selection0_1335 profile1335_checked selection0_1335_checked
noncomputable def leaf0_1336 : Block :=
  Block.single profile1336 selection0_1336 profile1336_checked selection0_1336_checked
noncomputable def leaf0_1337 : Block :=
  Block.single profile1337 selection0_1337 profile1337_checked selection0_1337_checked
noncomputable def leaf0_1338 : Block :=
  Block.single profile1338 selection0_1338 profile1338_checked selection0_1338_checked
noncomputable def leaf0_1339 : Block :=
  Block.single profile1339 selection0_1339 profile1339_checked selection0_1339_checked
noncomputable def leaf0_1340 : Block :=
  Block.single profile1340 selection0_1340 profile1340_checked selection0_1340_checked
noncomputable def leaf0_1341 : Block :=
  Block.single profile1341 selection0_1341 profile1341_checked selection0_1341_checked
noncomputable def leaf0_1342 : Block :=
  Block.single profile1342 selection0_1342 profile1342_checked selection0_1342_checked
noncomputable def leaf0_1343 : Block :=
  Block.single profile1343 selection0_1343 profile1343_checked selection0_1343_checked
noncomputable def batch020p0_0_0000 : Block :=
  Block.append leaf0_1280 leaf0_1281 (by decide +kernel)
noncomputable def batch020p0_0_0001 : Block :=
  Block.append leaf0_1282 leaf0_1283 (by decide +kernel)
noncomputable def batch020p0_0_0002 : Block :=
  Block.append leaf0_1284 leaf0_1285 (by decide +kernel)
noncomputable def batch020p0_0_0003 : Block :=
  Block.append leaf0_1286 leaf0_1287 (by decide +kernel)
noncomputable def batch020p0_0_0004 : Block :=
  Block.append leaf0_1288 leaf0_1289 (by decide +kernel)
noncomputable def batch020p0_0_0005 : Block :=
  Block.append leaf0_1290 leaf0_1291 (by decide +kernel)
noncomputable def batch020p0_0_0006 : Block :=
  Block.append leaf0_1292 leaf0_1293 (by decide +kernel)
noncomputable def batch020p0_0_0007 : Block :=
  Block.append leaf0_1294 leaf0_1295 (by decide +kernel)
noncomputable def batch020p0_0_0008 : Block :=
  Block.append leaf0_1296 leaf0_1297 (by decide +kernel)
noncomputable def batch020p0_0_0009 : Block :=
  Block.append leaf0_1298 leaf0_1299 (by decide +kernel)
noncomputable def batch020p0_0_0010 : Block :=
  Block.append leaf0_1300 leaf0_1301 (by decide +kernel)
noncomputable def batch020p0_0_0011 : Block :=
  Block.append leaf0_1302 leaf0_1303 (by decide +kernel)
noncomputable def batch020p0_0_0012 : Block :=
  Block.append leaf0_1304 leaf0_1305 (by decide +kernel)
noncomputable def batch020p0_0_0013 : Block :=
  Block.append leaf0_1306 leaf0_1307 (by decide +kernel)
noncomputable def batch020p0_0_0014 : Block :=
  Block.append leaf0_1308 leaf0_1309 (by decide +kernel)
noncomputable def batch020p0_0_0015 : Block :=
  Block.append leaf0_1310 leaf0_1311 (by decide +kernel)
noncomputable def batch020p0_0_0016 : Block :=
  Block.append leaf0_1312 leaf0_1313 (by decide +kernel)
noncomputable def batch020p0_0_0017 : Block :=
  Block.append leaf0_1314 leaf0_1315 (by decide +kernel)
noncomputable def batch020p0_0_0018 : Block :=
  Block.append leaf0_1316 leaf0_1317 (by decide +kernel)
noncomputable def batch020p0_0_0019 : Block :=
  Block.append leaf0_1318 leaf0_1319 (by decide +kernel)
noncomputable def batch020p0_0_0020 : Block :=
  Block.append leaf0_1320 leaf0_1321 (by decide +kernel)
noncomputable def batch020p0_0_0021 : Block :=
  Block.append leaf0_1322 leaf0_1323 (by decide +kernel)
noncomputable def batch020p0_0_0022 : Block :=
  Block.append leaf0_1324 leaf0_1325 (by decide +kernel)
noncomputable def batch020p0_0_0023 : Block :=
  Block.append leaf0_1326 leaf0_1327 (by decide +kernel)
noncomputable def batch020p0_0_0024 : Block :=
  Block.append leaf0_1328 leaf0_1329 (by decide +kernel)
noncomputable def batch020p0_0_0025 : Block :=
  Block.append leaf0_1330 leaf0_1331 (by decide +kernel)
noncomputable def batch020p0_0_0026 : Block :=
  Block.append leaf0_1332 leaf0_1333 (by decide +kernel)
noncomputable def batch020p0_0_0027 : Block :=
  Block.append leaf0_1334 leaf0_1335 (by decide +kernel)
noncomputable def batch020p0_0_0028 : Block :=
  Block.append leaf0_1336 leaf0_1337 (by decide +kernel)
noncomputable def batch020p0_0_0029 : Block :=
  Block.append leaf0_1338 leaf0_1339 (by decide +kernel)
noncomputable def batch020p0_0_0030 : Block :=
  Block.append leaf0_1340 leaf0_1341 (by decide +kernel)
noncomputable def batch020p0_0_0031 : Block :=
  Block.append leaf0_1342 leaf0_1343 (by decide +kernel)
noncomputable def batch020p0_1_0000 : Block :=
  Block.append batch020p0_0_0000 batch020p0_0_0001 (by decide +kernel)
noncomputable def batch020p0_1_0001 : Block :=
  Block.append batch020p0_0_0002 batch020p0_0_0003 (by decide +kernel)
noncomputable def batch020p0_1_0002 : Block :=
  Block.append batch020p0_0_0004 batch020p0_0_0005 (by decide +kernel)
noncomputable def batch020p0_1_0003 : Block :=
  Block.append batch020p0_0_0006 batch020p0_0_0007 (by decide +kernel)
noncomputable def batch020p0_1_0004 : Block :=
  Block.append batch020p0_0_0008 batch020p0_0_0009 (by decide +kernel)
noncomputable def batch020p0_1_0005 : Block :=
  Block.append batch020p0_0_0010 batch020p0_0_0011 (by decide +kernel)
noncomputable def batch020p0_1_0006 : Block :=
  Block.append batch020p0_0_0012 batch020p0_0_0013 (by decide +kernel)
noncomputable def batch020p0_1_0007 : Block :=
  Block.append batch020p0_0_0014 batch020p0_0_0015 (by decide +kernel)
noncomputable def batch020p0_1_0008 : Block :=
  Block.append batch020p0_0_0016 batch020p0_0_0017 (by decide +kernel)
noncomputable def batch020p0_1_0009 : Block :=
  Block.append batch020p0_0_0018 batch020p0_0_0019 (by decide +kernel)
noncomputable def batch020p0_1_0010 : Block :=
  Block.append batch020p0_0_0020 batch020p0_0_0021 (by decide +kernel)
noncomputable def batch020p0_1_0011 : Block :=
  Block.append batch020p0_0_0022 batch020p0_0_0023 (by decide +kernel)
noncomputable def batch020p0_1_0012 : Block :=
  Block.append batch020p0_0_0024 batch020p0_0_0025 (by decide +kernel)
noncomputable def batch020p0_1_0013 : Block :=
  Block.append batch020p0_0_0026 batch020p0_0_0027 (by decide +kernel)
noncomputable def batch020p0_1_0014 : Block :=
  Block.append batch020p0_0_0028 batch020p0_0_0029 (by decide +kernel)
noncomputable def batch020p0_1_0015 : Block :=
  Block.append batch020p0_0_0030 batch020p0_0_0031 (by decide +kernel)
noncomputable def batch020p0_2_0000 : Block :=
  Block.append batch020p0_1_0000 batch020p0_1_0001 (by decide +kernel)
noncomputable def batch020p0_2_0001 : Block :=
  Block.append batch020p0_1_0002 batch020p0_1_0003 (by decide +kernel)
noncomputable def batch020p0_2_0002 : Block :=
  Block.append batch020p0_1_0004 batch020p0_1_0005 (by decide +kernel)
noncomputable def batch020p0_2_0003 : Block :=
  Block.append batch020p0_1_0006 batch020p0_1_0007 (by decide +kernel)
noncomputable def batch020p0_2_0004 : Block :=
  Block.append batch020p0_1_0008 batch020p0_1_0009 (by decide +kernel)
noncomputable def batch020p0_2_0005 : Block :=
  Block.append batch020p0_1_0010 batch020p0_1_0011 (by decide +kernel)
noncomputable def batch020p0_2_0006 : Block :=
  Block.append batch020p0_1_0012 batch020p0_1_0013 (by decide +kernel)
noncomputable def batch020p0_2_0007 : Block :=
  Block.append batch020p0_1_0014 batch020p0_1_0015 (by decide +kernel)
noncomputable def batch020p0_3_0000 : Block :=
  Block.append batch020p0_2_0000 batch020p0_2_0001 (by decide +kernel)
noncomputable def batch020p0_3_0001 : Block :=
  Block.append batch020p0_2_0002 batch020p0_2_0003 (by decide +kernel)
noncomputable def batch020p0_3_0002 : Block :=
  Block.append batch020p0_2_0004 batch020p0_2_0005 (by decide +kernel)
noncomputable def batch020p0_3_0003 : Block :=
  Block.append batch020p0_2_0006 batch020p0_2_0007 (by decide +kernel)
noncomputable def batch020p0_4_0000 : Block :=
  Block.append batch020p0_3_0000 batch020p0_3_0001 (by decide +kernel)
noncomputable def batch020p0_4_0001 : Block :=
  Block.append batch020p0_3_0002 batch020p0_3_0003 (by decide +kernel)
noncomputable def batch020p0_5_0000 : Block :=
  Block.append batch020p0_4_0000 batch020p0_4_0001 (by decide +kernel)
theorem batch020p0_5_0000_left : batch020p0_5_0000.left = (49/109) := by decide +kernel
theorem batch020p0_5_0000_right : batch020p0_5_0000.right = (26/55) := by decide +kernel
theorem batch020p0_5_0000_units : batch020p0_5_0000.units = 175064 := by decide +kernel
noncomputable def leaf1_1280 : Block :=
  Block.single profile1280 selection1_1280 profile1280_checked selection1_1280_checked
noncomputable def leaf1_1281 : Block :=
  Block.single profile1281 selection1_1281 profile1281_checked selection1_1281_checked
noncomputable def leaf1_1282 : Block :=
  Block.single profile1282 selection1_1282 profile1282_checked selection1_1282_checked
noncomputable def leaf1_1283 : Block :=
  Block.single profile1283 selection1_1283 profile1283_checked selection1_1283_checked
noncomputable def leaf1_1284 : Block :=
  Block.single profile1284 selection1_1284 profile1284_checked selection1_1284_checked
noncomputable def leaf1_1285 : Block :=
  Block.single profile1285 selection1_1285 profile1285_checked selection1_1285_checked
noncomputable def leaf1_1286 : Block :=
  Block.single profile1286 selection1_1286 profile1286_checked selection1_1286_checked
noncomputable def leaf1_1287 : Block :=
  Block.single profile1287 selection1_1287 profile1287_checked selection1_1287_checked
noncomputable def leaf1_1288 : Block :=
  Block.single profile1288 selection1_1288 profile1288_checked selection1_1288_checked
noncomputable def leaf1_1289 : Block :=
  Block.single profile1289 selection1_1289 profile1289_checked selection1_1289_checked
noncomputable def leaf1_1290 : Block :=
  Block.single profile1290 selection1_1290 profile1290_checked selection1_1290_checked
noncomputable def leaf1_1291 : Block :=
  Block.single profile1291 selection1_1291 profile1291_checked selection1_1291_checked
noncomputable def leaf1_1292 : Block :=
  Block.single profile1292 selection1_1292 profile1292_checked selection1_1292_checked
noncomputable def leaf1_1293 : Block :=
  Block.single profile1293 selection1_1293 profile1293_checked selection1_1293_checked
noncomputable def leaf1_1294 : Block :=
  Block.single profile1294 selection1_1294 profile1294_checked selection1_1294_checked
noncomputable def leaf1_1295 : Block :=
  Block.single profile1295 selection1_1295 profile1295_checked selection1_1295_checked
noncomputable def leaf1_1296 : Block :=
  Block.single profile1296 selection1_1296 profile1296_checked selection1_1296_checked
noncomputable def leaf1_1297 : Block :=
  Block.single profile1297 selection1_1297 profile1297_checked selection1_1297_checked
noncomputable def leaf1_1298 : Block :=
  Block.single profile1298 selection1_1298 profile1298_checked selection1_1298_checked
noncomputable def leaf1_1299 : Block :=
  Block.single profile1299 selection1_1299 profile1299_checked selection1_1299_checked
noncomputable def leaf1_1300 : Block :=
  Block.single profile1300 selection1_1300 profile1300_checked selection1_1300_checked
noncomputable def leaf1_1301 : Block :=
  Block.single profile1301 selection1_1301 profile1301_checked selection1_1301_checked
noncomputable def leaf1_1302 : Block :=
  Block.single profile1302 selection1_1302 profile1302_checked selection1_1302_checked
noncomputable def leaf1_1303 : Block :=
  Block.single profile1303 selection1_1303 profile1303_checked selection1_1303_checked
noncomputable def leaf1_1304 : Block :=
  Block.single profile1304 selection1_1304 profile1304_checked selection1_1304_checked
noncomputable def leaf1_1305 : Block :=
  Block.single profile1305 selection1_1305 profile1305_checked selection1_1305_checked
noncomputable def leaf1_1306 : Block :=
  Block.single profile1306 selection1_1306 profile1306_checked selection1_1306_checked
noncomputable def leaf1_1307 : Block :=
  Block.single profile1307 selection1_1307 profile1307_checked selection1_1307_checked
noncomputable def leaf1_1308 : Block :=
  Block.single profile1308 selection1_1308 profile1308_checked selection1_1308_checked
noncomputable def leaf1_1309 : Block :=
  Block.single profile1309 selection1_1309 profile1309_checked selection1_1309_checked
noncomputable def leaf1_1310 : Block :=
  Block.single profile1310 selection1_1310 profile1310_checked selection1_1310_checked
noncomputable def leaf1_1311 : Block :=
  Block.single profile1311 selection1_1311 profile1311_checked selection1_1311_checked
noncomputable def leaf1_1312 : Block :=
  Block.single profile1312 selection1_1312 profile1312_checked selection1_1312_checked
noncomputable def leaf1_1313 : Block :=
  Block.single profile1313 selection1_1313 profile1313_checked selection1_1313_checked
noncomputable def leaf1_1314 : Block :=
  Block.single profile1314 selection1_1314 profile1314_checked selection1_1314_checked
noncomputable def leaf1_1315 : Block :=
  Block.single profile1315 selection1_1315 profile1315_checked selection1_1315_checked
noncomputable def leaf1_1316 : Block :=
  Block.single profile1316 selection1_1316 profile1316_checked selection1_1316_checked
noncomputable def leaf1_1317 : Block :=
  Block.single profile1317 selection1_1317 profile1317_checked selection1_1317_checked
noncomputable def leaf1_1318 : Block :=
  Block.single profile1318 selection1_1318 profile1318_checked selection1_1318_checked
noncomputable def leaf1_1319 : Block :=
  Block.single profile1319 selection1_1319 profile1319_checked selection1_1319_checked
noncomputable def leaf1_1320 : Block :=
  Block.single profile1320 selection1_1320 profile1320_checked selection1_1320_checked
noncomputable def leaf1_1321 : Block :=
  Block.single profile1321 selection1_1321 profile1321_checked selection1_1321_checked
noncomputable def leaf1_1322 : Block :=
  Block.single profile1322 selection1_1322 profile1322_checked selection1_1322_checked
noncomputable def leaf1_1323 : Block :=
  Block.single profile1323 selection1_1323 profile1323_checked selection1_1323_checked
noncomputable def leaf1_1324 : Block :=
  Block.single profile1324 selection1_1324 profile1324_checked selection1_1324_checked
noncomputable def leaf1_1325 : Block :=
  Block.single profile1325 selection1_1325 profile1325_checked selection1_1325_checked
noncomputable def leaf1_1326 : Block :=
  Block.single profile1326 selection1_1326 profile1326_checked selection1_1326_checked
noncomputable def leaf1_1327 : Block :=
  Block.single profile1327 selection1_1327 profile1327_checked selection1_1327_checked
noncomputable def leaf1_1328 : Block :=
  Block.single profile1328 selection1_1328 profile1328_checked selection1_1328_checked
noncomputable def leaf1_1329 : Block :=
  Block.single profile1329 selection1_1329 profile1329_checked selection1_1329_checked
noncomputable def leaf1_1330 : Block :=
  Block.single profile1330 selection1_1330 profile1330_checked selection1_1330_checked
noncomputable def leaf1_1331 : Block :=
  Block.single profile1331 selection1_1331 profile1331_checked selection1_1331_checked
noncomputable def leaf1_1332 : Block :=
  Block.single profile1332 selection1_1332 profile1332_checked selection1_1332_checked
noncomputable def leaf1_1333 : Block :=
  Block.single profile1333 selection1_1333 profile1333_checked selection1_1333_checked
noncomputable def leaf1_1334 : Block :=
  Block.single profile1334 selection1_1334 profile1334_checked selection1_1334_checked
noncomputable def leaf1_1335 : Block :=
  Block.single profile1335 selection1_1335 profile1335_checked selection1_1335_checked
noncomputable def leaf1_1336 : Block :=
  Block.single profile1336 selection1_1336 profile1336_checked selection1_1336_checked
noncomputable def leaf1_1337 : Block :=
  Block.single profile1337 selection1_1337 profile1337_checked selection1_1337_checked
noncomputable def leaf1_1338 : Block :=
  Block.single profile1338 selection1_1338 profile1338_checked selection1_1338_checked
noncomputable def leaf1_1339 : Block :=
  Block.single profile1339 selection1_1339 profile1339_checked selection1_1339_checked
noncomputable def leaf1_1340 : Block :=
  Block.single profile1340 selection1_1340 profile1340_checked selection1_1340_checked
noncomputable def leaf1_1341 : Block :=
  Block.single profile1341 selection1_1341 profile1341_checked selection1_1341_checked
noncomputable def leaf1_1342 : Block :=
  Block.single profile1342 selection1_1342 profile1342_checked selection1_1342_checked
noncomputable def leaf1_1343 : Block :=
  Block.single profile1343 selection1_1343 profile1343_checked selection1_1343_checked
noncomputable def batch020p1_0_0000 : Block :=
  Block.append leaf1_1280 leaf1_1281 (by decide +kernel)
noncomputable def batch020p1_0_0001 : Block :=
  Block.append leaf1_1282 leaf1_1283 (by decide +kernel)
noncomputable def batch020p1_0_0002 : Block :=
  Block.append leaf1_1284 leaf1_1285 (by decide +kernel)
noncomputable def batch020p1_0_0003 : Block :=
  Block.append leaf1_1286 leaf1_1287 (by decide +kernel)
noncomputable def batch020p1_0_0004 : Block :=
  Block.append leaf1_1288 leaf1_1289 (by decide +kernel)
noncomputable def batch020p1_0_0005 : Block :=
  Block.append leaf1_1290 leaf1_1291 (by decide +kernel)
noncomputable def batch020p1_0_0006 : Block :=
  Block.append leaf1_1292 leaf1_1293 (by decide +kernel)
noncomputable def batch020p1_0_0007 : Block :=
  Block.append leaf1_1294 leaf1_1295 (by decide +kernel)
noncomputable def batch020p1_0_0008 : Block :=
  Block.append leaf1_1296 leaf1_1297 (by decide +kernel)
noncomputable def batch020p1_0_0009 : Block :=
  Block.append leaf1_1298 leaf1_1299 (by decide +kernel)
noncomputable def batch020p1_0_0010 : Block :=
  Block.append leaf1_1300 leaf1_1301 (by decide +kernel)
noncomputable def batch020p1_0_0011 : Block :=
  Block.append leaf1_1302 leaf1_1303 (by decide +kernel)
noncomputable def batch020p1_0_0012 : Block :=
  Block.append leaf1_1304 leaf1_1305 (by decide +kernel)
noncomputable def batch020p1_0_0013 : Block :=
  Block.append leaf1_1306 leaf1_1307 (by decide +kernel)
noncomputable def batch020p1_0_0014 : Block :=
  Block.append leaf1_1308 leaf1_1309 (by decide +kernel)
noncomputable def batch020p1_0_0015 : Block :=
  Block.append leaf1_1310 leaf1_1311 (by decide +kernel)
noncomputable def batch020p1_0_0016 : Block :=
  Block.append leaf1_1312 leaf1_1313 (by decide +kernel)
noncomputable def batch020p1_0_0017 : Block :=
  Block.append leaf1_1314 leaf1_1315 (by decide +kernel)
noncomputable def batch020p1_0_0018 : Block :=
  Block.append leaf1_1316 leaf1_1317 (by decide +kernel)
noncomputable def batch020p1_0_0019 : Block :=
  Block.append leaf1_1318 leaf1_1319 (by decide +kernel)
noncomputable def batch020p1_0_0020 : Block :=
  Block.append leaf1_1320 leaf1_1321 (by decide +kernel)
noncomputable def batch020p1_0_0021 : Block :=
  Block.append leaf1_1322 leaf1_1323 (by decide +kernel)
noncomputable def batch020p1_0_0022 : Block :=
  Block.append leaf1_1324 leaf1_1325 (by decide +kernel)
noncomputable def batch020p1_0_0023 : Block :=
  Block.append leaf1_1326 leaf1_1327 (by decide +kernel)
noncomputable def batch020p1_0_0024 : Block :=
  Block.append leaf1_1328 leaf1_1329 (by decide +kernel)
noncomputable def batch020p1_0_0025 : Block :=
  Block.append leaf1_1330 leaf1_1331 (by decide +kernel)
noncomputable def batch020p1_0_0026 : Block :=
  Block.append leaf1_1332 leaf1_1333 (by decide +kernel)
noncomputable def batch020p1_0_0027 : Block :=
  Block.append leaf1_1334 leaf1_1335 (by decide +kernel)
noncomputable def batch020p1_0_0028 : Block :=
  Block.append leaf1_1336 leaf1_1337 (by decide +kernel)
noncomputable def batch020p1_0_0029 : Block :=
  Block.append leaf1_1338 leaf1_1339 (by decide +kernel)
noncomputable def batch020p1_0_0030 : Block :=
  Block.append leaf1_1340 leaf1_1341 (by decide +kernel)
noncomputable def batch020p1_0_0031 : Block :=
  Block.append leaf1_1342 leaf1_1343 (by decide +kernel)
noncomputable def batch020p1_1_0000 : Block :=
  Block.append batch020p1_0_0000 batch020p1_0_0001 (by decide +kernel)
noncomputable def batch020p1_1_0001 : Block :=
  Block.append batch020p1_0_0002 batch020p1_0_0003 (by decide +kernel)
noncomputable def batch020p1_1_0002 : Block :=
  Block.append batch020p1_0_0004 batch020p1_0_0005 (by decide +kernel)
noncomputable def batch020p1_1_0003 : Block :=
  Block.append batch020p1_0_0006 batch020p1_0_0007 (by decide +kernel)
noncomputable def batch020p1_1_0004 : Block :=
  Block.append batch020p1_0_0008 batch020p1_0_0009 (by decide +kernel)
noncomputable def batch020p1_1_0005 : Block :=
  Block.append batch020p1_0_0010 batch020p1_0_0011 (by decide +kernel)
noncomputable def batch020p1_1_0006 : Block :=
  Block.append batch020p1_0_0012 batch020p1_0_0013 (by decide +kernel)
noncomputable def batch020p1_1_0007 : Block :=
  Block.append batch020p1_0_0014 batch020p1_0_0015 (by decide +kernel)
noncomputable def batch020p1_1_0008 : Block :=
  Block.append batch020p1_0_0016 batch020p1_0_0017 (by decide +kernel)
noncomputable def batch020p1_1_0009 : Block :=
  Block.append batch020p1_0_0018 batch020p1_0_0019 (by decide +kernel)
noncomputable def batch020p1_1_0010 : Block :=
  Block.append batch020p1_0_0020 batch020p1_0_0021 (by decide +kernel)
noncomputable def batch020p1_1_0011 : Block :=
  Block.append batch020p1_0_0022 batch020p1_0_0023 (by decide +kernel)
noncomputable def batch020p1_1_0012 : Block :=
  Block.append batch020p1_0_0024 batch020p1_0_0025 (by decide +kernel)
noncomputable def batch020p1_1_0013 : Block :=
  Block.append batch020p1_0_0026 batch020p1_0_0027 (by decide +kernel)
noncomputable def batch020p1_1_0014 : Block :=
  Block.append batch020p1_0_0028 batch020p1_0_0029 (by decide +kernel)
noncomputable def batch020p1_1_0015 : Block :=
  Block.append batch020p1_0_0030 batch020p1_0_0031 (by decide +kernel)
noncomputable def batch020p1_2_0000 : Block :=
  Block.append batch020p1_1_0000 batch020p1_1_0001 (by decide +kernel)
noncomputable def batch020p1_2_0001 : Block :=
  Block.append batch020p1_1_0002 batch020p1_1_0003 (by decide +kernel)
noncomputable def batch020p1_2_0002 : Block :=
  Block.append batch020p1_1_0004 batch020p1_1_0005 (by decide +kernel)
noncomputable def batch020p1_2_0003 : Block :=
  Block.append batch020p1_1_0006 batch020p1_1_0007 (by decide +kernel)
noncomputable def batch020p1_2_0004 : Block :=
  Block.append batch020p1_1_0008 batch020p1_1_0009 (by decide +kernel)
noncomputable def batch020p1_2_0005 : Block :=
  Block.append batch020p1_1_0010 batch020p1_1_0011 (by decide +kernel)
noncomputable def batch020p1_2_0006 : Block :=
  Block.append batch020p1_1_0012 batch020p1_1_0013 (by decide +kernel)
noncomputable def batch020p1_2_0007 : Block :=
  Block.append batch020p1_1_0014 batch020p1_1_0015 (by decide +kernel)
noncomputable def batch020p1_3_0000 : Block :=
  Block.append batch020p1_2_0000 batch020p1_2_0001 (by decide +kernel)
noncomputable def batch020p1_3_0001 : Block :=
  Block.append batch020p1_2_0002 batch020p1_2_0003 (by decide +kernel)
noncomputable def batch020p1_3_0002 : Block :=
  Block.append batch020p1_2_0004 batch020p1_2_0005 (by decide +kernel)
noncomputable def batch020p1_3_0003 : Block :=
  Block.append batch020p1_2_0006 batch020p1_2_0007 (by decide +kernel)
noncomputable def batch020p1_4_0000 : Block :=
  Block.append batch020p1_3_0000 batch020p1_3_0001 (by decide +kernel)
noncomputable def batch020p1_4_0001 : Block :=
  Block.append batch020p1_3_0002 batch020p1_3_0003 (by decide +kernel)
noncomputable def batch020p1_5_0000 : Block :=
  Block.append batch020p1_4_0000 batch020p1_4_0001 (by decide +kernel)
theorem batch020p1_5_0000_left : batch020p1_5_0000.left = (158/109) := by decide +kernel
theorem batch020p1_5_0000_right : batch020p1_5_0000.right = (81/55) := by decide +kernel
theorem batch020p1_5_0000_units : batch020p1_5_0000.units = 16378 := by decide +kernel
noncomputable def leaf2_1280 : Block :=
  Block.single profile1280 selection2_1280 profile1280_checked selection2_1280_checked
noncomputable def leaf2_1281 : Block :=
  Block.single profile1281 selection2_1281 profile1281_checked selection2_1281_checked
noncomputable def leaf2_1282 : Block :=
  Block.single profile1282 selection2_1282 profile1282_checked selection2_1282_checked
noncomputable def leaf2_1283 : Block :=
  Block.single profile1283 selection2_1283 profile1283_checked selection2_1283_checked
noncomputable def leaf2_1284 : Block :=
  Block.single profile1284 selection2_1284 profile1284_checked selection2_1284_checked
noncomputable def leaf2_1285 : Block :=
  Block.single profile1285 selection2_1285 profile1285_checked selection2_1285_checked
noncomputable def leaf2_1286 : Block :=
  Block.single profile1286 selection2_1286 profile1286_checked selection2_1286_checked
noncomputable def leaf2_1287 : Block :=
  Block.single profile1287 selection2_1287 profile1287_checked selection2_1287_checked
noncomputable def leaf2_1288 : Block :=
  Block.single profile1288 selection2_1288 profile1288_checked selection2_1288_checked
noncomputable def leaf2_1289 : Block :=
  Block.single profile1289 selection2_1289 profile1289_checked selection2_1289_checked
noncomputable def leaf2_1290 : Block :=
  Block.single profile1290 selection2_1290 profile1290_checked selection2_1290_checked
noncomputable def leaf2_1291 : Block :=
  Block.single profile1291 selection2_1291 profile1291_checked selection2_1291_checked
noncomputable def leaf2_1292 : Block :=
  Block.single profile1292 selection2_1292 profile1292_checked selection2_1292_checked
noncomputable def leaf2_1293 : Block :=
  Block.single profile1293 selection2_1293 profile1293_checked selection2_1293_checked
noncomputable def leaf2_1294 : Block :=
  Block.single profile1294 selection2_1294 profile1294_checked selection2_1294_checked
noncomputable def leaf2_1295 : Block :=
  Block.single profile1295 selection2_1295 profile1295_checked selection2_1295_checked
noncomputable def leaf2_1296 : Block :=
  Block.single profile1296 selection2_1296 profile1296_checked selection2_1296_checked
noncomputable def leaf2_1297 : Block :=
  Block.single profile1297 selection2_1297 profile1297_checked selection2_1297_checked
noncomputable def leaf2_1298 : Block :=
  Block.single profile1298 selection2_1298 profile1298_checked selection2_1298_checked
noncomputable def leaf2_1299 : Block :=
  Block.single profile1299 selection2_1299 profile1299_checked selection2_1299_checked
noncomputable def leaf2_1300 : Block :=
  Block.single profile1300 selection2_1300 profile1300_checked selection2_1300_checked
noncomputable def leaf2_1301 : Block :=
  Block.single profile1301 selection2_1301 profile1301_checked selection2_1301_checked
noncomputable def leaf2_1302 : Block :=
  Block.single profile1302 selection2_1302 profile1302_checked selection2_1302_checked
noncomputable def leaf2_1303 : Block :=
  Block.single profile1303 selection2_1303 profile1303_checked selection2_1303_checked
noncomputable def leaf2_1304 : Block :=
  Block.single profile1304 selection2_1304 profile1304_checked selection2_1304_checked
noncomputable def leaf2_1305 : Block :=
  Block.single profile1305 selection2_1305 profile1305_checked selection2_1305_checked
noncomputable def leaf2_1306 : Block :=
  Block.single profile1306 selection2_1306 profile1306_checked selection2_1306_checked
noncomputable def leaf2_1307 : Block :=
  Block.single profile1307 selection2_1307 profile1307_checked selection2_1307_checked
noncomputable def leaf2_1308 : Block :=
  Block.single profile1308 selection2_1308 profile1308_checked selection2_1308_checked
noncomputable def leaf2_1309 : Block :=
  Block.single profile1309 selection2_1309 profile1309_checked selection2_1309_checked
noncomputable def leaf2_1310 : Block :=
  Block.single profile1310 selection2_1310 profile1310_checked selection2_1310_checked
noncomputable def leaf2_1311 : Block :=
  Block.single profile1311 selection2_1311 profile1311_checked selection2_1311_checked
noncomputable def leaf2_1312 : Block :=
  Block.single profile1312 selection2_1312 profile1312_checked selection2_1312_checked
noncomputable def leaf2_1313 : Block :=
  Block.single profile1313 selection2_1313 profile1313_checked selection2_1313_checked
noncomputable def leaf2_1314 : Block :=
  Block.single profile1314 selection2_1314 profile1314_checked selection2_1314_checked
noncomputable def leaf2_1315 : Block :=
  Block.single profile1315 selection2_1315 profile1315_checked selection2_1315_checked
noncomputable def leaf2_1316 : Block :=
  Block.single profile1316 selection2_1316 profile1316_checked selection2_1316_checked
noncomputable def leaf2_1317 : Block :=
  Block.single profile1317 selection2_1317 profile1317_checked selection2_1317_checked
noncomputable def leaf2_1318 : Block :=
  Block.single profile1318 selection2_1318 profile1318_checked selection2_1318_checked
noncomputable def leaf2_1319 : Block :=
  Block.single profile1319 selection2_1319 profile1319_checked selection2_1319_checked
noncomputable def leaf2_1320 : Block :=
  Block.single profile1320 selection2_1320 profile1320_checked selection2_1320_checked
noncomputable def leaf2_1321 : Block :=
  Block.single profile1321 selection2_1321 profile1321_checked selection2_1321_checked
noncomputable def leaf2_1322 : Block :=
  Block.single profile1322 selection2_1322 profile1322_checked selection2_1322_checked
noncomputable def leaf2_1323 : Block :=
  Block.single profile1323 selection2_1323 profile1323_checked selection2_1323_checked
noncomputable def leaf2_1324 : Block :=
  Block.single profile1324 selection2_1324 profile1324_checked selection2_1324_checked
noncomputable def leaf2_1325 : Block :=
  Block.single profile1325 selection2_1325 profile1325_checked selection2_1325_checked
noncomputable def leaf2_1326 : Block :=
  Block.single profile1326 selection2_1326 profile1326_checked selection2_1326_checked
noncomputable def leaf2_1327 : Block :=
  Block.single profile1327 selection2_1327 profile1327_checked selection2_1327_checked
noncomputable def leaf2_1328 : Block :=
  Block.single profile1328 selection2_1328 profile1328_checked selection2_1328_checked
noncomputable def leaf2_1329 : Block :=
  Block.single profile1329 selection2_1329 profile1329_checked selection2_1329_checked
noncomputable def leaf2_1330 : Block :=
  Block.single profile1330 selection2_1330 profile1330_checked selection2_1330_checked
noncomputable def leaf2_1331 : Block :=
  Block.single profile1331 selection2_1331 profile1331_checked selection2_1331_checked
noncomputable def leaf2_1332 : Block :=
  Block.single profile1332 selection2_1332 profile1332_checked selection2_1332_checked
noncomputable def leaf2_1333 : Block :=
  Block.single profile1333 selection2_1333 profile1333_checked selection2_1333_checked
noncomputable def leaf2_1334 : Block :=
  Block.single profile1334 selection2_1334 profile1334_checked selection2_1334_checked
noncomputable def leaf2_1335 : Block :=
  Block.single profile1335 selection2_1335 profile1335_checked selection2_1335_checked
noncomputable def leaf2_1336 : Block :=
  Block.single profile1336 selection2_1336 profile1336_checked selection2_1336_checked
noncomputable def leaf2_1337 : Block :=
  Block.single profile1337 selection2_1337 profile1337_checked selection2_1337_checked
noncomputable def leaf2_1338 : Block :=
  Block.single profile1338 selection2_1338 profile1338_checked selection2_1338_checked
noncomputable def leaf2_1339 : Block :=
  Block.single profile1339 selection2_1339 profile1339_checked selection2_1339_checked
noncomputable def leaf2_1340 : Block :=
  Block.single profile1340 selection2_1340 profile1340_checked selection2_1340_checked
noncomputable def leaf2_1341 : Block :=
  Block.single profile1341 selection2_1341 profile1341_checked selection2_1341_checked
noncomputable def leaf2_1342 : Block :=
  Block.single profile1342 selection2_1342 profile1342_checked selection2_1342_checked
noncomputable def leaf2_1343 : Block :=
  Block.single profile1343 selection2_1343 profile1343_checked selection2_1343_checked
noncomputable def batch020p2_0_0000 : Block :=
  Block.append leaf2_1280 leaf2_1281 (by decide +kernel)
noncomputable def batch020p2_0_0001 : Block :=
  Block.append leaf2_1282 leaf2_1283 (by decide +kernel)
noncomputable def batch020p2_0_0002 : Block :=
  Block.append leaf2_1284 leaf2_1285 (by decide +kernel)
noncomputable def batch020p2_0_0003 : Block :=
  Block.append leaf2_1286 leaf2_1287 (by decide +kernel)
noncomputable def batch020p2_0_0004 : Block :=
  Block.append leaf2_1288 leaf2_1289 (by decide +kernel)
noncomputable def batch020p2_0_0005 : Block :=
  Block.append leaf2_1290 leaf2_1291 (by decide +kernel)
noncomputable def batch020p2_0_0006 : Block :=
  Block.append leaf2_1292 leaf2_1293 (by decide +kernel)
noncomputable def batch020p2_0_0007 : Block :=
  Block.append leaf2_1294 leaf2_1295 (by decide +kernel)
noncomputable def batch020p2_0_0008 : Block :=
  Block.append leaf2_1296 leaf2_1297 (by decide +kernel)
noncomputable def batch020p2_0_0009 : Block :=
  Block.append leaf2_1298 leaf2_1299 (by decide +kernel)
noncomputable def batch020p2_0_0010 : Block :=
  Block.append leaf2_1300 leaf2_1301 (by decide +kernel)
noncomputable def batch020p2_0_0011 : Block :=
  Block.append leaf2_1302 leaf2_1303 (by decide +kernel)
noncomputable def batch020p2_0_0012 : Block :=
  Block.append leaf2_1304 leaf2_1305 (by decide +kernel)
noncomputable def batch020p2_0_0013 : Block :=
  Block.append leaf2_1306 leaf2_1307 (by decide +kernel)
noncomputable def batch020p2_0_0014 : Block :=
  Block.append leaf2_1308 leaf2_1309 (by decide +kernel)
noncomputable def batch020p2_0_0015 : Block :=
  Block.append leaf2_1310 leaf2_1311 (by decide +kernel)
noncomputable def batch020p2_0_0016 : Block :=
  Block.append leaf2_1312 leaf2_1313 (by decide +kernel)
noncomputable def batch020p2_0_0017 : Block :=
  Block.append leaf2_1314 leaf2_1315 (by decide +kernel)
noncomputable def batch020p2_0_0018 : Block :=
  Block.append leaf2_1316 leaf2_1317 (by decide +kernel)
noncomputable def batch020p2_0_0019 : Block :=
  Block.append leaf2_1318 leaf2_1319 (by decide +kernel)
noncomputable def batch020p2_0_0020 : Block :=
  Block.append leaf2_1320 leaf2_1321 (by decide +kernel)
noncomputable def batch020p2_0_0021 : Block :=
  Block.append leaf2_1322 leaf2_1323 (by decide +kernel)
noncomputable def batch020p2_0_0022 : Block :=
  Block.append leaf2_1324 leaf2_1325 (by decide +kernel)
noncomputable def batch020p2_0_0023 : Block :=
  Block.append leaf2_1326 leaf2_1327 (by decide +kernel)
noncomputable def batch020p2_0_0024 : Block :=
  Block.append leaf2_1328 leaf2_1329 (by decide +kernel)
noncomputable def batch020p2_0_0025 : Block :=
  Block.append leaf2_1330 leaf2_1331 (by decide +kernel)
noncomputable def batch020p2_0_0026 : Block :=
  Block.append leaf2_1332 leaf2_1333 (by decide +kernel)
noncomputable def batch020p2_0_0027 : Block :=
  Block.append leaf2_1334 leaf2_1335 (by decide +kernel)
noncomputable def batch020p2_0_0028 : Block :=
  Block.append leaf2_1336 leaf2_1337 (by decide +kernel)
noncomputable def batch020p2_0_0029 : Block :=
  Block.append leaf2_1338 leaf2_1339 (by decide +kernel)
noncomputable def batch020p2_0_0030 : Block :=
  Block.append leaf2_1340 leaf2_1341 (by decide +kernel)
noncomputable def batch020p2_0_0031 : Block :=
  Block.append leaf2_1342 leaf2_1343 (by decide +kernel)
noncomputable def batch020p2_1_0000 : Block :=
  Block.append batch020p2_0_0000 batch020p2_0_0001 (by decide +kernel)
noncomputable def batch020p2_1_0001 : Block :=
  Block.append batch020p2_0_0002 batch020p2_0_0003 (by decide +kernel)
noncomputable def batch020p2_1_0002 : Block :=
  Block.append batch020p2_0_0004 batch020p2_0_0005 (by decide +kernel)
noncomputable def batch020p2_1_0003 : Block :=
  Block.append batch020p2_0_0006 batch020p2_0_0007 (by decide +kernel)
noncomputable def batch020p2_1_0004 : Block :=
  Block.append batch020p2_0_0008 batch020p2_0_0009 (by decide +kernel)
noncomputable def batch020p2_1_0005 : Block :=
  Block.append batch020p2_0_0010 batch020p2_0_0011 (by decide +kernel)
noncomputable def batch020p2_1_0006 : Block :=
  Block.append batch020p2_0_0012 batch020p2_0_0013 (by decide +kernel)
noncomputable def batch020p2_1_0007 : Block :=
  Block.append batch020p2_0_0014 batch020p2_0_0015 (by decide +kernel)
noncomputable def batch020p2_1_0008 : Block :=
  Block.append batch020p2_0_0016 batch020p2_0_0017 (by decide +kernel)
noncomputable def batch020p2_1_0009 : Block :=
  Block.append batch020p2_0_0018 batch020p2_0_0019 (by decide +kernel)
noncomputable def batch020p2_1_0010 : Block :=
  Block.append batch020p2_0_0020 batch020p2_0_0021 (by decide +kernel)
noncomputable def batch020p2_1_0011 : Block :=
  Block.append batch020p2_0_0022 batch020p2_0_0023 (by decide +kernel)
noncomputable def batch020p2_1_0012 : Block :=
  Block.append batch020p2_0_0024 batch020p2_0_0025 (by decide +kernel)
noncomputable def batch020p2_1_0013 : Block :=
  Block.append batch020p2_0_0026 batch020p2_0_0027 (by decide +kernel)
noncomputable def batch020p2_1_0014 : Block :=
  Block.append batch020p2_0_0028 batch020p2_0_0029 (by decide +kernel)
noncomputable def batch020p2_1_0015 : Block :=
  Block.append batch020p2_0_0030 batch020p2_0_0031 (by decide +kernel)
noncomputable def batch020p2_2_0000 : Block :=
  Block.append batch020p2_1_0000 batch020p2_1_0001 (by decide +kernel)
noncomputable def batch020p2_2_0001 : Block :=
  Block.append batch020p2_1_0002 batch020p2_1_0003 (by decide +kernel)
noncomputable def batch020p2_2_0002 : Block :=
  Block.append batch020p2_1_0004 batch020p2_1_0005 (by decide +kernel)
noncomputable def batch020p2_2_0003 : Block :=
  Block.append batch020p2_1_0006 batch020p2_1_0007 (by decide +kernel)
noncomputable def batch020p2_2_0004 : Block :=
  Block.append batch020p2_1_0008 batch020p2_1_0009 (by decide +kernel)
noncomputable def batch020p2_2_0005 : Block :=
  Block.append batch020p2_1_0010 batch020p2_1_0011 (by decide +kernel)
noncomputable def batch020p2_2_0006 : Block :=
  Block.append batch020p2_1_0012 batch020p2_1_0013 (by decide +kernel)
noncomputable def batch020p2_2_0007 : Block :=
  Block.append batch020p2_1_0014 batch020p2_1_0015 (by decide +kernel)
noncomputable def batch020p2_3_0000 : Block :=
  Block.append batch020p2_2_0000 batch020p2_2_0001 (by decide +kernel)
noncomputable def batch020p2_3_0001 : Block :=
  Block.append batch020p2_2_0002 batch020p2_2_0003 (by decide +kernel)
noncomputable def batch020p2_3_0002 : Block :=
  Block.append batch020p2_2_0004 batch020p2_2_0005 (by decide +kernel)
noncomputable def batch020p2_3_0003 : Block :=
  Block.append batch020p2_2_0006 batch020p2_2_0007 (by decide +kernel)
noncomputable def batch020p2_4_0000 : Block :=
  Block.append batch020p2_3_0000 batch020p2_3_0001 (by decide +kernel)
noncomputable def batch020p2_4_0001 : Block :=
  Block.append batch020p2_3_0002 batch020p2_3_0003 (by decide +kernel)
noncomputable def batch020p2_5_0000 : Block :=
  Block.append batch020p2_4_0000 batch020p2_4_0001 (by decide +kernel)
theorem batch020p2_5_0000_left : batch020p2_5_0000.left = (267/109) := by decide +kernel
theorem batch020p2_5_0000_right : batch020p2_5_0000.right = (136/55) := by decide +kernel
theorem batch020p2_5_0000_units : batch020p2_5_0000.units = 5726 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
