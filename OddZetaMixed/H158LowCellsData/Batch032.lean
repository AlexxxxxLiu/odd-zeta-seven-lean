import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile2048 : ProfileCell :=
  ⟨(67/93), (49/68),
    [37, 36, 34, 33, 31, 30, 28, 27, 25, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨25, 67⟩, ⟨3, 36⟩, ⟨32, 72⟩, ⟨10, 41⟩, ⟨39, 77⟩, ⟨17, 46⟩, ⟨28, 69⟩, ⟨6, 38⟩, ⟨35, 74⟩, ⟨13, 43⟩, ⟨42, 79⟩, ⟨20, 48⟩, ⟨24, 66⟩, ⟨2, 35⟩, ⟨31, 71⟩, ⟨9, 40⟩, ⟨38, 76⟩, ⟨16, 45⟩, ⟨27, 68⟩, ⟨5, 37⟩, ⟨34, 73⟩, ⟨12, 42⟩, ⟨41, 78⟩, ⟨19, 47⟩, ⟨23, 65⟩, ⟨1, 34⟩, ⟨30, 70⟩, ⟨8, 39⟩, ⟨37, 75⟩, ⟨15, 44⟩, ⟨26, 67⟩, ⟨4, 36⟩, ⟨33, 72⟩, ⟨11, 41⟩, ⟨40, 77⟩, ⟨18, 46⟩, ⟨43, 113⟩, ⟨22, 64⟩, ⟨29, 69⟩, ⟨7, 38⟩, ⟨36, 74⟩, ⟨14, 43⟩, ⟨21, 48⟩]⟩
theorem profile2048_checked : profile2048.check := by decide +kernel

noncomputable def selection0_2048 : Selection :=
  ⟨0, 3, 2, (1509/100), 460, 728, -1000⟩
theorem selection0_2048_checked : selection0_2048.check profile2048 := by decide +kernel

noncomputable def selection1_2048 : Selection :=
  ⟨1, -5, 6, (1479/100), 80, 500, -632⟩
theorem selection1_2048_checked : selection1_2048.check profile2048 := by decide +kernel

noncomputable def selection2_2048 : Selection :=
  ⟨2, -13, 10, (147/10), 32, 304, -264⟩
theorem selection2_2048_checked : selection2_2048.check profile2048 := by decide +kernel

noncomputable def profile2049 : ProfileCell :=
  ⟨(49/68), (31/43),
    [37, 36, 34, 33, 31, 30, 28, 27, 25, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨21, 49⟩, ⟨25, 67⟩, ⟨3, 36⟩, ⟨32, 72⟩, ⟨10, 41⟩, ⟨39, 77⟩, ⟨17, 46⟩, ⟨28, 69⟩, ⟨6, 38⟩, ⟨35, 74⟩, ⟨13, 43⟩, ⟨42, 79⟩, ⟨20, 48⟩, ⟨24, 66⟩, ⟨2, 35⟩, ⟨31, 71⟩, ⟨9, 40⟩, ⟨38, 76⟩, ⟨16, 45⟩, ⟨27, 68⟩, ⟨5, 37⟩, ⟨34, 73⟩, ⟨12, 42⟩, ⟨41, 78⟩, ⟨19, 47⟩, ⟨23, 65⟩, ⟨1, 34⟩, ⟨30, 70⟩, ⟨8, 39⟩, ⟨37, 75⟩, ⟨15, 44⟩, ⟨26, 67⟩, ⟨4, 36⟩, ⟨33, 72⟩, ⟨11, 41⟩, ⟨40, 77⟩, ⟨18, 46⟩, ⟨22, 64⟩, ⟨43, 113⟩, ⟨29, 69⟩, ⟨7, 38⟩, ⟨36, 74⟩, ⟨14, 43⟩]⟩
theorem profile2049_checked : profile2049.check := by decide +kernel

noncomputable def selection0_2049 : Selection :=
  ⟨0, 3, 2, (749/50), 987, 434, -592⟩
theorem selection0_2049_checked : selection0_2049.check profile2049 := by decide +kernel

noncomputable def selection1_2049 : Selection :=
  ⟨1, -5, 6, (369/25), 171, 206, -224⟩
theorem selection1_2049_checked : selection1_2049.check profile2049 := by decide +kernel

noncomputable def selection2_2049 : Selection :=
  ⟨2, -13, 10, (1471/100), 68, 10, 144⟩
theorem selection2_2049_checked : selection2_2049.check profile2049 := by decide +kernel

noncomputable def profile2050 : ProfileCell :=
  ⟨(31/43), (75/104),
    [37, 36, 34, 33, 31, 30, 28, 27, 25, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨21, 49⟩, ⟨3, 36⟩, ⟨25, 67⟩, ⟨10, 41⟩, ⟨32, 72⟩, ⟨17, 46⟩, ⟨39, 77⟩, ⟨6, 38⟩, ⟨28, 69⟩, ⟨13, 43⟩, ⟨35, 74⟩, ⟨20, 48⟩, ⟨42, 79⟩, ⟨2, 35⟩, ⟨24, 66⟩, ⟨9, 40⟩, ⟨31, 71⟩, ⟨16, 45⟩, ⟨38, 76⟩, ⟨5, 37⟩, ⟨27, 68⟩, ⟨12, 42⟩, ⟨34, 73⟩, ⟨19, 47⟩, ⟨41, 78⟩, ⟨1, 34⟩, ⟨23, 65⟩, ⟨8, 39⟩, ⟨30, 70⟩, ⟨15, 44⟩, ⟨37, 75⟩, ⟨4, 36⟩, ⟨26, 67⟩, ⟨11, 41⟩, ⟨33, 72⟩, ⟨18, 46⟩, ⟨40, 77⟩, ⟨22, 64⟩, ⟨43, 113⟩, ⟨7, 38⟩, ⟨29, 69⟩, ⟨14, 43⟩, ⟨36, 74⟩]⟩
theorem profile2050_checked : profile2050.check := by decide +kernel

noncomputable def selection0_2050 : Selection :=
  ⟨0, 3, 2, (372/25), 640, -186, 268⟩
theorem selection0_2050_checked : selection0_2050.check profile2050 := by decide +kernel

noncomputable def selection1_2050 : Selection :=
  ⟨1, -5, 6, (739/50), 112, -414, 636⟩
theorem selection1_2050_checked : selection1_2050.check profile2050 := by decide +kernel

noncomputable def selection2_2050 : Selection :=
  ⟨2, -13, 10, (59/4), 45, -610, 1004⟩
theorem selection2_2050_checked : selection2_2050.check profile2050 := by decide +kernel

noncomputable def profile2051 : ProfileCell :=
  ⟨(75/104), (44/61),
    [37, 36, 34, 33, 31, 30, 28, 27, 25, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨36, 75⟩, ⟨21, 49⟩, ⟨3, 36⟩, ⟨25, 67⟩, ⟨10, 41⟩, ⟨32, 72⟩, ⟨17, 46⟩, ⟨39, 77⟩, ⟨6, 38⟩, ⟨28, 69⟩, ⟨13, 43⟩, ⟨35, 74⟩, ⟨20, 48⟩, ⟨42, 79⟩, ⟨2, 35⟩, ⟨24, 66⟩, ⟨9, 40⟩, ⟨31, 71⟩, ⟨16, 45⟩, ⟨38, 76⟩, ⟨5, 37⟩, ⟨27, 68⟩, ⟨12, 42⟩, ⟨34, 73⟩, ⟨19, 47⟩, ⟨41, 78⟩, ⟨1, 34⟩, ⟨23, 65⟩, ⟨8, 39⟩, ⟨30, 70⟩, ⟨15, 44⟩, ⟨37, 75⟩, ⟨4, 36⟩, ⟨26, 67⟩, ⟨11, 41⟩, ⟨33, 72⟩, ⟨18, 46⟩, ⟨40, 77⟩, ⟨22, 64⟩, ⟨7, 38⟩, ⟨43, 113⟩, ⟨29, 69⟩, ⟨14, 43⟩]⟩
theorem profile2051_checked : profile2051.check := by decide +kernel

noncomputable def selection0_2051 : Selection :=
  ⟨0, 3, 2, (372/25), 451, 264, -356⟩
theorem selection0_2051_checked : selection0_2051.check profile2051 := by decide +kernel

noncomputable def selection1_2051 : Selection :=
  ⟨1, -5, 6, (739/50), 79, 36, 12⟩
theorem selection1_2051_checked : selection1_2051.check profile2051 := by decide +kernel

noncomputable def selection2_2051 : Selection :=
  ⟨2, -13, 10, (369/25), 32, -160, 380⟩
theorem selection2_2051_checked : selection2_2051.check profile2051 := by decide +kernel

noncomputable def profile2052 : ProfileCell :=
  ⟨(44/61), (57/79),
    [37, 36, 34, 33, 31, 30, 28, 27, 25, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨14, 44⟩, ⟨36, 75⟩, ⟨21, 49⟩, ⟨3, 36⟩, ⟨25, 67⟩, ⟨10, 41⟩, ⟨32, 72⟩, ⟨17, 46⟩, ⟨39, 77⟩, ⟨6, 38⟩, ⟨28, 69⟩, ⟨13, 43⟩, ⟨35, 74⟩, ⟨20, 48⟩, ⟨2, 35⟩, ⟨42, 79⟩, ⟨24, 66⟩, ⟨9, 40⟩, ⟨31, 71⟩, ⟨16, 45⟩, ⟨38, 76⟩, ⟨5, 37⟩, ⟨27, 68⟩, ⟨12, 42⟩, ⟨34, 73⟩, ⟨19, 47⟩, ⟨1, 34⟩, ⟨41, 78⟩, ⟨23, 65⟩, ⟨8, 39⟩, ⟨30, 70⟩, ⟨15, 44⟩, ⟨37, 75⟩, ⟨4, 36⟩, ⟨26, 67⟩, ⟨11, 41⟩, ⟨33, 72⟩, ⟨18, 46⟩, ⟨40, 77⟩, ⟨22, 64⟩, ⟨7, 38⟩, ⟨29, 69⟩, ⟨43, 113⟩]⟩
theorem profile2052_checked : profile2052.check := by decide +kernel

noncomputable def selection0_2052 : Selection :=
  ⟨0, 3, 2, (297/20), 593, 0, 10⟩
theorem selection0_2052_checked : selection0_2052.check profile2052 := by decide +kernel

noncomputable def selection1_2052 : Selection :=
  ⟨1, -5, 6, (74/5), 104, -228, 378⟩
theorem selection1_2052_checked : selection1_2052.check profile2052 := by decide +kernel

noncomputable def selection2_2052 : Selection :=
  ⟨2, -13, 10, (1479/100), 42, -424, 746⟩
theorem selection2_2052_checked : selection2_2052.check profile2052 := by decide +kernel

noncomputable def profile2053 : ProfileCell :=
  ⟨(57/79), (70/97),
    [37, 36, 34, 33, 31, 30, 28, 27, 25, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨43, 114⟩, ⟨14, 44⟩, ⟨36, 75⟩, ⟨21, 49⟩, ⟨3, 36⟩, ⟨25, 67⟩, ⟨10, 41⟩, ⟨32, 72⟩, ⟨17, 46⟩, ⟨39, 77⟩, ⟨6, 38⟩, ⟨28, 69⟩, ⟨13, 43⟩, ⟨35, 74⟩, ⟨20, 48⟩, ⟨2, 35⟩, ⟨42, 79⟩, ⟨24, 66⟩, ⟨9, 40⟩, ⟨31, 71⟩, ⟨16, 45⟩, ⟨38, 76⟩, ⟨5, 37⟩, ⟨27, 68⟩, ⟨12, 42⟩, ⟨34, 73⟩, ⟨19, 47⟩, ⟨1, 34⟩, ⟨41, 78⟩, ⟨23, 65⟩, ⟨8, 39⟩, ⟨30, 70⟩, ⟨15, 44⟩, ⟨37, 75⟩, ⟨4, 36⟩, ⟨26, 67⟩, ⟨11, 41⟩, ⟨33, 72⟩, ⟨18, 46⟩, ⟨40, 77⟩, ⟨22, 64⟩, ⟨7, 38⟩, ⟨29, 69⟩]⟩
theorem profile2053_checked : profile2053.check := by decide +kernel

noncomputable def selection0_2053 : Selection :=
  ⟨0, 3, 2, (751/50), 377, -1368, 1906⟩
theorem selection0_2053_checked : selection0_2053.check profile2053 := by decide +kernel

noncomputable def selection1_2053 : Selection :=
  ⟨1, -5, 6, (1489/100), 66, -1596, 2274⟩
theorem selection1_2053_checked : selection1_2053.check profile2053 := by decide +kernel

noncomputable def selection2_2053 : Selection :=
  ⟨2, -13, 10, (297/20), 27, -1792, 2642⟩
theorem selection2_2053_checked : selection2_2053.check profile2053 := by decide +kernel

noncomputable def profile2054 : ProfileCell :=
  ⟨(70/97), (13/18),
    [37, 36, 34, 33, 31, 30, 28, 27, 25, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨29, 70⟩, ⟨14, 44⟩, ⟨43, 114⟩, ⟨36, 75⟩, ⟨21, 49⟩, ⟨3, 36⟩, ⟨25, 67⟩, ⟨10, 41⟩, ⟨32, 72⟩, ⟨17, 46⟩, ⟨39, 77⟩, ⟨6, 38⟩, ⟨28, 69⟩, ⟨13, 43⟩, ⟨35, 74⟩, ⟨20, 48⟩, ⟨2, 35⟩, ⟨42, 79⟩, ⟨24, 66⟩, ⟨9, 40⟩, ⟨31, 71⟩, ⟨16, 45⟩, ⟨38, 76⟩, ⟨5, 37⟩, ⟨27, 68⟩, ⟨12, 42⟩, ⟨34, 73⟩, ⟨19, 47⟩, ⟨1, 34⟩, ⟨41, 78⟩, ⟨23, 65⟩, ⟨8, 39⟩, ⟨30, 70⟩, ⟨15, 44⟩, ⟨37, 75⟩, ⟨4, 36⟩, ⟨26, 67⟩, ⟨11, 41⟩, ⟨33, 72⟩, ⟨18, 46⟩, ⟨40, 77⟩, ⟨22, 64⟩, ⟨7, 38⟩]⟩
theorem profile2054_checked : profile2054.check := by decide +kernel

noncomputable def selection0_2054 : Selection :=
  ⟨0, 2, 2, (777/50), 1708, -883, 1238⟩
theorem selection0_2054_checked : selection0_2054.check profile2054 := by decide +kernel

noncomputable def selection1_2054 : Selection :=
  ⟨1, -6, 6, (1517/100), 294, -1107, 1606⟩
theorem selection1_2054_checked : selection1_2054.check profile2054 := by decide +kernel

noncomputable def selection2_2054 : Selection :=
  ⟨2, -14, 10, (1507/100), 117, -1299, 1974⟩
theorem selection2_2054_checked : selection2_2054.check profile2054 := by decide +kernel

noncomputable def profile2055 : ProfileCell :=
  ⟨(13/18), (73/101),
    [37, 36, 34, 33, 31, 30, 28, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨7, 39⟩, ⟨22, 65⟩, ⟨40, 78⟩, ⟨14, 44⟩, ⟨29, 70⟩, ⟨3, 36⟩, ⟨21, 49⟩, ⟨36, 75⟩, ⟨43, 114⟩, ⟨10, 41⟩, ⟨25, 67⟩, ⟨17, 46⟩, ⟨32, 72⟩, ⟨6, 38⟩, ⟨39, 77⟩, ⟨13, 43⟩, ⟨28, 69⟩, ⟨2, 35⟩, ⟨20, 48⟩, ⟨35, 74⟩, ⟨9, 40⟩, ⟨24, 66⟩, ⟨42, 79⟩, ⟨16, 45⟩, ⟨31, 71⟩, ⟨5, 37⟩, ⟨38, 76⟩, ⟨12, 42⟩, ⟨27, 68⟩, ⟨1, 34⟩, ⟨19, 47⟩, ⟨34, 73⟩, ⟨8, 39⟩, ⟨23, 65⟩, ⟨41, 78⟩, ⟨15, 44⟩, ⟨30, 70⟩, ⟨4, 36⟩, ⟨37, 75⟩, ⟨11, 41⟩, ⟨26, 67⟩, ⟨18, 46⟩, ⟨33, 72⟩]⟩
theorem profile2055_checked : profile2055.check := by decide +kernel

noncomputable def selection0_2055 : Selection :=
  ⟨0, 1, 2, (1403/100), 1479, -922, 1292⟩
theorem selection0_2055_checked : selection0_2055.check profile2055 := by decide +kernel

noncomputable def selection1_2055 : Selection :=
  ⟨1, -7, 6, (1343/100), 249, -1146, 1660⟩
theorem selection1_2055_checked : selection1_2055.check profile2055 := by decide +kernel

noncomputable def selection2_2055 : Selection :=
  ⟨2, -15, 10, (1327/100), 99, -1338, 2028⟩
theorem selection2_2055_checked : selection2_2055.check profile2055 := by decide +kernel

noncomputable def profile2056 : ProfileCell :=
  ⟨(73/101), (47/65),
    [37, 36, 34, 33, 31, 30, 28, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨33, 73⟩, ⟨7, 39⟩, ⟨22, 65⟩, ⟨40, 78⟩, ⟨14, 44⟩, ⟨29, 70⟩, ⟨3, 36⟩, ⟨21, 49⟩, ⟨36, 75⟩, ⟨10, 41⟩, ⟨43, 114⟩, ⟨25, 67⟩, ⟨17, 46⟩, ⟨32, 72⟩, ⟨6, 38⟩, ⟨39, 77⟩, ⟨13, 43⟩, ⟨28, 69⟩, ⟨2, 35⟩, ⟨20, 48⟩, ⟨35, 74⟩, ⟨9, 40⟩, ⟨24, 66⟩, ⟨42, 79⟩, ⟨16, 45⟩, ⟨31, 71⟩, ⟨5, 37⟩, ⟨38, 76⟩, ⟨12, 42⟩, ⟨27, 68⟩, ⟨1, 34⟩, ⟨19, 47⟩, ⟨34, 73⟩, ⟨8, 39⟩, ⟨23, 65⟩, ⟨41, 78⟩, ⟨15, 44⟩, ⟨30, 70⟩, ⟨4, 36⟩, ⟨37, 75⟩, ⟨11, 41⟩, ⟨26, 67⟩, ⟨18, 46⟩]⟩
theorem profile2056_checked : profile2056.check := by decide +kernel

noncomputable def selection0_2056 : Selection :=
  ⟨0, 2, 2, (1409/100), 822, -380, 538⟩
theorem selection0_2056_checked : selection0_2056.check profile2056 := by decide +kernel

noncomputable def selection1_2056 : Selection :=
  ⟨1, -6, 6, (1349/100), 139, -608, 906⟩
theorem selection1_2056_checked : selection1_2056.check profile2056 := by decide +kernel

noncomputable def selection2_2056 : Selection :=
  ⟨2, -14, 10, (1333/100), 55, -804, 1274⟩
theorem selection2_2056_checked : selection2_2056.check profile2056 := by decide +kernel

noncomputable def profile2057 : ProfileCell :=
  ⟨(47/65), (34/47),
    [37, 36, 34, 33, 31, 30, 28, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨18, 47⟩, ⟨33, 73⟩, ⟨7, 39⟩, ⟨22, 65⟩, ⟨40, 78⟩, ⟨14, 44⟩, ⟨29, 70⟩, ⟨3, 36⟩, ⟨21, 49⟩, ⟨36, 75⟩, ⟨10, 41⟩, ⟨25, 67⟩, ⟨43, 114⟩, ⟨17, 46⟩, ⟨32, 72⟩, ⟨6, 38⟩, ⟨39, 77⟩, ⟨13, 43⟩, ⟨28, 69⟩, ⟨2, 35⟩, ⟨20, 48⟩, ⟨35, 74⟩, ⟨9, 40⟩, ⟨24, 66⟩, ⟨42, 79⟩, ⟨16, 45⟩, ⟨31, 71⟩, ⟨5, 37⟩, ⟨38, 76⟩, ⟨12, 42⟩, ⟨27, 68⟩, ⟨1, 34⟩, ⟨19, 47⟩, ⟨34, 73⟩, ⟨8, 39⟩, ⟨23, 65⟩, ⟨41, 78⟩, ⟨15, 44⟩, ⟨30, 70⟩, ⟨4, 36⟩, ⟨37, 75⟩, ⟨11, 41⟩, ⟨26, 67⟩]⟩
theorem profile2057_checked : profile2057.check := by decide +kernel

noncomputable def selection0_2057 : Selection :=
  ⟨0, 2, 2, (1427/100), 893, -568, 798⟩
theorem selection0_2057_checked : selection0_2057.check profile2057 := by decide +kernel

noncomputable def selection1_2057 : Selection :=
  ⟨1, -6, 6, (68/5), 150, -796, 1166⟩
theorem selection1_2057_checked : selection1_2057.check profile2057 := by decide +kernel

noncomputable def selection2_2057 : Selection :=
  ⟨2, -14, 10, (671/50), 60, -992, 1534⟩
theorem selection2_2057_checked : selection2_2057.check profile2057 := by decide +kernel

noncomputable def profile2058 : ProfileCell :=
  ⟨(34/47), (76/105),
    [37, 36, 34, 33, 31, 30, 28, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨26, 68⟩, ⟨18, 47⟩, ⟨7, 39⟩, ⟨33, 73⟩, ⟨22, 65⟩, ⟨14, 44⟩, ⟨40, 78⟩, ⟨3, 36⟩, ⟨29, 70⟩, ⟨21, 49⟩, ⟨10, 41⟩, ⟨36, 75⟩, ⟨25, 67⟩, ⟨17, 46⟩, ⟨43, 114⟩, ⟨6, 38⟩, ⟨32, 72⟩, ⟨13, 43⟩, ⟨39, 77⟩, ⟨2, 35⟩, ⟨28, 69⟩, ⟨20, 48⟩, ⟨9, 40⟩, ⟨35, 74⟩, ⟨24, 66⟩, ⟨16, 45⟩, ⟨42, 79⟩, ⟨5, 37⟩, ⟨31, 71⟩, ⟨12, 42⟩, ⟨38, 76⟩, ⟨1, 34⟩, ⟨27, 68⟩, ⟨19, 47⟩, ⟨8, 39⟩, ⟨34, 73⟩, ⟨23, 65⟩, ⟨15, 44⟩, ⟨41, 78⟩, ⟨4, 36⟩, ⟨30, 70⟩, ⟨11, 41⟩, ⟨37, 75⟩]⟩
theorem profile2058_checked : profile2058.check := by decide +kernel

noncomputable def selection0_2058 : Selection :=
  ⟨0, 2, 2, (727/50), 1126, -704, 986⟩
theorem selection0_2058_checked : selection0_2058.check profile2058 := by decide +kernel

noncomputable def selection1_2058 : Selection :=
  ⟨1, -6, 6, (344/25), 188, -932, 1354⟩
theorem selection1_2058_checked : selection1_2058.check profile2058 := by decide +kernel

noncomputable def selection2_2058 : Selection :=
  ⟨2, -14, 10, (271/20), 75, -1128, 1722⟩
theorem selection2_2058_checked : selection2_2058.check profile2058 := by decide +kernel

noncomputable def profile2059 : ProfileCell :=
  ⟨(76/105), (21/29),
    [37, 36, 34, 33, 31, 30, 28, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨37, 76⟩, ⟨26, 68⟩, ⟨18, 47⟩, ⟨7, 39⟩, ⟨33, 73⟩, ⟨22, 65⟩, ⟨14, 44⟩, ⟨40, 78⟩, ⟨3, 36⟩, ⟨29, 70⟩, ⟨21, 49⟩, ⟨10, 41⟩, ⟨36, 75⟩, ⟨25, 67⟩, ⟨17, 46⟩, ⟨6, 38⟩, ⟨43, 114⟩, ⟨32, 72⟩, ⟨13, 43⟩, ⟨39, 77⟩, ⟨2, 35⟩, ⟨28, 69⟩, ⟨20, 48⟩, ⟨9, 40⟩, ⟨35, 74⟩, ⟨24, 66⟩, ⟨16, 45⟩, ⟨42, 79⟩, ⟨5, 37⟩, ⟨31, 71⟩, ⟨12, 42⟩, ⟨38, 76⟩, ⟨1, 34⟩, ⟨27, 68⟩, ⟨19, 47⟩, ⟨8, 39⟩, ⟨34, 73⟩, ⟨23, 65⟩, ⟨15, 44⟩, ⟨41, 78⟩, ⟨4, 36⟩, ⟨30, 70⟩, ⟨11, 41⟩]⟩
theorem profile2059_checked : profile2059.check := by decide +kernel

noncomputable def selection0_2059 : Selection :=
  ⟨0, 2, 2, (731/50), 917, -248, 356⟩
theorem selection0_2059_checked : selection0_2059.check profile2059 := by decide +kernel

noncomputable def selection1_2059 : Selection :=
  ⟨1, -6, 6, (691/50), 153, -476, 724⟩
theorem selection1_2059_checked : selection1_2059.check profile2059 := by decide +kernel

noncomputable def selection2_2059 : Selection :=
  ⟨2, -14, 10, (1361/100), 61, -672, 1092⟩
theorem selection2_2059_checked : selection2_2059.check profile2059 := by decide +kernel

noncomputable def profile2060 : ProfileCell :=
  ⟨(21/29), (71/98),
    [37, 36, 34, 33, 31, 30, 28, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨11, 42⟩, ⟨37, 76⟩, ⟨18, 47⟩, ⟨26, 68⟩, ⟨7, 39⟩, ⟨33, 73⟩, ⟨14, 44⟩, ⟨22, 65⟩, ⟨3, 36⟩, ⟨40, 78⟩, ⟨21, 49⟩, ⟨29, 70⟩, ⟨10, 41⟩, ⟨36, 75⟩, ⟨17, 46⟩, ⟨25, 67⟩, ⟨6, 38⟩, ⟨32, 72⟩, ⟨43, 114⟩, ⟨13, 43⟩, ⟨2, 35⟩, ⟨39, 77⟩, ⟨20, 48⟩, ⟨28, 69⟩, ⟨9, 40⟩, ⟨35, 74⟩, ⟨16, 45⟩, ⟨24, 66⟩, ⟨5, 37⟩, ⟨42, 79⟩, ⟨31, 71⟩, ⟨12, 42⟩, ⟨1, 34⟩, ⟨38, 76⟩, ⟨19, 47⟩, ⟨27, 68⟩, ⟨8, 39⟩, ⟨34, 73⟩, ⟨15, 44⟩, ⟨23, 65⟩, ⟨4, 36⟩, ⟨41, 78⟩, ⟨30, 70⟩]⟩
theorem profile2060_checked : profile2060.check := by decide +kernel

noncomputable def selection0_2060 : Selection :=
  ⟨0, 2, 2, (1479/100), 992, -500, 704⟩
theorem selection0_2060_checked : selection0_2060.check profile2060 := by decide +kernel

noncomputable def selection1_2060 : Selection :=
  ⟨1, -6, 6, (1393/100), 165, -728, 1072⟩
theorem selection1_2060_checked : selection1_2060.check profile2060 := by decide +kernel

noncomputable def selection2_2060 : Selection :=
  ⟨2, -14, 10, (1371/100), 65, -924, 1440⟩
theorem selection2_2060_checked : selection2_2060.check profile2060 := by decide +kernel

noncomputable def profile2061 : ProfileCell :=
  ⟨(71/98), (79/109),
    [37, 36, 34, 33, 31, 30, 28, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨30, 71⟩, ⟨11, 42⟩, ⟨37, 76⟩, ⟨18, 47⟩, ⟨26, 68⟩, ⟨7, 39⟩, ⟨33, 73⟩, ⟨14, 44⟩, ⟨22, 65⟩, ⟨3, 36⟩, ⟨40, 78⟩, ⟨21, 49⟩, ⟨29, 70⟩, ⟨10, 41⟩, ⟨36, 75⟩, ⟨17, 46⟩, ⟨25, 67⟩, ⟨6, 38⟩, ⟨32, 72⟩, ⟨13, 43⟩, ⟨43, 114⟩, ⟨2, 35⟩, ⟨39, 77⟩, ⟨20, 48⟩, ⟨28, 69⟩, ⟨9, 40⟩, ⟨35, 74⟩, ⟨16, 45⟩, ⟨24, 66⟩, ⟨5, 37⟩, ⟨42, 79⟩, ⟨31, 71⟩, ⟨12, 42⟩, ⟨1, 34⟩, ⟨38, 76⟩, ⟨19, 47⟩, ⟨27, 68⟩, ⟨8, 39⟩, ⟨34, 73⟩, ⟨15, 44⟩, ⟨23, 65⟩, ⟨4, 36⟩, ⟨41, 78⟩]⟩
theorem profile2061_checked : profile2061.check := by decide +kernel

noncomputable def selection0_2061 : Selection :=
  ⟨0, 2, 2, (741/50), 793, -74, 116⟩
theorem selection0_2061_checked : selection0_2061.check profile2061 := by decide +kernel

noncomputable def selection1_2061 : Selection :=
  ⟨1, -6, 6, (1397/100), 132, -302, 484⟩
theorem selection1_2061_checked : selection1_2061.check profile2061 := by decide +kernel

noncomputable def selection2_2061 : Selection :=
  ⟨2, -14, 10, (55/4), 53, -498, 852⟩
theorem selection2_2061_checked : selection2_2061.check profile2061 := by decide +kernel

noncomputable def profile2062 : ProfileCell :=
  ⟨(79/109), (29/40),
    [37, 36, 34, 33, 31, 30, 28, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨41, 79⟩, ⟨30, 71⟩, ⟨11, 42⟩, ⟨37, 76⟩, ⟨18, 47⟩, ⟨26, 68⟩, ⟨7, 39⟩, ⟨33, 73⟩, ⟨14, 44⟩, ⟨22, 65⟩, ⟨3, 36⟩, ⟨40, 78⟩, ⟨21, 49⟩, ⟨29, 70⟩, ⟨10, 41⟩, ⟨36, 75⟩, ⟨17, 46⟩, ⟨25, 67⟩, ⟨6, 38⟩, ⟨32, 72⟩, ⟨13, 43⟩, ⟨2, 35⟩, ⟨43, 114⟩, ⟨39, 77⟩, ⟨20, 48⟩, ⟨28, 69⟩, ⟨9, 40⟩, ⟨35, 74⟩, ⟨16, 45⟩, ⟨24, 66⟩, ⟨5, 37⟩, ⟨42, 79⟩, ⟨31, 71⟩, ⟨12, 42⟩, ⟨1, 34⟩, ⟨38, 76⟩, ⟨19, 47⟩, ⟨27, 68⟩, ⟨8, 39⟩, ⟨34, 73⟩, ⟨15, 44⟩, ⟨23, 65⟩, ⟨4, 36⟩]⟩
theorem profile2062_checked : profile2062.check := by decide +kernel

noncomputable def selection0_2062 : Selection :=
  ⟨0, 2, 2, (741/50), 647, 242, -320⟩
theorem selection0_2062_checked : selection0_2062.check profile2062 := by decide +kernel

noncomputable def selection1_2062 : Selection :=
  ⟨1, -6, 6, (699/50), 108, 14, 48⟩
theorem selection1_2062_checked : selection1_2062.check profile2062 := by decide +kernel

noncomputable def selection2_2062 : Selection :=
  ⟨2, -14, 10, (1377/100), 43, -182, 416⟩
theorem selection2_2062_checked : selection2_2062.check profile2062 := by decide +kernel

noncomputable def profile2063 : ProfileCell :=
  ⟨(29/40), (66/91),
    [37, 36, 34, 33, 31, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨41, 79⟩, ⟨11, 42⟩, ⟨30, 71⟩, ⟨18, 47⟩, ⟨37, 76⟩, ⟨7, 39⟩, ⟨26, 68⟩, ⟨14, 44⟩, ⟨33, 73⟩, ⟨3, 36⟩, ⟨22, 65⟩, ⟨21, 49⟩, ⟨40, 78⟩, ⟨10, 41⟩, ⟨29, 70⟩, ⟨17, 46⟩, ⟨36, 75⟩, ⟨6, 38⟩, ⟨25, 67⟩, ⟨13, 43⟩, ⟨32, 72⟩, ⟨2, 35⟩, ⟨43, 114⟩, ⟨20, 48⟩, ⟨39, 77⟩, ⟨9, 40⟩, ⟨28, 69⟩, ⟨16, 45⟩, ⟨35, 74⟩, ⟨5, 37⟩, ⟨24, 66⟩, ⟨42, 79⟩, ⟨12, 42⟩, ⟨31, 71⟩, ⟨1, 34⟩, ⟨19, 47⟩, ⟨38, 76⟩, ⟨8, 39⟩, ⟨27, 68⟩, ⟨15, 44⟩, ⟨34, 73⟩, ⟨4, 36⟩, ⟨23, 65⟩]⟩
theorem profile2063_checked : profile2063.check := by decide +kernel

noncomputable def selection0_2063 : Selection :=
  ⟨0, 1, 2, (321/25), 671, -280, 400⟩
theorem selection0_2063_checked : selection0_2063.check profile2063 := by decide +kernel

noncomputable def selection1_2063 : Selection :=
  ⟨1, -7, 6, (301/25), 112, -508, 768⟩
theorem selection1_2063_checked : selection1_2063.check profile2063 := by decide +kernel

noncomputable def selection2_2063 : Selection :=
  ⟨2, -15, 10, (591/50), 44, -704, 1136⟩
theorem selection2_2063_checked : selection2_2063.check profile2063 := by decide +kernel

noncomputable def profile2064 : ProfileCell :=
  ⟨(66/91), (37/51),
    [37, 36, 34, 33, 31, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 36, 37],
    [⟨23, 66⟩, ⟨41, 79⟩, ⟨11, 42⟩, ⟨30, 71⟩, ⟨18, 47⟩, ⟨37, 76⟩, ⟨7, 39⟩, ⟨26, 68⟩, ⟨14, 44⟩, ⟨33, 73⟩, ⟨3, 36⟩, ⟨22, 65⟩, ⟨21, 49⟩, ⟨40, 78⟩, ⟨10, 41⟩, ⟨29, 70⟩, ⟨17, 46⟩, ⟨36, 75⟩, ⟨6, 38⟩, ⟨25, 67⟩, ⟨13, 43⟩, ⟨32, 72⟩, ⟨2, 35⟩, ⟨20, 48⟩, ⟨43, 114⟩, ⟨39, 77⟩, ⟨9, 40⟩, ⟨28, 69⟩, ⟨16, 45⟩, ⟨35, 74⟩, ⟨5, 37⟩, ⟨24, 66⟩, ⟨42, 79⟩, ⟨12, 42⟩, ⟨31, 71⟩, ⟨1, 34⟩, ⟨19, 47⟩, ⟨38, 76⟩, ⟨8, 39⟩, ⟨27, 68⟩, ⟨15, 44⟩, ⟨34, 73⟩, ⟨4, 36⟩]⟩
theorem profile2064_checked : profile2064.check := by decide +kernel

noncomputable def selection0_2064 : Selection :=
  ⟨0, 1, 2, (321/25), 526, 116, -146⟩
theorem selection0_2064_checked : selection0_2064.check profile2064 := by decide +kernel

noncomputable def selection1_2064 : Selection :=
  ⟨1, -7, 6, (241/20), 88, -112, 222⟩
theorem selection1_2064_checked : selection1_2064.check profile2064 := by decide +kernel

noncomputable def selection2_2064 : Selection :=
  ⟨2, -15, 10, (237/20), 35, -308, 590⟩
theorem selection2_2064_checked : selection2_2064.check profile2064 := by decide +kernel

noncomputable def profile2065 : ProfileCell :=
  ⟨(37/51), (45/62),
    [37, 36, 34, 33, 31, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 37, 37],
    [⟨4, 37⟩, ⟨34, 74⟩, ⟨23, 66⟩, ⟨11, 42⟩, ⟨41, 79⟩, ⟨30, 71⟩, ⟨18, 47⟩, ⟨7, 39⟩, ⟨37, 76⟩, ⟨26, 68⟩, ⟨14, 44⟩, ⟨3, 36⟩, ⟨33, 73⟩, ⟨22, 65⟩, ⟨21, 49⟩, ⟨10, 41⟩, ⟨40, 78⟩, ⟨29, 70⟩, ⟨17, 46⟩, ⟨6, 38⟩, ⟨36, 75⟩, ⟨25, 67⟩, ⟨13, 43⟩, ⟨2, 35⟩, ⟨32, 72⟩, ⟨20, 48⟩, ⟨9, 40⟩, ⟨39, 77⟩, ⟨43, 114⟩, ⟨28, 69⟩, ⟨16, 45⟩, ⟨5, 37⟩, ⟨35, 74⟩, ⟨24, 66⟩, ⟨12, 42⟩, ⟨42, 79⟩, ⟨1, 34⟩, ⟨31, 71⟩, ⟨19, 47⟩, ⟨8, 39⟩, ⟨38, 76⟩, ⟨27, 68⟩, ⟨15, 44⟩]⟩
theorem profile2065_checked : profile2065.check := by decide +kernel

noncomputable def selection0_2065 : Selection :=
  ⟨0, 3, 2, (841/50), 1011, 190, -248⟩
theorem selection0_2065_checked : selection0_2065.check profile2065 := by decide +kernel

noncomputable def selection1_2065 : Selection :=
  ⟨1, -5, 6, (803/50), 171, -38, 120⟩
theorem selection1_2065_checked : selection1_2065.check profile2065 := by decide +kernel

noncomputable def selection2_2065 : Selection :=
  ⟨2, -13, 10, (1587/100), 68, -234, 488⟩
theorem selection2_2065_checked : selection2_2065.check profile2065 := by decide +kernel

noncomputable def profile2066 : ProfileCell :=
  ⟨(45/62), (69/95),
    [37, 36, 34, 33, 31, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 37, 37],
    [⟨15, 45⟩, ⟨4, 37⟩, ⟨34, 74⟩, ⟨23, 66⟩, ⟨11, 42⟩, ⟨41, 79⟩, ⟨30, 71⟩, ⟨18, 47⟩, ⟨7, 39⟩, ⟨37, 76⟩, ⟨26, 68⟩, ⟨14, 44⟩, ⟨3, 36⟩, ⟨33, 73⟩, ⟨22, 65⟩, ⟨21, 49⟩, ⟨10, 41⟩, ⟨40, 78⟩, ⟨29, 70⟩, ⟨17, 46⟩, ⟨6, 38⟩, ⟨36, 75⟩, ⟨25, 67⟩, ⟨13, 43⟩, ⟨2, 35⟩, ⟨32, 72⟩, ⟨20, 48⟩, ⟨9, 40⟩, ⟨39, 77⟩, ⟨28, 69⟩, ⟨43, 114⟩, ⟨16, 45⟩, ⟨5, 37⟩, ⟨35, 74⟩, ⟨24, 66⟩, ⟨12, 42⟩, ⟨1, 34⟩, ⟨42, 79⟩, ⟨31, 71⟩, ⟨19, 47⟩, ⟨8, 39⟩, ⟨38, 76⟩, ⟨27, 68⟩]⟩
theorem profile2066_checked : profile2066.check := by decide +kernel

noncomputable def selection0_2066 : Selection :=
  ⟨0, 3, 2, (84/5), 1624, -80, 124⟩
theorem selection0_2066_checked : selection0_2066.check profile2066 := by decide +kernel

noncomputable def selection1_2066 : Selection :=
  ⟨1, -5, 6, (1613/100), 276, -308, 492⟩
theorem selection1_2066_checked : selection1_2066.check profile2066 := by decide +kernel

noncomputable def selection2_2066 : Selection :=
  ⟨2, -13, 10, (319/20), 110, -504, 860⟩
theorem selection2_2066_checked : selection2_2066.check profile2066 := by decide +kernel

noncomputable def profile2067 : ProfileCell :=
  ⟨(69/95), (77/106),
    [37, 36, 34, 33, 31, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 37, 37],
    [⟨27, 69⟩, ⟨15, 45⟩, ⟨4, 37⟩, ⟨34, 74⟩, ⟨23, 66⟩, ⟨11, 42⟩, ⟨41, 79⟩, ⟨30, 71⟩, ⟨18, 47⟩, ⟨7, 39⟩, ⟨37, 76⟩, ⟨26, 68⟩, ⟨14, 44⟩, ⟨3, 36⟩, ⟨33, 73⟩, ⟨22, 65⟩, ⟨21, 49⟩, ⟨10, 41⟩, ⟨40, 78⟩, ⟨29, 70⟩, ⟨17, 46⟩, ⟨6, 38⟩, ⟨36, 75⟩, ⟨25, 67⟩, ⟨13, 43⟩, ⟨2, 35⟩, ⟨32, 72⟩, ⟨20, 48⟩, ⟨9, 40⟩, ⟨39, 77⟩, ⟨28, 69⟩, ⟨16, 45⟩, ⟨43, 114⟩, ⟨5, 37⟩, ⟨35, 74⟩, ⟨24, 66⟩, ⟨12, 42⟩, ⟨1, 34⟩, ⟨42, 79⟩, ⟨31, 71⟩, ⟨19, 47⟩, ⟨8, 39⟩, ⟨38, 76⟩]⟩
theorem profile2067_checked : profile2067.check := by decide +kernel

noncomputable def selection0_2067 : Selection :=
  ⟨0, 3, 2, (84/5), 317, 334, -446⟩
theorem selection0_2067_checked : selection0_2067.check profile2067 := by decide +kernel

noncomputable def selection1_2067 : Selection :=
  ⟨1, -5, 6, (1613/100), 54, 106, -78⟩
theorem selection1_2067_checked : selection1_2067.check profile2067 := by decide +kernel

noncomputable def selection2_2067 : Selection :=
  ⟨2, -13, 10, (399/25), 22, -90, 290⟩
theorem selection2_2067_checked : selection2_2067.check profile2067 := by decide +kernel

noncomputable def profile2068 : ProfileCell :=
  ⟨(77/106), (8/11),
    [37, 36, 34, 33, 31, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 15], [34, 35, 36, 37, 37],
    [⟨38, 77⟩, ⟨27, 69⟩, ⟨15, 45⟩, ⟨4, 37⟩, ⟨34, 74⟩, ⟨23, 66⟩, ⟨11, 42⟩, ⟨41, 79⟩, ⟨30, 71⟩, ⟨18, 47⟩, ⟨7, 39⟩, ⟨37, 76⟩, ⟨26, 68⟩, ⟨14, 44⟩, ⟨3, 36⟩, ⟨33, 73⟩, ⟨22, 65⟩, ⟨21, 49⟩, ⟨10, 41⟩, ⟨40, 78⟩, ⟨29, 70⟩, ⟨17, 46⟩, ⟨6, 38⟩, ⟨36, 75⟩, ⟨25, 67⟩, ⟨13, 43⟩, ⟨2, 35⟩, ⟨32, 72⟩, ⟨20, 48⟩, ⟨9, 40⟩, ⟨39, 77⟩, ⟨28, 69⟩, ⟨16, 45⟩, ⟨5, 37⟩, ⟨43, 114⟩, ⟨35, 74⟩, ⟨24, 66⟩, ⟨12, 42⟩, ⟨1, 34⟩, ⟨42, 79⟩, ⟨31, 71⟩, ⟨19, 47⟩, ⟨8, 39⟩]⟩
theorem profile2068_checked : profile2068.check := by decide +kernel

noncomputable def selection0_2068 : Selection :=
  ⟨0, 3, 2, (1677/100), 2723, 642, -870⟩
theorem selection0_2068_checked : selection0_2068.check profile2068 := by decide +kernel

noncomputable def selection1_2068 : Selection :=
  ⟨1, -5, 6, (1613/100), 464, 414, -502⟩
theorem selection1_2068_checked : selection1_2068.check profile2068 := by decide +kernel

noncomputable def selection2_2068 : Selection :=
  ⟨2, -13, 10, (399/25), 185, 218, -134⟩
theorem selection2_2068_checked : selection2_2068.check profile2068 := by decide +kernel

noncomputable def profile2069 : ProfileCell :=
  ⟨(8/11), (115/158),
    [37, 36, 34, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 16], [34, 35, 36, 37, 37],
    [⟨8, 40⟩, ⟨19, 48⟩, ⟨31, 72⟩, ⟨42, 80⟩, ⟨4, 37⟩, ⟨15, 45⟩, ⟨27, 69⟩, ⟨38, 77⟩, ⟨11, 42⟩, ⟨23, 66⟩, ⟨34, 74⟩, ⟨7, 39⟩, ⟨18, 47⟩, ⟨30, 71⟩, ⟨41, 79⟩, ⟨3, 36⟩, ⟨14, 44⟩, ⟨26, 68⟩, ⟨37, 76⟩, ⟨10, 41⟩, ⟨21, 49⟩, ⟨22, 65⟩, ⟨33, 73⟩, ⟨6, 38⟩, ⟨17, 46⟩, ⟨29, 70⟩, ⟨40, 78⟩, ⟨2, 35⟩, ⟨13, 43⟩, ⟨25, 67⟩, ⟨36, 75⟩, ⟨9, 40⟩, ⟨20, 48⟩, ⟨32, 72⟩, ⟨5, 37⟩, ⟨16, 45⟩, ⟨28, 69⟩, ⟨39, 77⟩, ⟨1, 34⟩, ⟨12, 42⟩, ⟨24, 66⟩, ⟨35, 74⟩, ⟨43, 114⟩]⟩
theorem profile2069_checked : profile2069.check := by decide +kernel

noncomputable def selection0_2069 : Selection :=
  ⟨0, 1, 2, (49/4), 1332, 402, -540⟩
theorem selection0_2069_checked : selection0_2069.check profile2069 := by decide +kernel

noncomputable def selection1_2069 : Selection :=
  ⟨1, -7, 6, 12, 232, 174, -172⟩
theorem selection1_2069_checked : selection1_2069.check profile2069 := by decide +kernel

noncomputable def selection2_2069 : Selection :=
  ⟨2, -15, 10, (299/25), 93, -22, 196⟩
theorem selection2_2069_checked : selection2_2069.check profile2069 := by decide +kernel

noncomputable def profile2070 : ProfileCell :=
  ⟨(115/158), (75/103),
    [37, 36, 34, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 16], [34, 35, 36, 37, 37],
    [⟨43, 115⟩, ⟨8, 40⟩, ⟨19, 48⟩, ⟨31, 72⟩, ⟨42, 80⟩, ⟨4, 37⟩, ⟨15, 45⟩, ⟨27, 69⟩, ⟨38, 77⟩, ⟨11, 42⟩, ⟨23, 66⟩, ⟨34, 74⟩, ⟨7, 39⟩, ⟨18, 47⟩, ⟨30, 71⟩, ⟨41, 79⟩, ⟨3, 36⟩, ⟨14, 44⟩, ⟨26, 68⟩, ⟨37, 76⟩, ⟨10, 41⟩, ⟨21, 49⟩, ⟨22, 65⟩, ⟨33, 73⟩, ⟨6, 38⟩, ⟨17, 46⟩, ⟨29, 70⟩, ⟨40, 78⟩, ⟨2, 35⟩, ⟨13, 43⟩, ⟨25, 67⟩, ⟨36, 75⟩, ⟨9, 40⟩, ⟨20, 48⟩, ⟨32, 72⟩, ⟨5, 37⟩, ⟨16, 45⟩, ⟨28, 69⟩, ⟨39, 77⟩, ⟨1, 34⟩, ⟨12, 42⟩, ⟨24, 66⟩, ⟨35, 74⟩]⟩
theorem profile2070_checked : profile2070.check := by decide +kernel

noncomputable def selection0_2070 : Selection :=
  ⟨0, 1, 2, (308/25), 715, -978, 1356⟩
theorem selection0_2070_checked : selection0_2070.check profile2070 := by decide +kernel

noncomputable def selection1_2070 : Selection :=
  ⟨1, -7, 6, (1213/100), 125, -1206, 1724⟩
theorem selection1_2070_checked : selection1_2070.check profile2070 := by decide +kernel

noncomputable def selection2_2070 : Selection :=
  ⟨2, -15, 10, (302/25), 50, -1402, 2092⟩
theorem selection2_2070_checked : selection2_2070.check profile2070 := by decide +kernel

noncomputable def profile2071 : ProfileCell :=
  ⟨(75/103), (67/92),
    [37, 36, 34, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 16], [34, 35, 36, 37, 37],
    [⟨35, 75⟩, ⟨8, 40⟩, ⟨43, 115⟩, ⟨19, 48⟩, ⟨31, 72⟩, ⟨42, 80⟩, ⟨4, 37⟩, ⟨15, 45⟩, ⟨27, 69⟩, ⟨38, 77⟩, ⟨11, 42⟩, ⟨23, 66⟩, ⟨34, 74⟩, ⟨7, 39⟩, ⟨18, 47⟩, ⟨30, 71⟩, ⟨41, 79⟩, ⟨3, 36⟩, ⟨14, 44⟩, ⟨26, 68⟩, ⟨37, 76⟩, ⟨10, 41⟩, ⟨21, 49⟩, ⟨22, 65⟩, ⟨33, 73⟩, ⟨6, 38⟩, ⟨17, 46⟩, ⟨29, 70⟩, ⟨40, 78⟩, ⟨2, 35⟩, ⟨13, 43⟩, ⟨25, 67⟩, ⟨36, 75⟩, ⟨9, 40⟩, ⟨20, 48⟩, ⟨32, 72⟩, ⟨5, 37⟩, ⟨16, 45⟩, ⟨28, 69⟩, ⟨39, 77⟩, ⟨1, 34⟩, ⟨12, 42⟩, ⟨24, 66⟩]⟩
theorem profile2071_checked : profile2071.check := by decide +kernel

noncomputable def selection0_2071 : Selection :=
  ⟨0, 1, 2, (1239/100), 247, -678, 944⟩
theorem selection0_2071_checked : selection0_2071.check profile2071 := by decide +kernel

noncomputable def selection1_2071 : Selection :=
  ⟨1, -7, 6, (1217/100), 44, -906, 1312⟩
theorem selection1_2071_checked : selection1_2071.check profile2071 := by decide +kernel

noncomputable def selection2_2071 : Selection :=
  ⟨2, -15, 10, (1211/100), 18, -1102, 1680⟩
theorem selection2_2071_checked : selection2_2071.check profile2071 := by decide +kernel

noncomputable def profile2072 : ProfileCell :=
  ⟨(67/92), (43/59),
    [37, 36, 34, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 16], [34, 35, 36, 37, 37],
    [⟨24, 67⟩, ⟨35, 75⟩, ⟨8, 40⟩, ⟨19, 48⟩, ⟨43, 115⟩, ⟨31, 72⟩, ⟨42, 80⟩, ⟨4, 37⟩, ⟨15, 45⟩, ⟨27, 69⟩, ⟨38, 77⟩, ⟨11, 42⟩, ⟨23, 66⟩, ⟨34, 74⟩, ⟨7, 39⟩, ⟨18, 47⟩, ⟨30, 71⟩, ⟨41, 79⟩, ⟨3, 36⟩, ⟨14, 44⟩, ⟨26, 68⟩, ⟨37, 76⟩, ⟨10, 41⟩, ⟨21, 49⟩, ⟨22, 65⟩, ⟨33, 73⟩, ⟨6, 38⟩, ⟨17, 46⟩, ⟨29, 70⟩, ⟨40, 78⟩, ⟨2, 35⟩, ⟨13, 43⟩, ⟨25, 67⟩, ⟨36, 75⟩, ⟨9, 40⟩, ⟨20, 48⟩, ⟨32, 72⟩, ⟨5, 37⟩, ⟨16, 45⟩, ⟨28, 69⟩, ⟨39, 77⟩, ⟨1, 34⟩, ⟨12, 42⟩]⟩
theorem profile2072_checked : profile2072.check := by decide +kernel

noncomputable def selection0_2072 : Selection :=
  ⟨0, 1, 2, (627/50), 1306, -276, 392⟩
theorem selection0_2072_checked : selection0_2072.check profile2072 := by decide +kernel

noncomputable def selection1_2072 : Selection :=
  ⟨1, -7, 6, (1229/100), 228, -504, 760⟩
theorem selection1_2072_checked : selection1_2072.check profile2072 := by decide +kernel

noncomputable def selection2_2072 : Selection :=
  ⟨2, -15, 10, (611/50), 91, -700, 1128⟩
theorem selection2_2072_checked : selection2_2072.check profile2072 := by decide +kernel

noncomputable def profile2073 : ProfileCell :=
  ⟨(43/59), (78/107),
    [37, 36, 34, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 16], [34, 35, 36, 37, 37],
    [⟨12, 43⟩, ⟨24, 67⟩, ⟨35, 75⟩, ⟨8, 40⟩, ⟨19, 48⟩, ⟨31, 72⟩, ⟨43, 115⟩, ⟨4, 37⟩, ⟨42, 80⟩, ⟨15, 45⟩, ⟨27, 69⟩, ⟨38, 77⟩, ⟨11, 42⟩, ⟨23, 66⟩, ⟨34, 74⟩, ⟨7, 39⟩, ⟨18, 47⟩, ⟨30, 71⟩, ⟨3, 36⟩, ⟨41, 79⟩, ⟨14, 44⟩, ⟨26, 68⟩, ⟨37, 76⟩, ⟨10, 41⟩, ⟨21, 49⟩, ⟨22, 65⟩, ⟨33, 73⟩, ⟨6, 38⟩, ⟨17, 46⟩, ⟨29, 70⟩, ⟨2, 35⟩, ⟨40, 78⟩, ⟨13, 43⟩, ⟨25, 67⟩, ⟨36, 75⟩, ⟨9, 40⟩, ⟨20, 48⟩, ⟨32, 72⟩, ⟨5, 37⟩, ⟨16, 45⟩, ⟨28, 69⟩, ⟨1, 34⟩, ⟨39, 77⟩]⟩
theorem profile2073_checked : profile2073.check := by decide +kernel

noncomputable def selection0_2073 : Selection :=
  ⟨0, 1, 2, (1263/100), 377, -620, 864⟩
theorem selection0_2073_checked : selection0_2073.check profile2073 := by decide +kernel

noncomputable def selection1_2073 : Selection :=
  ⟨1, -7, 6, (247/20), 66, -848, 1232⟩
theorem selection1_2073_checked : selection1_2073.check profile2073 := by decide +kernel

noncomputable def selection2_2073 : Selection :=
  ⟨2, -15, 10, (1227/100), 27, -1044, 1600⟩
theorem selection2_2073_checked : selection2_2073.check profile2073 := by decide +kernel

noncomputable def profile2074 : ProfileCell :=
  ⟨(78/107), (35/48),
    [37, 36, 34, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 16], [34, 35, 36, 37, 37],
    [⟨39, 78⟩, ⟨12, 43⟩, ⟨24, 67⟩, ⟨35, 75⟩, ⟨8, 40⟩, ⟨19, 48⟩, ⟨31, 72⟩, ⟨4, 37⟩, ⟨43, 115⟩, ⟨42, 80⟩, ⟨15, 45⟩, ⟨27, 69⟩, ⟨38, 77⟩, ⟨11, 42⟩, ⟨23, 66⟩, ⟨34, 74⟩, ⟨7, 39⟩, ⟨18, 47⟩, ⟨30, 71⟩, ⟨3, 36⟩, ⟨41, 79⟩, ⟨14, 44⟩, ⟨26, 68⟩, ⟨37, 76⟩, ⟨10, 41⟩, ⟨21, 49⟩, ⟨22, 65⟩, ⟨33, 73⟩, ⟨6, 38⟩, ⟨17, 46⟩, ⟨29, 70⟩, ⟨2, 35⟩, ⟨40, 78⟩, ⟨13, 43⟩, ⟨25, 67⟩, ⟨36, 75⟩, ⟨9, 40⟩, ⟨20, 48⟩, ⟨32, 72⟩, ⟨5, 37⟩, ⟨16, 45⟩, ⟨28, 69⟩, ⟨1, 34⟩]⟩
theorem profile2074_checked : profile2074.check := by decide +kernel

noncomputable def selection0_2074 : Selection :=
  ⟨0, 1, 2, (633/50), 464, -152, 222⟩
theorem selection0_2074_checked : selection0_2074.check profile2074 := by decide +kernel

noncomputable def selection1_2074 : Selection :=
  ⟨1, -7, 6, (619/50), 81, -380, 590⟩
theorem selection1_2074_checked : selection1_2074.check profile2074 := by decide +kernel

noncomputable def selection2_2074 : Selection :=
  ⟨2, -15, 10, (123/10), 33, -576, 958⟩
theorem selection2_2074_checked : selection2_2074.check profile2074 := by decide +kernel

noncomputable def profile2075 : ProfileCell :=
  ⟨(35/48), (27/37),
    [37, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 16], [35, 35, 36, 37, 37],
    [⟨1, 35⟩, ⟨28, 70⟩, ⟨12, 43⟩, ⟨39, 78⟩, ⟨24, 67⟩, ⟨8, 40⟩, ⟨35, 75⟩, ⟨19, 48⟩, ⟨4, 37⟩, ⟨31, 72⟩, ⟨15, 45⟩, ⟨42, 80⟩, ⟨43, 115⟩, ⟨27, 69⟩, ⟨11, 42⟩, ⟨38, 77⟩, ⟨23, 66⟩, ⟨7, 39⟩, ⟨34, 74⟩, ⟨18, 47⟩, ⟨3, 36⟩, ⟨30, 71⟩, ⟨14, 44⟩, ⟨41, 79⟩, ⟨26, 68⟩, ⟨10, 41⟩, ⟨37, 76⟩, ⟨21, 49⟩, ⟨22, 65⟩, ⟨6, 38⟩, ⟨33, 73⟩, ⟨17, 46⟩, ⟨2, 35⟩, ⟨29, 70⟩, ⟨13, 43⟩, ⟨40, 78⟩, ⟨25, 67⟩, ⟨9, 40⟩, ⟨36, 75⟩, ⟨20, 48⟩, ⟨5, 37⟩, ⟨32, 72⟩, ⟨16, 45⟩]⟩
theorem profile2075_checked : profile2075.check := by decide +kernel

noncomputable def selection0_2075 : Selection :=
  ⟨0, 2, 2, (741/50), 1569, -292, 414⟩
theorem selection0_2075_checked : selection0_2075.check profile2075 := by decide +kernel

noncomputable def selection1_2075 : Selection :=
  ⟨1, -6, 6, (29/2), 273, -520, 782⟩
theorem selection1_2075_checked : selection1_2075.check profile2075 := by decide +kernel

noncomputable def selection2_2075 : Selection :=
  ⟨2, -14, 10, (721/50), 109, -716, 1150⟩
theorem selection2_2075_checked : selection2_2075.check profile2075 := by decide +kernel

noncomputable def profile2076 : ProfileCell :=
  ⟨(27/37), (73/100),
    [37, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 16], [35, 35, 36, 37, 37],
    [⟨1, 35⟩, ⟨12, 43⟩, ⟨28, 70⟩, ⟨39, 78⟩, ⟨8, 40⟩, ⟨24, 67⟩, ⟨19, 48⟩, ⟨35, 75⟩, ⟨4, 37⟩, ⟨15, 45⟩, ⟨31, 72⟩, ⟨42, 80⟩, ⟨43, 115⟩, ⟨11, 42⟩, ⟨27, 69⟩, ⟨38, 77⟩, ⟨7, 39⟩, ⟨23, 66⟩, ⟨18, 47⟩, ⟨34, 74⟩, ⟨3, 36⟩, ⟨14, 44⟩, ⟨30, 71⟩, ⟨41, 79⟩, ⟨10, 41⟩, ⟨26, 68⟩, ⟨21, 49⟩, ⟨37, 76⟩, ⟨6, 38⟩, ⟨22, 65⟩, ⟨17, 46⟩, ⟨33, 73⟩, ⟨2, 35⟩, ⟨13, 43⟩, ⟨29, 70⟩, ⟨40, 78⟩, ⟨9, 40⟩, ⟨25, 67⟩, ⟨20, 48⟩, ⟨36, 75⟩, ⟨5, 37⟩, ⟨16, 45⟩, ⟨32, 72⟩]⟩
theorem profile2076_checked : profile2076.check := by decide +kernel

noncomputable def selection0_2076 : Selection :=
  ⟨0, 2, 2, (374/25), 760, -562, 784⟩
theorem selection0_2076_checked : selection0_2076.check profile2076 := by decide +kernel

noncomputable def selection1_2076 : Selection :=
  ⟨1, -6, 6, (1459/100), 132, -790, 1152⟩
theorem selection1_2076_checked : selection1_2076.check profile2076 := by decide +kernel

noncomputable def selection2_2076 : Selection :=
  ⟨2, -14, 10, (29/2), 53, -986, 1520⟩
theorem selection2_2076_checked : selection2_2076.check profile2076 := by decide +kernel

noncomputable def profile2077 : ProfileCell :=
  ⟨(73/100), (46/63),
    [37, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 16], [35, 35, 36, 37, 37],
    [⟨32, 73⟩, ⟨1, 35⟩, ⟨12, 43⟩, ⟨28, 70⟩, ⟨39, 78⟩, ⟨8, 40⟩, ⟨24, 67⟩, ⟨19, 48⟩, ⟨35, 75⟩, ⟨4, 37⟩, ⟨15, 45⟩, ⟨31, 72⟩, ⟨42, 80⟩, ⟨11, 42⟩, ⟨43, 115⟩, ⟨27, 69⟩, ⟨38, 77⟩, ⟨7, 39⟩, ⟨23, 66⟩, ⟨18, 47⟩, ⟨34, 74⟩, ⟨3, 36⟩, ⟨14, 44⟩, ⟨30, 71⟩, ⟨41, 79⟩, ⟨10, 41⟩, ⟨26, 68⟩, ⟨21, 49⟩, ⟨37, 76⟩, ⟨6, 38⟩, ⟨22, 65⟩, ⟨17, 46⟩, ⟨33, 73⟩, ⟨2, 35⟩, ⟨13, 43⟩, ⟨29, 70⟩, ⟨40, 78⟩, ⟨9, 40⟩, ⟨25, 67⟩, ⟨20, 48⟩, ⟨36, 75⟩, ⟨5, 37⟩, ⟨16, 45⟩]⟩
theorem profile2077_checked : profile2077.check := by decide +kernel

noncomputable def selection0_2077 : Selection :=
  ⟨0, 2, 2, 15, 447, -270, 384⟩
theorem selection0_2077_checked : selection0_2077.check profile2077 := by decide +kernel

noncomputable def selection1_2077 : Selection :=
  ⟨1, -6, 6, (1463/100), 78, -498, 752⟩
theorem selection1_2077_checked : selection1_2077.check profile2077 := by decide +kernel

noncomputable def selection2_2077 : Selection :=
  ⟨2, -14, 10, (1453/100), 31, -694, 1120⟩
theorem selection2_2077_checked : selection2_2077.check profile2077 := by decide +kernel

noncomputable def profile2078 : ProfileCell :=
  ⟨(46/63), (19/26),
    [37, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 18, 17, 16], [35, 35, 36, 37, 37],
    [⟨16, 46⟩, ⟨32, 73⟩, ⟨1, 35⟩, ⟨12, 43⟩, ⟨28, 70⟩, ⟨39, 78⟩, ⟨8, 40⟩, ⟨24, 67⟩, ⟨19, 48⟩, ⟨35, 75⟩, ⟨4, 37⟩, ⟨15, 45⟩, ⟨31, 72⟩, ⟨42, 80⟩, ⟨11, 42⟩, ⟨27, 69⟩, ⟨43, 115⟩, ⟨38, 77⟩, ⟨7, 39⟩, ⟨23, 66⟩, ⟨18, 47⟩, ⟨34, 74⟩, ⟨3, 36⟩, ⟨14, 44⟩, ⟨30, 71⟩, ⟨41, 79⟩, ⟨10, 41⟩, ⟨26, 68⟩, ⟨21, 49⟩, ⟨37, 76⟩, ⟨6, 38⟩, ⟨22, 65⟩, ⟨17, 46⟩, ⟨33, 73⟩, ⟨2, 35⟩, ⟨13, 43⟩, ⟨29, 70⟩, ⟨40, 78⟩, ⟨9, 40⟩, ⟨25, 67⟩, ⟨20, 48⟩, ⟨36, 75⟩, ⟨5, 37⟩]⟩
theorem profile2078_checked : profile2078.check := by decide +kernel

noncomputable def selection0_2078 : Selection :=
  ⟨0, 2, 2, (1527/100), 1748, -454, 636⟩
theorem selection0_2078_checked : selection0_2078.check profile2078 := by decide +kernel

noncomputable def selection1_2078 : Selection :=
  ⟨1, -6, 6, (74/5), 302, -682, 1004⟩
theorem selection1_2078_checked : selection1_2078.check profile2078 := by decide +kernel

noncomputable def selection2_2078 : Selection :=
  ⟨2, -14, 10, (367/25), 121, -878, 1372⟩
theorem selection2_2078_checked : selection2_2078.check profile2078 := by decide +kernel

noncomputable def profile2079 : ProfileCell :=
  ⟨(19/26), (68/93),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨5, 38⟩, ⟨36, 76⟩, ⟨16, 46⟩, ⟨1, 35⟩, ⟨32, 73⟩, ⟨12, 43⟩, ⟨28, 70⟩, ⟨8, 40⟩, ⟨39, 78⟩, ⟨19, 48⟩, ⟨24, 67⟩, ⟨4, 37⟩, ⟨35, 75⟩, ⟨15, 45⟩, ⟨31, 72⟩, ⟨11, 42⟩, ⟨42, 80⟩, ⟨27, 69⟩, ⟨7, 39⟩, ⟨38, 77⟩, ⟨43, 115⟩, ⟨18, 47⟩, ⟨23, 66⟩, ⟨3, 36⟩, ⟨34, 74⟩, ⟨14, 44⟩, ⟨30, 71⟩, ⟨10, 41⟩, ⟨41, 79⟩, ⟨21, 49⟩, ⟨26, 68⟩, ⟨6, 38⟩, ⟨37, 76⟩, ⟨17, 46⟩, ⟨22, 65⟩, ⟨2, 35⟩, ⟨33, 73⟩, ⟨13, 43⟩, ⟨29, 70⟩, ⟨9, 40⟩, ⟨40, 78⟩, ⟨20, 48⟩, ⟨25, 67⟩]⟩
theorem profile2079_checked : profile2079.check := by decide +kernel

noncomputable def selection0_2079 : Selection :=
  ⟨0, 3, 2, (1543/100), 1195, -552, 766⟩
theorem selection0_2079_checked : selection0_2079.check profile2079 := by decide +kernel

noncomputable def selection1_2079 : Selection :=
  ⟨1, -5, 6, (373/25), 206, -784, 1134⟩
theorem selection1_2079_checked : selection1_2079.check profile2079 := by decide +kernel

noncomputable def selection2_2079 : Selection :=
  ⟨2, -13, 10, (739/50), 82, -984, 1502⟩
theorem selection2_2079_checked : selection2_2079.check profile2079 := by decide +kernel

noncomputable def profile2080 : ProfileCell :=
  ⟨(68/93), (49/67),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨25, 68⟩, ⟨5, 38⟩, ⟨36, 76⟩, ⟨16, 46⟩, ⟨1, 35⟩, ⟨32, 73⟩, ⟨12, 43⟩, ⟨28, 70⟩, ⟨8, 40⟩, ⟨39, 78⟩, ⟨19, 48⟩, ⟨24, 67⟩, ⟨4, 37⟩, ⟨35, 75⟩, ⟨15, 45⟩, ⟨31, 72⟩, ⟨11, 42⟩, ⟨42, 80⟩, ⟨27, 69⟩, ⟨7, 39⟩, ⟨38, 77⟩, ⟨18, 47⟩, ⟨43, 115⟩, ⟨23, 66⟩, ⟨3, 36⟩, ⟨34, 74⟩, ⟨14, 44⟩, ⟨30, 71⟩, ⟨10, 41⟩, ⟨41, 79⟩, ⟨21, 49⟩, ⟨26, 68⟩, ⟨6, 38⟩, ⟨37, 76⟩, ⟨17, 46⟩, ⟨22, 65⟩, ⟨2, 35⟩, ⟨33, 73⟩, ⟨13, 43⟩, ⟨29, 70⟩, ⟨9, 40⟩, ⟨40, 78⟩, ⟨20, 48⟩]⟩
theorem profile2080_checked : profile2080.check := by decide +kernel

noncomputable def selection0_2080 : Selection :=
  ⟨0, 2, 2, (1539/100), 462, -30, 56⟩
theorem selection0_2080_checked : selection0_2080.check profile2080 := by decide +kernel

noncomputable def selection1_2080 : Selection :=
  ⟨1, -6, 6, (373/25), 80, -258, 424⟩
theorem selection1_2080_checked : selection1_2080.check profile2080 := by decide +kernel

noncomputable def selection2_2080 : Selection :=
  ⟨2, -14, 10, (1479/100), 32, -454, 792⟩
theorem selection2_2080_checked : selection2_2080.check profile2080 := by decide +kernel

noncomputable def profile2081 : ProfileCell :=
  ⟨(49/67), (79/108),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨20, 49⟩, ⟨25, 68⟩, ⟨5, 38⟩, ⟨36, 76⟩, ⟨16, 46⟩, ⟨1, 35⟩, ⟨32, 73⟩, ⟨12, 43⟩, ⟨28, 70⟩, ⟨8, 40⟩, ⟨39, 78⟩, ⟨19, 48⟩, ⟨24, 67⟩, ⟨4, 37⟩, ⟨35, 75⟩, ⟨15, 45⟩, ⟨31, 72⟩, ⟨11, 42⟩, ⟨42, 80⟩, ⟨27, 69⟩, ⟨7, 39⟩, ⟨38, 77⟩, ⟨18, 47⟩, ⟨23, 66⟩, ⟨43, 115⟩, ⟨3, 36⟩, ⟨34, 74⟩, ⟨14, 44⟩, ⟨30, 71⟩, ⟨10, 41⟩, ⟨41, 79⟩, ⟨21, 49⟩, ⟨26, 68⟩, ⟨6, 38⟩, ⟨37, 76⟩, ⟨17, 46⟩, ⟨22, 65⟩, ⟨2, 35⟩, ⟨33, 73⟩, ⟨13, 43⟩, ⟨29, 70⟩, ⟨9, 40⟩, ⟨40, 78⟩]⟩
theorem profile2081_checked : profile2081.check := by decide +kernel

noncomputable def selection0_2081 : Selection :=
  ⟨0, 2, 2, (771/50), 399, -226, 324⟩
theorem selection0_2081_checked : selection0_2081.check profile2081 := by decide +kernel

noncomputable def selection1_2081 : Selection :=
  ⟨1, -6, 6, (299/20), 69, -454, 692⟩
theorem selection1_2081_checked : selection1_2081.check profile2081 := by decide +kernel

noncomputable def selection2_2081 : Selection :=
  ⟨2, -14, 10, (741/50), 28, -650, 1060⟩
theorem selection2_2081_checked : selection2_2081.check profile2081 := by decide +kernel

noncomputable def profile2082 : ProfileCell :=
  ⟨(79/108), (30/41),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨40, 79⟩, ⟨20, 49⟩, ⟨25, 68⟩, ⟨5, 38⟩, ⟨36, 76⟩, ⟨16, 46⟩, ⟨1, 35⟩, ⟨32, 73⟩, ⟨12, 43⟩, ⟨28, 70⟩, ⟨8, 40⟩, ⟨39, 78⟩, ⟨19, 48⟩, ⟨24, 67⟩, ⟨4, 37⟩, ⟨35, 75⟩, ⟨15, 45⟩, ⟨31, 72⟩, ⟨11, 42⟩, ⟨42, 80⟩, ⟨27, 69⟩, ⟨7, 39⟩, ⟨38, 77⟩, ⟨18, 47⟩, ⟨23, 66⟩, ⟨3, 36⟩, ⟨43, 115⟩, ⟨34, 74⟩, ⟨14, 44⟩, ⟨30, 71⟩, ⟨10, 41⟩, ⟨41, 79⟩, ⟨21, 49⟩, ⟨26, 68⟩, ⟨6, 38⟩, ⟨37, 76⟩, ⟨17, 46⟩, ⟨22, 65⟩, ⟨2, 35⟩, ⟨33, 73⟩, ⟨13, 43⟩, ⟨29, 70⟩, ⟨9, 40⟩]⟩
theorem profile2082_checked : profile2082.check := by decide +kernel

noncomputable def selection0_2082 : Selection :=
  ⟨0, 2, 2, (771/50), 651, 90, -108⟩
theorem selection0_2082_checked : selection0_2082.check profile2082 := by decide +kernel

noncomputable def selection1_2082 : Selection :=
  ⟨1, -6, 6, (374/25), 113, -138, 260⟩
theorem selection1_2082_checked : selection1_2082.check profile2082 := by decide +kernel

noncomputable def selection2_2082 : Selection :=
  ⟨2, -14, 10, (371/25), 45, -334, 628⟩
theorem selection2_2082_checked : selection2_2082.check profile2082 := by decide +kernel

noncomputable def profile2083 : ProfileCell :=
  ⟨(30/41), (71/97),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨20, 49⟩, ⟨40, 79⟩, ⟨5, 38⟩, ⟨25, 68⟩, ⟨16, 46⟩, ⟨36, 76⟩, ⟨1, 35⟩, ⟨12, 43⟩, ⟨32, 73⟩, ⟨8, 40⟩, ⟨28, 70⟩, ⟨19, 48⟩, ⟨39, 78⟩, ⟨4, 37⟩, ⟨24, 67⟩, ⟨15, 45⟩, ⟨35, 75⟩, ⟨11, 42⟩, ⟨31, 72⟩, ⟨42, 80⟩, ⟨7, 39⟩, ⟨27, 69⟩, ⟨18, 47⟩, ⟨38, 77⟩, ⟨3, 36⟩, ⟨23, 66⟩, ⟨43, 115⟩, ⟨14, 44⟩, ⟨34, 74⟩, ⟨10, 41⟩, ⟨30, 71⟩, ⟨21, 49⟩, ⟨41, 79⟩, ⟨6, 38⟩, ⟨26, 68⟩, ⟨17, 46⟩, ⟨37, 76⟩, ⟨2, 35⟩, ⟨22, 65⟩, ⟨13, 43⟩, ⟨33, 73⟩, ⟨9, 40⟩, ⟨29, 70⟩]⟩
theorem profile2083_checked : profile2083.check := by decide +kernel

noncomputable def selection0_2083 : Selection :=
  ⟨0, 2, 2, (387/25), 727, -330, 466⟩
theorem selection0_2083_checked : selection0_2083.check profile2083 := by decide +kernel

noncomputable def selection1_2083 : Selection :=
  ⟨1, -6, 6, (751/50), 126, -558, 834⟩
theorem selection1_2083_checked : selection1_2083.check profile2083 := by decide +kernel

noncomputable def selection2_2083 : Selection :=
  ⟨2, -14, 10, (149/10), 51, -754, 1202⟩
theorem selection2_2083_checked : selection2_2083.check profile2083 := by decide +kernel

noncomputable def profile2084 : ProfileCell :=
  ⟨(71/97), (41/56),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨29, 71⟩, ⟨20, 49⟩, ⟨40, 79⟩, ⟨5, 38⟩, ⟨25, 68⟩, ⟨16, 46⟩, ⟨36, 76⟩, ⟨1, 35⟩, ⟨12, 43⟩, ⟨32, 73⟩, ⟨8, 40⟩, ⟨28, 70⟩, ⟨19, 48⟩, ⟨39, 78⟩, ⟨4, 37⟩, ⟨24, 67⟩, ⟨15, 45⟩, ⟨35, 75⟩, ⟨11, 42⟩, ⟨31, 72⟩, ⟨42, 80⟩, ⟨7, 39⟩, ⟨27, 69⟩, ⟨18, 47⟩, ⟨38, 77⟩, ⟨3, 36⟩, ⟨23, 66⟩, ⟨14, 44⟩, ⟨43, 115⟩, ⟨34, 74⟩, ⟨10, 41⟩, ⟨30, 71⟩, ⟨21, 49⟩, ⟨41, 79⟩, ⟨6, 38⟩, ⟨26, 68⟩, ⟨17, 46⟩, ⟨37, 76⟩, ⟨2, 35⟩, ⟨22, 65⟩, ⟨13, 43⟩, ⟨33, 73⟩, ⟨9, 40⟩]⟩
theorem profile2084_checked : profile2084.check := by decide +kernel

noncomputable def selection0_2084 : Selection :=
  ⟨0, 2, 2, (387/25), 532, 96, -116⟩
theorem selection0_2084_checked : selection0_2084.check profile2084 := by decide +kernel

noncomputable def selection1_2084 : Selection :=
  ⟨1, -6, 6, (376/25), 93, -132, 252⟩
theorem selection1_2084_checked : selection1_2084.check profile2084 := by decide +kernel

noncomputable def selection2_2084 : Selection :=
  ⟨2, -14, 10, (373/25), 37, -328, 620⟩
theorem selection2_2084_checked : selection2_2084.check profile2084 := by decide +kernel

noncomputable def profile2085 : ProfileCell :=
  ⟨(41/56), (74/101),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨9, 41⟩, ⟨29, 71⟩, ⟨20, 49⟩, ⟨5, 38⟩, ⟨40, 79⟩, ⟨25, 68⟩, ⟨16, 46⟩, ⟨1, 35⟩, ⟨36, 76⟩, ⟨12, 43⟩, ⟨32, 73⟩, ⟨8, 40⟩, ⟨28, 70⟩, ⟨19, 48⟩, ⟨4, 37⟩, ⟨39, 78⟩, ⟨24, 67⟩, ⟨15, 45⟩, ⟨35, 75⟩, ⟨11, 42⟩, ⟨31, 72⟩, ⟨7, 39⟩, ⟨42, 80⟩, ⟨27, 69⟩, ⟨18, 47⟩, ⟨3, 36⟩, ⟨38, 77⟩, ⟨23, 66⟩, ⟨14, 44⟩, ⟨34, 74⟩, ⟨43, 115⟩, ⟨10, 41⟩, ⟨30, 71⟩, ⟨21, 49⟩, ⟨6, 38⟩, ⟨41, 79⟩, ⟨26, 68⟩, ⟨17, 46⟩, ⟨2, 35⟩, ⟨37, 76⟩, ⟨22, 65⟩, ⟨13, 43⟩, ⟨33, 73⟩]⟩
theorem profile2085_checked : profile2085.check := by decide +kernel

noncomputable def selection0_2085 : Selection :=
  ⟨0, 2, 2, (1563/100), 1546, -314, 444⟩
theorem selection0_2085_checked : selection0_2085.check profile2085 := by decide +kernel

noncomputable def selection1_2085 : Selection :=
  ⟨1, -6, 6, (379/25), 268, -542, 812⟩
theorem selection1_2085_checked : selection1_2085.check profile2085 := by decide +kernel

noncomputable def selection2_2085 : Selection :=
  ⟨2, -14, 10, (1503/100), 107, -738, 1180⟩
theorem selection2_2085_checked : selection2_2085.check profile2085 := by decide +kernel

noncomputable def profile2086 : ProfileCell :=
  ⟨(74/101), (11/15),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 21, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨33, 74⟩, ⟨9, 41⟩, ⟨29, 71⟩, ⟨20, 49⟩, ⟨5, 38⟩, ⟨40, 79⟩, ⟨25, 68⟩, ⟨16, 46⟩, ⟨1, 35⟩, ⟨36, 76⟩, ⟨12, 43⟩, ⟨32, 73⟩, ⟨8, 40⟩, ⟨28, 70⟩, ⟨19, 48⟩, ⟨4, 37⟩, ⟨39, 78⟩, ⟨24, 67⟩, ⟨15, 45⟩, ⟨35, 75⟩, ⟨11, 42⟩, ⟨31, 72⟩, ⟨7, 39⟩, ⟨42, 80⟩, ⟨27, 69⟩, ⟨18, 47⟩, ⟨3, 36⟩, ⟨38, 77⟩, ⟨23, 66⟩, ⟨14, 44⟩, ⟨34, 74⟩, ⟨10, 41⟩, ⟨43, 115⟩, ⟨30, 71⟩, ⟨21, 49⟩, ⟨6, 38⟩, ⟨41, 79⟩, ⟨26, 68⟩, ⟨17, 46⟩, ⟨2, 35⟩, ⟨37, 76⟩, ⟨22, 65⟩, ⟨13, 43⟩]⟩
theorem profile2086_checked : profile2086.check := by decide +kernel

noncomputable def selection0_2086 : Selection :=
  ⟨0, 3, 2, (1559/100), 1916, 149, -192⟩
theorem selection0_2086_checked : selection0_2086.check profile2086 := by decide +kernel

noncomputable def selection1_2086 : Selection :=
  ⟨1, -5, 6, (759/50), 334, -83, 176⟩
theorem selection1_2086_checked : selection1_2086.check profile2086 := by decide +kernel

noncomputable def selection2_2086 : Selection :=
  ⟨2, -13, 10, (1509/100), 134, -283, 544⟩
theorem selection2_2086_checked : selection2_2086.check profile2086 := by decide +kernel

noncomputable def profile2087 : ProfileCell :=
  ⟨(11/15), (80/109),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 22, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨13, 44⟩, ⟨22, 66⟩, ⟨37, 77⟩, ⟨9, 41⟩, ⟨33, 74⟩, ⟨5, 38⟩, ⟨20, 49⟩, ⟨29, 71⟩, ⟨1, 35⟩, ⟨16, 46⟩, ⟨25, 68⟩, ⟨40, 79⟩, ⟨12, 43⟩, ⟨36, 76⟩, ⟨8, 40⟩, ⟨32, 73⟩, ⟨4, 37⟩, ⟨19, 48⟩, ⟨28, 70⟩, ⟨15, 45⟩, ⟨24, 67⟩, ⟨39, 78⟩, ⟨11, 42⟩, ⟨35, 75⟩, ⟨7, 39⟩, ⟨31, 72⟩, ⟨3, 36⟩, ⟨18, 47⟩, ⟨27, 69⟩, ⟨42, 80⟩, ⟨14, 44⟩, ⟨23, 66⟩, ⟨38, 77⟩, ⟨10, 41⟩, ⟨34, 74⟩, ⟨6, 38⟩, ⟨21, 49⟩, ⟨30, 71⟩, ⟨43, 115⟩, ⟨2, 35⟩, ⟨17, 46⟩, ⟨26, 68⟩, ⟨41, 79⟩]⟩
theorem profile2087_checked : profile2087.check := by decide +kernel

noncomputable def selection0_2087 : Selection :=
  ⟨0, 2, 2, (27/2), 1535, 259, -342⟩
theorem selection0_2087_checked : selection0_2087.check profile2087 := by decide +kernel

noncomputable def selection1_2087 : Selection :=
  ⟨1, -6, 6, (659/50), 269, 27, 26⟩
theorem selection1_2087_checked : selection1_2087.check profile2087 := by decide +kernel

noncomputable def selection2_2087 : Selection :=
  ⟨2, -14, 10, (1313/100), 108, -173, 394⟩
theorem selection2_2087_checked : selection2_2087.check profile2087 := by decide +kernel

noncomputable def profile2088 : ProfileCell :=
  ⟨(80/109), (69/94),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 22, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨41, 80⟩, ⟨13, 44⟩, ⟨22, 66⟩, ⟨37, 77⟩, ⟨9, 41⟩, ⟨33, 74⟩, ⟨5, 38⟩, ⟨20, 49⟩, ⟨29, 71⟩, ⟨1, 35⟩, ⟨16, 46⟩, ⟨25, 68⟩, ⟨40, 79⟩, ⟨12, 43⟩, ⟨36, 76⟩, ⟨8, 40⟩, ⟨32, 73⟩, ⟨4, 37⟩, ⟨19, 48⟩, ⟨28, 70⟩, ⟨15, 45⟩, ⟨24, 67⟩, ⟨39, 78⟩, ⟨11, 42⟩, ⟨35, 75⟩, ⟨7, 39⟩, ⟨31, 72⟩, ⟨3, 36⟩, ⟨18, 47⟩, ⟨27, 69⟩, ⟨42, 80⟩, ⟨14, 44⟩, ⟨23, 66⟩, ⟨38, 77⟩, ⟨10, 41⟩, ⟨34, 74⟩, ⟨6, 38⟩, ⟨21, 49⟩, ⟨30, 71⟩, ⟨2, 35⟩, ⟨43, 115⟩, ⟨17, 46⟩, ⟨26, 68⟩]⟩
theorem profile2088_checked : profile2088.check := by decide +kernel

noncomputable def selection0_2088 : Selection :=
  ⟨0, 2, 2, (334/25), 243, 579, -778⟩
theorem selection0_2088_checked : selection0_2088.check profile2088 := by decide +kernel

noncomputable def selection1_2088 : Selection :=
  ⟨1, -6, 6, (659/50), 43, 347, -410⟩
theorem selection1_2088_checked : selection1_2088.check profile2088 := by decide +kernel

noncomputable def selection2_2088 : Selection :=
  ⟨2, -14, 10, (1313/100), 18, 147, -42⟩
theorem selection2_2088_checked : selection2_2088.check profile2088 := by decide +kernel

noncomputable def profile2089 : ProfileCell :=
  ⟨(69/94), (58/79),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 22, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨26, 69⟩, ⟨41, 80⟩, ⟨13, 44⟩, ⟨22, 66⟩, ⟨37, 77⟩, ⟨9, 41⟩, ⟨33, 74⟩, ⟨5, 38⟩, ⟨20, 49⟩, ⟨29, 71⟩, ⟨1, 35⟩, ⟨16, 46⟩, ⟨25, 68⟩, ⟨40, 79⟩, ⟨12, 43⟩, ⟨36, 76⟩, ⟨8, 40⟩, ⟨32, 73⟩, ⟨4, 37⟩, ⟨19, 48⟩, ⟨28, 70⟩, ⟨15, 45⟩, ⟨24, 67⟩, ⟨39, 78⟩, ⟨11, 42⟩, ⟨35, 75⟩, ⟨7, 39⟩, ⟨31, 72⟩, ⟨3, 36⟩, ⟨18, 47⟩, ⟨27, 69⟩, ⟨42, 80⟩, ⟨14, 44⟩, ⟨23, 66⟩, ⟨38, 77⟩, ⟨10, 41⟩, ⟨34, 74⟩, ⟨6, 38⟩, ⟨21, 49⟩, ⟨30, 71⟩, ⟨2, 35⟩, ⟨17, 46⟩, ⟨43, 115⟩]⟩
theorem profile2089_checked : profile2089.check := by decide +kernel

noncomputable def selection0_2089 : Selection :=
  ⟨0, 2, 2, (1331/100), 333, 993, -1342⟩
theorem selection0_2089_checked : selection0_2089.check profile2089 := by decide +kernel

noncomputable def selection1_2089 : Selection :=
  ⟨1, -6, 6, (1317/100), 59, 761, -974⟩
theorem selection1_2089_checked : selection1_2089.check profile2089 := by decide +kernel

noncomputable def selection2_2089 : Selection :=
  ⟨2, -14, 10, (1313/100), 24, 561, -606⟩
theorem selection2_2089_checked : selection2_2089.check profile2089 := by decide +kernel

noncomputable def profile2090 : ProfileCell :=
  ⟨(58/79), (47/64),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 22, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨43, 116⟩, ⟨26, 69⟩, ⟨41, 80⟩, ⟨13, 44⟩, ⟨22, 66⟩, ⟨37, 77⟩, ⟨9, 41⟩, ⟨33, 74⟩, ⟨5, 38⟩, ⟨20, 49⟩, ⟨29, 71⟩, ⟨1, 35⟩, ⟨16, 46⟩, ⟨25, 68⟩, ⟨40, 79⟩, ⟨12, 43⟩, ⟨36, 76⟩, ⟨8, 40⟩, ⟨32, 73⟩, ⟨4, 37⟩, ⟨19, 48⟩, ⟨28, 70⟩, ⟨15, 45⟩, ⟨24, 67⟩, ⟨39, 78⟩, ⟨11, 42⟩, ⟨35, 75⟩, ⟨7, 39⟩, ⟨31, 72⟩, ⟨3, 36⟩, ⟨18, 47⟩, ⟨27, 69⟩, ⟨42, 80⟩, ⟨14, 44⟩, ⟨23, 66⟩, ⟨38, 77⟩, ⟨10, 41⟩, ⟨34, 74⟩, ⟨6, 38⟩, ⟨21, 49⟩, ⟨30, 71⟩, ⟨2, 35⟩, ⟨17, 46⟩]⟩
theorem profile2090_checked : profile2090.check := by decide +kernel

noncomputable def selection0_2090 : Selection :=
  ⟨0, 2, 2, (332/25), 488, -515, 712⟩
theorem selection0_2090_checked : selection0_2090.check profile2090 := by decide +kernel

noncomputable def selection1_2090 : Selection :=
  ⟨1, -6, 6, (1319/100), 87, -747, 1080⟩
theorem selection1_2090_checked : selection1_2090.check profile2090 := by decide +kernel

noncomputable def selection2_2090 : Selection :=
  ⟨2, -14, 10, (1317/100), 35, -947, 1448⟩
theorem selection2_2090_checked : selection2_2090.check profile2090 := by decide +kernel

noncomputable def profile2091 : ProfileCell :=
  ⟨(47/64), (36/49),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 22, 20, 19, 17, 16], [35, 35, 36, 37, 38],
    [⟨17, 47⟩, ⟨26, 69⟩, ⟨43, 116⟩, ⟨41, 80⟩, ⟨13, 44⟩, ⟨22, 66⟩, ⟨37, 77⟩, ⟨9, 41⟩, ⟨33, 74⟩, ⟨5, 38⟩, ⟨20, 49⟩, ⟨29, 71⟩, ⟨1, 35⟩, ⟨16, 46⟩, ⟨25, 68⟩, ⟨40, 79⟩, ⟨12, 43⟩, ⟨36, 76⟩, ⟨8, 40⟩, ⟨32, 73⟩, ⟨4, 37⟩, ⟨19, 48⟩, ⟨28, 70⟩, ⟨15, 45⟩, ⟨24, 67⟩, ⟨39, 78⟩, ⟨11, 42⟩, ⟨35, 75⟩, ⟨7, 39⟩, ⟨31, 72⟩, ⟨3, 36⟩, ⟨18, 47⟩, ⟨27, 69⟩, ⟨42, 80⟩, ⟨14, 44⟩, ⟨23, 66⟩, ⟨38, 77⟩, ⟨10, 41⟩, ⟨34, 74⟩, ⟨6, 38⟩, ⟨21, 49⟩, ⟨30, 71⟩, ⟨2, 35⟩]⟩
theorem profile2091_checked : profile2091.check := by decide +kernel

noncomputable def selection0_2091 : Selection :=
  ⟨0, 2, 2, (1349/100), 798, -703, 968⟩
theorem selection0_2091_checked : selection0_2091.check profile2091 := by decide +kernel

noncomputable def selection1_2091 : Selection :=
  ⟨1, -6, 6, (333/25), 142, -935, 1336⟩
theorem selection1_2091_checked : selection1_2091.check profile2091 := by decide +kernel

noncomputable def selection2_2091 : Selection :=
  ⟨2, -14, 10, (1327/100), 57, -1135, 1704⟩
theorem selection2_2091_checked : selection2_2091.check profile2091 := by decide +kernel

noncomputable def profile2092 : ProfileCell :=
  ⟨(36/49), (25/34),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 24, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨2, 36⟩, ⟨30, 72⟩, ⟨17, 47⟩, ⟨26, 69⟩, ⟨13, 44⟩, ⟨41, 80⟩, ⟨43, 116⟩, ⟨22, 66⟩, ⟨9, 41⟩, ⟨37, 77⟩, ⟨5, 38⟩, ⟨33, 74⟩, ⟨20, 49⟩, ⟨1, 35⟩, ⟨29, 71⟩, ⟨16, 46⟩, ⟨25, 68⟩, ⟨12, 43⟩, ⟨40, 79⟩, ⟨8, 40⟩, ⟨36, 76⟩, ⟨4, 37⟩, ⟨32, 73⟩, ⟨19, 48⟩, ⟨28, 70⟩, ⟨15, 45⟩, ⟨24, 67⟩, ⟨11, 42⟩, ⟨39, 78⟩, ⟨7, 39⟩, ⟨35, 75⟩, ⟨3, 36⟩, ⟨31, 72⟩, ⟨18, 47⟩, ⟨27, 69⟩, ⟨14, 44⟩, ⟨42, 80⟩, ⟨23, 66⟩, ⟨10, 41⟩, ⟨38, 77⟩, ⟨6, 38⟩, ⟨34, 74⟩, ⟨21, 49⟩]⟩
theorem profile2092_checked : profile2092.check := by decide +kernel

noncomputable def selection0_2092 : Selection :=
  ⟨0, 4, 2, (447/25), 1987, -703, 968⟩
theorem selection0_2092_checked : selection0_2092.check profile2092 := by decide +kernel

noncomputable def selection1_2092 : Selection :=
  ⟨1, -4, 6, (351/20), 350, -935, 1336⟩
theorem selection1_2092_checked : selection1_2092.check profile2092 := by decide +kernel

noncomputable def selection2_2092 : Selection :=
  ⟨2, -12, 10, (873/50), 141, -1135, 1704⟩
theorem selection2_2092_checked : selection2_2092.check profile2092 := by decide +kernel

noncomputable def profile2093 : ProfileCell :=
  ⟨(25/34), (39/53),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨21, 50⟩, ⟨34, 75⟩, ⟨2, 36⟩, ⟨17, 47⟩, ⟨30, 72⟩, ⟨13, 44⟩, ⟨26, 69⟩, ⟨41, 80⟩, ⟨9, 41⟩, ⟨22, 66⟩, ⟨43, 116⟩, ⟨37, 77⟩, ⟨5, 38⟩, ⟨20, 49⟩, ⟨33, 74⟩, ⟨1, 35⟩, ⟨16, 46⟩, ⟨29, 71⟩, ⟨12, 43⟩, ⟨25, 68⟩, ⟨40, 79⟩, ⟨8, 40⟩, ⟨36, 76⟩, ⟨4, 37⟩, ⟨19, 48⟩, ⟨32, 73⟩, ⟨15, 45⟩, ⟨28, 70⟩, ⟨11, 42⟩, ⟨24, 67⟩, ⟨39, 78⟩, ⟨7, 39⟩, ⟨35, 75⟩, ⟨3, 36⟩, ⟨18, 47⟩, ⟨31, 72⟩, ⟨14, 44⟩, ⟨27, 69⟩, ⟨42, 80⟩, ⟨10, 41⟩, ⟨23, 66⟩, ⟨38, 77⟩, ⟨6, 38⟩]⟩
theorem profile2093_checked : profile2093.check := by decide +kernel

noncomputable def selection0_2093 : Selection :=
  ⟨0, 3, 2, (1629/100), 1671, -778, 1070⟩
theorem selection0_2093_checked : selection0_2093.check profile2093 := by decide +kernel

noncomputable def selection1_2093 : Selection :=
  ⟨1, -5, 6, (789/50), 291, -1010, 1438⟩
theorem selection1_2093_checked : selection1_2093.check profile2093 := by decide +kernel

noncomputable def selection2_2093 : Selection :=
  ⟨2, -13, 10, (391/25), 116, -1210, 1806⟩
theorem selection2_2093_checked : selection2_2093.check profile2093 := by decide +kernel

noncomputable def profile2094 : ProfileCell :=
  ⟨(39/53), (67/91),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨6, 39⟩, ⟨38, 78⟩, ⟨21, 50⟩, ⟨2, 36⟩, ⟨34, 75⟩, ⟨17, 47⟩, ⟨30, 72⟩, ⟨13, 44⟩, ⟨26, 69⟩, ⟨9, 41⟩, ⟨41, 80⟩, ⟨22, 66⟩, ⟨5, 38⟩, ⟨37, 77⟩, ⟨43, 116⟩, ⟨20, 49⟩, ⟨1, 35⟩, ⟨33, 74⟩, ⟨16, 46⟩, ⟨29, 71⟩, ⟨12, 43⟩, ⟨25, 68⟩, ⟨8, 40⟩, ⟨40, 79⟩, ⟨4, 37⟩, ⟨36, 76⟩, ⟨19, 48⟩, ⟨32, 73⟩, ⟨15, 45⟩, ⟨28, 70⟩, ⟨11, 42⟩, ⟨24, 67⟩, ⟨7, 39⟩, ⟨39, 78⟩, ⟨3, 36⟩, ⟨35, 75⟩, ⟨18, 47⟩, ⟨31, 72⟩, ⟨14, 44⟩, ⟨27, 69⟩, ⟨10, 41⟩, ⟨42, 80⟩, ⟨23, 66⟩]⟩
theorem profile2094_checked : profile2094.check := by decide +kernel

noncomputable def selection0_2094 : Selection :=
  ⟨0, 3, 2, (831/50), 1273, -856, 1176⟩
theorem selection0_2094_checked : selection0_2094.check profile2094 := by decide +kernel

noncomputable def selection1_2094 : Selection :=
  ⟨1, -5, 6, (399/25), 220, -1088, 1544⟩
theorem selection1_2094_checked : selection1_2094.check profile2094 := by decide +kernel

noncomputable def selection2_2094 : Selection :=
  ⟨2, -13, 10, (789/50), 88, -1288, 1912⟩
theorem selection2_2094_checked : selection2_2094.check profile2094 := by decide +kernel

noncomputable def profile2095 : ProfileCell :=
  ⟨(67/91), (81/110),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨23, 67⟩, ⟨6, 39⟩, ⟨38, 78⟩, ⟨21, 50⟩, ⟨2, 36⟩, ⟨34, 75⟩, ⟨17, 47⟩, ⟨30, 72⟩, ⟨13, 44⟩, ⟨26, 69⟩, ⟨9, 41⟩, ⟨41, 80⟩, ⟨22, 66⟩, ⟨5, 38⟩, ⟨37, 77⟩, ⟨20, 49⟩, ⟨43, 116⟩, ⟨1, 35⟩, ⟨33, 74⟩, ⟨16, 46⟩, ⟨29, 71⟩, ⟨12, 43⟩, ⟨25, 68⟩, ⟨8, 40⟩, ⟨40, 79⟩, ⟨4, 37⟩, ⟨36, 76⟩, ⟨19, 48⟩, ⟨32, 73⟩, ⟨15, 45⟩, ⟨28, 70⟩, ⟨11, 42⟩, ⟨24, 67⟩, ⟨7, 39⟩, ⟨39, 78⟩, ⟨3, 36⟩, ⟨35, 75⟩, ⟨18, 47⟩, ⟨31, 72⟩, ⟨14, 44⟩, ⟨27, 69⟩, ⟨10, 41⟩, ⟨42, 80⟩]⟩
theorem profile2095_checked : profile2095.check := by decide +kernel

noncomputable def selection0_2095 : Selection :=
  ⟨0, 3, 2, (1667/100), 308, -588, 812⟩
theorem selection0_2095_checked : selection0_2095.check profile2095 := by decide +kernel

noncomputable def selection1_2095 : Selection :=
  ⟨1, -5, 6, (1599/100), 53, -820, 1180⟩
theorem selection1_2095_checked : selection1_2095.check profile2095 := by decide +kernel

noncomputable def selection2_2095 : Selection :=
  ⟨2, -13, 10, (1581/100), 22, -1020, 1548⟩
theorem selection2_2095_checked : selection2_2095.check profile2095 := by decide +kernel

noncomputable def profile2096 : ProfileCell :=
  ⟨(81/110), (14/19),
    [38, 36, 35, 33, 32, 30, 29, 27, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨42, 81⟩, ⟨23, 67⟩, ⟨6, 39⟩, ⟨38, 78⟩, ⟨21, 50⟩, ⟨2, 36⟩, ⟨34, 75⟩, ⟨17, 47⟩, ⟨30, 72⟩, ⟨13, 44⟩, ⟨26, 69⟩, ⟨9, 41⟩, ⟨41, 80⟩, ⟨22, 66⟩, ⟨5, 38⟩, ⟨37, 77⟩, ⟨20, 49⟩, ⟨1, 35⟩, ⟨43, 116⟩, ⟨33, 74⟩, ⟨16, 46⟩, ⟨29, 71⟩, ⟨12, 43⟩, ⟨25, 68⟩, ⟨8, 40⟩, ⟨40, 79⟩, ⟨4, 37⟩, ⟨36, 76⟩, ⟨19, 48⟩, ⟨32, 73⟩, ⟨15, 45⟩, ⟨28, 70⟩, ⟨11, 42⟩, ⟨24, 67⟩, ⟨7, 39⟩, ⟨39, 78⟩, ⟨3, 36⟩, ⟨35, 75⟩, ⟨18, 47⟩, ⟨31, 72⟩, ⟨14, 44⟩, ⟨27, 69⟩, ⟨10, 41⟩]⟩
theorem profile2096_checked : profile2096.check := by decide +kernel

noncomputable def selection0_2096 : Selection :=
  ⟨0, 3, 2, (418/25), 1475, -102, 152⟩
theorem selection0_2096_checked : selection0_2096.check profile2096 := by decide +kernel

noncomputable def selection1_2096 : Selection :=
  ⟨1, -5, 6, (1607/100), 255, -334, 520⟩
theorem selection1_2096_checked : selection1_2096.check profile2096 := by decide +kernel

noncomputable def selection2_2096 : Selection :=
  ⟨2, -13, 10, (1589/100), 102, -534, 888⟩
theorem selection2_2096_checked : selection2_2096.check profile2096 := by decide +kernel

noncomputable def profile2097 : ProfileCell :=
  ⟨(14/19), (73/99),
    [38, 36, 35, 33, 32, 30, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨10, 42⟩, ⟨27, 70⟩, ⟨6, 39⟩, ⟨23, 67⟩, ⟨42, 81⟩, ⟨2, 36⟩, ⟨21, 50⟩, ⟨38, 78⟩, ⟨17, 47⟩, ⟨34, 75⟩, ⟨13, 44⟩, ⟨30, 72⟩, ⟨9, 41⟩, ⟨26, 69⟩, ⟨5, 38⟩, ⟨22, 66⟩, ⟨41, 80⟩, ⟨1, 35⟩, ⟨20, 49⟩, ⟨37, 77⟩, ⟨16, 46⟩, ⟨33, 74⟩, ⟨43, 116⟩, ⟨12, 43⟩, ⟨29, 71⟩, ⟨8, 40⟩, ⟨25, 68⟩, ⟨4, 37⟩, ⟨40, 79⟩, ⟨19, 48⟩, ⟨36, 76⟩, ⟨15, 45⟩, ⟨32, 73⟩, ⟨11, 42⟩, ⟨28, 70⟩, ⟨7, 39⟩, ⟨24, 67⟩, ⟨3, 36⟩, ⟨39, 78⟩, ⟨18, 47⟩, ⟨35, 75⟩, ⟨14, 44⟩, ⟨31, 72⟩]⟩
theorem profile2097_checked : profile2097.check := by decide +kernel

noncomputable def selection0_2097 : Selection :=
  ⟨0, 2, 2, (1481/100), 1450, -186, 266⟩
theorem selection0_2097_checked : selection0_2097.check profile2097 := by decide +kernel

noncomputable def selection1_2097 : Selection :=
  ⟨1, -6, 6, (354/25), 250, -418, 634⟩
theorem selection1_2097_checked : selection1_2097.check profile2097 := by decide +kernel

noncomputable def selection2_2097 : Selection :=
  ⟨2, -14, 10, (1399/100), 100, -618, 1002⟩
theorem selection2_2097_checked : selection2_2097.check profile2097 := by decide +kernel

noncomputable def profile2098 : ProfileCell :=
  ⟨(73/99), (45/61),
    [38, 36, 35, 33, 32, 30, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨31, 73⟩, ⟨10, 42⟩, ⟨27, 70⟩, ⟨6, 39⟩, ⟨23, 67⟩, ⟨42, 81⟩, ⟨2, 36⟩, ⟨21, 50⟩, ⟨38, 78⟩, ⟨17, 47⟩, ⟨34, 75⟩, ⟨13, 44⟩, ⟨30, 72⟩, ⟨9, 41⟩, ⟨26, 69⟩, ⟨5, 38⟩, ⟨22, 66⟩, ⟨41, 80⟩, ⟨1, 35⟩, ⟨20, 49⟩, ⟨37, 77⟩, ⟨16, 46⟩, ⟨33, 74⟩, ⟨12, 43⟩, ⟨43, 116⟩, ⟨29, 71⟩, ⟨8, 40⟩, ⟨25, 68⟩, ⟨4, 37⟩, ⟨40, 79⟩, ⟨19, 48⟩, ⟨36, 76⟩, ⟨15, 45⟩, ⟨32, 73⟩, ⟨11, 42⟩, ⟨28, 70⟩, ⟨7, 39⟩, ⟨24, 67⟩, ⟨3, 36⟩, ⟨39, 78⟩, ⟨18, 47⟩, ⟨35, 75⟩, ⟨14, 44⟩]⟩
theorem profile2098_checked : profile2098.check := by decide +kernel

noncomputable def selection0_2098 : Selection :=
  ⟨0, 2, 2, (1481/100), 902, 106, -130⟩
theorem selection0_2098_checked : selection0_2098.check profile2098 := by decide +kernel

noncomputable def selection1_2098 : Selection :=
  ⟨1, -6, 6, (709/50), 156, -126, 238⟩
theorem selection1_2098_checked : selection1_2098.check profile2098 := by decide +kernel

noncomputable def selection2_2098 : Selection :=
  ⟨2, -14, 10, (701/50), 62, -326, 606⟩
theorem selection2_2098_checked : selection2_2098.check profile2098 := by decide +kernel

noncomputable def profile2099 : ProfileCell :=
  ⟨(45/61), (76/103),
    [38, 36, 35, 33, 32, 30, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨14, 45⟩, ⟨31, 73⟩, ⟨10, 42⟩, ⟨27, 70⟩, ⟨6, 39⟩, ⟨23, 67⟩, ⟨2, 36⟩, ⟨42, 81⟩, ⟨21, 50⟩, ⟨38, 78⟩, ⟨17, 47⟩, ⟨34, 75⟩, ⟨13, 44⟩, ⟨30, 72⟩, ⟨9, 41⟩, ⟨26, 69⟩, ⟨5, 38⟩, ⟨22, 66⟩, ⟨1, 35⟩, ⟨41, 80⟩, ⟨20, 49⟩, ⟨37, 77⟩, ⟨16, 46⟩, ⟨33, 74⟩, ⟨12, 43⟩, ⟨29, 71⟩, ⟨43, 116⟩, ⟨8, 40⟩, ⟨25, 68⟩, ⟨4, 37⟩, ⟨40, 79⟩, ⟨19, 48⟩, ⟨36, 76⟩, ⟨15, 45⟩, ⟨32, 73⟩, ⟨11, 42⟩, ⟨28, 70⟩, ⟨7, 39⟩, ⟨24, 67⟩, ⟨3, 36⟩, ⟨39, 78⟩, ⟨18, 47⟩, ⟨35, 75⟩]⟩
theorem profile2099_checked : profile2099.check := by decide +kernel

noncomputable def selection0_2099 : Selection :=
  ⟨0, 2, 2, (1481/100), 434, -164, 236⟩
theorem selection0_2099_checked : selection0_2099.check profile2099 := by decide +kernel

noncomputable def selection1_2099 : Selection :=
  ⟨1, -6, 6, (1421/100), 75, -396, 604⟩
theorem selection1_2099_checked : selection1_2099.check profile2099 := by decide +kernel

noncomputable def selection2_2099 : Selection :=
  ⟨2, -14, 10, (281/20), 30, -596, 972⟩
theorem selection2_2099_checked : selection2_2099.check profile2099 := by decide +kernel

noncomputable def profile2100 : ProfileCell :=
  ⟨(76/103), (31/42),
    [38, 36, 35, 33, 32, 30, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨35, 76⟩, ⟨14, 45⟩, ⟨31, 73⟩, ⟨10, 42⟩, ⟨27, 70⟩, ⟨6, 39⟩, ⟨23, 67⟩, ⟨2, 36⟩, ⟨42, 81⟩, ⟨21, 50⟩, ⟨38, 78⟩, ⟨17, 47⟩, ⟨34, 75⟩, ⟨13, 44⟩, ⟨30, 72⟩, ⟨9, 41⟩, ⟨26, 69⟩, ⟨5, 38⟩, ⟨22, 66⟩, ⟨1, 35⟩, ⟨41, 80⟩, ⟨20, 49⟩, ⟨37, 77⟩, ⟨16, 46⟩, ⟨33, 74⟩, ⟨12, 43⟩, ⟨29, 71⟩, ⟨8, 40⟩, ⟨43, 116⟩, ⟨25, 68⟩, ⟨4, 37⟩, ⟨40, 79⟩, ⟨19, 48⟩, ⟨36, 76⟩, ⟨15, 45⟩, ⟨32, 73⟩, ⟨11, 42⟩, ⟨28, 70⟩, ⟨7, 39⟩, ⟨24, 67⟩, ⟨3, 36⟩, ⟨39, 78⟩, ⟨18, 47⟩]⟩
theorem profile2100_checked : profile2100.check := by decide +kernel

noncomputable def selection0_2100 : Selection :=
  ⟨0, 2, 2, (1481/100), 629, 140, -176⟩
theorem selection0_2100_checked : selection0_2100.check profile2100 := by decide +kernel

noncomputable def selection1_2100 : Selection :=
  ⟨1, -6, 6, (711/50), 109, -92, 192⟩
theorem selection1_2100_checked : selection1_2100.check profile2100 := by decide +kernel

noncomputable def selection2_2100 : Selection :=
  ⟨2, -14, 10, (1407/100), 44, -292, 560⟩
theorem selection2_2100_checked : selection2_2100.check profile2100 := by decide +kernel

noncomputable def profile2101 : ProfileCell :=
  ⟨(31/42), (79/107),
    [38, 36, 35, 33, 32, 31, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨14, 45⟩, ⟨35, 76⟩, ⟨10, 42⟩, ⟨31, 73⟩, ⟨6, 39⟩, ⟨27, 70⟩, ⟨2, 36⟩, ⟨23, 67⟩, ⟨21, 50⟩, ⟨42, 81⟩, ⟨17, 47⟩, ⟨38, 78⟩, ⟨13, 44⟩, ⟨34, 75⟩, ⟨9, 41⟩, ⟨30, 72⟩, ⟨5, 38⟩, ⟨26, 69⟩, ⟨1, 35⟩, ⟨22, 66⟩, ⟨20, 49⟩, ⟨41, 80⟩, ⟨16, 46⟩, ⟨37, 77⟩, ⟨12, 43⟩, ⟨33, 74⟩, ⟨8, 40⟩, ⟨29, 71⟩, ⟨43, 116⟩, ⟨4, 37⟩, ⟨25, 68⟩, ⟨19, 48⟩, ⟨40, 79⟩, ⟨15, 45⟩, ⟨36, 76⟩, ⟨11, 42⟩, ⟨32, 73⟩, ⟨7, 39⟩, ⟨28, 70⟩, ⟨3, 36⟩, ⟨24, 67⟩, ⟨18, 47⟩, ⟨39, 78⟩]⟩
theorem profile2101_checked : profile2101.check := by decide +kernel

noncomputable def selection0_2101 : Selection :=
  ⟨0, 1, 2, (64/5), 523, -77, 118⟩
theorem selection0_2101_checked : selection0_2101.check profile2101 := by decide +kernel

noncomputable def selection1_2101 : Selection :=
  ⟨1, -7, 6, (49/4), 91, -309, 486⟩
theorem selection1_2101_checked : selection1_2101.check profile2101 := by decide +kernel

noncomputable def selection2_2101 : Selection :=
  ⟨2, -15, 10, (1211/100), 36, -509, 854⟩
theorem selection2_2101_checked : selection2_2101.check profile2101 := by decide +kernel

noncomputable def profile2102 : ProfileCell :=
  ⟨(79/107), (48/65),
    [38, 36, 35, 33, 32, 31, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨39, 79⟩, ⟨14, 45⟩, ⟨35, 76⟩, ⟨10, 42⟩, ⟨31, 73⟩, ⟨6, 39⟩, ⟨27, 70⟩, ⟨2, 36⟩, ⟨23, 67⟩, ⟨21, 50⟩, ⟨42, 81⟩, ⟨17, 47⟩, ⟨38, 78⟩, ⟨13, 44⟩, ⟨34, 75⟩, ⟨9, 41⟩, ⟨30, 72⟩, ⟨5, 38⟩, ⟨26, 69⟩, ⟨1, 35⟩, ⟨22, 66⟩, ⟨20, 49⟩, ⟨41, 80⟩, ⟨16, 46⟩, ⟨37, 77⟩, ⟨12, 43⟩, ⟨33, 74⟩, ⟨8, 40⟩, ⟨29, 71⟩, ⟨4, 37⟩, ⟨43, 116⟩, ⟨25, 68⟩, ⟨19, 48⟩, ⟨40, 79⟩, ⟨15, 45⟩, ⟨36, 76⟩, ⟨11, 42⟩, ⟨32, 73⟩, ⟨7, 39⟩, ⟨28, 70⟩, ⟨3, 36⟩, ⟨24, 67⟩, ⟨18, 47⟩]⟩
theorem profile2102_checked : profile2102.check := by decide +kernel

noncomputable def selection0_2102 : Selection :=
  ⟨0, 1, 2, (64/5), 338, 397, -524⟩
theorem selection0_2102_checked : selection0_2102.check profile2102 := by decide +kernel

noncomputable def selection1_2102 : Selection :=
  ⟨1, -7, 6, (49/4), 59, 165, -156⟩
theorem selection1_2102_checked : selection1_2102.check profile2102 := by decide +kernel

noncomputable def selection2_2102 : Selection :=
  ⟨2, -15, 10, (1211/100), 24, -35, 212⟩
theorem selection2_2102_checked : selection2_2102.check profile2102 := by decide +kernel

noncomputable def profile2103 : ProfileCell :=
  ⟨(48/65), (17/23),
    [38, 36, 35, 33, 32, 31, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨18, 48⟩, ⟨39, 79⟩, ⟨14, 45⟩, ⟨35, 76⟩, ⟨10, 42⟩, ⟨31, 73⟩, ⟨6, 39⟩, ⟨27, 70⟩, ⟨2, 36⟩, ⟨23, 67⟩, ⟨21, 50⟩, ⟨42, 81⟩, ⟨17, 47⟩, ⟨38, 78⟩, ⟨13, 44⟩, ⟨34, 75⟩, ⟨9, 41⟩, ⟨30, 72⟩, ⟨5, 38⟩, ⟨26, 69⟩, ⟨1, 35⟩, ⟨22, 66⟩, ⟨20, 49⟩, ⟨41, 80⟩, ⟨16, 46⟩, ⟨37, 77⟩, ⟨12, 43⟩, ⟨33, 74⟩, ⟨8, 40⟩, ⟨29, 71⟩, ⟨4, 37⟩, ⟨25, 68⟩, ⟨43, 116⟩, ⟨19, 48⟩, ⟨40, 79⟩, ⟨15, 45⟩, ⟨36, 76⟩, ⟨11, 42⟩, ⟨32, 73⟩, ⟨7, 39⟩, ⟨28, 70⟩, ⟨3, 36⟩, ⟨24, 67⟩]⟩
theorem profile2103_checked : profile2103.check := by decide +kernel

noncomputable def selection0_2103 : Selection :=
  ⟨0, 1, 2, (637/50), 1562, 109, -134⟩
theorem selection0_2103_checked : selection0_2103.check profile2103 := by decide +kernel

noncomputable def selection1_2103 : Selection :=
  ⟨1, -7, 6, (1229/100), 272, -123, 234⟩
theorem selection1_2103_checked : selection1_2103.check profile2103 := by decide +kernel

noncomputable def selection2_2103 : Selection :=
  ⟨2, -15, 10, (1219/100), 109, -323, 602⟩
theorem selection2_2103_checked : selection2_2103.check profile2103 := by decide +kernel

noncomputable def profile2104 : ProfileCell :=
  ⟨(17/23), (71/96),
    [38, 36, 35, 34, 32, 31, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨24, 68⟩, ⟨18, 48⟩, ⟨14, 45⟩, ⟨39, 79⟩, ⟨10, 42⟩, ⟨35, 76⟩, ⟨6, 39⟩, ⟨31, 73⟩, ⟨2, 36⟩, ⟨27, 70⟩, ⟨21, 50⟩, ⟨23, 67⟩, ⟨17, 47⟩, ⟨42, 81⟩, ⟨13, 44⟩, ⟨38, 78⟩, ⟨9, 41⟩, ⟨34, 75⟩, ⟨5, 38⟩, ⟨30, 72⟩, ⟨1, 35⟩, ⟨26, 69⟩, ⟨20, 49⟩, ⟨22, 66⟩, ⟨16, 46⟩, ⟨41, 80⟩, ⟨12, 43⟩, ⟨37, 77⟩, ⟨8, 40⟩, ⟨33, 74⟩, ⟨4, 37⟩, ⟨29, 71⟩, ⟨25, 68⟩, ⟨19, 48⟩, ⟨43, 116⟩, ⟨15, 45⟩, ⟨40, 79⟩, ⟨11, 42⟩, ⟨36, 76⟩, ⟨7, 39⟩, ⟨32, 73⟩, ⟨3, 36⟩, ⟨28, 70⟩]⟩
theorem profile2104_checked : profile2104.check := by decide +kernel

noncomputable def selection0_2104 : Selection :=
  ⟨0, 0, 2, (267/25), 885, 41, -42⟩
theorem selection0_2104_checked : selection0_2104.check profile2104 := by decide +kernel

noncomputable def selection1_2104 : Selection :=
  ⟨1, -8, 6, (1033/100), 155, -191, 326⟩
theorem selection1_2104_checked : selection1_2104.check profile2104 := by decide +kernel

noncomputable def selection2_2104 : Selection :=
  ⟨2, -16, 10, (256/25), 62, -391, 694⟩
theorem selection2_2104_checked : selection2_2104.check profile2104 := by decide +kernel

noncomputable def profile2105 : ProfileCell :=
  ⟨(71/96), (37/50),
    [38, 36, 35, 34, 32, 31, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 36, 37, 38],
    [⟨28, 71⟩, ⟨24, 68⟩, ⟨18, 48⟩, ⟨14, 45⟩, ⟨39, 79⟩, ⟨10, 42⟩, ⟨35, 76⟩, ⟨6, 39⟩, ⟨31, 73⟩, ⟨2, 36⟩, ⟨27, 70⟩, ⟨21, 50⟩, ⟨23, 67⟩, ⟨17, 47⟩, ⟨42, 81⟩, ⟨13, 44⟩, ⟨38, 78⟩, ⟨9, 41⟩, ⟨34, 75⟩, ⟨5, 38⟩, ⟨30, 72⟩, ⟨1, 35⟩, ⟨26, 69⟩, ⟨20, 49⟩, ⟨22, 66⟩, ⟨16, 46⟩, ⟨41, 80⟩, ⟨12, 43⟩, ⟨37, 77⟩, ⟨8, 40⟩, ⟨33, 74⟩, ⟨4, 37⟩, ⟨29, 71⟩, ⟨25, 68⟩, ⟨19, 48⟩, ⟨15, 45⟩, ⟨43, 116⟩, ⟨40, 79⟩, ⟨11, 42⟩, ⟨36, 76⟩, ⟨7, 39⟩, ⟨32, 73⟩, ⟨3, 36⟩]⟩
theorem profile2105_checked : profile2105.check := by decide +kernel

noncomputable def selection0_2105 : Selection :=
  ⟨0, 0, 2, (1067/100), 813, 325, -426⟩
theorem selection0_2105_checked : selection0_2105.check profile2105 := by decide +kernel

noncomputable def selection1_2105 : Selection :=
  ⟨1, -8, 6, (1033/100), 143, 93, -58⟩
theorem selection1_2105_checked : selection1_2105.check profile2105 := by decide +kernel

noncomputable def selection2_2105 : Selection :=
  ⟨2, -16, 10, (1027/100), 58, -107, 310⟩
theorem selection2_2105_checked : selection2_2105.check profile2105 := by decide +kernel

noncomputable def profile2106 : ProfileCell :=
  ⟨(37/50), (77/104),
    [38, 37, 35, 34, 32, 31, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 37, 37, 38],
    [⟨3, 37⟩, ⟨32, 74⟩, ⟨28, 71⟩, ⟨24, 68⟩, ⟨18, 48⟩, ⟨14, 45⟩, ⟨10, 42⟩, ⟨39, 79⟩, ⟨6, 39⟩, ⟨35, 76⟩, ⟨2, 36⟩, ⟨31, 73⟩, ⟨27, 70⟩, ⟨21, 50⟩, ⟨23, 67⟩, ⟨17, 47⟩, ⟨13, 44⟩, ⟨42, 81⟩, ⟨9, 41⟩, ⟨38, 78⟩, ⟨5, 38⟩, ⟨34, 75⟩, ⟨1, 35⟩, ⟨30, 72⟩, ⟨26, 69⟩, ⟨20, 49⟩, ⟨22, 66⟩, ⟨16, 46⟩, ⟨12, 43⟩, ⟨41, 80⟩, ⟨8, 40⟩, ⟨37, 77⟩, ⟨4, 37⟩, ⟨33, 74⟩, ⟨29, 71⟩, ⟨25, 68⟩, ⟨19, 48⟩, ⟨15, 45⟩, ⟨11, 42⟩, ⟨40, 79⟩, ⟨43, 116⟩, ⟨7, 39⟩, ⟨36, 76⟩]⟩
theorem profile2106_checked : profile2106.check := by decide +kernel

noncomputable def selection0_2106 : Selection :=
  ⟨0, 1, 2, (251/20), 882, 436, -576⟩
theorem selection0_2106_checked : selection0_2106.check profile2106 := by decide +kernel

noncomputable def selection1_2106 : Selection :=
  ⟨1, -7, 6, (1233/100), 157, 204, -208⟩
theorem selection1_2106_checked : selection1_2106.check profile2106 := by decide +kernel

noncomputable def selection2_2106 : Selection :=
  ⟨2, -15, 10, (307/25), 63, 4, 160⟩
theorem selection2_2106_checked : selection2_2106.check profile2106 := by decide +kernel

noncomputable def profile2107 : ProfileCell :=
  ⟨(77/104), (117/158),
    [38, 37, 35, 34, 32, 31, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 37, 37, 38],
    [⟨36, 77⟩, ⟨3, 37⟩, ⟨32, 74⟩, ⟨28, 71⟩, ⟨24, 68⟩, ⟨18, 48⟩, ⟨14, 45⟩, ⟨10, 42⟩, ⟨39, 79⟩, ⟨6, 39⟩, ⟨35, 76⟩, ⟨2, 36⟩, ⟨31, 73⟩, ⟨27, 70⟩, ⟨21, 50⟩, ⟨23, 67⟩, ⟨17, 47⟩, ⟨13, 44⟩, ⟨42, 81⟩, ⟨9, 41⟩, ⟨38, 78⟩, ⟨5, 38⟩, ⟨34, 75⟩, ⟨1, 35⟩, ⟨30, 72⟩, ⟨26, 69⟩, ⟨20, 49⟩, ⟨22, 66⟩, ⟨16, 46⟩, ⟨12, 43⟩, ⟨41, 80⟩, ⟨8, 40⟩, ⟨37, 77⟩, ⟨4, 37⟩, ⟨33, 74⟩, ⟨29, 71⟩, ⟨25, 68⟩, ⟨19, 48⟩, ⟨15, 45⟩, ⟨11, 42⟩, ⟨40, 79⟩, ⟨7, 39⟩, ⟨43, 116⟩]⟩
theorem profile2107_checked : profile2107.check := by decide +kernel

noncomputable def selection0_2107 : Selection :=
  ⟨0, 1, 2, (1239/100), 276, 898, -1200⟩
theorem selection0_2107_checked : selection0_2107.check profile2107 := by decide +kernel

noncomputable def selection1_2107 : Selection :=
  ⟨1, -7, 6, (123/10), 50, 666, -832⟩
theorem selection1_2107_checked : selection1_2107.check profile2107 := by decide +kernel

noncomputable def selection2_2107 : Selection :=
  ⟨2, -15, 10, (307/25), 20, 466, -464⟩
theorem selection2_2107_checked : selection2_2107.check profile2107 := by decide +kernel

noncomputable def profile2108 : ProfileCell :=
  ⟨(117/158), (20/27),
    [38, 37, 35, 34, 32, 31, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 37, 37, 38],
    [⟨43, 117⟩, ⟨36, 77⟩, ⟨3, 37⟩, ⟨32, 74⟩, ⟨28, 71⟩, ⟨24, 68⟩, ⟨18, 48⟩, ⟨14, 45⟩, ⟨10, 42⟩, ⟨39, 79⟩, ⟨6, 39⟩, ⟨35, 76⟩, ⟨2, 36⟩, ⟨31, 73⟩, ⟨27, 70⟩, ⟨21, 50⟩, ⟨23, 67⟩, ⟨17, 47⟩, ⟨13, 44⟩, ⟨42, 81⟩, ⟨9, 41⟩, ⟨38, 78⟩, ⟨5, 38⟩, ⟨34, 75⟩, ⟨1, 35⟩, ⟨30, 72⟩, ⟨26, 69⟩, ⟨20, 49⟩, ⟨22, 66⟩, ⟨16, 46⟩, ⟨12, 43⟩, ⟨41, 80⟩, ⟨8, 40⟩, ⟨37, 77⟩, ⟨4, 37⟩, ⟨33, 74⟩, ⟨29, 71⟩, ⟨25, 68⟩, ⟨19, 48⟩, ⟨15, 45⟩, ⟨11, 42⟩, ⟨40, 79⟩, ⟨7, 39⟩]⟩
theorem profile2108_checked : profile2108.check := by decide +kernel

noncomputable def selection0_2108 : Selection :=
  ⟨0, 1, 2, (1243/100), 532, -623, 854⟩
theorem selection0_2108_checked : selection0_2108.check profile2108 := by decide +kernel

noncomputable def selection1_2108 : Selection :=
  ⟨1, -7, 6, (309/25), 96, -855, 1222⟩
theorem selection1_2108_checked : selection1_2108.check profile2108 := by decide +kernel

noncomputable def selection2_2108 : Selection :=
  ⟨2, -15, 10, (617/50), 39, -1055, 1590⟩
theorem selection2_2108_checked : selection2_2108.check profile2108 := by decide +kernel

noncomputable def profile2109 : ProfileCell :=
  ⟨(20/27), (43/58),
    [38, 37, 35, 34, 32, 31, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 37, 37, 38],
    [⟨7, 40⟩, ⟨40, 80⟩, ⟨3, 37⟩, ⟨36, 77⟩, ⟨43, 117⟩, ⟨32, 74⟩, ⟨28, 71⟩, ⟨18, 48⟩, ⟨24, 68⟩, ⟨14, 45⟩, ⟨10, 42⟩, ⟨6, 39⟩, ⟨39, 79⟩, ⟨2, 36⟩, ⟨35, 76⟩, ⟨31, 73⟩, ⟨21, 50⟩, ⟨27, 70⟩, ⟨17, 47⟩, ⟨23, 67⟩, ⟨13, 44⟩, ⟨9, 41⟩, ⟨42, 81⟩, ⟨5, 38⟩, ⟨38, 78⟩, ⟨1, 35⟩, ⟨34, 75⟩, ⟨30, 72⟩, ⟨20, 49⟩, ⟨26, 69⟩, ⟨16, 46⟩, ⟨22, 66⟩, ⟨12, 43⟩, ⟨8, 40⟩, ⟨41, 80⟩, ⟨4, 37⟩, ⟨37, 77⟩, ⟨33, 74⟩, ⟨29, 71⟩, ⟨19, 48⟩, ⟨25, 68⟩, ⟨15, 45⟩, ⟨11, 42⟩]⟩
theorem profile2109_checked : profile2109.check := by decide +kernel

noncomputable def selection0_2109 : Selection :=
  ⟨0, 1, 2, (1289/100), 1499, -783, 1070⟩
theorem selection0_2109_checked : selection0_2109.check profile2109 := by decide +kernel

noncomputable def selection1_2109 : Selection :=
  ⟨1, -7, 6, (631/50), 266, -1015, 1438⟩
theorem selection1_2109_checked : selection1_2109.check profile2109 := by decide +kernel

noncomputable def selection2_2109 : Selection :=
  ⟨2, -15, 10, (251/20), 107, -1215, 1806⟩
theorem selection2_2109_checked : selection2_2109.check profile2109 := by decide +kernel

noncomputable def profile2110 : ProfileCell :=
  ⟨(43/58), (23/31),
    [38, 37, 35, 34, 32, 31, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 37, 37, 38],
    [⟨11, 43⟩, ⟨7, 40⟩, ⟨3, 37⟩, ⟨40, 80⟩, ⟨36, 77⟩, ⟨32, 74⟩, ⟨43, 117⟩, ⟨28, 71⟩, ⟨18, 48⟩, ⟨24, 68⟩, ⟨14, 45⟩, ⟨10, 42⟩, ⟨6, 39⟩, ⟨2, 36⟩, ⟨39, 79⟩, ⟨35, 76⟩, ⟨31, 73⟩, ⟨21, 50⟩, ⟨27, 70⟩, ⟨17, 47⟩, ⟨23, 67⟩, ⟨13, 44⟩, ⟨9, 41⟩, ⟨5, 38⟩, ⟨42, 81⟩, ⟨1, 35⟩, ⟨38, 78⟩, ⟨34, 75⟩, ⟨30, 72⟩, ⟨20, 49⟩, ⟨26, 69⟩, ⟨16, 46⟩, ⟨22, 66⟩, ⟨12, 43⟩, ⟨8, 40⟩, ⟨4, 37⟩, ⟨41, 80⟩, ⟨37, 77⟩, ⟨33, 74⟩, ⟨29, 71⟩, ⟨19, 48⟩, ⟨25, 68⟩, ⟨15, 45⟩]⟩
theorem profile2110_checked : profile2110.check := by decide +kernel

noncomputable def selection0_2110 : Selection :=
  ⟨0, 1, 2, (67/5), 1355, -998, 1360⟩
theorem selection0_2110_checked : selection0_2110.check profile2110 := by decide +kernel

noncomputable def selection1_2110 : Selection :=
  ⟨1, -7, 6, (1289/100), 237, -1230, 1728⟩
theorem selection1_2110_checked : selection1_2110.check profile2110 := by decide +kernel

noncomputable def selection2_2110 : Selection :=
  ⟨2, -15, 10, (319/25), 95, -1430, 2096⟩
theorem selection2_2110_checked : selection2_2110.check profile2110 := by decide +kernel

noncomputable def profile2111 : ProfileCell :=
  ⟨(23/31), (72/97),
    [38, 37, 35, 34, 32, 31, 29, 28, 26, 25, 23, 22, 20, 19, 17, 16], [35, 36, 37, 37, 38],
    [⟨15, 46⟩, ⟨25, 69⟩, ⟨11, 43⟩, ⟨7, 40⟩, ⟨3, 37⟩, ⟨40, 80⟩, ⟨36, 77⟩, ⟨32, 74⟩, ⟨18, 48⟩, ⟨28, 71⟩, ⟨43, 117⟩, ⟨14, 45⟩, ⟨24, 68⟩, ⟨10, 42⟩, ⟨6, 39⟩, ⟨2, 36⟩, ⟨39, 79⟩, ⟨35, 76⟩, ⟨21, 50⟩, ⟨31, 73⟩, ⟨17, 47⟩, ⟨27, 70⟩, ⟨13, 44⟩, ⟨23, 67⟩, ⟨9, 41⟩, ⟨5, 38⟩, ⟨1, 35⟩, ⟨42, 81⟩, ⟨38, 78⟩, ⟨34, 75⟩, ⟨20, 49⟩, ⟨30, 72⟩, ⟨16, 46⟩, ⟨26, 69⟩, ⟨12, 43⟩, ⟨22, 66⟩, ⟨8, 40⟩, ⟨4, 37⟩, ⟨41, 80⟩, ⟨37, 77⟩, ⟨33, 74⟩, ⟨19, 48⟩, ⟨29, 71⟩]⟩
theorem profile2111_checked : profile2111.check := by decide +kernel

noncomputable def selection0_2111 : Selection :=
  ⟨0, 1, 2, (1373/100), 830, -1090, 1484⟩
theorem selection0_2111_checked : selection0_2111.check profile2111 := by decide +kernel

noncomputable def selection1_2111 : Selection :=
  ⟨1, -7, 6, (1307/100), 144, -1322, 1852⟩
theorem selection1_2111_checked : selection1_2111.check profile2111 := by decide +kernel

noncomputable def selection2_2111 : Selection :=
  ⟨2, -15, 10, (1289/100), 58, -1522, 2220⟩
theorem selection2_2111_checked : selection2_2111.check profile2111 := by decide +kernel

noncomputable def leaf0_2048 : Block :=
  Block.single profile2048 selection0_2048 profile2048_checked selection0_2048_checked
noncomputable def leaf0_2049 : Block :=
  Block.single profile2049 selection0_2049 profile2049_checked selection0_2049_checked
noncomputable def leaf0_2050 : Block :=
  Block.single profile2050 selection0_2050 profile2050_checked selection0_2050_checked
noncomputable def leaf0_2051 : Block :=
  Block.single profile2051 selection0_2051 profile2051_checked selection0_2051_checked
noncomputable def leaf0_2052 : Block :=
  Block.single profile2052 selection0_2052 profile2052_checked selection0_2052_checked
noncomputable def leaf0_2053 : Block :=
  Block.single profile2053 selection0_2053 profile2053_checked selection0_2053_checked
noncomputable def leaf0_2054 : Block :=
  Block.single profile2054 selection0_2054 profile2054_checked selection0_2054_checked
noncomputable def leaf0_2055 : Block :=
  Block.single profile2055 selection0_2055 profile2055_checked selection0_2055_checked
noncomputable def leaf0_2056 : Block :=
  Block.single profile2056 selection0_2056 profile2056_checked selection0_2056_checked
noncomputable def leaf0_2057 : Block :=
  Block.single profile2057 selection0_2057 profile2057_checked selection0_2057_checked
noncomputable def leaf0_2058 : Block :=
  Block.single profile2058 selection0_2058 profile2058_checked selection0_2058_checked
noncomputable def leaf0_2059 : Block :=
  Block.single profile2059 selection0_2059 profile2059_checked selection0_2059_checked
noncomputable def leaf0_2060 : Block :=
  Block.single profile2060 selection0_2060 profile2060_checked selection0_2060_checked
noncomputable def leaf0_2061 : Block :=
  Block.single profile2061 selection0_2061 profile2061_checked selection0_2061_checked
noncomputable def leaf0_2062 : Block :=
  Block.single profile2062 selection0_2062 profile2062_checked selection0_2062_checked
noncomputable def leaf0_2063 : Block :=
  Block.single profile2063 selection0_2063 profile2063_checked selection0_2063_checked
noncomputable def leaf0_2064 : Block :=
  Block.single profile2064 selection0_2064 profile2064_checked selection0_2064_checked
noncomputable def leaf0_2065 : Block :=
  Block.single profile2065 selection0_2065 profile2065_checked selection0_2065_checked
noncomputable def leaf0_2066 : Block :=
  Block.single profile2066 selection0_2066 profile2066_checked selection0_2066_checked
noncomputable def leaf0_2067 : Block :=
  Block.single profile2067 selection0_2067 profile2067_checked selection0_2067_checked
noncomputable def leaf0_2068 : Block :=
  Block.single profile2068 selection0_2068 profile2068_checked selection0_2068_checked
noncomputable def leaf0_2069 : Block :=
  Block.single profile2069 selection0_2069 profile2069_checked selection0_2069_checked
noncomputable def leaf0_2070 : Block :=
  Block.single profile2070 selection0_2070 profile2070_checked selection0_2070_checked
noncomputable def leaf0_2071 : Block :=
  Block.single profile2071 selection0_2071 profile2071_checked selection0_2071_checked
noncomputable def leaf0_2072 : Block :=
  Block.single profile2072 selection0_2072 profile2072_checked selection0_2072_checked
noncomputable def leaf0_2073 : Block :=
  Block.single profile2073 selection0_2073 profile2073_checked selection0_2073_checked
noncomputable def leaf0_2074 : Block :=
  Block.single profile2074 selection0_2074 profile2074_checked selection0_2074_checked
noncomputable def leaf0_2075 : Block :=
  Block.single profile2075 selection0_2075 profile2075_checked selection0_2075_checked
noncomputable def leaf0_2076 : Block :=
  Block.single profile2076 selection0_2076 profile2076_checked selection0_2076_checked
noncomputable def leaf0_2077 : Block :=
  Block.single profile2077 selection0_2077 profile2077_checked selection0_2077_checked
noncomputable def leaf0_2078 : Block :=
  Block.single profile2078 selection0_2078 profile2078_checked selection0_2078_checked
noncomputable def leaf0_2079 : Block :=
  Block.single profile2079 selection0_2079 profile2079_checked selection0_2079_checked
noncomputable def leaf0_2080 : Block :=
  Block.single profile2080 selection0_2080 profile2080_checked selection0_2080_checked
noncomputable def leaf0_2081 : Block :=
  Block.single profile2081 selection0_2081 profile2081_checked selection0_2081_checked
noncomputable def leaf0_2082 : Block :=
  Block.single profile2082 selection0_2082 profile2082_checked selection0_2082_checked
noncomputable def leaf0_2083 : Block :=
  Block.single profile2083 selection0_2083 profile2083_checked selection0_2083_checked
noncomputable def leaf0_2084 : Block :=
  Block.single profile2084 selection0_2084 profile2084_checked selection0_2084_checked
noncomputable def leaf0_2085 : Block :=
  Block.single profile2085 selection0_2085 profile2085_checked selection0_2085_checked
noncomputable def leaf0_2086 : Block :=
  Block.single profile2086 selection0_2086 profile2086_checked selection0_2086_checked
noncomputable def leaf0_2087 : Block :=
  Block.single profile2087 selection0_2087 profile2087_checked selection0_2087_checked
noncomputable def leaf0_2088 : Block :=
  Block.single profile2088 selection0_2088 profile2088_checked selection0_2088_checked
noncomputable def leaf0_2089 : Block :=
  Block.single profile2089 selection0_2089 profile2089_checked selection0_2089_checked
noncomputable def leaf0_2090 : Block :=
  Block.single profile2090 selection0_2090 profile2090_checked selection0_2090_checked
noncomputable def leaf0_2091 : Block :=
  Block.single profile2091 selection0_2091 profile2091_checked selection0_2091_checked
noncomputable def leaf0_2092 : Block :=
  Block.single profile2092 selection0_2092 profile2092_checked selection0_2092_checked
noncomputable def leaf0_2093 : Block :=
  Block.single profile2093 selection0_2093 profile2093_checked selection0_2093_checked
noncomputable def leaf0_2094 : Block :=
  Block.single profile2094 selection0_2094 profile2094_checked selection0_2094_checked
noncomputable def leaf0_2095 : Block :=
  Block.single profile2095 selection0_2095 profile2095_checked selection0_2095_checked
noncomputable def leaf0_2096 : Block :=
  Block.single profile2096 selection0_2096 profile2096_checked selection0_2096_checked
noncomputable def leaf0_2097 : Block :=
  Block.single profile2097 selection0_2097 profile2097_checked selection0_2097_checked
noncomputable def leaf0_2098 : Block :=
  Block.single profile2098 selection0_2098 profile2098_checked selection0_2098_checked
noncomputable def leaf0_2099 : Block :=
  Block.single profile2099 selection0_2099 profile2099_checked selection0_2099_checked
noncomputable def leaf0_2100 : Block :=
  Block.single profile2100 selection0_2100 profile2100_checked selection0_2100_checked
noncomputable def leaf0_2101 : Block :=
  Block.single profile2101 selection0_2101 profile2101_checked selection0_2101_checked
noncomputable def leaf0_2102 : Block :=
  Block.single profile2102 selection0_2102 profile2102_checked selection0_2102_checked
noncomputable def leaf0_2103 : Block :=
  Block.single profile2103 selection0_2103 profile2103_checked selection0_2103_checked
noncomputable def leaf0_2104 : Block :=
  Block.single profile2104 selection0_2104 profile2104_checked selection0_2104_checked
noncomputable def leaf0_2105 : Block :=
  Block.single profile2105 selection0_2105 profile2105_checked selection0_2105_checked
noncomputable def leaf0_2106 : Block :=
  Block.single profile2106 selection0_2106 profile2106_checked selection0_2106_checked
noncomputable def leaf0_2107 : Block :=
  Block.single profile2107 selection0_2107 profile2107_checked selection0_2107_checked
noncomputable def leaf0_2108 : Block :=
  Block.single profile2108 selection0_2108 profile2108_checked selection0_2108_checked
noncomputable def leaf0_2109 : Block :=
  Block.single profile2109 selection0_2109 profile2109_checked selection0_2109_checked
noncomputable def leaf0_2110 : Block :=
  Block.single profile2110 selection0_2110 profile2110_checked selection0_2110_checked
noncomputable def leaf0_2111 : Block :=
  Block.single profile2111 selection0_2111 profile2111_checked selection0_2111_checked
noncomputable def batch032p0_0_0000 : Block :=
  Block.append leaf0_2048 leaf0_2049 (by decide +kernel)
noncomputable def batch032p0_0_0001 : Block :=
  Block.append leaf0_2050 leaf0_2051 (by decide +kernel)
noncomputable def batch032p0_0_0002 : Block :=
  Block.append leaf0_2052 leaf0_2053 (by decide +kernel)
noncomputable def batch032p0_0_0003 : Block :=
  Block.append leaf0_2054 leaf0_2055 (by decide +kernel)
noncomputable def batch032p0_0_0004 : Block :=
  Block.append leaf0_2056 leaf0_2057 (by decide +kernel)
noncomputable def batch032p0_0_0005 : Block :=
  Block.append leaf0_2058 leaf0_2059 (by decide +kernel)
noncomputable def batch032p0_0_0006 : Block :=
  Block.append leaf0_2060 leaf0_2061 (by decide +kernel)
noncomputable def batch032p0_0_0007 : Block :=
  Block.append leaf0_2062 leaf0_2063 (by decide +kernel)
noncomputable def batch032p0_0_0008 : Block :=
  Block.append leaf0_2064 leaf0_2065 (by decide +kernel)
noncomputable def batch032p0_0_0009 : Block :=
  Block.append leaf0_2066 leaf0_2067 (by decide +kernel)
noncomputable def batch032p0_0_0010 : Block :=
  Block.append leaf0_2068 leaf0_2069 (by decide +kernel)
noncomputable def batch032p0_0_0011 : Block :=
  Block.append leaf0_2070 leaf0_2071 (by decide +kernel)
noncomputable def batch032p0_0_0012 : Block :=
  Block.append leaf0_2072 leaf0_2073 (by decide +kernel)
noncomputable def batch032p0_0_0013 : Block :=
  Block.append leaf0_2074 leaf0_2075 (by decide +kernel)
noncomputable def batch032p0_0_0014 : Block :=
  Block.append leaf0_2076 leaf0_2077 (by decide +kernel)
noncomputable def batch032p0_0_0015 : Block :=
  Block.append leaf0_2078 leaf0_2079 (by decide +kernel)
noncomputable def batch032p0_0_0016 : Block :=
  Block.append leaf0_2080 leaf0_2081 (by decide +kernel)
noncomputable def batch032p0_0_0017 : Block :=
  Block.append leaf0_2082 leaf0_2083 (by decide +kernel)
noncomputable def batch032p0_0_0018 : Block :=
  Block.append leaf0_2084 leaf0_2085 (by decide +kernel)
noncomputable def batch032p0_0_0019 : Block :=
  Block.append leaf0_2086 leaf0_2087 (by decide +kernel)
noncomputable def batch032p0_0_0020 : Block :=
  Block.append leaf0_2088 leaf0_2089 (by decide +kernel)
noncomputable def batch032p0_0_0021 : Block :=
  Block.append leaf0_2090 leaf0_2091 (by decide +kernel)
noncomputable def batch032p0_0_0022 : Block :=
  Block.append leaf0_2092 leaf0_2093 (by decide +kernel)
noncomputable def batch032p0_0_0023 : Block :=
  Block.append leaf0_2094 leaf0_2095 (by decide +kernel)
noncomputable def batch032p0_0_0024 : Block :=
  Block.append leaf0_2096 leaf0_2097 (by decide +kernel)
noncomputable def batch032p0_0_0025 : Block :=
  Block.append leaf0_2098 leaf0_2099 (by decide +kernel)
noncomputable def batch032p0_0_0026 : Block :=
  Block.append leaf0_2100 leaf0_2101 (by decide +kernel)
noncomputable def batch032p0_0_0027 : Block :=
  Block.append leaf0_2102 leaf0_2103 (by decide +kernel)
noncomputable def batch032p0_0_0028 : Block :=
  Block.append leaf0_2104 leaf0_2105 (by decide +kernel)
noncomputable def batch032p0_0_0029 : Block :=
  Block.append leaf0_2106 leaf0_2107 (by decide +kernel)
noncomputable def batch032p0_0_0030 : Block :=
  Block.append leaf0_2108 leaf0_2109 (by decide +kernel)
noncomputable def batch032p0_0_0031 : Block :=
  Block.append leaf0_2110 leaf0_2111 (by decide +kernel)
noncomputable def batch032p0_1_0000 : Block :=
  Block.append batch032p0_0_0000 batch032p0_0_0001 (by decide +kernel)
noncomputable def batch032p0_1_0001 : Block :=
  Block.append batch032p0_0_0002 batch032p0_0_0003 (by decide +kernel)
noncomputable def batch032p0_1_0002 : Block :=
  Block.append batch032p0_0_0004 batch032p0_0_0005 (by decide +kernel)
noncomputable def batch032p0_1_0003 : Block :=
  Block.append batch032p0_0_0006 batch032p0_0_0007 (by decide +kernel)
noncomputable def batch032p0_1_0004 : Block :=
  Block.append batch032p0_0_0008 batch032p0_0_0009 (by decide +kernel)
noncomputable def batch032p0_1_0005 : Block :=
  Block.append batch032p0_0_0010 batch032p0_0_0011 (by decide +kernel)
noncomputable def batch032p0_1_0006 : Block :=
  Block.append batch032p0_0_0012 batch032p0_0_0013 (by decide +kernel)
noncomputable def batch032p0_1_0007 : Block :=
  Block.append batch032p0_0_0014 batch032p0_0_0015 (by decide +kernel)
noncomputable def batch032p0_1_0008 : Block :=
  Block.append batch032p0_0_0016 batch032p0_0_0017 (by decide +kernel)
noncomputable def batch032p0_1_0009 : Block :=
  Block.append batch032p0_0_0018 batch032p0_0_0019 (by decide +kernel)
noncomputable def batch032p0_1_0010 : Block :=
  Block.append batch032p0_0_0020 batch032p0_0_0021 (by decide +kernel)
noncomputable def batch032p0_1_0011 : Block :=
  Block.append batch032p0_0_0022 batch032p0_0_0023 (by decide +kernel)
noncomputable def batch032p0_1_0012 : Block :=
  Block.append batch032p0_0_0024 batch032p0_0_0025 (by decide +kernel)
noncomputable def batch032p0_1_0013 : Block :=
  Block.append batch032p0_0_0026 batch032p0_0_0027 (by decide +kernel)
noncomputable def batch032p0_1_0014 : Block :=
  Block.append batch032p0_0_0028 batch032p0_0_0029 (by decide +kernel)
noncomputable def batch032p0_1_0015 : Block :=
  Block.append batch032p0_0_0030 batch032p0_0_0031 (by decide +kernel)
noncomputable def batch032p0_2_0000 : Block :=
  Block.append batch032p0_1_0000 batch032p0_1_0001 (by decide +kernel)
noncomputable def batch032p0_2_0001 : Block :=
  Block.append batch032p0_1_0002 batch032p0_1_0003 (by decide +kernel)
noncomputable def batch032p0_2_0002 : Block :=
  Block.append batch032p0_1_0004 batch032p0_1_0005 (by decide +kernel)
noncomputable def batch032p0_2_0003 : Block :=
  Block.append batch032p0_1_0006 batch032p0_1_0007 (by decide +kernel)
noncomputable def batch032p0_2_0004 : Block :=
  Block.append batch032p0_1_0008 batch032p0_1_0009 (by decide +kernel)
noncomputable def batch032p0_2_0005 : Block :=
  Block.append batch032p0_1_0010 batch032p0_1_0011 (by decide +kernel)
noncomputable def batch032p0_2_0006 : Block :=
  Block.append batch032p0_1_0012 batch032p0_1_0013 (by decide +kernel)
noncomputable def batch032p0_2_0007 : Block :=
  Block.append batch032p0_1_0014 batch032p0_1_0015 (by decide +kernel)
noncomputable def batch032p0_3_0000 : Block :=
  Block.append batch032p0_2_0000 batch032p0_2_0001 (by decide +kernel)
noncomputable def batch032p0_3_0001 : Block :=
  Block.append batch032p0_2_0002 batch032p0_2_0003 (by decide +kernel)
noncomputable def batch032p0_3_0002 : Block :=
  Block.append batch032p0_2_0004 batch032p0_2_0005 (by decide +kernel)
noncomputable def batch032p0_3_0003 : Block :=
  Block.append batch032p0_2_0006 batch032p0_2_0007 (by decide +kernel)
noncomputable def batch032p0_4_0000 : Block :=
  Block.append batch032p0_3_0000 batch032p0_3_0001 (by decide +kernel)
noncomputable def batch032p0_4_0001 : Block :=
  Block.append batch032p0_3_0002 batch032p0_3_0003 (by decide +kernel)
noncomputable def batch032p0_5_0000 : Block :=
  Block.append batch032p0_4_0000 batch032p0_4_0001 (by decide +kernel)
theorem batch032p0_5_0000_left : batch032p0_5_0000.left = (67/93) := by decide +kernel
theorem batch032p0_5_0000_right : batch032p0_5_0000.right = (72/97) := by decide +kernel
theorem batch032p0_5_0000_units : batch032p0_5_0000.units = 59171 := by decide +kernel
noncomputable def leaf1_2048 : Block :=
  Block.single profile2048 selection1_2048 profile2048_checked selection1_2048_checked
noncomputable def leaf1_2049 : Block :=
  Block.single profile2049 selection1_2049 profile2049_checked selection1_2049_checked
noncomputable def leaf1_2050 : Block :=
  Block.single profile2050 selection1_2050 profile2050_checked selection1_2050_checked
noncomputable def leaf1_2051 : Block :=
  Block.single profile2051 selection1_2051 profile2051_checked selection1_2051_checked
noncomputable def leaf1_2052 : Block :=
  Block.single profile2052 selection1_2052 profile2052_checked selection1_2052_checked
noncomputable def leaf1_2053 : Block :=
  Block.single profile2053 selection1_2053 profile2053_checked selection1_2053_checked
noncomputable def leaf1_2054 : Block :=
  Block.single profile2054 selection1_2054 profile2054_checked selection1_2054_checked
noncomputable def leaf1_2055 : Block :=
  Block.single profile2055 selection1_2055 profile2055_checked selection1_2055_checked
noncomputable def leaf1_2056 : Block :=
  Block.single profile2056 selection1_2056 profile2056_checked selection1_2056_checked
noncomputable def leaf1_2057 : Block :=
  Block.single profile2057 selection1_2057 profile2057_checked selection1_2057_checked
noncomputable def leaf1_2058 : Block :=
  Block.single profile2058 selection1_2058 profile2058_checked selection1_2058_checked
noncomputable def leaf1_2059 : Block :=
  Block.single profile2059 selection1_2059 profile2059_checked selection1_2059_checked
noncomputable def leaf1_2060 : Block :=
  Block.single profile2060 selection1_2060 profile2060_checked selection1_2060_checked
noncomputable def leaf1_2061 : Block :=
  Block.single profile2061 selection1_2061 profile2061_checked selection1_2061_checked
noncomputable def leaf1_2062 : Block :=
  Block.single profile2062 selection1_2062 profile2062_checked selection1_2062_checked
noncomputable def leaf1_2063 : Block :=
  Block.single profile2063 selection1_2063 profile2063_checked selection1_2063_checked
noncomputable def leaf1_2064 : Block :=
  Block.single profile2064 selection1_2064 profile2064_checked selection1_2064_checked
noncomputable def leaf1_2065 : Block :=
  Block.single profile2065 selection1_2065 profile2065_checked selection1_2065_checked
noncomputable def leaf1_2066 : Block :=
  Block.single profile2066 selection1_2066 profile2066_checked selection1_2066_checked
noncomputable def leaf1_2067 : Block :=
  Block.single profile2067 selection1_2067 profile2067_checked selection1_2067_checked
noncomputable def leaf1_2068 : Block :=
  Block.single profile2068 selection1_2068 profile2068_checked selection1_2068_checked
noncomputable def leaf1_2069 : Block :=
  Block.single profile2069 selection1_2069 profile2069_checked selection1_2069_checked
noncomputable def leaf1_2070 : Block :=
  Block.single profile2070 selection1_2070 profile2070_checked selection1_2070_checked
noncomputable def leaf1_2071 : Block :=
  Block.single profile2071 selection1_2071 profile2071_checked selection1_2071_checked
noncomputable def leaf1_2072 : Block :=
  Block.single profile2072 selection1_2072 profile2072_checked selection1_2072_checked
noncomputable def leaf1_2073 : Block :=
  Block.single profile2073 selection1_2073 profile2073_checked selection1_2073_checked
noncomputable def leaf1_2074 : Block :=
  Block.single profile2074 selection1_2074 profile2074_checked selection1_2074_checked
noncomputable def leaf1_2075 : Block :=
  Block.single profile2075 selection1_2075 profile2075_checked selection1_2075_checked
noncomputable def leaf1_2076 : Block :=
  Block.single profile2076 selection1_2076 profile2076_checked selection1_2076_checked
noncomputable def leaf1_2077 : Block :=
  Block.single profile2077 selection1_2077 profile2077_checked selection1_2077_checked
noncomputable def leaf1_2078 : Block :=
  Block.single profile2078 selection1_2078 profile2078_checked selection1_2078_checked
noncomputable def leaf1_2079 : Block :=
  Block.single profile2079 selection1_2079 profile2079_checked selection1_2079_checked
noncomputable def leaf1_2080 : Block :=
  Block.single profile2080 selection1_2080 profile2080_checked selection1_2080_checked
noncomputable def leaf1_2081 : Block :=
  Block.single profile2081 selection1_2081 profile2081_checked selection1_2081_checked
noncomputable def leaf1_2082 : Block :=
  Block.single profile2082 selection1_2082 profile2082_checked selection1_2082_checked
noncomputable def leaf1_2083 : Block :=
  Block.single profile2083 selection1_2083 profile2083_checked selection1_2083_checked
noncomputable def leaf1_2084 : Block :=
  Block.single profile2084 selection1_2084 profile2084_checked selection1_2084_checked
noncomputable def leaf1_2085 : Block :=
  Block.single profile2085 selection1_2085 profile2085_checked selection1_2085_checked
noncomputable def leaf1_2086 : Block :=
  Block.single profile2086 selection1_2086 profile2086_checked selection1_2086_checked
noncomputable def leaf1_2087 : Block :=
  Block.single profile2087 selection1_2087 profile2087_checked selection1_2087_checked
noncomputable def leaf1_2088 : Block :=
  Block.single profile2088 selection1_2088 profile2088_checked selection1_2088_checked
noncomputable def leaf1_2089 : Block :=
  Block.single profile2089 selection1_2089 profile2089_checked selection1_2089_checked
noncomputable def leaf1_2090 : Block :=
  Block.single profile2090 selection1_2090 profile2090_checked selection1_2090_checked
noncomputable def leaf1_2091 : Block :=
  Block.single profile2091 selection1_2091 profile2091_checked selection1_2091_checked
noncomputable def leaf1_2092 : Block :=
  Block.single profile2092 selection1_2092 profile2092_checked selection1_2092_checked
noncomputable def leaf1_2093 : Block :=
  Block.single profile2093 selection1_2093 profile2093_checked selection1_2093_checked
noncomputable def leaf1_2094 : Block :=
  Block.single profile2094 selection1_2094 profile2094_checked selection1_2094_checked
noncomputable def leaf1_2095 : Block :=
  Block.single profile2095 selection1_2095 profile2095_checked selection1_2095_checked
noncomputable def leaf1_2096 : Block :=
  Block.single profile2096 selection1_2096 profile2096_checked selection1_2096_checked
noncomputable def leaf1_2097 : Block :=
  Block.single profile2097 selection1_2097 profile2097_checked selection1_2097_checked
noncomputable def leaf1_2098 : Block :=
  Block.single profile2098 selection1_2098 profile2098_checked selection1_2098_checked
noncomputable def leaf1_2099 : Block :=
  Block.single profile2099 selection1_2099 profile2099_checked selection1_2099_checked
noncomputable def leaf1_2100 : Block :=
  Block.single profile2100 selection1_2100 profile2100_checked selection1_2100_checked
noncomputable def leaf1_2101 : Block :=
  Block.single profile2101 selection1_2101 profile2101_checked selection1_2101_checked
noncomputable def leaf1_2102 : Block :=
  Block.single profile2102 selection1_2102 profile2102_checked selection1_2102_checked
noncomputable def leaf1_2103 : Block :=
  Block.single profile2103 selection1_2103 profile2103_checked selection1_2103_checked
noncomputable def leaf1_2104 : Block :=
  Block.single profile2104 selection1_2104 profile2104_checked selection1_2104_checked
noncomputable def leaf1_2105 : Block :=
  Block.single profile2105 selection1_2105 profile2105_checked selection1_2105_checked
noncomputable def leaf1_2106 : Block :=
  Block.single profile2106 selection1_2106 profile2106_checked selection1_2106_checked
noncomputable def leaf1_2107 : Block :=
  Block.single profile2107 selection1_2107 profile2107_checked selection1_2107_checked
noncomputable def leaf1_2108 : Block :=
  Block.single profile2108 selection1_2108 profile2108_checked selection1_2108_checked
noncomputable def leaf1_2109 : Block :=
  Block.single profile2109 selection1_2109 profile2109_checked selection1_2109_checked
noncomputable def leaf1_2110 : Block :=
  Block.single profile2110 selection1_2110 profile2110_checked selection1_2110_checked
noncomputable def leaf1_2111 : Block :=
  Block.single profile2111 selection1_2111 profile2111_checked selection1_2111_checked
noncomputable def batch032p1_0_0000 : Block :=
  Block.append leaf1_2048 leaf1_2049 (by decide +kernel)
noncomputable def batch032p1_0_0001 : Block :=
  Block.append leaf1_2050 leaf1_2051 (by decide +kernel)
noncomputable def batch032p1_0_0002 : Block :=
  Block.append leaf1_2052 leaf1_2053 (by decide +kernel)
noncomputable def batch032p1_0_0003 : Block :=
  Block.append leaf1_2054 leaf1_2055 (by decide +kernel)
noncomputable def batch032p1_0_0004 : Block :=
  Block.append leaf1_2056 leaf1_2057 (by decide +kernel)
noncomputable def batch032p1_0_0005 : Block :=
  Block.append leaf1_2058 leaf1_2059 (by decide +kernel)
noncomputable def batch032p1_0_0006 : Block :=
  Block.append leaf1_2060 leaf1_2061 (by decide +kernel)
noncomputable def batch032p1_0_0007 : Block :=
  Block.append leaf1_2062 leaf1_2063 (by decide +kernel)
noncomputable def batch032p1_0_0008 : Block :=
  Block.append leaf1_2064 leaf1_2065 (by decide +kernel)
noncomputable def batch032p1_0_0009 : Block :=
  Block.append leaf1_2066 leaf1_2067 (by decide +kernel)
noncomputable def batch032p1_0_0010 : Block :=
  Block.append leaf1_2068 leaf1_2069 (by decide +kernel)
noncomputable def batch032p1_0_0011 : Block :=
  Block.append leaf1_2070 leaf1_2071 (by decide +kernel)
noncomputable def batch032p1_0_0012 : Block :=
  Block.append leaf1_2072 leaf1_2073 (by decide +kernel)
noncomputable def batch032p1_0_0013 : Block :=
  Block.append leaf1_2074 leaf1_2075 (by decide +kernel)
noncomputable def batch032p1_0_0014 : Block :=
  Block.append leaf1_2076 leaf1_2077 (by decide +kernel)
noncomputable def batch032p1_0_0015 : Block :=
  Block.append leaf1_2078 leaf1_2079 (by decide +kernel)
noncomputable def batch032p1_0_0016 : Block :=
  Block.append leaf1_2080 leaf1_2081 (by decide +kernel)
noncomputable def batch032p1_0_0017 : Block :=
  Block.append leaf1_2082 leaf1_2083 (by decide +kernel)
noncomputable def batch032p1_0_0018 : Block :=
  Block.append leaf1_2084 leaf1_2085 (by decide +kernel)
noncomputable def batch032p1_0_0019 : Block :=
  Block.append leaf1_2086 leaf1_2087 (by decide +kernel)
noncomputable def batch032p1_0_0020 : Block :=
  Block.append leaf1_2088 leaf1_2089 (by decide +kernel)
noncomputable def batch032p1_0_0021 : Block :=
  Block.append leaf1_2090 leaf1_2091 (by decide +kernel)
noncomputable def batch032p1_0_0022 : Block :=
  Block.append leaf1_2092 leaf1_2093 (by decide +kernel)
noncomputable def batch032p1_0_0023 : Block :=
  Block.append leaf1_2094 leaf1_2095 (by decide +kernel)
noncomputable def batch032p1_0_0024 : Block :=
  Block.append leaf1_2096 leaf1_2097 (by decide +kernel)
noncomputable def batch032p1_0_0025 : Block :=
  Block.append leaf1_2098 leaf1_2099 (by decide +kernel)
noncomputable def batch032p1_0_0026 : Block :=
  Block.append leaf1_2100 leaf1_2101 (by decide +kernel)
noncomputable def batch032p1_0_0027 : Block :=
  Block.append leaf1_2102 leaf1_2103 (by decide +kernel)
noncomputable def batch032p1_0_0028 : Block :=
  Block.append leaf1_2104 leaf1_2105 (by decide +kernel)
noncomputable def batch032p1_0_0029 : Block :=
  Block.append leaf1_2106 leaf1_2107 (by decide +kernel)
noncomputable def batch032p1_0_0030 : Block :=
  Block.append leaf1_2108 leaf1_2109 (by decide +kernel)
noncomputable def batch032p1_0_0031 : Block :=
  Block.append leaf1_2110 leaf1_2111 (by decide +kernel)
noncomputable def batch032p1_1_0000 : Block :=
  Block.append batch032p1_0_0000 batch032p1_0_0001 (by decide +kernel)
noncomputable def batch032p1_1_0001 : Block :=
  Block.append batch032p1_0_0002 batch032p1_0_0003 (by decide +kernel)
noncomputable def batch032p1_1_0002 : Block :=
  Block.append batch032p1_0_0004 batch032p1_0_0005 (by decide +kernel)
noncomputable def batch032p1_1_0003 : Block :=
  Block.append batch032p1_0_0006 batch032p1_0_0007 (by decide +kernel)
noncomputable def batch032p1_1_0004 : Block :=
  Block.append batch032p1_0_0008 batch032p1_0_0009 (by decide +kernel)
noncomputable def batch032p1_1_0005 : Block :=
  Block.append batch032p1_0_0010 batch032p1_0_0011 (by decide +kernel)
noncomputable def batch032p1_1_0006 : Block :=
  Block.append batch032p1_0_0012 batch032p1_0_0013 (by decide +kernel)
noncomputable def batch032p1_1_0007 : Block :=
  Block.append batch032p1_0_0014 batch032p1_0_0015 (by decide +kernel)
noncomputable def batch032p1_1_0008 : Block :=
  Block.append batch032p1_0_0016 batch032p1_0_0017 (by decide +kernel)
noncomputable def batch032p1_1_0009 : Block :=
  Block.append batch032p1_0_0018 batch032p1_0_0019 (by decide +kernel)
noncomputable def batch032p1_1_0010 : Block :=
  Block.append batch032p1_0_0020 batch032p1_0_0021 (by decide +kernel)
noncomputable def batch032p1_1_0011 : Block :=
  Block.append batch032p1_0_0022 batch032p1_0_0023 (by decide +kernel)
noncomputable def batch032p1_1_0012 : Block :=
  Block.append batch032p1_0_0024 batch032p1_0_0025 (by decide +kernel)
noncomputable def batch032p1_1_0013 : Block :=
  Block.append batch032p1_0_0026 batch032p1_0_0027 (by decide +kernel)
noncomputable def batch032p1_1_0014 : Block :=
  Block.append batch032p1_0_0028 batch032p1_0_0029 (by decide +kernel)
noncomputable def batch032p1_1_0015 : Block :=
  Block.append batch032p1_0_0030 batch032p1_0_0031 (by decide +kernel)
noncomputable def batch032p1_2_0000 : Block :=
  Block.append batch032p1_1_0000 batch032p1_1_0001 (by decide +kernel)
noncomputable def batch032p1_2_0001 : Block :=
  Block.append batch032p1_1_0002 batch032p1_1_0003 (by decide +kernel)
noncomputable def batch032p1_2_0002 : Block :=
  Block.append batch032p1_1_0004 batch032p1_1_0005 (by decide +kernel)
noncomputable def batch032p1_2_0003 : Block :=
  Block.append batch032p1_1_0006 batch032p1_1_0007 (by decide +kernel)
noncomputable def batch032p1_2_0004 : Block :=
  Block.append batch032p1_1_0008 batch032p1_1_0009 (by decide +kernel)
noncomputable def batch032p1_2_0005 : Block :=
  Block.append batch032p1_1_0010 batch032p1_1_0011 (by decide +kernel)
noncomputable def batch032p1_2_0006 : Block :=
  Block.append batch032p1_1_0012 batch032p1_1_0013 (by decide +kernel)
noncomputable def batch032p1_2_0007 : Block :=
  Block.append batch032p1_1_0014 batch032p1_1_0015 (by decide +kernel)
noncomputable def batch032p1_3_0000 : Block :=
  Block.append batch032p1_2_0000 batch032p1_2_0001 (by decide +kernel)
noncomputable def batch032p1_3_0001 : Block :=
  Block.append batch032p1_2_0002 batch032p1_2_0003 (by decide +kernel)
noncomputable def batch032p1_3_0002 : Block :=
  Block.append batch032p1_2_0004 batch032p1_2_0005 (by decide +kernel)
noncomputable def batch032p1_3_0003 : Block :=
  Block.append batch032p1_2_0006 batch032p1_2_0007 (by decide +kernel)
noncomputable def batch032p1_4_0000 : Block :=
  Block.append batch032p1_3_0000 batch032p1_3_0001 (by decide +kernel)
noncomputable def batch032p1_4_0001 : Block :=
  Block.append batch032p1_3_0002 batch032p1_3_0003 (by decide +kernel)
noncomputable def batch032p1_5_0000 : Block :=
  Block.append batch032p1_4_0000 batch032p1_4_0001 (by decide +kernel)
theorem batch032p1_5_0000_left : batch032p1_5_0000.left = (160/93) := by decide +kernel
theorem batch032p1_5_0000_right : batch032p1_5_0000.right = (169/97) := by decide +kernel
theorem batch032p1_5_0000_units : batch032p1_5_0000.units = 10234 := by decide +kernel
noncomputable def leaf2_2048 : Block :=
  Block.single profile2048 selection2_2048 profile2048_checked selection2_2048_checked
noncomputable def leaf2_2049 : Block :=
  Block.single profile2049 selection2_2049 profile2049_checked selection2_2049_checked
noncomputable def leaf2_2050 : Block :=
  Block.single profile2050 selection2_2050 profile2050_checked selection2_2050_checked
noncomputable def leaf2_2051 : Block :=
  Block.single profile2051 selection2_2051 profile2051_checked selection2_2051_checked
noncomputable def leaf2_2052 : Block :=
  Block.single profile2052 selection2_2052 profile2052_checked selection2_2052_checked
noncomputable def leaf2_2053 : Block :=
  Block.single profile2053 selection2_2053 profile2053_checked selection2_2053_checked
noncomputable def leaf2_2054 : Block :=
  Block.single profile2054 selection2_2054 profile2054_checked selection2_2054_checked
noncomputable def leaf2_2055 : Block :=
  Block.single profile2055 selection2_2055 profile2055_checked selection2_2055_checked
noncomputable def leaf2_2056 : Block :=
  Block.single profile2056 selection2_2056 profile2056_checked selection2_2056_checked
noncomputable def leaf2_2057 : Block :=
  Block.single profile2057 selection2_2057 profile2057_checked selection2_2057_checked
noncomputable def leaf2_2058 : Block :=
  Block.single profile2058 selection2_2058 profile2058_checked selection2_2058_checked
noncomputable def leaf2_2059 : Block :=
  Block.single profile2059 selection2_2059 profile2059_checked selection2_2059_checked
noncomputable def leaf2_2060 : Block :=
  Block.single profile2060 selection2_2060 profile2060_checked selection2_2060_checked
noncomputable def leaf2_2061 : Block :=
  Block.single profile2061 selection2_2061 profile2061_checked selection2_2061_checked
noncomputable def leaf2_2062 : Block :=
  Block.single profile2062 selection2_2062 profile2062_checked selection2_2062_checked
noncomputable def leaf2_2063 : Block :=
  Block.single profile2063 selection2_2063 profile2063_checked selection2_2063_checked
noncomputable def leaf2_2064 : Block :=
  Block.single profile2064 selection2_2064 profile2064_checked selection2_2064_checked
noncomputable def leaf2_2065 : Block :=
  Block.single profile2065 selection2_2065 profile2065_checked selection2_2065_checked
noncomputable def leaf2_2066 : Block :=
  Block.single profile2066 selection2_2066 profile2066_checked selection2_2066_checked
noncomputable def leaf2_2067 : Block :=
  Block.single profile2067 selection2_2067 profile2067_checked selection2_2067_checked
noncomputable def leaf2_2068 : Block :=
  Block.single profile2068 selection2_2068 profile2068_checked selection2_2068_checked
noncomputable def leaf2_2069 : Block :=
  Block.single profile2069 selection2_2069 profile2069_checked selection2_2069_checked
noncomputable def leaf2_2070 : Block :=
  Block.single profile2070 selection2_2070 profile2070_checked selection2_2070_checked
noncomputable def leaf2_2071 : Block :=
  Block.single profile2071 selection2_2071 profile2071_checked selection2_2071_checked
noncomputable def leaf2_2072 : Block :=
  Block.single profile2072 selection2_2072 profile2072_checked selection2_2072_checked
noncomputable def leaf2_2073 : Block :=
  Block.single profile2073 selection2_2073 profile2073_checked selection2_2073_checked
noncomputable def leaf2_2074 : Block :=
  Block.single profile2074 selection2_2074 profile2074_checked selection2_2074_checked
noncomputable def leaf2_2075 : Block :=
  Block.single profile2075 selection2_2075 profile2075_checked selection2_2075_checked
noncomputable def leaf2_2076 : Block :=
  Block.single profile2076 selection2_2076 profile2076_checked selection2_2076_checked
noncomputable def leaf2_2077 : Block :=
  Block.single profile2077 selection2_2077 profile2077_checked selection2_2077_checked
noncomputable def leaf2_2078 : Block :=
  Block.single profile2078 selection2_2078 profile2078_checked selection2_2078_checked
noncomputable def leaf2_2079 : Block :=
  Block.single profile2079 selection2_2079 profile2079_checked selection2_2079_checked
noncomputable def leaf2_2080 : Block :=
  Block.single profile2080 selection2_2080 profile2080_checked selection2_2080_checked
noncomputable def leaf2_2081 : Block :=
  Block.single profile2081 selection2_2081 profile2081_checked selection2_2081_checked
noncomputable def leaf2_2082 : Block :=
  Block.single profile2082 selection2_2082 profile2082_checked selection2_2082_checked
noncomputable def leaf2_2083 : Block :=
  Block.single profile2083 selection2_2083 profile2083_checked selection2_2083_checked
noncomputable def leaf2_2084 : Block :=
  Block.single profile2084 selection2_2084 profile2084_checked selection2_2084_checked
noncomputable def leaf2_2085 : Block :=
  Block.single profile2085 selection2_2085 profile2085_checked selection2_2085_checked
noncomputable def leaf2_2086 : Block :=
  Block.single profile2086 selection2_2086 profile2086_checked selection2_2086_checked
noncomputable def leaf2_2087 : Block :=
  Block.single profile2087 selection2_2087 profile2087_checked selection2_2087_checked
noncomputable def leaf2_2088 : Block :=
  Block.single profile2088 selection2_2088 profile2088_checked selection2_2088_checked
noncomputable def leaf2_2089 : Block :=
  Block.single profile2089 selection2_2089 profile2089_checked selection2_2089_checked
noncomputable def leaf2_2090 : Block :=
  Block.single profile2090 selection2_2090 profile2090_checked selection2_2090_checked
noncomputable def leaf2_2091 : Block :=
  Block.single profile2091 selection2_2091 profile2091_checked selection2_2091_checked
noncomputable def leaf2_2092 : Block :=
  Block.single profile2092 selection2_2092 profile2092_checked selection2_2092_checked
noncomputable def leaf2_2093 : Block :=
  Block.single profile2093 selection2_2093 profile2093_checked selection2_2093_checked
noncomputable def leaf2_2094 : Block :=
  Block.single profile2094 selection2_2094 profile2094_checked selection2_2094_checked
noncomputable def leaf2_2095 : Block :=
  Block.single profile2095 selection2_2095 profile2095_checked selection2_2095_checked
noncomputable def leaf2_2096 : Block :=
  Block.single profile2096 selection2_2096 profile2096_checked selection2_2096_checked
noncomputable def leaf2_2097 : Block :=
  Block.single profile2097 selection2_2097 profile2097_checked selection2_2097_checked
noncomputable def leaf2_2098 : Block :=
  Block.single profile2098 selection2_2098 profile2098_checked selection2_2098_checked
noncomputable def leaf2_2099 : Block :=
  Block.single profile2099 selection2_2099 profile2099_checked selection2_2099_checked
noncomputable def leaf2_2100 : Block :=
  Block.single profile2100 selection2_2100 profile2100_checked selection2_2100_checked
noncomputable def leaf2_2101 : Block :=
  Block.single profile2101 selection2_2101 profile2101_checked selection2_2101_checked
noncomputable def leaf2_2102 : Block :=
  Block.single profile2102 selection2_2102 profile2102_checked selection2_2102_checked
noncomputable def leaf2_2103 : Block :=
  Block.single profile2103 selection2_2103 profile2103_checked selection2_2103_checked
noncomputable def leaf2_2104 : Block :=
  Block.single profile2104 selection2_2104 profile2104_checked selection2_2104_checked
noncomputable def leaf2_2105 : Block :=
  Block.single profile2105 selection2_2105 profile2105_checked selection2_2105_checked
noncomputable def leaf2_2106 : Block :=
  Block.single profile2106 selection2_2106 profile2106_checked selection2_2106_checked
noncomputable def leaf2_2107 : Block :=
  Block.single profile2107 selection2_2107 profile2107_checked selection2_2107_checked
noncomputable def leaf2_2108 : Block :=
  Block.single profile2108 selection2_2108 profile2108_checked selection2_2108_checked
noncomputable def leaf2_2109 : Block :=
  Block.single profile2109 selection2_2109 profile2109_checked selection2_2109_checked
noncomputable def leaf2_2110 : Block :=
  Block.single profile2110 selection2_2110 profile2110_checked selection2_2110_checked
noncomputable def leaf2_2111 : Block :=
  Block.single profile2111 selection2_2111 profile2111_checked selection2_2111_checked
noncomputable def batch032p2_0_0000 : Block :=
  Block.append leaf2_2048 leaf2_2049 (by decide +kernel)
noncomputable def batch032p2_0_0001 : Block :=
  Block.append leaf2_2050 leaf2_2051 (by decide +kernel)
noncomputable def batch032p2_0_0002 : Block :=
  Block.append leaf2_2052 leaf2_2053 (by decide +kernel)
noncomputable def batch032p2_0_0003 : Block :=
  Block.append leaf2_2054 leaf2_2055 (by decide +kernel)
noncomputable def batch032p2_0_0004 : Block :=
  Block.append leaf2_2056 leaf2_2057 (by decide +kernel)
noncomputable def batch032p2_0_0005 : Block :=
  Block.append leaf2_2058 leaf2_2059 (by decide +kernel)
noncomputable def batch032p2_0_0006 : Block :=
  Block.append leaf2_2060 leaf2_2061 (by decide +kernel)
noncomputable def batch032p2_0_0007 : Block :=
  Block.append leaf2_2062 leaf2_2063 (by decide +kernel)
noncomputable def batch032p2_0_0008 : Block :=
  Block.append leaf2_2064 leaf2_2065 (by decide +kernel)
noncomputable def batch032p2_0_0009 : Block :=
  Block.append leaf2_2066 leaf2_2067 (by decide +kernel)
noncomputable def batch032p2_0_0010 : Block :=
  Block.append leaf2_2068 leaf2_2069 (by decide +kernel)
noncomputable def batch032p2_0_0011 : Block :=
  Block.append leaf2_2070 leaf2_2071 (by decide +kernel)
noncomputable def batch032p2_0_0012 : Block :=
  Block.append leaf2_2072 leaf2_2073 (by decide +kernel)
noncomputable def batch032p2_0_0013 : Block :=
  Block.append leaf2_2074 leaf2_2075 (by decide +kernel)
noncomputable def batch032p2_0_0014 : Block :=
  Block.append leaf2_2076 leaf2_2077 (by decide +kernel)
noncomputable def batch032p2_0_0015 : Block :=
  Block.append leaf2_2078 leaf2_2079 (by decide +kernel)
noncomputable def batch032p2_0_0016 : Block :=
  Block.append leaf2_2080 leaf2_2081 (by decide +kernel)
noncomputable def batch032p2_0_0017 : Block :=
  Block.append leaf2_2082 leaf2_2083 (by decide +kernel)
noncomputable def batch032p2_0_0018 : Block :=
  Block.append leaf2_2084 leaf2_2085 (by decide +kernel)
noncomputable def batch032p2_0_0019 : Block :=
  Block.append leaf2_2086 leaf2_2087 (by decide +kernel)
noncomputable def batch032p2_0_0020 : Block :=
  Block.append leaf2_2088 leaf2_2089 (by decide +kernel)
noncomputable def batch032p2_0_0021 : Block :=
  Block.append leaf2_2090 leaf2_2091 (by decide +kernel)
noncomputable def batch032p2_0_0022 : Block :=
  Block.append leaf2_2092 leaf2_2093 (by decide +kernel)
noncomputable def batch032p2_0_0023 : Block :=
  Block.append leaf2_2094 leaf2_2095 (by decide +kernel)
noncomputable def batch032p2_0_0024 : Block :=
  Block.append leaf2_2096 leaf2_2097 (by decide +kernel)
noncomputable def batch032p2_0_0025 : Block :=
  Block.append leaf2_2098 leaf2_2099 (by decide +kernel)
noncomputable def batch032p2_0_0026 : Block :=
  Block.append leaf2_2100 leaf2_2101 (by decide +kernel)
noncomputable def batch032p2_0_0027 : Block :=
  Block.append leaf2_2102 leaf2_2103 (by decide +kernel)
noncomputable def batch032p2_0_0028 : Block :=
  Block.append leaf2_2104 leaf2_2105 (by decide +kernel)
noncomputable def batch032p2_0_0029 : Block :=
  Block.append leaf2_2106 leaf2_2107 (by decide +kernel)
noncomputable def batch032p2_0_0030 : Block :=
  Block.append leaf2_2108 leaf2_2109 (by decide +kernel)
noncomputable def batch032p2_0_0031 : Block :=
  Block.append leaf2_2110 leaf2_2111 (by decide +kernel)
noncomputable def batch032p2_1_0000 : Block :=
  Block.append batch032p2_0_0000 batch032p2_0_0001 (by decide +kernel)
noncomputable def batch032p2_1_0001 : Block :=
  Block.append batch032p2_0_0002 batch032p2_0_0003 (by decide +kernel)
noncomputable def batch032p2_1_0002 : Block :=
  Block.append batch032p2_0_0004 batch032p2_0_0005 (by decide +kernel)
noncomputable def batch032p2_1_0003 : Block :=
  Block.append batch032p2_0_0006 batch032p2_0_0007 (by decide +kernel)
noncomputable def batch032p2_1_0004 : Block :=
  Block.append batch032p2_0_0008 batch032p2_0_0009 (by decide +kernel)
noncomputable def batch032p2_1_0005 : Block :=
  Block.append batch032p2_0_0010 batch032p2_0_0011 (by decide +kernel)
noncomputable def batch032p2_1_0006 : Block :=
  Block.append batch032p2_0_0012 batch032p2_0_0013 (by decide +kernel)
noncomputable def batch032p2_1_0007 : Block :=
  Block.append batch032p2_0_0014 batch032p2_0_0015 (by decide +kernel)
noncomputable def batch032p2_1_0008 : Block :=
  Block.append batch032p2_0_0016 batch032p2_0_0017 (by decide +kernel)
noncomputable def batch032p2_1_0009 : Block :=
  Block.append batch032p2_0_0018 batch032p2_0_0019 (by decide +kernel)
noncomputable def batch032p2_1_0010 : Block :=
  Block.append batch032p2_0_0020 batch032p2_0_0021 (by decide +kernel)
noncomputable def batch032p2_1_0011 : Block :=
  Block.append batch032p2_0_0022 batch032p2_0_0023 (by decide +kernel)
noncomputable def batch032p2_1_0012 : Block :=
  Block.append batch032p2_0_0024 batch032p2_0_0025 (by decide +kernel)
noncomputable def batch032p2_1_0013 : Block :=
  Block.append batch032p2_0_0026 batch032p2_0_0027 (by decide +kernel)
noncomputable def batch032p2_1_0014 : Block :=
  Block.append batch032p2_0_0028 batch032p2_0_0029 (by decide +kernel)
noncomputable def batch032p2_1_0015 : Block :=
  Block.append batch032p2_0_0030 batch032p2_0_0031 (by decide +kernel)
noncomputable def batch032p2_2_0000 : Block :=
  Block.append batch032p2_1_0000 batch032p2_1_0001 (by decide +kernel)
noncomputable def batch032p2_2_0001 : Block :=
  Block.append batch032p2_1_0002 batch032p2_1_0003 (by decide +kernel)
noncomputable def batch032p2_2_0002 : Block :=
  Block.append batch032p2_1_0004 batch032p2_1_0005 (by decide +kernel)
noncomputable def batch032p2_2_0003 : Block :=
  Block.append batch032p2_1_0006 batch032p2_1_0007 (by decide +kernel)
noncomputable def batch032p2_2_0004 : Block :=
  Block.append batch032p2_1_0008 batch032p2_1_0009 (by decide +kernel)
noncomputable def batch032p2_2_0005 : Block :=
  Block.append batch032p2_1_0010 batch032p2_1_0011 (by decide +kernel)
noncomputable def batch032p2_2_0006 : Block :=
  Block.append batch032p2_1_0012 batch032p2_1_0013 (by decide +kernel)
noncomputable def batch032p2_2_0007 : Block :=
  Block.append batch032p2_1_0014 batch032p2_1_0015 (by decide +kernel)
noncomputable def batch032p2_3_0000 : Block :=
  Block.append batch032p2_2_0000 batch032p2_2_0001 (by decide +kernel)
noncomputable def batch032p2_3_0001 : Block :=
  Block.append batch032p2_2_0002 batch032p2_2_0003 (by decide +kernel)
noncomputable def batch032p2_3_0002 : Block :=
  Block.append batch032p2_2_0004 batch032p2_2_0005 (by decide +kernel)
noncomputable def batch032p2_3_0003 : Block :=
  Block.append batch032p2_2_0006 batch032p2_2_0007 (by decide +kernel)
noncomputable def batch032p2_4_0000 : Block :=
  Block.append batch032p2_3_0000 batch032p2_3_0001 (by decide +kernel)
noncomputable def batch032p2_4_0001 : Block :=
  Block.append batch032p2_3_0002 batch032p2_3_0003 (by decide +kernel)
noncomputable def batch032p2_5_0000 : Block :=
  Block.append batch032p2_4_0000 batch032p2_4_0001 (by decide +kernel)
theorem batch032p2_5_0000_left : batch032p2_5_0000.left = (253/93) := by decide +kernel
theorem batch032p2_5_0000_right : batch032p2_5_0000.right = (266/97) := by decide +kernel
theorem batch032p2_5_0000_units : batch032p2_5_0000.units = 4098 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
