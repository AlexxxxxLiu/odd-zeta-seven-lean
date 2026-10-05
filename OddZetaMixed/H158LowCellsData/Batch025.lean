import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile1600 : ProfileCell :=
  ⟨(89/158), (31/55),
    [29, 28, 27, 25, 24, 23, 22, 21, 20, 19, 18, 16, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨43, 89⟩, ⟨35, 58⟩, ⟨1, 27⟩, ⟨17, 36⟩, ⟨28, 54⟩, ⟨10, 32⟩, ⟨37, 59⟩, ⟨3, 28⟩, ⟨19, 37⟩, ⟨30, 55⟩, ⟨12, 33⟩, ⟨23, 51⟩, ⟨39, 60⟩, ⟨5, 29⟩, ⟨21, 38⟩, ⟨32, 56⟩, ⟨14, 34⟩, ⟨25, 52⟩, ⟨41, 61⟩, ⟨7, 30⟩, ⟨34, 57⟩, ⟨16, 35⟩, ⟨27, 53⟩, ⟨9, 31⟩, ⟨36, 58⟩, ⟨2, 27⟩, ⟨18, 36⟩, ⟨29, 54⟩, ⟨11, 32⟩, ⟨22, 50⟩, ⟨38, 59⟩, ⟨4, 28⟩, ⟨20, 37⟩, ⟨31, 55⟩, ⟨13, 33⟩, ⟨24, 51⟩, ⟨40, 60⟩, ⟨6, 29⟩, ⟨33, 56⟩, ⟨15, 34⟩, ⟨26, 52⟩, ⟨42, 61⟩, ⟨8, 30⟩]⟩
theorem profile1600_checked : profile1600.check := by decide +kernel

noncomputable def selection0_1600 : Selection :=
  ⟨0, 4, 2, (163/10), 1773, -776, 1388⟩
theorem selection0_1600_checked : selection0_1600.check profile1600 := by decide +kernel

noncomputable def selection1_1600 : Selection :=
  ⟨1, -4, 6, (398/25), 225, -948, 1756⟩
theorem selection1_1600_checked : selection1_1600.check profile1600 := by decide +kernel

noncomputable def selection2_1600 : Selection :=
  ⟨2, -12, 10, (396/25), 84, -1088, 2124⟩
theorem selection2_1600_checked : selection2_1600.check profile1600 := by decide +kernel

noncomputable def profile1601 : ProfileCell :=
  ⟨(31/55), (53/94),
    [29, 28, 27, 25, 24, 23, 22, 21, 20, 19, 18, 16, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨8, 31⟩, ⟨42, 62⟩, ⟨1, 27⟩, ⟨35, 58⟩, ⟨43, 89⟩, ⟨17, 36⟩, ⟨28, 54⟩, ⟨10, 32⟩, ⟨3, 28⟩, ⟨37, 59⟩, ⟨19, 37⟩, ⟨30, 55⟩, ⟨12, 33⟩, ⟨23, 51⟩, ⟨5, 29⟩, ⟨39, 60⟩, ⟨21, 38⟩, ⟨32, 56⟩, ⟨14, 34⟩, ⟨25, 52⟩, ⟨7, 30⟩, ⟨41, 61⟩, ⟨34, 57⟩, ⟨16, 35⟩, ⟨27, 53⟩, ⟨9, 31⟩, ⟨2, 27⟩, ⟨36, 58⟩, ⟨18, 36⟩, ⟨29, 54⟩, ⟨11, 32⟩, ⟨22, 50⟩, ⟨4, 28⟩, ⟨38, 59⟩, ⟨20, 37⟩, ⟨31, 55⟩, ⟨13, 33⟩, ⟨24, 51⟩, ⟨6, 29⟩, ⟨40, 60⟩, ⟨33, 56⟩, ⟨15, 34⟩, ⟨26, 52⟩]⟩
theorem profile1601_checked : profile1601.check := by decide +kernel

noncomputable def selection0_1601 : Selection :=
  ⟨0, 4, 2, (331/20), 1008, -838, 1498⟩
theorem selection0_1601_checked : selection0_1601.check profile1601 := by decide +kernel

noncomputable def selection1_1601 : Selection :=
  ⟨1, -4, 6, (401/25), 127, -1010, 1866⟩
theorem selection1_1601_checked : selection1_1601.check profile1601 := by decide +kernel

noncomputable def selection2_1601 : Selection :=
  ⟨2, -12, 10, (1593/100), 47, -1150, 2234⟩
theorem selection2_1601_checked : selection2_1601.check profile1601 := by decide +kernel

noncomputable def profile1602 : ProfileCell :=
  ⟨(53/94), (22/39),
    [29, 28, 27, 25, 24, 23, 22, 21, 20, 19, 18, 16, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨26, 53⟩, ⟨8, 31⟩, ⟨42, 62⟩, ⟨1, 27⟩, ⟨35, 58⟩, ⟨17, 36⟩, ⟨43, 89⟩, ⟨28, 54⟩, ⟨10, 32⟩, ⟨3, 28⟩, ⟨37, 59⟩, ⟨19, 37⟩, ⟨30, 55⟩, ⟨12, 33⟩, ⟨23, 51⟩, ⟨5, 29⟩, ⟨39, 60⟩, ⟨21, 38⟩, ⟨32, 56⟩, ⟨14, 34⟩, ⟨25, 52⟩, ⟨7, 30⟩, ⟨41, 61⟩, ⟨34, 57⟩, ⟨16, 35⟩, ⟨27, 53⟩, ⟨9, 31⟩, ⟨2, 27⟩, ⟨36, 58⟩, ⟨18, 36⟩, ⟨29, 54⟩, ⟨11, 32⟩, ⟨22, 50⟩, ⟨4, 28⟩, ⟨38, 59⟩, ⟨20, 37⟩, ⟨31, 55⟩, ⟨13, 33⟩, ⟨24, 51⟩, ⟨6, 29⟩, ⟨40, 60⟩, ⟨33, 56⟩, ⟨15, 34⟩]⟩
theorem profile1602_checked : profile1602.check := by decide +kernel

noncomputable def selection0_1602 : Selection :=
  ⟨0, 5, 2, (839/50), 1440, -476, 852⟩
theorem selection0_1602_checked : selection0_1602.check profile1602 := by decide +kernel

noncomputable def selection1_1602 : Selection :=
  ⟨1, -4, 6, (1617/100), 181, -798, 1490⟩
theorem selection1_1602_checked : selection1_1602.check profile1602 := by decide +kernel

noncomputable def selection2_1602 : Selection :=
  ⟨2, -12, 10, (801/50), 67, -938, 1858⟩
theorem selection2_1602_checked : selection2_1602.check profile1602 := by decide +kernel

noncomputable def profile1603 : ProfileCell :=
  ⟨(22/39), (57/101),
    [29, 28, 27, 25, 24, 23, 22, 21, 20, 19, 18, 16, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨8, 31⟩, ⟨26, 53⟩, ⟨42, 62⟩, ⟨1, 27⟩, ⟨17, 36⟩, ⟨35, 58⟩, ⟨43, 89⟩, ⟨10, 32⟩, ⟨28, 54⟩, ⟨3, 28⟩, ⟨19, 37⟩, ⟨37, 59⟩, ⟨12, 33⟩, ⟨30, 55⟩, ⟨5, 29⟩, ⟨23, 51⟩, ⟨21, 38⟩, ⟨39, 60⟩, ⟨14, 34⟩, ⟨32, 56⟩, ⟨7, 30⟩, ⟨25, 52⟩, ⟨41, 61⟩, ⟨16, 35⟩, ⟨34, 57⟩, ⟨9, 31⟩, ⟨27, 53⟩, ⟨2, 27⟩, ⟨18, 36⟩, ⟨36, 58⟩, ⟨11, 32⟩, ⟨29, 54⟩, ⟨4, 28⟩, ⟨22, 50⟩, ⟨20, 37⟩, ⟨38, 59⟩, ⟨13, 33⟩, ⟨31, 55⟩, ⟨6, 29⟩, ⟨24, 51⟩, ⟨40, 60⟩, ⟨15, 34⟩, ⟨33, 56⟩]⟩
theorem profile1603_checked : profile1603.check := by decide +kernel

noncomputable def selection0_1603 : Selection :=
  ⟨0, 5, 2, (427/25), 1363, -740, 1320⟩
theorem selection0_1603_checked : selection0_1603.check profile1603 := by decide +kernel

noncomputable def selection1_1603 : Selection :=
  ⟨1, -3, 6, (1629/100), 170, -881, 1626⟩
theorem selection1_1603_checked : selection1_1603.check profile1603 := by decide +kernel

noncomputable def selection2_1603 : Selection :=
  ⟨2, -11, 10, (403/25), 63, -1025, 1994⟩
theorem selection2_1603_checked : selection2_1603.check profile1603 := by decide +kernel

noncomputable def profile1604 : ProfileCell :=
  ⟨(57/101), (35/62),
    [29, 28, 27, 25, 24, 23, 22, 21, 20, 19, 18, 16, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨33, 57⟩, ⟨8, 31⟩, ⟨26, 53⟩, ⟨42, 62⟩, ⟨1, 27⟩, ⟨17, 36⟩, ⟨35, 58⟩, ⟨10, 32⟩, ⟨43, 89⟩, ⟨28, 54⟩, ⟨3, 28⟩, ⟨19, 37⟩, ⟨37, 59⟩, ⟨12, 33⟩, ⟨30, 55⟩, ⟨5, 29⟩, ⟨23, 51⟩, ⟨21, 38⟩, ⟨39, 60⟩, ⟨14, 34⟩, ⟨32, 56⟩, ⟨7, 30⟩, ⟨25, 52⟩, ⟨41, 61⟩, ⟨16, 35⟩, ⟨34, 57⟩, ⟨9, 31⟩, ⟨27, 53⟩, ⟨2, 27⟩, ⟨18, 36⟩, ⟨36, 58⟩, ⟨11, 32⟩, ⟨29, 54⟩, ⟨4, 28⟩, ⟨22, 50⟩, ⟨20, 37⟩, ⟨38, 59⟩, ⟨13, 33⟩, ⟨31, 55⟩, ⟨6, 29⟩, ⟨24, 51⟩, ⟨40, 60⟩, ⟨15, 34⟩]⟩
theorem profile1604_checked : profile1604.check := by decide +kernel

noncomputable def selection0_1604 : Selection :=
  ⟨0, 5, 2, (86/5), 863, -512, 916⟩
theorem selection0_1604_checked : selection0_1604.check profile1604 := by decide +kernel

noncomputable def selection1_1604 : Selection :=
  ⟨1, -3, 6, (409/25), 107, -653, 1222⟩
theorem selection1_1604_checked : selection1_1604.check profile1604 := by decide +kernel

noncomputable def selection2_1604 : Selection :=
  ⟨2, -11, 10, (1617/100), 40, -797, 1590⟩
theorem selection2_1604_checked : selection2_1604.check profile1604 := by decide +kernel

noncomputable def profile1605 : ProfileCell :=
  ⟨(35/62), (61/108),
    [29, 28, 27, 25, 24, 23, 22, 21, 20, 19, 18, 16, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨15, 35⟩, ⟨33, 57⟩, ⟨8, 31⟩, ⟨26, 53⟩, ⟨1, 27⟩, ⟨42, 62⟩, ⟨17, 36⟩, ⟨35, 58⟩, ⟨10, 32⟩, ⟨28, 54⟩, ⟨43, 89⟩, ⟨3, 28⟩, ⟨19, 37⟩, ⟨37, 59⟩, ⟨12, 33⟩, ⟨30, 55⟩, ⟨5, 29⟩, ⟨23, 51⟩, ⟨21, 38⟩, ⟨39, 60⟩, ⟨14, 34⟩, ⟨32, 56⟩, ⟨7, 30⟩, ⟨25, 52⟩, ⟨41, 61⟩, ⟨16, 35⟩, ⟨34, 57⟩, ⟨9, 31⟩, ⟨27, 53⟩, ⟨2, 27⟩, ⟨18, 36⟩, ⟨36, 58⟩, ⟨11, 32⟩, ⟨29, 54⟩, ⟨4, 28⟩, ⟨22, 50⟩, ⟨20, 37⟩, ⟨38, 59⟩, ⟨13, 33⟩, ⟨31, 55⟩, ⟨6, 29⟩, ⟨24, 51⟩, ⟨40, 60⟩]⟩
theorem profile1605_checked : profile1605.check := by decide +kernel

noncomputable def selection0_1605 : Selection :=
  ⟨0, 4, 2, (437/25), 1638, -582, 1044⟩
theorem selection0_1605_checked : selection0_1605.check profile1605 := by decide +kernel

noncomputable def selection1_1605 : Selection :=
  ⟨1, -4, 6, (1649/100), 202, -754, 1412⟩
theorem selection1_1605_checked : selection1_1605.check profile1605 := by decide +kernel

noncomputable def selection2_1605 : Selection :=
  ⟨2, -12, 10, (1627/100), 74, -894, 1780⟩
theorem selection2_1605_checked : selection2_1605.check profile1605 := by decide +kernel

noncomputable def profile1606 : ProfileCell :=
  ⟨(61/108), (13/23),
    [29, 28, 27, 25, 24, 23, 22, 21, 20, 19, 18, 16, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨40, 61⟩, ⟨15, 35⟩, ⟨33, 57⟩, ⟨8, 31⟩, ⟨26, 53⟩, ⟨1, 27⟩, ⟨42, 62⟩, ⟨17, 36⟩, ⟨35, 58⟩, ⟨10, 32⟩, ⟨28, 54⟩, ⟨3, 28⟩, ⟨43, 89⟩, ⟨19, 37⟩, ⟨37, 59⟩, ⟨12, 33⟩, ⟨30, 55⟩, ⟨5, 29⟩, ⟨23, 51⟩, ⟨21, 38⟩, ⟨39, 60⟩, ⟨14, 34⟩, ⟨32, 56⟩, ⟨7, 30⟩, ⟨25, 52⟩, ⟨41, 61⟩, ⟨16, 35⟩, ⟨34, 57⟩, ⟨9, 31⟩, ⟨27, 53⟩, ⟨2, 27⟩, ⟨18, 36⟩, ⟨36, 58⟩, ⟨11, 32⟩, ⟨29, 54⟩, ⟨4, 28⟩, ⟨22, 50⟩, ⟨20, 37⟩, ⟨38, 59⟩, ⟨13, 33⟩, ⟨31, 55⟩, ⟨6, 29⟩, ⟨24, 51⟩]⟩
theorem profile1606_checked : profile1606.check := by decide +kernel

noncomputable def selection0_1606 : Selection :=
  ⟨0, 4, 2, (881/50), 2222, -216, 396⟩
theorem selection0_1606_checked : selection0_1606.check profile1606 := by decide +kernel

noncomputable def selection1_1606 : Selection :=
  ⟨1, -4, 6, (1659/100), 273, -388, 764⟩
theorem selection1_1606_checked : selection1_1606.check profile1606 := by decide +kernel

noncomputable def selection2_1606 : Selection :=
  ⟨2, -12, 10, (409/25), 101, -528, 1132⟩
theorem selection2_1606_checked : selection2_1606.check profile1606 := by decide +kernel

noncomputable def profile1607 : ProfileCell :=
  ⟨(13/23), (56/99),
    [29, 28, 27, 26, 24, 23, 22, 21, 20, 19, 18, 16, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨24, 52⟩, ⟨15, 35⟩, ⟨40, 61⟩, ⟨8, 31⟩, ⟨33, 57⟩, ⟨1, 27⟩, ⟨26, 53⟩, ⟨17, 36⟩, ⟨42, 62⟩, ⟨10, 32⟩, ⟨35, 58⟩, ⟨3, 28⟩, ⟨28, 54⟩, ⟨19, 37⟩, ⟨43, 89⟩, ⟨12, 33⟩, ⟨37, 59⟩, ⟨5, 29⟩, ⟨30, 55⟩, ⟨21, 38⟩, ⟨23, 51⟩, ⟨14, 34⟩, ⟨39, 60⟩, ⟨7, 30⟩, ⟨32, 56⟩, ⟨25, 52⟩, ⟨16, 35⟩, ⟨41, 61⟩, ⟨9, 31⟩, ⟨34, 57⟩, ⟨2, 27⟩, ⟨27, 53⟩, ⟨18, 36⟩, ⟨11, 32⟩, ⟨36, 58⟩, ⟨4, 28⟩, ⟨29, 54⟩, ⟨20, 37⟩, ⟨22, 50⟩, ⟨13, 33⟩, ⟨38, 59⟩, ⟨6, 29⟩, ⟨31, 55⟩]⟩
theorem profile1607_checked : profile1607.check := by decide +kernel

noncomputable def selection0_1607 : Selection :=
  ⟨0, 3, 2, (159/10), 2185, -398, 718⟩
theorem selection0_1607_checked : selection0_1607.check profile1607 := by decide +kernel

noncomputable def selection1_1607 : Selection :=
  ⟨1, -5, 6, (737/50), 265, -570, 1086⟩
theorem selection1_1607_checked : selection1_1607.check profile1607 := by decide +kernel

noncomputable def selection2_1607 : Selection :=
  ⟨2, -13, 10, (1449/100), 97, -710, 1454⟩
theorem selection2_1607_checked : selection2_1607.check profile1607 := by decide +kernel

noncomputable def profile1608 : ProfileCell :=
  ⟨(56/99), (30/53),
    [29, 28, 27, 26, 24, 23, 22, 21, 20, 19, 18, 16, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨31, 56⟩, ⟨24, 52⟩, ⟨15, 35⟩, ⟨40, 61⟩, ⟨8, 31⟩, ⟨33, 57⟩, ⟨1, 27⟩, ⟨26, 53⟩, ⟨17, 36⟩, ⟨42, 62⟩, ⟨10, 32⟩, ⟨35, 58⟩, ⟨3, 28⟩, ⟨28, 54⟩, ⟨19, 37⟩, ⟨12, 33⟩, ⟨43, 89⟩, ⟨37, 59⟩, ⟨5, 29⟩, ⟨30, 55⟩, ⟨21, 38⟩, ⟨23, 51⟩, ⟨14, 34⟩, ⟨39, 60⟩, ⟨7, 30⟩, ⟨32, 56⟩, ⟨25, 52⟩, ⟨16, 35⟩, ⟨41, 61⟩, ⟨9, 31⟩, ⟨34, 57⟩, ⟨2, 27⟩, ⟨27, 53⟩, ⟨18, 36⟩, ⟨11, 32⟩, ⟨36, 58⟩, ⟨4, 28⟩, ⟨29, 54⟩, ⟨20, 37⟩, ⟨22, 50⟩, ⟨13, 33⟩, ⟨38, 59⟩, ⟨6, 29⟩]⟩
theorem profile1608_checked : profile1608.check := by decide +kernel

noncomputable def selection0_1608 : Selection :=
  ⟨0, 4, 2, (159/10), 1893, 50, -78⟩
theorem selection0_1608_checked : selection0_1608.check profile1608 := by decide +kernel

noncomputable def selection1_1608 : Selection :=
  ⟨1, -4, 6, (739/50), 230, -126, 290⟩
theorem selection1_1608_checked : selection1_1608.check profile1608 := by decide +kernel

noncomputable def selection2_1608 : Selection :=
  ⟨2, -12, 10, (1453/100), 85, -270, 658⟩
theorem selection2_1608_checked : selection2_1608.check profile1608 := by decide +kernel

noncomputable def profile1609 : ProfileCell :=
  ⟨(30/53), (17/30),
    [29, 28, 27, 26, 24, 23, 22, 21, 20, 19, 18, 16, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨6, 30⟩, ⟨38, 60⟩, ⟨31, 56⟩, ⟨24, 52⟩, ⟨15, 35⟩, ⟨8, 31⟩, ⟨40, 61⟩, ⟨1, 27⟩, ⟨33, 57⟩, ⟨26, 53⟩, ⟨17, 36⟩, ⟨10, 32⟩, ⟨42, 62⟩, ⟨3, 28⟩, ⟨35, 58⟩, ⟨28, 54⟩, ⟨19, 37⟩, ⟨12, 33⟩, ⟨5, 29⟩, ⟨37, 59⟩, ⟨43, 89⟩, ⟨30, 55⟩, ⟨21, 38⟩, ⟨23, 51⟩, ⟨14, 34⟩, ⟨7, 30⟩, ⟨39, 60⟩, ⟨32, 56⟩, ⟨25, 52⟩, ⟨16, 35⟩, ⟨9, 31⟩, ⟨41, 61⟩, ⟨2, 27⟩, ⟨34, 57⟩, ⟨27, 53⟩, ⟨18, 36⟩, ⟨11, 32⟩, ⟨4, 28⟩, ⟨36, 58⟩, ⟨29, 54⟩, ⟨20, 37⟩, ⟨22, 50⟩, ⟨13, 33⟩]⟩
theorem profile1609_checked : profile1609.check := by decide +kernel

noncomputable def selection0_1609 : Selection :=
  ⟨0, 4, 2, (1589/100), 3116, -10, 28⟩
theorem selection0_1609_checked : selection0_1609.check profile1609 := by decide +kernel

noncomputable def selection1_1609 : Selection :=
  ⟨1, -4, 6, (743/50), 381, -186, 396⟩
theorem selection1_1609_checked : selection1_1609.check profile1609 := by decide +kernel

noncomputable def selection2_1609 : Selection :=
  ⟨2, -12, 10, (1463/100), 140, -330, 764⟩
theorem selection2_1609_checked : selection2_1609.check profile1609 := by decide +kernel

noncomputable def profile1610 : ProfileCell :=
  ⟨(17/30), (55/97),
    [29, 28, 27, 26, 24, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨13, 34⟩, ⟨22, 51⟩, ⟨6, 30⟩, ⟨38, 60⟩, ⟨31, 56⟩, ⟨15, 35⟩, ⟨24, 52⟩, ⟨8, 31⟩, ⟨1, 27⟩, ⟨40, 61⟩, ⟨33, 57⟩, ⟨17, 36⟩, ⟨26, 53⟩, ⟨10, 32⟩, ⟨3, 28⟩, ⟨42, 62⟩, ⟨35, 58⟩, ⟨19, 37⟩, ⟨28, 54⟩, ⟨12, 33⟩, ⟨5, 29⟩, ⟨37, 59⟩, ⟨21, 38⟩, ⟨30, 55⟩, ⟨43, 89⟩, ⟨14, 34⟩, ⟨23, 51⟩, ⟨7, 30⟩, ⟨39, 60⟩, ⟨32, 56⟩, ⟨16, 35⟩, ⟨25, 52⟩, ⟨9, 31⟩, ⟨2, 27⟩, ⟨41, 61⟩, ⟨34, 57⟩, ⟨18, 36⟩, ⟨27, 53⟩, ⟨11, 32⟩, ⟨4, 28⟩, ⟨36, 58⟩, ⟨20, 37⟩, ⟨29, 54⟩]⟩
theorem profile1610_checked : profile1610.check := by decide +kernel

noncomputable def selection0_1610 : Selection :=
  ⟨0, 3, 2, (348/25), 1489, -61, 118⟩
theorem selection0_1610_checked : selection0_1610.check profile1610 := by decide +kernel

noncomputable def selection1_1610 : Selection :=
  ⟨1, -5, 6, (1291/100), 181, -237, 486⟩
theorem selection1_1610_checked : selection1_1610.check profile1610 := by decide +kernel

noncomputable def selection2_1610 : Selection :=
  ⟨2, -13, 10, (1269/100), 67, -381, 854⟩
theorem selection2_1610_checked : selection2_1610.check profile1610 := by decide +kernel

noncomputable def profile1611 : ProfileCell :=
  ⟨(55/97), (38/67),
    [29, 28, 27, 26, 24, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨29, 55⟩, ⟨13, 34⟩, ⟨22, 51⟩, ⟨6, 30⟩, ⟨38, 60⟩, ⟨31, 56⟩, ⟨15, 35⟩, ⟨24, 52⟩, ⟨8, 31⟩, ⟨1, 27⟩, ⟨40, 61⟩, ⟨33, 57⟩, ⟨17, 36⟩, ⟨26, 53⟩, ⟨10, 32⟩, ⟨3, 28⟩, ⟨42, 62⟩, ⟨35, 58⟩, ⟨19, 37⟩, ⟨28, 54⟩, ⟨12, 33⟩, ⟨5, 29⟩, ⟨37, 59⟩, ⟨21, 38⟩, ⟨30, 55⟩, ⟨14, 34⟩, ⟨43, 89⟩, ⟨23, 51⟩, ⟨7, 30⟩, ⟨39, 60⟩, ⟨32, 56⟩, ⟨16, 35⟩, ⟨25, 52⟩, ⟨9, 31⟩, ⟨2, 27⟩, ⟨41, 61⟩, ⟨34, 57⟩, ⟨18, 36⟩, ⟨27, 53⟩, ⟨11, 32⟩, ⟨4, 28⟩, ⟨36, 58⟩, ⟨20, 37⟩]⟩
theorem profile1611_checked : profile1611.check := by decide +kernel

noncomputable def selection0_1611 : Selection :=
  ⟨0, 3, 2, (348/25), 667, 269, -464⟩
theorem selection0_1611_checked : selection0_1611.check profile1611 := by decide +kernel

noncomputable def selection1_1611 : Selection :=
  ⟨1, -5, 6, (1291/100), 81, 93, -96⟩
theorem selection1_1611_checked : selection1_1611.check profile1611 := by decide +kernel

noncomputable def selection2_1611 : Selection :=
  ⟨2, -13, 10, (1269/100), 30, -51, 272⟩
theorem selection2_1611_checked : selection2_1611.check profile1611 := by decide +kernel

noncomputable def profile1612 : ProfileCell :=
  ⟨(38/67), (59/104),
    [29, 28, 27, 26, 24, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨20, 38⟩, ⟨29, 55⟩, ⟨13, 34⟩, ⟨22, 51⟩, ⟨6, 30⟩, ⟨38, 60⟩, ⟨31, 56⟩, ⟨15, 35⟩, ⟨24, 52⟩, ⟨8, 31⟩, ⟨1, 27⟩, ⟨40, 61⟩, ⟨33, 57⟩, ⟨17, 36⟩, ⟨26, 53⟩, ⟨10, 32⟩, ⟨3, 28⟩, ⟨42, 62⟩, ⟨35, 58⟩, ⟨19, 37⟩, ⟨28, 54⟩, ⟨12, 33⟩, ⟨5, 29⟩, ⟨37, 59⟩, ⟨21, 38⟩, ⟨30, 55⟩, ⟨14, 34⟩, ⟨23, 51⟩, ⟨43, 89⟩, ⟨7, 30⟩, ⟨39, 60⟩, ⟨32, 56⟩, ⟨16, 35⟩, ⟨25, 52⟩, ⟨9, 31⟩, ⟨2, 27⟩, ⟨41, 61⟩, ⟨34, 57⟩, ⟨18, 36⟩, ⟨27, 53⟩, ⟨11, 32⟩, ⟨4, 28⟩, ⟨36, 58⟩]⟩
theorem profile1612_checked : profile1612.check := by decide +kernel

noncomputable def selection0_1612 : Selection :=
  ⟨0, 3, 2, (693/50), 619, 41, -62⟩
theorem selection0_1612_checked : selection0_1612.check profile1612 := by decide +kernel

noncomputable def selection1_1612 : Selection :=
  ⟨1, -5, 6, (323/25), 76, -135, 306⟩
theorem selection1_1612_checked : selection1_1612.check profile1612 := by decide +kernel

noncomputable def selection2_1612 : Selection :=
  ⟨2, -13, 10, (1271/100), 28, -279, 674⟩
theorem selection2_1612_checked : selection2_1612.check profile1612 := by decide +kernel

noncomputable def profile1613 : ProfileCell :=
  ⟨(59/104), (21/37),
    [29, 28, 27, 26, 24, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨36, 59⟩, ⟨20, 38⟩, ⟨29, 55⟩, ⟨13, 34⟩, ⟨22, 51⟩, ⟨6, 30⟩, ⟨38, 60⟩, ⟨31, 56⟩, ⟨15, 35⟩, ⟨24, 52⟩, ⟨8, 31⟩, ⟨1, 27⟩, ⟨40, 61⟩, ⟨33, 57⟩, ⟨17, 36⟩, ⟨26, 53⟩, ⟨10, 32⟩, ⟨3, 28⟩, ⟨42, 62⟩, ⟨35, 58⟩, ⟨19, 37⟩, ⟨28, 54⟩, ⟨12, 33⟩, ⟨5, 29⟩, ⟨37, 59⟩, ⟨21, 38⟩, ⟨30, 55⟩, ⟨14, 34⟩, ⟨23, 51⟩, ⟨7, 30⟩, ⟨43, 89⟩, ⟨39, 60⟩, ⟨32, 56⟩, ⟨16, 35⟩, ⟨25, 52⟩, ⟨9, 31⟩, ⟨2, 27⟩, ⟨41, 61⟩, ⟨34, 57⟩, ⟨18, 36⟩, ⟨27, 53⟩, ⟨11, 32⟩, ⟨4, 28⟩]⟩
theorem profile1613_checked : profile1613.check := by decide +kernel

noncomputable def selection0_1613 : Selection :=
  ⟨0, 3, 2, (277/20), 1118, 395, -686⟩
theorem selection0_1613_checked : selection0_1613.check profile1613 := by decide +kernel

noncomputable def selection1_1613 : Selection :=
  ⟨1, -5, 6, (323/25), 137, 219, -318⟩
theorem selection1_1613_checked : selection1_1613.check profile1613 := by decide +kernel

noncomputable def selection2_1613 : Selection :=
  ⟨2, -13, 10, (318/25), 51, 75, 50⟩
theorem selection2_1613_checked : selection2_1613.check profile1613 := by decide +kernel

noncomputable def profile1614 : ProfileCell :=
  ⟨(21/37), (25/44),
    [29, 28, 27, 26, 24, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨20, 38⟩, ⟨36, 59⟩, ⟨13, 34⟩, ⟨29, 55⟩, ⟨6, 30⟩, ⟨22, 51⟩, ⟨38, 60⟩, ⟨15, 35⟩, ⟨31, 56⟩, ⟨8, 31⟩, ⟨24, 52⟩, ⟨1, 27⟩, ⟨40, 61⟩, ⟨17, 36⟩, ⟨33, 57⟩, ⟨10, 32⟩, ⟨26, 53⟩, ⟨3, 28⟩, ⟨42, 62⟩, ⟨19, 37⟩, ⟨35, 58⟩, ⟨12, 33⟩, ⟨28, 54⟩, ⟨5, 29⟩, ⟨21, 38⟩, ⟨37, 59⟩, ⟨14, 34⟩, ⟨30, 55⟩, ⟨7, 30⟩, ⟨23, 51⟩, ⟨43, 89⟩, ⟨39, 60⟩, ⟨16, 35⟩, ⟨32, 56⟩, ⟨9, 31⟩, ⟨25, 52⟩, ⟨2, 27⟩, ⟨41, 61⟩, ⟨18, 36⟩, ⟨34, 57⟩, ⟨11, 32⟩, ⟨27, 53⟩, ⟨4, 28⟩]⟩
theorem profile1614_checked : profile1614.check := by decide +kernel

noncomputable def selection0_1614 : Selection :=
  ⟨0, 3, 2, (137/10), 2610, 185, -316⟩
theorem selection0_1614_checked : selection0_1614.check profile1614 := by decide +kernel

noncomputable def selection1_1614 : Selection :=
  ⟨1, -5, 6, (129/10), 323, 9, 52⟩
theorem selection1_1614_checked : selection1_1614.check profile1614 := by decide +kernel

noncomputable def selection2_1614 : Selection :=
  ⟨2, -13, 10, (1277/100), 119, -135, 420⟩
theorem selection2_1614_checked : selection2_1614.check profile1614 := by decide +kernel

noncomputable def profile1615 : ProfileCell :=
  ⟨(25/44), (54/95),
    [29, 28, 27, 26, 25, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨20, 38⟩, ⟨13, 34⟩, ⟨36, 59⟩, ⟨6, 30⟩, ⟨29, 55⟩, ⟨22, 51⟩, ⟨15, 35⟩, ⟨38, 60⟩, ⟨8, 31⟩, ⟨31, 56⟩, ⟨1, 27⟩, ⟨24, 52⟩, ⟨17, 36⟩, ⟨40, 61⟩, ⟨10, 32⟩, ⟨33, 57⟩, ⟨3, 28⟩, ⟨26, 53⟩, ⟨19, 37⟩, ⟨42, 62⟩, ⟨12, 33⟩, ⟨35, 58⟩, ⟨5, 29⟩, ⟨28, 54⟩, ⟨21, 38⟩, ⟨14, 34⟩, ⟨37, 59⟩, ⟨7, 30⟩, ⟨30, 55⟩, ⟨23, 51⟩, ⟨43, 89⟩, ⟨16, 35⟩, ⟨39, 60⟩, ⟨9, 31⟩, ⟨32, 56⟩, ⟨2, 27⟩, ⟨25, 52⟩, ⟨18, 36⟩, ⟨41, 61⟩, ⟨11, 32⟩, ⟨34, 57⟩, ⟨4, 28⟩, ⟨27, 53⟩]⟩
theorem profile1615_checked : profile1615.check := by decide +kernel

noncomputable def selection0_1615 : Selection :=
  ⟨0, 2, 2, (577/50), 855, -40, 80⟩
theorem selection0_1615_checked : selection0_1615.check profile1615 := by decide +kernel

noncomputable def selection1_1615 : Selection :=
  ⟨1, -6, 6, (547/50), 107, -216, 448⟩
theorem selection1_1615_checked : selection1_1615.check profile1615 := by decide +kernel

noncomputable def selection2_1615 : Selection :=
  ⟨2, -14, 10, (54/5), 40, -360, 816⟩
theorem selection2_1615_checked : selection2_1615.check profile1615 := by decide +kernel

noncomputable def profile1616 : ProfileCell :=
  ⟨(54/95), (29/51),
    [29, 28, 27, 26, 25, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 28, 29],
    [⟨27, 54⟩, ⟨20, 38⟩, ⟨13, 34⟩, ⟨36, 59⟩, ⟨6, 30⟩, ⟨29, 55⟩, ⟨22, 51⟩, ⟨15, 35⟩, ⟨38, 60⟩, ⟨8, 31⟩, ⟨31, 56⟩, ⟨1, 27⟩, ⟨24, 52⟩, ⟨17, 36⟩, ⟨40, 61⟩, ⟨10, 32⟩, ⟨33, 57⟩, ⟨3, 28⟩, ⟨26, 53⟩, ⟨19, 37⟩, ⟨42, 62⟩, ⟨12, 33⟩, ⟨35, 58⟩, ⟨5, 29⟩, ⟨28, 54⟩, ⟨21, 38⟩, ⟨14, 34⟩, ⟨37, 59⟩, ⟨7, 30⟩, ⟨30, 55⟩, ⟨23, 51⟩, ⟨16, 35⟩, ⟨43, 89⟩, ⟨39, 60⟩, ⟨9, 31⟩, ⟨32, 56⟩, ⟨2, 27⟩, ⟨25, 52⟩, ⟨18, 36⟩, ⟨41, 61⟩, ⟨11, 32⟩, ⟨34, 57⟩, ⟨4, 28⟩]⟩
theorem profile1616_checked : profile1616.check := by decide +kernel

noncomputable def selection0_1616 : Selection :=
  ⟨0, 2, 2, (577/50), 737, 176, -300⟩
theorem selection0_1616_checked : selection0_1616.check profile1616 := by decide +kernel

noncomputable def selection1_1616 : Selection :=
  ⟨1, -6, 6, (547/50), 92, 0, 68⟩
theorem selection1_1616_checked : selection1_1616.check profile1616 := by decide +kernel

noncomputable def selection2_1616 : Selection :=
  ⟨2, -14, 10, (541/50), 34, -144, 436⟩
theorem selection2_1616_checked : selection2_1616.check profile1616 := by decide +kernel

noncomputable def profile1617 : ProfileCell :=
  ⟨(29/51), (62/109),
    [29, 28, 27, 26, 25, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 29, 29],
    [⟨4, 29⟩, ⟨34, 58⟩, ⟨27, 54⟩, ⟨20, 38⟩, ⟨13, 34⟩, ⟨6, 30⟩, ⟨36, 59⟩, ⟨29, 55⟩, ⟨22, 51⟩, ⟨15, 35⟩, ⟨8, 31⟩, ⟨38, 60⟩, ⟨1, 27⟩, ⟨31, 56⟩, ⟨24, 52⟩, ⟨17, 36⟩, ⟨10, 32⟩, ⟨40, 61⟩, ⟨3, 28⟩, ⟨33, 57⟩, ⟨26, 53⟩, ⟨19, 37⟩, ⟨12, 33⟩, ⟨42, 62⟩, ⟨5, 29⟩, ⟨35, 58⟩, ⟨28, 54⟩, ⟨21, 38⟩, ⟨14, 34⟩, ⟨7, 30⟩, ⟨37, 59⟩, ⟨30, 55⟩, ⟨23, 51⟩, ⟨16, 35⟩, ⟨9, 31⟩, ⟨39, 60⟩, ⟨43, 89⟩, ⟨2, 27⟩, ⟨32, 56⟩, ⟨25, 52⟩, ⟨18, 36⟩, ⟨11, 32⟩, ⟨41, 61⟩]⟩
theorem profile1617_checked : profile1617.check := by decide +kernel

noncomputable def selection0_1617 : Selection :=
  ⟨0, 4, 2, (1549/100), 862, 176, -300⟩
theorem selection0_1617_checked : selection0_1617.check profile1617 := by decide +kernel

noncomputable def selection1_1617 : Selection :=
  ⟨1, -4, 6, (299/20), 110, 0, 68⟩
theorem selection1_1617_checked : selection1_1617.check profile1617 := by decide +kernel

noncomputable def selection2_1617 : Selection :=
  ⟨2, -12, 10, (371/25), 41, -144, 436⟩
theorem selection2_1617_checked : selection2_1617.check profile1617 := by decide +kernel

noncomputable def profile1618 : ProfileCell :=
  ⟨(62/109), (33/58),
    [29, 28, 27, 26, 25, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 29, 29],
    [⟨41, 62⟩, ⟨4, 29⟩, ⟨34, 58⟩, ⟨27, 54⟩, ⟨20, 38⟩, ⟨13, 34⟩, ⟨6, 30⟩, ⟨36, 59⟩, ⟨29, 55⟩, ⟨22, 51⟩, ⟨15, 35⟩, ⟨8, 31⟩, ⟨38, 60⟩, ⟨1, 27⟩, ⟨31, 56⟩, ⟨24, 52⟩, ⟨17, 36⟩, ⟨10, 32⟩, ⟨40, 61⟩, ⟨3, 28⟩, ⟨33, 57⟩, ⟨26, 53⟩, ⟨19, 37⟩, ⟨12, 33⟩, ⟨42, 62⟩, ⟨5, 29⟩, ⟨35, 58⟩, ⟨28, 54⟩, ⟨21, 38⟩, ⟨14, 34⟩, ⟨7, 30⟩, ⟨37, 59⟩, ⟨30, 55⟩, ⟨23, 51⟩, ⟨16, 35⟩, ⟨9, 31⟩, ⟨39, 60⟩, ⟨2, 27⟩, ⟨43, 89⟩, ⟨32, 56⟩, ⟨25, 52⟩, ⟨18, 36⟩, ⟨11, 32⟩]⟩
theorem profile1618_checked : profile1618.check := by decide +kernel

noncomputable def selection0_1618 : Selection :=
  ⟨0, 4, 2, (386/25), 755, 548, -954⟩
theorem selection0_1618_checked : selection0_1618.check profile1618 := by decide +kernel

noncomputable def selection1_1618 : Selection :=
  ⟨1, -4, 6, (299/20), 97, 372, -586⟩
theorem selection1_1618_checked : selection1_1618.check profile1618 := by decide +kernel

noncomputable def selection2_1618 : Selection :=
  ⟨2, -12, 10, (371/25), 36, 228, -218⟩
theorem selection2_1618_checked : selection2_1618.check profile1618 := by decide +kernel

noncomputable def profile1619 : ProfileCell :=
  ⟨(33/58), (37/65),
    [29, 28, 27, 26, 25, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 29, 29],
    [⟨11, 33⟩, ⟨4, 29⟩, ⟨41, 62⟩, ⟨34, 58⟩, ⟨27, 54⟩, ⟨20, 38⟩, ⟨13, 34⟩, ⟨6, 30⟩, ⟨36, 59⟩, ⟨29, 55⟩, ⟨22, 51⟩, ⟨15, 35⟩, ⟨8, 31⟩, ⟨1, 27⟩, ⟨38, 60⟩, ⟨31, 56⟩, ⟨24, 52⟩, ⟨17, 36⟩, ⟨10, 32⟩, ⟨3, 28⟩, ⟨40, 61⟩, ⟨33, 57⟩, ⟨26, 53⟩, ⟨19, 37⟩, ⟨12, 33⟩, ⟨5, 29⟩, ⟨42, 62⟩, ⟨35, 58⟩, ⟨28, 54⟩, ⟨21, 38⟩, ⟨14, 34⟩, ⟨7, 30⟩, ⟨37, 59⟩, ⟨30, 55⟩, ⟨23, 51⟩, ⟨16, 35⟩, ⟨9, 31⟩, ⟨2, 27⟩, ⟨39, 60⟩, ⟨32, 56⟩, ⟨43, 89⟩, ⟨25, 52⟩, ⟨18, 36⟩]⟩
theorem profile1619_checked : profile1619.check := by decide +kernel

noncomputable def selection0_1619 : Selection :=
  ⟨0, 4, 2, (1531/100), 1254, 185, -316⟩
theorem selection0_1619_checked : selection0_1619.check profile1619 := by decide +kernel

noncomputable def selection1_1619 : Selection :=
  ⟨1, -4, 6, (373/25), 161, 9, 52⟩
theorem selection1_1619_checked : selection1_1619.check profile1619 := by decide +kernel

noncomputable def selection2_1619 : Selection :=
  ⟨2, -12, 10, (297/20), 60, -135, 420⟩
theorem selection2_1619_checked : selection2_1619.check profile1619 := by decide +kernel

noncomputable def profile1620 : ProfileCell :=
  ⟨(37/65), (45/79),
    [29, 28, 27, 26, 25, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 29, 29],
    [⟨18, 37⟩, ⟨11, 33⟩, ⟨4, 29⟩, ⟨41, 62⟩, ⟨34, 58⟩, ⟨27, 54⟩, ⟨20, 38⟩, ⟨13, 34⟩, ⟨6, 30⟩, ⟨36, 59⟩, ⟨29, 55⟩, ⟨22, 51⟩, ⟨15, 35⟩, ⟨8, 31⟩, ⟨1, 27⟩, ⟨38, 60⟩, ⟨31, 56⟩, ⟨24, 52⟩, ⟨17, 36⟩, ⟨10, 32⟩, ⟨3, 28⟩, ⟨40, 61⟩, ⟨33, 57⟩, ⟨26, 53⟩, ⟨19, 37⟩, ⟨12, 33⟩, ⟨5, 29⟩, ⟨42, 62⟩, ⟨35, 58⟩, ⟨28, 54⟩, ⟨21, 38⟩, ⟨14, 34⟩, ⟨7, 30⟩, ⟨37, 59⟩, ⟨30, 55⟩, ⟨23, 51⟩, ⟨16, 35⟩, ⟨9, 31⟩, ⟨2, 27⟩, ⟨39, 60⟩, ⟨32, 56⟩, ⟨25, 52⟩, ⟨43, 89⟩]⟩
theorem profile1620_checked : profile1620.check := by decide +kernel

noncomputable def selection0_1620 : Selection :=
  ⟨0, 4, 2, (1523/100), 1830, 37, -56⟩
theorem selection0_1620_checked : selection0_1620.check profile1620 := by decide +kernel

noncomputable def selection1_1620 : Selection :=
  ⟨1, -4, 6, (374/25), 237, -139, 312⟩
theorem selection1_1620_checked : selection1_1620.check profile1620 := by decide +kernel

noncomputable def selection2_1620 : Selection :=
  ⟨2, -12, 10, (149/10), 88, -283, 680⟩
theorem selection2_1620_checked : selection2_1620.check profile1620 := by decide +kernel

noncomputable def profile1621 : ProfileCell :=
  ⟨(45/79), (53/93),
    [29, 28, 27, 26, 25, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 29, 29],
    [⟨43, 90⟩, ⟨18, 37⟩, ⟨11, 33⟩, ⟨4, 29⟩, ⟨41, 62⟩, ⟨34, 58⟩, ⟨27, 54⟩, ⟨20, 38⟩, ⟨13, 34⟩, ⟨6, 30⟩, ⟨36, 59⟩, ⟨29, 55⟩, ⟨22, 51⟩, ⟨15, 35⟩, ⟨8, 31⟩, ⟨1, 27⟩, ⟨38, 60⟩, ⟨31, 56⟩, ⟨24, 52⟩, ⟨17, 36⟩, ⟨10, 32⟩, ⟨3, 28⟩, ⟨40, 61⟩, ⟨33, 57⟩, ⟨26, 53⟩, ⟨19, 37⟩, ⟨12, 33⟩, ⟨5, 29⟩, ⟨42, 62⟩, ⟨35, 58⟩, ⟨28, 54⟩, ⟨21, 38⟩, ⟨14, 34⟩, ⟨7, 30⟩, ⟨37, 59⟩, ⟨30, 55⟩, ⟨23, 51⟩, ⟨16, 35⟩, ⟨9, 31⟩, ⟨2, 27⟩, ⟨39, 60⟩, ⟨32, 56⟩, ⟨25, 52⟩]⟩
theorem profile1621_checked : profile1621.check := by decide +kernel

noncomputable def selection0_1621 : Selection :=
  ⟨0, 4, 2, (783/50), 1314, -1043, 1840⟩
theorem selection0_1621_checked : selection0_1621.check profile1621 := by decide +kernel

noncomputable def selection1_1621 : Selection :=
  ⟨1, -4, 6, (1517/100), 168, -1309, 2366⟩
theorem selection1_1621_checked : selection1_1621.check profile1621 := by decide +kernel

noncomputable def selection2_1621 : Selection :=
  ⟨2, -12, 10, (301/20), 63, -1453, 2734⟩
theorem selection2_1621_checked : selection2_1621.check profile1621 := by decide +kernel

noncomputable def profile1622 : ProfileCell :=
  ⟨(53/93), (57/100),
    [29, 28, 27, 26, 25, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 29, 29],
    [⟨25, 53⟩, ⟨18, 37⟩, ⟨43, 90⟩, ⟨11, 33⟩, ⟨4, 29⟩, ⟨41, 62⟩, ⟨34, 58⟩, ⟨27, 54⟩, ⟨20, 38⟩, ⟨13, 34⟩, ⟨6, 30⟩, ⟨36, 59⟩, ⟨29, 55⟩, ⟨22, 51⟩, ⟨15, 35⟩, ⟨8, 31⟩, ⟨1, 27⟩, ⟨38, 60⟩, ⟨31, 56⟩, ⟨24, 52⟩, ⟨17, 36⟩, ⟨10, 32⟩, ⟨3, 28⟩, ⟨40, 61⟩, ⟨33, 57⟩, ⟨26, 53⟩, ⟨19, 37⟩, ⟨12, 33⟩, ⟨5, 29⟩, ⟨42, 62⟩, ⟨35, 58⟩, ⟨28, 54⟩, ⟨21, 38⟩, ⟨14, 34⟩, ⟨7, 30⟩, ⟨37, 59⟩, ⟨30, 55⟩, ⟨23, 51⟩, ⟨16, 35⟩, ⟨9, 31⟩, ⟨2, 27⟩, ⟨39, 60⟩, ⟨32, 56⟩]⟩
theorem profile1622_checked : profile1622.check := by decide +kernel

noncomputable def selection0_1622 : Selection :=
  ⟨0, 4, 2, (1579/100), 523, -831, 1468⟩
theorem selection0_1622_checked : selection0_1622.check profile1622 := by decide +kernel

noncomputable def selection1_1622 : Selection :=
  ⟨1, -4, 6, (1523/100), 67, -991, 1808⟩
theorem selection1_1622_checked : selection1_1622.check profile1622 := by decide +kernel

noncomputable def selection2_1622 : Selection :=
  ⟨2, -12, 10, (1509/100), 25, -1135, 2176⟩
theorem selection2_1622_checked : selection2_1622.check profile1622 := by decide +kernel

noncomputable def profile1623 : ProfileCell :=
  ⟨(57/100), (61/107),
    [29, 28, 27, 26, 25, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 29, 29],
    [⟨32, 57⟩, ⟨25, 53⟩, ⟨18, 37⟩, ⟨11, 33⟩, ⟨43, 90⟩, ⟨4, 29⟩, ⟨41, 62⟩, ⟨34, 58⟩, ⟨27, 54⟩, ⟨20, 38⟩, ⟨13, 34⟩, ⟨6, 30⟩, ⟨36, 59⟩, ⟨29, 55⟩, ⟨22, 51⟩, ⟨15, 35⟩, ⟨8, 31⟩, ⟨1, 27⟩, ⟨38, 60⟩, ⟨31, 56⟩, ⟨24, 52⟩, ⟨17, 36⟩, ⟨10, 32⟩, ⟨3, 28⟩, ⟨40, 61⟩, ⟨33, 57⟩, ⟨26, 53⟩, ⟨19, 37⟩, ⟨12, 33⟩, ⟨5, 29⟩, ⟨42, 62⟩, ⟨35, 58⟩, ⟨28, 54⟩, ⟨21, 38⟩, ⟨14, 34⟩, ⟨7, 30⟩, ⟨37, 59⟩, ⟨30, 55⟩, ⟨23, 51⟩, ⟨16, 35⟩, ⟨9, 31⟩, ⟨2, 27⟩, ⟨39, 60⟩]⟩
theorem profile1623_checked : profile1623.check := by decide +kernel

noncomputable def selection0_1623 : Selection :=
  ⟨0, 4, 2, (397/25), 457, -603, 1068⟩
theorem selection0_1623_checked : selection0_1623.check profile1623 := by decide +kernel

noncomputable def selection1_1623 : Selection :=
  ⟨1, -4, 6, (1527/100), 58, -763, 1408⟩
theorem selection1_1623_checked : selection1_1623.check profile1623 := by decide +kernel

noncomputable def selection2_1623 : Selection :=
  ⟨2, -12, 10, (1513/100), 22, -907, 1776⟩
theorem selection2_1623_checked : selection2_1623.check profile1623 := by decide +kernel

noncomputable def profile1624 : ProfileCell :=
  ⟨(61/107), (4/7),
    [29, 28, 27, 26, 25, 23, 22, 21, 20, 19, 18, 17, 15, 14, 13, 12], [27, 27, 28, 29, 29],
    [⟨39, 61⟩, ⟨32, 57⟩, ⟨25, 53⟩, ⟨18, 37⟩, ⟨11, 33⟩, ⟨4, 29⟩, ⟨43, 90⟩, ⟨41, 62⟩, ⟨34, 58⟩, ⟨27, 54⟩, ⟨20, 38⟩, ⟨13, 34⟩, ⟨6, 30⟩, ⟨36, 59⟩, ⟨29, 55⟩, ⟨22, 51⟩, ⟨15, 35⟩, ⟨8, 31⟩, ⟨1, 27⟩, ⟨38, 60⟩, ⟨31, 56⟩, ⟨24, 52⟩, ⟨17, 36⟩, ⟨10, 32⟩, ⟨3, 28⟩, ⟨40, 61⟩, ⟨33, 57⟩, ⟨26, 53⟩, ⟨19, 37⟩, ⟨12, 33⟩, ⟨5, 29⟩, ⟨42, 62⟩, ⟨35, 58⟩, ⟨28, 54⟩, ⟨21, 38⟩, ⟨14, 34⟩, ⟨7, 30⟩, ⟨37, 59⟩, ⟨30, 55⟩, ⟨23, 51⟩, ⟨16, 35⟩, ⟨9, 31⟩, ⟨2, 27⟩]⟩
theorem profile1624_checked : profile1624.check := by decide +kernel

noncomputable def selection0_1624 : Selection :=
  ⟨0, 4, 2, (819/50), 6714, -237, 426⟩
theorem selection0_1624_checked : selection0_1624.check profile1624 := by decide +kernel

noncomputable def selection1_1624 : Selection :=
  ⟨1, -4, 6, (78/5), 845, -397, 766⟩
theorem selection1_1624_checked : selection1_1624.check profile1624 := by decide +kernel

noncomputable def selection2_1624 : Selection :=
  ⟨2, -12, 10, (771/50), 312, -541, 1134⟩
theorem selection2_1624_checked : selection2_1624.check profile1624 := by decide +kernel

noncomputable def profile1625 : ProfileCell :=
  ⟨(4/7), (63/110),
    [29, 28, 27, 26, 25, 24, 22, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨2, 28⟩, ⟨9, 32⟩, ⟨16, 36⟩, ⟨23, 52⟩, ⟨30, 56⟩, ⟨37, 60⟩, ⟨4, 29⟩, ⟨11, 33⟩, ⟨18, 37⟩, ⟨25, 53⟩, ⟨32, 57⟩, ⟨39, 61⟩, ⟨6, 30⟩, ⟨13, 34⟩, ⟨20, 38⟩, ⟨27, 54⟩, ⟨34, 58⟩, ⟨41, 62⟩, ⟨43, 90⟩, ⟨1, 27⟩, ⟨8, 31⟩, ⟨15, 35⟩, ⟨22, 51⟩, ⟨29, 55⟩, ⟨36, 59⟩, ⟨3, 28⟩, ⟨10, 32⟩, ⟨17, 36⟩, ⟨24, 52⟩, ⟨31, 56⟩, ⟨38, 60⟩, ⟨5, 29⟩, ⟨12, 33⟩, ⟨19, 37⟩, ⟨26, 53⟩, ⟨33, 57⟩, ⟨40, 61⟩, ⟨7, 30⟩, ⟨14, 34⟩, ⟨21, 38⟩, ⟨28, 54⟩, ⟨35, 58⟩, ⟨42, 62⟩]⟩
theorem profile1625_checked : profile1625.check := by decide +kernel

noncomputable def selection0_1625 : Selection :=
  ⟨0, 4, 2, (433/25), 6874, -469, 832⟩
theorem selection0_1625_checked : selection0_1625.check profile1625 := by decide +kernel

noncomputable def selection1_1625 : Selection :=
  ⟨1, -4, 6, (1609/100), 846, -645, 1200⟩
theorem selection1_1625_checked : selection1_1625.check profile1625 := by decide +kernel

noncomputable def selection2_1625 : Selection :=
  ⟨2, -12, 10, (791/50), 311, -789, 1568⟩
theorem selection2_1625_checked : selection2_1625.check profile1625 := by decide +kernel

noncomputable def profile1626 : ProfileCell :=
  ⟨(63/110), (59/103),
    [29, 28, 27, 26, 25, 24, 22, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨42, 63⟩, ⟨2, 28⟩, ⟨9, 32⟩, ⟨16, 36⟩, ⟨23, 52⟩, ⟨30, 56⟩, ⟨37, 60⟩, ⟨4, 29⟩, ⟨11, 33⟩, ⟨18, 37⟩, ⟨25, 53⟩, ⟨32, 57⟩, ⟨39, 61⟩, ⟨6, 30⟩, ⟨13, 34⟩, ⟨20, 38⟩, ⟨27, 54⟩, ⟨34, 58⟩, ⟨41, 62⟩, ⟨1, 27⟩, ⟨43, 90⟩, ⟨8, 31⟩, ⟨15, 35⟩, ⟨22, 51⟩, ⟨29, 55⟩, ⟨36, 59⟩, ⟨3, 28⟩, ⟨10, 32⟩, ⟨17, 36⟩, ⟨24, 52⟩, ⟨31, 56⟩, ⟨38, 60⟩, ⟨5, 29⟩, ⟨12, 33⟩, ⟨19, 37⟩, ⟨26, 53⟩, ⟨33, 57⟩, ⟨40, 61⟩, ⟨7, 30⟩, ⟨14, 34⟩, ⟨21, 38⟩, ⟨28, 54⟩, ⟨35, 58⟩]⟩
theorem profile1626_checked : profile1626.check := by decide +kernel

noncomputable def selection0_1626 : Selection :=
  ⟨0, 4, 2, (347/20), 467, -217, 392⟩
theorem selection0_1626_checked : selection0_1626.check profile1626 := by decide +kernel

noncomputable def selection1_1626 : Selection :=
  ⟨1, -4, 6, (1611/100), 58, -393, 760⟩
theorem selection1_1626_checked : selection1_1626.check profile1626 := by decide +kernel

noncomputable def selection2_1626 : Selection :=
  ⟨2, -12, 10, (396/25), 22, -537, 1128⟩
theorem selection2_1626_checked : selection2_1626.check profile1626 := by decide +kernel

noncomputable def profile1627 : ProfileCell :=
  ⟨(59/103), (55/96),
    [29, 28, 27, 26, 25, 24, 22, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨35, 59⟩, ⟨42, 63⟩, ⟨2, 28⟩, ⟨9, 32⟩, ⟨16, 36⟩, ⟨23, 52⟩, ⟨30, 56⟩, ⟨37, 60⟩, ⟨4, 29⟩, ⟨11, 33⟩, ⟨18, 37⟩, ⟨25, 53⟩, ⟨32, 57⟩, ⟨39, 61⟩, ⟨6, 30⟩, ⟨13, 34⟩, ⟨20, 38⟩, ⟨27, 54⟩, ⟨34, 58⟩, ⟨41, 62⟩, ⟨1, 27⟩, ⟨8, 31⟩, ⟨43, 90⟩, ⟨15, 35⟩, ⟨22, 51⟩, ⟨29, 55⟩, ⟨36, 59⟩, ⟨3, 28⟩, ⟨10, 32⟩, ⟨17, 36⟩, ⟨24, 52⟩, ⟨31, 56⟩, ⟨38, 60⟩, ⟨5, 29⟩, ⟨12, 33⟩, ⟨19, 37⟩, ⟨26, 53⟩, ⟨33, 57⟩, ⟨40, 61⟩, ⟨7, 30⟩, ⟨14, 34⟩, ⟨21, 38⟩, ⟨28, 54⟩]⟩
theorem profile1627_checked : profile1627.check := by decide +kernel

noncomputable def selection0_1627 : Selection :=
  ⟨0, 4, 2, (347/20), 535, 137, -226⟩
theorem selection0_1627_checked : selection0_1627.check profile1627 := by decide +kernel

noncomputable def selection1_1627 : Selection :=
  ⟨1, -4, 6, (403/25), 66, -39, 142⟩
theorem selection1_1627_checked : selection1_1627.check profile1627 := by decide +kernel

noncomputable def selection2_1627 : Selection :=
  ⟨2, -12, 10, (317/20), 25, -183, 510⟩
theorem selection2_1627_checked : selection2_1627.check profile1627 := by decide +kernel

noncomputable def profile1628 : ProfileCell :=
  ⟨(55/96), (39/68),
    [29, 28, 27, 26, 25, 24, 22, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨28, 55⟩, ⟨35, 59⟩, ⟨42, 63⟩, ⟨2, 28⟩, ⟨9, 32⟩, ⟨16, 36⟩, ⟨23, 52⟩, ⟨30, 56⟩, ⟨37, 60⟩, ⟨4, 29⟩, ⟨11, 33⟩, ⟨18, 37⟩, ⟨25, 53⟩, ⟨32, 57⟩, ⟨39, 61⟩, ⟨6, 30⟩, ⟨13, 34⟩, ⟨20, 38⟩, ⟨27, 54⟩, ⟨34, 58⟩, ⟨41, 62⟩, ⟨1, 27⟩, ⟨8, 31⟩, ⟨15, 35⟩, ⟨43, 90⟩, ⟨22, 51⟩, ⟨29, 55⟩, ⟨36, 59⟩, ⟨3, 28⟩, ⟨10, 32⟩, ⟨17, 36⟩, ⟨24, 52⟩, ⟨31, 56⟩, ⟨38, 60⟩, ⟨5, 29⟩, ⟨12, 33⟩, ⟨19, 37⟩, ⟨26, 53⟩, ⟨33, 57⟩, ⟨40, 61⟩, ⟨7, 30⟩, ⟨14, 34⟩, ⟨21, 38⟩]⟩
theorem profile1628_checked : profile1628.check := by decide +kernel

noncomputable def selection0_1628 : Selection :=
  ⟨0, 4, 2, (1733/100), 3232, 357, -610⟩
theorem selection0_1628_checked : selection0_1628.check profile1628 := by decide +kernel

noncomputable def selection1_1628 : Selection :=
  ⟨1, -4, 6, (403/25), 400, 181, -242⟩
theorem selection1_1628_checked : selection1_1628.check profile1628 := by decide +kernel

noncomputable def selection2_1628 : Selection :=
  ⟨2, -12, 10, (793/50), 147, 37, 126⟩
theorem selection2_1628_checked : selection2_1628.check profile1628 := by decide +kernel

noncomputable def profile1629 : ProfileCell :=
  ⟨(39/68), (35/61),
    [29, 28, 27, 26, 25, 24, 22, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨21, 39⟩, ⟨28, 55⟩, ⟨35, 59⟩, ⟨42, 63⟩, ⟨2, 28⟩, ⟨9, 32⟩, ⟨16, 36⟩, ⟨23, 52⟩, ⟨30, 56⟩, ⟨37, 60⟩, ⟨4, 29⟩, ⟨11, 33⟩, ⟨18, 37⟩, ⟨25, 53⟩, ⟨32, 57⟩, ⟨39, 61⟩, ⟨6, 30⟩, ⟨13, 34⟩, ⟨20, 38⟩, ⟨27, 54⟩, ⟨34, 58⟩, ⟨41, 62⟩, ⟨1, 27⟩, ⟨8, 31⟩, ⟨15, 35⟩, ⟨22, 51⟩, ⟨43, 90⟩, ⟨29, 55⟩, ⟨36, 59⟩, ⟨3, 28⟩, ⟨10, 32⟩, ⟨17, 36⟩, ⟨24, 52⟩, ⟨31, 56⟩, ⟨38, 60⟩, ⟨5, 29⟩, ⟨12, 33⟩, ⟨19, 37⟩, ⟨26, 53⟩, ⟨33, 57⟩, ⟨40, 61⟩, ⟨7, 30⟩, ⟨14, 34⟩]⟩
theorem profile1629_checked : profile1629.check := by decide +kernel

noncomputable def selection0_1629 : Selection :=
  ⟨0, 4, 2, 17, 1246, 201, -338⟩
theorem selection0_1629_checked : selection0_1629.check profile1629 := by decide +kernel

noncomputable def selection1_1629 : Selection :=
  ⟨1, -4, 6, (1607/100), 157, 25, 30⟩
theorem selection1_1629_checked : selection1_1629.check profile1629 := by decide +kernel

noncomputable def selection2_1629 : Selection :=
  ⟨2, -12, 10, (397/25), 58, -119, 398⟩
theorem selection2_1629_checked : selection2_1629.check profile1629 := by decide +kernel

noncomputable def profile1630 : ProfileCell :=
  ⟨(35/61), (31/54),
    [29, 28, 27, 26, 25, 24, 22, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨14, 35⟩, ⟨21, 39⟩, ⟨28, 55⟩, ⟨35, 59⟩, ⟨2, 28⟩, ⟨42, 63⟩, ⟨9, 32⟩, ⟨16, 36⟩, ⟨23, 52⟩, ⟨30, 56⟩, ⟨37, 60⟩, ⟨4, 29⟩, ⟨11, 33⟩, ⟨18, 37⟩, ⟨25, 53⟩, ⟨32, 57⟩, ⟨39, 61⟩, ⟨6, 30⟩, ⟨13, 34⟩, ⟨20, 38⟩, ⟨27, 54⟩, ⟨34, 58⟩, ⟨1, 27⟩, ⟨41, 62⟩, ⟨8, 31⟩, ⟨15, 35⟩, ⟨22, 51⟩, ⟨29, 55⟩, ⟨43, 90⟩, ⟨36, 59⟩, ⟨3, 28⟩, ⟨10, 32⟩, ⟨17, 36⟩, ⟨24, 52⟩, ⟨31, 56⟩, ⟨38, 60⟩, ⟨5, 29⟩, ⟨12, 33⟩, ⟨19, 37⟩, ⟨26, 53⟩, ⟨33, 57⟩, ⟨40, 61⟩, ⟨7, 30⟩]⟩
theorem profile1630_checked : profile1630.check := by decide +kernel

noncomputable def selection0_1630 : Selection :=
  ⟨0, 4, 2, (847/50), 1562, -9, 28⟩
theorem selection0_1630_checked : selection0_1630.check profile1630 := by decide +kernel

noncomputable def selection1_1630 : Selection :=
  ⟨1, -4, 6, (1611/100), 198, -185, 396⟩
theorem selection1_1630_checked : selection1_1630.check profile1630 := by decide +kernel

noncomputable def selection2_1630 : Selection :=
  ⟨2, -12, 10, (1593/100), 73, -329, 764⟩
theorem selection2_1630_checked : selection2_1630.check profile1630 := by decide +kernel

noncomputable def profile1631 : ProfileCell :=
  ⟨(31/54), (58/101),
    [29, 28, 27, 26, 25, 24, 22, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨7, 31⟩, ⟨40, 62⟩, ⟨14, 35⟩, ⟨21, 39⟩, ⟨28, 55⟩, ⟨2, 28⟩, ⟨35, 59⟩, ⟨9, 32⟩, ⟨42, 63⟩, ⟨16, 36⟩, ⟨23, 52⟩, ⟨30, 56⟩, ⟨4, 29⟩, ⟨37, 60⟩, ⟨11, 33⟩, ⟨18, 37⟩, ⟨25, 53⟩, ⟨32, 57⟩, ⟨6, 30⟩, ⟨39, 61⟩, ⟨13, 34⟩, ⟨20, 38⟩, ⟨27, 54⟩, ⟨1, 27⟩, ⟨34, 58⟩, ⟨8, 31⟩, ⟨41, 62⟩, ⟨15, 35⟩, ⟨22, 51⟩, ⟨29, 55⟩, ⟨3, 28⟩, ⟨36, 59⟩, ⟨43, 90⟩, ⟨10, 32⟩, ⟨17, 36⟩, ⟨24, 52⟩, ⟨31, 56⟩, ⟨5, 29⟩, ⟨38, 60⟩, ⟨12, 33⟩, ⟨19, 37⟩, ⟨26, 53⟩, ⟨33, 57⟩]⟩
theorem profile1631_checked : profile1631.check := by decide +kernel

noncomputable def selection0_1631 : Selection :=
  ⟨0, 4, 2, (339/20), 943, -40, 82⟩
theorem selection0_1631_checked : selection0_1631.check profile1631 := by decide +kernel

noncomputable def selection1_1631 : Selection :=
  ⟨1, -4, 6, (807/50), 120, -216, 450⟩
theorem selection1_1631_checked : selection1_1631.check profile1631 := by decide +kernel

noncomputable def selection2_1631 : Selection :=
  ⟨2, -12, 10, (319/20), 45, -360, 818⟩
theorem selection2_1631_checked : selection2_1631.check profile1631 := by decide +kernel

noncomputable def profile1632 : ProfileCell :=
  ⟨(58/101), (27/47),
    [29, 28, 27, 26, 25, 24, 22, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨33, 58⟩, ⟨7, 31⟩, ⟨40, 62⟩, ⟨14, 35⟩, ⟨21, 39⟩, ⟨28, 55⟩, ⟨2, 28⟩, ⟨35, 59⟩, ⟨9, 32⟩, ⟨42, 63⟩, ⟨16, 36⟩, ⟨23, 52⟩, ⟨30, 56⟩, ⟨4, 29⟩, ⟨37, 60⟩, ⟨11, 33⟩, ⟨18, 37⟩, ⟨25, 53⟩, ⟨32, 57⟩, ⟨6, 30⟩, ⟨39, 61⟩, ⟨13, 34⟩, ⟨20, 38⟩, ⟨27, 54⟩, ⟨1, 27⟩, ⟨34, 58⟩, ⟨8, 31⟩, ⟨41, 62⟩, ⟨15, 35⟩, ⟨22, 51⟩, ⟨29, 55⟩, ⟨3, 28⟩, ⟨36, 59⟩, ⟨10, 32⟩, ⟨43, 90⟩, ⟨17, 36⟩, ⟨24, 52⟩, ⟨31, 56⟩, ⟨5, 29⟩, ⟨38, 60⟩, ⟨12, 33⟩, ⟨19, 37⟩, ⟨26, 53⟩]⟩
theorem profile1632_checked : profile1632.check := by decide +kernel

noncomputable def selection0_1632 : Selection :=
  ⟨0, 4, 2, (339/20), 1083, 308, -524⟩
theorem selection0_1632_checked : selection0_1632.check profile1632 := by decide +kernel

noncomputable def selection1_1632 : Selection :=
  ⟨1, -4, 6, (807/50), 138, 132, -156⟩
theorem selection1_1632_checked : selection1_1632.check profile1632 := by decide +kernel

noncomputable def selection2_1632 : Selection :=
  ⟨2, -12, 10, (399/25), 51, -12, 212⟩
theorem selection2_1632_checked : selection2_1632.check profile1632 := by decide +kernel

noncomputable def profile1633 : ProfileCell :=
  ⟨(27/47), (23/40),
    [29, 28, 27, 26, 25, 24, 22, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨26, 54⟩, ⟨7, 31⟩, ⟨33, 58⟩, ⟨14, 35⟩, ⟨40, 62⟩, ⟨21, 39⟩, ⟨2, 28⟩, ⟨28, 55⟩, ⟨9, 32⟩, ⟨35, 59⟩, ⟨16, 36⟩, ⟨42, 63⟩, ⟨23, 52⟩, ⟨4, 29⟩, ⟨30, 56⟩, ⟨11, 33⟩, ⟨37, 60⟩, ⟨18, 37⟩, ⟨25, 53⟩, ⟨6, 30⟩, ⟨32, 57⟩, ⟨13, 34⟩, ⟨39, 61⟩, ⟨20, 38⟩, ⟨1, 27⟩, ⟨27, 54⟩, ⟨8, 31⟩, ⟨34, 58⟩, ⟨15, 35⟩, ⟨41, 62⟩, ⟨22, 51⟩, ⟨3, 28⟩, ⟨29, 55⟩, ⟨10, 32⟩, ⟨36, 59⟩, ⟨17, 36⟩, ⟨43, 90⟩, ⟨24, 52⟩, ⟨5, 29⟩, ⟨31, 56⟩, ⟨12, 33⟩, ⟨38, 60⟩, ⟨19, 37⟩]⟩
theorem profile1633_checked : profile1633.check := by decide +kernel

noncomputable def selection0_1633 : Selection :=
  ⟨0, 4, 2, (843/50), 2715, 308, -524⟩
theorem selection0_1633_checked : selection0_1633.check profile1633 := by decide +kernel

noncomputable def selection1_1633 : Selection :=
  ⟨1, -4, 6, (1613/100), 346, 132, -156⟩
theorem selection1_1633_checked : selection1_1633.check profile1633 := by decide +kernel

noncomputable def selection2_1633 : Selection :=
  ⟨2, -12, 10, (1599/100), 129, -12, 212⟩
theorem selection2_1633_checked : selection2_1633.check profile1633 := by decide +kernel

noncomputable def profile1634 : ProfileCell :=
  ⟨(23/40), (61/106),
    [29, 28, 27, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨7, 31⟩, ⟨26, 54⟩, ⟨14, 35⟩, ⟨33, 58⟩, ⟨21, 39⟩, ⟨40, 62⟩, ⟨2, 28⟩, ⟨9, 32⟩, ⟨28, 55⟩, ⟨16, 36⟩, ⟨35, 59⟩, ⟨42, 63⟩, ⟨4, 29⟩, ⟨23, 52⟩, ⟨11, 33⟩, ⟨30, 56⟩, ⟨18, 37⟩, ⟨37, 60⟩, ⟨6, 30⟩, ⟨25, 53⟩, ⟨13, 34⟩, ⟨32, 57⟩, ⟨20, 38⟩, ⟨39, 61⟩, ⟨1, 27⟩, ⟨8, 31⟩, ⟨27, 54⟩, ⟨15, 35⟩, ⟨34, 58⟩, ⟨41, 62⟩, ⟨3, 28⟩, ⟨22, 51⟩, ⟨10, 32⟩, ⟨29, 55⟩, ⟨17, 36⟩, ⟨36, 59⟩, ⟨43, 90⟩, ⟨5, 29⟩, ⟨24, 52⟩, ⟨12, 33⟩, ⟨31, 56⟩, ⟨19, 37⟩, ⟨38, 60⟩]⟩
theorem profile1634_checked : profile1634.check := by decide +kernel

noncomputable def selection0_1634 : Selection :=
  ⟨0, 3, 2, (1461/100), 2083, 147, -244⟩
theorem selection0_1634_checked : selection0_1634.check profile1634 := by decide +kernel

noncomputable def selection1_1634 : Selection :=
  ⟨1, -5, 6, (353/25), 269, -29, 124⟩
theorem selection1_1634_checked : selection1_1634.check profile1634 := by decide +kernel

noncomputable def selection2_1634 : Selection :=
  ⟨2, -13, 10, (1403/100), 100, -173, 492⟩
theorem selection2_1634_checked : selection2_1634.check profile1634 := by decide +kernel

noncomputable def profile1635 : ProfileCell :=
  ⟨(61/106), (19/33),
    [29, 28, 27, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨38, 61⟩, ⟨7, 31⟩, ⟨26, 54⟩, ⟨14, 35⟩, ⟨33, 58⟩, ⟨21, 39⟩, ⟨40, 62⟩, ⟨2, 28⟩, ⟨9, 32⟩, ⟨28, 55⟩, ⟨16, 36⟩, ⟨35, 59⟩, ⟨42, 63⟩, ⟨4, 29⟩, ⟨23, 52⟩, ⟨11, 33⟩, ⟨30, 56⟩, ⟨18, 37⟩, ⟨37, 60⟩, ⟨6, 30⟩, ⟨25, 53⟩, ⟨13, 34⟩, ⟨32, 57⟩, ⟨20, 38⟩, ⟨39, 61⟩, ⟨1, 27⟩, ⟨8, 31⟩, ⟨27, 54⟩, ⟨15, 35⟩, ⟨34, 58⟩, ⟨41, 62⟩, ⟨3, 28⟩, ⟨22, 51⟩, ⟨10, 32⟩, ⟨29, 55⟩, ⟨17, 36⟩, ⟨36, 59⟩, ⟨5, 29⟩, ⟨43, 90⟩, ⟨24, 52⟩, ⟨12, 33⟩, ⟨31, 56⟩, ⟨19, 37⟩]⟩
theorem profile1635_checked : profile1635.check := by decide +kernel

noncomputable def selection0_1635 : Selection :=
  ⟨0, 3, 2, (1451/100), 1252, 513, -880⟩
theorem selection0_1635_checked : selection0_1635.check profile1635 := by decide +kernel

noncomputable def selection1_1635 : Selection :=
  ⟨1, -5, 6, (353/25), 163, 337, -512⟩
theorem selection1_1635_checked : selection1_1635.check profile1635 := by decide +kernel

noncomputable def selection2_1635 : Selection :=
  ⟨2, -13, 10, (1403/100), 61, 193, -144⟩
theorem selection2_1635_checked : selection2_1635.check profile1635 := by decide +kernel

noncomputable def profile1636 : ProfileCell :=
  ⟨(19/33), (91/158),
    [29, 28, 27, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨19, 38⟩, ⟨31, 57⟩, ⟨38, 61⟩, ⟨7, 31⟩, ⟨14, 35⟩, ⟨26, 54⟩, ⟨21, 39⟩, ⟨33, 58⟩, ⟨40, 62⟩, ⟨2, 28⟩, ⟨9, 32⟩, ⟨16, 36⟩, ⟨28, 55⟩, ⟨35, 59⟩, ⟨42, 63⟩, ⟨4, 29⟩, ⟨11, 33⟩, ⟨23, 52⟩, ⟨18, 37⟩, ⟨30, 56⟩, ⟨37, 60⟩, ⟨6, 30⟩, ⟨13, 34⟩, ⟨25, 53⟩, ⟨20, 38⟩, ⟨32, 57⟩, ⟨39, 61⟩, ⟨1, 27⟩, ⟨8, 31⟩, ⟨15, 35⟩, ⟨27, 54⟩, ⟨34, 58⟩, ⟨41, 62⟩, ⟨3, 28⟩, ⟨10, 32⟩, ⟨22, 51⟩, ⟨17, 36⟩, ⟨29, 55⟩, ⟨36, 59⟩, ⟨5, 29⟩, ⟨12, 33⟩, ⟨24, 52⟩, ⟨43, 90⟩]⟩
theorem profile1636_checked : profile1636.check := by decide +kernel

noncomputable def selection0_1636 : Selection :=
  ⟨0, 3, 2, (1429/100), 827, 437, -748⟩
theorem selection0_1636_checked : selection0_1636.check profile1636 := by decide +kernel

noncomputable def selection1_1636 : Selection :=
  ⟨1, -5, 6, (1407/100), 109, 261, -380⟩
theorem selection1_1636_checked : selection1_1636.check profile1636 := by decide +kernel

noncomputable def selection2_1636 : Selection :=
  ⟨2, -13, 10, (701/50), 41, 117, -12⟩
theorem selection2_1636_checked : selection2_1636.check profile1636 := by decide +kernel

noncomputable def profile1637 : ProfileCell :=
  ⟨(91/158), (53/92),
    [29, 28, 27, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨43, 91⟩, ⟨19, 38⟩, ⟨31, 57⟩, ⟨38, 61⟩, ⟨7, 31⟩, ⟨14, 35⟩, ⟨26, 54⟩, ⟨21, 39⟩, ⟨33, 58⟩, ⟨40, 62⟩, ⟨2, 28⟩, ⟨9, 32⟩, ⟨16, 36⟩, ⟨28, 55⟩, ⟨35, 59⟩, ⟨42, 63⟩, ⟨4, 29⟩, ⟨11, 33⟩, ⟨23, 52⟩, ⟨18, 37⟩, ⟨30, 56⟩, ⟨37, 60⟩, ⟨6, 30⟩, ⟨13, 34⟩, ⟨25, 53⟩, ⟨20, 38⟩, ⟨32, 57⟩, ⟨39, 61⟩, ⟨1, 27⟩, ⟨8, 31⟩, ⟨15, 35⟩, ⟨27, 54⟩, ⟨34, 58⟩, ⟨41, 62⟩, ⟨3, 28⟩, ⟨10, 32⟩, ⟨22, 51⟩, ⟨17, 36⟩, ⟨29, 55⟩, ⟨36, 59⟩, ⟨5, 29⟩, ⟨12, 33⟩, ⟨24, 52⟩]⟩
theorem profile1637_checked : profile1637.check := by decide +kernel

noncomputable def selection0_1637 : Selection :=
  ⟨0, 3, 2, (1433/100), 595, -746, 1306⟩
theorem selection0_1637_checked : selection0_1637.check profile1637 := by decide +kernel

noncomputable def selection1_1637 : Selection :=
  ⟨1, -5, 6, (353/25), 79, -922, 1674⟩
theorem selection1_1637_checked : selection1_1637.check profile1637 := by decide +kernel

noncomputable def selection2_1637 : Selection :=
  ⟨2, -13, 10, (352/25), 30, -1066, 2042⟩
theorem selection2_1637_checked : selection2_1637.check profile1637 := by decide +kernel

noncomputable def profile1638 : ProfileCell :=
  ⟨(53/92), (34/59),
    [29, 28, 27, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨24, 53⟩, ⟨19, 38⟩, ⟨43, 91⟩, ⟨31, 57⟩, ⟨38, 61⟩, ⟨7, 31⟩, ⟨14, 35⟩, ⟨26, 54⟩, ⟨21, 39⟩, ⟨33, 58⟩, ⟨40, 62⟩, ⟨2, 28⟩, ⟨9, 32⟩, ⟨16, 36⟩, ⟨28, 55⟩, ⟨35, 59⟩, ⟨42, 63⟩, ⟨4, 29⟩, ⟨11, 33⟩, ⟨23, 52⟩, ⟨18, 37⟩, ⟨30, 56⟩, ⟨37, 60⟩, ⟨6, 30⟩, ⟨13, 34⟩, ⟨25, 53⟩, ⟨20, 38⟩, ⟨32, 57⟩, ⟨39, 61⟩, ⟨1, 27⟩, ⟨8, 31⟩, ⟨15, 35⟩, ⟨27, 54⟩, ⟨34, 58⟩, ⟨41, 62⟩, ⟨3, 28⟩, ⟨10, 32⟩, ⟨22, 51⟩, ⟨17, 36⟩, ⟨29, 55⟩, ⟨36, 59⟩, ⟨5, 29⟩, ⟨12, 33⟩]⟩
theorem profile1638_checked : profile1638.check := by decide +kernel

noncomputable def selection0_1638 : Selection :=
  ⟨0, 3, 2, (289/20), 802, -428, 754⟩
theorem selection0_1638_checked : selection0_1638.check profile1638 := by decide +kernel

noncomputable def selection1_1638 : Selection :=
  ⟨1, -5, 6, (1419/100), 106, -604, 1122⟩
theorem selection1_1638_checked : selection1_1638.check profile1638 := by decide +kernel

noncomputable def selection2_1638 : Selection :=
  ⟨2, -13, 10, (1413/100), 40, -748, 1490⟩
theorem selection2_1638_checked : selection2_1638.check profile1638 := by decide +kernel

noncomputable def profile1639 : ProfileCell :=
  ⟨(34/59), (15/26),
    [29, 28, 27, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 14, 13, 12], [27, 28, 28, 29, 29],
    [⟨12, 34⟩, ⟨24, 53⟩, ⟨19, 38⟩, ⟨31, 57⟩, ⟨43, 91⟩, ⟨38, 61⟩, ⟨7, 31⟩, ⟨14, 35⟩, ⟨26, 54⟩, ⟨21, 39⟩, ⟨33, 58⟩, ⟨2, 28⟩, ⟨40, 62⟩, ⟨9, 32⟩, ⟨16, 36⟩, ⟨28, 55⟩, ⟨35, 59⟩, ⟨4, 29⟩, ⟨42, 63⟩, ⟨11, 33⟩, ⟨23, 52⟩, ⟨18, 37⟩, ⟨30, 56⟩, ⟨37, 60⟩, ⟨6, 30⟩, ⟨13, 34⟩, ⟨25, 53⟩, ⟨20, 38⟩, ⟨32, 57⟩, ⟨1, 27⟩, ⟨39, 61⟩, ⟨8, 31⟩, ⟨15, 35⟩, ⟨27, 54⟩, ⟨34, 58⟩, ⟨3, 28⟩, ⟨41, 62⟩, ⟨10, 32⟩, ⟨22, 51⟩, ⟨17, 36⟩, ⟨29, 55⟩, ⟨36, 59⟩, ⟨5, 29⟩]⟩
theorem profile1639_checked : profile1639.check := by decide +kernel

noncomputable def selection0_1639 : Selection :=
  ⟨0, 3, 2, (76/5), 2981, -768, 1344⟩
theorem selection0_1639_checked : selection0_1639.check profile1639 := by decide +kernel

noncomputable def selection1_1639 : Selection :=
  ⟨1, -5, 6, (727/50), 382, -944, 1712⟩
theorem selection1_1639_checked : selection1_1639.check profile1639 := by decide +kernel

noncomputable def selection2_1639 : Selection :=
  ⟨2, -13, 10, (1439/100), 142, -1088, 2080⟩
theorem selection2_1639_checked : selection2_1639.check profile1639 := by decide +kernel

noncomputable def profile1640 : ProfileCell :=
  ⟨(15/26), (56/97),
    [30, 28, 27, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 28, 29, 30],
    [⟨5, 30⟩, ⟨36, 60⟩, ⟨12, 34⟩, ⟨19, 38⟩, ⟨24, 53⟩, ⟨31, 57⟩, ⟨7, 31⟩, ⟨38, 61⟩, ⟨43, 91⟩, ⟨14, 35⟩, ⟨21, 39⟩, ⟨26, 54⟩, ⟨2, 28⟩, ⟨33, 58⟩, ⟨9, 32⟩, ⟨40, 62⟩, ⟨16, 36⟩, ⟨28, 55⟩, ⟨4, 29⟩, ⟨35, 59⟩, ⟨11, 33⟩, ⟨42, 63⟩, ⟨18, 37⟩, ⟨23, 52⟩, ⟨30, 56⟩, ⟨6, 30⟩, ⟨37, 60⟩, ⟨13, 34⟩, ⟨20, 38⟩, ⟨25, 53⟩, ⟨1, 27⟩, ⟨32, 57⟩, ⟨8, 31⟩, ⟨39, 61⟩, ⟨15, 35⟩, ⟨27, 54⟩, ⟨3, 28⟩, ⟨34, 58⟩, ⟨10, 32⟩, ⟨41, 62⟩, ⟨17, 36⟩, ⟨22, 51⟩, ⟨29, 55⟩]⟩
theorem profile1640_checked : profile1640.check := by decide +kernel

noncomputable def selection0_1640 : Selection :=
  ⟨0, 4, 2, (1561/100), 1859, -790, 1378⟩
theorem selection0_1640_checked : selection0_1640.check profile1640 := by decide +kernel

noncomputable def selection1_1640 : Selection :=
  ⟨1, -4, 6, (737/50), 235, -970, 1746⟩
theorem selection1_1640_checked : selection1_1640.check profile1640 := by decide +kernel

noncomputable def selection2_1640 : Selection :=
  ⟨2, -12, 10, (727/50), 87, -1118, 2114⟩
theorem selection2_1640_checked : selection2_1640.check profile1640 := by decide +kernel

noncomputable def profile1641 : ProfileCell :=
  ⟨(56/97), (26/45),
    [30, 28, 27, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 28, 29, 30],
    [⟨29, 56⟩, ⟨5, 30⟩, ⟨36, 60⟩, ⟨12, 34⟩, ⟨19, 38⟩, ⟨24, 53⟩, ⟨31, 57⟩, ⟨7, 31⟩, ⟨38, 61⟩, ⟨14, 35⟩, ⟨43, 91⟩, ⟨21, 39⟩, ⟨26, 54⟩, ⟨2, 28⟩, ⟨33, 58⟩, ⟨9, 32⟩, ⟨40, 62⟩, ⟨16, 36⟩, ⟨28, 55⟩, ⟨4, 29⟩, ⟨35, 59⟩, ⟨11, 33⟩, ⟨42, 63⟩, ⟨18, 37⟩, ⟨23, 52⟩, ⟨30, 56⟩, ⟨6, 30⟩, ⟨37, 60⟩, ⟨13, 34⟩, ⟨20, 38⟩, ⟨25, 53⟩, ⟨1, 27⟩, ⟨32, 57⟩, ⟨8, 31⟩, ⟨39, 61⟩, ⟨15, 35⟩, ⟨27, 54⟩, ⟨3, 28⟩, ⟨34, 58⟩, ⟨10, 32⟩, ⟨41, 62⟩, ⟨17, 36⟩, ⟨22, 51⟩]⟩
theorem profile1641_checked : profile1641.check := by decide +kernel

noncomputable def selection0_1641 : Selection :=
  ⟨0, 3, 2, (1587/100), 2180, -357, 632⟩
theorem selection0_1641_checked : selection0_1641.check profile1641 := by decide +kernel

noncomputable def selection1_1641 : Selection :=
  ⟨1, -5, 6, (1489/100), 275, -533, 1000⟩
theorem selection1_1641_checked : selection1_1641.check profile1641 := by decide +kernel

noncomputable def selection2_1641 : Selection :=
  ⟨2, -13, 10, (733/50), 102, -677, 1368⟩
theorem selection2_1641_checked : selection2_1641.check profile1641 := by decide +kernel

noncomputable def profile1642 : ProfileCell :=
  ⟨(26/45), (63/109),
    [30, 28, 27, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 28, 29, 30],
    [⟨22, 52⟩, ⟨5, 30⟩, ⟨29, 56⟩, ⟨12, 34⟩, ⟨36, 60⟩, ⟨19, 38⟩, ⟨24, 53⟩, ⟨7, 31⟩, ⟨31, 57⟩, ⟨14, 35⟩, ⟨38, 61⟩, ⟨21, 39⟩, ⟨43, 91⟩, ⟨2, 28⟩, ⟨26, 54⟩, ⟨9, 32⟩, ⟨33, 58⟩, ⟨16, 36⟩, ⟨40, 62⟩, ⟨4, 29⟩, ⟨28, 55⟩, ⟨11, 33⟩, ⟨35, 59⟩, ⟨18, 37⟩, ⟨42, 63⟩, ⟨23, 52⟩, ⟨6, 30⟩, ⟨30, 56⟩, ⟨13, 34⟩, ⟨37, 60⟩, ⟨20, 38⟩, ⟨1, 27⟩, ⟨25, 53⟩, ⟨8, 31⟩, ⟨32, 57⟩, ⟨15, 35⟩, ⟨39, 61⟩, ⟨3, 28⟩, ⟨27, 54⟩, ⟨10, 32⟩, ⟨34, 58⟩, ⟨17, 36⟩, ⟨41, 62⟩]⟩
theorem profile1642_checked : profile1642.check := by decide +kernel

noncomputable def selection0_1642 : Selection :=
  ⟨0, 3, 2, (401/25), 980, -565, 992⟩
theorem selection0_1642_checked : selection0_1642.check profile1642 := by decide +kernel

noncomputable def selection1_1642 : Selection :=
  ⟨1, -5, 6, (1497/100), 123, -741, 1360⟩
theorem selection1_1642_checked : selection1_1642.check profile1642 := by decide +kernel

noncomputable def selection2_1642 : Selection :=
  ⟨2, -13, 10, (1473/100), 46, -885, 1728⟩
theorem selection2_1642_checked : selection2_1642.check profile1642 := by decide +kernel

noncomputable def profile1643 : ProfileCell :=
  ⟨(63/109), (37/64),
    [30, 28, 27, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 28, 29, 30],
    [⟨41, 63⟩, ⟨22, 52⟩, ⟨5, 30⟩, ⟨29, 56⟩, ⟨12, 34⟩, ⟨36, 60⟩, ⟨19, 38⟩, ⟨24, 53⟩, ⟨7, 31⟩, ⟨31, 57⟩, ⟨14, 35⟩, ⟨38, 61⟩, ⟨21, 39⟩, ⟨2, 28⟩, ⟨43, 91⟩, ⟨26, 54⟩, ⟨9, 32⟩, ⟨33, 58⟩, ⟨16, 36⟩, ⟨40, 62⟩, ⟨4, 29⟩, ⟨28, 55⟩, ⟨11, 33⟩, ⟨35, 59⟩, ⟨18, 37⟩, ⟨42, 63⟩, ⟨23, 52⟩, ⟨6, 30⟩, ⟨30, 56⟩, ⟨13, 34⟩, ⟨37, 60⟩, ⟨20, 38⟩, ⟨1, 27⟩, ⟨25, 53⟩, ⟨8, 31⟩, ⟨32, 57⟩, ⟨15, 35⟩, ⟨39, 61⟩, ⟨3, 28⟩, ⟨27, 54⟩, ⟨10, 32⟩, ⟨34, 58⟩, ⟨17, 36⟩]⟩
theorem profile1643_checked : profile1643.check := by decide +kernel

noncomputable def selection0_1643 : Selection :=
  ⟨0, 3, 2, (1609/100), 691, -187, 338⟩
theorem selection0_1643_checked : selection0_1643.check profile1643 := by decide +kernel

noncomputable def selection1_1643 : Selection :=
  ⟨1, -5, 6, 15, 87, -363, 706⟩
theorem selection1_1643_checked : selection1_1643.check profile1643 := by decide +kernel

noncomputable def selection2_1643 : Selection :=
  ⟨2, -13, 10, (369/25), 32, -507, 1074⟩
theorem selection2_1643_checked : selection2_1643.check profile1643 := by decide +kernel

noncomputable def profile1644 : ProfileCell :=
  ⟨(37/64), (59/102),
    [30, 28, 27, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 28, 29, 30],
    [⟨17, 37⟩, ⟨41, 63⟩, ⟨22, 52⟩, ⟨5, 30⟩, ⟨29, 56⟩, ⟨12, 34⟩, ⟨36, 60⟩, ⟨19, 38⟩, ⟨24, 53⟩, ⟨7, 31⟩, ⟨31, 57⟩, ⟨14, 35⟩, ⟨38, 61⟩, ⟨21, 39⟩, ⟨2, 28⟩, ⟨26, 54⟩, ⟨43, 91⟩, ⟨9, 32⟩, ⟨33, 58⟩, ⟨16, 36⟩, ⟨40, 62⟩, ⟨4, 29⟩, ⟨28, 55⟩, ⟨11, 33⟩, ⟨35, 59⟩, ⟨18, 37⟩, ⟨42, 63⟩, ⟨23, 52⟩, ⟨6, 30⟩, ⟨30, 56⟩, ⟨13, 34⟩, ⟨37, 60⟩, ⟨20, 38⟩, ⟨1, 27⟩, ⟨25, 53⟩, ⟨8, 31⟩, ⟨32, 57⟩, ⟨15, 35⟩, ⟨39, 61⟩, ⟨3, 28⟩, ⟨27, 54⟩, ⟨10, 32⟩, ⟨34, 58⟩]⟩
theorem profile1644_checked : profile1644.check := by decide +kernel

noncomputable def selection0_1644 : Selection :=
  ⟨0, 4, 2, (1621/100), 1486, -202, 360⟩
theorem selection0_1644_checked : selection0_1644.check profile1644 := by decide +kernel

noncomputable def selection1_1644 : Selection :=
  ⟨1, -4, 6, (1509/100), 186, -382, 728⟩
theorem selection1_1644_checked : selection1_1644.check profile1644 := by decide +kernel

noncomputable def selection2_1644 : Selection :=
  ⟨2, -12, 10, (1483/100), 69, -530, 1096⟩
theorem selection2_1644_checked : selection2_1644.check profile1644 := by decide +kernel

noncomputable def profile1645 : ProfileCell :=
  ⟨(59/102), (11/19),
    [30, 28, 27, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 28, 29, 30],
    [⟨34, 59⟩, ⟨17, 37⟩, ⟨41, 63⟩, ⟨22, 52⟩, ⟨5, 30⟩, ⟨29, 56⟩, ⟨12, 34⟩, ⟨36, 60⟩, ⟨19, 38⟩, ⟨24, 53⟩, ⟨7, 31⟩, ⟨31, 57⟩, ⟨14, 35⟩, ⟨38, 61⟩, ⟨21, 39⟩, ⟨2, 28⟩, ⟨26, 54⟩, ⟨9, 32⟩, ⟨43, 91⟩, ⟨33, 58⟩, ⟨16, 36⟩, ⟨40, 62⟩, ⟨4, 29⟩, ⟨28, 55⟩, ⟨11, 33⟩, ⟨35, 59⟩, ⟨18, 37⟩, ⟨42, 63⟩, ⟨23, 52⟩, ⟨6, 30⟩, ⟨30, 56⟩, ⟨13, 34⟩, ⟨37, 60⟩, ⟨20, 38⟩, ⟨1, 27⟩, ⟨25, 53⟩, ⟨8, 31⟩, ⟨32, 57⟩, ⟨15, 35⟩, ⟨39, 61⟩, ⟨3, 28⟩, ⟨27, 54⟩, ⟨10, 32⟩]⟩
theorem profile1645_checked : profile1645.check := by decide +kernel

noncomputable def selection0_1645 : Selection :=
  ⟨0, 4, 2, (1621/100), 2498, 34, -48⟩
theorem selection0_1645_checked : selection0_1645.check profile1645 := by decide +kernel

noncomputable def selection1_1645 : Selection :=
  ⟨1, -4, 6, (757/50), 314, -146, 320⟩
theorem selection1_1645_checked : selection1_1645.check profile1645 := by decide +kernel

noncomputable def selection2_1645 : Selection :=
  ⟨2, -12, 10, (149/10), 116, -294, 688⟩
theorem selection2_1645_checked : selection2_1645.check profile1645 := by decide +kernel

noncomputable def profile1646 : ProfileCell :=
  ⟨(11/19), (62/107),
    [30, 28, 27, 26, 25, 24, 23, 22, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 28, 29, 30],
    [⟨10, 33⟩, ⟨27, 55⟩, ⟨17, 37⟩, ⟨34, 59⟩, ⟨5, 30⟩, ⟨22, 52⟩, ⟨41, 63⟩, ⟨12, 34⟩, ⟨29, 56⟩, ⟨19, 38⟩, ⟨36, 60⟩, ⟨7, 31⟩, ⟨24, 53⟩, ⟨14, 35⟩, ⟨31, 57⟩, ⟨2, 28⟩, ⟨21, 39⟩, ⟨38, 61⟩, ⟨9, 32⟩, ⟨26, 54⟩, ⟨16, 36⟩, ⟨33, 58⟩, ⟨43, 91⟩, ⟨4, 29⟩, ⟨40, 62⟩, ⟨11, 33⟩, ⟨28, 55⟩, ⟨18, 37⟩, ⟨35, 59⟩, ⟨6, 30⟩, ⟨23, 52⟩, ⟨42, 63⟩, ⟨13, 34⟩, ⟨30, 56⟩, ⟨1, 27⟩, ⟨20, 38⟩, ⟨37, 60⟩, ⟨8, 31⟩, ⟨25, 53⟩, ⟨15, 35⟩, ⟨32, 57⟩, ⟨3, 28⟩, ⟨39, 61⟩]⟩
theorem profile1646_checked : profile1646.check := by decide +kernel

noncomputable def selection0_1646 : Selection :=
  ⟨0, 3, 2, (717/50), 2103, -208, 370⟩
theorem selection0_1646_checked : selection0_1646.check profile1646 := by decide +kernel

noncomputable def selection1_1646 : Selection :=
  ⟨1, -5, 6, (53/4), 262, -388, 738⟩
theorem selection1_1646_checked : selection1_1646.check profile1646 := by decide +kernel

noncomputable def selection2_1646 : Selection :=
  ⟨2, -13, 10, (1301/100), 97, -536, 1106⟩
theorem selection2_1646_checked : selection2_1646.check profile1646 := by decide +kernel

noncomputable def profile1647 : ProfileCell :=
  ⟨(62/107), (29/50),
    [30, 28, 27, 26, 25, 24, 23, 22, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 28, 29, 30],
    [⟨39, 62⟩, ⟨10, 33⟩, ⟨27, 55⟩, ⟨17, 37⟩, ⟨34, 59⟩, ⟨5, 30⟩, ⟨22, 52⟩, ⟨41, 63⟩, ⟨12, 34⟩, ⟨29, 56⟩, ⟨19, 38⟩, ⟨36, 60⟩, ⟨7, 31⟩, ⟨24, 53⟩, ⟨14, 35⟩, ⟨31, 57⟩, ⟨2, 28⟩, ⟨21, 39⟩, ⟨38, 61⟩, ⟨9, 32⟩, ⟨26, 54⟩, ⟨16, 36⟩, ⟨33, 58⟩, ⟨4, 29⟩, ⟨43, 91⟩, ⟨40, 62⟩, ⟨11, 33⟩, ⟨28, 55⟩, ⟨18, 37⟩, ⟨35, 59⟩, ⟨6, 30⟩, ⟨23, 52⟩, ⟨42, 63⟩, ⟨13, 34⟩, ⟨30, 56⟩, ⟨1, 27⟩, ⟨20, 38⟩, ⟨37, 60⟩, ⟨8, 31⟩, ⟨25, 53⟩, ⟨15, 35⟩, ⟨32, 57⟩, ⟨3, 28⟩]⟩
theorem profile1647_checked : profile1647.check := by decide +kernel

noncomputable def selection0_1647 : Selection :=
  ⟨0, 3, 2, (717/50), 2393, 164, -272⟩
theorem selection0_1647_checked : selection0_1647.check profile1647 := by decide +kernel

noncomputable def selection1_1647 : Selection :=
  ⟨1, -5, 6, (1327/100), 299, -16, 96⟩
theorem selection1_1647_checked : selection1_1647.check profile1647 := by decide +kernel

noncomputable def selection2_1647 : Selection :=
  ⟨2, -13, 10, (653/50), 111, -164, 464⟩
theorem selection2_1647_checked : selection2_1647.check profile1647 := by decide +kernel

noncomputable def profile1648 : ProfileCell :=
  ⟨(29/50), (18/31),
    [30, 29, 27, 26, 25, 24, 23, 22, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 29, 29, 30],
    [⟨3, 29⟩, ⟨32, 58⟩, ⟨10, 33⟩, ⟨39, 62⟩, ⟨27, 55⟩, ⟨17, 37⟩, ⟨5, 30⟩, ⟨34, 59⟩, ⟨22, 52⟩, ⟨12, 34⟩, ⟨41, 63⟩, ⟨29, 56⟩, ⟨19, 38⟩, ⟨7, 31⟩, ⟨36, 60⟩, ⟨24, 53⟩, ⟨14, 35⟩, ⟨2, 28⟩, ⟨31, 57⟩, ⟨21, 39⟩, ⟨9, 32⟩, ⟨38, 61⟩, ⟨26, 54⟩, ⟨16, 36⟩, ⟨4, 29⟩, ⟨33, 58⟩, ⟨11, 33⟩, ⟨40, 62⟩, ⟨43, 91⟩, ⟨28, 55⟩, ⟨18, 37⟩, ⟨6, 30⟩, ⟨35, 59⟩, ⟨23, 52⟩, ⟨13, 34⟩, ⟨42, 63⟩, ⟨1, 27⟩, ⟨30, 56⟩, ⟨20, 38⟩, ⟨8, 31⟩, ⟨37, 60⟩, ⟨25, 53⟩, ⟨15, 35⟩]⟩
theorem profile1648_checked : profile1648.check := by decide +kernel

noncomputable def selection0_1648 : Selection :=
  ⟨0, 4, 2, (1621/100), 3106, 106, -172⟩
theorem selection0_1648_checked : selection0_1648.check profile1648 := by decide +kernel

noncomputable def selection1_1648 : Selection :=
  ⟨1, -4, 6, (1531/100), 396, -74, 196⟩
theorem selection1_1648_checked : selection1_1648.check profile1648 := by decide +kernel

noncomputable def selection2_1648 : Selection :=
  ⟨2, -12, 10, (1513/100), 147, -222, 564⟩
theorem selection2_1648_checked : selection2_1648.check profile1648 := by decide +kernel

noncomputable def profile1649 : ProfileCell :=
  ⟨(18/31), (61/105),
    [30, 29, 27, 26, 25, 24, 23, 22, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 29, 29, 30],
    [⟨15, 36⟩, ⟨25, 54⟩, ⟨3, 29⟩, ⟨32, 58⟩, ⟨10, 33⟩, ⟨39, 62⟩, ⟨17, 37⟩, ⟨27, 55⟩, ⟨5, 30⟩, ⟨34, 59⟩, ⟨12, 34⟩, ⟨22, 52⟩, ⟨41, 63⟩, ⟨19, 38⟩, ⟨29, 56⟩, ⟨7, 31⟩, ⟨36, 60⟩, ⟨14, 35⟩, ⟨24, 53⟩, ⟨2, 28⟩, ⟨21, 39⟩, ⟨31, 57⟩, ⟨9, 32⟩, ⟨38, 61⟩, ⟨16, 36⟩, ⟨26, 54⟩, ⟨4, 29⟩, ⟨33, 58⟩, ⟨11, 33⟩, ⟨40, 62⟩, ⟨18, 37⟩, ⟨28, 55⟩, ⟨43, 91⟩, ⟨6, 30⟩, ⟨35, 59⟩, ⟨13, 34⟩, ⟨23, 52⟩, ⟨1, 27⟩, ⟨42, 63⟩, ⟨20, 38⟩, ⟨30, 56⟩, ⟨8, 31⟩, ⟨37, 60⟩]⟩
theorem profile1649_checked : profile1649.check := by decide +kernel

noncomputable def selection0_1649 : Selection :=
  ⟨0, 4, 2, (403/25), 1469, 106, -172⟩
theorem selection0_1649_checked : selection0_1649.check profile1649 := by decide +kernel

noncomputable def selection1_1649 : Selection :=
  ⟨1, -4, 6, (1533/100), 189, -74, 196⟩
theorem selection1_1649_checked : selection1_1649.check profile1649 := by decide +kernel

noncomputable def selection2_1649 : Selection :=
  ⟨2, -12, 10, (379/25), 70, -222, 564⟩
theorem selection2_1649_checked : selection2_1649.check profile1649 := by decide +kernel

noncomputable def profile1650 : ProfileCell :=
  ⟨(61/105), (25/43),
    [30, 29, 27, 26, 25, 24, 23, 22, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 29, 29, 30],
    [⟨37, 61⟩, ⟨15, 36⟩, ⟨25, 54⟩, ⟨3, 29⟩, ⟨32, 58⟩, ⟨10, 33⟩, ⟨39, 62⟩, ⟨17, 37⟩, ⟨27, 55⟩, ⟨5, 30⟩, ⟨34, 59⟩, ⟨12, 34⟩, ⟨22, 52⟩, ⟨41, 63⟩, ⟨19, 38⟩, ⟨29, 56⟩, ⟨7, 31⟩, ⟨36, 60⟩, ⟨14, 35⟩, ⟨24, 53⟩, ⟨2, 28⟩, ⟨21, 39⟩, ⟨31, 57⟩, ⟨9, 32⟩, ⟨38, 61⟩, ⟨16, 36⟩, ⟨26, 54⟩, ⟨4, 29⟩, ⟨33, 58⟩, ⟨11, 33⟩, ⟨40, 62⟩, ⟨18, 37⟩, ⟨28, 55⟩, ⟨6, 30⟩, ⟨43, 91⟩, ⟨35, 59⟩, ⟨13, 34⟩, ⟨23, 52⟩, ⟨1, 27⟩, ⟨42, 63⟩, ⟨20, 38⟩, ⟨30, 56⟩, ⟨8, 31⟩]⟩
theorem profile1650_checked : profile1650.check := by decide +kernel

noncomputable def selection0_1650 : Selection :=
  ⟨0, 4, 2, (1607/100), 2108, 350, -592⟩
theorem selection0_1650_checked : selection0_1650.check profile1650 := by decide +kernel

noncomputable def selection1_1650 : Selection :=
  ⟨1, -4, 6, (1533/100), 272, 170, -224⟩
theorem selection1_1650_checked : selection1_1650.check profile1650 := by decide +kernel

noncomputable def selection2_1650 : Selection :=
  ⟨2, -12, 10, (759/50), 101, 22, 144⟩
theorem selection2_1650_checked : selection2_1650.check profile1650 := by decide +kernel

noncomputable def profile1651 : ProfileCell :=
  ⟨(25/43), (57/98),
    [30, 29, 27, 26, 25, 24, 23, 22, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 29, 29, 30],
    [⟨15, 36⟩, ⟨37, 61⟩, ⟨3, 29⟩, ⟨25, 54⟩, ⟨10, 33⟩, ⟨32, 58⟩, ⟨17, 37⟩, ⟨39, 62⟩, ⟨5, 30⟩, ⟨27, 55⟩, ⟨12, 34⟩, ⟨34, 59⟩, ⟨22, 52⟩, ⟨19, 38⟩, ⟨41, 63⟩, ⟨7, 31⟩, ⟨29, 56⟩, ⟨14, 35⟩, ⟨36, 60⟩, ⟨2, 28⟩, ⟨24, 53⟩, ⟨21, 39⟩, ⟨9, 32⟩, ⟨31, 57⟩, ⟨16, 36⟩, ⟨38, 61⟩, ⟨4, 29⟩, ⟨26, 54⟩, ⟨11, 33⟩, ⟨33, 58⟩, ⟨18, 37⟩, ⟨40, 62⟩, ⟨6, 30⟩, ⟨28, 55⟩, ⟨43, 91⟩, ⟨13, 34⟩, ⟨35, 59⟩, ⟨1, 27⟩, ⟨23, 52⟩, ⟨20, 38⟩, ⟨42, 63⟩, ⟨8, 31⟩, ⟨30, 56⟩]⟩
theorem profile1651_checked : profile1651.check := by decide +kernel

noncomputable def selection0_1651 : Selection :=
  ⟨0, 4, 2, (396/25), 1112, 150, -248⟩
theorem selection0_1651_checked : selection0_1651.check profile1651 := by decide +kernel

noncomputable def selection1_1651 : Selection :=
  ⟨1, -4, 6, (1531/100), 146, -30, 120⟩
theorem selection1_1651_checked : selection1_1651.check profile1651 := by decide +kernel

noncomputable def selection2_1651 : Selection :=
  ⟨2, -12, 10, (76/5), 55, -178, 488⟩
theorem selection2_1651_checked : selection2_1651.check profile1651 := by decide +kernel

noncomputable def profile1652 : ProfileCell :=
  ⟨(57/98), (32/55),
    [30, 29, 27, 26, 25, 24, 23, 22, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 29, 29, 30],
    [⟨30, 57⟩, ⟨15, 36⟩, ⟨37, 61⟩, ⟨3, 29⟩, ⟨25, 54⟩, ⟨10, 33⟩, ⟨32, 58⟩, ⟨17, 37⟩, ⟨39, 62⟩, ⟨5, 30⟩, ⟨27, 55⟩, ⟨12, 34⟩, ⟨34, 59⟩, ⟨22, 52⟩, ⟨19, 38⟩, ⟨41, 63⟩, ⟨7, 31⟩, ⟨29, 56⟩, ⟨14, 35⟩, ⟨36, 60⟩, ⟨2, 28⟩, ⟨24, 53⟩, ⟨21, 39⟩, ⟨9, 32⟩, ⟨31, 57⟩, ⟨16, 36⟩, ⟨38, 61⟩, ⟨4, 29⟩, ⟨26, 54⟩, ⟨11, 33⟩, ⟨33, 58⟩, ⟨18, 37⟩, ⟨40, 62⟩, ⟨6, 30⟩, ⟨28, 55⟩, ⟨13, 34⟩, ⟨43, 91⟩, ⟨35, 59⟩, ⟨1, 27⟩, ⟨23, 52⟩, ⟨20, 38⟩, ⟨42, 63⟩, ⟨8, 31⟩]⟩
theorem profile1652_checked : profile1652.check := by decide +kernel

noncomputable def selection0_1652 : Selection :=
  ⟨0, 4, 2, (1579/100), 866, 492, -836⟩
theorem selection0_1652_checked : selection0_1652.check profile1652 := by decide +kernel

noncomputable def selection1_1652 : Selection :=
  ⟨1, -4, 6, (1531/100), 114, 312, -468⟩
theorem selection1_1652_checked : selection1_1652.check profile1652 := by decide +kernel

noncomputable def selection2_1652 : Selection :=
  ⟨2, -12, 10, (76/5), 43, 164, -100⟩
theorem selection2_1652_checked : selection2_1652.check profile1652 := by decide +kernel

noncomputable def profile1653 : ProfileCell :=
  ⟨(32/55), (39/67),
    [30, 29, 27, 26, 25, 24, 23, 22, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 29, 29, 30],
    [⟨8, 32⟩, ⟨42, 64⟩, ⟨30, 57⟩, ⟨15, 36⟩, ⟨3, 29⟩, ⟨37, 61⟩, ⟨25, 54⟩, ⟨10, 33⟩, ⟨32, 58⟩, ⟨17, 37⟩, ⟨5, 30⟩, ⟨39, 62⟩, ⟨27, 55⟩, ⟨12, 34⟩, ⟨34, 59⟩, ⟨22, 52⟩, ⟨19, 38⟩, ⟨7, 31⟩, ⟨41, 63⟩, ⟨29, 56⟩, ⟨14, 35⟩, ⟨2, 28⟩, ⟨36, 60⟩, ⟨24, 53⟩, ⟨21, 39⟩, ⟨9, 32⟩, ⟨31, 57⟩, ⟨16, 36⟩, ⟨4, 29⟩, ⟨38, 61⟩, ⟨26, 54⟩, ⟨11, 33⟩, ⟨33, 58⟩, ⟨18, 37⟩, ⟨6, 30⟩, ⟨40, 62⟩, ⟨28, 55⟩, ⟨13, 34⟩, ⟨1, 27⟩, ⟨35, 59⟩, ⟨43, 91⟩, ⟨23, 52⟩, ⟨20, 38⟩]⟩
theorem profile1653_checked : profile1653.check := by decide +kernel

noncomputable def selection0_1653 : Selection :=
  ⟨0, 4, 2, (783/50), 1255, 492, -836⟩
theorem selection0_1653_checked : selection0_1653.check profile1653 := by decide +kernel

noncomputable def selection1_1653 : Selection :=
  ⟨1, -4, 6, (382/25), 166, 312, -468⟩
theorem selection1_1653_checked : selection1_1653.check profile1653 := by decide +kernel

noncomputable def selection2_1653 : Selection :=
  ⟨2, -12, 10, (76/5), 62, 164, -100⟩
theorem selection2_1653_checked : selection2_1653.check profile1653 := by decide +kernel

noncomputable def profile1654 : ProfileCell :=
  ⟨(39/67), (46/79),
    [30, 29, 27, 26, 25, 24, 23, 22, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 29, 29, 30],
    [⟨20, 39⟩, ⟨8, 32⟩, ⟨42, 64⟩, ⟨30, 57⟩, ⟨15, 36⟩, ⟨3, 29⟩, ⟨37, 61⟩, ⟨25, 54⟩, ⟨10, 33⟩, ⟨32, 58⟩, ⟨17, 37⟩, ⟨5, 30⟩, ⟨39, 62⟩, ⟨27, 55⟩, ⟨12, 34⟩, ⟨34, 59⟩, ⟨22, 52⟩, ⟨19, 38⟩, ⟨7, 31⟩, ⟨41, 63⟩, ⟨29, 56⟩, ⟨14, 35⟩, ⟨2, 28⟩, ⟨36, 60⟩, ⟨24, 53⟩, ⟨21, 39⟩, ⟨9, 32⟩, ⟨31, 57⟩, ⟨16, 36⟩, ⟨4, 29⟩, ⟨38, 61⟩, ⟨26, 54⟩, ⟨11, 33⟩, ⟨33, 58⟩, ⟨18, 37⟩, ⟨6, 30⟩, ⟨40, 62⟩, ⟨28, 55⟩, ⟨13, 34⟩, ⟨1, 27⟩, ⟨35, 59⟩, ⟨23, 52⟩, ⟨43, 91⟩]⟩
theorem profile1654_checked : profile1654.check := by decide +kernel

noncomputable def selection0_1654 : Selection :=
  ⟨0, 4, 2, (1547/100), 863, 258, -434⟩
theorem selection0_1654_checked : selection0_1654.check profile1654 := by decide +kernel

noncomputable def selection1_1654 : Selection :=
  ⟨1, -4, 6, (381/25), 116, 78, -66⟩
theorem selection1_1654_checked : selection1_1654.check profile1654 := by decide +kernel

noncomputable def selection2_1654 : Selection :=
  ⟨2, -12, 10, (76/5), 44, -70, 302⟩
theorem selection2_1654_checked : selection2_1654.check profile1654 := by decide +kernel

noncomputable def profile1655 : ProfileCell :=
  ⟨(46/79), (53/91),
    [30, 29, 27, 26, 25, 24, 23, 22, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 29, 29, 30],
    [⟨43, 92⟩, ⟨20, 39⟩, ⟨8, 32⟩, ⟨42, 64⟩, ⟨30, 57⟩, ⟨15, 36⟩, ⟨3, 29⟩, ⟨37, 61⟩, ⟨25, 54⟩, ⟨10, 33⟩, ⟨32, 58⟩, ⟨17, 37⟩, ⟨5, 30⟩, ⟨39, 62⟩, ⟨27, 55⟩, ⟨12, 34⟩, ⟨34, 59⟩, ⟨22, 52⟩, ⟨19, 38⟩, ⟨7, 31⟩, ⟨41, 63⟩, ⟨29, 56⟩, ⟨14, 35⟩, ⟨2, 28⟩, ⟨36, 60⟩, ⟨24, 53⟩, ⟨21, 39⟩, ⟨9, 32⟩, ⟨31, 57⟩, ⟨16, 36⟩, ⟨4, 29⟩, ⟨38, 61⟩, ⟨26, 54⟩, ⟨11, 33⟩, ⟨33, 58⟩, ⟨18, 37⟩, ⟨6, 30⟩, ⟨40, 62⟩, ⟨28, 55⟩, ⟨13, 34⟩, ⟨1, 27⟩, ⟨35, 59⟩, ⟨23, 52⟩]⟩
theorem profile1655_checked : profile1655.check := by decide +kernel

noncomputable def selection0_1655 : Selection :=
  ⟨0, 4, 2, (1557/100), 639, -846, 1462⟩
theorem selection0_1655_checked : selection0_1655.check profile1655 := by decide +kernel

noncomputable def selection1_1655 : Selection :=
  ⟨1, -4, 6, (383/25), 86, -1026, 1830⟩
theorem selection1_1655_checked : selection1_1655.check profile1655 := by decide +kernel

noncomputable def selection2_1655 : Selection :=
  ⟨2, -12, 10, (763/50), 32, -1174, 2198⟩
theorem selection2_1655_checked : selection2_1655.check profile1655 := by decide +kernel

noncomputable def profile1656 : ProfileCell :=
  ⟨(53/91), (60/103),
    [30, 29, 27, 26, 25, 24, 23, 22, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 29, 29, 30],
    [⟨23, 53⟩, ⟨20, 39⟩, ⟨43, 92⟩, ⟨8, 32⟩, ⟨42, 64⟩, ⟨30, 57⟩, ⟨15, 36⟩, ⟨3, 29⟩, ⟨37, 61⟩, ⟨25, 54⟩, ⟨10, 33⟩, ⟨32, 58⟩, ⟨17, 37⟩, ⟨5, 30⟩, ⟨39, 62⟩, ⟨27, 55⟩, ⟨12, 34⟩, ⟨34, 59⟩, ⟨22, 52⟩, ⟨19, 38⟩, ⟨7, 31⟩, ⟨41, 63⟩, ⟨29, 56⟩, ⟨14, 35⟩, ⟨2, 28⟩, ⟨36, 60⟩, ⟨24, 53⟩, ⟨21, 39⟩, ⟨9, 32⟩, ⟨31, 57⟩, ⟨16, 36⟩, ⟨4, 29⟩, ⟨38, 61⟩, ⟨26, 54⟩, ⟨11, 33⟩, ⟨33, 58⟩, ⟨18, 37⟩, ⟨6, 30⟩, ⟨40, 62⟩, ⟨28, 55⟩, ⟨13, 34⟩, ⟨1, 27⟩, ⟨35, 59⟩]⟩
theorem profile1656_checked : profile1656.check := by decide +kernel

noncomputable def selection0_1656 : Selection :=
  ⟨0, 4, 2, (1567/100), 493, -634, 1098⟩
theorem selection0_1656_checked : selection0_1656.check profile1656 := by decide +kernel

noncomputable def selection1_1656 : Selection :=
  ⟨1, -4, 6, (1537/100), 66, -814, 1466⟩
theorem selection1_1656_checked : selection1_1656.check profile1656 := by decide +kernel

noncomputable def selection2_1656 : Selection :=
  ⟨2, -12, 10, (153/10), 25, -962, 1834⟩
theorem selection2_1656_checked : selection2_1656.check profile1656 := by decide +kernel

noncomputable def profile1657 : ProfileCell :=
  ⟨(60/103), (7/12),
    [30, 29, 27, 26, 25, 24, 23, 22, 20, 19, 18, 17, 16, 15, 13, 12], [27, 28, 29, 29, 30],
    [⟨35, 60⟩, ⟨23, 53⟩, ⟨20, 39⟩, ⟨8, 32⟩, ⟨43, 92⟩, ⟨42, 64⟩, ⟨30, 57⟩, ⟨15, 36⟩, ⟨3, 29⟩, ⟨37, 61⟩, ⟨25, 54⟩, ⟨10, 33⟩, ⟨32, 58⟩, ⟨17, 37⟩, ⟨5, 30⟩, ⟨39, 62⟩, ⟨27, 55⟩, ⟨12, 34⟩, ⟨34, 59⟩, ⟨22, 52⟩, ⟨19, 38⟩, ⟨7, 31⟩, ⟨41, 63⟩, ⟨29, 56⟩, ⟨14, 35⟩, ⟨2, 28⟩, ⟨36, 60⟩, ⟨24, 53⟩, ⟨21, 39⟩, ⟨9, 32⟩, ⟨31, 57⟩, ⟨16, 36⟩, ⟨4, 29⟩, ⟨38, 61⟩, ⟨26, 54⟩, ⟨11, 33⟩, ⟨33, 58⟩, ⟨18, 37⟩, ⟨6, 30⟩, ⟨40, 62⟩, ⟨28, 55⟩, ⟨13, 34⟩, ⟨1, 27⟩]⟩
theorem profile1657_checked : profile1657.check := by decide +kernel

noncomputable def selection0_1657 : Selection :=
  ⟨0, 4, 2, 16, 3810, -274, 480⟩
theorem selection0_1657_checked : selection0_1657.check profile1657 := by decide +kernel

noncomputable def selection1_1657 : Selection :=
  ⟨1, -4, 6, (779/50), 504, -454, 848⟩
theorem selection1_1657_checked : selection1_1657.check profile1657 := by decide +kernel

noncomputable def selection2_1657 : Selection :=
  ⟨2, -12, 10, (1549/100), 188, -602, 1216⟩
theorem selection2_1657_checked : selection2_1657.check profile1657 := by decide +kernel

noncomputable def profile1658 : ProfileCell :=
  ⟨(7/12), (59/101),
    [30, 29, 28, 26, 25, 24, 23, 22, 21, 19, 18, 17, 16, 15, 14, 12], [28, 28, 29, 29, 30],
    [⟨1, 28⟩, ⟨13, 35⟩, ⟨28, 56⟩, ⟨40, 63⟩, ⟨8, 32⟩, ⟨20, 39⟩, ⟨23, 53⟩, ⟨35, 60⟩, ⟨3, 29⟩, ⟨15, 36⟩, ⟨30, 57⟩, ⟨42, 64⟩, ⟨43, 92⟩, ⟨10, 33⟩, ⟨25, 54⟩, ⟨37, 61⟩, ⟨5, 30⟩, ⟨17, 37⟩, ⟨32, 58⟩, ⟨12, 34⟩, ⟨27, 55⟩, ⟨39, 62⟩, ⟨7, 31⟩, ⟨19, 38⟩, ⟨22, 52⟩, ⟨34, 59⟩, ⟨2, 28⟩, ⟨14, 35⟩, ⟨29, 56⟩, ⟨41, 63⟩, ⟨9, 32⟩, ⟨21, 39⟩, ⟨24, 53⟩, ⟨36, 60⟩, ⟨4, 29⟩, ⟨16, 36⟩, ⟨31, 57⟩, ⟨11, 33⟩, ⟨26, 54⟩, ⟨38, 61⟩, ⟨6, 30⟩, ⟨18, 37⟩, ⟨33, 58⟩]⟩
theorem profile1658_checked : profile1658.check := by decide +kernel

noncomputable def selection0_1658 : Selection :=
  ⟨0, 3, 2, (29/2), 3511, -400, 696⟩
theorem selection0_1658_checked : selection0_1658.check profile1658 := by decide +kernel

noncomputable def selection1_1658 : Selection :=
  ⟨1, -5, 6, (693/50), 456, -580, 1064⟩
theorem selection1_1658_checked : selection1_1658.check profile1658 := by decide +kernel

noncomputable def selection2_1658 : Selection :=
  ⟨2, -13, 10, (343/25), 170, -728, 1432⟩
theorem selection2_1658_checked : selection2_1658.check profile1658 := by decide +kernel

noncomputable def profile1659 : ProfileCell :=
  ⟨(59/101), (38/65),
    [30, 29, 28, 26, 25, 24, 23, 22, 21, 19, 18, 17, 16, 15, 14, 12], [28, 28, 29, 29, 30],
    [⟨33, 59⟩, ⟨1, 28⟩, ⟨13, 35⟩, ⟨28, 56⟩, ⟨40, 63⟩, ⟨8, 32⟩, ⟨20, 39⟩, ⟨23, 53⟩, ⟨35, 60⟩, ⟨3, 29⟩, ⟨15, 36⟩, ⟨30, 57⟩, ⟨42, 64⟩, ⟨10, 33⟩, ⟨43, 92⟩, ⟨25, 54⟩, ⟨37, 61⟩, ⟨5, 30⟩, ⟨17, 37⟩, ⟨32, 58⟩, ⟨12, 34⟩, ⟨27, 55⟩, ⟨39, 62⟩, ⟨7, 31⟩, ⟨19, 38⟩, ⟨22, 52⟩, ⟨34, 59⟩, ⟨2, 28⟩, ⟨14, 35⟩, ⟨29, 56⟩, ⟨41, 63⟩, ⟨9, 32⟩, ⟨21, 39⟩, ⟨24, 53⟩, ⟨36, 60⟩, ⟨4, 29⟩, ⟨16, 36⟩, ⟨31, 57⟩, ⟨11, 33⟩, ⟨26, 54⟩, ⟨38, 61⟩, ⟨6, 30⟩, ⟨18, 37⟩]⟩
theorem profile1659_checked : profile1659.check := by decide +kernel

noncomputable def selection0_1659 : Selection :=
  ⟨0, 3, 2, (1461/100), 1955, -164, 292⟩
theorem selection0_1659_checked : selection0_1659.check profile1659 := by decide +kernel

noncomputable def selection1_1659 : Selection :=
  ⟨1, -5, 6, (349/25), 255, -344, 660⟩
theorem selection1_1659_checked : selection1_1659.check profile1659 := by decide +kernel

noncomputable def selection2_1659 : Selection :=
  ⟨2, -13, 10, (1381/100), 95, -492, 1028⟩
theorem selection2_1659_checked : selection2_1659.check profile1659 := by decide +kernel

noncomputable def profile1660 : ProfileCell :=
  ⟨(38/65), (31/53),
    [30, 29, 28, 26, 25, 24, 23, 22, 21, 19, 18, 17, 16, 15, 14, 12], [28, 28, 29, 29, 30],
    [⟨18, 38⟩, ⟨33, 59⟩, ⟨1, 28⟩, ⟨13, 35⟩, ⟨28, 56⟩, ⟨40, 63⟩, ⟨8, 32⟩, ⟨20, 39⟩, ⟨23, 53⟩, ⟨35, 60⟩, ⟨3, 29⟩, ⟨15, 36⟩, ⟨30, 57⟩, ⟨42, 64⟩, ⟨10, 33⟩, ⟨25, 54⟩, ⟨43, 92⟩, ⟨37, 61⟩, ⟨5, 30⟩, ⟨17, 37⟩, ⟨32, 58⟩, ⟨12, 34⟩, ⟨27, 55⟩, ⟨39, 62⟩, ⟨7, 31⟩, ⟨19, 38⟩, ⟨22, 52⟩, ⟨34, 59⟩, ⟨2, 28⟩, ⟨14, 35⟩, ⟨29, 56⟩, ⟨41, 63⟩, ⟨9, 32⟩, ⟨21, 39⟩, ⟨24, 53⟩, ⟨36, 60⟩, ⟨4, 29⟩, ⟨16, 36⟩, ⟨31, 57⟩, ⟨11, 33⟩, ⟨26, 54⟩, ⟨38, 61⟩, ⟨6, 30⟩]⟩
theorem profile1660_checked : profile1660.check := by decide +kernel

noncomputable def selection0_1660 : Selection :=
  ⟨0, 3, 2, (59/4), 1253, -316, 552⟩
theorem selection0_1660_checked : selection0_1660.check profile1660 := by decide +kernel

noncomputable def selection1_1660 : Selection :=
  ⟨1, -5, 6, (351/25), 163, -496, 920⟩
theorem selection1_1660_checked : selection1_1660.check profile1660 := by decide +kernel

noncomputable def selection2_1660 : Selection :=
  ⟨2, -13, 10, (347/25), 61, -644, 1288⟩
theorem selection2_1660_checked : selection2_1660.check profile1660 := by decide +kernel

noncomputable def profile1661 : ProfileCell :=
  ⟨(31/53), (55/94),
    [30, 29, 28, 26, 25, 24, 23, 22, 21, 19, 18, 17, 16, 15, 14, 12], [28, 28, 29, 29, 30],
    [⟨6, 31⟩, ⟨38, 62⟩, ⟨18, 38⟩, ⟨1, 28⟩, ⟨33, 59⟩, ⟨13, 35⟩, ⟨28, 56⟩, ⟨8, 32⟩, ⟨40, 63⟩, ⟨20, 39⟩, ⟨23, 53⟩, ⟨3, 29⟩, ⟨35, 60⟩, ⟨15, 36⟩, ⟨30, 57⟩, ⟨10, 33⟩, ⟨42, 64⟩, ⟨25, 54⟩, ⟨5, 30⟩, ⟨37, 61⟩, ⟨43, 92⟩, ⟨17, 37⟩, ⟨32, 58⟩, ⟨12, 34⟩, ⟨27, 55⟩, ⟨7, 31⟩, ⟨39, 62⟩, ⟨19, 38⟩, ⟨22, 52⟩, ⟨2, 28⟩, ⟨34, 59⟩, ⟨14, 35⟩, ⟨29, 56⟩, ⟨9, 32⟩, ⟨41, 63⟩, ⟨21, 39⟩, ⟨24, 53⟩, ⟨4, 29⟩, ⟨36, 60⟩, ⟨16, 36⟩, ⟨31, 57⟩, ⟨11, 33⟩, ⟨26, 54⟩]⟩
theorem profile1661_checked : profile1661.check := by decide +kernel

noncomputable def selection0_1661 : Selection :=
  ⟨0, 3, 2, (74/5), 869, -192, 340⟩
theorem selection0_1661_checked : selection0_1661.check profile1661 := by decide +kernel

noncomputable def selection1_1661 : Selection :=
  ⟨1, -5, 6, (1409/100), 113, -372, 708⟩
theorem selection1_1661_checked : selection1_1661.check profile1661 := by decide +kernel

noncomputable def selection2_1661 : Selection :=
  ⟨2, -13, 10, (348/25), 42, -520, 1076⟩
theorem selection2_1661_checked : selection2_1661.check profile1661 := by decide +kernel

noncomputable def profile1662 : ProfileCell :=
  ⟨(55/94), (24/41),
    [30, 29, 28, 26, 25, 24, 23, 22, 21, 19, 18, 17, 16, 15, 14, 12], [28, 28, 29, 29, 30],
    [⟨26, 55⟩, ⟨6, 31⟩, ⟨38, 62⟩, ⟨18, 38⟩, ⟨1, 28⟩, ⟨33, 59⟩, ⟨13, 35⟩, ⟨28, 56⟩, ⟨8, 32⟩, ⟨40, 63⟩, ⟨20, 39⟩, ⟨23, 53⟩, ⟨3, 29⟩, ⟨35, 60⟩, ⟨15, 36⟩, ⟨30, 57⟩, ⟨10, 33⟩, ⟨42, 64⟩, ⟨25, 54⟩, ⟨5, 30⟩, ⟨37, 61⟩, ⟨17, 37⟩, ⟨43, 92⟩, ⟨32, 58⟩, ⟨12, 34⟩, ⟨27, 55⟩, ⟨7, 31⟩, ⟨39, 62⟩, ⟨19, 38⟩, ⟨22, 52⟩, ⟨2, 28⟩, ⟨34, 59⟩, ⟨14, 35⟩, ⟨29, 56⟩, ⟨9, 32⟩, ⟨41, 63⟩, ⟨21, 39⟩, ⟨24, 53⟩, ⟨4, 29⟩, ⟨36, 60⟩, ⟨16, 36⟩, ⟨31, 57⟩, ⟨11, 33⟩]⟩
theorem profile1662_checked : profile1662.check := by decide +kernel

noncomputable def selection0_1662 : Selection :=
  ⟨0, 3, 2, (74/5), 1122, 28, -36⟩
theorem selection0_1662_checked : selection0_1662.check profile1662 := by decide +kernel

noncomputable def selection1_1662 : Selection :=
  ⟨1, -5, 6, (1411/100), 146, -152, 332⟩
theorem selection1_1662_checked : selection1_1662.check profile1662 := by decide +kernel

noncomputable def selection2_1662 : Selection :=
  ⟨2, -13, 10, (349/25), 55, -300, 700⟩
theorem selection2_1662_checked : selection2_1662.check profile1662 := by decide +kernel

noncomputable def profile1663 : ProfileCell :=
  ⟨(24/41), (58/99),
    [30, 29, 28, 26, 25, 24, 23, 22, 21, 19, 18, 17, 16, 15, 14, 12], [28, 28, 29, 29, 30],
    [⟨6, 31⟩, ⟨26, 55⟩, ⟨18, 38⟩, ⟨38, 62⟩, ⟨1, 28⟩, ⟨13, 35⟩, ⟨33, 59⟩, ⟨8, 32⟩, ⟨28, 56⟩, ⟨20, 39⟩, ⟨40, 63⟩, ⟨3, 29⟩, ⟨23, 53⟩, ⟨15, 36⟩, ⟨35, 60⟩, ⟨10, 33⟩, ⟨30, 57⟩, ⟨42, 64⟩, ⟨5, 30⟩, ⟨25, 54⟩, ⟨17, 37⟩, ⟨37, 61⟩, ⟨43, 92⟩, ⟨12, 34⟩, ⟨32, 58⟩, ⟨7, 31⟩, ⟨27, 55⟩, ⟨19, 38⟩, ⟨39, 62⟩, ⟨2, 28⟩, ⟨22, 52⟩, ⟨14, 35⟩, ⟨34, 59⟩, ⟨9, 32⟩, ⟨29, 56⟩, ⟨21, 39⟩, ⟨41, 63⟩, ⟨4, 29⟩, ⟨24, 53⟩, ⟨16, 36⟩, ⟨36, 60⟩, ⟨11, 33⟩, ⟨31, 57⟩]⟩
theorem profile1663_checked : profile1663.check := by decide +kernel

noncomputable def selection0_1663 : Selection :=
  ⟨0, 3, 2, (753/50), 2164, -356, 620⟩
theorem selection0_1663_checked : selection0_1663.check profile1663 := by decide +kernel

noncomputable def selection1_1663 : Selection :=
  ⟨1, -5, 6, (1427/100), 280, -536, 988⟩
theorem selection1_1663_checked : selection1_1663.check profile1663 := by decide +kernel

noncomputable def selection2_1663 : Selection :=
  ⟨2, -13, 10, (1409/100), 104, -684, 1356⟩
theorem selection2_1663_checked : selection2_1663.check profile1663 := by decide +kernel

noncomputable def leaf0_1600 : Block :=
  Block.single profile1600 selection0_1600 profile1600_checked selection0_1600_checked
noncomputable def leaf0_1601 : Block :=
  Block.single profile1601 selection0_1601 profile1601_checked selection0_1601_checked
noncomputable def leaf0_1602 : Block :=
  Block.single profile1602 selection0_1602 profile1602_checked selection0_1602_checked
noncomputable def leaf0_1603 : Block :=
  Block.single profile1603 selection0_1603 profile1603_checked selection0_1603_checked
noncomputable def leaf0_1604 : Block :=
  Block.single profile1604 selection0_1604 profile1604_checked selection0_1604_checked
noncomputable def leaf0_1605 : Block :=
  Block.single profile1605 selection0_1605 profile1605_checked selection0_1605_checked
noncomputable def leaf0_1606 : Block :=
  Block.single profile1606 selection0_1606 profile1606_checked selection0_1606_checked
noncomputable def leaf0_1607 : Block :=
  Block.single profile1607 selection0_1607 profile1607_checked selection0_1607_checked
noncomputable def leaf0_1608 : Block :=
  Block.single profile1608 selection0_1608 profile1608_checked selection0_1608_checked
noncomputable def leaf0_1609 : Block :=
  Block.single profile1609 selection0_1609 profile1609_checked selection0_1609_checked
noncomputable def leaf0_1610 : Block :=
  Block.single profile1610 selection0_1610 profile1610_checked selection0_1610_checked
noncomputable def leaf0_1611 : Block :=
  Block.single profile1611 selection0_1611 profile1611_checked selection0_1611_checked
noncomputable def leaf0_1612 : Block :=
  Block.single profile1612 selection0_1612 profile1612_checked selection0_1612_checked
noncomputable def leaf0_1613 : Block :=
  Block.single profile1613 selection0_1613 profile1613_checked selection0_1613_checked
noncomputable def leaf0_1614 : Block :=
  Block.single profile1614 selection0_1614 profile1614_checked selection0_1614_checked
noncomputable def leaf0_1615 : Block :=
  Block.single profile1615 selection0_1615 profile1615_checked selection0_1615_checked
noncomputable def leaf0_1616 : Block :=
  Block.single profile1616 selection0_1616 profile1616_checked selection0_1616_checked
noncomputable def leaf0_1617 : Block :=
  Block.single profile1617 selection0_1617 profile1617_checked selection0_1617_checked
noncomputable def leaf0_1618 : Block :=
  Block.single profile1618 selection0_1618 profile1618_checked selection0_1618_checked
noncomputable def leaf0_1619 : Block :=
  Block.single profile1619 selection0_1619 profile1619_checked selection0_1619_checked
noncomputable def leaf0_1620 : Block :=
  Block.single profile1620 selection0_1620 profile1620_checked selection0_1620_checked
noncomputable def leaf0_1621 : Block :=
  Block.single profile1621 selection0_1621 profile1621_checked selection0_1621_checked
noncomputable def leaf0_1622 : Block :=
  Block.single profile1622 selection0_1622 profile1622_checked selection0_1622_checked
noncomputable def leaf0_1623 : Block :=
  Block.single profile1623 selection0_1623 profile1623_checked selection0_1623_checked
noncomputable def leaf0_1624 : Block :=
  Block.single profile1624 selection0_1624 profile1624_checked selection0_1624_checked
noncomputable def leaf0_1625 : Block :=
  Block.single profile1625 selection0_1625 profile1625_checked selection0_1625_checked
noncomputable def leaf0_1626 : Block :=
  Block.single profile1626 selection0_1626 profile1626_checked selection0_1626_checked
noncomputable def leaf0_1627 : Block :=
  Block.single profile1627 selection0_1627 profile1627_checked selection0_1627_checked
noncomputable def leaf0_1628 : Block :=
  Block.single profile1628 selection0_1628 profile1628_checked selection0_1628_checked
noncomputable def leaf0_1629 : Block :=
  Block.single profile1629 selection0_1629 profile1629_checked selection0_1629_checked
noncomputable def leaf0_1630 : Block :=
  Block.single profile1630 selection0_1630 profile1630_checked selection0_1630_checked
noncomputable def leaf0_1631 : Block :=
  Block.single profile1631 selection0_1631 profile1631_checked selection0_1631_checked
noncomputable def leaf0_1632 : Block :=
  Block.single profile1632 selection0_1632 profile1632_checked selection0_1632_checked
noncomputable def leaf0_1633 : Block :=
  Block.single profile1633 selection0_1633 profile1633_checked selection0_1633_checked
noncomputable def leaf0_1634 : Block :=
  Block.single profile1634 selection0_1634 profile1634_checked selection0_1634_checked
noncomputable def leaf0_1635 : Block :=
  Block.single profile1635 selection0_1635 profile1635_checked selection0_1635_checked
noncomputable def leaf0_1636 : Block :=
  Block.single profile1636 selection0_1636 profile1636_checked selection0_1636_checked
noncomputable def leaf0_1637 : Block :=
  Block.single profile1637 selection0_1637 profile1637_checked selection0_1637_checked
noncomputable def leaf0_1638 : Block :=
  Block.single profile1638 selection0_1638 profile1638_checked selection0_1638_checked
noncomputable def leaf0_1639 : Block :=
  Block.single profile1639 selection0_1639 profile1639_checked selection0_1639_checked
noncomputable def leaf0_1640 : Block :=
  Block.single profile1640 selection0_1640 profile1640_checked selection0_1640_checked
noncomputable def leaf0_1641 : Block :=
  Block.single profile1641 selection0_1641 profile1641_checked selection0_1641_checked
noncomputable def leaf0_1642 : Block :=
  Block.single profile1642 selection0_1642 profile1642_checked selection0_1642_checked
noncomputable def leaf0_1643 : Block :=
  Block.single profile1643 selection0_1643 profile1643_checked selection0_1643_checked
noncomputable def leaf0_1644 : Block :=
  Block.single profile1644 selection0_1644 profile1644_checked selection0_1644_checked
noncomputable def leaf0_1645 : Block :=
  Block.single profile1645 selection0_1645 profile1645_checked selection0_1645_checked
noncomputable def leaf0_1646 : Block :=
  Block.single profile1646 selection0_1646 profile1646_checked selection0_1646_checked
noncomputable def leaf0_1647 : Block :=
  Block.single profile1647 selection0_1647 profile1647_checked selection0_1647_checked
noncomputable def leaf0_1648 : Block :=
  Block.single profile1648 selection0_1648 profile1648_checked selection0_1648_checked
noncomputable def leaf0_1649 : Block :=
  Block.single profile1649 selection0_1649 profile1649_checked selection0_1649_checked
noncomputable def leaf0_1650 : Block :=
  Block.single profile1650 selection0_1650 profile1650_checked selection0_1650_checked
noncomputable def leaf0_1651 : Block :=
  Block.single profile1651 selection0_1651 profile1651_checked selection0_1651_checked
noncomputable def leaf0_1652 : Block :=
  Block.single profile1652 selection0_1652 profile1652_checked selection0_1652_checked
noncomputable def leaf0_1653 : Block :=
  Block.single profile1653 selection0_1653 profile1653_checked selection0_1653_checked
noncomputable def leaf0_1654 : Block :=
  Block.single profile1654 selection0_1654 profile1654_checked selection0_1654_checked
noncomputable def leaf0_1655 : Block :=
  Block.single profile1655 selection0_1655 profile1655_checked selection0_1655_checked
noncomputable def leaf0_1656 : Block :=
  Block.single profile1656 selection0_1656 profile1656_checked selection0_1656_checked
noncomputable def leaf0_1657 : Block :=
  Block.single profile1657 selection0_1657 profile1657_checked selection0_1657_checked
noncomputable def leaf0_1658 : Block :=
  Block.single profile1658 selection0_1658 profile1658_checked selection0_1658_checked
noncomputable def leaf0_1659 : Block :=
  Block.single profile1659 selection0_1659 profile1659_checked selection0_1659_checked
noncomputable def leaf0_1660 : Block :=
  Block.single profile1660 selection0_1660 profile1660_checked selection0_1660_checked
noncomputable def leaf0_1661 : Block :=
  Block.single profile1661 selection0_1661 profile1661_checked selection0_1661_checked
noncomputable def leaf0_1662 : Block :=
  Block.single profile1662 selection0_1662 profile1662_checked selection0_1662_checked
noncomputable def leaf0_1663 : Block :=
  Block.single profile1663 selection0_1663 profile1663_checked selection0_1663_checked
noncomputable def batch025p0_0_0000 : Block :=
  Block.append leaf0_1600 leaf0_1601 (by decide +kernel)
noncomputable def batch025p0_0_0001 : Block :=
  Block.append leaf0_1602 leaf0_1603 (by decide +kernel)
noncomputable def batch025p0_0_0002 : Block :=
  Block.append leaf0_1604 leaf0_1605 (by decide +kernel)
noncomputable def batch025p0_0_0003 : Block :=
  Block.append leaf0_1606 leaf0_1607 (by decide +kernel)
noncomputable def batch025p0_0_0004 : Block :=
  Block.append leaf0_1608 leaf0_1609 (by decide +kernel)
noncomputable def batch025p0_0_0005 : Block :=
  Block.append leaf0_1610 leaf0_1611 (by decide +kernel)
noncomputable def batch025p0_0_0006 : Block :=
  Block.append leaf0_1612 leaf0_1613 (by decide +kernel)
noncomputable def batch025p0_0_0007 : Block :=
  Block.append leaf0_1614 leaf0_1615 (by decide +kernel)
noncomputable def batch025p0_0_0008 : Block :=
  Block.append leaf0_1616 leaf0_1617 (by decide +kernel)
noncomputable def batch025p0_0_0009 : Block :=
  Block.append leaf0_1618 leaf0_1619 (by decide +kernel)
noncomputable def batch025p0_0_0010 : Block :=
  Block.append leaf0_1620 leaf0_1621 (by decide +kernel)
noncomputable def batch025p0_0_0011 : Block :=
  Block.append leaf0_1622 leaf0_1623 (by decide +kernel)
noncomputable def batch025p0_0_0012 : Block :=
  Block.append leaf0_1624 leaf0_1625 (by decide +kernel)
noncomputable def batch025p0_0_0013 : Block :=
  Block.append leaf0_1626 leaf0_1627 (by decide +kernel)
noncomputable def batch025p0_0_0014 : Block :=
  Block.append leaf0_1628 leaf0_1629 (by decide +kernel)
noncomputable def batch025p0_0_0015 : Block :=
  Block.append leaf0_1630 leaf0_1631 (by decide +kernel)
noncomputable def batch025p0_0_0016 : Block :=
  Block.append leaf0_1632 leaf0_1633 (by decide +kernel)
noncomputable def batch025p0_0_0017 : Block :=
  Block.append leaf0_1634 leaf0_1635 (by decide +kernel)
noncomputable def batch025p0_0_0018 : Block :=
  Block.append leaf0_1636 leaf0_1637 (by decide +kernel)
noncomputable def batch025p0_0_0019 : Block :=
  Block.append leaf0_1638 leaf0_1639 (by decide +kernel)
noncomputable def batch025p0_0_0020 : Block :=
  Block.append leaf0_1640 leaf0_1641 (by decide +kernel)
noncomputable def batch025p0_0_0021 : Block :=
  Block.append leaf0_1642 leaf0_1643 (by decide +kernel)
noncomputable def batch025p0_0_0022 : Block :=
  Block.append leaf0_1644 leaf0_1645 (by decide +kernel)
noncomputable def batch025p0_0_0023 : Block :=
  Block.append leaf0_1646 leaf0_1647 (by decide +kernel)
noncomputable def batch025p0_0_0024 : Block :=
  Block.append leaf0_1648 leaf0_1649 (by decide +kernel)
noncomputable def batch025p0_0_0025 : Block :=
  Block.append leaf0_1650 leaf0_1651 (by decide +kernel)
noncomputable def batch025p0_0_0026 : Block :=
  Block.append leaf0_1652 leaf0_1653 (by decide +kernel)
noncomputable def batch025p0_0_0027 : Block :=
  Block.append leaf0_1654 leaf0_1655 (by decide +kernel)
noncomputable def batch025p0_0_0028 : Block :=
  Block.append leaf0_1656 leaf0_1657 (by decide +kernel)
noncomputable def batch025p0_0_0029 : Block :=
  Block.append leaf0_1658 leaf0_1659 (by decide +kernel)
noncomputable def batch025p0_0_0030 : Block :=
  Block.append leaf0_1660 leaf0_1661 (by decide +kernel)
noncomputable def batch025p0_0_0031 : Block :=
  Block.append leaf0_1662 leaf0_1663 (by decide +kernel)
noncomputable def batch025p0_1_0000 : Block :=
  Block.append batch025p0_0_0000 batch025p0_0_0001 (by decide +kernel)
noncomputable def batch025p0_1_0001 : Block :=
  Block.append batch025p0_0_0002 batch025p0_0_0003 (by decide +kernel)
noncomputable def batch025p0_1_0002 : Block :=
  Block.append batch025p0_0_0004 batch025p0_0_0005 (by decide +kernel)
noncomputable def batch025p0_1_0003 : Block :=
  Block.append batch025p0_0_0006 batch025p0_0_0007 (by decide +kernel)
noncomputable def batch025p0_1_0004 : Block :=
  Block.append batch025p0_0_0008 batch025p0_0_0009 (by decide +kernel)
noncomputable def batch025p0_1_0005 : Block :=
  Block.append batch025p0_0_0010 batch025p0_0_0011 (by decide +kernel)
noncomputable def batch025p0_1_0006 : Block :=
  Block.append batch025p0_0_0012 batch025p0_0_0013 (by decide +kernel)
noncomputable def batch025p0_1_0007 : Block :=
  Block.append batch025p0_0_0014 batch025p0_0_0015 (by decide +kernel)
noncomputable def batch025p0_1_0008 : Block :=
  Block.append batch025p0_0_0016 batch025p0_0_0017 (by decide +kernel)
noncomputable def batch025p0_1_0009 : Block :=
  Block.append batch025p0_0_0018 batch025p0_0_0019 (by decide +kernel)
noncomputable def batch025p0_1_0010 : Block :=
  Block.append batch025p0_0_0020 batch025p0_0_0021 (by decide +kernel)
noncomputable def batch025p0_1_0011 : Block :=
  Block.append batch025p0_0_0022 batch025p0_0_0023 (by decide +kernel)
noncomputable def batch025p0_1_0012 : Block :=
  Block.append batch025p0_0_0024 batch025p0_0_0025 (by decide +kernel)
noncomputable def batch025p0_1_0013 : Block :=
  Block.append batch025p0_0_0026 batch025p0_0_0027 (by decide +kernel)
noncomputable def batch025p0_1_0014 : Block :=
  Block.append batch025p0_0_0028 batch025p0_0_0029 (by decide +kernel)
noncomputable def batch025p0_1_0015 : Block :=
  Block.append batch025p0_0_0030 batch025p0_0_0031 (by decide +kernel)
noncomputable def batch025p0_2_0000 : Block :=
  Block.append batch025p0_1_0000 batch025p0_1_0001 (by decide +kernel)
noncomputable def batch025p0_2_0001 : Block :=
  Block.append batch025p0_1_0002 batch025p0_1_0003 (by decide +kernel)
noncomputable def batch025p0_2_0002 : Block :=
  Block.append batch025p0_1_0004 batch025p0_1_0005 (by decide +kernel)
noncomputable def batch025p0_2_0003 : Block :=
  Block.append batch025p0_1_0006 batch025p0_1_0007 (by decide +kernel)
noncomputable def batch025p0_2_0004 : Block :=
  Block.append batch025p0_1_0008 batch025p0_1_0009 (by decide +kernel)
noncomputable def batch025p0_2_0005 : Block :=
  Block.append batch025p0_1_0010 batch025p0_1_0011 (by decide +kernel)
noncomputable def batch025p0_2_0006 : Block :=
  Block.append batch025p0_1_0012 batch025p0_1_0013 (by decide +kernel)
noncomputable def batch025p0_2_0007 : Block :=
  Block.append batch025p0_1_0014 batch025p0_1_0015 (by decide +kernel)
noncomputable def batch025p0_3_0000 : Block :=
  Block.append batch025p0_2_0000 batch025p0_2_0001 (by decide +kernel)
noncomputable def batch025p0_3_0001 : Block :=
  Block.append batch025p0_2_0002 batch025p0_2_0003 (by decide +kernel)
noncomputable def batch025p0_3_0002 : Block :=
  Block.append batch025p0_2_0004 batch025p0_2_0005 (by decide +kernel)
noncomputable def batch025p0_3_0003 : Block :=
  Block.append batch025p0_2_0006 batch025p0_2_0007 (by decide +kernel)
noncomputable def batch025p0_4_0000 : Block :=
  Block.append batch025p0_3_0000 batch025p0_3_0001 (by decide +kernel)
noncomputable def batch025p0_4_0001 : Block :=
  Block.append batch025p0_3_0002 batch025p0_3_0003 (by decide +kernel)
noncomputable def batch025p0_5_0000 : Block :=
  Block.append batch025p0_4_0000 batch025p0_4_0001 (by decide +kernel)
theorem batch025p0_5_0000_left : batch025p0_5_0000.left = (89/158) := by decide +kernel
theorem batch025p0_5_0000_right : batch025p0_5_0000.right = (58/99) := by decide +kernel
theorem batch025p0_5_0000_units : batch025p0_5_0000.units = 107287 := by decide +kernel
noncomputable def leaf1_1600 : Block :=
  Block.single profile1600 selection1_1600 profile1600_checked selection1_1600_checked
noncomputable def leaf1_1601 : Block :=
  Block.single profile1601 selection1_1601 profile1601_checked selection1_1601_checked
noncomputable def leaf1_1602 : Block :=
  Block.single profile1602 selection1_1602 profile1602_checked selection1_1602_checked
noncomputable def leaf1_1603 : Block :=
  Block.single profile1603 selection1_1603 profile1603_checked selection1_1603_checked
noncomputable def leaf1_1604 : Block :=
  Block.single profile1604 selection1_1604 profile1604_checked selection1_1604_checked
noncomputable def leaf1_1605 : Block :=
  Block.single profile1605 selection1_1605 profile1605_checked selection1_1605_checked
noncomputable def leaf1_1606 : Block :=
  Block.single profile1606 selection1_1606 profile1606_checked selection1_1606_checked
noncomputable def leaf1_1607 : Block :=
  Block.single profile1607 selection1_1607 profile1607_checked selection1_1607_checked
noncomputable def leaf1_1608 : Block :=
  Block.single profile1608 selection1_1608 profile1608_checked selection1_1608_checked
noncomputable def leaf1_1609 : Block :=
  Block.single profile1609 selection1_1609 profile1609_checked selection1_1609_checked
noncomputable def leaf1_1610 : Block :=
  Block.single profile1610 selection1_1610 profile1610_checked selection1_1610_checked
noncomputable def leaf1_1611 : Block :=
  Block.single profile1611 selection1_1611 profile1611_checked selection1_1611_checked
noncomputable def leaf1_1612 : Block :=
  Block.single profile1612 selection1_1612 profile1612_checked selection1_1612_checked
noncomputable def leaf1_1613 : Block :=
  Block.single profile1613 selection1_1613 profile1613_checked selection1_1613_checked
noncomputable def leaf1_1614 : Block :=
  Block.single profile1614 selection1_1614 profile1614_checked selection1_1614_checked
noncomputable def leaf1_1615 : Block :=
  Block.single profile1615 selection1_1615 profile1615_checked selection1_1615_checked
noncomputable def leaf1_1616 : Block :=
  Block.single profile1616 selection1_1616 profile1616_checked selection1_1616_checked
noncomputable def leaf1_1617 : Block :=
  Block.single profile1617 selection1_1617 profile1617_checked selection1_1617_checked
noncomputable def leaf1_1618 : Block :=
  Block.single profile1618 selection1_1618 profile1618_checked selection1_1618_checked
noncomputable def leaf1_1619 : Block :=
  Block.single profile1619 selection1_1619 profile1619_checked selection1_1619_checked
noncomputable def leaf1_1620 : Block :=
  Block.single profile1620 selection1_1620 profile1620_checked selection1_1620_checked
noncomputable def leaf1_1621 : Block :=
  Block.single profile1621 selection1_1621 profile1621_checked selection1_1621_checked
noncomputable def leaf1_1622 : Block :=
  Block.single profile1622 selection1_1622 profile1622_checked selection1_1622_checked
noncomputable def leaf1_1623 : Block :=
  Block.single profile1623 selection1_1623 profile1623_checked selection1_1623_checked
noncomputable def leaf1_1624 : Block :=
  Block.single profile1624 selection1_1624 profile1624_checked selection1_1624_checked
noncomputable def leaf1_1625 : Block :=
  Block.single profile1625 selection1_1625 profile1625_checked selection1_1625_checked
noncomputable def leaf1_1626 : Block :=
  Block.single profile1626 selection1_1626 profile1626_checked selection1_1626_checked
noncomputable def leaf1_1627 : Block :=
  Block.single profile1627 selection1_1627 profile1627_checked selection1_1627_checked
noncomputable def leaf1_1628 : Block :=
  Block.single profile1628 selection1_1628 profile1628_checked selection1_1628_checked
noncomputable def leaf1_1629 : Block :=
  Block.single profile1629 selection1_1629 profile1629_checked selection1_1629_checked
noncomputable def leaf1_1630 : Block :=
  Block.single profile1630 selection1_1630 profile1630_checked selection1_1630_checked
noncomputable def leaf1_1631 : Block :=
  Block.single profile1631 selection1_1631 profile1631_checked selection1_1631_checked
noncomputable def leaf1_1632 : Block :=
  Block.single profile1632 selection1_1632 profile1632_checked selection1_1632_checked
noncomputable def leaf1_1633 : Block :=
  Block.single profile1633 selection1_1633 profile1633_checked selection1_1633_checked
noncomputable def leaf1_1634 : Block :=
  Block.single profile1634 selection1_1634 profile1634_checked selection1_1634_checked
noncomputable def leaf1_1635 : Block :=
  Block.single profile1635 selection1_1635 profile1635_checked selection1_1635_checked
noncomputable def leaf1_1636 : Block :=
  Block.single profile1636 selection1_1636 profile1636_checked selection1_1636_checked
noncomputable def leaf1_1637 : Block :=
  Block.single profile1637 selection1_1637 profile1637_checked selection1_1637_checked
noncomputable def leaf1_1638 : Block :=
  Block.single profile1638 selection1_1638 profile1638_checked selection1_1638_checked
noncomputable def leaf1_1639 : Block :=
  Block.single profile1639 selection1_1639 profile1639_checked selection1_1639_checked
noncomputable def leaf1_1640 : Block :=
  Block.single profile1640 selection1_1640 profile1640_checked selection1_1640_checked
noncomputable def leaf1_1641 : Block :=
  Block.single profile1641 selection1_1641 profile1641_checked selection1_1641_checked
noncomputable def leaf1_1642 : Block :=
  Block.single profile1642 selection1_1642 profile1642_checked selection1_1642_checked
noncomputable def leaf1_1643 : Block :=
  Block.single profile1643 selection1_1643 profile1643_checked selection1_1643_checked
noncomputable def leaf1_1644 : Block :=
  Block.single profile1644 selection1_1644 profile1644_checked selection1_1644_checked
noncomputable def leaf1_1645 : Block :=
  Block.single profile1645 selection1_1645 profile1645_checked selection1_1645_checked
noncomputable def leaf1_1646 : Block :=
  Block.single profile1646 selection1_1646 profile1646_checked selection1_1646_checked
noncomputable def leaf1_1647 : Block :=
  Block.single profile1647 selection1_1647 profile1647_checked selection1_1647_checked
noncomputable def leaf1_1648 : Block :=
  Block.single profile1648 selection1_1648 profile1648_checked selection1_1648_checked
noncomputable def leaf1_1649 : Block :=
  Block.single profile1649 selection1_1649 profile1649_checked selection1_1649_checked
noncomputable def leaf1_1650 : Block :=
  Block.single profile1650 selection1_1650 profile1650_checked selection1_1650_checked
noncomputable def leaf1_1651 : Block :=
  Block.single profile1651 selection1_1651 profile1651_checked selection1_1651_checked
noncomputable def leaf1_1652 : Block :=
  Block.single profile1652 selection1_1652 profile1652_checked selection1_1652_checked
noncomputable def leaf1_1653 : Block :=
  Block.single profile1653 selection1_1653 profile1653_checked selection1_1653_checked
noncomputable def leaf1_1654 : Block :=
  Block.single profile1654 selection1_1654 profile1654_checked selection1_1654_checked
noncomputable def leaf1_1655 : Block :=
  Block.single profile1655 selection1_1655 profile1655_checked selection1_1655_checked
noncomputable def leaf1_1656 : Block :=
  Block.single profile1656 selection1_1656 profile1656_checked selection1_1656_checked
noncomputable def leaf1_1657 : Block :=
  Block.single profile1657 selection1_1657 profile1657_checked selection1_1657_checked
noncomputable def leaf1_1658 : Block :=
  Block.single profile1658 selection1_1658 profile1658_checked selection1_1658_checked
noncomputable def leaf1_1659 : Block :=
  Block.single profile1659 selection1_1659 profile1659_checked selection1_1659_checked
noncomputable def leaf1_1660 : Block :=
  Block.single profile1660 selection1_1660 profile1660_checked selection1_1660_checked
noncomputable def leaf1_1661 : Block :=
  Block.single profile1661 selection1_1661 profile1661_checked selection1_1661_checked
noncomputable def leaf1_1662 : Block :=
  Block.single profile1662 selection1_1662 profile1662_checked selection1_1662_checked
noncomputable def leaf1_1663 : Block :=
  Block.single profile1663 selection1_1663 profile1663_checked selection1_1663_checked
noncomputable def batch025p1_0_0000 : Block :=
  Block.append leaf1_1600 leaf1_1601 (by decide +kernel)
noncomputable def batch025p1_0_0001 : Block :=
  Block.append leaf1_1602 leaf1_1603 (by decide +kernel)
noncomputable def batch025p1_0_0002 : Block :=
  Block.append leaf1_1604 leaf1_1605 (by decide +kernel)
noncomputable def batch025p1_0_0003 : Block :=
  Block.append leaf1_1606 leaf1_1607 (by decide +kernel)
noncomputable def batch025p1_0_0004 : Block :=
  Block.append leaf1_1608 leaf1_1609 (by decide +kernel)
noncomputable def batch025p1_0_0005 : Block :=
  Block.append leaf1_1610 leaf1_1611 (by decide +kernel)
noncomputable def batch025p1_0_0006 : Block :=
  Block.append leaf1_1612 leaf1_1613 (by decide +kernel)
noncomputable def batch025p1_0_0007 : Block :=
  Block.append leaf1_1614 leaf1_1615 (by decide +kernel)
noncomputable def batch025p1_0_0008 : Block :=
  Block.append leaf1_1616 leaf1_1617 (by decide +kernel)
noncomputable def batch025p1_0_0009 : Block :=
  Block.append leaf1_1618 leaf1_1619 (by decide +kernel)
noncomputable def batch025p1_0_0010 : Block :=
  Block.append leaf1_1620 leaf1_1621 (by decide +kernel)
noncomputable def batch025p1_0_0011 : Block :=
  Block.append leaf1_1622 leaf1_1623 (by decide +kernel)
noncomputable def batch025p1_0_0012 : Block :=
  Block.append leaf1_1624 leaf1_1625 (by decide +kernel)
noncomputable def batch025p1_0_0013 : Block :=
  Block.append leaf1_1626 leaf1_1627 (by decide +kernel)
noncomputable def batch025p1_0_0014 : Block :=
  Block.append leaf1_1628 leaf1_1629 (by decide +kernel)
noncomputable def batch025p1_0_0015 : Block :=
  Block.append leaf1_1630 leaf1_1631 (by decide +kernel)
noncomputable def batch025p1_0_0016 : Block :=
  Block.append leaf1_1632 leaf1_1633 (by decide +kernel)
noncomputable def batch025p1_0_0017 : Block :=
  Block.append leaf1_1634 leaf1_1635 (by decide +kernel)
noncomputable def batch025p1_0_0018 : Block :=
  Block.append leaf1_1636 leaf1_1637 (by decide +kernel)
noncomputable def batch025p1_0_0019 : Block :=
  Block.append leaf1_1638 leaf1_1639 (by decide +kernel)
noncomputable def batch025p1_0_0020 : Block :=
  Block.append leaf1_1640 leaf1_1641 (by decide +kernel)
noncomputable def batch025p1_0_0021 : Block :=
  Block.append leaf1_1642 leaf1_1643 (by decide +kernel)
noncomputable def batch025p1_0_0022 : Block :=
  Block.append leaf1_1644 leaf1_1645 (by decide +kernel)
noncomputable def batch025p1_0_0023 : Block :=
  Block.append leaf1_1646 leaf1_1647 (by decide +kernel)
noncomputable def batch025p1_0_0024 : Block :=
  Block.append leaf1_1648 leaf1_1649 (by decide +kernel)
noncomputable def batch025p1_0_0025 : Block :=
  Block.append leaf1_1650 leaf1_1651 (by decide +kernel)
noncomputable def batch025p1_0_0026 : Block :=
  Block.append leaf1_1652 leaf1_1653 (by decide +kernel)
noncomputable def batch025p1_0_0027 : Block :=
  Block.append leaf1_1654 leaf1_1655 (by decide +kernel)
noncomputable def batch025p1_0_0028 : Block :=
  Block.append leaf1_1656 leaf1_1657 (by decide +kernel)
noncomputable def batch025p1_0_0029 : Block :=
  Block.append leaf1_1658 leaf1_1659 (by decide +kernel)
noncomputable def batch025p1_0_0030 : Block :=
  Block.append leaf1_1660 leaf1_1661 (by decide +kernel)
noncomputable def batch025p1_0_0031 : Block :=
  Block.append leaf1_1662 leaf1_1663 (by decide +kernel)
noncomputable def batch025p1_1_0000 : Block :=
  Block.append batch025p1_0_0000 batch025p1_0_0001 (by decide +kernel)
noncomputable def batch025p1_1_0001 : Block :=
  Block.append batch025p1_0_0002 batch025p1_0_0003 (by decide +kernel)
noncomputable def batch025p1_1_0002 : Block :=
  Block.append batch025p1_0_0004 batch025p1_0_0005 (by decide +kernel)
noncomputable def batch025p1_1_0003 : Block :=
  Block.append batch025p1_0_0006 batch025p1_0_0007 (by decide +kernel)
noncomputable def batch025p1_1_0004 : Block :=
  Block.append batch025p1_0_0008 batch025p1_0_0009 (by decide +kernel)
noncomputable def batch025p1_1_0005 : Block :=
  Block.append batch025p1_0_0010 batch025p1_0_0011 (by decide +kernel)
noncomputable def batch025p1_1_0006 : Block :=
  Block.append batch025p1_0_0012 batch025p1_0_0013 (by decide +kernel)
noncomputable def batch025p1_1_0007 : Block :=
  Block.append batch025p1_0_0014 batch025p1_0_0015 (by decide +kernel)
noncomputable def batch025p1_1_0008 : Block :=
  Block.append batch025p1_0_0016 batch025p1_0_0017 (by decide +kernel)
noncomputable def batch025p1_1_0009 : Block :=
  Block.append batch025p1_0_0018 batch025p1_0_0019 (by decide +kernel)
noncomputable def batch025p1_1_0010 : Block :=
  Block.append batch025p1_0_0020 batch025p1_0_0021 (by decide +kernel)
noncomputable def batch025p1_1_0011 : Block :=
  Block.append batch025p1_0_0022 batch025p1_0_0023 (by decide +kernel)
noncomputable def batch025p1_1_0012 : Block :=
  Block.append batch025p1_0_0024 batch025p1_0_0025 (by decide +kernel)
noncomputable def batch025p1_1_0013 : Block :=
  Block.append batch025p1_0_0026 batch025p1_0_0027 (by decide +kernel)
noncomputable def batch025p1_1_0014 : Block :=
  Block.append batch025p1_0_0028 batch025p1_0_0029 (by decide +kernel)
noncomputable def batch025p1_1_0015 : Block :=
  Block.append batch025p1_0_0030 batch025p1_0_0031 (by decide +kernel)
noncomputable def batch025p1_2_0000 : Block :=
  Block.append batch025p1_1_0000 batch025p1_1_0001 (by decide +kernel)
noncomputable def batch025p1_2_0001 : Block :=
  Block.append batch025p1_1_0002 batch025p1_1_0003 (by decide +kernel)
noncomputable def batch025p1_2_0002 : Block :=
  Block.append batch025p1_1_0004 batch025p1_1_0005 (by decide +kernel)
noncomputable def batch025p1_2_0003 : Block :=
  Block.append batch025p1_1_0006 batch025p1_1_0007 (by decide +kernel)
noncomputable def batch025p1_2_0004 : Block :=
  Block.append batch025p1_1_0008 batch025p1_1_0009 (by decide +kernel)
noncomputable def batch025p1_2_0005 : Block :=
  Block.append batch025p1_1_0010 batch025p1_1_0011 (by decide +kernel)
noncomputable def batch025p1_2_0006 : Block :=
  Block.append batch025p1_1_0012 batch025p1_1_0013 (by decide +kernel)
noncomputable def batch025p1_2_0007 : Block :=
  Block.append batch025p1_1_0014 batch025p1_1_0015 (by decide +kernel)
noncomputable def batch025p1_3_0000 : Block :=
  Block.append batch025p1_2_0000 batch025p1_2_0001 (by decide +kernel)
noncomputable def batch025p1_3_0001 : Block :=
  Block.append batch025p1_2_0002 batch025p1_2_0003 (by decide +kernel)
noncomputable def batch025p1_3_0002 : Block :=
  Block.append batch025p1_2_0004 batch025p1_2_0005 (by decide +kernel)
noncomputable def batch025p1_3_0003 : Block :=
  Block.append batch025p1_2_0006 batch025p1_2_0007 (by decide +kernel)
noncomputable def batch025p1_4_0000 : Block :=
  Block.append batch025p1_3_0000 batch025p1_3_0001 (by decide +kernel)
noncomputable def batch025p1_4_0001 : Block :=
  Block.append batch025p1_3_0002 batch025p1_3_0003 (by decide +kernel)
noncomputable def batch025p1_5_0000 : Block :=
  Block.append batch025p1_4_0000 batch025p1_4_0001 (by decide +kernel)
theorem batch025p1_5_0000_left : batch025p1_5_0000.left = (247/158) := by decide +kernel
theorem batch025p1_5_0000_right : batch025p1_5_0000.right = (157/99) := by decide +kernel
theorem batch025p1_5_0000_units : batch025p1_5_0000.units = 13587 := by decide +kernel
noncomputable def leaf2_1600 : Block :=
  Block.single profile1600 selection2_1600 profile1600_checked selection2_1600_checked
noncomputable def leaf2_1601 : Block :=
  Block.single profile1601 selection2_1601 profile1601_checked selection2_1601_checked
noncomputable def leaf2_1602 : Block :=
  Block.single profile1602 selection2_1602 profile1602_checked selection2_1602_checked
noncomputable def leaf2_1603 : Block :=
  Block.single profile1603 selection2_1603 profile1603_checked selection2_1603_checked
noncomputable def leaf2_1604 : Block :=
  Block.single profile1604 selection2_1604 profile1604_checked selection2_1604_checked
noncomputable def leaf2_1605 : Block :=
  Block.single profile1605 selection2_1605 profile1605_checked selection2_1605_checked
noncomputable def leaf2_1606 : Block :=
  Block.single profile1606 selection2_1606 profile1606_checked selection2_1606_checked
noncomputable def leaf2_1607 : Block :=
  Block.single profile1607 selection2_1607 profile1607_checked selection2_1607_checked
noncomputable def leaf2_1608 : Block :=
  Block.single profile1608 selection2_1608 profile1608_checked selection2_1608_checked
noncomputable def leaf2_1609 : Block :=
  Block.single profile1609 selection2_1609 profile1609_checked selection2_1609_checked
noncomputable def leaf2_1610 : Block :=
  Block.single profile1610 selection2_1610 profile1610_checked selection2_1610_checked
noncomputable def leaf2_1611 : Block :=
  Block.single profile1611 selection2_1611 profile1611_checked selection2_1611_checked
noncomputable def leaf2_1612 : Block :=
  Block.single profile1612 selection2_1612 profile1612_checked selection2_1612_checked
noncomputable def leaf2_1613 : Block :=
  Block.single profile1613 selection2_1613 profile1613_checked selection2_1613_checked
noncomputable def leaf2_1614 : Block :=
  Block.single profile1614 selection2_1614 profile1614_checked selection2_1614_checked
noncomputable def leaf2_1615 : Block :=
  Block.single profile1615 selection2_1615 profile1615_checked selection2_1615_checked
noncomputable def leaf2_1616 : Block :=
  Block.single profile1616 selection2_1616 profile1616_checked selection2_1616_checked
noncomputable def leaf2_1617 : Block :=
  Block.single profile1617 selection2_1617 profile1617_checked selection2_1617_checked
noncomputable def leaf2_1618 : Block :=
  Block.single profile1618 selection2_1618 profile1618_checked selection2_1618_checked
noncomputable def leaf2_1619 : Block :=
  Block.single profile1619 selection2_1619 profile1619_checked selection2_1619_checked
noncomputable def leaf2_1620 : Block :=
  Block.single profile1620 selection2_1620 profile1620_checked selection2_1620_checked
noncomputable def leaf2_1621 : Block :=
  Block.single profile1621 selection2_1621 profile1621_checked selection2_1621_checked
noncomputable def leaf2_1622 : Block :=
  Block.single profile1622 selection2_1622 profile1622_checked selection2_1622_checked
noncomputable def leaf2_1623 : Block :=
  Block.single profile1623 selection2_1623 profile1623_checked selection2_1623_checked
noncomputable def leaf2_1624 : Block :=
  Block.single profile1624 selection2_1624 profile1624_checked selection2_1624_checked
noncomputable def leaf2_1625 : Block :=
  Block.single profile1625 selection2_1625 profile1625_checked selection2_1625_checked
noncomputable def leaf2_1626 : Block :=
  Block.single profile1626 selection2_1626 profile1626_checked selection2_1626_checked
noncomputable def leaf2_1627 : Block :=
  Block.single profile1627 selection2_1627 profile1627_checked selection2_1627_checked
noncomputable def leaf2_1628 : Block :=
  Block.single profile1628 selection2_1628 profile1628_checked selection2_1628_checked
noncomputable def leaf2_1629 : Block :=
  Block.single profile1629 selection2_1629 profile1629_checked selection2_1629_checked
noncomputable def leaf2_1630 : Block :=
  Block.single profile1630 selection2_1630 profile1630_checked selection2_1630_checked
noncomputable def leaf2_1631 : Block :=
  Block.single profile1631 selection2_1631 profile1631_checked selection2_1631_checked
noncomputable def leaf2_1632 : Block :=
  Block.single profile1632 selection2_1632 profile1632_checked selection2_1632_checked
noncomputable def leaf2_1633 : Block :=
  Block.single profile1633 selection2_1633 profile1633_checked selection2_1633_checked
noncomputable def leaf2_1634 : Block :=
  Block.single profile1634 selection2_1634 profile1634_checked selection2_1634_checked
noncomputable def leaf2_1635 : Block :=
  Block.single profile1635 selection2_1635 profile1635_checked selection2_1635_checked
noncomputable def leaf2_1636 : Block :=
  Block.single profile1636 selection2_1636 profile1636_checked selection2_1636_checked
noncomputable def leaf2_1637 : Block :=
  Block.single profile1637 selection2_1637 profile1637_checked selection2_1637_checked
noncomputable def leaf2_1638 : Block :=
  Block.single profile1638 selection2_1638 profile1638_checked selection2_1638_checked
noncomputable def leaf2_1639 : Block :=
  Block.single profile1639 selection2_1639 profile1639_checked selection2_1639_checked
noncomputable def leaf2_1640 : Block :=
  Block.single profile1640 selection2_1640 profile1640_checked selection2_1640_checked
noncomputable def leaf2_1641 : Block :=
  Block.single profile1641 selection2_1641 profile1641_checked selection2_1641_checked
noncomputable def leaf2_1642 : Block :=
  Block.single profile1642 selection2_1642 profile1642_checked selection2_1642_checked
noncomputable def leaf2_1643 : Block :=
  Block.single profile1643 selection2_1643 profile1643_checked selection2_1643_checked
noncomputable def leaf2_1644 : Block :=
  Block.single profile1644 selection2_1644 profile1644_checked selection2_1644_checked
noncomputable def leaf2_1645 : Block :=
  Block.single profile1645 selection2_1645 profile1645_checked selection2_1645_checked
noncomputable def leaf2_1646 : Block :=
  Block.single profile1646 selection2_1646 profile1646_checked selection2_1646_checked
noncomputable def leaf2_1647 : Block :=
  Block.single profile1647 selection2_1647 profile1647_checked selection2_1647_checked
noncomputable def leaf2_1648 : Block :=
  Block.single profile1648 selection2_1648 profile1648_checked selection2_1648_checked
noncomputable def leaf2_1649 : Block :=
  Block.single profile1649 selection2_1649 profile1649_checked selection2_1649_checked
noncomputable def leaf2_1650 : Block :=
  Block.single profile1650 selection2_1650 profile1650_checked selection2_1650_checked
noncomputable def leaf2_1651 : Block :=
  Block.single profile1651 selection2_1651 profile1651_checked selection2_1651_checked
noncomputable def leaf2_1652 : Block :=
  Block.single profile1652 selection2_1652 profile1652_checked selection2_1652_checked
noncomputable def leaf2_1653 : Block :=
  Block.single profile1653 selection2_1653 profile1653_checked selection2_1653_checked
noncomputable def leaf2_1654 : Block :=
  Block.single profile1654 selection2_1654 profile1654_checked selection2_1654_checked
noncomputable def leaf2_1655 : Block :=
  Block.single profile1655 selection2_1655 profile1655_checked selection2_1655_checked
noncomputable def leaf2_1656 : Block :=
  Block.single profile1656 selection2_1656 profile1656_checked selection2_1656_checked
noncomputable def leaf2_1657 : Block :=
  Block.single profile1657 selection2_1657 profile1657_checked selection2_1657_checked
noncomputable def leaf2_1658 : Block :=
  Block.single profile1658 selection2_1658 profile1658_checked selection2_1658_checked
noncomputable def leaf2_1659 : Block :=
  Block.single profile1659 selection2_1659 profile1659_checked selection2_1659_checked
noncomputable def leaf2_1660 : Block :=
  Block.single profile1660 selection2_1660 profile1660_checked selection2_1660_checked
noncomputable def leaf2_1661 : Block :=
  Block.single profile1661 selection2_1661 profile1661_checked selection2_1661_checked
noncomputable def leaf2_1662 : Block :=
  Block.single profile1662 selection2_1662 profile1662_checked selection2_1662_checked
noncomputable def leaf2_1663 : Block :=
  Block.single profile1663 selection2_1663 profile1663_checked selection2_1663_checked
noncomputable def batch025p2_0_0000 : Block :=
  Block.append leaf2_1600 leaf2_1601 (by decide +kernel)
noncomputable def batch025p2_0_0001 : Block :=
  Block.append leaf2_1602 leaf2_1603 (by decide +kernel)
noncomputable def batch025p2_0_0002 : Block :=
  Block.append leaf2_1604 leaf2_1605 (by decide +kernel)
noncomputable def batch025p2_0_0003 : Block :=
  Block.append leaf2_1606 leaf2_1607 (by decide +kernel)
noncomputable def batch025p2_0_0004 : Block :=
  Block.append leaf2_1608 leaf2_1609 (by decide +kernel)
noncomputable def batch025p2_0_0005 : Block :=
  Block.append leaf2_1610 leaf2_1611 (by decide +kernel)
noncomputable def batch025p2_0_0006 : Block :=
  Block.append leaf2_1612 leaf2_1613 (by decide +kernel)
noncomputable def batch025p2_0_0007 : Block :=
  Block.append leaf2_1614 leaf2_1615 (by decide +kernel)
noncomputable def batch025p2_0_0008 : Block :=
  Block.append leaf2_1616 leaf2_1617 (by decide +kernel)
noncomputable def batch025p2_0_0009 : Block :=
  Block.append leaf2_1618 leaf2_1619 (by decide +kernel)
noncomputable def batch025p2_0_0010 : Block :=
  Block.append leaf2_1620 leaf2_1621 (by decide +kernel)
noncomputable def batch025p2_0_0011 : Block :=
  Block.append leaf2_1622 leaf2_1623 (by decide +kernel)
noncomputable def batch025p2_0_0012 : Block :=
  Block.append leaf2_1624 leaf2_1625 (by decide +kernel)
noncomputable def batch025p2_0_0013 : Block :=
  Block.append leaf2_1626 leaf2_1627 (by decide +kernel)
noncomputable def batch025p2_0_0014 : Block :=
  Block.append leaf2_1628 leaf2_1629 (by decide +kernel)
noncomputable def batch025p2_0_0015 : Block :=
  Block.append leaf2_1630 leaf2_1631 (by decide +kernel)
noncomputable def batch025p2_0_0016 : Block :=
  Block.append leaf2_1632 leaf2_1633 (by decide +kernel)
noncomputable def batch025p2_0_0017 : Block :=
  Block.append leaf2_1634 leaf2_1635 (by decide +kernel)
noncomputable def batch025p2_0_0018 : Block :=
  Block.append leaf2_1636 leaf2_1637 (by decide +kernel)
noncomputable def batch025p2_0_0019 : Block :=
  Block.append leaf2_1638 leaf2_1639 (by decide +kernel)
noncomputable def batch025p2_0_0020 : Block :=
  Block.append leaf2_1640 leaf2_1641 (by decide +kernel)
noncomputable def batch025p2_0_0021 : Block :=
  Block.append leaf2_1642 leaf2_1643 (by decide +kernel)
noncomputable def batch025p2_0_0022 : Block :=
  Block.append leaf2_1644 leaf2_1645 (by decide +kernel)
noncomputable def batch025p2_0_0023 : Block :=
  Block.append leaf2_1646 leaf2_1647 (by decide +kernel)
noncomputable def batch025p2_0_0024 : Block :=
  Block.append leaf2_1648 leaf2_1649 (by decide +kernel)
noncomputable def batch025p2_0_0025 : Block :=
  Block.append leaf2_1650 leaf2_1651 (by decide +kernel)
noncomputable def batch025p2_0_0026 : Block :=
  Block.append leaf2_1652 leaf2_1653 (by decide +kernel)
noncomputable def batch025p2_0_0027 : Block :=
  Block.append leaf2_1654 leaf2_1655 (by decide +kernel)
noncomputable def batch025p2_0_0028 : Block :=
  Block.append leaf2_1656 leaf2_1657 (by decide +kernel)
noncomputable def batch025p2_0_0029 : Block :=
  Block.append leaf2_1658 leaf2_1659 (by decide +kernel)
noncomputable def batch025p2_0_0030 : Block :=
  Block.append leaf2_1660 leaf2_1661 (by decide +kernel)
noncomputable def batch025p2_0_0031 : Block :=
  Block.append leaf2_1662 leaf2_1663 (by decide +kernel)
noncomputable def batch025p2_1_0000 : Block :=
  Block.append batch025p2_0_0000 batch025p2_0_0001 (by decide +kernel)
noncomputable def batch025p2_1_0001 : Block :=
  Block.append batch025p2_0_0002 batch025p2_0_0003 (by decide +kernel)
noncomputable def batch025p2_1_0002 : Block :=
  Block.append batch025p2_0_0004 batch025p2_0_0005 (by decide +kernel)
noncomputable def batch025p2_1_0003 : Block :=
  Block.append batch025p2_0_0006 batch025p2_0_0007 (by decide +kernel)
noncomputable def batch025p2_1_0004 : Block :=
  Block.append batch025p2_0_0008 batch025p2_0_0009 (by decide +kernel)
noncomputable def batch025p2_1_0005 : Block :=
  Block.append batch025p2_0_0010 batch025p2_0_0011 (by decide +kernel)
noncomputable def batch025p2_1_0006 : Block :=
  Block.append batch025p2_0_0012 batch025p2_0_0013 (by decide +kernel)
noncomputable def batch025p2_1_0007 : Block :=
  Block.append batch025p2_0_0014 batch025p2_0_0015 (by decide +kernel)
noncomputable def batch025p2_1_0008 : Block :=
  Block.append batch025p2_0_0016 batch025p2_0_0017 (by decide +kernel)
noncomputable def batch025p2_1_0009 : Block :=
  Block.append batch025p2_0_0018 batch025p2_0_0019 (by decide +kernel)
noncomputable def batch025p2_1_0010 : Block :=
  Block.append batch025p2_0_0020 batch025p2_0_0021 (by decide +kernel)
noncomputable def batch025p2_1_0011 : Block :=
  Block.append batch025p2_0_0022 batch025p2_0_0023 (by decide +kernel)
noncomputable def batch025p2_1_0012 : Block :=
  Block.append batch025p2_0_0024 batch025p2_0_0025 (by decide +kernel)
noncomputable def batch025p2_1_0013 : Block :=
  Block.append batch025p2_0_0026 batch025p2_0_0027 (by decide +kernel)
noncomputable def batch025p2_1_0014 : Block :=
  Block.append batch025p2_0_0028 batch025p2_0_0029 (by decide +kernel)
noncomputable def batch025p2_1_0015 : Block :=
  Block.append batch025p2_0_0030 batch025p2_0_0031 (by decide +kernel)
noncomputable def batch025p2_2_0000 : Block :=
  Block.append batch025p2_1_0000 batch025p2_1_0001 (by decide +kernel)
noncomputable def batch025p2_2_0001 : Block :=
  Block.append batch025p2_1_0002 batch025p2_1_0003 (by decide +kernel)
noncomputable def batch025p2_2_0002 : Block :=
  Block.append batch025p2_1_0004 batch025p2_1_0005 (by decide +kernel)
noncomputable def batch025p2_2_0003 : Block :=
  Block.append batch025p2_1_0006 batch025p2_1_0007 (by decide +kernel)
noncomputable def batch025p2_2_0004 : Block :=
  Block.append batch025p2_1_0008 batch025p2_1_0009 (by decide +kernel)
noncomputable def batch025p2_2_0005 : Block :=
  Block.append batch025p2_1_0010 batch025p2_1_0011 (by decide +kernel)
noncomputable def batch025p2_2_0006 : Block :=
  Block.append batch025p2_1_0012 batch025p2_1_0013 (by decide +kernel)
noncomputable def batch025p2_2_0007 : Block :=
  Block.append batch025p2_1_0014 batch025p2_1_0015 (by decide +kernel)
noncomputable def batch025p2_3_0000 : Block :=
  Block.append batch025p2_2_0000 batch025p2_2_0001 (by decide +kernel)
noncomputable def batch025p2_3_0001 : Block :=
  Block.append batch025p2_2_0002 batch025p2_2_0003 (by decide +kernel)
noncomputable def batch025p2_3_0002 : Block :=
  Block.append batch025p2_2_0004 batch025p2_2_0005 (by decide +kernel)
noncomputable def batch025p2_3_0003 : Block :=
  Block.append batch025p2_2_0006 batch025p2_2_0007 (by decide +kernel)
noncomputable def batch025p2_4_0000 : Block :=
  Block.append batch025p2_3_0000 batch025p2_3_0001 (by decide +kernel)
noncomputable def batch025p2_4_0001 : Block :=
  Block.append batch025p2_3_0002 batch025p2_3_0003 (by decide +kernel)
noncomputable def batch025p2_5_0000 : Block :=
  Block.append batch025p2_4_0000 batch025p2_4_0001 (by decide +kernel)
theorem batch025p2_5_0000_left : batch025p2_5_0000.left = (405/158) := by decide +kernel
theorem batch025p2_5_0000_right : batch025p2_5_0000.right = (256/99) := by decide +kernel
theorem batch025p2_5_0000_units : batch025p2_5_0000.units = 5043 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
