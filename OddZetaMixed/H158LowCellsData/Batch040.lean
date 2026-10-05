import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile2560 : ProfileCell :=
  ⟨(89/99), (98/109),
    [46, 44, 43, 41, 39, 37, 35, 34, 32, 30, 28, 26, 25, 23, 21, 19], [43, 44, 44, 45, 46],
    [⟨31, 89⟩, ⟨12, 53⟩, ⟨43, 142⟩, ⟨2, 44⟩, ⟨40, 97⟩, ⟨30, 88⟩, ⟨21, 61⟩, ⟨11, 52⟩, ⟨1, 43⟩, ⟨39, 96⟩, ⟨29, 87⟩, ⟨20, 60⟩, ⟨10, 51⟩, ⟨38, 95⟩, ⟨28, 86⟩, ⟨19, 59⟩, ⟨9, 50⟩, ⟨37, 94⟩, ⟨27, 85⟩, ⟨18, 58⟩, ⟨8, 49⟩, ⟨36, 93⟩, ⟨26, 84⟩, ⟨17, 57⟩, ⟨7, 48⟩, ⟨35, 92⟩, ⟨25, 83⟩, ⟨16, 56⟩, ⟨6, 47⟩, ⟨34, 91⟩, ⟨24, 82⟩, ⟨15, 55⟩, ⟨5, 46⟩, ⟨33, 90⟩, ⟨23, 81⟩, ⟨14, 54⟩, ⟨4, 45⟩, ⟨42, 98⟩, ⟨32, 89⟩, ⟨22, 80⟩, ⟨13, 53⟩, ⟨3, 44⟩, ⟨41, 97⟩]⟩
theorem profile2560_checked : profile2560.check := by decide +kernel

noncomputable def selection0_2560 : Selection :=
  ⟨0, 1, 3, (399/25), 183, -1432, 1610⟩
theorem selection0_2560_checked : selection0_2560.check profile2560 := by decide +kernel

noncomputable def selection1_2560 : Selection :=
  ⟨1, -7, 7, (1569/100), 41, -1716, 1978⟩
theorem selection1_2560_checked : selection1_2560.check profile2560 := by decide +kernel

noncomputable def selection2_2560 : Selection :=
  ⟨2, -15, 11, (78/5), 18, -1968, 2346⟩
theorem selection2_2560_checked : selection2_2560.check profile2560 := by decide +kernel

noncomputable def profile2561 : ProfileCell :=
  ⟨(98/109), (9/10),
    [46, 44, 43, 41, 39, 37, 35, 34, 32, 30, 28, 26, 25, 23, 21, 19], [43, 44, 44, 45, 46],
    [⟨41, 98⟩, ⟨31, 89⟩, ⟨12, 53⟩, ⟨2, 44⟩, ⟨43, 142⟩, ⟨40, 97⟩, ⟨30, 88⟩, ⟨21, 61⟩, ⟨11, 52⟩, ⟨1, 43⟩, ⟨39, 96⟩, ⟨29, 87⟩, ⟨20, 60⟩, ⟨10, 51⟩, ⟨38, 95⟩, ⟨28, 86⟩, ⟨19, 59⟩, ⟨9, 50⟩, ⟨37, 94⟩, ⟨27, 85⟩, ⟨18, 58⟩, ⟨8, 49⟩, ⟨36, 93⟩, ⟨26, 84⟩, ⟨17, 57⟩, ⟨7, 48⟩, ⟨35, 92⟩, ⟨25, 83⟩, ⟨16, 56⟩, ⟨6, 47⟩, ⟨34, 91⟩, ⟨24, 82⟩, ⟨15, 55⟩, ⟨5, 46⟩, ⟨33, 90⟩, ⟨23, 81⟩, ⟨14, 54⟩, ⟨4, 45⟩, ⟨42, 98⟩, ⟨32, 89⟩, ⟨22, 80⟩, ⟨13, 53⟩, ⟨3, 44⟩]⟩
theorem profile2561_checked : profile2561.check := by decide +kernel

noncomputable def selection0_2561 : Selection :=
  ⟨0, 1, 3, (329/20), 1866, -844, 956⟩
theorem selection0_2561_checked : selection0_2561.check profile2561 := by decide +kernel

noncomputable def selection1_2561 : Selection :=
  ⟨1, -7, 7, 16, 407, -1128, 1324⟩
theorem selection1_2561_checked : selection1_2561.check profile2561 := by decide +kernel

noncomputable def selection2_2561 : Selection :=
  ⟨2, -15, 11, (1587/100), 174, -1380, 1692⟩
theorem selection2_2561_checked : selection2_2561.check profile2561 := by decide +kernel

noncomputable def profile2562 : ProfileCell :=
  ⟨(9/10), (91/101),
    [46, 45, 43, 41, 39, 37, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 45, 46],
    [⟨3, 45⟩, ⟨13, 54⟩, ⟨22, 81⟩, ⟨32, 90⟩, ⟨42, 99⟩, ⟨2, 44⟩, ⟨12, 53⟩, ⟨31, 89⟩, ⟨41, 98⟩, ⟨1, 43⟩, ⟨11, 52⟩, ⟨21, 61⟩, ⟨30, 88⟩, ⟨40, 97⟩, ⟨43, 142⟩, ⟨10, 51⟩, ⟨20, 60⟩, ⟨29, 87⟩, ⟨39, 96⟩, ⟨9, 50⟩, ⟨19, 59⟩, ⟨28, 86⟩, ⟨38, 95⟩, ⟨8, 49⟩, ⟨18, 58⟩, ⟨27, 85⟩, ⟨37, 94⟩, ⟨7, 48⟩, ⟨17, 57⟩, ⟨26, 84⟩, ⟨36, 93⟩, ⟨6, 47⟩, ⟨16, 56⟩, ⟨25, 83⟩, ⟨35, 92⟩, ⟨5, 46⟩, ⟨15, 55⟩, ⟨24, 82⟩, ⟨34, 91⟩, ⟨4, 45⟩, ⟨14, 54⟩, ⟨23, 81⟩, ⟨33, 90⟩]⟩
theorem profile2562_checked : profile2562.check := by decide +kernel

noncomputable def selection0_2562 : Selection :=
  ⟨0, 0, 3, (749/50), 1830, -862, 976⟩
theorem selection0_2562_checked : selection0_2562.check profile2562 := by decide +kernel

noncomputable def selection1_2562 : Selection :=
  ⟨1, -8, 7, (287/20), 394, -1146, 1344⟩
theorem selection1_2562_checked : selection1_2562.check profile2562 := by decide +kernel

noncomputable def selection2_2562 : Selection :=
  ⟨2, -16, 11, (354/25), 167, -1398, 1712⟩
theorem selection2_2562_checked : selection2_2562.check profile2562 := by decide +kernel

noncomputable def profile2563 : ProfileCell :=
  ⟨(91/101), (82/91),
    [46, 45, 43, 41, 39, 37, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 45, 46],
    [⟨33, 91⟩, ⟨3, 45⟩, ⟨13, 54⟩, ⟨22, 81⟩, ⟨32, 90⟩, ⟨42, 99⟩, ⟨2, 44⟩, ⟨12, 53⟩, ⟨31, 89⟩, ⟨41, 98⟩, ⟨1, 43⟩, ⟨11, 52⟩, ⟨21, 61⟩, ⟨30, 88⟩, ⟨40, 97⟩, ⟨10, 51⟩, ⟨43, 142⟩, ⟨20, 60⟩, ⟨29, 87⟩, ⟨39, 96⟩, ⟨9, 50⟩, ⟨19, 59⟩, ⟨28, 86⟩, ⟨38, 95⟩, ⟨8, 49⟩, ⟨18, 58⟩, ⟨27, 85⟩, ⟨37, 94⟩, ⟨7, 48⟩, ⟨17, 57⟩, ⟨26, 84⟩, ⟨36, 93⟩, ⟨6, 47⟩, ⟨16, 56⟩, ⟨25, 83⟩, ⟨35, 92⟩, ⟨5, 46⟩, ⟨15, 55⟩, ⟨24, 82⟩, ⟨34, 91⟩, ⟨4, 45⟩, ⟨14, 54⟩, ⟨23, 81⟩]⟩
theorem profile2563_checked : profile2563.check := by decide +kernel

noncomputable def selection0_2563 : Selection :=
  ⟨0, 1, 3, 15, 202, -307, 356⟩
theorem selection0_2563_checked : selection0_2563.check profile2563 := by decide +kernel

noncomputable def selection1_2563 : Selection :=
  ⟨1, -7, 7, (1437/100), 44, -595, 724⟩
theorem selection1_2563_checked : selection1_2563.check profile2563 := by decide +kernel

noncomputable def selection2_2563 : Selection :=
  ⟨2, -15, 11, (709/50), 19, -851, 1092⟩
theorem selection2_2563_checked : selection2_2563.check profile2563 := by decide +kernel

noncomputable def profile2564 : ProfileCell :=
  ⟨(82/91), (55/61),
    [46, 45, 43, 41, 39, 37, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 45, 46],
    [⟨23, 82⟩, ⟨33, 91⟩, ⟨3, 45⟩, ⟨13, 54⟩, ⟨22, 81⟩, ⟨32, 90⟩, ⟨42, 99⟩, ⟨2, 44⟩, ⟨12, 53⟩, ⟨31, 89⟩, ⟨41, 98⟩, ⟨1, 43⟩, ⟨11, 52⟩, ⟨21, 61⟩, ⟨30, 88⟩, ⟨40, 97⟩, ⟨10, 51⟩, ⟨20, 60⟩, ⟨43, 142⟩, ⟨29, 87⟩, ⟨39, 96⟩, ⟨9, 50⟩, ⟨19, 59⟩, ⟨28, 86⟩, ⟨38, 95⟩, ⟨8, 49⟩, ⟨18, 58⟩, ⟨27, 85⟩, ⟨37, 94⟩, ⟨7, 48⟩, ⟨17, 57⟩, ⟨26, 84⟩, ⟨36, 93⟩, ⟨6, 47⟩, ⟨16, 56⟩, ⟨25, 83⟩, ⟨35, 92⟩, ⟨5, 46⟩, ⟨15, 55⟩, ⟨24, 82⟩, ⟨34, 91⟩, ⟨4, 45⟩, ⟨14, 54⟩]⟩
theorem profile2564_checked : profile2564.check := by decide +kernel

noncomputable def selection0_2564 : Selection :=
  ⟨0, 1, 3, 15, 998, 185, -190⟩
theorem selection0_2564_checked : selection0_2564.check profile2564 := by decide +kernel

noncomputable def selection1_2564 : Selection :=
  ⟨1, -7, 7, (72/5), 216, -103, 178⟩
theorem selection1_2564_checked : selection1_2564.check profile2564 := by decide +kernel

noncomputable def selection2_2564 : Selection :=
  ⟨2, -15, 11, (1423/100), 92, -359, 546⟩
theorem selection2_2564_checked : selection2_2564.check profile2564 := by decide +kernel

noncomputable def profile2565 : ProfileCell :=
  ⟨(55/61), (46/51),
    [46, 45, 43, 41, 39, 37, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 45, 46],
    [⟨14, 55⟩, ⟨23, 82⟩, ⟨33, 91⟩, ⟨3, 45⟩, ⟨13, 54⟩, ⟨22, 81⟩, ⟨32, 90⟩, ⟨2, 44⟩, ⟨42, 99⟩, ⟨12, 53⟩, ⟨31, 89⟩, ⟨1, 43⟩, ⟨41, 98⟩, ⟨11, 52⟩, ⟨21, 61⟩, ⟨30, 88⟩, ⟨40, 97⟩, ⟨10, 51⟩, ⟨20, 60⟩, ⟨29, 87⟩, ⟨43, 142⟩, ⟨39, 96⟩, ⟨9, 50⟩, ⟨19, 59⟩, ⟨28, 86⟩, ⟨38, 95⟩, ⟨8, 49⟩, ⟨18, 58⟩, ⟨27, 85⟩, ⟨37, 94⟩, ⟨7, 48⟩, ⟨17, 57⟩, ⟨26, 84⟩, ⟨36, 93⟩, ⟨6, 47⟩, ⟨16, 56⟩, ⟨25, 83⟩, ⟨35, 92⟩, ⟨5, 46⟩, ⟨15, 55⟩, ⟨24, 82⟩, ⟨34, 91⟩, ⟨4, 45⟩]⟩
theorem profile2565_checked : profile2565.check := by decide +kernel

noncomputable def selection0_2565 : Selection :=
  ⟨0, 1, 3, (1499/100), 593, -255, 298⟩
theorem selection0_2565_checked : selection0_2565.check profile2565 := by decide +kernel

noncomputable def selection1_2565 : Selection :=
  ⟨1, -7, 7, (289/20), 129, -543, 666⟩
theorem selection1_2565_checked : selection1_2565.check profile2565 := by decide +kernel

noncomputable def selection2_2565 : Selection :=
  ⟨2, -15, 11, (1429/100), 55, -799, 1034⟩
theorem selection2_2565_checked : selection2_2565.check profile2565 := by decide +kernel

noncomputable def profile2566 : ProfileCell :=
  ⟨(46/51), (83/92),
    [46, 45, 43, 41, 39, 37, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 46, 46],
    [⟨4, 46⟩, ⟨34, 92⟩, ⟨14, 55⟩, ⟨23, 82⟩, ⟨3, 45⟩, ⟨33, 91⟩, ⟨13, 54⟩, ⟨22, 81⟩, ⟨2, 44⟩, ⟨32, 90⟩, ⟨12, 53⟩, ⟨42, 99⟩, ⟨1, 43⟩, ⟨31, 89⟩, ⟨11, 52⟩, ⟨41, 98⟩, ⟨21, 61⟩, ⟨30, 88⟩, ⟨10, 51⟩, ⟨40, 97⟩, ⟨20, 60⟩, ⟨29, 87⟩, ⟨9, 50⟩, ⟨39, 96⟩, ⟨43, 142⟩, ⟨19, 59⟩, ⟨28, 86⟩, ⟨8, 49⟩, ⟨38, 95⟩, ⟨18, 58⟩, ⟨27, 85⟩, ⟨7, 48⟩, ⟨37, 94⟩, ⟨17, 57⟩, ⟨26, 84⟩, ⟨6, 47⟩, ⟨36, 93⟩, ⟨16, 56⟩, ⟨25, 83⟩, ⟨5, 46⟩, ⟨35, 92⟩, ⟨15, 55⟩, ⟨24, 82⟩]⟩
theorem profile2566_checked : profile2566.check := by decide +kernel

noncomputable def selection0_2566 : Selection :=
  ⟨0, 3, 3, (1903/100), 499, -255, 298⟩
theorem selection0_2566_checked : selection0_2566.check profile2566 := by decide +kernel

noncomputable def selection1_2566 : Selection :=
  ⟨1, -5, 7, (1849/100), 109, -543, 666⟩
theorem selection1_2566_checked : selection1_2566.check profile2566 := by decide +kernel

noncomputable def selection2_2566 : Selection :=
  ⟨2, -13, 11, (458/25), 47, -799, 1034⟩
theorem selection2_2566_checked : selection2_2566.check profile2566 := by decide +kernel

noncomputable def profile2567 : ProfileCell :=
  ⟨(83/92), (37/41),
    [46, 45, 43, 41, 39, 37, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 46, 46],
    [⟨24, 83⟩, ⟨4, 46⟩, ⟨34, 92⟩, ⟨14, 55⟩, ⟨23, 82⟩, ⟨3, 45⟩, ⟨33, 91⟩, ⟨13, 54⟩, ⟨22, 81⟩, ⟨2, 44⟩, ⟨32, 90⟩, ⟨12, 53⟩, ⟨42, 99⟩, ⟨1, 43⟩, ⟨31, 89⟩, ⟨11, 52⟩, ⟨41, 98⟩, ⟨21, 61⟩, ⟨30, 88⟩, ⟨10, 51⟩, ⟨40, 97⟩, ⟨20, 60⟩, ⟨29, 87⟩, ⟨9, 50⟩, ⟨39, 96⟩, ⟨19, 59⟩, ⟨43, 142⟩, ⟨28, 86⟩, ⟨8, 49⟩, ⟨38, 95⟩, ⟨18, 58⟩, ⟨27, 85⟩, ⟨7, 48⟩, ⟨37, 94⟩, ⟨17, 57⟩, ⟨26, 84⟩, ⟨6, 47⟩, ⟨36, 93⟩, ⟨16, 56⟩, ⟨25, 83⟩, ⟨5, 46⟩, ⟨35, 92⟩, ⟨15, 55⟩]⟩
theorem profile2567_checked : profile2567.check := by decide +kernel

noncomputable def selection0_2567 : Selection :=
  ⟨0, 3, 3, (1903/100), 620, 243, -254⟩
theorem selection0_2567_checked : selection0_2567.check profile2567 := by decide +kernel

noncomputable def selection1_2567 : Selection :=
  ⟨1, -5, 7, (37/2), 136, -45, 114⟩
theorem selection1_2567_checked : selection1_2567.check profile2567 := by decide +kernel

noncomputable def selection2_2567 : Selection :=
  ⟨2, -13, 11, (367/20), 58, -301, 482⟩
theorem selection2_2567_checked : selection2_2567.check profile2567 := by decide +kernel

noncomputable def profile2568 : ProfileCell :=
  ⟨(37/41), (93/103),
    [46, 45, 43, 41, 39, 37, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 46, 46],
    [⟨4, 46⟩, ⟨24, 83⟩, ⟨14, 55⟩, ⟨34, 92⟩, ⟨3, 45⟩, ⟨23, 82⟩, ⟨13, 54⟩, ⟨33, 91⟩, ⟨2, 44⟩, ⟨22, 81⟩, ⟨12, 53⟩, ⟨32, 90⟩, ⟨42, 99⟩, ⟨1, 43⟩, ⟨11, 52⟩, ⟨31, 89⟩, ⟨21, 61⟩, ⟨41, 98⟩, ⟨10, 51⟩, ⟨30, 88⟩, ⟨20, 60⟩, ⟨40, 97⟩, ⟨9, 50⟩, ⟨29, 87⟩, ⟨19, 59⟩, ⟨39, 96⟩, ⟨43, 142⟩, ⟨8, 49⟩, ⟨28, 86⟩, ⟨18, 58⟩, ⟨38, 95⟩, ⟨7, 48⟩, ⟨27, 85⟩, ⟨17, 57⟩, ⟨37, 94⟩, ⟨6, 47⟩, ⟨26, 84⟩, ⟨16, 56⟩, ⟨36, 93⟩, ⟨5, 46⟩, ⟨25, 83⟩, ⟨15, 55⟩, ⟨35, 92⟩]⟩
theorem profile2568_checked : profile2568.check := by decide +kernel

noncomputable def selection0_2568 : Selection :=
  ⟨0, 3, 3, (381/20), 1108, -201, 238⟩
theorem selection0_2568_checked : selection0_2568.check profile2568 := by decide +kernel

noncomputable def selection1_2568 : Selection :=
  ⟨1, -5, 7, (1857/100), 243, -489, 606⟩
theorem selection1_2568_checked : selection1_2568.check profile2568 := by decide +kernel

noncomputable def selection2_2568 : Selection :=
  ⟨2, -13, 11, (921/50), 104, -745, 974⟩
theorem selection2_2568_checked : selection2_2568.check profile2568 := by decide +kernel

noncomputable def profile2569 : ProfileCell :=
  ⟨(93/103), (28/31),
    [46, 45, 43, 41, 39, 37, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 46, 46],
    [⟨35, 93⟩, ⟨4, 46⟩, ⟨24, 83⟩, ⟨14, 55⟩, ⟨34, 92⟩, ⟨3, 45⟩, ⟨23, 82⟩, ⟨13, 54⟩, ⟨33, 91⟩, ⟨2, 44⟩, ⟨22, 81⟩, ⟨12, 53⟩, ⟨32, 90⟩, ⟨42, 99⟩, ⟨1, 43⟩, ⟨11, 52⟩, ⟨31, 89⟩, ⟨21, 61⟩, ⟨41, 98⟩, ⟨10, 51⟩, ⟨30, 88⟩, ⟨20, 60⟩, ⟨40, 97⟩, ⟨9, 50⟩, ⟨29, 87⟩, ⟨19, 59⟩, ⟨39, 96⟩, ⟨8, 49⟩, ⟨43, 142⟩, ⟨28, 86⟩, ⟨18, 58⟩, ⟨38, 95⟩, ⟨7, 48⟩, ⟨27, 85⟩, ⟨17, 57⟩, ⟨37, 94⟩, ⟨6, 47⟩, ⟨26, 84⟩, ⟨16, 56⟩, ⟨36, 93⟩, ⟨5, 46⟩, ⟨25, 83⟩, ⟨15, 55⟩]⟩
theorem profile2569_checked : profile2569.check := by decide +kernel

noncomputable def selection0_2569 : Selection :=
  ⟨0, 3, 3, (381/20), 732, 171, -174⟩
theorem selection0_2569_checked : selection0_2569.check profile2569 := by decide +kernel

noncomputable def selection1_2569 : Selection :=
  ⟨1, -5, 7, (1859/100), 161, -117, 194⟩
theorem selection1_2569_checked : selection1_2569.check profile2569 := by decide +kernel

noncomputable def selection2_2569 : Selection :=
  ⟨2, -13, 11, (369/20), 69, -373, 562⟩
theorem selection2_2569_checked : selection2_2569.check profile2569 := by decide +kernel

noncomputable def profile2570 : ProfileCell :=
  ⟨(28/31), (47/52),
    [46, 45, 43, 41, 39, 37, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 46, 46],
    [⟨15, 56⟩, ⟨25, 84⟩, ⟨35, 93⟩, ⟨4, 46⟩, ⟨14, 55⟩, ⟨24, 83⟩, ⟨34, 92⟩, ⟨3, 45⟩, ⟨13, 54⟩, ⟨23, 82⟩, ⟨33, 91⟩, ⟨2, 44⟩, ⟨12, 53⟩, ⟨22, 81⟩, ⟨32, 90⟩, ⟨1, 43⟩, ⟨42, 99⟩, ⟨11, 52⟩, ⟨21, 61⟩, ⟨31, 89⟩, ⟨41, 98⟩, ⟨10, 51⟩, ⟨20, 60⟩, ⟨30, 88⟩, ⟨40, 97⟩, ⟨9, 50⟩, ⟨19, 59⟩, ⟨29, 87⟩, ⟨39, 96⟩, ⟨8, 49⟩, ⟨18, 58⟩, ⟨28, 86⟩, ⟨43, 142⟩, ⟨38, 95⟩, ⟨7, 48⟩, ⟨17, 57⟩, ⟨27, 85⟩, ⟨37, 94⟩, ⟨6, 47⟩, ⟨16, 56⟩, ⟨26, 84⟩, ⟨36, 93⟩, ⟨5, 46⟩]⟩
theorem profile2570_checked : profile2570.check := by decide +kernel

noncomputable def selection0_2570 : Selection :=
  ⟨0, 3, 3, (951/50), 1446, 171, -174⟩
theorem selection0_2570_checked : selection0_2570.check profile2570 := by decide +kernel

noncomputable def selection1_2570 : Selection :=
  ⟨1, -5, 7, (931/50), 319, -117, 194⟩
theorem selection1_2570_checked : selection1_2570.check profile2570 := by decide +kernel

noncomputable def selection2_2570 : Selection :=
  ⟨2, -13, 11, (1851/100), 137, -373, 562⟩
theorem selection2_2570_checked : selection2_2570.check profile2570 := by decide +kernel

noncomputable def profile2571 : ProfileCell :=
  ⟨(47/52), (85/94),
    [47, 45, 43, 41, 39, 37, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨5, 47⟩, ⟨36, 94⟩, ⟨15, 56⟩, ⟨25, 84⟩, ⟨4, 46⟩, ⟨35, 93⟩, ⟨14, 55⟩, ⟨24, 83⟩, ⟨3, 45⟩, ⟨34, 92⟩, ⟨13, 54⟩, ⟨23, 82⟩, ⟨2, 44⟩, ⟨33, 91⟩, ⟨12, 53⟩, ⟨22, 81⟩, ⟨1, 43⟩, ⟨32, 90⟩, ⟨11, 52⟩, ⟨42, 99⟩, ⟨21, 61⟩, ⟨31, 89⟩, ⟨10, 51⟩, ⟨41, 98⟩, ⟨20, 60⟩, ⟨30, 88⟩, ⟨9, 50⟩, ⟨40, 97⟩, ⟨19, 59⟩, ⟨29, 87⟩, ⟨8, 49⟩, ⟨39, 96⟩, ⟨18, 58⟩, ⟨28, 86⟩, ⟨7, 48⟩, ⟨38, 95⟩, ⟨43, 142⟩, ⟨17, 57⟩, ⟨27, 85⟩, ⟨6, 47⟩, ⟨37, 94⟩, ⟨16, 56⟩, ⟨26, 84⟩]⟩
theorem profile2571_checked : profile2571.check := by decide +kernel

noncomputable def selection0_2571 : Selection :=
  ⟨0, 4, 3, (524/25), 1050, 312, -330⟩
theorem selection0_2571_checked : selection0_2571.check profile2571 := by decide +kernel

noncomputable def selection1_2571 : Selection :=
  ⟨1, -4, 7, (2063/100), 233, 24, 38⟩
theorem selection1_2571_checked : selection1_2571.check profile2571 := by decide +kernel

noncomputable def selection2_2571 : Selection :=
  ⟨2, -12, 11, (1027/50), 100, -232, 406⟩
theorem selection2_2571_checked : selection2_2571.check profile2571 := by decide +kernel

noncomputable def profile2572 : ProfileCell :=
  ⟨(85/94), (19/21),
    [47, 45, 43, 41, 39, 37, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨26, 85⟩, ⟨5, 47⟩, ⟨36, 94⟩, ⟨15, 56⟩, ⟨25, 84⟩, ⟨4, 46⟩, ⟨35, 93⟩, ⟨14, 55⟩, ⟨24, 83⟩, ⟨3, 45⟩, ⟨34, 92⟩, ⟨13, 54⟩, ⟨23, 82⟩, ⟨2, 44⟩, ⟨33, 91⟩, ⟨12, 53⟩, ⟨22, 81⟩, ⟨1, 43⟩, ⟨32, 90⟩, ⟨11, 52⟩, ⟨42, 99⟩, ⟨21, 61⟩, ⟨31, 89⟩, ⟨10, 51⟩, ⟨41, 98⟩, ⟨20, 60⟩, ⟨30, 88⟩, ⟨9, 50⟩, ⟨40, 97⟩, ⟨19, 59⟩, ⟨29, 87⟩, ⟨8, 49⟩, ⟨39, 96⟩, ⟨18, 58⟩, ⟨28, 86⟩, ⟨7, 48⟩, ⟨38, 95⟩, ⟨17, 57⟩, ⟨43, 142⟩, ⟨27, 85⟩, ⟨6, 47⟩, ⟨37, 94⟩, ⟨16, 56⟩]⟩
theorem profile2572_checked : profile2572.check := by decide +kernel

noncomputable def selection0_2572 : Selection :=
  ⟨0, 4, 3, (2089/100), 1294, 822, -894⟩
theorem selection0_2572_checked : selection0_2572.check profile2572 := by decide +kernel

noncomputable def selection1_2572 : Selection :=
  ⟨1, -4, 7, (2063/100), 289, 534, -526⟩
theorem selection1_2572_checked : selection1_2572.check profile2572 := by decide +kernel

noncomputable def selection2_2572 : Selection :=
  ⟨2, -12, 11, (1027/50), 124, 278, -158⟩
theorem selection2_2572_checked : selection2_2572.check profile2572 := by decide +kernel

noncomputable def profile2573 : ProfileCell :=
  ⟨(19/21), (143/158),
    [47, 45, 43, 41, 39, 38, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨16, 57⟩, ⟨37, 95⟩, ⟨5, 47⟩, ⟨26, 85⟩, ⟨15, 56⟩, ⟨36, 94⟩, ⟨4, 46⟩, ⟨25, 84⟩, ⟨14, 55⟩, ⟨35, 93⟩, ⟨3, 45⟩, ⟨24, 83⟩, ⟨13, 54⟩, ⟨34, 92⟩, ⟨2, 44⟩, ⟨23, 82⟩, ⟨12, 53⟩, ⟨33, 91⟩, ⟨1, 43⟩, ⟨22, 81⟩, ⟨11, 52⟩, ⟨32, 90⟩, ⟨21, 61⟩, ⟨42, 99⟩, ⟨10, 51⟩, ⟨31, 89⟩, ⟨20, 60⟩, ⟨41, 98⟩, ⟨9, 50⟩, ⟨30, 88⟩, ⟨19, 59⟩, ⟨40, 97⟩, ⟨8, 49⟩, ⟨29, 87⟩, ⟨18, 58⟩, ⟨39, 96⟩, ⟨7, 48⟩, ⟨28, 86⟩, ⟨17, 57⟩, ⟨38, 95⟩, ⟨6, 47⟩, ⟨27, 85⟩, ⟨43, 142⟩]⟩
theorem profile2573_checked : profile2573.check := by decide +kernel

noncomputable def selection0_2573 : Selection :=
  ⟨0, 3, 3, (466/25), 687, 252, -264⟩
theorem selection0_2573_checked : selection0_2573.check profile2573 := by decide +kernel

noncomputable def selection1_2573 : Selection :=
  ⟨1, -5, 7, (464/25), 155, -36, 104⟩
theorem selection1_2573_checked : selection1_2573.check profile2573 := by decide +kernel

noncomputable def selection2_2573 : Selection :=
  ⟨2, -13, 11, (371/20), 67, -292, 472⟩
theorem selection2_2573_checked : selection2_2573.check profile2573 := by decide +kernel

noncomputable def profile2574 : ProfileCell :=
  ⟨(143/158), (86/95),
    [47, 45, 43, 41, 39, 38, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨43, 143⟩, ⟨16, 57⟩, ⟨37, 95⟩, ⟨5, 47⟩, ⟨26, 85⟩, ⟨15, 56⟩, ⟨36, 94⟩, ⟨4, 46⟩, ⟨25, 84⟩, ⟨14, 55⟩, ⟨35, 93⟩, ⟨3, 45⟩, ⟨24, 83⟩, ⟨13, 54⟩, ⟨34, 92⟩, ⟨2, 44⟩, ⟨23, 82⟩, ⟨12, 53⟩, ⟨33, 91⟩, ⟨1, 43⟩, ⟨22, 81⟩, ⟨11, 52⟩, ⟨32, 90⟩, ⟨21, 61⟩, ⟨42, 99⟩, ⟨10, 51⟩, ⟨31, 89⟩, ⟨20, 60⟩, ⟨41, 98⟩, ⟨9, 50⟩, ⟨30, 88⟩, ⟨19, 59⟩, ⟨40, 97⟩, ⟨8, 49⟩, ⟨29, 87⟩, ⟨18, 58⟩, ⟨39, 96⟩, ⟨7, 48⟩, ⟨28, 86⟩, ⟨17, 57⟩, ⟨38, 95⟩, ⟨6, 47⟩, ⟨27, 85⟩]⟩
theorem profile2574_checked : profile2574.check := by decide +kernel

noncomputable def selection0_2574 : Selection :=
  ⟨0, 3, 3, (1879/100), 459, -1607, 1790⟩
theorem selection0_2574_checked : selection0_2574.check profile2574 := by decide +kernel

noncomputable def selection1_2574 : Selection :=
  ⟨1, -5, 7, (467/25), 103, -1895, 2158⟩
theorem selection1_2574_checked : selection1_2574.check profile2574 := by decide +kernel

noncomputable def selection2_2574 : Selection :=
  ⟨2, -13, 11, (466/25), 45, -2151, 2526⟩
theorem selection2_2574_checked : selection2_2574.check profile2574 := by decide +kernel

noncomputable def profile2575 : ProfileCell :=
  ⟨(86/95), (48/53),
    [47, 45, 43, 41, 39, 38, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨27, 86⟩, ⟨16, 57⟩, ⟨43, 143⟩, ⟨37, 95⟩, ⟨5, 47⟩, ⟨26, 85⟩, ⟨15, 56⟩, ⟨36, 94⟩, ⟨4, 46⟩, ⟨25, 84⟩, ⟨14, 55⟩, ⟨35, 93⟩, ⟨3, 45⟩, ⟨24, 83⟩, ⟨13, 54⟩, ⟨34, 92⟩, ⟨2, 44⟩, ⟨23, 82⟩, ⟨12, 53⟩, ⟨33, 91⟩, ⟨1, 43⟩, ⟨22, 81⟩, ⟨11, 52⟩, ⟨32, 90⟩, ⟨21, 61⟩, ⟨42, 99⟩, ⟨10, 51⟩, ⟨31, 89⟩, ⟨20, 60⟩, ⟨41, 98⟩, ⟨9, 50⟩, ⟨30, 88⟩, ⟨19, 59⟩, ⟨40, 97⟩, ⟨8, 49⟩, ⟨29, 87⟩, ⟨18, 58⟩, ⟨39, 96⟩, ⟨7, 48⟩, ⟨28, 86⟩, ⟨17, 57⟩, ⟨38, 95⟩, ⟨6, 47⟩]⟩
theorem profile2575_checked : profile2575.check := by decide +kernel

noncomputable def selection0_2575 : Selection :=
  ⟨0, 3, 3, (953/50), 924, -1091, 1220⟩
theorem selection0_2575_checked : selection0_2575.check profile2575 := by decide +kernel

noncomputable def selection1_2575 : Selection :=
  ⟨1, -5, 7, (471/25), 207, -1379, 1588⟩
theorem selection1_2575_checked : selection1_2575.check profile2575 := by decide +kernel

noncomputable def selection2_2575 : Selection :=
  ⟨2, -13, 11, (1877/100), 89, -1635, 1956⟩
theorem selection2_2575_checked : selection2_2575.check profile2575 := by decide +kernel

noncomputable def profile2576 : ProfileCell :=
  ⟨(48/53), (29/32),
    [47, 45, 43, 41, 39, 38, 36, 34, 32, 30, 28, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨6, 48⟩, ⟨38, 96⟩, ⟨27, 86⟩, ⟨16, 57⟩, ⟨5, 47⟩, ⟨37, 95⟩, ⟨43, 143⟩, ⟨26, 85⟩, ⟨15, 56⟩, ⟨4, 46⟩, ⟨36, 94⟩, ⟨25, 84⟩, ⟨14, 55⟩, ⟨3, 45⟩, ⟨35, 93⟩, ⟨24, 83⟩, ⟨13, 54⟩, ⟨2, 44⟩, ⟨34, 92⟩, ⟨23, 82⟩, ⟨12, 53⟩, ⟨1, 43⟩, ⟨33, 91⟩, ⟨22, 81⟩, ⟨11, 52⟩, ⟨32, 90⟩, ⟨21, 61⟩, ⟨10, 51⟩, ⟨42, 99⟩, ⟨31, 89⟩, ⟨20, 60⟩, ⟨9, 50⟩, ⟨41, 98⟩, ⟨30, 88⟩, ⟨19, 59⟩, ⟨8, 49⟩, ⟨40, 97⟩, ⟨29, 87⟩, ⟨18, 58⟩, ⟨7, 48⟩, ⟨39, 96⟩, ⟨28, 86⟩, ⟨17, 57⟩]⟩
theorem profile2576_checked : profile2576.check := by decide +kernel

noncomputable def selection0_2576 : Selection :=
  ⟨0, 3, 3, (969/50), 1393, -899, 1008⟩
theorem selection0_2576_checked : selection0_2576.check profile2576 := by decide +kernel

noncomputable def selection1_2576 : Selection :=
  ⟨1, -5, 7, (381/20), 310, -1187, 1376⟩
theorem selection1_2576_checked : selection1_2576.check profile2576 := by decide +kernel

noncomputable def selection2_2576 : Selection :=
  ⟨2, -13, 11, (379/20), 133, -1443, 1744⟩
theorem selection2_2576_checked : selection2_2576.check profile2576 := by decide +kernel

noncomputable def profile2577 : ProfileCell :=
  ⟨(29/32), (97/107),
    [47, 45, 43, 41, 39, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨17, 58⟩, ⟨28, 87⟩, ⟨6, 48⟩, ⟨38, 96⟩, ⟨16, 57⟩, ⟨27, 86⟩, ⟨5, 47⟩, ⟨37, 95⟩, ⟨15, 56⟩, ⟨26, 85⟩, ⟨43, 143⟩, ⟨4, 46⟩, ⟨36, 94⟩, ⟨14, 55⟩, ⟨25, 84⟩, ⟨3, 45⟩, ⟨35, 93⟩, ⟨13, 54⟩, ⟨24, 83⟩, ⟨2, 44⟩, ⟨34, 92⟩, ⟨12, 53⟩, ⟨23, 82⟩, ⟨1, 43⟩, ⟨33, 91⟩, ⟨11, 52⟩, ⟨22, 81⟩, ⟨21, 61⟩, ⟨32, 90⟩, ⟨10, 51⟩, ⟨42, 99⟩, ⟨20, 60⟩, ⟨31, 89⟩, ⟨9, 50⟩, ⟨41, 98⟩, ⟨19, 59⟩, ⟨30, 88⟩, ⟨8, 49⟩, ⟨40, 97⟩, ⟨18, 58⟩, ⟨29, 87⟩, ⟨7, 48⟩, ⟨39, 96⟩]⟩
theorem profile2577_checked : profile2577.check := by decide +kernel

noncomputable def selection0_2577 : Selection :=
  ⟨0, 2, 3, (1753/100), 624, -812, 912⟩
theorem selection0_2577_checked : selection0_2577.check profile2577 := by decide +kernel

noncomputable def selection1_2577 : Selection :=
  ⟨1, -6, 7, (343/20), 138, -1100, 1280⟩
theorem selection1_2577_checked : selection1_2577.check profile2577 := by decide +kernel

noncomputable def selection2_2577 : Selection :=
  ⟨2, -14, 11, (1703/100), 59, -1356, 1648⟩
theorem selection2_2577_checked : selection2_2577.check profile2577 := by decide +kernel

noncomputable def profile2578 : ProfileCell :=
  ⟨(97/107), (39/43),
    [47, 45, 43, 41, 39, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨39, 97⟩, ⟨17, 58⟩, ⟨28, 87⟩, ⟨6, 48⟩, ⟨38, 96⟩, ⟨16, 57⟩, ⟨27, 86⟩, ⟨5, 47⟩, ⟨37, 95⟩, ⟨15, 56⟩, ⟨26, 85⟩, ⟨4, 46⟩, ⟨43, 143⟩, ⟨36, 94⟩, ⟨14, 55⟩, ⟨25, 84⟩, ⟨3, 45⟩, ⟨35, 93⟩, ⟨13, 54⟩, ⟨24, 83⟩, ⟨2, 44⟩, ⟨34, 92⟩, ⟨12, 53⟩, ⟨23, 82⟩, ⟨1, 43⟩, ⟨33, 91⟩, ⟨11, 52⟩, ⟨22, 81⟩, ⟨21, 61⟩, ⟨32, 90⟩, ⟨10, 51⟩, ⟨42, 99⟩, ⟨20, 60⟩, ⟨31, 89⟩, ⟨9, 50⟩, ⟨41, 98⟩, ⟨19, 59⟩, ⟨30, 88⟩, ⟨8, 49⟩, ⟨40, 97⟩, ⟨18, 58⟩, ⟨29, 87⟩, ⟨7, 48⟩]⟩
theorem profile2578_checked : profile2578.check := by decide +kernel

noncomputable def selection0_2578 : Selection :=
  ⟨0, 2, 3, (353/20), 934, -424, 484⟩
theorem selection0_2578_checked : selection0_2578.check profile2578 := by decide +kernel

noncomputable def selection1_2578 : Selection :=
  ⟨1, -6, 7, (69/4), 207, -712, 852⟩
theorem selection1_2578_checked : selection1_2578.check profile2578 := by decide +kernel

noncomputable def selection2_2578 : Selection :=
  ⟨2, -14, 11, (428/25), 89, -968, 1220⟩
theorem selection2_2578_checked : selection2_2578.check profile2578 := by decide +kernel

noncomputable def profile2579 : ProfileCell :=
  ⟨(39/43), (88/97),
    [47, 45, 43, 41, 39, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨17, 58⟩, ⟨39, 97⟩, ⟨6, 48⟩, ⟨28, 87⟩, ⟨16, 57⟩, ⟨38, 96⟩, ⟨5, 47⟩, ⟨27, 86⟩, ⟨15, 56⟩, ⟨37, 95⟩, ⟨4, 46⟩, ⟨26, 85⟩, ⟨43, 143⟩, ⟨14, 55⟩, ⟨36, 94⟩, ⟨3, 45⟩, ⟨25, 84⟩, ⟨13, 54⟩, ⟨35, 93⟩, ⟨2, 44⟩, ⟨24, 83⟩, ⟨12, 53⟩, ⟨34, 92⟩, ⟨1, 43⟩, ⟨23, 82⟩, ⟨11, 52⟩, ⟨33, 91⟩, ⟨22, 81⟩, ⟨21, 61⟩, ⟨10, 51⟩, ⟨32, 90⟩, ⟨20, 60⟩, ⟨42, 99⟩, ⟨9, 50⟩, ⟨31, 89⟩, ⟨19, 59⟩, ⟨41, 98⟩, ⟨8, 49⟩, ⟨30, 88⟩, ⟨18, 58⟩, ⟨40, 97⟩, ⟨7, 48⟩, ⟨29, 87⟩]⟩
theorem profile2579_checked : profile2579.check := by decide +kernel

noncomputable def selection0_2579 : Selection :=
  ⟨0, 2, 3, (1779/100), 519, -970, 1086⟩
theorem selection0_2579_checked : selection0_2579.check profile2579 := by decide +kernel

noncomputable def selection1_2579 : Selection :=
  ⟨1, -6, 7, (867/50), 115, -1258, 1454⟩
theorem selection1_2579_checked : selection1_2579.check profile2579 := by decide +kernel

noncomputable def selection2_2579 : Selection :=
  ⟨2, -14, 11, (86/5), 49, -1514, 1822⟩
theorem selection2_2579_checked : selection2_2579.check profile2579 := by decide +kernel

noncomputable def profile2580 : ProfileCell :=
  ⟨(88/97), (49/54),
    [47, 45, 43, 41, 39, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨29, 88⟩, ⟨17, 58⟩, ⟨39, 97⟩, ⟨6, 48⟩, ⟨28, 87⟩, ⟨16, 57⟩, ⟨38, 96⟩, ⟨5, 47⟩, ⟨27, 86⟩, ⟨15, 56⟩, ⟨37, 95⟩, ⟨4, 46⟩, ⟨26, 85⟩, ⟨14, 55⟩, ⟨43, 143⟩, ⟨36, 94⟩, ⟨3, 45⟩, ⟨25, 84⟩, ⟨13, 54⟩, ⟨35, 93⟩, ⟨2, 44⟩, ⟨24, 83⟩, ⟨12, 53⟩, ⟨34, 92⟩, ⟨1, 43⟩, ⟨23, 82⟩, ⟨11, 52⟩, ⟨33, 91⟩, ⟨22, 81⟩, ⟨21, 61⟩, ⟨10, 51⟩, ⟨32, 90⟩, ⟨20, 60⟩, ⟨42, 99⟩, ⟨9, 50⟩, ⟨31, 89⟩, ⟨19, 59⟩, ⟨41, 98⟩, ⟨8, 49⟩, ⟨30, 88⟩, ⟨18, 58⟩, ⟨40, 97⟩, ⟨7, 48⟩]⟩
theorem profile2580_checked : profile2580.check := by decide +kernel

noncomputable def selection0_2580 : Selection :=
  ⟨0, 2, 3, (446/25), 414, -442, 504⟩
theorem selection0_2580_checked : selection0_2580.check profile2580 := by decide +kernel

noncomputable def selection1_2580 : Selection :=
  ⟨1, -6, 7, (869/50), 92, -730, 872⟩
theorem selection1_2580_checked : selection1_2580.check profile2580 := by decide +kernel

noncomputable def selection2_2580 : Selection :=
  ⟨2, -14, 11, (431/25), 39, -986, 1240⟩
theorem selection2_2580_checked : selection2_2580.check profile2580 := by decide +kernel

noncomputable def profile2581 : ProfileCell :=
  ⟨(49/54), (59/65),
    [47, 45, 43, 41, 39, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨7, 49⟩, ⟨40, 98⟩, ⟨29, 88⟩, ⟨17, 58⟩, ⟨6, 48⟩, ⟨39, 97⟩, ⟨28, 87⟩, ⟨16, 57⟩, ⟨5, 47⟩, ⟨38, 96⟩, ⟨27, 86⟩, ⟨15, 56⟩, ⟨4, 46⟩, ⟨37, 95⟩, ⟨26, 85⟩, ⟨14, 55⟩, ⟨3, 45⟩, ⟨36, 94⟩, ⟨43, 143⟩, ⟨25, 84⟩, ⟨13, 54⟩, ⟨2, 44⟩, ⟨35, 93⟩, ⟨24, 83⟩, ⟨12, 53⟩, ⟨1, 43⟩, ⟨34, 92⟩, ⟨23, 82⟩, ⟨11, 52⟩, ⟨33, 91⟩, ⟨22, 81⟩, ⟨21, 61⟩, ⟨10, 51⟩, ⟨32, 90⟩, ⟨20, 60⟩, ⟨9, 50⟩, ⟨42, 99⟩, ⟨31, 89⟩, ⟨19, 59⟩, ⟨8, 49⟩, ⟨41, 98⟩, ⟨30, 88⟩, ⟨18, 58⟩]⟩
theorem profile2581_checked : profile2581.check := by decide +kernel

noncomputable def selection0_2581 : Selection :=
  ⟨0, 2, 3, (1791/100), 620, -393, 450⟩
theorem selection0_2581_checked : selection0_2581.check profile2581 := by decide +kernel

noncomputable def selection1_2581 : Selection :=
  ⟨1, -6, 7, (436/25), 137, -681, 818⟩
theorem selection1_2581_checked : selection1_2581.check profile2581 := by decide +kernel

noncomputable def selection2_2581 : Selection :=
  ⟨2, -14, 11, (173/10), 59, -937, 1186⟩
theorem selection2_2581_checked : selection2_2581.check profile2581 := by decide +kernel

noncomputable def profile2582 : ProfileCell :=
  ⟨(59/65), (89/98),
    [47, 45, 43, 41, 39, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨18, 59⟩, ⟨7, 49⟩, ⟨40, 98⟩, ⟨29, 88⟩, ⟨17, 58⟩, ⟨6, 48⟩, ⟨39, 97⟩, ⟨28, 87⟩, ⟨16, 57⟩, ⟨5, 47⟩, ⟨38, 96⟩, ⟨27, 86⟩, ⟨15, 56⟩, ⟨4, 46⟩, ⟨37, 95⟩, ⟨26, 85⟩, ⟨14, 55⟩, ⟨3, 45⟩, ⟨36, 94⟩, ⟨25, 84⟩, ⟨43, 143⟩, ⟨13, 54⟩, ⟨2, 44⟩, ⟨35, 93⟩, ⟨24, 83⟩, ⟨12, 53⟩, ⟨1, 43⟩, ⟨34, 92⟩, ⟨23, 82⟩, ⟨11, 52⟩, ⟨33, 91⟩, ⟨22, 81⟩, ⟨21, 61⟩, ⟨10, 51⟩, ⟨32, 90⟩, ⟨20, 60⟩, ⟨9, 50⟩, ⟨42, 99⟩, ⟨31, 89⟩, ⟨19, 59⟩, ⟨8, 49⟩, ⟨41, 98⟩, ⟨30, 88⟩]⟩
theorem profile2582_checked : profile2582.check := by decide +kernel

noncomputable def selection0_2582 : Selection :=
  ⟨0, 2, 3, (1813/100), 1036, -747, 840⟩
theorem selection0_2582_checked : selection0_2582.check profile2582 := by decide +kernel

noncomputable def selection1_2582 : Selection :=
  ⟨1, -6, 7, (1759/100), 228, -1035, 1208⟩
theorem selection1_2582_checked : selection1_2582.check profile2582 := by decide +kernel

noncomputable def selection2_2582 : Selection :=
  ⟨2, -14, 11, (1743/100), 98, -1291, 1576⟩
theorem selection2_2582_checked : selection2_2582.check profile2582 := by decide +kernel

noncomputable def profile2583 : ProfileCell :=
  ⟨(89/98), (99/109),
    [47, 45, 43, 41, 39, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨30, 89⟩, ⟨18, 59⟩, ⟨7, 49⟩, ⟨40, 98⟩, ⟨29, 88⟩, ⟨17, 58⟩, ⟨6, 48⟩, ⟨39, 97⟩, ⟨28, 87⟩, ⟨16, 57⟩, ⟨5, 47⟩, ⟨38, 96⟩, ⟨27, 86⟩, ⟨15, 56⟩, ⟨4, 46⟩, ⟨37, 95⟩, ⟨26, 85⟩, ⟨14, 55⟩, ⟨3, 45⟩, ⟨36, 94⟩, ⟨25, 84⟩, ⟨13, 54⟩, ⟨43, 143⟩, ⟨2, 44⟩, ⟨35, 93⟩, ⟨24, 83⟩, ⟨12, 53⟩, ⟨1, 43⟩, ⟨34, 92⟩, ⟨23, 82⟩, ⟨11, 52⟩, ⟨33, 91⟩, ⟨22, 81⟩, ⟨21, 61⟩, ⟨10, 51⟩, ⟨32, 90⟩, ⟨20, 60⟩, ⟨9, 50⟩, ⟨42, 99⟩, ⟨31, 89⟩, ⟨19, 59⟩, ⟨8, 49⟩, ⟨41, 98⟩]⟩
theorem profile2583_checked : profile2583.check := by decide +kernel

noncomputable def selection0_2583 : Selection :=
  ⟨0, 2, 3, (907/50), 206, -213, 252⟩
theorem selection0_2583_checked : selection0_2583.check profile2583 := by decide +kernel

noncomputable def selection1_2583 : Selection :=
  ⟨1, -6, 7, (1761/100), 46, -501, 620⟩
theorem selection1_2583_checked : selection1_2583.check profile2583 := by decide +kernel

noncomputable def selection2_2583 : Selection :=
  ⟨2, -14, 11, (436/25), 20, -757, 988⟩
theorem selection2_2583_checked : selection2_2583.check profile2583 := by decide +kernel

noncomputable def profile2584 : ProfileCell :=
  ⟨(99/109), (10/11),
    [47, 45, 43, 41, 39, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 19], [43, 44, 45, 46, 47],
    [⟨41, 99⟩, ⟨30, 89⟩, ⟨18, 59⟩, ⟨7, 49⟩, ⟨40, 98⟩, ⟨29, 88⟩, ⟨17, 58⟩, ⟨6, 48⟩, ⟨39, 97⟩, ⟨28, 87⟩, ⟨16, 57⟩, ⟨5, 47⟩, ⟨38, 96⟩, ⟨27, 86⟩, ⟨15, 56⟩, ⟨4, 46⟩, ⟨37, 95⟩, ⟨26, 85⟩, ⟨14, 55⟩, ⟨3, 45⟩, ⟨36, 94⟩, ⟨25, 84⟩, ⟨13, 54⟩, ⟨2, 44⟩, ⟨43, 143⟩, ⟨35, 93⟩, ⟨24, 83⟩, ⟨12, 53⟩, ⟨1, 43⟩, ⟨34, 92⟩, ⟨23, 82⟩, ⟨11, 52⟩, ⟨33, 91⟩, ⟨22, 81⟩, ⟨21, 61⟩, ⟨10, 51⟩, ⟨32, 90⟩, ⟨20, 60⟩, ⟨9, 50⟩, ⟨42, 99⟩, ⟨31, 89⟩, ⟨19, 59⟩, ⟨8, 49⟩]⟩
theorem profile2584_checked : profile2584.check := by decide +kernel

noncomputable def selection0_2584 : Selection :=
  ⟨0, 3, 3, (909/50), 1837, 352, -374⟩
theorem selection0_2584_checked : selection0_2584.check profile2584 := by decide +kernel

noncomputable def selection1_2584 : Selection :=
  ⟨1, -5, 7, (1763/100), 404, 60, -6⟩
theorem selection1_2584_checked : selection1_2584.check profile2584 := by decide +kernel

noncomputable def selection2_2584 : Selection :=
  ⟨2, -13, 11, (35/2), 173, -200, 362⟩
theorem selection2_2584_checked : selection2_2584.check profile2584 := by decide +kernel

noncomputable def profile2585 : ProfileCell :=
  ⟨(10/11), (91/100),
    [47, 45, 43, 41, 40, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨8, 50⟩, ⟨19, 60⟩, ⟨31, 90⟩, ⟨42, 100⟩, ⟨7, 49⟩, ⟨18, 59⟩, ⟨30, 89⟩, ⟨41, 99⟩, ⟨6, 48⟩, ⟨17, 58⟩, ⟨29, 88⟩, ⟨40, 98⟩, ⟨5, 47⟩, ⟨16, 57⟩, ⟨28, 87⟩, ⟨39, 97⟩, ⟨4, 46⟩, ⟨15, 56⟩, ⟨27, 86⟩, ⟨38, 96⟩, ⟨3, 45⟩, ⟨14, 55⟩, ⟨26, 85⟩, ⟨37, 95⟩, ⟨2, 44⟩, ⟨13, 54⟩, ⟨25, 84⟩, ⟨36, 94⟩, ⟨1, 43⟩, ⟨12, 53⟩, ⟨24, 83⟩, ⟨35, 93⟩, ⟨43, 143⟩, ⟨11, 52⟩, ⟨23, 82⟩, ⟨34, 92⟩, ⟨10, 51⟩, ⟨21, 61⟩, ⟨22, 81⟩, ⟨33, 91⟩, ⟨9, 50⟩, ⟨20, 60⟩, ⟨32, 90⟩]⟩
theorem profile2585_checked : profile2585.check := by decide +kernel

noncomputable def selection0_2585 : Selection :=
  ⟨0, 1, 3, 14, 1539, 12, 0⟩
theorem selection0_2585_checked : selection0_2585.check profile2585 := by decide +kernel

noncomputable def selection1_2585 : Selection :=
  ⟨1, -7, 7, (1371/100), 342, -280, 368⟩
theorem selection1_2585_checked : selection1_2585.check profile2585 := by decide +kernel

noncomputable def selection2_2585 : Selection :=
  ⟨2, -15, 11, (681/50), 147, -540, 736⟩
theorem selection2_2585_checked : selection2_2585.check profile2585 := by decide +kernel

noncomputable def profile2586 : ProfileCell :=
  ⟨(91/100), (61/67),
    [47, 45, 43, 41, 40, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨32, 91⟩, ⟨8, 50⟩, ⟨19, 60⟩, ⟨31, 90⟩, ⟨42, 100⟩, ⟨7, 49⟩, ⟨18, 59⟩, ⟨30, 89⟩, ⟨41, 99⟩, ⟨6, 48⟩, ⟨17, 58⟩, ⟨29, 88⟩, ⟨40, 98⟩, ⟨5, 47⟩, ⟨16, 57⟩, ⟨28, 87⟩, ⟨39, 97⟩, ⟨4, 46⟩, ⟨15, 56⟩, ⟨27, 86⟩, ⟨38, 96⟩, ⟨3, 45⟩, ⟨14, 55⟩, ⟨26, 85⟩, ⟨37, 95⟩, ⟨2, 44⟩, ⟨13, 54⟩, ⟨25, 84⟩, ⟨36, 94⟩, ⟨1, 43⟩, ⟨12, 53⟩, ⟨24, 83⟩, ⟨35, 93⟩, ⟨11, 52⟩, ⟨43, 143⟩, ⟨23, 82⟩, ⟨34, 92⟩, ⟨10, 51⟩, ⟨21, 61⟩, ⟨22, 81⟩, ⟨33, 91⟩, ⟨9, 50⟩, ⟨20, 60⟩]⟩
theorem profile2586_checked : profile2586.check := by decide +kernel

noncomputable def selection0_2586 : Selection :=
  ⟨0, 1, 3, 14, 757, 376, -400⟩
theorem selection0_2586_checked : selection0_2586.check profile2586 := by decide +kernel

noncomputable def selection1_2586 : Selection :=
  ⟨1, -7, 7, (1371/100), 169, 84, -32⟩
theorem selection1_2586_checked : selection1_2586.check profile2586 := by decide +kernel

noncomputable def selection2_2586 : Selection :=
  ⟨2, -15, 11, (273/20), 73, -176, 336⟩
theorem selection2_2586_checked : selection2_2586.check profile2586 := by decide +kernel

noncomputable def profile2587 : ProfileCell :=
  ⟨(61/67), (51/56),
    [47, 45, 43, 41, 40, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨20, 61⟩, ⟨32, 91⟩, ⟨8, 50⟩, ⟨19, 60⟩, ⟨31, 90⟩, ⟨42, 100⟩, ⟨7, 49⟩, ⟨18, 59⟩, ⟨30, 89⟩, ⟨41, 99⟩, ⟨6, 48⟩, ⟨17, 58⟩, ⟨29, 88⟩, ⟨40, 98⟩, ⟨5, 47⟩, ⟨16, 57⟩, ⟨28, 87⟩, ⟨39, 97⟩, ⟨4, 46⟩, ⟨15, 56⟩, ⟨27, 86⟩, ⟨38, 96⟩, ⟨3, 45⟩, ⟨14, 55⟩, ⟨26, 85⟩, ⟨37, 95⟩, ⟨2, 44⟩, ⟨13, 54⟩, ⟨25, 84⟩, ⟨36, 94⟩, ⟨1, 43⟩, ⟨12, 53⟩, ⟨24, 83⟩, ⟨35, 93⟩, ⟨11, 52⟩, ⟨23, 82⟩, ⟨43, 143⟩, ⟨34, 92⟩, ⟨10, 51⟩, ⟨21, 61⟩, ⟨22, 81⟩, ⟨33, 91⟩, ⟨9, 50⟩]⟩
theorem profile2587_checked : profile2587.check := by decide +kernel

noncomputable def selection0_2587 : Selection :=
  ⟨0, 1, 3, (1391/100), 448, 132, -132⟩
theorem selection0_2587_checked : selection0_2587.check profile2587 := by decide +kernel

noncomputable def selection1_2587 : Selection :=
  ⟨1, -7, 7, (343/25), 101, -160, 236⟩
theorem selection1_2587_checked : selection1_2587.check profile2587 := by decide +kernel

noncomputable def selection2_2587 : Selection :=
  ⟨2, -15, 11, (1367/100), 44, -420, 604⟩
theorem selection2_2587_checked : selection2_2587.check profile2587 := by decide +kernel

noncomputable def profile2588 : ProfileCell :=
  ⟨(51/56), (92/101),
    [47, 45, 43, 41, 40, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨9, 51⟩, ⟨20, 61⟩, ⟨32, 91⟩, ⟨8, 50⟩, ⟨19, 60⟩, ⟨31, 90⟩, ⟨7, 49⟩, ⟨42, 100⟩, ⟨18, 59⟩, ⟨30, 89⟩, ⟨6, 48⟩, ⟨41, 99⟩, ⟨17, 58⟩, ⟨29, 88⟩, ⟨5, 47⟩, ⟨40, 98⟩, ⟨16, 57⟩, ⟨28, 87⟩, ⟨4, 46⟩, ⟨39, 97⟩, ⟨15, 56⟩, ⟨27, 86⟩, ⟨3, 45⟩, ⟨38, 96⟩, ⟨14, 55⟩, ⟨26, 85⟩, ⟨2, 44⟩, ⟨37, 95⟩, ⟨13, 54⟩, ⟨25, 84⟩, ⟨1, 43⟩, ⟨36, 94⟩, ⟨12, 53⟩, ⟨24, 83⟩, ⟨35, 93⟩, ⟨11, 52⟩, ⟨23, 82⟩, ⟨34, 92⟩, ⟨43, 143⟩, ⟨10, 51⟩, ⟨21, 61⟩, ⟨22, 81⟩, ⟨33, 91⟩]⟩
theorem profile2588_checked : profile2588.check := by decide +kernel

noncomputable def selection0_2588 : Selection :=
  ⟨0, 1, 3, (1391/100), 297, -174, 204⟩
theorem selection0_2588_checked : selection0_2588.check profile2588 := by decide +kernel

noncomputable def selection1_2588 : Selection :=
  ⟨1, -7, 7, (55/4), 67, -466, 572⟩
theorem selection1_2588_checked : selection1_2588.check profile2588 := by decide +kernel

noncomputable def selection2_2588 : Selection :=
  ⟨2, -15, 11, (137/10), 29, -726, 940⟩
theorem selection2_2588_checked : selection2_2588.check profile2588 := by decide +kernel

noncomputable def profile2589 : ProfileCell :=
  ⟨(92/101), (41/45),
    [47, 45, 43, 41, 40, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨33, 92⟩, ⟨9, 51⟩, ⟨20, 61⟩, ⟨32, 91⟩, ⟨8, 50⟩, ⟨19, 60⟩, ⟨31, 90⟩, ⟨7, 49⟩, ⟨42, 100⟩, ⟨18, 59⟩, ⟨30, 89⟩, ⟨6, 48⟩, ⟨41, 99⟩, ⟨17, 58⟩, ⟨29, 88⟩, ⟨5, 47⟩, ⟨40, 98⟩, ⟨16, 57⟩, ⟨28, 87⟩, ⟨4, 46⟩, ⟨39, 97⟩, ⟨15, 56⟩, ⟨27, 86⟩, ⟨3, 45⟩, ⟨38, 96⟩, ⟨14, 55⟩, ⟨26, 85⟩, ⟨2, 44⟩, ⟨37, 95⟩, ⟨13, 54⟩, ⟨25, 84⟩, ⟨1, 43⟩, ⟨36, 94⟩, ⟨12, 53⟩, ⟨24, 83⟩, ⟨35, 93⟩, ⟨11, 52⟩, ⟨23, 82⟩, ⟨34, 92⟩, ⟨10, 51⟩, ⟨43, 143⟩, ⟨21, 61⟩, ⟨22, 81⟩]⟩
theorem profile2589_checked : profile2589.check := by decide +kernel

noncomputable def selection0_2589 : Selection :=
  ⟨0, 1, 3, (1391/100), 369, 378, -402⟩
theorem selection0_2589_checked : selection0_2589.check profile2589 := by decide +kernel

noncomputable def selection1_2589 : Selection :=
  ⟨1, -7, 7, (55/4), 83, 86, -34⟩
theorem selection1_2589_checked : selection1_2589.check profile2589 := by decide +kernel

noncomputable def selection2_2589 : Selection :=
  ⟨2, -15, 11, (1371/100), 36, -174, 334⟩
theorem selection2_2589_checked : selection2_2589.check profile2589 := by decide +kernel

noncomputable def profile2590 : ProfileCell :=
  ⟨(41/45), (72/79),
    [47, 45, 43, 41, 40, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨22, 82⟩, ⟨9, 51⟩, ⟨33, 92⟩, ⟨20, 61⟩, ⟨8, 50⟩, ⟨32, 91⟩, ⟨19, 60⟩, ⟨7, 49⟩, ⟨31, 90⟩, ⟨18, 59⟩, ⟨42, 100⟩, ⟨6, 48⟩, ⟨30, 89⟩, ⟨17, 58⟩, ⟨41, 99⟩, ⟨5, 47⟩, ⟨29, 88⟩, ⟨16, 57⟩, ⟨40, 98⟩, ⟨4, 46⟩, ⟨28, 87⟩, ⟨15, 56⟩, ⟨39, 97⟩, ⟨3, 45⟩, ⟨27, 86⟩, ⟨14, 55⟩, ⟨38, 96⟩, ⟨2, 44⟩, ⟨26, 85⟩, ⟨13, 54⟩, ⟨37, 95⟩, ⟨1, 43⟩, ⟨25, 84⟩, ⟨12, 53⟩, ⟨36, 94⟩, ⟨24, 83⟩, ⟨11, 52⟩, ⟨35, 93⟩, ⟨23, 82⟩, ⟨10, 51⟩, ⟨34, 92⟩, ⟨21, 61⟩, ⟨43, 143⟩]⟩
theorem profile2590_checked : profile2590.check := by decide +kernel

noncomputable def selection0_2590 : Selection :=
  ⟨0, 1, 3, (693/50), 470, 50, -42⟩
theorem selection0_2590_checked : selection0_2590.check profile2590 := by decide +kernel

noncomputable def selection1_2590 : Selection :=
  ⟨1, -7, 7, (1377/100), 107, -242, 326⟩
theorem selection1_2590_checked : selection1_2590.check profile2590 := by decide +kernel

noncomputable def selection2_2590 : Selection :=
  ⟨2, -15, 11, (55/4), 46, -502, 694⟩
theorem selection2_2590_checked : selection2_2590.check profile2590 := by decide +kernel

noncomputable def profile2591 : ProfileCell :=
  ⟨(72/79), (31/34),
    [47, 45, 43, 41, 40, 38, 36, 34, 32, 30, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨43, 144⟩, ⟨22, 82⟩, ⟨9, 51⟩, ⟨33, 92⟩, ⟨20, 61⟩, ⟨8, 50⟩, ⟨32, 91⟩, ⟨19, 60⟩, ⟨7, 49⟩, ⟨31, 90⟩, ⟨18, 59⟩, ⟨42, 100⟩, ⟨6, 48⟩, ⟨30, 89⟩, ⟨17, 58⟩, ⟨41, 99⟩, ⟨5, 47⟩, ⟨29, 88⟩, ⟨16, 57⟩, ⟨40, 98⟩, ⟨4, 46⟩, ⟨28, 87⟩, ⟨15, 56⟩, ⟨39, 97⟩, ⟨3, 45⟩, ⟨27, 86⟩, ⟨14, 55⟩, ⟨38, 96⟩, ⟨2, 44⟩, ⟨26, 85⟩, ⟨13, 54⟩, ⟨37, 95⟩, ⟨1, 43⟩, ⟨25, 84⟩, ⟨12, 53⟩, ⟨36, 94⟩, ⟨24, 83⟩, ⟨11, 52⟩, ⟨35, 93⟩, ⟨23, 82⟩, ⟨10, 51⟩, ⟨34, 92⟩, ⟨21, 61⟩]⟩
theorem profile2591_checked : profile2591.check := by decide +kernel

noncomputable def selection0_2591 : Selection :=
  ⟨0, 1, 3, (1423/100), 638, -1678, 1854⟩
theorem selection0_2591_checked : selection0_2591.check profile2591 := by decide +kernel

noncomputable def selection1_2591 : Selection :=
  ⟨1, -7, 7, (1399/100), 143, -1970, 2222⟩
theorem selection1_2591_checked : selection1_2591.check profile2591 := by decide +kernel

noncomputable def selection2_2591 : Selection :=
  ⟨2, -15, 11, (1391/100), 62, -2230, 2590⟩
theorem selection2_2591_checked : selection2_2591.check profile2591 := by decide +kernel

noncomputable def profile2592 : ProfileCell :=
  ⟨(31/34), (83/91),
    [47, 45, 43, 41, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨21, 62⟩, ⟨34, 93⟩, ⟨9, 51⟩, ⟨22, 82⟩, ⟨43, 144⟩, ⟨20, 61⟩, ⟨33, 92⟩, ⟨8, 50⟩, ⟨19, 60⟩, ⟨32, 91⟩, ⟨7, 49⟩, ⟨18, 59⟩, ⟨31, 90⟩, ⟨42, 100⟩, ⟨6, 48⟩, ⟨17, 58⟩, ⟨30, 89⟩, ⟨41, 99⟩, ⟨5, 47⟩, ⟨16, 57⟩, ⟨29, 88⟩, ⟨40, 98⟩, ⟨4, 46⟩, ⟨15, 56⟩, ⟨28, 87⟩, ⟨39, 97⟩, ⟨3, 45⟩, ⟨14, 55⟩, ⟨27, 86⟩, ⟨38, 96⟩, ⟨2, 44⟩, ⟨13, 54⟩, ⟨26, 85⟩, ⟨37, 95⟩, ⟨1, 43⟩, ⟨12, 53⟩, ⟨25, 84⟩, ⟨36, 94⟩, ⟨11, 52⟩, ⟨24, 83⟩, ⟨35, 93⟩, ⟨10, 51⟩, ⟨23, 82⟩]⟩
theorem profile2592_checked : profile2592.check := by decide +kernel

noncomputable def selection0_2592 : Selection :=
  ⟨0, 0, 3, (251/20), 488, -1616, 1786⟩
theorem selection0_2592_checked : selection0_2592.check profile2592 := by decide +kernel

noncomputable def selection1_2592 : Selection :=
  ⟨1, -8, 7, (1217/100), 108, -1908, 2154⟩
theorem selection1_2592_checked : selection1_2592.check profile2592 := by decide +kernel

noncomputable def selection2_2592 : Selection :=
  ⟨2, -16, 11, (241/20), 46, -2168, 2522⟩
theorem selection2_2592_checked : selection2_2592.check profile2592 := by decide +kernel

noncomputable def profile2593 : ProfileCell :=
  ⟨(83/91), (52/57),
    [47, 45, 43, 41, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨23, 83⟩, ⟨21, 62⟩, ⟨34, 93⟩, ⟨9, 51⟩, ⟨22, 82⟩, ⟨20, 61⟩, ⟨43, 144⟩, ⟨33, 92⟩, ⟨8, 50⟩, ⟨19, 60⟩, ⟨32, 91⟩, ⟨7, 49⟩, ⟨18, 59⟩, ⟨31, 90⟩, ⟨42, 100⟩, ⟨6, 48⟩, ⟨17, 58⟩, ⟨30, 89⟩, ⟨41, 99⟩, ⟨5, 47⟩, ⟨16, 57⟩, ⟨29, 88⟩, ⟨40, 98⟩, ⟨4, 46⟩, ⟨15, 56⟩, ⟨28, 87⟩, ⟨39, 97⟩, ⟨3, 45⟩, ⟨14, 55⟩, ⟨27, 86⟩, ⟨38, 96⟩, ⟨2, 44⟩, ⟨13, 54⟩, ⟨26, 85⟩, ⟨37, 95⟩, ⟨1, 43⟩, ⟨12, 53⟩, ⟨25, 84⟩, ⟨36, 94⟩, ⟨11, 52⟩, ⟨24, 83⟩, ⟨35, 93⟩, ⟨10, 51⟩]⟩
theorem profile2593_checked : profile2593.check := by decide +kernel

noncomputable def selection0_2593 : Selection :=
  ⟨0, -1, 3, (1269/100), 295, -1149, 1278⟩
theorem selection0_2593_checked : selection0_2593.check profile2593 := by decide +kernel

noncomputable def selection1_2593 : Selection :=
  ⟨1, -9, 7, (613/50), 65, -1437, 1646⟩
theorem selection1_2593_checked : selection1_2593.check profile2593 := by decide +kernel

noncomputable def selection2_2593 : Selection :=
  ⟨2, -17, 11, (303/25), 28, -1693, 2014⟩
theorem selection2_2593_checked : selection2_2593.check profile2593 := by decide +kernel

noncomputable def profile2594 : ProfileCell :=
  ⟨(52/57), (94/103),
    [47, 45, 43, 41, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨10, 52⟩, ⟨23, 83⟩, ⟨21, 62⟩, ⟨34, 93⟩, ⟨9, 51⟩, ⟨22, 82⟩, ⟨20, 61⟩, ⟨33, 92⟩, ⟨43, 144⟩, ⟨8, 50⟩, ⟨19, 60⟩, ⟨32, 91⟩, ⟨7, 49⟩, ⟨18, 59⟩, ⟨31, 90⟩, ⟨6, 48⟩, ⟨42, 100⟩, ⟨17, 58⟩, ⟨30, 89⟩, ⟨5, 47⟩, ⟨41, 99⟩, ⟨16, 57⟩, ⟨29, 88⟩, ⟨4, 46⟩, ⟨40, 98⟩, ⟨15, 56⟩, ⟨28, 87⟩, ⟨3, 45⟩, ⟨39, 97⟩, ⟨14, 55⟩, ⟨27, 86⟩, ⟨2, 44⟩, ⟨38, 96⟩, ⟨13, 54⟩, ⟨26, 85⟩, ⟨1, 43⟩, ⟨37, 95⟩, ⟨12, 53⟩, ⟨25, 84⟩, ⟨36, 94⟩, ⟨11, 52⟩, ⟨24, 83⟩, ⟨35, 93⟩]⟩
theorem profile2594_checked : profile2594.check := by decide +kernel

noncomputable def selection0_2594 : Selection :=
  ⟨0, 0, 3, 13, 532, -1492, 1650⟩
theorem selection0_2594_checked : selection0_2594.check profile2594 := by decide +kernel

noncomputable def selection1_2594 : Selection :=
  ⟨1, -8, 7, (311/25), 116, -1784, 2018⟩
theorem selection1_2594_checked : selection1_2594.check profile2594 := by decide +kernel

noncomputable def selection2_2594 : Selection :=
  ⟨2, -16, 11, (613/50), 50, -2044, 2386⟩
theorem selection2_2594_checked : selection2_2594.check profile2594 := by decide +kernel

noncomputable def profile2595 : ProfileCell :=
  ⟨(94/103), (21/23),
    [47, 45, 43, 41, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨35, 94⟩, ⟨10, 52⟩, ⟨23, 83⟩, ⟨21, 62⟩, ⟨34, 93⟩, ⟨9, 51⟩, ⟨22, 82⟩, ⟨20, 61⟩, ⟨33, 92⟩, ⟨8, 50⟩, ⟨43, 144⟩, ⟨19, 60⟩, ⟨32, 91⟩, ⟨7, 49⟩, ⟨18, 59⟩, ⟨31, 90⟩, ⟨6, 48⟩, ⟨42, 100⟩, ⟨17, 58⟩, ⟨30, 89⟩, ⟨5, 47⟩, ⟨41, 99⟩, ⟨16, 57⟩, ⟨29, 88⟩, ⟨4, 46⟩, ⟨40, 98⟩, ⟨15, 56⟩, ⟨28, 87⟩, ⟨3, 45⟩, ⟨39, 97⟩, ⟨14, 55⟩, ⟨27, 86⟩, ⟨2, 44⟩, ⟨38, 96⟩, ⟨13, 54⟩, ⟨26, 85⟩, ⟨1, 43⟩, ⟨37, 95⟩, ⟨12, 53⟩, ⟨25, 84⟩, ⟨36, 94⟩, ⟨11, 52⟩, ⟨24, 83⟩]⟩
theorem profile2595_checked : profile2595.check := by decide +kernel

noncomputable def selection0_2595 : Selection :=
  ⟨0, 0, 3, (1329/100), 674, -1116, 1238⟩
theorem selection0_2595_checked : selection0_2595.check profile2595 := by decide +kernel

noncomputable def selection1_2595 : Selection :=
  ⟨1, -8, 7, (631/50), 146, -1408, 1606⟩
theorem selection1_2595_checked : selection1_2595.check profile2595 := by decide +kernel

noncomputable def selection2_2595 : Selection :=
  ⟨2, -16, 11, (1241/100), 62, -1668, 1974⟩
theorem selection2_2595_checked : selection2_2595.check profile2595 := by decide +kernel

noncomputable def profile2596 : ProfileCell :=
  ⟨(21/23), (95/104),
    [47, 45, 43, 42, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨24, 84⟩, ⟨10, 52⟩, ⟨35, 94⟩, ⟨21, 62⟩, ⟨23, 83⟩, ⟨9, 51⟩, ⟨34, 93⟩, ⟨20, 61⟩, ⟨22, 82⟩, ⟨8, 50⟩, ⟨33, 92⟩, ⟨19, 60⟩, ⟨43, 144⟩, ⟨7, 49⟩, ⟨32, 91⟩, ⟨18, 59⟩, ⟨6, 48⟩, ⟨31, 90⟩, ⟨17, 58⟩, ⟨42, 100⟩, ⟨5, 47⟩, ⟨30, 89⟩, ⟨16, 57⟩, ⟨41, 99⟩, ⟨4, 46⟩, ⟨29, 88⟩, ⟨15, 56⟩, ⟨40, 98⟩, ⟨3, 45⟩, ⟨28, 87⟩, ⟨14, 55⟩, ⟨39, 97⟩, ⟨2, 44⟩, ⟨27, 86⟩, ⟨13, 54⟩, ⟨38, 96⟩, ⟨1, 43⟩, ⟨26, 85⟩, ⟨12, 53⟩, ⟨37, 95⟩, ⟨25, 84⟩, ⟨11, 52⟩, ⟨36, 94⟩]⟩
theorem profile2596_checked : profile2596.check := by decide +kernel

noncomputable def selection0_2596 : Selection :=
  ⟨0, -1, 3, (1157/100), 580, -1116, 1238⟩
theorem selection0_2596_checked : selection0_2596.check profile2596 := by decide +kernel

noncomputable def selection1_2596 : Selection :=
  ⟨1, -9, 7, (1079/100), 124, -1408, 1606⟩
theorem selection1_2596_checked : selection1_2596.check profile2596 := by decide +kernel

noncomputable def selection2_2596 : Selection :=
  ⟨2, -17, 11, (211/20), 52, -1668, 1974⟩
theorem selection2_2596_checked : selection2_2596.check profile2596 := by decide +kernel

noncomputable def profile2597 : ProfileCell :=
  ⟨(95/104), (53/58),
    [47, 45, 43, 42, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨36, 95⟩, ⟨24, 84⟩, ⟨10, 52⟩, ⟨35, 94⟩, ⟨21, 62⟩, ⟨23, 83⟩, ⟨9, 51⟩, ⟨34, 93⟩, ⟨20, 61⟩, ⟨22, 82⟩, ⟨8, 50⟩, ⟨33, 92⟩, ⟨19, 60⟩, ⟨7, 49⟩, ⟨43, 144⟩, ⟨32, 91⟩, ⟨18, 59⟩, ⟨6, 48⟩, ⟨31, 90⟩, ⟨17, 58⟩, ⟨42, 100⟩, ⟨5, 47⟩, ⟨30, 89⟩, ⟨16, 57⟩, ⟨41, 99⟩, ⟨4, 46⟩, ⟨29, 88⟩, ⟨15, 56⟩, ⟨40, 98⟩, ⟨3, 45⟩, ⟨28, 87⟩, ⟨14, 55⟩, ⟨39, 97⟩, ⟨2, 44⟩, ⟨27, 86⟩, ⟨13, 54⟩, ⟨38, 96⟩, ⟨1, 43⟩, ⟨26, 85⟩, ⟨12, 53⟩, ⟨37, 95⟩, ⟨25, 84⟩, ⟨11, 52⟩]⟩
theorem profile2597_checked : profile2597.check := by decide +kernel

noncomputable def selection0_2597 : Selection :=
  ⟨0, -1, 3, (293/25), 466, -736, 822⟩
theorem selection0_2597_checked : selection0_2597.check profile2597 := by decide +kernel

noncomputable def selection1_2597 : Selection :=
  ⟨1, -9, 7, (109/10), 99, -1028, 1190⟩
theorem selection1_2597_checked : selection1_2597.check profile2597 := by decide +kernel

noncomputable def selection2_2597 : Selection :=
  ⟨2, -17, 11, (266/25), 42, -1288, 1558⟩
theorem selection2_2597_checked : selection2_2597.check profile2597 := by decide +kernel

noncomputable def profile2598 : ProfileCell :=
  ⟨(53/58), (85/93),
    [47, 45, 43, 42, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨11, 53⟩, ⟨36, 95⟩, ⟨24, 84⟩, ⟨10, 52⟩, ⟨35, 94⟩, ⟨21, 62⟩, ⟨23, 83⟩, ⟨9, 51⟩, ⟨34, 93⟩, ⟨20, 61⟩, ⟨22, 82⟩, ⟨8, 50⟩, ⟨33, 92⟩, ⟨19, 60⟩, ⟨7, 49⟩, ⟨32, 91⟩, ⟨43, 144⟩, ⟨18, 59⟩, ⟨6, 48⟩, ⟨31, 90⟩, ⟨17, 58⟩, ⟨5, 47⟩, ⟨42, 100⟩, ⟨30, 89⟩, ⟨16, 57⟩, ⟨4, 46⟩, ⟨41, 99⟩, ⟨29, 88⟩, ⟨15, 56⟩, ⟨3, 45⟩, ⟨40, 98⟩, ⟨28, 87⟩, ⟨14, 55⟩, ⟨2, 44⟩, ⟨39, 97⟩, ⟨27, 86⟩, ⟨13, 54⟩, ⟨1, 43⟩, ⟨38, 96⟩, ⟨26, 85⟩, ⟨12, 53⟩, ⟨37, 95⟩, ⟨25, 84⟩]⟩
theorem profile2598_checked : profile2598.check := by decide +kernel

noncomputable def selection0_2598 : Selection :=
  ⟨0, -1, 3, (1183/100), 263, -948, 1054⟩
theorem selection0_2598_checked : selection0_2598.check profile2598 := by decide +kernel

noncomputable def selection1_2598 : Selection :=
  ⟨1, -9, 7, (1097/100), 56, -1240, 1422⟩
theorem selection1_2598_checked : selection1_2598.check profile2598 := by decide +kernel

noncomputable def selection2_2598 : Selection :=
  ⟨2, -17, 11, (107/10), 24, -1500, 1790⟩
theorem selection2_2598_checked : selection2_2598.check profile2598 := by decide +kernel

noncomputable def profile2599 : ProfileCell :=
  ⟨(85/93), (32/35),
    [47, 45, 43, 42, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨25, 85⟩, ⟨11, 53⟩, ⟨36, 95⟩, ⟨24, 84⟩, ⟨10, 52⟩, ⟨35, 94⟩, ⟨21, 62⟩, ⟨23, 83⟩, ⟨9, 51⟩, ⟨34, 93⟩, ⟨20, 61⟩, ⟨22, 82⟩, ⟨8, 50⟩, ⟨33, 92⟩, ⟨19, 60⟩, ⟨7, 49⟩, ⟨32, 91⟩, ⟨18, 59⟩, ⟨43, 144⟩, ⟨6, 48⟩, ⟨31, 90⟩, ⟨17, 58⟩, ⟨5, 47⟩, ⟨42, 100⟩, ⟨30, 89⟩, ⟨16, 57⟩, ⟨4, 46⟩, ⟨41, 99⟩, ⟨29, 88⟩, ⟨15, 56⟩, ⟨3, 45⟩, ⟨40, 98⟩, ⟨28, 87⟩, ⟨14, 55⟩, ⟨2, 44⟩, ⟨39, 97⟩, ⟨27, 86⟩, ⟨13, 54⟩, ⟨1, 43⟩, ⟨38, 96⟩, ⟨26, 85⟩, ⟨12, 53⟩, ⟨37, 95⟩]⟩
theorem profile2599_checked : profile2599.check := by decide +kernel

noncomputable def selection0_2599 : Selection :=
  ⟨0, -1, 3, (597/50), 439, -608, 682⟩
theorem selection0_2599_checked : selection0_2599.check profile2599 := by decide +kernel

noncomputable def selection1_2599 : Selection :=
  ⟨1, -9, 7, (221/20), 93, -900, 1050⟩
theorem selection1_2599_checked : selection1_2599.check profile2599 := by decide +kernel

noncomputable def selection2_2599 : Selection :=
  ⟨2, -17, 11, (1077/100), 39, -1160, 1418⟩
theorem selection2_2599_checked : selection2_2599.check profile2599 := by decide +kernel

noncomputable def profile2600 : ProfileCell :=
  ⟨(32/35), (43/47),
    [47, 45, 43, 42, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨37, 96⟩, ⟨11, 53⟩, ⟨25, 85⟩, ⟨36, 95⟩, ⟨10, 52⟩, ⟨24, 84⟩, ⟨21, 62⟩, ⟨35, 94⟩, ⟨9, 51⟩, ⟨23, 83⟩, ⟨20, 61⟩, ⟨34, 93⟩, ⟨8, 50⟩, ⟨22, 82⟩, ⟨19, 60⟩, ⟨33, 92⟩, ⟨7, 49⟩, ⟨18, 59⟩, ⟨32, 91⟩, ⟨6, 48⟩, ⟨43, 144⟩, ⟨17, 58⟩, ⟨31, 90⟩, ⟨5, 47⟩, ⟨42, 100⟩, ⟨16, 57⟩, ⟨30, 89⟩, ⟨4, 46⟩, ⟨41, 99⟩, ⟨15, 56⟩, ⟨29, 88⟩, ⟨3, 45⟩, ⟨40, 98⟩, ⟨14, 55⟩, ⟨28, 87⟩, ⟨2, 44⟩, ⟨39, 97⟩, ⟨13, 54⟩, ⟨27, 86⟩, ⟨1, 43⟩, ⟨38, 96⟩, ⟨12, 53⟩, ⟨26, 85⟩]⟩
theorem profile2600_checked : profile2600.check := by decide +kernel

noncomputable def selection0_2600 : Selection :=
  ⟨0, -1, 3, (1203/100), 875, -224, 262⟩
theorem selection0_2600_checked : selection0_2600.check profile2600 := by decide +kernel

noncomputable def selection1_2600 : Selection :=
  ⟨1, -9, 7, (223/20), 185, -516, 630⟩
theorem selection1_2600_checked : selection1_2600.check profile2600 := by decide +kernel

noncomputable def selection2_2600 : Selection :=
  ⟨2, -17, 11, (1087/100), 78, -776, 998⟩
theorem selection2_2600_checked : selection2_2600.check profile2600 := by decide +kernel

noncomputable def profile2601 : ProfileCell :=
  ⟨(43/47), (97/106),
    [47, 45, 43, 42, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨26, 86⟩, ⟨11, 53⟩, ⟨37, 96⟩, ⟨25, 85⟩, ⟨10, 52⟩, ⟨36, 95⟩, ⟨24, 84⟩, ⟨21, 62⟩, ⟨9, 51⟩, ⟨35, 94⟩, ⟨23, 83⟩, ⟨20, 61⟩, ⟨8, 50⟩, ⟨34, 93⟩, ⟨22, 82⟩, ⟨19, 60⟩, ⟨7, 49⟩, ⟨33, 92⟩, ⟨18, 59⟩, ⟨6, 48⟩, ⟨32, 91⟩, ⟨17, 58⟩, ⟨43, 144⟩, ⟨5, 47⟩, ⟨31, 90⟩, ⟨16, 57⟩, ⟨42, 100⟩, ⟨4, 46⟩, ⟨30, 89⟩, ⟨15, 56⟩, ⟨41, 99⟩, ⟨3, 45⟩, ⟨29, 88⟩, ⟨14, 55⟩, ⟨40, 98⟩, ⟨2, 44⟩, ⟨28, 87⟩, ⟨13, 54⟩, ⟨39, 97⟩, ⟨1, 43⟩, ⟨27, 86⟩, ⟨12, 53⟩, ⟨38, 96⟩]⟩
theorem profile2601_checked : profile2601.check := by decide +kernel

noncomputable def selection0_2601 : Selection :=
  ⟨0, -1, 3, (302/25), 290, -396, 450⟩
theorem selection0_2601_checked : selection0_2601.check profile2601 := by decide +kernel

noncomputable def selection1_2601 : Selection :=
  ⟨1, -9, 7, (1119/100), 62, -688, 818⟩
theorem selection1_2601_checked : selection1_2601.check profile2601 := by decide +kernel

noncomputable def selection2_2601 : Selection :=
  ⟨2, -17, 11, (1091/100), 26, -948, 1186⟩
theorem selection2_2601_checked : selection2_2601.check profile2601 := by decide +kernel

noncomputable def profile2602 : ProfileCell :=
  ⟨(97/106), (54/59),
    [47, 45, 43, 42, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨38, 97⟩, ⟨26, 86⟩, ⟨11, 53⟩, ⟨37, 96⟩, ⟨25, 85⟩, ⟨10, 52⟩, ⟨36, 95⟩, ⟨24, 84⟩, ⟨21, 62⟩, ⟨9, 51⟩, ⟨35, 94⟩, ⟨23, 83⟩, ⟨20, 61⟩, ⟨8, 50⟩, ⟨34, 93⟩, ⟨22, 82⟩, ⟨19, 60⟩, ⟨7, 49⟩, ⟨33, 92⟩, ⟨18, 59⟩, ⟨6, 48⟩, ⟨32, 91⟩, ⟨17, 58⟩, ⟨5, 47⟩, ⟨43, 144⟩, ⟨31, 90⟩, ⟨16, 57⟩, ⟨42, 100⟩, ⟨4, 46⟩, ⟨30, 89⟩, ⟨15, 56⟩, ⟨41, 99⟩, ⟨3, 45⟩, ⟨29, 88⟩, ⟨14, 55⟩, ⟨40, 98⟩, ⟨2, 44⟩, ⟨28, 87⟩, ⟨13, 54⟩, ⟨39, 97⟩, ⟨1, 43⟩, ⟨27, 86⟩, ⟨12, 53⟩]⟩
theorem profile2602_checked : profile2602.check := by decide +kernel

noncomputable def selection0_2602 : Selection :=
  ⟨0, -1, 3, (302/25), 231, 186, -186⟩
theorem selection0_2602_checked : selection0_2602.check profile2602 := by decide +kernel

noncomputable def selection1_2602 : Selection :=
  ⟨1, -9, 7, (56/5), 49, -106, 182⟩
theorem selection1_2602_checked : selection1_2602.check profile2602 := by decide +kernel

noncomputable def selection2_2602 : Selection :=
  ⟨2, -17, 11, (1093/100), 21, -366, 550⟩
theorem selection2_2602_checked : selection2_2602.check profile2602 := by decide +kernel

noncomputable def profile2603 : ProfileCell :=
  ⟨(54/59), (87/95),
    [47, 45, 43, 42, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨12, 54⟩, ⟨38, 97⟩, ⟨26, 86⟩, ⟨11, 53⟩, ⟨37, 96⟩, ⟨25, 85⟩, ⟨10, 52⟩, ⟨36, 95⟩, ⟨24, 84⟩, ⟨21, 62⟩, ⟨9, 51⟩, ⟨35, 94⟩, ⟨23, 83⟩, ⟨20, 61⟩, ⟨8, 50⟩, ⟨34, 93⟩, ⟨22, 82⟩, ⟨19, 60⟩, ⟨7, 49⟩, ⟨33, 92⟩, ⟨18, 59⟩, ⟨6, 48⟩, ⟨32, 91⟩, ⟨17, 58⟩, ⟨5, 47⟩, ⟨31, 90⟩, ⟨43, 144⟩, ⟨16, 57⟩, ⟨4, 46⟩, ⟨42, 100⟩, ⟨30, 89⟩, ⟨15, 56⟩, ⟨3, 45⟩, ⟨41, 99⟩, ⟨29, 88⟩, ⟨14, 55⟩, ⟨2, 44⟩, ⟨40, 98⟩, ⟨28, 87⟩, ⟨13, 54⟩, ⟨1, 43⟩, ⟨39, 97⟩, ⟨27, 86⟩]⟩
theorem profile2603_checked : profile2603.check := by decide +kernel

noncomputable def selection0_2603 : Selection :=
  ⟨0, -1, 3, (1211/100), 774, -138, 168⟩
theorem selection0_2603_checked : selection0_2603.check profile2603 := by decide +kernel

noncomputable def selection1_2603 : Selection :=
  ⟨1, -9, 7, (1127/100), 165, -430, 536⟩
theorem selection1_2603_checked : selection1_2603.check profile2603 := by decide +kernel

noncomputable def selection2_2603 : Selection :=
  ⟨2, -17, 11, (1101/100), 70, -690, 904⟩
theorem selection2_2603_checked : selection2_2603.check profile2603 := by decide +kernel

noncomputable def profile2604 : ProfileCell :=
  ⟨(87/95), (98/107),
    [47, 45, 43, 42, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨27, 87⟩, ⟨12, 54⟩, ⟨38, 97⟩, ⟨26, 86⟩, ⟨11, 53⟩, ⟨37, 96⟩, ⟨25, 85⟩, ⟨10, 52⟩, ⟨36, 95⟩, ⟨24, 84⟩, ⟨21, 62⟩, ⟨9, 51⟩, ⟨35, 94⟩, ⟨23, 83⟩, ⟨20, 61⟩, ⟨8, 50⟩, ⟨34, 93⟩, ⟨22, 82⟩, ⟨19, 60⟩, ⟨7, 49⟩, ⟨33, 92⟩, ⟨18, 59⟩, ⟨6, 48⟩, ⟨32, 91⟩, ⟨17, 58⟩, ⟨5, 47⟩, ⟨31, 90⟩, ⟨16, 57⟩, ⟨43, 144⟩, ⟨4, 46⟩, ⟨42, 100⟩, ⟨30, 89⟩, ⟨15, 56⟩, ⟨3, 45⟩, ⟨41, 99⟩, ⟨29, 88⟩, ⟨14, 55⟩, ⟨2, 44⟩, ⟨40, 98⟩, ⟨28, 87⟩, ⟨13, 54⟩, ⟨1, 43⟩, ⟨39, 97⟩]⟩
theorem profile2604_checked : profile2604.check := by decide +kernel

noncomputable def selection0_2604 : Selection :=
  ⟨0, -1, 3, (1211/100), 143, 384, -402⟩
theorem selection0_2604_checked : selection0_2604.check profile2604 := by decide +kernel

noncomputable def selection1_2604 : Selection :=
  ⟨1, -9, 7, (1127/100), 31, 92, -34⟩
theorem selection1_2604_checked : selection1_2604.check profile2604 := by decide +kernel

noncomputable def selection2_2604 : Selection :=
  ⟨2, -17, 11, (551/50), 13, -168, 334⟩
theorem selection2_2604_checked : selection2_2604.check profile2604 := by decide +kernel

noncomputable def profile2605 : ProfileCell :=
  ⟨(98/107), (11/12),
    [47, 45, 43, 42, 40, 38, 36, 34, 32, 31, 29, 27, 25, 23, 21, 20], [43, 44, 45, 46, 47],
    [⟨39, 98⟩, ⟨27, 87⟩, ⟨12, 54⟩, ⟨38, 97⟩, ⟨26, 86⟩, ⟨11, 53⟩, ⟨37, 96⟩, ⟨25, 85⟩, ⟨10, 52⟩, ⟨36, 95⟩, ⟨24, 84⟩, ⟨21, 62⟩, ⟨9, 51⟩, ⟨35, 94⟩, ⟨23, 83⟩, ⟨20, 61⟩, ⟨8, 50⟩, ⟨34, 93⟩, ⟨22, 82⟩, ⟨19, 60⟩, ⟨7, 49⟩, ⟨33, 92⟩, ⟨18, 59⟩, ⟨6, 48⟩, ⟨32, 91⟩, ⟨17, 58⟩, ⟨5, 47⟩, ⟨31, 90⟩, ⟨16, 57⟩, ⟨4, 46⟩, ⟨43, 144⟩, ⟨42, 100⟩, ⟨30, 89⟩, ⟨15, 56⟩, ⟨3, 45⟩, ⟨41, 99⟩, ⟨29, 88⟩, ⟨14, 55⟩, ⟨2, 44⟩, ⟨40, 98⟩, ⟨28, 87⟩, ⟨13, 54⟩, ⟨1, 43⟩]⟩
theorem profile2605_checked : profile2605.check := by decide +kernel

noncomputable def selection0_2605 : Selection :=
  ⟨0, -1, 3, (1209/100), 1122, 776, -830⟩
theorem selection0_2605_checked : selection0_2605.check profile2605 := by decide +kernel

noncomputable def selection1_2605 : Selection :=
  ⟨1, -9, 7, (1127/100), 240, 484, -462⟩
theorem selection1_2605_checked : selection1_2605.check profile2605 := by decide +kernel

noncomputable def selection2_2605 : Selection :=
  ⟨2, -17, 11, (551/50), 101, 224, -94⟩
theorem selection2_2605_checked : selection2_2605.check profile2605 := by decide +kernel

noncomputable def profile2606 : ProfileCell :=
  ⟨(11/12), (100/109),
    [47, 45, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 44, 45, 46, 47],
    [⟨1, 44⟩, ⟨13, 55⟩, ⟨28, 88⟩, ⟨40, 99⟩, ⟨12, 54⟩, ⟨27, 87⟩, ⟨39, 98⟩, ⟨11, 53⟩, ⟨26, 86⟩, ⟨38, 97⟩, ⟨10, 52⟩, ⟨25, 85⟩, ⟨37, 96⟩, ⟨9, 51⟩, ⟨21, 62⟩, ⟨24, 84⟩, ⟨36, 95⟩, ⟨8, 50⟩, ⟨20, 61⟩, ⟨23, 83⟩, ⟨35, 94⟩, ⟨7, 49⟩, ⟨19, 60⟩, ⟨22, 82⟩, ⟨34, 93⟩, ⟨6, 48⟩, ⟨18, 59⟩, ⟨33, 92⟩, ⟨5, 47⟩, ⟨17, 58⟩, ⟨32, 91⟩, ⟨4, 46⟩, ⟨16, 57⟩, ⟨31, 90⟩, ⟨3, 45⟩, ⟨15, 56⟩, ⟨30, 89⟩, ⟨42, 100⟩, ⟨43, 144⟩, ⟨2, 44⟩, ⟨14, 55⟩, ⟨29, 88⟩, ⟨41, 99⟩]⟩
theorem profile2606_checked : profile2606.check := by decide +kernel

noncomputable def selection0_2606 : Selection :=
  ⟨0, -2, 3, (973/100), 885, 578, -614⟩
theorem selection0_2606_checked : selection0_2606.check profile2606 := by decide +kernel

noncomputable def selection1_2606 : Selection :=
  ⟨1, -10, 7, (459/50), 191, 286, -246⟩
theorem selection1_2606_checked : selection1_2606.check profile2606 := by decide +kernel

noncomputable def selection2_2606 : Selection :=
  ⟨2, -18, 11, (451/50), 82, 26, 122⟩
theorem selection2_2606_checked : selection2_2606.check profile2606 := by decide +kernel

noncomputable def profile2607 : ProfileCell :=
  ⟨(100/109), (89/97),
    [47, 45, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 44, 45, 46, 47],
    [⟨41, 100⟩, ⟨1, 44⟩, ⟨13, 55⟩, ⟨28, 88⟩, ⟨40, 99⟩, ⟨12, 54⟩, ⟨27, 87⟩, ⟨39, 98⟩, ⟨11, 53⟩, ⟨26, 86⟩, ⟨38, 97⟩, ⟨10, 52⟩, ⟨25, 85⟩, ⟨37, 96⟩, ⟨9, 51⟩, ⟨21, 62⟩, ⟨24, 84⟩, ⟨36, 95⟩, ⟨8, 50⟩, ⟨20, 61⟩, ⟨23, 83⟩, ⟨35, 94⟩, ⟨7, 49⟩, ⟨19, 60⟩, ⟨22, 82⟩, ⟨34, 93⟩, ⟨6, 48⟩, ⟨18, 59⟩, ⟨33, 92⟩, ⟨5, 47⟩, ⟨17, 58⟩, ⟨32, 91⟩, ⟨4, 46⟩, ⟨16, 57⟩, ⟨31, 90⟩, ⟨3, 45⟩, ⟨15, 56⟩, ⟨30, 89⟩, ⟨42, 100⟩, ⟨2, 44⟩, ⟨43, 144⟩, ⟨14, 55⟩, ⟨29, 88⟩]⟩
theorem profile2607_checked : profile2607.check := by decide +kernel

noncomputable def selection0_2607 : Selection :=
  ⟨0, -2, 3, (947/100), 107, 1178, -1268⟩
theorem selection0_2607_checked : selection0_2607.check profile2607 := by decide +kernel

noncomputable def selection1_2607 : Selection :=
  ⟨1, -10, 7, (913/100), 24, 886, -900⟩
theorem selection1_2607_checked : selection1_2607.check profile2607 := by decide +kernel

noncomputable def selection2_2607 : Selection :=
  ⟨2, -18, 11, (451/50), 11, 626, -532⟩
theorem selection2_2607_checked : selection2_2607.check profile2607 := by decide +kernel

noncomputable def profile2608 : ProfileCell :=
  ⟨(89/97), (145/158),
    [47, 45, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 44, 45, 46, 47],
    [⟨29, 89⟩, ⟨41, 100⟩, ⟨1, 44⟩, ⟨13, 55⟩, ⟨28, 88⟩, ⟨40, 99⟩, ⟨12, 54⟩, ⟨27, 87⟩, ⟨39, 98⟩, ⟨11, 53⟩, ⟨26, 86⟩, ⟨38, 97⟩, ⟨10, 52⟩, ⟨25, 85⟩, ⟨37, 96⟩, ⟨9, 51⟩, ⟨21, 62⟩, ⟨24, 84⟩, ⟨36, 95⟩, ⟨8, 50⟩, ⟨20, 61⟩, ⟨23, 83⟩, ⟨35, 94⟩, ⟨7, 49⟩, ⟨19, 60⟩, ⟨22, 82⟩, ⟨34, 93⟩, ⟨6, 48⟩, ⟨18, 59⟩, ⟨33, 92⟩, ⟨5, 47⟩, ⟨17, 58⟩, ⟨32, 91⟩, ⟨4, 46⟩, ⟨16, 57⟩, ⟨31, 90⟩, ⟨3, 45⟩, ⟨15, 56⟩, ⟨30, 89⟩, ⟨42, 100⟩, ⟨2, 44⟩, ⟨14, 55⟩, ⟨43, 144⟩]⟩
theorem profile2608_checked : profile2608.check := by decide +kernel

noncomputable def selection0_2608 : Selection :=
  ⟨0, -2, 3, (941/100), 219, 1534, -1656⟩
theorem selection0_2608_checked : selection0_2608.check profile2608 := by decide +kernel

noncomputable def selection1_2608 : Selection :=
  ⟨1, -10, 7, (911/100), 49, 1242, -1288⟩
theorem selection1_2608_checked : selection1_2608.check profile2608 := by decide +kernel

noncomputable def selection2_2608 : Selection :=
  ⟨2, -18, 11, (901/100), 21, 982, -920⟩
theorem selection2_2608_checked : selection2_2608.check profile2608 := by decide +kernel

noncomputable def profile2609 : ProfileCell :=
  ⟨(145/158), (56/61),
    [47, 45, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 44, 45, 46, 47],
    [⟨43, 145⟩, ⟨29, 89⟩, ⟨41, 100⟩, ⟨1, 44⟩, ⟨13, 55⟩, ⟨28, 88⟩, ⟨40, 99⟩, ⟨12, 54⟩, ⟨27, 87⟩, ⟨39, 98⟩, ⟨11, 53⟩, ⟨26, 86⟩, ⟨38, 97⟩, ⟨10, 52⟩, ⟨25, 85⟩, ⟨37, 96⟩, ⟨9, 51⟩, ⟨21, 62⟩, ⟨24, 84⟩, ⟨36, 95⟩, ⟨8, 50⟩, ⟨20, 61⟩, ⟨23, 83⟩, ⟨35, 94⟩, ⟨7, 49⟩, ⟨19, 60⟩, ⟨22, 82⟩, ⟨34, 93⟩, ⟨6, 48⟩, ⟨18, 59⟩, ⟨33, 92⟩, ⟨5, 47⟩, ⟨17, 58⟩, ⟨32, 91⟩, ⟨4, 46⟩, ⟨16, 57⟩, ⟨31, 90⟩, ⟨3, 45⟩, ⟨15, 56⟩, ⟨30, 89⟩, ⟨42, 100⟩, ⟨2, 44⟩, ⟨14, 55⟩]⟩
theorem profile2609_checked : profile2609.check := by decide +kernel

noncomputable def selection0_2609 : Selection :=
  ⟨0, -2, 3, (927/100), 343, -206, 240⟩
theorem selection0_2609_checked : selection0_2609.check profile2609 := by decide +kernel

noncomputable def selection1_2609 : Selection :=
  ⟨1, -10, 7, (909/100), 77, -498, 608⟩
theorem selection1_2609_checked : selection1_2609.check profile2609 := by decide +kernel

noncomputable def selection2_2609 : Selection :=
  ⟨2, -18, 11, (903/100), 34, -758, 976⟩
theorem selection2_2609_checked : selection2_2609.check profile2609 := by decide +kernel

noncomputable def profile2610 : ProfileCell :=
  ⟨(56/61), (101/110),
    [47, 45, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 44, 45, 46, 47],
    [⟨14, 56⟩, ⟨29, 89⟩, ⟨43, 145⟩, ⟨1, 44⟩, ⟨41, 100⟩, ⟨13, 55⟩, ⟨28, 88⟩, ⟨40, 99⟩, ⟨12, 54⟩, ⟨27, 87⟩, ⟨39, 98⟩, ⟨11, 53⟩, ⟨26, 86⟩, ⟨38, 97⟩, ⟨10, 52⟩, ⟨25, 85⟩, ⟨37, 96⟩, ⟨9, 51⟩, ⟨21, 62⟩, ⟨24, 84⟩, ⟨36, 95⟩, ⟨8, 50⟩, ⟨20, 61⟩, ⟨23, 83⟩, ⟨35, 94⟩, ⟨7, 49⟩, ⟨19, 60⟩, ⟨22, 82⟩, ⟨34, 93⟩, ⟨6, 48⟩, ⟨18, 59⟩, ⟨33, 92⟩, ⟨5, 47⟩, ⟨17, 58⟩, ⟨32, 91⟩, ⟨4, 46⟩, ⟨16, 57⟩, ⟨31, 90⟩, ⟨3, 45⟩, ⟨15, 56⟩, ⟨30, 89⟩, ⟨2, 44⟩, ⟨42, 100⟩]⟩
theorem profile2610_checked : profile2610.check := by decide +kernel

noncomputable def selection0_2610 : Selection :=
  ⟨0, -2, 3, (933/100), 165, -654, 728⟩
theorem selection0_2610_checked : selection0_2610.check profile2610 := by decide +kernel

noncomputable def selection1_2610 : Selection :=
  ⟨1, -10, 7, (913/100), 37, -946, 1096⟩
theorem selection1_2610_checked : selection1_2610.check profile2610 := by decide +kernel

noncomputable def selection2_2610 : Selection :=
  ⟨2, -18, 11, (907/100), 16, -1206, 1464⟩
theorem selection2_2610_checked : selection2_2610.check profile2610 := by decide +kernel

noncomputable def profile2611 : ProfileCell :=
  ⟨(101/110), (45/49),
    [47, 45, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 44, 45, 46, 47],
    [⟨42, 101⟩, ⟨14, 56⟩, ⟨29, 89⟩, ⟨1, 44⟩, ⟨43, 145⟩, ⟨41, 100⟩, ⟨13, 55⟩, ⟨28, 88⟩, ⟨40, 99⟩, ⟨12, 54⟩, ⟨27, 87⟩, ⟨39, 98⟩, ⟨11, 53⟩, ⟨26, 86⟩, ⟨38, 97⟩, ⟨10, 52⟩, ⟨25, 85⟩, ⟨37, 96⟩, ⟨9, 51⟩, ⟨21, 62⟩, ⟨24, 84⟩, ⟨36, 95⟩, ⟨8, 50⟩, ⟨20, 61⟩, ⟨23, 83⟩, ⟨35, 94⟩, ⟨7, 49⟩, ⟨19, 60⟩, ⟨22, 82⟩, ⟨34, 93⟩, ⟨6, 48⟩, ⟨18, 59⟩, ⟨33, 92⟩, ⟨5, 47⟩, ⟨17, 58⟩, ⟨32, 91⟩, ⟨4, 46⟩, ⟨16, 57⟩, ⟨31, 90⟩, ⟨3, 45⟩, ⟨15, 56⟩, ⟨30, 89⟩, ⟨2, 44⟩]⟩
theorem profile2611_checked : profile2611.check := by decide +kernel

noncomputable def selection0_2611 : Selection :=
  ⟨0, -2, 3, (467/50), 206, -48, 68⟩
theorem selection0_2611_checked : selection0_2611.check profile2611 := by decide +kernel

noncomputable def selection1_2611 : Selection :=
  ⟨1, -10, 7, (183/20), 47, -340, 436⟩
theorem selection1_2611_checked : selection1_2611.check profile2611 := by decide +kernel

noncomputable def selection2_2611 : Selection :=
  ⟨2, -18, 11, (91/10), 20, -600, 804⟩
theorem selection2_2611_checked : selection2_2611.check profile2611 := by decide +kernel

noncomputable def profile2612 : ProfileCell :=
  ⟨(45/49), (34/37),
    [47, 45, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 45, 45, 46, 47],
    [⟨2, 45⟩, ⟨30, 90⟩, ⟨14, 56⟩, ⟨42, 101⟩, ⟨1, 44⟩, ⟨29, 89⟩, ⟨13, 55⟩, ⟨41, 100⟩, ⟨43, 145⟩, ⟨28, 88⟩, ⟨12, 54⟩, ⟨40, 99⟩, ⟨27, 87⟩, ⟨11, 53⟩, ⟨39, 98⟩, ⟨26, 86⟩, ⟨10, 52⟩, ⟨38, 97⟩, ⟨25, 85⟩, ⟨9, 51⟩, ⟨37, 96⟩, ⟨21, 62⟩, ⟨24, 84⟩, ⟨8, 50⟩, ⟨36, 95⟩, ⟨20, 61⟩, ⟨23, 83⟩, ⟨7, 49⟩, ⟨35, 94⟩, ⟨19, 60⟩, ⟨22, 82⟩, ⟨6, 48⟩, ⟨34, 93⟩, ⟨18, 59⟩, ⟨5, 47⟩, ⟨33, 92⟩, ⟨17, 58⟩, ⟨4, 46⟩, ⟨32, 91⟩, ⟨16, 57⟩, ⟨3, 45⟩, ⟨31, 90⟩, ⟨15, 56⟩]⟩
theorem profile2612_checked : profile2612.check := by decide +kernel

noncomputable def selection0_2612 : Selection :=
  ⟨0, 0, 3, (1339/100), 876, -138, 166⟩
theorem selection0_2612_checked : selection0_2612.check profile2612 := by decide +kernel

noncomputable def selection1_2612 : Selection :=
  ⟨1, -8, 7, (1323/100), 199, -430, 534⟩
theorem selection1_2612_checked : selection1_2612.check profile2612 := by decide +kernel

noncomputable def selection2_2612 : Selection :=
  ⟨2, -16, 11, (659/50), 86, -690, 902⟩
theorem selection2_2612_checked : selection2_2612.check profile2612 := by decide +kernel

noncomputable def profile2613 : ProfileCell :=
  ⟨(34/37), (91/99),
    [47, 45, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 45, 45, 46, 47],
    [⟨2, 45⟩, ⟨14, 56⟩, ⟨30, 90⟩, ⟨42, 101⟩, ⟨1, 44⟩, ⟨13, 55⟩, ⟨29, 89⟩, ⟨41, 100⟩, ⟨43, 145⟩, ⟨12, 54⟩, ⟨28, 88⟩, ⟨40, 99⟩, ⟨11, 53⟩, ⟨27, 87⟩, ⟨39, 98⟩, ⟨10, 52⟩, ⟨26, 86⟩, ⟨38, 97⟩, ⟨9, 51⟩, ⟨25, 85⟩, ⟨21, 62⟩, ⟨37, 96⟩, ⟨8, 50⟩, ⟨24, 84⟩, ⟨20, 61⟩, ⟨36, 95⟩, ⟨7, 49⟩, ⟨23, 83⟩, ⟨19, 60⟩, ⟨35, 94⟩, ⟨6, 48⟩, ⟨22, 82⟩, ⟨18, 59⟩, ⟨34, 93⟩, ⟨5, 47⟩, ⟨17, 58⟩, ⟨33, 92⟩, ⟨4, 46⟩, ⟨16, 57⟩, ⟨32, 91⟩, ⟨3, 45⟩, ⟨15, 56⟩, ⟨31, 90⟩]⟩
theorem profile2613_checked : profile2613.check := by decide +kernel

noncomputable def selection0_2613 : Selection :=
  ⟨0, 0, 3, (1347/100), 436, -478, 536⟩
theorem selection0_2613_checked : selection0_2613.check profile2613 := by decide +kernel

noncomputable def selection1_2613 : Selection :=
  ⟨1, -8, 7, (1329/100), 99, -770, 904⟩
theorem selection1_2613_checked : selection1_2613.check profile2613 := by decide +kernel

noncomputable def selection2_2613 : Selection :=
  ⟨2, -16, 11, (331/25), 43, -1030, 1272⟩
theorem selection2_2613_checked : selection2_2613.check profile2613 := by decide +kernel

noncomputable def profile2614 : ProfileCell :=
  ⟨(91/99), (57/62),
    [47, 45, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 45, 45, 46, 47],
    [⟨31, 91⟩, ⟨2, 45⟩, ⟨14, 56⟩, ⟨30, 90⟩, ⟨42, 101⟩, ⟨1, 44⟩, ⟨13, 55⟩, ⟨29, 89⟩, ⟨41, 100⟩, ⟨12, 54⟩, ⟨43, 145⟩, ⟨28, 88⟩, ⟨40, 99⟩, ⟨11, 53⟩, ⟨27, 87⟩, ⟨39, 98⟩, ⟨10, 52⟩, ⟨26, 86⟩, ⟨38, 97⟩, ⟨9, 51⟩, ⟨25, 85⟩, ⟨21, 62⟩, ⟨37, 96⟩, ⟨8, 50⟩, ⟨24, 84⟩, ⟨20, 61⟩, ⟨36, 95⟩, ⟨7, 49⟩, ⟨23, 83⟩, ⟨19, 60⟩, ⟨35, 94⟩, ⟨6, 48⟩, ⟨22, 82⟩, ⟨18, 59⟩, ⟨34, 93⟩, ⟨5, 47⟩, ⟨17, 58⟩, ⟨33, 92⟩, ⟨4, 46⟩, ⟨16, 57⟩, ⟨32, 91⟩, ⟨3, 45⟩, ⟨15, 56⟩]⟩
theorem profile2614_checked : profile2614.check := by decide +kernel

noncomputable def selection0_2614 : Selection :=
  ⟨0, 0, 3, (337/25), 260, -114, 140⟩
theorem selection0_2614_checked : selection0_2614.check profile2614 := by decide +kernel

noncomputable def selection1_2614 : Selection :=
  ⟨1, -8, 7, (333/25), 59, -406, 508⟩
theorem selection1_2614_checked : selection1_2614.check profile2614 := by decide +kernel

noncomputable def selection2_2614 : Selection :=
  ⟨2, -16, 11, (663/50), 26, -666, 876⟩
theorem selection2_2614_checked : selection2_2614.check profile2614 := by decide +kernel

noncomputable def profile2615 : ProfileCell :=
  ⟨(57/62), (23/25),
    [47, 45, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 45, 45, 46, 47],
    [⟨15, 57⟩, ⟨31, 91⟩, ⟨2, 45⟩, ⟨14, 56⟩, ⟨30, 90⟩, ⟨1, 44⟩, ⟨42, 101⟩, ⟨13, 55⟩, ⟨29, 89⟩, ⟨41, 100⟩, ⟨12, 54⟩, ⟨28, 88⟩, ⟨43, 145⟩, ⟨40, 99⟩, ⟨11, 53⟩, ⟨27, 87⟩, ⟨39, 98⟩, ⟨10, 52⟩, ⟨26, 86⟩, ⟨38, 97⟩, ⟨9, 51⟩, ⟨25, 85⟩, ⟨21, 62⟩, ⟨37, 96⟩, ⟨8, 50⟩, ⟨24, 84⟩, ⟨20, 61⟩, ⟨36, 95⟩, ⟨7, 49⟩, ⟨23, 83⟩, ⟨19, 60⟩, ⟨35, 94⟩, ⟨6, 48⟩, ⟨22, 82⟩, ⟨18, 59⟩, ⟨34, 93⟩, ⟨5, 47⟩, ⟨17, 58⟩, ⟨33, 92⟩, ⟨4, 46⟩, ⟨16, 57⟩, ⟨32, 91⟩, ⟨3, 45⟩]⟩
theorem profile2615_checked : profile2615.check := by decide +kernel

noncomputable def selection0_2615 : Selection :=
  ⟨0, 0, 3, (1361/100), 1039, -342, 388⟩
theorem selection0_2615_checked : selection0_2615.check profile2615 := by decide +kernel

noncomputable def selection1_2615 : Selection :=
  ⟨1, -8, 7, (336/25), 236, -634, 756⟩
theorem selection1_2615_checked : selection1_2615.check profile2615 := by decide +kernel

noncomputable def selection2_2615 : Selection :=
  ⟨2, -16, 11, (1339/100), 102, -894, 1124⟩
theorem selection2_2615_checked : selection2_2615.check profile2615 := by decide +kernel

noncomputable def profile2616 : ProfileCell :=
  ⟨(23/25), (58/63),
    [47, 46, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 45, 46, 46, 47],
    [⟨3, 46⟩, ⟨32, 92⟩, ⟨15, 57⟩, ⟨2, 45⟩, ⟨31, 91⟩, ⟨14, 56⟩, ⟨1, 44⟩, ⟨30, 90⟩, ⟨13, 55⟩, ⟨42, 101⟩, ⟨29, 89⟩, ⟨12, 54⟩, ⟨41, 100⟩, ⟨28, 88⟩, ⟨11, 53⟩, ⟨40, 99⟩, ⟨43, 145⟩, ⟨27, 87⟩, ⟨10, 52⟩, ⟨39, 98⟩, ⟨26, 86⟩, ⟨9, 51⟩, ⟨38, 97⟩, ⟨21, 62⟩, ⟨25, 85⟩, ⟨8, 50⟩, ⟨37, 96⟩, ⟨20, 61⟩, ⟨24, 84⟩, ⟨7, 49⟩, ⟨36, 95⟩, ⟨19, 60⟩, ⟨23, 83⟩, ⟨6, 48⟩, ⟨35, 94⟩, ⟨18, 59⟩, ⟨22, 82⟩, ⟨5, 47⟩, ⟨34, 93⟩, ⟨17, 58⟩, ⟨4, 46⟩, ⟨33, 92⟩, ⟨16, 57⟩]⟩
theorem profile2616_checked : profile2616.check := by decide +kernel

noncomputable def selection0_2616 : Selection :=
  ⟨0, 1, 3, (63/4), 1181, -342, 388⟩
theorem selection0_2616_checked : selection0_2616.check profile2616 := by decide +kernel

noncomputable def selection1_2616 : Selection :=
  ⟨1, -7, 7, (1557/100), 269, -634, 756⟩
theorem selection1_2616_checked : selection1_2616.check profile2616 := by decide +kernel

noncomputable def selection2_2616 : Selection :=
  ⟨2, -15, 11, (1551/100), 116, -894, 1124⟩
theorem selection2_2616_checked : selection2_2616.check profile2616 := by decide +kernel

noncomputable def profile2617 : ProfileCell :=
  ⟨(58/63), (93/101),
    [47, 46, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 45, 46, 46, 47],
    [⟨16, 58⟩, ⟨3, 46⟩, ⟨32, 92⟩, ⟨15, 57⟩, ⟨2, 45⟩, ⟨31, 91⟩, ⟨14, 56⟩, ⟨1, 44⟩, ⟨30, 90⟩, ⟨13, 55⟩, ⟨42, 101⟩, ⟨29, 89⟩, ⟨12, 54⟩, ⟨41, 100⟩, ⟨28, 88⟩, ⟨11, 53⟩, ⟨40, 99⟩, ⟨27, 87⟩, ⟨43, 145⟩, ⟨10, 52⟩, ⟨39, 98⟩, ⟨26, 86⟩, ⟨9, 51⟩, ⟨38, 97⟩, ⟨21, 62⟩, ⟨25, 85⟩, ⟨8, 50⟩, ⟨37, 96⟩, ⟨20, 61⟩, ⟨24, 84⟩, ⟨7, 49⟩, ⟨36, 95⟩, ⟨19, 60⟩, ⟨23, 83⟩, ⟨6, 48⟩, ⟨35, 94⟩, ⟨18, 59⟩, ⟨22, 82⟩, ⟨5, 47⟩, ⟨34, 93⟩, ⟨17, 58⟩, ⟨4, 46⟩, ⟨33, 92⟩]⟩
theorem profile2617_checked : profile2617.check := by decide +kernel

noncomputable def selection0_2617 : Selection :=
  ⟨0, 1, 3, (1581/100), 294, -690, 766⟩
theorem selection0_2617_checked : selection0_2617.check profile2617 := by decide +kernel

noncomputable def selection1_2617 : Selection :=
  ⟨1, -7, 7, (1561/100), 67, -982, 1134⟩
theorem selection1_2617_checked : selection1_2617.check profile2617 := by decide +kernel

noncomputable def selection2_2617 : Selection :=
  ⟨2, -15, 11, (311/20), 29, -1242, 1502⟩
theorem selection2_2617_checked : selection2_2617.check profile2617 := by decide +kernel

noncomputable def profile2618 : ProfileCell :=
  ⟨(93/101), (35/38),
    [47, 46, 44, 42, 40, 38, 36, 34, 33, 31, 29, 27, 25, 23, 22, 20], [44, 45, 46, 46, 47],
    [⟨33, 93⟩, ⟨16, 58⟩, ⟨3, 46⟩, ⟨32, 92⟩, ⟨15, 57⟩, ⟨2, 45⟩, ⟨31, 91⟩, ⟨14, 56⟩, ⟨1, 44⟩, ⟨30, 90⟩, ⟨13, 55⟩, ⟨42, 101⟩, ⟨29, 89⟩, ⟨12, 54⟩, ⟨41, 100⟩, ⟨28, 88⟩, ⟨11, 53⟩, ⟨40, 99⟩, ⟨27, 87⟩, ⟨10, 52⟩, ⟨43, 145⟩, ⟨39, 98⟩, ⟨26, 86⟩, ⟨9, 51⟩, ⟨38, 97⟩, ⟨21, 62⟩, ⟨25, 85⟩, ⟨8, 50⟩, ⟨37, 96⟩, ⟨20, 61⟩, ⟨24, 84⟩, ⟨7, 49⟩, ⟨36, 95⟩, ⟨19, 60⟩, ⟨23, 83⟩, ⟨6, 48⟩, ⟨35, 94⟩, ⟨18, 59⟩, ⟨22, 82⟩, ⟨5, 47⟩, ⟨34, 93⟩, ⟨17, 58⟩, ⟨4, 46⟩]⟩
theorem profile2618_checked : profile2618.check := by decide +kernel

noncomputable def selection0_2618 : Selection :=
  ⟨0, 1, 3, (1583/100), 487, -132, 160⟩
theorem selection0_2618_checked : selection0_2618.check profile2618 := by decide +kernel

noncomputable def selection1_2618 : Selection :=
  ⟨1, -7, 7, (313/20), 111, -424, 528⟩
theorem selection1_2618_checked : selection1_2618.check profile2618 := by decide +kernel

noncomputable def selection2_2618 : Selection :=
  ⟨2, -15, 11, (1559/100), 48, -684, 896⟩
theorem selection2_2618_checked : selection2_2618.check profile2618 := by decide +kernel

noncomputable def profile2619 : ProfileCell :=
  ⟨(35/38), (47/51),
    [47, 46, 44, 42, 40, 38, 36, 35, 33, 31, 29, 27, 25, 23, 22, 20], [44, 45, 46, 46, 47],
    [⟨16, 58⟩, ⟨33, 93⟩, ⟨3, 46⟩, ⟨15, 57⟩, ⟨32, 92⟩, ⟨2, 45⟩, ⟨14, 56⟩, ⟨31, 91⟩, ⟨1, 44⟩, ⟨13, 55⟩, ⟨30, 90⟩, ⟨42, 101⟩, ⟨12, 54⟩, ⟨29, 89⟩, ⟨41, 100⟩, ⟨11, 53⟩, ⟨28, 88⟩, ⟨40, 99⟩, ⟨10, 52⟩, ⟨27, 87⟩, ⟨43, 145⟩, ⟨39, 98⟩, ⟨9, 51⟩, ⟨26, 86⟩, ⟨21, 62⟩, ⟨38, 97⟩, ⟨8, 50⟩, ⟨25, 85⟩, ⟨20, 61⟩, ⟨37, 96⟩, ⟨7, 49⟩, ⟨24, 84⟩, ⟨19, 60⟩, ⟨36, 95⟩, ⟨6, 48⟩, ⟨23, 83⟩, ⟨18, 59⟩, ⟨35, 94⟩, ⟨5, 47⟩, ⟨22, 82⟩, ⟨17, 58⟩, ⟨34, 93⟩, ⟨4, 46⟩]⟩
theorem profile2619_checked : profile2619.check := by decide +kernel

noncomputable def selection0_2619 : Selection :=
  ⟨0, 0, 3, (1403/100), 853, -622, 692⟩
theorem selection0_2619_checked : selection0_2619.check profile2619 := by decide +kernel

noncomputable def selection1_2619 : Selection :=
  ⟨1, -8, 7, (1379/100), 193, -914, 1060⟩
theorem selection1_2619_checked : selection1_2619.check profile2619 := by decide +kernel

noncomputable def selection2_2619 : Selection :=
  ⟨2, -16, 11, (343/25), 83, -1174, 1428⟩
theorem selection2_2619_checked : selection2_2619.check profile2619 := by decide +kernel

noncomputable def profile2620 : ProfileCell :=
  ⟨(47/51), (59/64),
    [47, 46, 44, 42, 40, 38, 36, 35, 33, 31, 29, 27, 25, 23, 22, 20], [44, 45, 46, 47, 47],
    [⟨4, 47⟩, ⟨34, 94⟩, ⟨16, 58⟩, ⟨3, 46⟩, ⟨33, 93⟩, ⟨15, 57⟩, ⟨2, 45⟩, ⟨32, 92⟩, ⟨14, 56⟩, ⟨1, 44⟩, ⟨31, 91⟩, ⟨13, 55⟩, ⟨30, 90⟩, ⟨12, 54⟩, ⟨42, 101⟩, ⟨29, 89⟩, ⟨11, 53⟩, ⟨41, 100⟩, ⟨28, 88⟩, ⟨10, 52⟩, ⟨40, 99⟩, ⟨27, 87⟩, ⟨9, 51⟩, ⟨39, 98⟩, ⟨43, 145⟩, ⟨26, 86⟩, ⟨21, 62⟩, ⟨8, 50⟩, ⟨38, 97⟩, ⟨25, 85⟩, ⟨20, 61⟩, ⟨7, 49⟩, ⟨37, 96⟩, ⟨24, 84⟩, ⟨19, 60⟩, ⟨6, 48⟩, ⟨36, 95⟩, ⟨23, 83⟩, ⟨18, 59⟩, ⟨5, 47⟩, ⟨35, 94⟩, ⟨22, 82⟩, ⟨17, 58⟩]⟩
theorem profile2620_checked : profile2620.check := by decide +kernel

noncomputable def selection0_2620 : Selection :=
  ⟨0, 2, 3, (453/25), 654, -528, 590⟩
theorem selection0_2620_checked : selection0_2620.check profile2620 := by decide +kernel

noncomputable def selection1_2620 : Selection :=
  ⟨1, -6, 7, (1787/100), 149, -820, 958⟩
theorem selection1_2620_checked : selection1_2620.check profile2620 := by decide +kernel

noncomputable def selection2_2620 : Selection :=
  ⟨2, -14, 11, (1779/100), 64, -1080, 1326⟩
theorem selection2_2620_checked : selection2_2620.check profile2620 := by decide +kernel

noncomputable def profile2621 : ProfileCell :=
  ⟨(59/64), (83/90),
    [47, 46, 44, 42, 40, 38, 36, 35, 33, 31, 29, 27, 25, 23, 22, 20], [44, 45, 46, 47, 47],
    [⟨17, 59⟩, ⟨4, 47⟩, ⟨34, 94⟩, ⟨16, 58⟩, ⟨3, 46⟩, ⟨33, 93⟩, ⟨15, 57⟩, ⟨2, 45⟩, ⟨32, 92⟩, ⟨14, 56⟩, ⟨1, 44⟩, ⟨31, 91⟩, ⟨13, 55⟩, ⟨30, 90⟩, ⟨12, 54⟩, ⟨42, 101⟩, ⟨29, 89⟩, ⟨11, 53⟩, ⟨41, 100⟩, ⟨28, 88⟩, ⟨10, 52⟩, ⟨40, 99⟩, ⟨27, 87⟩, ⟨9, 51⟩, ⟨39, 98⟩, ⟨26, 86⟩, ⟨43, 145⟩, ⟨21, 62⟩, ⟨8, 50⟩, ⟨38, 97⟩, ⟨25, 85⟩, ⟨20, 61⟩, ⟨7, 49⟩, ⟨37, 96⟩, ⟨24, 84⟩, ⟨19, 60⟩, ⟨6, 48⟩, ⟨36, 95⟩, ⟨23, 83⟩, ⟨18, 59⟩, ⟨5, 47⟩, ⟨35, 94⟩, ⟨22, 82⟩]⟩
theorem profile2621_checked : profile2621.check := by decide +kernel

noncomputable def selection0_2621 : Selection :=
  ⟨0, 2, 3, (1831/100), 748, -882, 974⟩
theorem selection0_2621_checked : selection0_2621.check profile2621 := by decide +kernel

noncomputable def selection1_2621 : Selection :=
  ⟨1, -6, 7, (1799/100), 170, -1174, 1342⟩
theorem selection1_2621_checked : selection1_2621.check profile2621 := by decide +kernel

noncomputable def selection2_2621 : Selection :=
  ⟨2, -14, 11, (1789/100), 73, -1434, 1710⟩
theorem selection2_2621_checked : selection2_2621.check profile2621 := by decide +kernel

noncomputable def profile2622 : ProfileCell :=
  ⟨(83/90), (95/103),
    [47, 46, 44, 42, 40, 38, 36, 35, 33, 31, 29, 27, 25, 23, 22, 20], [44, 45, 46, 47, 47],
    [⟨22, 83⟩, ⟨17, 59⟩, ⟨4, 47⟩, ⟨34, 94⟩, ⟨16, 58⟩, ⟨3, 46⟩, ⟨33, 93⟩, ⟨15, 57⟩, ⟨2, 45⟩, ⟨32, 92⟩, ⟨14, 56⟩, ⟨1, 44⟩, ⟨31, 91⟩, ⟨13, 55⟩, ⟨30, 90⟩, ⟨12, 54⟩, ⟨42, 101⟩, ⟨29, 89⟩, ⟨11, 53⟩, ⟨41, 100⟩, ⟨28, 88⟩, ⟨10, 52⟩, ⟨40, 99⟩, ⟨27, 87⟩, ⟨9, 51⟩, ⟨39, 98⟩, ⟨26, 86⟩, ⟨21, 62⟩, ⟨43, 145⟩, ⟨8, 50⟩, ⟨38, 97⟩, ⟨25, 85⟩, ⟨20, 61⟩, ⟨7, 49⟩, ⟨37, 96⟩, ⟨24, 84⟩, ⟨19, 60⟩, ⟨6, 48⟩, ⟨36, 95⟩, ⟨23, 83⟩, ⟨18, 59⟩, ⟨5, 47⟩, ⟨35, 94⟩]⟩
theorem profile2622_checked : profile2622.check := by decide +kernel

noncomputable def selection0_2622 : Selection :=
  ⟨0, 2, 3, (1833/100), 233, -384, 434⟩
theorem selection0_2622_checked : selection0_2622.check profile2622 := by decide +kernel

noncomputable def selection1_2622 : Selection :=
  ⟨1, -6, 7, (1801/100), 53, -676, 802⟩
theorem selection1_2622_checked : selection1_2622.check profile2622 := by decide +kernel

noncomputable def selection2_2622 : Selection :=
  ⟨2, -14, 11, (1791/100), 23, -936, 1170⟩
theorem selection2_2622_checked : selection2_2622.check profile2622 := by decide +kernel

noncomputable def profile2623 : ProfileCell :=
  ⟨(95/103), (12/13),
    [47, 46, 44, 42, 40, 38, 36, 35, 33, 31, 29, 27, 25, 23, 22, 20], [44, 45, 46, 47, 47],
    [⟨35, 95⟩, ⟨22, 83⟩, ⟨17, 59⟩, ⟨4, 47⟩, ⟨34, 94⟩, ⟨16, 58⟩, ⟨3, 46⟩, ⟨33, 93⟩, ⟨15, 57⟩, ⟨2, 45⟩, ⟨32, 92⟩, ⟨14, 56⟩, ⟨1, 44⟩, ⟨31, 91⟩, ⟨13, 55⟩, ⟨30, 90⟩, ⟨12, 54⟩, ⟨42, 101⟩, ⟨29, 89⟩, ⟨11, 53⟩, ⟨41, 100⟩, ⟨28, 88⟩, ⟨10, 52⟩, ⟨40, 99⟩, ⟨27, 87⟩, ⟨9, 51⟩, ⟨39, 98⟩, ⟨26, 86⟩, ⟨21, 62⟩, ⟨8, 50⟩, ⟨43, 145⟩, ⟨38, 97⟩, ⟨25, 85⟩, ⟨20, 61⟩, ⟨7, 49⟩, ⟨37, 96⟩, ⟨24, 84⟩, ⟨19, 60⟩, ⟨6, 48⟩, ⟨36, 95⟩, ⟨23, 83⟩, ⟨18, 59⟩, ⟨5, 47⟩]⟩
theorem profile2623_checked : profile2623.check := by decide +kernel

noncomputable def selection0_2623 : Selection :=
  ⟨0, 2, 3, (917/50), 1609, -4, 22⟩
theorem selection0_2623_checked : selection0_2623.check profile2623 := by decide +kernel

noncomputable def selection1_2623 : Selection :=
  ⟨1, -6, 7, (452/25), 366, -296, 390⟩
theorem selection1_2623_checked : selection1_2623.check profile2623 := by decide +kernel

noncomputable def selection2_2623 : Selection :=
  ⟨2, -14, 11, 18, 158, -556, 758⟩
theorem selection2_2623_checked : selection2_2623.check profile2623 := by decide +kernel

noncomputable def leaf0_2560 : Block :=
  Block.single profile2560 selection0_2560 profile2560_checked selection0_2560_checked
noncomputable def leaf0_2561 : Block :=
  Block.single profile2561 selection0_2561 profile2561_checked selection0_2561_checked
noncomputable def leaf0_2562 : Block :=
  Block.single profile2562 selection0_2562 profile2562_checked selection0_2562_checked
noncomputable def leaf0_2563 : Block :=
  Block.single profile2563 selection0_2563 profile2563_checked selection0_2563_checked
noncomputable def leaf0_2564 : Block :=
  Block.single profile2564 selection0_2564 profile2564_checked selection0_2564_checked
noncomputable def leaf0_2565 : Block :=
  Block.single profile2565 selection0_2565 profile2565_checked selection0_2565_checked
noncomputable def leaf0_2566 : Block :=
  Block.single profile2566 selection0_2566 profile2566_checked selection0_2566_checked
noncomputable def leaf0_2567 : Block :=
  Block.single profile2567 selection0_2567 profile2567_checked selection0_2567_checked
noncomputable def leaf0_2568 : Block :=
  Block.single profile2568 selection0_2568 profile2568_checked selection0_2568_checked
noncomputable def leaf0_2569 : Block :=
  Block.single profile2569 selection0_2569 profile2569_checked selection0_2569_checked
noncomputable def leaf0_2570 : Block :=
  Block.single profile2570 selection0_2570 profile2570_checked selection0_2570_checked
noncomputable def leaf0_2571 : Block :=
  Block.single profile2571 selection0_2571 profile2571_checked selection0_2571_checked
noncomputable def leaf0_2572 : Block :=
  Block.single profile2572 selection0_2572 profile2572_checked selection0_2572_checked
noncomputable def leaf0_2573 : Block :=
  Block.single profile2573 selection0_2573 profile2573_checked selection0_2573_checked
noncomputable def leaf0_2574 : Block :=
  Block.single profile2574 selection0_2574 profile2574_checked selection0_2574_checked
noncomputable def leaf0_2575 : Block :=
  Block.single profile2575 selection0_2575 profile2575_checked selection0_2575_checked
noncomputable def leaf0_2576 : Block :=
  Block.single profile2576 selection0_2576 profile2576_checked selection0_2576_checked
noncomputable def leaf0_2577 : Block :=
  Block.single profile2577 selection0_2577 profile2577_checked selection0_2577_checked
noncomputable def leaf0_2578 : Block :=
  Block.single profile2578 selection0_2578 profile2578_checked selection0_2578_checked
noncomputable def leaf0_2579 : Block :=
  Block.single profile2579 selection0_2579 profile2579_checked selection0_2579_checked
noncomputable def leaf0_2580 : Block :=
  Block.single profile2580 selection0_2580 profile2580_checked selection0_2580_checked
noncomputable def leaf0_2581 : Block :=
  Block.single profile2581 selection0_2581 profile2581_checked selection0_2581_checked
noncomputable def leaf0_2582 : Block :=
  Block.single profile2582 selection0_2582 profile2582_checked selection0_2582_checked
noncomputable def leaf0_2583 : Block :=
  Block.single profile2583 selection0_2583 profile2583_checked selection0_2583_checked
noncomputable def leaf0_2584 : Block :=
  Block.single profile2584 selection0_2584 profile2584_checked selection0_2584_checked
noncomputable def leaf0_2585 : Block :=
  Block.single profile2585 selection0_2585 profile2585_checked selection0_2585_checked
noncomputable def leaf0_2586 : Block :=
  Block.single profile2586 selection0_2586 profile2586_checked selection0_2586_checked
noncomputable def leaf0_2587 : Block :=
  Block.single profile2587 selection0_2587 profile2587_checked selection0_2587_checked
noncomputable def leaf0_2588 : Block :=
  Block.single profile2588 selection0_2588 profile2588_checked selection0_2588_checked
noncomputable def leaf0_2589 : Block :=
  Block.single profile2589 selection0_2589 profile2589_checked selection0_2589_checked
noncomputable def leaf0_2590 : Block :=
  Block.single profile2590 selection0_2590 profile2590_checked selection0_2590_checked
noncomputable def leaf0_2591 : Block :=
  Block.single profile2591 selection0_2591 profile2591_checked selection0_2591_checked
noncomputable def leaf0_2592 : Block :=
  Block.single profile2592 selection0_2592 profile2592_checked selection0_2592_checked
noncomputable def leaf0_2593 : Block :=
  Block.single profile2593 selection0_2593 profile2593_checked selection0_2593_checked
noncomputable def leaf0_2594 : Block :=
  Block.single profile2594 selection0_2594 profile2594_checked selection0_2594_checked
noncomputable def leaf0_2595 : Block :=
  Block.single profile2595 selection0_2595 profile2595_checked selection0_2595_checked
noncomputable def leaf0_2596 : Block :=
  Block.single profile2596 selection0_2596 profile2596_checked selection0_2596_checked
noncomputable def leaf0_2597 : Block :=
  Block.single profile2597 selection0_2597 profile2597_checked selection0_2597_checked
noncomputable def leaf0_2598 : Block :=
  Block.single profile2598 selection0_2598 profile2598_checked selection0_2598_checked
noncomputable def leaf0_2599 : Block :=
  Block.single profile2599 selection0_2599 profile2599_checked selection0_2599_checked
noncomputable def leaf0_2600 : Block :=
  Block.single profile2600 selection0_2600 profile2600_checked selection0_2600_checked
noncomputable def leaf0_2601 : Block :=
  Block.single profile2601 selection0_2601 profile2601_checked selection0_2601_checked
noncomputable def leaf0_2602 : Block :=
  Block.single profile2602 selection0_2602 profile2602_checked selection0_2602_checked
noncomputable def leaf0_2603 : Block :=
  Block.single profile2603 selection0_2603 profile2603_checked selection0_2603_checked
noncomputable def leaf0_2604 : Block :=
  Block.single profile2604 selection0_2604 profile2604_checked selection0_2604_checked
noncomputable def leaf0_2605 : Block :=
  Block.single profile2605 selection0_2605 profile2605_checked selection0_2605_checked
noncomputable def leaf0_2606 : Block :=
  Block.single profile2606 selection0_2606 profile2606_checked selection0_2606_checked
noncomputable def leaf0_2607 : Block :=
  Block.single profile2607 selection0_2607 profile2607_checked selection0_2607_checked
noncomputable def leaf0_2608 : Block :=
  Block.single profile2608 selection0_2608 profile2608_checked selection0_2608_checked
noncomputable def leaf0_2609 : Block :=
  Block.single profile2609 selection0_2609 profile2609_checked selection0_2609_checked
noncomputable def leaf0_2610 : Block :=
  Block.single profile2610 selection0_2610 profile2610_checked selection0_2610_checked
noncomputable def leaf0_2611 : Block :=
  Block.single profile2611 selection0_2611 profile2611_checked selection0_2611_checked
noncomputable def leaf0_2612 : Block :=
  Block.single profile2612 selection0_2612 profile2612_checked selection0_2612_checked
noncomputable def leaf0_2613 : Block :=
  Block.single profile2613 selection0_2613 profile2613_checked selection0_2613_checked
noncomputable def leaf0_2614 : Block :=
  Block.single profile2614 selection0_2614 profile2614_checked selection0_2614_checked
noncomputable def leaf0_2615 : Block :=
  Block.single profile2615 selection0_2615 profile2615_checked selection0_2615_checked
noncomputable def leaf0_2616 : Block :=
  Block.single profile2616 selection0_2616 profile2616_checked selection0_2616_checked
noncomputable def leaf0_2617 : Block :=
  Block.single profile2617 selection0_2617 profile2617_checked selection0_2617_checked
noncomputable def leaf0_2618 : Block :=
  Block.single profile2618 selection0_2618 profile2618_checked selection0_2618_checked
noncomputable def leaf0_2619 : Block :=
  Block.single profile2619 selection0_2619 profile2619_checked selection0_2619_checked
noncomputable def leaf0_2620 : Block :=
  Block.single profile2620 selection0_2620 profile2620_checked selection0_2620_checked
noncomputable def leaf0_2621 : Block :=
  Block.single profile2621 selection0_2621 profile2621_checked selection0_2621_checked
noncomputable def leaf0_2622 : Block :=
  Block.single profile2622 selection0_2622 profile2622_checked selection0_2622_checked
noncomputable def leaf0_2623 : Block :=
  Block.single profile2623 selection0_2623 profile2623_checked selection0_2623_checked
noncomputable def batch040p0_0_0000 : Block :=
  Block.append leaf0_2560 leaf0_2561 (by decide +kernel)
noncomputable def batch040p0_0_0001 : Block :=
  Block.append leaf0_2562 leaf0_2563 (by decide +kernel)
noncomputable def batch040p0_0_0002 : Block :=
  Block.append leaf0_2564 leaf0_2565 (by decide +kernel)
noncomputable def batch040p0_0_0003 : Block :=
  Block.append leaf0_2566 leaf0_2567 (by decide +kernel)
noncomputable def batch040p0_0_0004 : Block :=
  Block.append leaf0_2568 leaf0_2569 (by decide +kernel)
noncomputable def batch040p0_0_0005 : Block :=
  Block.append leaf0_2570 leaf0_2571 (by decide +kernel)
noncomputable def batch040p0_0_0006 : Block :=
  Block.append leaf0_2572 leaf0_2573 (by decide +kernel)
noncomputable def batch040p0_0_0007 : Block :=
  Block.append leaf0_2574 leaf0_2575 (by decide +kernel)
noncomputable def batch040p0_0_0008 : Block :=
  Block.append leaf0_2576 leaf0_2577 (by decide +kernel)
noncomputable def batch040p0_0_0009 : Block :=
  Block.append leaf0_2578 leaf0_2579 (by decide +kernel)
noncomputable def batch040p0_0_0010 : Block :=
  Block.append leaf0_2580 leaf0_2581 (by decide +kernel)
noncomputable def batch040p0_0_0011 : Block :=
  Block.append leaf0_2582 leaf0_2583 (by decide +kernel)
noncomputable def batch040p0_0_0012 : Block :=
  Block.append leaf0_2584 leaf0_2585 (by decide +kernel)
noncomputable def batch040p0_0_0013 : Block :=
  Block.append leaf0_2586 leaf0_2587 (by decide +kernel)
noncomputable def batch040p0_0_0014 : Block :=
  Block.append leaf0_2588 leaf0_2589 (by decide +kernel)
noncomputable def batch040p0_0_0015 : Block :=
  Block.append leaf0_2590 leaf0_2591 (by decide +kernel)
noncomputable def batch040p0_0_0016 : Block :=
  Block.append leaf0_2592 leaf0_2593 (by decide +kernel)
noncomputable def batch040p0_0_0017 : Block :=
  Block.append leaf0_2594 leaf0_2595 (by decide +kernel)
noncomputable def batch040p0_0_0018 : Block :=
  Block.append leaf0_2596 leaf0_2597 (by decide +kernel)
noncomputable def batch040p0_0_0019 : Block :=
  Block.append leaf0_2598 leaf0_2599 (by decide +kernel)
noncomputable def batch040p0_0_0020 : Block :=
  Block.append leaf0_2600 leaf0_2601 (by decide +kernel)
noncomputable def batch040p0_0_0021 : Block :=
  Block.append leaf0_2602 leaf0_2603 (by decide +kernel)
noncomputable def batch040p0_0_0022 : Block :=
  Block.append leaf0_2604 leaf0_2605 (by decide +kernel)
noncomputable def batch040p0_0_0023 : Block :=
  Block.append leaf0_2606 leaf0_2607 (by decide +kernel)
noncomputable def batch040p0_0_0024 : Block :=
  Block.append leaf0_2608 leaf0_2609 (by decide +kernel)
noncomputable def batch040p0_0_0025 : Block :=
  Block.append leaf0_2610 leaf0_2611 (by decide +kernel)
noncomputable def batch040p0_0_0026 : Block :=
  Block.append leaf0_2612 leaf0_2613 (by decide +kernel)
noncomputable def batch040p0_0_0027 : Block :=
  Block.append leaf0_2614 leaf0_2615 (by decide +kernel)
noncomputable def batch040p0_0_0028 : Block :=
  Block.append leaf0_2616 leaf0_2617 (by decide +kernel)
noncomputable def batch040p0_0_0029 : Block :=
  Block.append leaf0_2618 leaf0_2619 (by decide +kernel)
noncomputable def batch040p0_0_0030 : Block :=
  Block.append leaf0_2620 leaf0_2621 (by decide +kernel)
noncomputable def batch040p0_0_0031 : Block :=
  Block.append leaf0_2622 leaf0_2623 (by decide +kernel)
noncomputable def batch040p0_1_0000 : Block :=
  Block.append batch040p0_0_0000 batch040p0_0_0001 (by decide +kernel)
noncomputable def batch040p0_1_0001 : Block :=
  Block.append batch040p0_0_0002 batch040p0_0_0003 (by decide +kernel)
noncomputable def batch040p0_1_0002 : Block :=
  Block.append batch040p0_0_0004 batch040p0_0_0005 (by decide +kernel)
noncomputable def batch040p0_1_0003 : Block :=
  Block.append batch040p0_0_0006 batch040p0_0_0007 (by decide +kernel)
noncomputable def batch040p0_1_0004 : Block :=
  Block.append batch040p0_0_0008 batch040p0_0_0009 (by decide +kernel)
noncomputable def batch040p0_1_0005 : Block :=
  Block.append batch040p0_0_0010 batch040p0_0_0011 (by decide +kernel)
noncomputable def batch040p0_1_0006 : Block :=
  Block.append batch040p0_0_0012 batch040p0_0_0013 (by decide +kernel)
noncomputable def batch040p0_1_0007 : Block :=
  Block.append batch040p0_0_0014 batch040p0_0_0015 (by decide +kernel)
noncomputable def batch040p0_1_0008 : Block :=
  Block.append batch040p0_0_0016 batch040p0_0_0017 (by decide +kernel)
noncomputable def batch040p0_1_0009 : Block :=
  Block.append batch040p0_0_0018 batch040p0_0_0019 (by decide +kernel)
noncomputable def batch040p0_1_0010 : Block :=
  Block.append batch040p0_0_0020 batch040p0_0_0021 (by decide +kernel)
noncomputable def batch040p0_1_0011 : Block :=
  Block.append batch040p0_0_0022 batch040p0_0_0023 (by decide +kernel)
noncomputable def batch040p0_1_0012 : Block :=
  Block.append batch040p0_0_0024 batch040p0_0_0025 (by decide +kernel)
noncomputable def batch040p0_1_0013 : Block :=
  Block.append batch040p0_0_0026 batch040p0_0_0027 (by decide +kernel)
noncomputable def batch040p0_1_0014 : Block :=
  Block.append batch040p0_0_0028 batch040p0_0_0029 (by decide +kernel)
noncomputable def batch040p0_1_0015 : Block :=
  Block.append batch040p0_0_0030 batch040p0_0_0031 (by decide +kernel)
noncomputable def batch040p0_2_0000 : Block :=
  Block.append batch040p0_1_0000 batch040p0_1_0001 (by decide +kernel)
noncomputable def batch040p0_2_0001 : Block :=
  Block.append batch040p0_1_0002 batch040p0_1_0003 (by decide +kernel)
noncomputable def batch040p0_2_0002 : Block :=
  Block.append batch040p0_1_0004 batch040p0_1_0005 (by decide +kernel)
noncomputable def batch040p0_2_0003 : Block :=
  Block.append batch040p0_1_0006 batch040p0_1_0007 (by decide +kernel)
noncomputable def batch040p0_2_0004 : Block :=
  Block.append batch040p0_1_0008 batch040p0_1_0009 (by decide +kernel)
noncomputable def batch040p0_2_0005 : Block :=
  Block.append batch040p0_1_0010 batch040p0_1_0011 (by decide +kernel)
noncomputable def batch040p0_2_0006 : Block :=
  Block.append batch040p0_1_0012 batch040p0_1_0013 (by decide +kernel)
noncomputable def batch040p0_2_0007 : Block :=
  Block.append batch040p0_1_0014 batch040p0_1_0015 (by decide +kernel)
noncomputable def batch040p0_3_0000 : Block :=
  Block.append batch040p0_2_0000 batch040p0_2_0001 (by decide +kernel)
noncomputable def batch040p0_3_0001 : Block :=
  Block.append batch040p0_2_0002 batch040p0_2_0003 (by decide +kernel)
noncomputable def batch040p0_3_0002 : Block :=
  Block.append batch040p0_2_0004 batch040p0_2_0005 (by decide +kernel)
noncomputable def batch040p0_3_0003 : Block :=
  Block.append batch040p0_2_0006 batch040p0_2_0007 (by decide +kernel)
noncomputable def batch040p0_4_0000 : Block :=
  Block.append batch040p0_3_0000 batch040p0_3_0001 (by decide +kernel)
noncomputable def batch040p0_4_0001 : Block :=
  Block.append batch040p0_3_0002 batch040p0_3_0003 (by decide +kernel)
noncomputable def batch040p0_5_0000 : Block :=
  Block.append batch040p0_4_0000 batch040p0_4_0001 (by decide +kernel)
theorem batch040p0_5_0000_left : batch040p0_5_0000.left = (89/99) := by decide +kernel
theorem batch040p0_5_0000_right : batch040p0_5_0000.right = (12/13) := by decide +kernel
theorem batch040p0_5_0000_units : batch040p0_5_0000.units = 44359 := by decide +kernel
noncomputable def leaf1_2560 : Block :=
  Block.single profile2560 selection1_2560 profile2560_checked selection1_2560_checked
noncomputable def leaf1_2561 : Block :=
  Block.single profile2561 selection1_2561 profile2561_checked selection1_2561_checked
noncomputable def leaf1_2562 : Block :=
  Block.single profile2562 selection1_2562 profile2562_checked selection1_2562_checked
noncomputable def leaf1_2563 : Block :=
  Block.single profile2563 selection1_2563 profile2563_checked selection1_2563_checked
noncomputable def leaf1_2564 : Block :=
  Block.single profile2564 selection1_2564 profile2564_checked selection1_2564_checked
noncomputable def leaf1_2565 : Block :=
  Block.single profile2565 selection1_2565 profile2565_checked selection1_2565_checked
noncomputable def leaf1_2566 : Block :=
  Block.single profile2566 selection1_2566 profile2566_checked selection1_2566_checked
noncomputable def leaf1_2567 : Block :=
  Block.single profile2567 selection1_2567 profile2567_checked selection1_2567_checked
noncomputable def leaf1_2568 : Block :=
  Block.single profile2568 selection1_2568 profile2568_checked selection1_2568_checked
noncomputable def leaf1_2569 : Block :=
  Block.single profile2569 selection1_2569 profile2569_checked selection1_2569_checked
noncomputable def leaf1_2570 : Block :=
  Block.single profile2570 selection1_2570 profile2570_checked selection1_2570_checked
noncomputable def leaf1_2571 : Block :=
  Block.single profile2571 selection1_2571 profile2571_checked selection1_2571_checked
noncomputable def leaf1_2572 : Block :=
  Block.single profile2572 selection1_2572 profile2572_checked selection1_2572_checked
noncomputable def leaf1_2573 : Block :=
  Block.single profile2573 selection1_2573 profile2573_checked selection1_2573_checked
noncomputable def leaf1_2574 : Block :=
  Block.single profile2574 selection1_2574 profile2574_checked selection1_2574_checked
noncomputable def leaf1_2575 : Block :=
  Block.single profile2575 selection1_2575 profile2575_checked selection1_2575_checked
noncomputable def leaf1_2576 : Block :=
  Block.single profile2576 selection1_2576 profile2576_checked selection1_2576_checked
noncomputable def leaf1_2577 : Block :=
  Block.single profile2577 selection1_2577 profile2577_checked selection1_2577_checked
noncomputable def leaf1_2578 : Block :=
  Block.single profile2578 selection1_2578 profile2578_checked selection1_2578_checked
noncomputable def leaf1_2579 : Block :=
  Block.single profile2579 selection1_2579 profile2579_checked selection1_2579_checked
noncomputable def leaf1_2580 : Block :=
  Block.single profile2580 selection1_2580 profile2580_checked selection1_2580_checked
noncomputable def leaf1_2581 : Block :=
  Block.single profile2581 selection1_2581 profile2581_checked selection1_2581_checked
noncomputable def leaf1_2582 : Block :=
  Block.single profile2582 selection1_2582 profile2582_checked selection1_2582_checked
noncomputable def leaf1_2583 : Block :=
  Block.single profile2583 selection1_2583 profile2583_checked selection1_2583_checked
noncomputable def leaf1_2584 : Block :=
  Block.single profile2584 selection1_2584 profile2584_checked selection1_2584_checked
noncomputable def leaf1_2585 : Block :=
  Block.single profile2585 selection1_2585 profile2585_checked selection1_2585_checked
noncomputable def leaf1_2586 : Block :=
  Block.single profile2586 selection1_2586 profile2586_checked selection1_2586_checked
noncomputable def leaf1_2587 : Block :=
  Block.single profile2587 selection1_2587 profile2587_checked selection1_2587_checked
noncomputable def leaf1_2588 : Block :=
  Block.single profile2588 selection1_2588 profile2588_checked selection1_2588_checked
noncomputable def leaf1_2589 : Block :=
  Block.single profile2589 selection1_2589 profile2589_checked selection1_2589_checked
noncomputable def leaf1_2590 : Block :=
  Block.single profile2590 selection1_2590 profile2590_checked selection1_2590_checked
noncomputable def leaf1_2591 : Block :=
  Block.single profile2591 selection1_2591 profile2591_checked selection1_2591_checked
noncomputable def leaf1_2592 : Block :=
  Block.single profile2592 selection1_2592 profile2592_checked selection1_2592_checked
noncomputable def leaf1_2593 : Block :=
  Block.single profile2593 selection1_2593 profile2593_checked selection1_2593_checked
noncomputable def leaf1_2594 : Block :=
  Block.single profile2594 selection1_2594 profile2594_checked selection1_2594_checked
noncomputable def leaf1_2595 : Block :=
  Block.single profile2595 selection1_2595 profile2595_checked selection1_2595_checked
noncomputable def leaf1_2596 : Block :=
  Block.single profile2596 selection1_2596 profile2596_checked selection1_2596_checked
noncomputable def leaf1_2597 : Block :=
  Block.single profile2597 selection1_2597 profile2597_checked selection1_2597_checked
noncomputable def leaf1_2598 : Block :=
  Block.single profile2598 selection1_2598 profile2598_checked selection1_2598_checked
noncomputable def leaf1_2599 : Block :=
  Block.single profile2599 selection1_2599 profile2599_checked selection1_2599_checked
noncomputable def leaf1_2600 : Block :=
  Block.single profile2600 selection1_2600 profile2600_checked selection1_2600_checked
noncomputable def leaf1_2601 : Block :=
  Block.single profile2601 selection1_2601 profile2601_checked selection1_2601_checked
noncomputable def leaf1_2602 : Block :=
  Block.single profile2602 selection1_2602 profile2602_checked selection1_2602_checked
noncomputable def leaf1_2603 : Block :=
  Block.single profile2603 selection1_2603 profile2603_checked selection1_2603_checked
noncomputable def leaf1_2604 : Block :=
  Block.single profile2604 selection1_2604 profile2604_checked selection1_2604_checked
noncomputable def leaf1_2605 : Block :=
  Block.single profile2605 selection1_2605 profile2605_checked selection1_2605_checked
noncomputable def leaf1_2606 : Block :=
  Block.single profile2606 selection1_2606 profile2606_checked selection1_2606_checked
noncomputable def leaf1_2607 : Block :=
  Block.single profile2607 selection1_2607 profile2607_checked selection1_2607_checked
noncomputable def leaf1_2608 : Block :=
  Block.single profile2608 selection1_2608 profile2608_checked selection1_2608_checked
noncomputable def leaf1_2609 : Block :=
  Block.single profile2609 selection1_2609 profile2609_checked selection1_2609_checked
noncomputable def leaf1_2610 : Block :=
  Block.single profile2610 selection1_2610 profile2610_checked selection1_2610_checked
noncomputable def leaf1_2611 : Block :=
  Block.single profile2611 selection1_2611 profile2611_checked selection1_2611_checked
noncomputable def leaf1_2612 : Block :=
  Block.single profile2612 selection1_2612 profile2612_checked selection1_2612_checked
noncomputable def leaf1_2613 : Block :=
  Block.single profile2613 selection1_2613 profile2613_checked selection1_2613_checked
noncomputable def leaf1_2614 : Block :=
  Block.single profile2614 selection1_2614 profile2614_checked selection1_2614_checked
noncomputable def leaf1_2615 : Block :=
  Block.single profile2615 selection1_2615 profile2615_checked selection1_2615_checked
noncomputable def leaf1_2616 : Block :=
  Block.single profile2616 selection1_2616 profile2616_checked selection1_2616_checked
noncomputable def leaf1_2617 : Block :=
  Block.single profile2617 selection1_2617 profile2617_checked selection1_2617_checked
noncomputable def leaf1_2618 : Block :=
  Block.single profile2618 selection1_2618 profile2618_checked selection1_2618_checked
noncomputable def leaf1_2619 : Block :=
  Block.single profile2619 selection1_2619 profile2619_checked selection1_2619_checked
noncomputable def leaf1_2620 : Block :=
  Block.single profile2620 selection1_2620 profile2620_checked selection1_2620_checked
noncomputable def leaf1_2621 : Block :=
  Block.single profile2621 selection1_2621 profile2621_checked selection1_2621_checked
noncomputable def leaf1_2622 : Block :=
  Block.single profile2622 selection1_2622 profile2622_checked selection1_2622_checked
noncomputable def leaf1_2623 : Block :=
  Block.single profile2623 selection1_2623 profile2623_checked selection1_2623_checked
noncomputable def batch040p1_0_0000 : Block :=
  Block.append leaf1_2560 leaf1_2561 (by decide +kernel)
noncomputable def batch040p1_0_0001 : Block :=
  Block.append leaf1_2562 leaf1_2563 (by decide +kernel)
noncomputable def batch040p1_0_0002 : Block :=
  Block.append leaf1_2564 leaf1_2565 (by decide +kernel)
noncomputable def batch040p1_0_0003 : Block :=
  Block.append leaf1_2566 leaf1_2567 (by decide +kernel)
noncomputable def batch040p1_0_0004 : Block :=
  Block.append leaf1_2568 leaf1_2569 (by decide +kernel)
noncomputable def batch040p1_0_0005 : Block :=
  Block.append leaf1_2570 leaf1_2571 (by decide +kernel)
noncomputable def batch040p1_0_0006 : Block :=
  Block.append leaf1_2572 leaf1_2573 (by decide +kernel)
noncomputable def batch040p1_0_0007 : Block :=
  Block.append leaf1_2574 leaf1_2575 (by decide +kernel)
noncomputable def batch040p1_0_0008 : Block :=
  Block.append leaf1_2576 leaf1_2577 (by decide +kernel)
noncomputable def batch040p1_0_0009 : Block :=
  Block.append leaf1_2578 leaf1_2579 (by decide +kernel)
noncomputable def batch040p1_0_0010 : Block :=
  Block.append leaf1_2580 leaf1_2581 (by decide +kernel)
noncomputable def batch040p1_0_0011 : Block :=
  Block.append leaf1_2582 leaf1_2583 (by decide +kernel)
noncomputable def batch040p1_0_0012 : Block :=
  Block.append leaf1_2584 leaf1_2585 (by decide +kernel)
noncomputable def batch040p1_0_0013 : Block :=
  Block.append leaf1_2586 leaf1_2587 (by decide +kernel)
noncomputable def batch040p1_0_0014 : Block :=
  Block.append leaf1_2588 leaf1_2589 (by decide +kernel)
noncomputable def batch040p1_0_0015 : Block :=
  Block.append leaf1_2590 leaf1_2591 (by decide +kernel)
noncomputable def batch040p1_0_0016 : Block :=
  Block.append leaf1_2592 leaf1_2593 (by decide +kernel)
noncomputable def batch040p1_0_0017 : Block :=
  Block.append leaf1_2594 leaf1_2595 (by decide +kernel)
noncomputable def batch040p1_0_0018 : Block :=
  Block.append leaf1_2596 leaf1_2597 (by decide +kernel)
noncomputable def batch040p1_0_0019 : Block :=
  Block.append leaf1_2598 leaf1_2599 (by decide +kernel)
noncomputable def batch040p1_0_0020 : Block :=
  Block.append leaf1_2600 leaf1_2601 (by decide +kernel)
noncomputable def batch040p1_0_0021 : Block :=
  Block.append leaf1_2602 leaf1_2603 (by decide +kernel)
noncomputable def batch040p1_0_0022 : Block :=
  Block.append leaf1_2604 leaf1_2605 (by decide +kernel)
noncomputable def batch040p1_0_0023 : Block :=
  Block.append leaf1_2606 leaf1_2607 (by decide +kernel)
noncomputable def batch040p1_0_0024 : Block :=
  Block.append leaf1_2608 leaf1_2609 (by decide +kernel)
noncomputable def batch040p1_0_0025 : Block :=
  Block.append leaf1_2610 leaf1_2611 (by decide +kernel)
noncomputable def batch040p1_0_0026 : Block :=
  Block.append leaf1_2612 leaf1_2613 (by decide +kernel)
noncomputable def batch040p1_0_0027 : Block :=
  Block.append leaf1_2614 leaf1_2615 (by decide +kernel)
noncomputable def batch040p1_0_0028 : Block :=
  Block.append leaf1_2616 leaf1_2617 (by decide +kernel)
noncomputable def batch040p1_0_0029 : Block :=
  Block.append leaf1_2618 leaf1_2619 (by decide +kernel)
noncomputable def batch040p1_0_0030 : Block :=
  Block.append leaf1_2620 leaf1_2621 (by decide +kernel)
noncomputable def batch040p1_0_0031 : Block :=
  Block.append leaf1_2622 leaf1_2623 (by decide +kernel)
noncomputable def batch040p1_1_0000 : Block :=
  Block.append batch040p1_0_0000 batch040p1_0_0001 (by decide +kernel)
noncomputable def batch040p1_1_0001 : Block :=
  Block.append batch040p1_0_0002 batch040p1_0_0003 (by decide +kernel)
noncomputable def batch040p1_1_0002 : Block :=
  Block.append batch040p1_0_0004 batch040p1_0_0005 (by decide +kernel)
noncomputable def batch040p1_1_0003 : Block :=
  Block.append batch040p1_0_0006 batch040p1_0_0007 (by decide +kernel)
noncomputable def batch040p1_1_0004 : Block :=
  Block.append batch040p1_0_0008 batch040p1_0_0009 (by decide +kernel)
noncomputable def batch040p1_1_0005 : Block :=
  Block.append batch040p1_0_0010 batch040p1_0_0011 (by decide +kernel)
noncomputable def batch040p1_1_0006 : Block :=
  Block.append batch040p1_0_0012 batch040p1_0_0013 (by decide +kernel)
noncomputable def batch040p1_1_0007 : Block :=
  Block.append batch040p1_0_0014 batch040p1_0_0015 (by decide +kernel)
noncomputable def batch040p1_1_0008 : Block :=
  Block.append batch040p1_0_0016 batch040p1_0_0017 (by decide +kernel)
noncomputable def batch040p1_1_0009 : Block :=
  Block.append batch040p1_0_0018 batch040p1_0_0019 (by decide +kernel)
noncomputable def batch040p1_1_0010 : Block :=
  Block.append batch040p1_0_0020 batch040p1_0_0021 (by decide +kernel)
noncomputable def batch040p1_1_0011 : Block :=
  Block.append batch040p1_0_0022 batch040p1_0_0023 (by decide +kernel)
noncomputable def batch040p1_1_0012 : Block :=
  Block.append batch040p1_0_0024 batch040p1_0_0025 (by decide +kernel)
noncomputable def batch040p1_1_0013 : Block :=
  Block.append batch040p1_0_0026 batch040p1_0_0027 (by decide +kernel)
noncomputable def batch040p1_1_0014 : Block :=
  Block.append batch040p1_0_0028 batch040p1_0_0029 (by decide +kernel)
noncomputable def batch040p1_1_0015 : Block :=
  Block.append batch040p1_0_0030 batch040p1_0_0031 (by decide +kernel)
noncomputable def batch040p1_2_0000 : Block :=
  Block.append batch040p1_1_0000 batch040p1_1_0001 (by decide +kernel)
noncomputable def batch040p1_2_0001 : Block :=
  Block.append batch040p1_1_0002 batch040p1_1_0003 (by decide +kernel)
noncomputable def batch040p1_2_0002 : Block :=
  Block.append batch040p1_1_0004 batch040p1_1_0005 (by decide +kernel)
noncomputable def batch040p1_2_0003 : Block :=
  Block.append batch040p1_1_0006 batch040p1_1_0007 (by decide +kernel)
noncomputable def batch040p1_2_0004 : Block :=
  Block.append batch040p1_1_0008 batch040p1_1_0009 (by decide +kernel)
noncomputable def batch040p1_2_0005 : Block :=
  Block.append batch040p1_1_0010 batch040p1_1_0011 (by decide +kernel)
noncomputable def batch040p1_2_0006 : Block :=
  Block.append batch040p1_1_0012 batch040p1_1_0013 (by decide +kernel)
noncomputable def batch040p1_2_0007 : Block :=
  Block.append batch040p1_1_0014 batch040p1_1_0015 (by decide +kernel)
noncomputable def batch040p1_3_0000 : Block :=
  Block.append batch040p1_2_0000 batch040p1_2_0001 (by decide +kernel)
noncomputable def batch040p1_3_0001 : Block :=
  Block.append batch040p1_2_0002 batch040p1_2_0003 (by decide +kernel)
noncomputable def batch040p1_3_0002 : Block :=
  Block.append batch040p1_2_0004 batch040p1_2_0005 (by decide +kernel)
noncomputable def batch040p1_3_0003 : Block :=
  Block.append batch040p1_2_0006 batch040p1_2_0007 (by decide +kernel)
noncomputable def batch040p1_4_0000 : Block :=
  Block.append batch040p1_3_0000 batch040p1_3_0001 (by decide +kernel)
noncomputable def batch040p1_4_0001 : Block :=
  Block.append batch040p1_3_0002 batch040p1_3_0003 (by decide +kernel)
noncomputable def batch040p1_5_0000 : Block :=
  Block.append batch040p1_4_0000 batch040p1_4_0001 (by decide +kernel)
theorem batch040p1_5_0000_left : batch040p1_5_0000.left = (188/99) := by decide +kernel
theorem batch040p1_5_0000_right : batch040p1_5_0000.right = (25/13) := by decide +kernel
theorem batch040p1_5_0000_units : batch040p1_5_0000.units = 9810 := by decide +kernel
noncomputable def leaf2_2560 : Block :=
  Block.single profile2560 selection2_2560 profile2560_checked selection2_2560_checked
noncomputable def leaf2_2561 : Block :=
  Block.single profile2561 selection2_2561 profile2561_checked selection2_2561_checked
noncomputable def leaf2_2562 : Block :=
  Block.single profile2562 selection2_2562 profile2562_checked selection2_2562_checked
noncomputable def leaf2_2563 : Block :=
  Block.single profile2563 selection2_2563 profile2563_checked selection2_2563_checked
noncomputable def leaf2_2564 : Block :=
  Block.single profile2564 selection2_2564 profile2564_checked selection2_2564_checked
noncomputable def leaf2_2565 : Block :=
  Block.single profile2565 selection2_2565 profile2565_checked selection2_2565_checked
noncomputable def leaf2_2566 : Block :=
  Block.single profile2566 selection2_2566 profile2566_checked selection2_2566_checked
noncomputable def leaf2_2567 : Block :=
  Block.single profile2567 selection2_2567 profile2567_checked selection2_2567_checked
noncomputable def leaf2_2568 : Block :=
  Block.single profile2568 selection2_2568 profile2568_checked selection2_2568_checked
noncomputable def leaf2_2569 : Block :=
  Block.single profile2569 selection2_2569 profile2569_checked selection2_2569_checked
noncomputable def leaf2_2570 : Block :=
  Block.single profile2570 selection2_2570 profile2570_checked selection2_2570_checked
noncomputable def leaf2_2571 : Block :=
  Block.single profile2571 selection2_2571 profile2571_checked selection2_2571_checked
noncomputable def leaf2_2572 : Block :=
  Block.single profile2572 selection2_2572 profile2572_checked selection2_2572_checked
noncomputable def leaf2_2573 : Block :=
  Block.single profile2573 selection2_2573 profile2573_checked selection2_2573_checked
noncomputable def leaf2_2574 : Block :=
  Block.single profile2574 selection2_2574 profile2574_checked selection2_2574_checked
noncomputable def leaf2_2575 : Block :=
  Block.single profile2575 selection2_2575 profile2575_checked selection2_2575_checked
noncomputable def leaf2_2576 : Block :=
  Block.single profile2576 selection2_2576 profile2576_checked selection2_2576_checked
noncomputable def leaf2_2577 : Block :=
  Block.single profile2577 selection2_2577 profile2577_checked selection2_2577_checked
noncomputable def leaf2_2578 : Block :=
  Block.single profile2578 selection2_2578 profile2578_checked selection2_2578_checked
noncomputable def leaf2_2579 : Block :=
  Block.single profile2579 selection2_2579 profile2579_checked selection2_2579_checked
noncomputable def leaf2_2580 : Block :=
  Block.single profile2580 selection2_2580 profile2580_checked selection2_2580_checked
noncomputable def leaf2_2581 : Block :=
  Block.single profile2581 selection2_2581 profile2581_checked selection2_2581_checked
noncomputable def leaf2_2582 : Block :=
  Block.single profile2582 selection2_2582 profile2582_checked selection2_2582_checked
noncomputable def leaf2_2583 : Block :=
  Block.single profile2583 selection2_2583 profile2583_checked selection2_2583_checked
noncomputable def leaf2_2584 : Block :=
  Block.single profile2584 selection2_2584 profile2584_checked selection2_2584_checked
noncomputable def leaf2_2585 : Block :=
  Block.single profile2585 selection2_2585 profile2585_checked selection2_2585_checked
noncomputable def leaf2_2586 : Block :=
  Block.single profile2586 selection2_2586 profile2586_checked selection2_2586_checked
noncomputable def leaf2_2587 : Block :=
  Block.single profile2587 selection2_2587 profile2587_checked selection2_2587_checked
noncomputable def leaf2_2588 : Block :=
  Block.single profile2588 selection2_2588 profile2588_checked selection2_2588_checked
noncomputable def leaf2_2589 : Block :=
  Block.single profile2589 selection2_2589 profile2589_checked selection2_2589_checked
noncomputable def leaf2_2590 : Block :=
  Block.single profile2590 selection2_2590 profile2590_checked selection2_2590_checked
noncomputable def leaf2_2591 : Block :=
  Block.single profile2591 selection2_2591 profile2591_checked selection2_2591_checked
noncomputable def leaf2_2592 : Block :=
  Block.single profile2592 selection2_2592 profile2592_checked selection2_2592_checked
noncomputable def leaf2_2593 : Block :=
  Block.single profile2593 selection2_2593 profile2593_checked selection2_2593_checked
noncomputable def leaf2_2594 : Block :=
  Block.single profile2594 selection2_2594 profile2594_checked selection2_2594_checked
noncomputable def leaf2_2595 : Block :=
  Block.single profile2595 selection2_2595 profile2595_checked selection2_2595_checked
noncomputable def leaf2_2596 : Block :=
  Block.single profile2596 selection2_2596 profile2596_checked selection2_2596_checked
noncomputable def leaf2_2597 : Block :=
  Block.single profile2597 selection2_2597 profile2597_checked selection2_2597_checked
noncomputable def leaf2_2598 : Block :=
  Block.single profile2598 selection2_2598 profile2598_checked selection2_2598_checked
noncomputable def leaf2_2599 : Block :=
  Block.single profile2599 selection2_2599 profile2599_checked selection2_2599_checked
noncomputable def leaf2_2600 : Block :=
  Block.single profile2600 selection2_2600 profile2600_checked selection2_2600_checked
noncomputable def leaf2_2601 : Block :=
  Block.single profile2601 selection2_2601 profile2601_checked selection2_2601_checked
noncomputable def leaf2_2602 : Block :=
  Block.single profile2602 selection2_2602 profile2602_checked selection2_2602_checked
noncomputable def leaf2_2603 : Block :=
  Block.single profile2603 selection2_2603 profile2603_checked selection2_2603_checked
noncomputable def leaf2_2604 : Block :=
  Block.single profile2604 selection2_2604 profile2604_checked selection2_2604_checked
noncomputable def leaf2_2605 : Block :=
  Block.single profile2605 selection2_2605 profile2605_checked selection2_2605_checked
noncomputable def leaf2_2606 : Block :=
  Block.single profile2606 selection2_2606 profile2606_checked selection2_2606_checked
noncomputable def leaf2_2607 : Block :=
  Block.single profile2607 selection2_2607 profile2607_checked selection2_2607_checked
noncomputable def leaf2_2608 : Block :=
  Block.single profile2608 selection2_2608 profile2608_checked selection2_2608_checked
noncomputable def leaf2_2609 : Block :=
  Block.single profile2609 selection2_2609 profile2609_checked selection2_2609_checked
noncomputable def leaf2_2610 : Block :=
  Block.single profile2610 selection2_2610 profile2610_checked selection2_2610_checked
noncomputable def leaf2_2611 : Block :=
  Block.single profile2611 selection2_2611 profile2611_checked selection2_2611_checked
noncomputable def leaf2_2612 : Block :=
  Block.single profile2612 selection2_2612 profile2612_checked selection2_2612_checked
noncomputable def leaf2_2613 : Block :=
  Block.single profile2613 selection2_2613 profile2613_checked selection2_2613_checked
noncomputable def leaf2_2614 : Block :=
  Block.single profile2614 selection2_2614 profile2614_checked selection2_2614_checked
noncomputable def leaf2_2615 : Block :=
  Block.single profile2615 selection2_2615 profile2615_checked selection2_2615_checked
noncomputable def leaf2_2616 : Block :=
  Block.single profile2616 selection2_2616 profile2616_checked selection2_2616_checked
noncomputable def leaf2_2617 : Block :=
  Block.single profile2617 selection2_2617 profile2617_checked selection2_2617_checked
noncomputable def leaf2_2618 : Block :=
  Block.single profile2618 selection2_2618 profile2618_checked selection2_2618_checked
noncomputable def leaf2_2619 : Block :=
  Block.single profile2619 selection2_2619 profile2619_checked selection2_2619_checked
noncomputable def leaf2_2620 : Block :=
  Block.single profile2620 selection2_2620 profile2620_checked selection2_2620_checked
noncomputable def leaf2_2621 : Block :=
  Block.single profile2621 selection2_2621 profile2621_checked selection2_2621_checked
noncomputable def leaf2_2622 : Block :=
  Block.single profile2622 selection2_2622 profile2622_checked selection2_2622_checked
noncomputable def leaf2_2623 : Block :=
  Block.single profile2623 selection2_2623 profile2623_checked selection2_2623_checked
noncomputable def batch040p2_0_0000 : Block :=
  Block.append leaf2_2560 leaf2_2561 (by decide +kernel)
noncomputable def batch040p2_0_0001 : Block :=
  Block.append leaf2_2562 leaf2_2563 (by decide +kernel)
noncomputable def batch040p2_0_0002 : Block :=
  Block.append leaf2_2564 leaf2_2565 (by decide +kernel)
noncomputable def batch040p2_0_0003 : Block :=
  Block.append leaf2_2566 leaf2_2567 (by decide +kernel)
noncomputable def batch040p2_0_0004 : Block :=
  Block.append leaf2_2568 leaf2_2569 (by decide +kernel)
noncomputable def batch040p2_0_0005 : Block :=
  Block.append leaf2_2570 leaf2_2571 (by decide +kernel)
noncomputable def batch040p2_0_0006 : Block :=
  Block.append leaf2_2572 leaf2_2573 (by decide +kernel)
noncomputable def batch040p2_0_0007 : Block :=
  Block.append leaf2_2574 leaf2_2575 (by decide +kernel)
noncomputable def batch040p2_0_0008 : Block :=
  Block.append leaf2_2576 leaf2_2577 (by decide +kernel)
noncomputable def batch040p2_0_0009 : Block :=
  Block.append leaf2_2578 leaf2_2579 (by decide +kernel)
noncomputable def batch040p2_0_0010 : Block :=
  Block.append leaf2_2580 leaf2_2581 (by decide +kernel)
noncomputable def batch040p2_0_0011 : Block :=
  Block.append leaf2_2582 leaf2_2583 (by decide +kernel)
noncomputable def batch040p2_0_0012 : Block :=
  Block.append leaf2_2584 leaf2_2585 (by decide +kernel)
noncomputable def batch040p2_0_0013 : Block :=
  Block.append leaf2_2586 leaf2_2587 (by decide +kernel)
noncomputable def batch040p2_0_0014 : Block :=
  Block.append leaf2_2588 leaf2_2589 (by decide +kernel)
noncomputable def batch040p2_0_0015 : Block :=
  Block.append leaf2_2590 leaf2_2591 (by decide +kernel)
noncomputable def batch040p2_0_0016 : Block :=
  Block.append leaf2_2592 leaf2_2593 (by decide +kernel)
noncomputable def batch040p2_0_0017 : Block :=
  Block.append leaf2_2594 leaf2_2595 (by decide +kernel)
noncomputable def batch040p2_0_0018 : Block :=
  Block.append leaf2_2596 leaf2_2597 (by decide +kernel)
noncomputable def batch040p2_0_0019 : Block :=
  Block.append leaf2_2598 leaf2_2599 (by decide +kernel)
noncomputable def batch040p2_0_0020 : Block :=
  Block.append leaf2_2600 leaf2_2601 (by decide +kernel)
noncomputable def batch040p2_0_0021 : Block :=
  Block.append leaf2_2602 leaf2_2603 (by decide +kernel)
noncomputable def batch040p2_0_0022 : Block :=
  Block.append leaf2_2604 leaf2_2605 (by decide +kernel)
noncomputable def batch040p2_0_0023 : Block :=
  Block.append leaf2_2606 leaf2_2607 (by decide +kernel)
noncomputable def batch040p2_0_0024 : Block :=
  Block.append leaf2_2608 leaf2_2609 (by decide +kernel)
noncomputable def batch040p2_0_0025 : Block :=
  Block.append leaf2_2610 leaf2_2611 (by decide +kernel)
noncomputable def batch040p2_0_0026 : Block :=
  Block.append leaf2_2612 leaf2_2613 (by decide +kernel)
noncomputable def batch040p2_0_0027 : Block :=
  Block.append leaf2_2614 leaf2_2615 (by decide +kernel)
noncomputable def batch040p2_0_0028 : Block :=
  Block.append leaf2_2616 leaf2_2617 (by decide +kernel)
noncomputable def batch040p2_0_0029 : Block :=
  Block.append leaf2_2618 leaf2_2619 (by decide +kernel)
noncomputable def batch040p2_0_0030 : Block :=
  Block.append leaf2_2620 leaf2_2621 (by decide +kernel)
noncomputable def batch040p2_0_0031 : Block :=
  Block.append leaf2_2622 leaf2_2623 (by decide +kernel)
noncomputable def batch040p2_1_0000 : Block :=
  Block.append batch040p2_0_0000 batch040p2_0_0001 (by decide +kernel)
noncomputable def batch040p2_1_0001 : Block :=
  Block.append batch040p2_0_0002 batch040p2_0_0003 (by decide +kernel)
noncomputable def batch040p2_1_0002 : Block :=
  Block.append batch040p2_0_0004 batch040p2_0_0005 (by decide +kernel)
noncomputable def batch040p2_1_0003 : Block :=
  Block.append batch040p2_0_0006 batch040p2_0_0007 (by decide +kernel)
noncomputable def batch040p2_1_0004 : Block :=
  Block.append batch040p2_0_0008 batch040p2_0_0009 (by decide +kernel)
noncomputable def batch040p2_1_0005 : Block :=
  Block.append batch040p2_0_0010 batch040p2_0_0011 (by decide +kernel)
noncomputable def batch040p2_1_0006 : Block :=
  Block.append batch040p2_0_0012 batch040p2_0_0013 (by decide +kernel)
noncomputable def batch040p2_1_0007 : Block :=
  Block.append batch040p2_0_0014 batch040p2_0_0015 (by decide +kernel)
noncomputable def batch040p2_1_0008 : Block :=
  Block.append batch040p2_0_0016 batch040p2_0_0017 (by decide +kernel)
noncomputable def batch040p2_1_0009 : Block :=
  Block.append batch040p2_0_0018 batch040p2_0_0019 (by decide +kernel)
noncomputable def batch040p2_1_0010 : Block :=
  Block.append batch040p2_0_0020 batch040p2_0_0021 (by decide +kernel)
noncomputable def batch040p2_1_0011 : Block :=
  Block.append batch040p2_0_0022 batch040p2_0_0023 (by decide +kernel)
noncomputable def batch040p2_1_0012 : Block :=
  Block.append batch040p2_0_0024 batch040p2_0_0025 (by decide +kernel)
noncomputable def batch040p2_1_0013 : Block :=
  Block.append batch040p2_0_0026 batch040p2_0_0027 (by decide +kernel)
noncomputable def batch040p2_1_0014 : Block :=
  Block.append batch040p2_0_0028 batch040p2_0_0029 (by decide +kernel)
noncomputable def batch040p2_1_0015 : Block :=
  Block.append batch040p2_0_0030 batch040p2_0_0031 (by decide +kernel)
noncomputable def batch040p2_2_0000 : Block :=
  Block.append batch040p2_1_0000 batch040p2_1_0001 (by decide +kernel)
noncomputable def batch040p2_2_0001 : Block :=
  Block.append batch040p2_1_0002 batch040p2_1_0003 (by decide +kernel)
noncomputable def batch040p2_2_0002 : Block :=
  Block.append batch040p2_1_0004 batch040p2_1_0005 (by decide +kernel)
noncomputable def batch040p2_2_0003 : Block :=
  Block.append batch040p2_1_0006 batch040p2_1_0007 (by decide +kernel)
noncomputable def batch040p2_2_0004 : Block :=
  Block.append batch040p2_1_0008 batch040p2_1_0009 (by decide +kernel)
noncomputable def batch040p2_2_0005 : Block :=
  Block.append batch040p2_1_0010 batch040p2_1_0011 (by decide +kernel)
noncomputable def batch040p2_2_0006 : Block :=
  Block.append batch040p2_1_0012 batch040p2_1_0013 (by decide +kernel)
noncomputable def batch040p2_2_0007 : Block :=
  Block.append batch040p2_1_0014 batch040p2_1_0015 (by decide +kernel)
noncomputable def batch040p2_3_0000 : Block :=
  Block.append batch040p2_2_0000 batch040p2_2_0001 (by decide +kernel)
noncomputable def batch040p2_3_0001 : Block :=
  Block.append batch040p2_2_0002 batch040p2_2_0003 (by decide +kernel)
noncomputable def batch040p2_3_0002 : Block :=
  Block.append batch040p2_2_0004 batch040p2_2_0005 (by decide +kernel)
noncomputable def batch040p2_3_0003 : Block :=
  Block.append batch040p2_2_0006 batch040p2_2_0007 (by decide +kernel)
noncomputable def batch040p2_4_0000 : Block :=
  Block.append batch040p2_3_0000 batch040p2_3_0001 (by decide +kernel)
noncomputable def batch040p2_4_0001 : Block :=
  Block.append batch040p2_3_0002 batch040p2_3_0003 (by decide +kernel)
noncomputable def batch040p2_5_0000 : Block :=
  Block.append batch040p2_4_0000 batch040p2_4_0001 (by decide +kernel)
theorem batch040p2_5_0000_left : batch040p2_5_0000.left = (287/99) := by decide +kernel
theorem batch040p2_5_0000_right : batch040p2_5_0000.right = (38/13) := by decide +kernel
theorem batch040p2_5_0000_units : batch040p2_5_0000.units = 4208 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
