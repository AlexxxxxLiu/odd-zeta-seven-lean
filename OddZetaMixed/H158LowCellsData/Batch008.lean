import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile0512 : ProfileCell :=
  ⟨(11/61), (17/94),
    [9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 3], [8, 8, 9, 9, 9],
    [⟨14, 11⟩, ⟨3, 9⟩, ⟨32, 18⟩, ⟨20, 12⟩, ⟨9, 10⟩, ⟨38, 19⟩, ⟨27, 17⟩, ⟨15, 11⟩, ⟨4, 9⟩, ⟨33, 18⟩, ⟨22, 16⟩, ⟨21, 12⟩, ⟨10, 10⟩, ⟨39, 19⟩, ⟨28, 17⟩, ⟨16, 11⟩, ⟨5, 9⟩, ⟨34, 18⟩, ⟨23, 16⟩, ⟨11, 10⟩, ⟨40, 19⟩, ⟨29, 17⟩, ⟨43, 28⟩, ⟨17, 11⟩, ⟨6, 9⟩, ⟨35, 18⟩, ⟨24, 16⟩, ⟨12, 10⟩, ⟨1, 8⟩, ⟨41, 19⟩, ⟨30, 17⟩, ⟨18, 11⟩, ⟨7, 9⟩, ⟨36, 18⟩, ⟨25, 16⟩, ⟨13, 10⟩, ⟨2, 8⟩, ⟨42, 19⟩, ⟨31, 17⟩, ⟨19, 11⟩, ⟨8, 9⟩, ⟨37, 18⟩, ⟨26, 16⟩]⟩
theorem profile0512_checked : profile0512.check := by decide +kernel

noncomputable def selection1_0512 : Selection :=
  ⟨1, -1, 4, (1589/100), 597, -164, 1042⟩
theorem selection1_0512_checked : selection1_0512.check profile0512 := by decide +kernel

noncomputable def selection2_0512 : Selection :=
  ⟨2, -9, 8, (1561/100), 172, -176, 1410⟩
theorem selection2_0512_checked : selection2_0512.check profile0512 := by decide +kernel

noncomputable def profile0513 : ProfileCell :=
  ⟨(17/94), (19/105),
    [9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 3], [8, 8, 9, 9, 9],
    [⟨26, 17⟩, ⟨14, 11⟩, ⟨3, 9⟩, ⟨32, 18⟩, ⟨20, 12⟩, ⟨9, 10⟩, ⟨38, 19⟩, ⟨27, 17⟩, ⟨15, 11⟩, ⟨4, 9⟩, ⟨33, 18⟩, ⟨22, 16⟩, ⟨21, 12⟩, ⟨10, 10⟩, ⟨39, 19⟩, ⟨28, 17⟩, ⟨16, 11⟩, ⟨5, 9⟩, ⟨34, 18⟩, ⟨23, 16⟩, ⟨11, 10⟩, ⟨40, 19⟩, ⟨29, 17⟩, ⟨17, 11⟩, ⟨43, 28⟩, ⟨6, 9⟩, ⟨35, 18⟩, ⟨24, 16⟩, ⟨12, 10⟩, ⟨1, 8⟩, ⟨41, 19⟩, ⟨30, 17⟩, ⟨18, 11⟩, ⟨7, 9⟩, ⟨36, 18⟩, ⟨25, 16⟩, ⟨13, 10⟩, ⟨2, 8⟩, ⟨42, 19⟩, ⟨31, 17⟩, ⟨19, 11⟩, ⟨8, 9⟩, ⟨37, 18⟩]⟩
theorem profile0513_checked : profile0513.check := by decide +kernel

noncomputable def selection1_0513 : Selection :=
  ⟨1, -1, 4, (1591/100), 116, -62, 478⟩
theorem selection1_0513_checked : selection1_0513.check profile0513 := by decide +kernel

noncomputable def selection2_0513 : Selection :=
  ⟨2, -9, 8, (1563/100), 34, -74, 846⟩
theorem selection2_0513_checked : selection2_0513.check profile0513 := by decide +kernel

noncomputable def profile0514 : ProfileCell :=
  ⟨(19/105), (2/11),
    [9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 3], [8, 8, 9, 9, 9],
    [⟨37, 19⟩, ⟨26, 17⟩, ⟨14, 11⟩, ⟨3, 9⟩, ⟨32, 18⟩, ⟨20, 12⟩, ⟨9, 10⟩, ⟨38, 19⟩, ⟨27, 17⟩, ⟨15, 11⟩, ⟨4, 9⟩, ⟨33, 18⟩, ⟨22, 16⟩, ⟨21, 12⟩, ⟨10, 10⟩, ⟨39, 19⟩, ⟨28, 17⟩, ⟨16, 11⟩, ⟨5, 9⟩, ⟨34, 18⟩, ⟨23, 16⟩, ⟨11, 10⟩, ⟨40, 19⟩, ⟨29, 17⟩, ⟨17, 11⟩, ⟨6, 9⟩, ⟨43, 28⟩, ⟨35, 18⟩, ⟨24, 16⟩, ⟨12, 10⟩, ⟨1, 8⟩, ⟨41, 19⟩, ⟨30, 17⟩, ⟨18, 11⟩, ⟨7, 9⟩, ⟨36, 18⟩, ⟨25, 16⟩, ⟨13, 10⟩, ⟨2, 8⟩, ⟨42, 19⟩, ⟨31, 17⟩, ⟨19, 11⟩, ⟨8, 9⟩]⟩
theorem profile0514_checked : profile0514.check := by decide +kernel

noncomputable def selection1_0514 : Selection :=
  ⟨1, -1, 4, (1593/100), 989, 14, 58⟩
theorem selection1_0514_checked : selection1_0514.check profile0514 := by decide +kernel

noncomputable def selection2_0514 : Selection :=
  ⟨2, -9, 8, (1571/100), 286, 2, 426⟩
theorem selection2_0514_checked : selection2_0514.check profile0514 := by decide +kernel

noncomputable def profile0515 : ProfileCell :=
  ⟨(2/11), (19/104),
    [9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4], [8, 8, 9, 9, 9],
    [⟨8, 10⟩, ⟨19, 12⟩, ⟨31, 18⟩, ⟨42, 20⟩, ⟨3, 9⟩, ⟨14, 11⟩, ⟨26, 17⟩, ⟨37, 19⟩, ⟨9, 10⟩, ⟨20, 12⟩, ⟨32, 18⟩, ⟨4, 9⟩, ⟨15, 11⟩, ⟨27, 17⟩, ⟨38, 19⟩, ⟨10, 10⟩, ⟨21, 12⟩, ⟨22, 16⟩, ⟨33, 18⟩, ⟨5, 9⟩, ⟨16, 11⟩, ⟨28, 17⟩, ⟨39, 19⟩, ⟨11, 10⟩, ⟨23, 16⟩, ⟨34, 18⟩, ⟨6, 9⟩, ⟨17, 11⟩, ⟨29, 17⟩, ⟨40, 19⟩, ⟨1, 8⟩, ⟨12, 10⟩, ⟨24, 16⟩, ⟨35, 18⟩, ⟨43, 28⟩, ⟨7, 9⟩, ⟨18, 11⟩, ⟨30, 17⟩, ⟨41, 19⟩, ⟨2, 8⟩, ⟨13, 10⟩, ⟨25, 16⟩, ⟨36, 18⟩]⟩
theorem profile0515_checked : profile0515.check := by decide +kernel

noncomputable def selection1_0515 : Selection :=
  ⟨1, -3, 4, (1207/100), 755, -46, 388⟩
theorem selection1_0515_checked : selection1_0515.check profile0515 := by decide +kernel

noncomputable def selection2_0515 : Selection :=
  ⟨2, -11, 8, (593/50), 218, -58, 756⟩
theorem selection2_0515_checked : selection2_0515.check profile0515 := by decide +kernel

noncomputable def profile0516 : ProfileCell :=
  ⟨(19/104), (17/93),
    [9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4], [8, 8, 9, 9, 9],
    [⟨36, 19⟩, ⟨8, 10⟩, ⟨19, 12⟩, ⟨31, 18⟩, ⟨42, 20⟩, ⟨3, 9⟩, ⟨14, 11⟩, ⟨26, 17⟩, ⟨37, 19⟩, ⟨9, 10⟩, ⟨20, 12⟩, ⟨32, 18⟩, ⟨4, 9⟩, ⟨15, 11⟩, ⟨27, 17⟩, ⟨38, 19⟩, ⟨10, 10⟩, ⟨21, 12⟩, ⟨22, 16⟩, ⟨33, 18⟩, ⟨5, 9⟩, ⟨16, 11⟩, ⟨28, 17⟩, ⟨39, 19⟩, ⟨11, 10⟩, ⟨23, 16⟩, ⟨34, 18⟩, ⟨6, 9⟩, ⟨17, 11⟩, ⟨29, 17⟩, ⟨40, 19⟩, ⟨1, 8⟩, ⟨12, 10⟩, ⟨24, 16⟩, ⟨35, 18⟩, ⟨7, 9⟩, ⟨43, 28⟩, ⟨18, 11⟩, ⟨30, 17⟩, ⟨41, 19⟩, ⟨2, 8⟩, ⟨13, 10⟩, ⟨25, 16⟩]⟩
theorem profile0516_checked : profile0516.check := by decide +kernel

noncomputable def selection1_0516 : Selection :=
  ⟨1, -3, 4, (1207/100), 90, 68, -236⟩
theorem selection1_0516_checked : selection1_0516.check profile0516 := by decide +kernel

noncomputable def selection2_0516 : Selection :=
  ⟨2, -11, 8, (1187/100), 26, 56, 132⟩
theorem selection2_0516_checked : selection2_0516.check profile0516 := by decide +kernel

noncomputable def profile0517 : ProfileCell :=
  ⟨(17/93), (11/60),
    [9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4], [8, 8, 9, 9, 9],
    [⟨25, 17⟩, ⟨36, 19⟩, ⟨8, 10⟩, ⟨19, 12⟩, ⟨31, 18⟩, ⟨42, 20⟩, ⟨3, 9⟩, ⟨14, 11⟩, ⟨26, 17⟩, ⟨37, 19⟩, ⟨9, 10⟩, ⟨20, 12⟩, ⟨32, 18⟩, ⟨4, 9⟩, ⟨15, 11⟩, ⟨27, 17⟩, ⟨38, 19⟩, ⟨10, 10⟩, ⟨21, 12⟩, ⟨22, 16⟩, ⟨33, 18⟩, ⟨5, 9⟩, ⟨16, 11⟩, ⟨28, 17⟩, ⟨39, 19⟩, ⟨11, 10⟩, ⟨23, 16⟩, ⟨34, 18⟩, ⟨6, 9⟩, ⟨17, 11⟩, ⟨29, 17⟩, ⟨40, 19⟩, ⟨1, 8⟩, ⟨12, 10⟩, ⟨24, 16⟩, ⟨35, 18⟩, ⟨7, 9⟩, ⟨18, 11⟩, ⟨43, 28⟩, ⟨30, 17⟩, ⟨41, 19⟩, ⟨2, 8⟩, ⟨13, 10⟩]⟩
theorem profile0517_checked : profile0517.check := by decide +kernel

noncomputable def selection1_0517 : Selection :=
  ⟨1, -3, 4, (603/50), 464, 136, -608⟩
theorem selection1_0517_checked : selection1_0517.check profile0517 := by decide +kernel

noncomputable def selection2_0517 : Selection :=
  ⟨2, -11, 8, (1187/100), 134, 124, -240⟩
theorem selection2_0517_checked : selection2_0517.check profile0517 := by decide +kernel

noncomputable def profile0518 : ProfileCell :=
  ⟨(11/60), (20/109),
    [9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4], [8, 8, 9, 9, 9],
    [⟨13, 11⟩, ⟨25, 17⟩, ⟨36, 19⟩, ⟨8, 10⟩, ⟨19, 12⟩, ⟨31, 18⟩, ⟨3, 9⟩, ⟨42, 20⟩, ⟨14, 11⟩, ⟨26, 17⟩, ⟨37, 19⟩, ⟨9, 10⟩, ⟨20, 12⟩, ⟨32, 18⟩, ⟨4, 9⟩, ⟨15, 11⟩, ⟨27, 17⟩, ⟨38, 19⟩, ⟨10, 10⟩, ⟨21, 12⟩, ⟨22, 16⟩, ⟨33, 18⟩, ⟨5, 9⟩, ⟨16, 11⟩, ⟨28, 17⟩, ⟨39, 19⟩, ⟨11, 10⟩, ⟨23, 16⟩, ⟨34, 18⟩, ⟨6, 9⟩, ⟨17, 11⟩, ⟨29, 17⟩, ⟨1, 8⟩, ⟨40, 19⟩, ⟨12, 10⟩, ⟨24, 16⟩, ⟨35, 18⟩, ⟨7, 9⟩, ⟨18, 11⟩, ⟨30, 17⟩, ⟨43, 28⟩, ⟨2, 8⟩, ⟨41, 19⟩]⟩
theorem profile0518_checked : profile0518.check := by decide +kernel

noncomputable def selection1_0518 : Selection :=
  ⟨1, -2, 4, (298/25), 131, 77, -312⟩
theorem selection1_0518_checked : selection1_0518.check profile0518 := by decide +kernel

noncomputable def selection2_0518 : Selection :=
  ⟨2, -10, 8, (296/25), 38, 61, 56⟩
theorem selection2_0518_checked : selection2_0518.check profile0518 := by decide +kernel

noncomputable def profile0519 : ProfileCell :=
  ⟨(20/109), (29/158),
    [9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4], [8, 8, 9, 9, 9],
    [⟨41, 20⟩, ⟨13, 11⟩, ⟨25, 17⟩, ⟨36, 19⟩, ⟨8, 10⟩, ⟨19, 12⟩, ⟨31, 18⟩, ⟨3, 9⟩, ⟨42, 20⟩, ⟨14, 11⟩, ⟨26, 17⟩, ⟨37, 19⟩, ⟨9, 10⟩, ⟨20, 12⟩, ⟨32, 18⟩, ⟨4, 9⟩, ⟨15, 11⟩, ⟨27, 17⟩, ⟨38, 19⟩, ⟨10, 10⟩, ⟨21, 12⟩, ⟨22, 16⟩, ⟨33, 18⟩, ⟨5, 9⟩, ⟨16, 11⟩, ⟨28, 17⟩, ⟨39, 19⟩, ⟨11, 10⟩, ⟨23, 16⟩, ⟨34, 18⟩, ⟨6, 9⟩, ⟨17, 11⟩, ⟨29, 17⟩, ⟨1, 8⟩, ⟨40, 19⟩, ⟨12, 10⟩, ⟨24, 16⟩, ⟨35, 18⟩, ⟨7, 9⟩, ⟨18, 11⟩, ⟨30, 17⟩, ⟨2, 8⟩, ⟨43, 28⟩]⟩
theorem profile0519_checked : profile0519.check := by decide +kernel

noncomputable def selection1_0519 : Selection :=
  ⟨1, -2, 4, (119/10), 50, 197, -966⟩
theorem selection1_0519_checked : selection1_0519.check profile0519 := by decide +kernel

noncomputable def selection2_0519 : Selection :=
  ⟨2, -10, 8, (296/25), 15, 181, -598⟩
theorem selection2_0519_checked : selection2_0519.check profile0519 := by decide +kernel

noncomputable def profile0520 : ProfileCell :=
  ⟨(29/158), (9/49),
    [9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4], [8, 8, 9, 9, 9],
    [⟨43, 29⟩, ⟨41, 20⟩, ⟨13, 11⟩, ⟨25, 17⟩, ⟨36, 19⟩, ⟨8, 10⟩, ⟨19, 12⟩, ⟨31, 18⟩, ⟨3, 9⟩, ⟨42, 20⟩, ⟨14, 11⟩, ⟨26, 17⟩, ⟨37, 19⟩, ⟨9, 10⟩, ⟨20, 12⟩, ⟨32, 18⟩, ⟨4, 9⟩, ⟨15, 11⟩, ⟨27, 17⟩, ⟨38, 19⟩, ⟨10, 10⟩, ⟨21, 12⟩, ⟨22, 16⟩, ⟨33, 18⟩, ⟨5, 9⟩, ⟨16, 11⟩, ⟨28, 17⟩, ⟨39, 19⟩, ⟨11, 10⟩, ⟨23, 16⟩, ⟨34, 18⟩, ⟨6, 9⟩, ⟨17, 11⟩, ⟨29, 17⟩, ⟨1, 8⟩, ⟨40, 19⟩, ⟨12, 10⟩, ⟨24, 16⟩, ⟨35, 18⟩, ⟨7, 9⟩, ⟨18, 11⟩, ⟨30, 17⟩, ⟨2, 8⟩]⟩
theorem profile0520_checked : profile0520.check := by decide +kernel

noncomputable def selection1_0520 : Selection :=
  ⟨1, -2, 4, (597/50), 111, -180, 1088⟩
theorem selection1_0520_checked : selection1_0520.check profile0520 := by decide +kernel

noncomputable def selection2_0520 : Selection :=
  ⟨2, -10, 8, (1187/100), 33, -196, 1456⟩
theorem selection2_0520_checked : selection2_0520.check profile0520 := by decide +kernel

noncomputable def profile0521 : ProfileCell :=
  ⟨(9/49), (7/38),
    [9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4], [8, 9, 9, 9, 9],
    [⟨2, 9⟩, ⟨30, 18⟩, ⟨13, 11⟩, ⟨41, 20⟩, ⟨43, 29⟩, ⟨25, 17⟩, ⟨8, 10⟩, ⟨36, 19⟩, ⟨19, 12⟩, ⟨3, 9⟩, ⟨31, 18⟩, ⟨14, 11⟩, ⟨42, 20⟩, ⟨26, 17⟩, ⟨9, 10⟩, ⟨37, 19⟩, ⟨20, 12⟩, ⟨4, 9⟩, ⟨32, 18⟩, ⟨15, 11⟩, ⟨27, 17⟩, ⟨10, 10⟩, ⟨38, 19⟩, ⟨21, 12⟩, ⟨22, 16⟩, ⟨5, 9⟩, ⟨33, 18⟩, ⟨16, 11⟩, ⟨28, 17⟩, ⟨11, 10⟩, ⟨39, 19⟩, ⟨23, 16⟩, ⟨6, 9⟩, ⟨34, 18⟩, ⟨17, 11⟩, ⟨1, 8⟩, ⟨29, 17⟩, ⟨12, 10⟩, ⟨40, 19⟩, ⟨24, 16⟩, ⟨7, 9⟩, ⟨35, 18⟩, ⟨18, 11⟩]⟩
theorem profile0521_checked : profile0521.check := by decide +kernel

noncomputable def selection1_0521 : Selection :=
  ⟨1, 0, 4, (1623/100), 622, -216, 1284⟩
theorem selection1_0521_checked : selection1_0521.check profile0521 := by decide +kernel

noncomputable def selection2_0521 : Selection :=
  ⟨2, -8, 8, (402/25), 182, -232, 1652⟩
theorem selection2_0521_checked : selection2_0521.check profile0521 := by decide +kernel

noncomputable def profile0522 : ProfileCell :=
  ⟨(7/38), (19/103),
    [9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4], [8, 9, 9, 9, 9],
    [⟨2, 9⟩, ⟨13, 11⟩, ⟨30, 18⟩, ⟨41, 20⟩, ⟨43, 29⟩, ⟨8, 10⟩, ⟨25, 17⟩, ⟨19, 12⟩, ⟨36, 19⟩, ⟨3, 9⟩, ⟨14, 11⟩, ⟨31, 18⟩, ⟨42, 20⟩, ⟨9, 10⟩, ⟨26, 17⟩, ⟨20, 12⟩, ⟨37, 19⟩, ⟨4, 9⟩, ⟨15, 11⟩, ⟨32, 18⟩, ⟨10, 10⟩, ⟨27, 17⟩, ⟨21, 12⟩, ⟨38, 19⟩, ⟨5, 9⟩, ⟨22, 16⟩, ⟨16, 11⟩, ⟨33, 18⟩, ⟨11, 10⟩, ⟨28, 17⟩, ⟨39, 19⟩, ⟨6, 9⟩, ⟨23, 16⟩, ⟨17, 11⟩, ⟨34, 18⟩, ⟨1, 8⟩, ⟨12, 10⟩, ⟨29, 17⟩, ⟨40, 19⟩, ⟨7, 9⟩, ⟨24, 16⟩, ⟨18, 11⟩, ⟨35, 18⟩]⟩
theorem profile0522_checked : profile0522.check := by decide +kernel

noncomputable def selection1_0522 : Selection :=
  ⟨1, -2, 4, (1439/100), 263, -254, 1516⟩
theorem selection1_0522_checked : selection1_0522.check profile0522 := by decide +kernel

noncomputable def selection2_0522 : Selection :=
  ⟨2, -10, 8, (1419/100), 76, -266, 1884⟩
theorem selection2_0522_checked : selection2_0522.check profile0522 := by decide +kernel

noncomputable def profile0523 : ProfileCell :=
  ⟨(19/103), (12/65),
    [9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4], [8, 9, 9, 9, 9],
    [⟨35, 19⟩, ⟨2, 9⟩, ⟨13, 11⟩, ⟨30, 18⟩, ⟨41, 20⟩, ⟨8, 10⟩, ⟨43, 29⟩, ⟨25, 17⟩, ⟨19, 12⟩, ⟨36, 19⟩, ⟨3, 9⟩, ⟨14, 11⟩, ⟨31, 18⟩, ⟨42, 20⟩, ⟨9, 10⟩, ⟨26, 17⟩, ⟨20, 12⟩, ⟨37, 19⟩, ⟨4, 9⟩, ⟨15, 11⟩, ⟨32, 18⟩, ⟨10, 10⟩, ⟨27, 17⟩, ⟨21, 12⟩, ⟨38, 19⟩, ⟨5, 9⟩, ⟨22, 16⟩, ⟨16, 11⟩, ⟨33, 18⟩, ⟨11, 10⟩, ⟨28, 17⟩, ⟨39, 19⟩, ⟨6, 9⟩, ⟨23, 16⟩, ⟨17, 11⟩, ⟨34, 18⟩, ⟨1, 8⟩, ⟨12, 10⟩, ⟨29, 17⟩, ⟨40, 19⟩, ⟨7, 9⟩, ⟨24, 16⟩, ⟨18, 11⟩]⟩
theorem profile0523_checked : profile0523.check := by decide +kernel

noncomputable def selection1_0523 : Selection :=
  ⟨1, -2, 4, (723/50), 154, -178, 1104⟩
theorem selection1_0523_checked : selection1_0523.check profile0523 := by decide +kernel

noncomputable def selection2_0523 : Selection :=
  ⟨2, -10, 8, (356/25), 45, -190, 1472⟩
theorem selection2_0523_checked : selection2_0523.check profile0523 := by decide +kernel

noncomputable def profile0524 : ProfileCell :=
  ⟨(12/65), (17/92),
    [9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4], [8, 9, 9, 9, 9],
    [⟨18, 12⟩, ⟨35, 19⟩, ⟨2, 9⟩, ⟨13, 11⟩, ⟨30, 18⟩, ⟨41, 20⟩, ⟨8, 10⟩, ⟨25, 17⟩, ⟨43, 29⟩, ⟨19, 12⟩, ⟨36, 19⟩, ⟨3, 9⟩, ⟨14, 11⟩, ⟨31, 18⟩, ⟨42, 20⟩, ⟨9, 10⟩, ⟨26, 17⟩, ⟨20, 12⟩, ⟨37, 19⟩, ⟨4, 9⟩, ⟨15, 11⟩, ⟨32, 18⟩, ⟨10, 10⟩, ⟨27, 17⟩, ⟨21, 12⟩, ⟨38, 19⟩, ⟨5, 9⟩, ⟨22, 16⟩, ⟨16, 11⟩, ⟨33, 18⟩, ⟨11, 10⟩, ⟨28, 17⟩, ⟨39, 19⟩, ⟨6, 9⟩, ⟨23, 16⟩, ⟨17, 11⟩, ⟨34, 18⟩, ⟨1, 8⟩, ⟨12, 10⟩, ⟨29, 17⟩, ⟨40, 19⟩, ⟨7, 9⟩, ⟨24, 16⟩]⟩
theorem profile0524_checked : profile0524.check := by decide +kernel

noncomputable def selection1_0524 : Selection :=
  ⟨1, -2, 4, (364/25), 174, -226, 1364⟩
theorem selection1_0524_checked : selection1_0524.check profile0524 := by decide +kernel

noncomputable def selection2_0524 : Selection :=
  ⟨2, -10, 8, (143/10), 51, -238, 1732⟩
theorem selection2_0524_checked : selection2_0524.check profile0524 := by decide +kernel

noncomputable def profile0525 : ProfileCell :=
  ⟨(17/92), (5/27),
    [9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4], [8, 9, 9, 9, 9],
    [⟨24, 17⟩, ⟨18, 12⟩, ⟨35, 19⟩, ⟨2, 9⟩, ⟨13, 11⟩, ⟨30, 18⟩, ⟨41, 20⟩, ⟨8, 10⟩, ⟨25, 17⟩, ⟨19, 12⟩, ⟨43, 29⟩, ⟨36, 19⟩, ⟨3, 9⟩, ⟨14, 11⟩, ⟨31, 18⟩, ⟨42, 20⟩, ⟨9, 10⟩, ⟨26, 17⟩, ⟨20, 12⟩, ⟨37, 19⟩, ⟨4, 9⟩, ⟨15, 11⟩, ⟨32, 18⟩, ⟨10, 10⟩, ⟨27, 17⟩, ⟨21, 12⟩, ⟨38, 19⟩, ⟨5, 9⟩, ⟨22, 16⟩, ⟨16, 11⟩, ⟨33, 18⟩, ⟨11, 10⟩, ⟨28, 17⟩, ⟨39, 19⟩, ⟨6, 9⟩, ⟨23, 16⟩, ⟨17, 11⟩, ⟨34, 18⟩, ⟨1, 8⟩, ⟨12, 10⟩, ⟨29, 17⟩, ⟨40, 19⟩, ⟨7, 9⟩]⟩
theorem profile0525_checked : profile0525.check := by decide +kernel

noncomputable def selection1_0525 : Selection :=
  ⟨1, -1, 4, (1471/100), 422, -135, 846⟩
theorem selection1_0525_checked : selection1_0525.check profile0525 := by decide +kernel

noncomputable def selection2_0525 : Selection :=
  ⟨2, -9, 8, (721/50), 122, -151, 1214⟩
theorem selection2_0525_checked : selection2_0525.check profile0525 := by decide +kernel

noncomputable def profile0526 : ProfileCell :=
  ⟨(5/27), (18/97),
    [9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4], [8, 9, 9, 9, 9],
    [⟨7, 10⟩, ⟨40, 20⟩, ⟨18, 12⟩, ⟨24, 17⟩, ⟨2, 9⟩, ⟨35, 19⟩, ⟨13, 11⟩, ⟨30, 18⟩, ⟨8, 10⟩, ⟨41, 20⟩, ⟨19, 12⟩, ⟨25, 17⟩, ⟨3, 9⟩, ⟨36, 19⟩, ⟨43, 29⟩, ⟨14, 11⟩, ⟨31, 18⟩, ⟨9, 10⟩, ⟨42, 20⟩, ⟨20, 12⟩, ⟨26, 17⟩, ⟨4, 9⟩, ⟨37, 19⟩, ⟨15, 11⟩, ⟨32, 18⟩, ⟨10, 10⟩, ⟨21, 12⟩, ⟨27, 17⟩, ⟨5, 9⟩, ⟨38, 19⟩, ⟨16, 11⟩, ⟨22, 16⟩, ⟨33, 18⟩, ⟨11, 10⟩, ⟨28, 17⟩, ⟨6, 9⟩, ⟨39, 19⟩, ⟨17, 11⟩, ⟨23, 16⟩, ⟨1, 8⟩, ⟨34, 18⟩, ⟨12, 10⟩, ⟨29, 17⟩]⟩
theorem profile0526_checked : profile0526.check := by decide +kernel

noncomputable def selection1_0526 : Selection :=
  ⟨1, -1, 4, (297/20), 404, -145, 900⟩
theorem selection1_0526_checked : selection1_0526.check profile0526 := by decide +kernel

noncomputable def selection2_0526 : Selection :=
  ⟨2, -9, 8, (1453/100), 117, -161, 1268⟩
theorem selection2_0526_checked : selection2_0526.check profile0526 := by decide +kernel

noncomputable def profile0527 : ProfileCell :=
  ⟨(18/97), (8/43),
    [9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4], [8, 9, 9, 9, 9],
    [⟨29, 18⟩, ⟨7, 10⟩, ⟨40, 20⟩, ⟨18, 12⟩, ⟨24, 17⟩, ⟨2, 9⟩, ⟨35, 19⟩, ⟨13, 11⟩, ⟨30, 18⟩, ⟨8, 10⟩, ⟨41, 20⟩, ⟨19, 12⟩, ⟨25, 17⟩, ⟨3, 9⟩, ⟨36, 19⟩, ⟨14, 11⟩, ⟨43, 29⟩, ⟨31, 18⟩, ⟨9, 10⟩, ⟨42, 20⟩, ⟨20, 12⟩, ⟨26, 17⟩, ⟨4, 9⟩, ⟨37, 19⟩, ⟨15, 11⟩, ⟨32, 18⟩, ⟨10, 10⟩, ⟨21, 12⟩, ⟨27, 17⟩, ⟨5, 9⟩, ⟨38, 19⟩, ⟨16, 11⟩, ⟨22, 16⟩, ⟨33, 18⟩, ⟨11, 10⟩, ⟨28, 17⟩, ⟨6, 9⟩, ⟨39, 19⟩, ⟨17, 11⟩, ⟨23, 16⟩, ⟨1, 8⟩, ⟨34, 18⟩, ⟨12, 10⟩]⟩
theorem profile0527_checked : profile0527.check := by decide +kernel

noncomputable def selection1_0527 : Selection :=
  ⟨1, -1, 4, (374/25), 511, -73, 512⟩
theorem selection1_0527_checked : selection1_0527.check profile0527 := by decide +kernel

noncomputable def selection2_0527 : Selection :=
  ⟨2, -9, 8, (1463/100), 147, -89, 880⟩
theorem selection2_0527_checked : selection2_0527.check profile0527 := by decide +kernel

noncomputable def profile0528 : ProfileCell :=
  ⟨(8/43), (19/102),
    [9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4], [8, 9, 9, 9, 9],
    [⟨7, 10⟩, ⟨29, 18⟩, ⟨18, 12⟩, ⟨40, 20⟩, ⟨2, 9⟩, ⟨24, 17⟩, ⟨13, 11⟩, ⟨35, 19⟩, ⟨8, 10⟩, ⟨30, 18⟩, ⟨19, 12⟩, ⟨41, 20⟩, ⟨3, 9⟩, ⟨25, 17⟩, ⟨14, 11⟩, ⟨36, 19⟩, ⟨43, 29⟩, ⟨9, 10⟩, ⟨31, 18⟩, ⟨20, 12⟩, ⟨42, 20⟩, ⟨4, 9⟩, ⟨26, 17⟩, ⟨15, 11⟩, ⟨37, 19⟩, ⟨10, 10⟩, ⟨32, 18⟩, ⟨21, 12⟩, ⟨5, 9⟩, ⟨27, 17⟩, ⟨16, 11⟩, ⟨38, 19⟩, ⟨22, 16⟩, ⟨11, 10⟩, ⟨33, 18⟩, ⟨6, 9⟩, ⟨28, 17⟩, ⟨17, 11⟩, ⟨39, 19⟩, ⟨1, 8⟩, ⟨23, 16⟩, ⟨12, 10⟩, ⟨34, 18⟩]⟩
theorem profile0528_checked : profile0528.check := by decide +kernel

noncomputable def selection1_0528 : Selection :=
  ⟨1, -1, 4, (301/20), 244, -153, 942⟩
theorem selection1_0528_checked : selection1_0528.check profile0528 := by decide +kernel

noncomputable def selection2_0528 : Selection :=
  ⟨2, -9, 8, (147/10), 71, -169, 1310⟩
theorem selection2_0528_checked : selection2_0528.check profile0528 := by decide +kernel

noncomputable def profile0529 : ProfileCell :=
  ⟨(19/102), (11/59),
    [9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4], [8, 9, 9, 9, 9],
    [⟨34, 19⟩, ⟨7, 10⟩, ⟨29, 18⟩, ⟨18, 12⟩, ⟨40, 20⟩, ⟨2, 9⟩, ⟨24, 17⟩, ⟨13, 11⟩, ⟨35, 19⟩, ⟨8, 10⟩, ⟨30, 18⟩, ⟨19, 12⟩, ⟨41, 20⟩, ⟨3, 9⟩, ⟨25, 17⟩, ⟨14, 11⟩, ⟨36, 19⟩, ⟨9, 10⟩, ⟨43, 29⟩, ⟨31, 18⟩, ⟨20, 12⟩, ⟨42, 20⟩, ⟨4, 9⟩, ⟨26, 17⟩, ⟨15, 11⟩, ⟨37, 19⟩, ⟨10, 10⟩, ⟨32, 18⟩, ⟨21, 12⟩, ⟨5, 9⟩, ⟨27, 17⟩, ⟨16, 11⟩, ⟨38, 19⟩, ⟨22, 16⟩, ⟨11, 10⟩, ⟨33, 18⟩, ⟨6, 9⟩, ⟨28, 17⟩, ⟨17, 11⟩, ⟨39, 19⟩, ⟨1, 8⟩, ⟨23, 16⟩, ⟨12, 10⟩]⟩
theorem profile0529_checked : profile0529.check := by decide +kernel

noncomputable def selection1_0529 : Selection :=
  ⟨1, -1, 4, (1507/100), 178, -39, 330⟩
theorem selection1_0529_checked : selection1_0529.check profile0529 := by decide +kernel

noncomputable def selection2_0529 : Selection :=
  ⟨2, -9, 8, (368/25), 52, -55, 698⟩
theorem selection2_0529_checked : selection2_0529.check profile0529 := by decide +kernel

noncomputable def profile0530 : ProfileCell :=
  ⟨(11/59), (17/91),
    [9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4], [8, 9, 9, 9, 9],
    [⟨12, 11⟩, ⟨34, 19⟩, ⟨7, 10⟩, ⟨29, 18⟩, ⟨18, 12⟩, ⟨2, 9⟩, ⟨40, 20⟩, ⟨24, 17⟩, ⟨13, 11⟩, ⟨35, 19⟩, ⟨8, 10⟩, ⟨30, 18⟩, ⟨19, 12⟩, ⟨3, 9⟩, ⟨41, 20⟩, ⟨25, 17⟩, ⟨14, 11⟩, ⟨36, 19⟩, ⟨9, 10⟩, ⟨31, 18⟩, ⟨43, 29⟩, ⟨20, 12⟩, ⟨4, 9⟩, ⟨42, 20⟩, ⟨26, 17⟩, ⟨15, 11⟩, ⟨37, 19⟩, ⟨10, 10⟩, ⟨32, 18⟩, ⟨21, 12⟩, ⟨5, 9⟩, ⟨27, 17⟩, ⟨16, 11⟩, ⟨38, 19⟩, ⟨22, 16⟩, ⟨11, 10⟩, ⟨33, 18⟩, ⟨6, 9⟩, ⟨28, 17⟩, ⟨17, 11⟩, ⟨1, 8⟩, ⟨39, 19⟩, ⟨23, 16⟩]⟩
theorem profile0530_checked : profile0530.check := by decide +kernel

noncomputable def selection1_0530 : Selection :=
  ⟨1, -1, 4, (1519/100), 402, -127, 802⟩
theorem selection1_0530_checked : selection1_0530.check profile0530 := by decide +kernel

noncomputable def selection2_0530 : Selection :=
  ⟨2, -9, 8, (741/50), 116, -143, 1170⟩
theorem selection2_0530_checked : selection2_0530.check profile0530 := by decide +kernel

noncomputable def profile0531 : ProfileCell :=
  ⟨(17/91), (20/107),
    [9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4], [8, 9, 9, 9, 9],
    [⟨23, 17⟩, ⟨12, 11⟩, ⟨34, 19⟩, ⟨7, 10⟩, ⟨29, 18⟩, ⟨18, 12⟩, ⟨2, 9⟩, ⟨40, 20⟩, ⟨24, 17⟩, ⟨13, 11⟩, ⟨35, 19⟩, ⟨8, 10⟩, ⟨30, 18⟩, ⟨19, 12⟩, ⟨3, 9⟩, ⟨41, 20⟩, ⟨25, 17⟩, ⟨14, 11⟩, ⟨36, 19⟩, ⟨9, 10⟩, ⟨31, 18⟩, ⟨20, 12⟩, ⟨43, 29⟩, ⟨4, 9⟩, ⟨42, 20⟩, ⟨26, 17⟩, ⟨15, 11⟩, ⟨37, 19⟩, ⟨10, 10⟩, ⟨32, 18⟩, ⟨21, 12⟩, ⟨5, 9⟩, ⟨27, 17⟩, ⟨16, 11⟩, ⟨38, 19⟩, ⟨22, 16⟩, ⟨11, 10⟩, ⟨33, 18⟩, ⟨6, 9⟩, ⟨28, 17⟩, ⟨17, 11⟩, ⟨1, 8⟩, ⟨39, 19⟩]⟩
theorem profile0531_checked : profile0531.check := by decide +kernel

noncomputable def selection1_0531 : Selection :=
  ⟨1, -1, 4, (1521/100), 111, -25, 256⟩
theorem selection1_0531_checked : selection1_0531.check profile0531 := by decide +kernel

noncomputable def selection2_0531 : Selection :=
  ⟨2, -9, 8, (371/25), 32, -41, 624⟩
theorem selection2_0531_checked : selection2_0531.check profile0531 := by decide +kernel

noncomputable def profile0532 : ProfileCell :=
  ⟨(20/107), (3/16),
    [9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4], [8, 9, 9, 9, 9],
    [⟨39, 20⟩, ⟨23, 17⟩, ⟨12, 11⟩, ⟨34, 19⟩, ⟨7, 10⟩, ⟨29, 18⟩, ⟨18, 12⟩, ⟨2, 9⟩, ⟨40, 20⟩, ⟨24, 17⟩, ⟨13, 11⟩, ⟨35, 19⟩, ⟨8, 10⟩, ⟨30, 18⟩, ⟨19, 12⟩, ⟨3, 9⟩, ⟨41, 20⟩, ⟨25, 17⟩, ⟨14, 11⟩, ⟨36, 19⟩, ⟨9, 10⟩, ⟨31, 18⟩, ⟨20, 12⟩, ⟨4, 9⟩, ⟨43, 29⟩, ⟨42, 20⟩, ⟨26, 17⟩, ⟨15, 11⟩, ⟨37, 19⟩, ⟨10, 10⟩, ⟨32, 18⟩, ⟨21, 12⟩, ⟨5, 9⟩, ⟨27, 17⟩, ⟨16, 11⟩, ⟨38, 19⟩, ⟨22, 16⟩, ⟨11, 10⟩, ⟨33, 18⟩, ⟨6, 9⟩, ⟨28, 17⟩, ⟨17, 11⟩, ⟨1, 8⟩]⟩
theorem profile0532_checked : profile0532.check := by decide +kernel

noncomputable def selection1_0532 : Selection :=
  ⟨1, -1, 4, (1521/100), 631, 55, -172⟩
theorem selection1_0532_checked : selection1_0532.check profile0532 := by decide +kernel

noncomputable def selection2_0532 : Selection :=
  ⟨2, -9, 8, (743/50), 182, 39, 196⟩
theorem selection2_0532_checked : selection2_0532.check profile0532 := by decide +kernel

noncomputable def profile0533 : ProfileCell :=
  ⟨(3/16), (19/101),
    [9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨1, 9⟩, ⟨17, 12⟩, ⟨28, 18⟩, ⟨12, 11⟩, ⟨23, 17⟩, ⟨39, 20⟩, ⟨7, 10⟩, ⟨34, 19⟩, ⟨2, 9⟩, ⟨18, 12⟩, ⟨29, 18⟩, ⟨13, 11⟩, ⟨24, 17⟩, ⟨40, 20⟩, ⟨8, 10⟩, ⟨35, 19⟩, ⟨3, 9⟩, ⟨19, 12⟩, ⟨30, 18⟩, ⟨14, 11⟩, ⟨25, 17⟩, ⟨41, 20⟩, ⟨9, 10⟩, ⟨36, 19⟩, ⟨4, 9⟩, ⟨20, 12⟩, ⟨31, 18⟩, ⟨15, 11⟩, ⟨26, 17⟩, ⟨42, 20⟩, ⟨43, 29⟩, ⟨10, 10⟩, ⟨37, 19⟩, ⟨5, 9⟩, ⟨21, 12⟩, ⟨32, 18⟩, ⟨16, 11⟩, ⟨27, 17⟩, ⟨11, 10⟩, ⟨22, 16⟩, ⟨38, 19⟩, ⟨6, 9⟩, ⟨33, 18⟩]⟩
theorem profile0533_checked : profile0533.check := by decide +kernel

noncomputable def selection1_0533 : Selection :=
  ⟨1, -1, 4, (61/4), 669, -38, 324⟩
theorem selection1_0533_checked : selection1_0533.check profile0533 := by decide +kernel

noncomputable def selection2_0533 : Selection :=
  ⟨2, -9, 8, (374/25), 194, -54, 692⟩
theorem selection2_0533_checked : selection2_0533.check profile0533 := by decide +kernel

noncomputable def profile0534 : ProfileCell :=
  ⟨(19/101), (10/53),
    [9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨33, 19⟩, ⟨1, 9⟩, ⟨17, 12⟩, ⟨28, 18⟩, ⟨12, 11⟩, ⟨23, 17⟩, ⟨39, 20⟩, ⟨7, 10⟩, ⟨34, 19⟩, ⟨2, 9⟩, ⟨18, 12⟩, ⟨29, 18⟩, ⟨13, 11⟩, ⟨24, 17⟩, ⟨40, 20⟩, ⟨8, 10⟩, ⟨35, 19⟩, ⟨3, 9⟩, ⟨19, 12⟩, ⟨30, 18⟩, ⟨14, 11⟩, ⟨25, 17⟩, ⟨41, 20⟩, ⟨9, 10⟩, ⟨36, 19⟩, ⟨4, 9⟩, ⟨20, 12⟩, ⟨31, 18⟩, ⟨15, 11⟩, ⟨26, 17⟩, ⟨42, 20⟩, ⟨10, 10⟩, ⟨43, 29⟩, ⟨37, 19⟩, ⟨5, 9⟩, ⟨21, 12⟩, ⟨32, 18⟩, ⟨16, 11⟩, ⟨27, 17⟩, ⟨11, 10⟩, ⟨22, 16⟩, ⟨38, 19⟩, ⟨6, 9⟩]⟩
theorem profile0534_checked : profile0534.check := by decide +kernel

noncomputable def selection1_0534 : Selection :=
  ⟨1, -1, 4, (61/4), 606, 38, -80⟩
theorem selection1_0534_checked : selection1_0534.check profile0534 := by decide +kernel

noncomputable def selection2_0534 : Selection :=
  ⟨2, -9, 8, 15, 176, 22, 288⟩
theorem selection2_0534_checked : selection2_0534.check profile0534 := by decide +kernel

noncomputable def profile0535 : ProfileCell :=
  ⟨(10/53), (17/90),
    [9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨6, 10⟩, ⟨38, 20⟩, ⟨1, 9⟩, ⟨33, 19⟩, ⟨17, 12⟩, ⟨28, 18⟩, ⟨12, 11⟩, ⟨23, 17⟩, ⟨7, 10⟩, ⟨39, 20⟩, ⟨2, 9⟩, ⟨34, 19⟩, ⟨18, 12⟩, ⟨29, 18⟩, ⟨13, 11⟩, ⟨24, 17⟩, ⟨8, 10⟩, ⟨40, 20⟩, ⟨3, 9⟩, ⟨35, 19⟩, ⟨19, 12⟩, ⟨30, 18⟩, ⟨14, 11⟩, ⟨25, 17⟩, ⟨9, 10⟩, ⟨41, 20⟩, ⟨4, 9⟩, ⟨36, 19⟩, ⟨20, 12⟩, ⟨31, 18⟩, ⟨15, 11⟩, ⟨26, 17⟩, ⟨10, 10⟩, ⟨42, 20⟩, ⟨5, 9⟩, ⟨37, 19⟩, ⟨43, 29⟩, ⟨21, 12⟩, ⟨32, 18⟩, ⟨16, 11⟩, ⟨27, 17⟩, ⟨11, 10⟩, ⟨22, 16⟩]⟩
theorem profile0535_checked : profile0535.check := by decide +kernel

noncomputable def selection1_0535 : Selection :=
  ⟨1, -1, 4, (1523/100), 226, 78, -292⟩
theorem selection1_0535_checked : selection1_0535.check profile0535 := by decide +kernel

noncomputable def selection2_0535 : Selection :=
  ⟨2, -9, 8, 15, 66, 62, 76⟩
theorem selection2_0535_checked : selection2_0535.check profile0535 := by decide +kernel

noncomputable def profile0536 : ProfileCell :=
  ⟨(17/90), (7/37),
    [9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨22, 17⟩, ⟨6, 10⟩, ⟨38, 20⟩, ⟨1, 9⟩, ⟨33, 19⟩, ⟨17, 12⟩, ⟨28, 18⟩, ⟨12, 11⟩, ⟨23, 17⟩, ⟨7, 10⟩, ⟨39, 20⟩, ⟨2, 9⟩, ⟨34, 19⟩, ⟨18, 12⟩, ⟨29, 18⟩, ⟨13, 11⟩, ⟨24, 17⟩, ⟨8, 10⟩, ⟨40, 20⟩, ⟨3, 9⟩, ⟨35, 19⟩, ⟨19, 12⟩, ⟨30, 18⟩, ⟨14, 11⟩, ⟨25, 17⟩, ⟨9, 10⟩, ⟨41, 20⟩, ⟨4, 9⟩, ⟨36, 19⟩, ⟨20, 12⟩, ⟨31, 18⟩, ⟨15, 11⟩, ⟨26, 17⟩, ⟨10, 10⟩, ⟨42, 20⟩, ⟨5, 9⟩, ⟨37, 19⟩, ⟨21, 12⟩, ⟨43, 29⟩, ⟨32, 18⟩, ⟨16, 11⟩, ⟨27, 17⟩, ⟨11, 10⟩]⟩
theorem profile0536_checked : profile0536.check := by decide +kernel

noncomputable def selection1_0536 : Selection :=
  ⟨1, -1, 4, (76/5), 323, 180, -832⟩
theorem selection1_0536_checked : selection1_0536.check profile0536 := by decide +kernel

noncomputable def selection2_0536 : Selection :=
  ⟨2, -9, 8, 15, 95, 164, -464⟩
theorem selection2_0536_checked : selection2_0536.check profile0536 := by decide +kernel

noncomputable def profile0537 : ProfileCell :=
  ⟨(7/37), (18/95),
    [9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨6, 10⟩, ⟨22, 17⟩, ⟨38, 20⟩, ⟨1, 9⟩, ⟨17, 12⟩, ⟨33, 19⟩, ⟨12, 11⟩, ⟨28, 18⟩, ⟨7, 10⟩, ⟨23, 17⟩, ⟨39, 20⟩, ⟨2, 9⟩, ⟨18, 12⟩, ⟨34, 19⟩, ⟨13, 11⟩, ⟨29, 18⟩, ⟨8, 10⟩, ⟨24, 17⟩, ⟨40, 20⟩, ⟨3, 9⟩, ⟨19, 12⟩, ⟨35, 19⟩, ⟨14, 11⟩, ⟨30, 18⟩, ⟨9, 10⟩, ⟨25, 17⟩, ⟨41, 20⟩, ⟨4, 9⟩, ⟨20, 12⟩, ⟨36, 19⟩, ⟨15, 11⟩, ⟨31, 18⟩, ⟨10, 10⟩, ⟨26, 17⟩, ⟨42, 20⟩, ⟨5, 9⟩, ⟨21, 12⟩, ⟨37, 19⟩, ⟨43, 29⟩, ⟨16, 11⟩, ⟨32, 18⟩, ⟨11, 10⟩, ⟨27, 17⟩]⟩
theorem profile0537_checked : profile0537.check := by decide +kernel

noncomputable def selection1_0537 : Selection :=
  ⟨1, -1, 4, (151/10), 304, 82, -314⟩
theorem selection1_0537_checked : selection1_0537.check profile0537 := by decide +kernel

noncomputable def selection2_0537 : Selection :=
  ⟨2, -9, 8, (1497/100), 89, 66, 54⟩
theorem selection2_0537_checked : selection2_0537.check profile0537 := by decide +kernel

noncomputable def profile0538 : ProfileCell :=
  ⟨(18/95), (11/58),
    [9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨27, 18⟩, ⟨6, 10⟩, ⟨22, 17⟩, ⟨38, 20⟩, ⟨1, 9⟩, ⟨17, 12⟩, ⟨33, 19⟩, ⟨12, 11⟩, ⟨28, 18⟩, ⟨7, 10⟩, ⟨23, 17⟩, ⟨39, 20⟩, ⟨2, 9⟩, ⟨18, 12⟩, ⟨34, 19⟩, ⟨13, 11⟩, ⟨29, 18⟩, ⟨8, 10⟩, ⟨24, 17⟩, ⟨40, 20⟩, ⟨3, 9⟩, ⟨19, 12⟩, ⟨35, 19⟩, ⟨14, 11⟩, ⟨30, 18⟩, ⟨9, 10⟩, ⟨25, 17⟩, ⟨41, 20⟩, ⟨4, 9⟩, ⟨20, 12⟩, ⟨36, 19⟩, ⟨15, 11⟩, ⟨31, 18⟩, ⟨10, 10⟩, ⟨26, 17⟩, ⟨42, 20⟩, ⟨5, 9⟩, ⟨21, 12⟩, ⟨37, 19⟩, ⟨16, 11⟩, ⟨43, 29⟩, ⟨32, 18⟩, ⟨11, 10⟩]⟩
theorem profile0538_checked : profile0538.check := by decide +kernel

noncomputable def selection1_0538 : Selection :=
  ⟨1, -1, 4, (753/50), 194, 154, -694⟩
theorem selection1_0538_checked : selection1_0538.check profile0538 := by decide +kernel

noncomputable def selection2_0538 : Selection :=
  ⟨2, -9, 8, (1497/100), 57, 138, -326⟩
theorem selection2_0538_checked : selection2_0538.check profile0538 := by decide +kernel

noncomputable def profile0539 : ProfileCell :=
  ⟨(11/58), (15/79),
    [9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨11, 11⟩, ⟨27, 18⟩, ⟨6, 10⟩, ⟨22, 17⟩, ⟨1, 9⟩, ⟨38, 20⟩, ⟨17, 12⟩, ⟨33, 19⟩, ⟨12, 11⟩, ⟨28, 18⟩, ⟨7, 10⟩, ⟨23, 17⟩, ⟨2, 9⟩, ⟨39, 20⟩, ⟨18, 12⟩, ⟨34, 19⟩, ⟨13, 11⟩, ⟨29, 18⟩, ⟨8, 10⟩, ⟨24, 17⟩, ⟨3, 9⟩, ⟨40, 20⟩, ⟨19, 12⟩, ⟨35, 19⟩, ⟨14, 11⟩, ⟨30, 18⟩, ⟨9, 10⟩, ⟨25, 17⟩, ⟨4, 9⟩, ⟨41, 20⟩, ⟨20, 12⟩, ⟨36, 19⟩, ⟨15, 11⟩, ⟨31, 18⟩, ⟨10, 10⟩, ⟨26, 17⟩, ⟨5, 9⟩, ⟨42, 20⟩, ⟨21, 12⟩, ⟨37, 19⟩, ⟨16, 11⟩, ⟨32, 18⟩, ⟨43, 29⟩]⟩
theorem profile0539_checked : profile0539.check := by decide +kernel

noncomputable def selection1_0539 : Selection :=
  ⟨1, -1, 4, 15, 232, 55, -172⟩
theorem selection1_0539_checked : selection1_0539.check profile0539 := by decide +kernel

noncomputable def selection2_0539 : Selection :=
  ⟨2, -9, 8, (1497/100), 69, 39, 196⟩
theorem selection2_0539_checked : selection2_0539.check profile0539 := by decide +kernel

noncomputable def profile0540 : ProfileCell :=
  ⟨(15/79), (19/100),
    [9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨43, 30⟩, ⟨11, 11⟩, ⟨27, 18⟩, ⟨6, 10⟩, ⟨22, 17⟩, ⟨1, 9⟩, ⟨38, 20⟩, ⟨17, 12⟩, ⟨33, 19⟩, ⟨12, 11⟩, ⟨28, 18⟩, ⟨7, 10⟩, ⟨23, 17⟩, ⟨2, 9⟩, ⟨39, 20⟩, ⟨18, 12⟩, ⟨34, 19⟩, ⟨13, 11⟩, ⟨29, 18⟩, ⟨8, 10⟩, ⟨24, 17⟩, ⟨3, 9⟩, ⟨40, 20⟩, ⟨19, 12⟩, ⟨35, 19⟩, ⟨14, 11⟩, ⟨30, 18⟩, ⟨9, 10⟩, ⟨25, 17⟩, ⟨4, 9⟩, ⟨41, 20⟩, ⟨20, 12⟩, ⟨36, 19⟩, ⟨15, 11⟩, ⟨31, 18⟩, ⟨10, 10⟩, ⟨26, 17⟩, ⟨5, 9⟩, ⟨42, 20⟩, ⟨21, 12⟩, ⟨37, 19⟩, ⟨16, 11⟩, ⟨32, 18⟩]⟩
theorem profile0540_checked : profile0540.check := by decide +kernel

noncomputable def selection1_0540 : Selection :=
  ⟨1, -1, 4, (1509/100), 135, -335, 1882⟩
theorem selection1_0540_checked : selection1_0540.check profile0540 := by decide +kernel

noncomputable def selection2_0540 : Selection :=
  ⟨2, -9, 8, (1503/100), 40, -351, 2250⟩
theorem selection2_0540_checked : selection2_0540.check profile0540 := by decide +kernel

noncomputable def profile0541 : ProfileCell :=
  ⟨(19/100), (4/21),
    [9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨32, 19⟩, ⟨11, 11⟩, ⟨43, 30⟩, ⟨27, 18⟩, ⟨6, 10⟩, ⟨22, 17⟩, ⟨1, 9⟩, ⟨38, 20⟩, ⟨17, 12⟩, ⟨33, 19⟩, ⟨12, 11⟩, ⟨28, 18⟩, ⟨7, 10⟩, ⟨23, 17⟩, ⟨2, 9⟩, ⟨39, 20⟩, ⟨18, 12⟩, ⟨34, 19⟩, ⟨13, 11⟩, ⟨29, 18⟩, ⟨8, 10⟩, ⟨24, 17⟩, ⟨3, 9⟩, ⟨40, 20⟩, ⟨19, 12⟩, ⟨35, 19⟩, ⟨14, 11⟩, ⟨30, 18⟩, ⟨9, 10⟩, ⟨25, 17⟩, ⟨4, 9⟩, ⟨41, 20⟩, ⟨20, 12⟩, ⟨36, 19⟩, ⟨15, 11⟩, ⟨31, 18⟩, ⟨10, 10⟩, ⟨26, 17⟩, ⟨5, 9⟩, ⟨42, 20⟩, ⟨21, 12⟩, ⟨37, 19⟩, ⟨16, 11⟩]⟩
theorem profile0541_checked : profile0541.check := by decide +kernel

noncomputable def selection1_0541 : Selection :=
  ⟨1, -1, 4, (767/50), 516, -221, 1282⟩
theorem selection1_0541_checked : selection1_0541.check profile0541 := by decide +kernel

noncomputable def selection2_0541 : Selection :=
  ⟨2, -9, 8, (1521/100), 151, -237, 1650⟩
theorem selection2_0541_checked : selection2_0541.check profile0541 := by decide +kernel

noncomputable def profile0542 : ProfileCell :=
  ⟨(4/21), (21/110),
    [9, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨16, 12⟩, ⟨37, 20⟩, ⟨11, 11⟩, ⟨32, 19⟩, ⟨6, 10⟩, ⟨27, 18⟩, ⟨43, 30⟩, ⟨1, 9⟩, ⟨22, 17⟩, ⟨17, 12⟩, ⟨38, 20⟩, ⟨12, 11⟩, ⟨33, 19⟩, ⟨7, 10⟩, ⟨28, 18⟩, ⟨2, 9⟩, ⟨23, 17⟩, ⟨18, 12⟩, ⟨39, 20⟩, ⟨13, 11⟩, ⟨34, 19⟩, ⟨8, 10⟩, ⟨29, 18⟩, ⟨3, 9⟩, ⟨24, 17⟩, ⟨19, 12⟩, ⟨40, 20⟩, ⟨14, 11⟩, ⟨35, 19⟩, ⟨9, 10⟩, ⟨30, 18⟩, ⟨4, 9⟩, ⟨25, 17⟩, ⟨20, 12⟩, ⟨41, 20⟩, ⟨15, 11⟩, ⟨36, 19⟩, ⟨10, 10⟩, ⟨31, 18⟩, ⟨5, 9⟩, ⟨26, 17⟩, ⟨21, 12⟩, ⟨42, 20⟩]⟩
theorem profile0542_checked : profile0542.check := by decide +kernel

noncomputable def selection1_0542 : Selection :=
  ⟨1, -2, 4, (271/20), 414, -197, 1156⟩
theorem selection1_0542_checked : selection1_0542.check profile0542 := by decide +kernel

noncomputable def selection2_0542 : Selection :=
  ⟨2, -10, 8, (334/25), 121, -213, 1524⟩
theorem selection2_0542_checked : selection2_0542.check profile0542 := by decide +kernel

noncomputable def profile0543 : ProfileCell :=
  ⟨(21/110), (13/68),
    [9, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨42, 21⟩, ⟨16, 12⟩, ⟨37, 20⟩, ⟨11, 11⟩, ⟨32, 19⟩, ⟨6, 10⟩, ⟨27, 18⟩, ⟨1, 9⟩, ⟨43, 30⟩, ⟨22, 17⟩, ⟨17, 12⟩, ⟨38, 20⟩, ⟨12, 11⟩, ⟨33, 19⟩, ⟨7, 10⟩, ⟨28, 18⟩, ⟨2, 9⟩, ⟨23, 17⟩, ⟨18, 12⟩, ⟨39, 20⟩, ⟨13, 11⟩, ⟨34, 19⟩, ⟨8, 10⟩, ⟨29, 18⟩, ⟨3, 9⟩, ⟨24, 17⟩, ⟨19, 12⟩, ⟨40, 20⟩, ⟨14, 11⟩, ⟨35, 19⟩, ⟨9, 10⟩, ⟨30, 18⟩, ⟨4, 9⟩, ⟨25, 17⟩, ⟨20, 12⟩, ⟨41, 20⟩, ⟨15, 11⟩, ⟨36, 19⟩, ⟨10, 10⟩, ⟨31, 18⟩, ⟨5, 9⟩, ⟨26, 17⟩, ⟨21, 12⟩]⟩
theorem profile0543_checked : profile0543.check := by decide +kernel

noncomputable def selection1_0543 : Selection :=
  ⟨1, -2, 4, (1363/100), 257, -113, 716⟩
theorem selection1_0543_checked : selection1_0543.check profile0543 := by decide +kernel

noncomputable def selection2_0543 : Selection :=
  ⟨2, -10, 8, (1343/100), 75, -129, 1084⟩
theorem selection2_0543_checked : selection2_0543.check profile0543 := by decide +kernel

noncomputable def profile0544 : ProfileCell :=
  ⟨(13/68), (9/47),
    [9, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨21, 13⟩, ⟨42, 21⟩, ⟨16, 12⟩, ⟨37, 20⟩, ⟨11, 11⟩, ⟨32, 19⟩, ⟨6, 10⟩, ⟨27, 18⟩, ⟨1, 9⟩, ⟨22, 17⟩, ⟨43, 30⟩, ⟨17, 12⟩, ⟨38, 20⟩, ⟨12, 11⟩, ⟨33, 19⟩, ⟨7, 10⟩, ⟨28, 18⟩, ⟨2, 9⟩, ⟨23, 17⟩, ⟨18, 12⟩, ⟨39, 20⟩, ⟨13, 11⟩, ⟨34, 19⟩, ⟨8, 10⟩, ⟨29, 18⟩, ⟨3, 9⟩, ⟨24, 17⟩, ⟨19, 12⟩, ⟨40, 20⟩, ⟨14, 11⟩, ⟨35, 19⟩, ⟨9, 10⟩, ⟨30, 18⟩, ⟨4, 9⟩, ⟨25, 17⟩, ⟨20, 12⟩, ⟨41, 20⟩, ⟨15, 11⟩, ⟨36, 19⟩, ⟨10, 10⟩, ⟨31, 18⟩, ⟨5, 9⟩, ⟨26, 17⟩]⟩
theorem profile0544_checked : profile0544.check := by decide +kernel

noncomputable def selection1_0544 : Selection :=
  ⟨1, -2, 4, (344/25), 304, -165, 988⟩
theorem selection1_0544_checked : selection1_0544.check profile0544 := by decide +kernel

noncomputable def selection2_0544 : Selection :=
  ⟨2, -10, 8, (338/25), 89, -181, 1356⟩
theorem selection2_0544_checked : selection2_0544.check profile0544 := by decide +kernel

noncomputable def profile0545 : ProfileCell :=
  ⟨(9/47), (19/99),
    [9, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨26, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨42, 21⟩, ⟨11, 11⟩, ⟨37, 20⟩, ⟨6, 10⟩, ⟨32, 19⟩, ⟨1, 9⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨17, 12⟩, ⟨43, 30⟩, ⟨12, 11⟩, ⟨38, 20⟩, ⟨7, 10⟩, ⟨33, 19⟩, ⟨2, 9⟩, ⟨28, 18⟩, ⟨23, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨39, 20⟩, ⟨8, 10⟩, ⟨34, 19⟩, ⟨3, 9⟩, ⟨29, 18⟩, ⟨24, 17⟩, ⟨19, 12⟩, ⟨14, 11⟩, ⟨40, 20⟩, ⟨9, 10⟩, ⟨35, 19⟩, ⟨4, 9⟩, ⟨30, 18⟩, ⟨25, 17⟩, ⟨20, 12⟩, ⟨15, 11⟩, ⟨41, 20⟩, ⟨10, 10⟩, ⟨36, 19⟩, ⟨5, 9⟩, ⟨31, 18⟩]⟩
theorem profile0545_checked : profile0545.check := by decide +kernel

noncomputable def selection1_0545 : Selection :=
  ⟨1, -2, 4, (699/50), 424, -201, 1176⟩
theorem selection1_0545_checked : selection1_0545.check profile0545 := by decide +kernel

noncomputable def selection2_0545 : Selection :=
  ⟨2, -10, 8, (342/25), 123, -217, 1544⟩
theorem selection2_0545_checked : selection2_0545.check profile0545 := by decide +kernel

noncomputable def profile0546 : ProfileCell :=
  ⟨(19/99), (5/26),
    [9, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4], [9, 9, 9, 9, 9],
    [⟨31, 19⟩, ⟨26, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨42, 21⟩, ⟨11, 11⟩, ⟨37, 20⟩, ⟨6, 10⟩, ⟨32, 19⟩, ⟨1, 9⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨17, 12⟩, ⟨12, 11⟩, ⟨43, 30⟩, ⟨38, 20⟩, ⟨7, 10⟩, ⟨33, 19⟩, ⟨2, 9⟩, ⟨28, 18⟩, ⟨23, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨39, 20⟩, ⟨8, 10⟩, ⟨34, 19⟩, ⟨3, 9⟩, ⟨29, 18⟩, ⟨24, 17⟩, ⟨19, 12⟩, ⟨14, 11⟩, ⟨40, 20⟩, ⟨9, 10⟩, ⟨35, 19⟩, ⟨4, 9⟩, ⟨30, 18⟩, ⟨25, 17⟩, ⟨20, 12⟩, ⟨15, 11⟩, ⟨41, 20⟩, ⟨10, 10⟩, ⟨36, 19⟩, ⟨5, 9⟩]⟩
theorem profile0546_checked : profile0546.check := by decide +kernel

noncomputable def selection1_0546 : Selection :=
  ⟨1, -2, 4, (1407/100), 385, -87, 582⟩
theorem selection1_0546_checked : selection1_0546.check profile0546 := by decide +kernel

noncomputable def selection2_0546 : Selection :=
  ⟨2, -10, 8, (344/25), 112, -103, 950⟩
theorem selection2_0546_checked : selection2_0546.check profile0546 := by decide +kernel

noncomputable def profile0547 : ProfileCell :=
  ⟨(5/26), (21/109),
    [10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 9, 10],
    [⟨5, 10⟩, ⟨36, 20⟩, ⟨31, 19⟩, ⟨21, 13⟩, ⟨26, 18⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨42, 21⟩, ⟨6, 10⟩, ⟨37, 20⟩, ⟨1, 9⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨17, 12⟩, ⟨22, 17⟩, ⟨12, 11⟩, ⟨7, 10⟩, ⟨38, 20⟩, ⟨43, 30⟩, ⟨2, 9⟩, ⟨33, 19⟩, ⟨28, 18⟩, ⟨18, 12⟩, ⟨23, 17⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨39, 20⟩, ⟨3, 9⟩, ⟨34, 19⟩, ⟨29, 18⟩, ⟨19, 12⟩, ⟨24, 17⟩, ⟨14, 11⟩, ⟨9, 10⟩, ⟨40, 20⟩, ⟨4, 9⟩, ⟨35, 19⟩, ⟨30, 18⟩, ⟨20, 12⟩, ⟨25, 17⟩, ⟨15, 11⟩, ⟨10, 10⟩, ⟨41, 20⟩]⟩
theorem profile0547_checked : profile0547.check := by decide +kernel

noncomputable def selection1_0547 : Selection :=
  ⟨1, -2, 4, (354/25), 352, -92, 608⟩
theorem selection1_0547_checked : selection1_0547.check profile0547 := by decide +kernel

noncomputable def selection2_0547 : Selection :=
  ⟨2, -10, 8, (346/25), 102, -108, 976⟩
theorem selection2_0547_checked : selection2_0547.check profile0547 := by decide +kernel

noncomputable def profile0548 : ProfileCell :=
  ⟨(21/109), (11/57),
    [10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 9, 10],
    [⟨41, 21⟩, ⟨5, 10⟩, ⟨36, 20⟩, ⟨31, 19⟩, ⟨21, 13⟩, ⟨26, 18⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨42, 21⟩, ⟨6, 10⟩, ⟨37, 20⟩, ⟨1, 9⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨17, 12⟩, ⟨22, 17⟩, ⟨12, 11⟩, ⟨7, 10⟩, ⟨38, 20⟩, ⟨2, 9⟩, ⟨43, 30⟩, ⟨33, 19⟩, ⟨28, 18⟩, ⟨18, 12⟩, ⟨23, 17⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨39, 20⟩, ⟨3, 9⟩, ⟨34, 19⟩, ⟨29, 18⟩, ⟨19, 12⟩, ⟨24, 17⟩, ⟨14, 11⟩, ⟨9, 10⟩, ⟨40, 20⟩, ⟨4, 9⟩, ⟨35, 19⟩, ⟨30, 18⟩, ⟨20, 12⟩, ⟨25, 17⟩, ⟨15, 11⟩, ⟨10, 10⟩]⟩
theorem profile0548_checked : profile0548.check := by decide +kernel

noncomputable def selection1_0548 : Selection :=
  ⟨1, -2, 4, (709/50), 321, -8, 172⟩
theorem selection1_0548_checked : selection1_0548.check profile0548 := by decide +kernel

noncomputable def selection2_0548 : Selection :=
  ⟨2, -10, 8, (347/25), 93, -24, 540⟩
theorem selection2_0548_checked : selection2_0548.check profile0548 := by decide +kernel

noncomputable def profile0549 : ProfileCell :=
  ⟨(11/57), (6/31),
    [10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 9, 10],
    [⟨10, 11⟩, ⟨5, 10⟩, ⟨41, 21⟩, ⟨36, 20⟩, ⟨31, 19⟩, ⟨21, 13⟩, ⟨26, 18⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨6, 10⟩, ⟨42, 21⟩, ⟨1, 9⟩, ⟨37, 20⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨17, 12⟩, ⟨22, 17⟩, ⟨12, 11⟩, ⟨7, 10⟩, ⟨2, 9⟩, ⟨38, 20⟩, ⟨33, 19⟩, ⟨43, 30⟩, ⟨28, 18⟩, ⟨18, 12⟩, ⟨23, 17⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨3, 9⟩, ⟨39, 20⟩, ⟨34, 19⟩, ⟨29, 18⟩, ⟨19, 12⟩, ⟨24, 17⟩, ⟨14, 11⟩, ⟨9, 10⟩, ⟨4, 9⟩, ⟨40, 20⟩, ⟨35, 19⟩, ⟨30, 18⟩, ⟨20, 12⟩, ⟨25, 17⟩, ⟨15, 11⟩]⟩
theorem profile0549_checked : profile0549.check := by decide +kernel

noncomputable def selection1_0549 : Selection :=
  ⟨1, -2, 4, (143/10), 569, -74, 514⟩
theorem selection1_0549_checked : selection1_0549.check profile0549 := by decide +kernel

noncomputable def selection2_0549 : Selection :=
  ⟨2, -10, 8, (1399/100), 165, -90, 882⟩
theorem selection2_0549_checked : selection2_0549.check profile0549 := by decide +kernel

noncomputable def profile0550 : ProfileCell :=
  ⟨(6/31), (19/98),
    [10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 9, 10],
    [⟨15, 12⟩, ⟨25, 18⟩, ⟨10, 11⟩, ⟨5, 10⟩, ⟨41, 21⟩, ⟨36, 20⟩, ⟨21, 13⟩, ⟨31, 19⟩, ⟨16, 12⟩, ⟨26, 18⟩, ⟨11, 11⟩, ⟨6, 10⟩, ⟨1, 9⟩, ⟨42, 21⟩, ⟨37, 20⟩, ⟨32, 19⟩, ⟨17, 12⟩, ⟨27, 18⟩, ⟨12, 11⟩, ⟨22, 17⟩, ⟨7, 10⟩, ⟨2, 9⟩, ⟨38, 20⟩, ⟨33, 19⟩, ⟨18, 12⟩, ⟨28, 18⟩, ⟨43, 30⟩, ⟨13, 11⟩, ⟨23, 17⟩, ⟨8, 10⟩, ⟨3, 9⟩, ⟨39, 20⟩, ⟨34, 19⟩, ⟨19, 12⟩, ⟨29, 18⟩, ⟨14, 11⟩, ⟨24, 17⟩, ⟨9, 10⟩, ⟨4, 9⟩, ⟨40, 20⟩, ⟨35, 19⟩, ⟨20, 12⟩, ⟨30, 18⟩]⟩
theorem profile0550_checked : profile0550.check := by decide +kernel

noncomputable def selection1_0550 : Selection :=
  ⟨1, -2, 4, (719/50), 333, -86, 576⟩
theorem selection1_0550_checked : selection1_0550.check profile0550 := by decide +kernel

noncomputable def selection2_0550 : Selection :=
  ⟨2, -10, 8, (703/50), 97, -102, 944⟩
theorem selection2_0550_checked : selection2_0550.check profile0550 := by decide +kernel

noncomputable def profile0551 : ProfileCell :=
  ⟨(19/98), (13/67),
    [10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 9, 10],
    [⟨30, 19⟩, ⟨15, 12⟩, ⟨25, 18⟩, ⟨10, 11⟩, ⟨5, 10⟩, ⟨41, 21⟩, ⟨36, 20⟩, ⟨21, 13⟩, ⟨31, 19⟩, ⟨16, 12⟩, ⟨26, 18⟩, ⟨11, 11⟩, ⟨6, 10⟩, ⟨1, 9⟩, ⟨42, 21⟩, ⟨37, 20⟩, ⟨32, 19⟩, ⟨17, 12⟩, ⟨27, 18⟩, ⟨12, 11⟩, ⟨22, 17⟩, ⟨7, 10⟩, ⟨2, 9⟩, ⟨38, 20⟩, ⟨33, 19⟩, ⟨18, 12⟩, ⟨28, 18⟩, ⟨13, 11⟩, ⟨43, 30⟩, ⟨23, 17⟩, ⟨8, 10⟩, ⟨3, 9⟩, ⟨39, 20⟩, ⟨34, 19⟩, ⟨19, 12⟩, ⟨29, 18⟩, ⟨14, 11⟩, ⟨24, 17⟩, ⟨9, 10⟩, ⟨4, 9⟩, ⟨40, 20⟩, ⟨35, 19⟩, ⟨20, 12⟩]⟩
theorem profile0551_checked : profile0551.check := by decide +kernel

noncomputable def selection1_0551 : Selection :=
  ⟨1, -2, 4, (1439/100), 154, -10, 184⟩
theorem selection1_0551_checked : selection1_0551.check profile0551 := by decide +kernel

noncomputable def selection2_0551 : Selection :=
  ⟨2, -10, 8, (352/25), 45, -26, 552⟩
theorem selection2_0551_checked : selection2_0551.check profile0551 := by decide +kernel

noncomputable def profile0552 : ProfileCell :=
  ⟨(13/67), (20/103),
    [10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 9, 10],
    [⟨20, 13⟩, ⟨30, 19⟩, ⟨15, 12⟩, ⟨25, 18⟩, ⟨10, 11⟩, ⟨5, 10⟩, ⟨41, 21⟩, ⟨36, 20⟩, ⟨21, 13⟩, ⟨31, 19⟩, ⟨16, 12⟩, ⟨26, 18⟩, ⟨11, 11⟩, ⟨6, 10⟩, ⟨1, 9⟩, ⟨42, 21⟩, ⟨37, 20⟩, ⟨32, 19⟩, ⟨17, 12⟩, ⟨27, 18⟩, ⟨12, 11⟩, ⟨22, 17⟩, ⟨7, 10⟩, ⟨2, 9⟩, ⟨38, 20⟩, ⟨33, 19⟩, ⟨18, 12⟩, ⟨28, 18⟩, ⟨13, 11⟩, ⟨23, 17⟩, ⟨43, 30⟩, ⟨8, 10⟩, ⟨3, 9⟩, ⟨39, 20⟩, ⟨34, 19⟩, ⟨19, 12⟩, ⟨29, 18⟩, ⟨14, 11⟩, ⟨24, 17⟩, ⟨9, 10⟩, ⟨4, 9⟩, ⟨40, 20⟩, ⟨35, 19⟩]⟩
theorem profile0552_checked : profile0552.check := by decide +kernel

noncomputable def selection1_0552 : Selection :=
  ⟨1, -2, 4, (721/50), 147, -62, 452⟩
theorem selection1_0552_checked : selection1_0552.check profile0552 := by decide +kernel

noncomputable def selection2_0552 : Selection :=
  ⟨2, -10, 8, (1411/100), 43, -78, 820⟩
theorem selection2_0552_checked : selection2_0552.check profile0552 := by decide +kernel

noncomputable def profile0553 : ProfileCell :=
  ⟨(20/103), (7/36),
    [10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 9, 10],
    [⟨35, 20⟩, ⟨20, 13⟩, ⟨30, 19⟩, ⟨15, 12⟩, ⟨25, 18⟩, ⟨10, 11⟩, ⟨5, 10⟩, ⟨41, 21⟩, ⟨36, 20⟩, ⟨21, 13⟩, ⟨31, 19⟩, ⟨16, 12⟩, ⟨26, 18⟩, ⟨11, 11⟩, ⟨6, 10⟩, ⟨1, 9⟩, ⟨42, 21⟩, ⟨37, 20⟩, ⟨32, 19⟩, ⟨17, 12⟩, ⟨27, 18⟩, ⟨12, 11⟩, ⟨22, 17⟩, ⟨7, 10⟩, ⟨2, 9⟩, ⟨38, 20⟩, ⟨33, 19⟩, ⟨18, 12⟩, ⟨28, 18⟩, ⟨13, 11⟩, ⟨23, 17⟩, ⟨8, 10⟩, ⟨43, 30⟩, ⟨3, 9⟩, ⟨39, 20⟩, ⟨34, 19⟩, ⟨19, 12⟩, ⟨29, 18⟩, ⟨14, 11⟩, ⟨24, 17⟩, ⟨9, 10⟩, ⟨4, 9⟩, ⟨40, 20⟩]⟩
theorem profile0553_checked : profile0553.check := by decide +kernel

noncomputable def selection1_0553 : Selection :=
  ⟨1, -2, 4, (721/50), 273, 18, 40⟩
theorem selection1_0553_checked : selection1_0553.check profile0553 := by decide +kernel

noncomputable def selection2_0553 : Selection :=
  ⟨2, -10, 8, (1413/100), 80, 2, 408⟩
theorem selection2_0553_checked : selection2_0553.check profile0553 := by decide +kernel

noncomputable def profile0554 : ProfileCell :=
  ⟨(7/36), (8/41),
    [10, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 9, 10],
    [⟨40, 21⟩, ⟨20, 13⟩, ⟨35, 20⟩, ⟨15, 12⟩, ⟨30, 19⟩, ⟨10, 11⟩, ⟨25, 18⟩, ⟨5, 10⟩, ⟨41, 21⟩, ⟨21, 13⟩, ⟨36, 20⟩, ⟨16, 12⟩, ⟨31, 19⟩, ⟨11, 11⟩, ⟨26, 18⟩, ⟨6, 10⟩, ⟨1, 9⟩, ⟨42, 21⟩, ⟨37, 20⟩, ⟨17, 12⟩, ⟨32, 19⟩, ⟨12, 11⟩, ⟨27, 18⟩, ⟨7, 10⟩, ⟨22, 17⟩, ⟨2, 9⟩, ⟨38, 20⟩, ⟨18, 12⟩, ⟨33, 19⟩, ⟨13, 11⟩, ⟨28, 18⟩, ⟨8, 10⟩, ⟨23, 17⟩, ⟨3, 9⟩, ⟨43, 30⟩, ⟨39, 20⟩, ⟨19, 12⟩, ⟨34, 19⟩, ⟨14, 11⟩, ⟨29, 18⟩, ⟨9, 10⟩, ⟨24, 17⟩, ⟨4, 9⟩]⟩
theorem profile0554_checked : profile0554.check := by decide +kernel

noncomputable def selection1_0554 : Selection :=
  ⟨1, -3, 4, (621/50), 590, 123, -500⟩
theorem selection1_0554_checked : selection1_0554.check profile0554 := by decide +kernel

noncomputable def selection2_0554 : Selection :=
  ⟨2, -11, 8, (1213/100), 171, 107, -132⟩
theorem selection2_0554_checked : selection2_0554.check profile0554 := by decide +kernel

noncomputable def profile0555 : ProfileCell :=
  ⟨(8/41), (9/46),
    [10, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 9, 10],
    [⟨20, 13⟩, ⟨40, 21⟩, ⟨15, 12⟩, ⟨35, 20⟩, ⟨10, 11⟩, ⟨30, 19⟩, ⟨5, 10⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨41, 21⟩, ⟨16, 12⟩, ⟨36, 20⟩, ⟨11, 11⟩, ⟨31, 19⟩, ⟨6, 10⟩, ⟨26, 18⟩, ⟨1, 9⟩, ⟨42, 21⟩, ⟨17, 12⟩, ⟨37, 20⟩, ⟨12, 11⟩, ⟨32, 19⟩, ⟨7, 10⟩, ⟨27, 18⟩, ⟨2, 9⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨38, 20⟩, ⟨13, 11⟩, ⟨33, 19⟩, ⟨8, 10⟩, ⟨28, 18⟩, ⟨3, 9⟩, ⟨23, 17⟩, ⟨43, 30⟩, ⟨19, 12⟩, ⟨39, 20⟩, ⟨14, 11⟩, ⟨34, 19⟩, ⟨9, 10⟩, ⟨29, 18⟩, ⟨4, 9⟩, ⟨24, 17⟩]⟩
theorem profile0555_checked : profile0555.check := by decide +kernel

noncomputable def selection1_0555 : Selection :=
  ⟨1, -3, 4, (1231/100), 457, -5, 156⟩
theorem selection1_0555_checked : selection1_0555.check profile0555 := by decide +kernel

noncomputable def selection2_0555 : Selection :=
  ⟨2, -11, 8, (1217/100), 134, -21, 524⟩
theorem selection2_0555_checked : selection2_0555.check profile0555 := by decide +kernel

noncomputable def profile0556 : ProfileCell :=
  ⟨(9/46), (19/97),
    [10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 9, 10],
    [⟨24, 18⟩, ⟨20, 13⟩, ⟨15, 12⟩, ⟨40, 21⟩, ⟨10, 11⟩, ⟨35, 20⟩, ⟨5, 10⟩, ⟨30, 19⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨41, 21⟩, ⟨11, 11⟩, ⟨36, 20⟩, ⟨6, 10⟩, ⟨31, 19⟩, ⟨1, 9⟩, ⟨26, 18⟩, ⟨17, 12⟩, ⟨42, 21⟩, ⟨12, 11⟩, ⟨37, 20⟩, ⟨7, 10⟩, ⟨32, 19⟩, ⟨2, 9⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨38, 20⟩, ⟨8, 10⟩, ⟨33, 19⟩, ⟨3, 9⟩, ⟨28, 18⟩, ⟨23, 17⟩, ⟨19, 12⟩, ⟨43, 30⟩, ⟨14, 11⟩, ⟨39, 20⟩, ⟨9, 10⟩, ⟨34, 19⟩, ⟨4, 9⟩, ⟨29, 18⟩]⟩
theorem profile0556_checked : profile0556.check := by decide +kernel

noncomputable def selection1_0556 : Selection :=
  ⟨1, -4, 4, (1031/100), 162, 40, -74⟩
theorem selection1_0556_checked : selection1_0556.check profile0556 := by decide +kernel

noncomputable def selection2_0556 : Selection :=
  ⟨2, -12, 8, (1019/100), 48, 24, 294⟩
theorem selection2_0556_checked : selection2_0556.check profile0556 := by decide +kernel

noncomputable def profile0557 : ProfileCell :=
  ⟨(19/97), (10/51),
    [10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 9, 10],
    [⟨29, 19⟩, ⟨24, 18⟩, ⟨20, 13⟩, ⟨15, 12⟩, ⟨40, 21⟩, ⟨10, 11⟩, ⟨35, 20⟩, ⟨5, 10⟩, ⟨30, 19⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨41, 21⟩, ⟨11, 11⟩, ⟨36, 20⟩, ⟨6, 10⟩, ⟨31, 19⟩, ⟨1, 9⟩, ⟨26, 18⟩, ⟨17, 12⟩, ⟨42, 21⟩, ⟨12, 11⟩, ⟨37, 20⟩, ⟨7, 10⟩, ⟨32, 19⟩, ⟨2, 9⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨38, 20⟩, ⟨8, 10⟩, ⟨33, 19⟩, ⟨3, 9⟩, ⟨28, 18⟩, ⟨23, 17⟩, ⟨19, 12⟩, ⟨14, 11⟩, ⟨43, 30⟩, ⟨39, 20⟩, ⟨9, 10⟩, ⟨34, 19⟩, ⟨4, 9⟩]⟩
theorem profile0557_checked : profile0557.check := by decide +kernel

noncomputable def selection1_0557 : Selection :=
  ⟨1, -4, 4, (1031/100), 146, 154, -656⟩
theorem selection1_0557_checked : selection1_0557.check profile0557 := by decide +kernel

noncomputable def selection2_0557 : Selection :=
  ⟨2, -12, 8, (1019/100), 43, 138, -288⟩
theorem selection2_0557_checked : selection2_0557.check profile0557 := by decide +kernel

noncomputable def profile0558 : ProfileCell :=
  ⟨(10/51), (31/158),
    [10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 10, 10],
    [⟨4, 10⟩, ⟨34, 20⟩, ⟨29, 19⟩, ⟨24, 18⟩, ⟨20, 13⟩, ⟨15, 12⟩, ⟨10, 11⟩, ⟨40, 21⟩, ⟨5, 10⟩, ⟨35, 20⟩, ⟨30, 19⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨41, 21⟩, ⟨6, 10⟩, ⟨36, 20⟩, ⟨1, 9⟩, ⟨31, 19⟩, ⟨26, 18⟩, ⟨17, 12⟩, ⟨12, 11⟩, ⟨42, 21⟩, ⟨7, 10⟩, ⟨37, 20⟩, ⟨2, 9⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨38, 20⟩, ⟨3, 9⟩, ⟨33, 19⟩, ⟨28, 18⟩, ⟨23, 17⟩, ⟨19, 12⟩, ⟨14, 11⟩, ⟨9, 10⟩, ⟨39, 20⟩, ⟨43, 30⟩]⟩
theorem profile0558_checked : profile0558.check := by decide +kernel

noncomputable def selection1_0558 : Selection :=
  ⟨1, -2, 4, (57/4), 124, 94, -350⟩
theorem selection1_0558_checked : selection1_0558.check profile0558 := by decide +kernel

noncomputable def selection2_0558 : Selection :=
  ⟨2, -10, 8, (709/50), 37, 78, 18⟩
theorem selection2_0558_checked : selection2_0558.check profile0558 := by decide +kernel

noncomputable def profile0559 : ProfileCell :=
  ⟨(31/158), (21/107),
    [10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 10, 10],
    [⟨43, 31⟩, ⟨4, 10⟩, ⟨34, 20⟩, ⟨29, 19⟩, ⟨24, 18⟩, ⟨20, 13⟩, ⟨15, 12⟩, ⟨10, 11⟩, ⟨40, 21⟩, ⟨5, 10⟩, ⟨35, 20⟩, ⟨30, 19⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨41, 21⟩, ⟨6, 10⟩, ⟨36, 20⟩, ⟨1, 9⟩, ⟨31, 19⟩, ⟨26, 18⟩, ⟨17, 12⟩, ⟨12, 11⟩, ⟨42, 21⟩, ⟨7, 10⟩, ⟨37, 20⟩, ⟨2, 9⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨38, 20⟩, ⟨3, 9⟩, ⟨33, 19⟩, ⟨28, 18⟩, ⟨23, 17⟩, ⟨19, 12⟩, ⟨14, 11⟩, ⟨9, 10⟩, ⟨39, 20⟩]⟩
theorem profile0559_checked : profile0559.check := by decide +kernel

noncomputable def selection1_0559 : Selection :=
  ⟨1, -2, 4, (1427/100), 59, -309, 1704⟩
theorem selection1_0559_checked : selection1_0559.check profile0559 := by decide +kernel

noncomputable def selection2_0559 : Selection :=
  ⟨2, -10, 8, (71/5), 18, -325, 2072⟩
theorem selection2_0559_checked : selection2_0559.check profile0559 := by decide +kernel

noncomputable def profile0560 : ProfileCell :=
  ⟨(21/107), (11/56),
    [10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 10, 10],
    [⟨39, 21⟩, ⟨4, 10⟩, ⟨43, 31⟩, ⟨34, 20⟩, ⟨29, 19⟩, ⟨24, 18⟩, ⟨20, 13⟩, ⟨15, 12⟩, ⟨10, 11⟩, ⟨40, 21⟩, ⟨5, 10⟩, ⟨35, 20⟩, ⟨30, 19⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨41, 21⟩, ⟨6, 10⟩, ⟨36, 20⟩, ⟨1, 9⟩, ⟨31, 19⟩, ⟨26, 18⟩, ⟨17, 12⟩, ⟨12, 11⟩, ⟨42, 21⟩, ⟨7, 10⟩, ⟨37, 20⟩, ⟨2, 9⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨38, 20⟩, ⟨3, 9⟩, ⟨33, 19⟩, ⟨28, 18⟩, ⟨23, 17⟩, ⟨19, 12⟩, ⟨14, 11⟩, ⟨9, 10⟩]⟩
theorem profile0560_checked : profile0560.check := by decide +kernel

noncomputable def selection1_0560 : Selection :=
  ⟨1, -2, 4, (287/20), 168, -183, 1062⟩
theorem selection1_0560_checked : selection1_0560.check profile0560 := by decide +kernel

noncomputable def selection2_0560 : Selection :=
  ⟨2, -10, 8, (713/50), 50, -199, 1430⟩
theorem selection2_0560_checked : selection2_0560.check profile0560 := by decide +kernel

noncomputable def profile0561 : ProfileCell :=
  ⟨(11/56), (12/61),
    [10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 10, 10],
    [⟨9, 11⟩, ⟨4, 10⟩, ⟨39, 21⟩, ⟨34, 20⟩, ⟨43, 31⟩, ⟨29, 19⟩, ⟨24, 18⟩, ⟨20, 13⟩, ⟨15, 12⟩, ⟨10, 11⟩, ⟨5, 10⟩, ⟨40, 21⟩, ⟨35, 20⟩, ⟨30, 19⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨6, 10⟩, ⟨41, 21⟩, ⟨1, 9⟩, ⟨36, 20⟩, ⟨31, 19⟩, ⟨26, 18⟩, ⟨17, 12⟩, ⟨12, 11⟩, ⟨7, 10⟩, ⟨42, 21⟩, ⟨2, 9⟩, ⟨37, 20⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨3, 9⟩, ⟨38, 20⟩, ⟨33, 19⟩, ⟨28, 18⟩, ⟨23, 17⟩, ⟨19, 12⟩, ⟨14, 11⟩]⟩
theorem profile0561_checked : profile0561.check := by decide +kernel

noncomputable def selection1_0561 : Selection :=
  ⟨1, -2, 4, (1453/100), 298, -260, 1454⟩
theorem selection1_0561_checked : selection1_0561.check profile0561 := by decide +kernel

noncomputable def selection2_0561 : Selection :=
  ⟨2, -10, 8, (719/50), 88, -276, 1822⟩
theorem selection2_0561_checked : selection2_0561.check profile0561 := by decide +kernel

noncomputable def profile0562 : ProfileCell :=
  ⟨(12/61), (13/66),
    [10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 10, 10],
    [⟨14, 12⟩, ⟨9, 11⟩, ⟨4, 10⟩, ⟨39, 21⟩, ⟨34, 20⟩, ⟨29, 19⟩, ⟨43, 31⟩, ⟨24, 18⟩, ⟨20, 13⟩, ⟨15, 12⟩, ⟨10, 11⟩, ⟨5, 10⟩, ⟨40, 21⟩, ⟨35, 20⟩, ⟨30, 19⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨6, 10⟩, ⟨1, 9⟩, ⟨41, 21⟩, ⟨36, 20⟩, ⟨31, 19⟩, ⟨26, 18⟩, ⟨17, 12⟩, ⟨12, 11⟩, ⟨7, 10⟩, ⟨2, 9⟩, ⟨42, 21⟩, ⟨37, 20⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨3, 9⟩, ⟨38, 20⟩, ⟨33, 19⟩, ⟨28, 18⟩, ⟨23, 17⟩, ⟨19, 12⟩]⟩
theorem profile0562_checked : profile0562.check := by decide +kernel

noncomputable def selection1_0562 : Selection :=
  ⟨1, -2, 4, (1471/100), 256, -332, 1820⟩
theorem selection1_0562_checked : selection1_0562.check profile0562 := by decide +kernel

noncomputable def selection2_0562 : Selection :=
  ⟨2, -10, 8, (29/2), 75, -348, 2188⟩
theorem selection2_0562_checked : selection2_0562.check profile0562 := by decide +kernel

noncomputable def profile0563 : ProfileCell :=
  ⟨(13/66), (18/91),
    [10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 10, 10],
    [⟨19, 13⟩, ⟨14, 12⟩, ⟨9, 11⟩, ⟨4, 10⟩, ⟨39, 21⟩, ⟨34, 20⟩, ⟨29, 19⟩, ⟨24, 18⟩, ⟨43, 31⟩, ⟨20, 13⟩, ⟨15, 12⟩, ⟨10, 11⟩, ⟨5, 10⟩, ⟨40, 21⟩, ⟨35, 20⟩, ⟨30, 19⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨6, 10⟩, ⟨1, 9⟩, ⟨41, 21⟩, ⟨36, 20⟩, ⟨31, 19⟩, ⟨26, 18⟩, ⟨17, 12⟩, ⟨12, 11⟩, ⟨7, 10⟩, ⟨2, 9⟩, ⟨42, 21⟩, ⟨37, 20⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨3, 9⟩, ⟨38, 20⟩, ⟨33, 19⟩, ⟨28, 18⟩, ⟨23, 17⟩]⟩
theorem profile0563_checked : profile0563.check := by decide +kernel

noncomputable def selection1_0563 : Selection :=
  ⟨1, -1, 4, (309/20), 898, -386, 2070⟩
theorem selection1_0563_checked : selection1_0563.check profile0563 := by decide +kernel

noncomputable def selection2_0563 : Selection :=
  ⟨2, -9, 8, (1497/100), 259, -406, 2438⟩
theorem selection2_0563_checked : selection2_0563.check profile0563 := by decide +kernel

noncomputable def profile0564 : ProfileCell :=
  ⟨(18/91), (19/96),
    [10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 10, 10],
    [⟨23, 18⟩, ⟨19, 13⟩, ⟨14, 12⟩, ⟨9, 11⟩, ⟨4, 10⟩, ⟨39, 21⟩, ⟨34, 20⟩, ⟨29, 19⟩, ⟨24, 18⟩, ⟨20, 13⟩, ⟨43, 31⟩, ⟨15, 12⟩, ⟨10, 11⟩, ⟨5, 10⟩, ⟨40, 21⟩, ⟨35, 20⟩, ⟨30, 19⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨6, 10⟩, ⟨1, 9⟩, ⟨41, 21⟩, ⟨36, 20⟩, ⟨31, 19⟩, ⟨26, 18⟩, ⟨17, 12⟩, ⟨12, 11⟩, ⟨7, 10⟩, ⟨2, 9⟩, ⟨42, 21⟩, ⟨37, 20⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨3, 9⟩, ⟨38, 20⟩, ⟨33, 19⟩, ⟨28, 18⟩]⟩
theorem profile0564_checked : profile0564.check := by decide +kernel

noncomputable def selection1_0564 : Selection :=
  ⟨1, -1, 4, (1553/100), 124, -314, 1706⟩
theorem selection1_0564_checked : selection1_0564.check profile0564 := by decide +kernel

noncomputable def selection2_0564 : Selection :=
  ⟨2, -9, 8, (751/50), 36, -334, 2074⟩
theorem selection2_0564_checked : selection2_0564.check profile0564 := by decide +kernel

noncomputable def profile0565 : ProfileCell :=
  ⟨(19/96), (20/101),
    [10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 10, 10],
    [⟨28, 19⟩, ⟨23, 18⟩, ⟨19, 13⟩, ⟨14, 12⟩, ⟨9, 11⟩, ⟨4, 10⟩, ⟨39, 21⟩, ⟨34, 20⟩, ⟨29, 19⟩, ⟨24, 18⟩, ⟨20, 13⟩, ⟨15, 12⟩, ⟨43, 31⟩, ⟨10, 11⟩, ⟨5, 10⟩, ⟨40, 21⟩, ⟨35, 20⟩, ⟨30, 19⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨6, 10⟩, ⟨1, 9⟩, ⟨41, 21⟩, ⟨36, 20⟩, ⟨31, 19⟩, ⟨26, 18⟩, ⟨17, 12⟩, ⟨12, 11⟩, ⟨7, 10⟩, ⟨2, 9⟩, ⟨42, 21⟩, ⟨37, 20⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨3, 9⟩, ⟨38, 20⟩, ⟨33, 19⟩]⟩
theorem profile0565_checked : profile0565.check := by decide +kernel

noncomputable def selection1_0565 : Selection :=
  ⟨1, -1, 4, (779/50), 112, -200, 1130⟩
theorem selection1_0565_checked : selection1_0565.check profile0565 := by decide +kernel

noncomputable def selection2_0565 : Selection :=
  ⟨2, -9, 8, (753/50), 33, -220, 1498⟩
theorem selection2_0565_checked : selection2_0565.check profile0565 := by decide +kernel

noncomputable def profile0566 : ProfileCell :=
  ⟨(20/101), (21/106),
    [10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 10, 10],
    [⟨33, 20⟩, ⟨28, 19⟩, ⟨23, 18⟩, ⟨19, 13⟩, ⟨14, 12⟩, ⟨9, 11⟩, ⟨4, 10⟩, ⟨39, 21⟩, ⟨34, 20⟩, ⟨29, 19⟩, ⟨24, 18⟩, ⟨20, 13⟩, ⟨15, 12⟩, ⟨10, 11⟩, ⟨43, 31⟩, ⟨5, 10⟩, ⟨40, 21⟩, ⟨35, 20⟩, ⟨30, 19⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨6, 10⟩, ⟨1, 9⟩, ⟨41, 21⟩, ⟨36, 20⟩, ⟨31, 19⟩, ⟨26, 18⟩, ⟨17, 12⟩, ⟨12, 11⟩, ⟨7, 10⟩, ⟨2, 9⟩, ⟨42, 21⟩, ⟨37, 20⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨3, 9⟩, ⟨38, 20⟩]⟩
theorem profile0566_checked : profile0566.check := by decide +kernel

noncomputable def selection1_0566 : Selection :=
  ⟨1, -1, 4, (78/5), 102, -120, 726⟩
theorem selection1_0566_checked : selection1_0566.check profile0566 := by decide +kernel

noncomputable def selection2_0566 : Selection :=
  ⟨2, -9, 8, (377/25), 30, -140, 1094⟩
theorem selection2_0566_checked : selection2_0566.check profile0566 := by decide +kernel

noncomputable def profile0567 : ProfileCell :=
  ⟨(21/106), (1/5),
    [10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4], [9, 9, 9, 10, 10],
    [⟨38, 21⟩, ⟨33, 20⟩, ⟨28, 19⟩, ⟨23, 18⟩, ⟨19, 13⟩, ⟨14, 12⟩, ⟨9, 11⟩, ⟨4, 10⟩, ⟨39, 21⟩, ⟨34, 20⟩, ⟨29, 19⟩, ⟨24, 18⟩, ⟨20, 13⟩, ⟨15, 12⟩, ⟨10, 11⟩, ⟨5, 10⟩, ⟨43, 31⟩, ⟨40, 21⟩, ⟨35, 20⟩, ⟨30, 19⟩, ⟨25, 18⟩, ⟨21, 13⟩, ⟨16, 12⟩, ⟨11, 11⟩, ⟨6, 10⟩, ⟨1, 9⟩, ⟨41, 21⟩, ⟨36, 20⟩, ⟨31, 19⟩, ⟨26, 18⟩, ⟨17, 12⟩, ⟨12, 11⟩, ⟨7, 10⟩, ⟨2, 9⟩, ⟨42, 21⟩, ⟨37, 20⟩, ⟨32, 19⟩, ⟨27, 18⟩, ⟨22, 17⟩, ⟨18, 12⟩, ⟨13, 11⟩, ⟨8, 10⟩, ⟨3, 9⟩]⟩
theorem profile0567_checked : profile0567.check := by decide +kernel

noncomputable def selection1_0567 : Selection :=
  ⟨1, -1, 4, (1567/100), 2057, 6, 90⟩
theorem selection1_0567_checked : selection1_0567.check profile0567 := by decide +kernel

noncomputable def selection2_0567 : Selection :=
  ⟨2, -9, 8, (382/25), 597, -14, 458⟩
theorem selection2_0567_checked : selection2_0567.check profile0567 := by decide +kernel

noncomputable def profile0568 : ProfileCell :=
  ⟨(1/5), (22/109),
    [10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 9, 10, 10, 10],
    [⟨3, 10⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨4, 10⟩, ⟨9, 11⟩, ⟨14, 12⟩, ⟨19, 13⟩, ⟨23, 18⟩, ⟨28, 19⟩, ⟨33, 20⟩, ⟨38, 21⟩, ⟨5, 10⟩, ⟨10, 11⟩, ⟨15, 12⟩, ⟨20, 13⟩, ⟨24, 18⟩, ⟨29, 19⟩, ⟨34, 20⟩, ⟨39, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨11, 11⟩, ⟨16, 12⟩, ⟨21, 13⟩, ⟨25, 18⟩, ⟨30, 19⟩, ⟨35, 20⟩, ⟨40, 21⟩, ⟨43, 31⟩, ⟨2, 9⟩, ⟨7, 10⟩, ⟨12, 11⟩, ⟨17, 12⟩, ⟨26, 18⟩, ⟨31, 19⟩, ⟨36, 20⟩, ⟨41, 21⟩]⟩
theorem profile0568_checked : profile0568.check := by decide +kernel

noncomputable def selection1_0568 : Selection :=
  ⟨1, -2, 4, (699/50), 1779, -58, 410⟩
theorem selection1_0568_checked : selection1_0568.check profile0568 := by decide +kernel

noncomputable def selection2_0568 : Selection :=
  ⟨2, -10, 8, (68/5), 516, -78, 778⟩
theorem selection2_0568_checked : selection2_0568.check profile0568 := by decide +kernel

noncomputable def profile0569 : ProfileCell :=
  ⟨(22/109), (21/104),
    [10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 9, 10, 10, 10],
    [⟨41, 22⟩, ⟨3, 10⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨4, 10⟩, ⟨9, 11⟩, ⟨14, 12⟩, ⟨19, 13⟩, ⟨23, 18⟩, ⟨28, 19⟩, ⟨33, 20⟩, ⟨38, 21⟩, ⟨5, 10⟩, ⟨10, 11⟩, ⟨15, 12⟩, ⟨20, 13⟩, ⟨24, 18⟩, ⟨29, 19⟩, ⟨34, 20⟩, ⟨39, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨11, 11⟩, ⟨16, 12⟩, ⟨21, 13⟩, ⟨25, 18⟩, ⟨30, 19⟩, ⟨35, 20⟩, ⟨40, 21⟩, ⟨2, 9⟩, ⟨43, 31⟩, ⟨7, 10⟩, ⟨12, 11⟩, ⟨17, 12⟩, ⟨26, 18⟩, ⟨31, 19⟩, ⟨36, 20⟩]⟩
theorem profile0569_checked : profile0569.check := by decide +kernel

noncomputable def selection1_0569 : Selection :=
  ⟨1, -2, 4, (699/50), 86, 74, -244⟩
theorem selection1_0569_checked : selection1_0569.check profile0569 := by decide +kernel

noncomputable def selection2_0569 : Selection :=
  ⟨2, -10, 8, (68/5), 25, 54, 124⟩
theorem selection2_0569_checked : selection2_0569.check profile0569 := by decide +kernel

noncomputable def profile0570 : ProfileCell :=
  ⟨(21/104), (20/99),
    [10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 9, 10, 10, 10],
    [⟨36, 21⟩, ⟨41, 22⟩, ⟨3, 10⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨4, 10⟩, ⟨9, 11⟩, ⟨14, 12⟩, ⟨19, 13⟩, ⟨23, 18⟩, ⟨28, 19⟩, ⟨33, 20⟩, ⟨38, 21⟩, ⟨5, 10⟩, ⟨10, 11⟩, ⟨15, 12⟩, ⟨20, 13⟩, ⟨24, 18⟩, ⟨29, 19⟩, ⟨34, 20⟩, ⟨39, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨11, 11⟩, ⟨16, 12⟩, ⟨21, 13⟩, ⟨25, 18⟩, ⟨30, 19⟩, ⟨35, 20⟩, ⟨40, 21⟩, ⟨2, 9⟩, ⟨7, 10⟩, ⟨43, 31⟩, ⟨12, 11⟩, ⟨17, 12⟩, ⟨26, 18⟩, ⟨31, 19⟩]⟩
theorem profile0570_checked : profile0570.check := by decide +kernel

noncomputable def selection1_0570 : Selection :=
  ⟨1, -2, 4, (1397/100), 94, 158, -660⟩
theorem selection1_0570_checked : selection1_0570.check profile0570 := by decide +kernel

noncomputable def selection2_0570 : Selection :=
  ⟨2, -10, 8, (68/5), 28, 138, -292⟩
theorem selection2_0570_checked : selection2_0570.check profile0570 := by decide +kernel

noncomputable def profile0571 : ProfileCell :=
  ⟨(20/99), (19/94),
    [10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 9, 10, 10, 10],
    [⟨31, 20⟩, ⟨36, 21⟩, ⟨41, 22⟩, ⟨3, 10⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨4, 10⟩, ⟨9, 11⟩, ⟨14, 12⟩, ⟨19, 13⟩, ⟨23, 18⟩, ⟨28, 19⟩, ⟨33, 20⟩, ⟨38, 21⟩, ⟨5, 10⟩, ⟨10, 11⟩, ⟨15, 12⟩, ⟨20, 13⟩, ⟨24, 18⟩, ⟨29, 19⟩, ⟨34, 20⟩, ⟨39, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨11, 11⟩, ⟨16, 12⟩, ⟨21, 13⟩, ⟨25, 18⟩, ⟨30, 19⟩, ⟨35, 20⟩, ⟨40, 21⟩, ⟨2, 9⟩, ⟨7, 10⟩, ⟨12, 11⟩, ⟨43, 31⟩, ⟨17, 12⟩, ⟨26, 18⟩]⟩
theorem profile0571_checked : profile0571.check := by decide +kernel

noncomputable def selection1_0571 : Selection :=
  ⟨1, -2, 4, (279/20), 104, 278, -1254⟩
theorem selection1_0571_checked : selection1_0571.check profile0571 := by decide +kernel

noncomputable def selection2_0571 : Selection :=
  ⟨2, -10, 8, (68/5), 31, 258, -886⟩
theorem selection2_0571_checked : selection2_0571.check profile0571 := by decide +kernel

noncomputable def profile0572 : ProfileCell :=
  ⟨(19/94), (16/79),
    [10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 9, 10, 10, 10],
    [⟨26, 19⟩, ⟨31, 20⟩, ⟨36, 21⟩, ⟨41, 22⟩, ⟨3, 10⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨4, 10⟩, ⟨9, 11⟩, ⟨14, 12⟩, ⟨19, 13⟩, ⟨23, 18⟩, ⟨28, 19⟩, ⟨33, 20⟩, ⟨38, 21⟩, ⟨5, 10⟩, ⟨10, 11⟩, ⟨15, 12⟩, ⟨20, 13⟩, ⟨24, 18⟩, ⟨29, 19⟩, ⟨34, 20⟩, ⟨39, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨11, 11⟩, ⟨16, 12⟩, ⟨21, 13⟩, ⟨25, 18⟩, ⟨30, 19⟩, ⟨35, 20⟩, ⟨40, 21⟩, ⟨2, 9⟩, ⟨7, 10⟩, ⟨12, 11⟩, ⟨17, 12⟩, ⟨43, 31⟩]⟩
theorem profile0572_checked : profile0572.check := by decide +kernel

noncomputable def selection1_0572 : Selection :=
  ⟨1, -2, 4, (1389/100), 389, 354, -1630⟩
theorem selection1_0572_checked : selection1_0572.check profile0572 := by decide +kernel

noncomputable def selection2_0572 : Selection :=
  ⟨2, -10, 8, (679/50), 114, 334, -1262⟩
theorem selection2_0572_checked : selection2_0572.check profile0572 := by decide +kernel

noncomputable def profile0573 : ProfileCell :=
  ⟨(16/79), (13/64),
    [10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 9, 10, 10, 10],
    [⟨43, 32⟩, ⟨26, 19⟩, ⟨31, 20⟩, ⟨36, 21⟩, ⟨41, 22⟩, ⟨3, 10⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨4, 10⟩, ⟨9, 11⟩, ⟨14, 12⟩, ⟨19, 13⟩, ⟨23, 18⟩, ⟨28, 19⟩, ⟨33, 20⟩, ⟨38, 21⟩, ⟨5, 10⟩, ⟨10, 11⟩, ⟨15, 12⟩, ⟨20, 13⟩, ⟨24, 18⟩, ⟨29, 19⟩, ⟨34, 20⟩, ⟨39, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨11, 11⟩, ⟨16, 12⟩, ⟨21, 13⟩, ⟨25, 18⟩, ⟨30, 19⟩, ⟨35, 20⟩, ⟨40, 21⟩, ⟨2, 9⟩, ⟨7, 10⟩, ⟨12, 11⟩, ⟨17, 12⟩]⟩
theorem profile0573_checked : profile0573.check := by decide +kernel

noncomputable def selection1_0573 : Selection :=
  ⟨1, -2, 4, (342/25), 562, -30, 266⟩
theorem selection1_0573_checked : selection1_0573.check profile0573 := by decide +kernel

noncomputable def selection2_0573 : Selection :=
  ⟨2, -10, 8, (677/50), 166, -50, 634⟩
theorem selection2_0573_checked : selection2_0573.check profile0573 := by decide +kernel

noncomputable def profile0574 : ProfileCell :=
  ⟨(13/64), (12/59),
    [10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 9, 10, 10, 10],
    [⟨17, 13⟩, ⟨26, 19⟩, ⟨43, 32⟩, ⟨31, 20⟩, ⟨36, 21⟩, ⟨41, 22⟩, ⟨3, 10⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨4, 10⟩, ⟨9, 11⟩, ⟨14, 12⟩, ⟨19, 13⟩, ⟨23, 18⟩, ⟨28, 19⟩, ⟨33, 20⟩, ⟨38, 21⟩, ⟨5, 10⟩, ⟨10, 11⟩, ⟨15, 12⟩, ⟨20, 13⟩, ⟨24, 18⟩, ⟨29, 19⟩, ⟨34, 20⟩, ⟨39, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨11, 11⟩, ⟨16, 12⟩, ⟨21, 13⟩, ⟨25, 18⟩, ⟨30, 19⟩, ⟨35, 20⟩, ⟨40, 21⟩, ⟨2, 9⟩, ⟨7, 10⟩, ⟨12, 11⟩]⟩
theorem profile0574_checked : profile0574.check := by decide +kernel

noncomputable def selection1_0574 : Selection :=
  ⟨1, -2, 4, (55/4), 252, -108, 650⟩
theorem selection1_0574_checked : selection1_0574.check profile0574 := by decide +kernel

noncomputable def selection2_0574 : Selection :=
  ⟨2, -10, 8, (68/5), 75, -128, 1018⟩
theorem selection2_0574_checked : selection2_0574.check profile0574 := by decide +kernel

noncomputable def profile0575 : ProfileCell :=
  ⟨(12/59), (11/54),
    [10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 9, 10, 10, 10],
    [⟨12, 12⟩, ⟨17, 13⟩, ⟨26, 19⟩, ⟨31, 20⟩, ⟨43, 32⟩, ⟨36, 21⟩, ⟨3, 10⟩, ⟨41, 22⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨37, 21⟩, ⟨4, 10⟩, ⟨42, 22⟩, ⟨9, 11⟩, ⟨14, 12⟩, ⟨19, 13⟩, ⟨23, 18⟩, ⟨28, 19⟩, ⟨33, 20⟩, ⟨38, 21⟩, ⟨5, 10⟩, ⟨10, 11⟩, ⟨15, 12⟩, ⟨20, 13⟩, ⟨24, 18⟩, ⟨29, 19⟩, ⟨34, 20⟩, ⟨1, 9⟩, ⟨39, 21⟩, ⟨6, 10⟩, ⟨11, 11⟩, ⟨16, 12⟩, ⟨21, 13⟩, ⟨25, 18⟩, ⟨30, 19⟩, ⟨35, 20⟩, ⟨2, 9⟩, ⟨40, 21⟩, ⟨7, 10⟩]⟩
theorem profile0575_checked : profile0575.check := by decide +kernel

noncomputable def selection1_0575 : Selection :=
  ⟨1, -2, 4, (347/25), 301, -180, 1004⟩
theorem selection1_0575_checked : selection1_0575.check profile0575 := by decide +kernel

noncomputable def selection2_0575 : Selection :=
  ⟨2, -10, 8, (137/10), 89, -200, 1372⟩
theorem selection2_0575_checked : selection2_0575.check profile0575 := by decide +kernel

noncomputable def leaf1_0512 : Block :=
  Block.single profile0512 selection1_0512 profile0512_checked selection1_0512_checked
noncomputable def leaf1_0513 : Block :=
  Block.single profile0513 selection1_0513 profile0513_checked selection1_0513_checked
noncomputable def leaf1_0514 : Block :=
  Block.single profile0514 selection1_0514 profile0514_checked selection1_0514_checked
noncomputable def leaf1_0515 : Block :=
  Block.single profile0515 selection1_0515 profile0515_checked selection1_0515_checked
noncomputable def leaf1_0516 : Block :=
  Block.single profile0516 selection1_0516 profile0516_checked selection1_0516_checked
noncomputable def leaf1_0517 : Block :=
  Block.single profile0517 selection1_0517 profile0517_checked selection1_0517_checked
noncomputable def leaf1_0518 : Block :=
  Block.single profile0518 selection1_0518 profile0518_checked selection1_0518_checked
noncomputable def leaf1_0519 : Block :=
  Block.single profile0519 selection1_0519 profile0519_checked selection1_0519_checked
noncomputable def leaf1_0520 : Block :=
  Block.single profile0520 selection1_0520 profile0520_checked selection1_0520_checked
noncomputable def leaf1_0521 : Block :=
  Block.single profile0521 selection1_0521 profile0521_checked selection1_0521_checked
noncomputable def leaf1_0522 : Block :=
  Block.single profile0522 selection1_0522 profile0522_checked selection1_0522_checked
noncomputable def leaf1_0523 : Block :=
  Block.single profile0523 selection1_0523 profile0523_checked selection1_0523_checked
noncomputable def leaf1_0524 : Block :=
  Block.single profile0524 selection1_0524 profile0524_checked selection1_0524_checked
noncomputable def leaf1_0525 : Block :=
  Block.single profile0525 selection1_0525 profile0525_checked selection1_0525_checked
noncomputable def leaf1_0526 : Block :=
  Block.single profile0526 selection1_0526 profile0526_checked selection1_0526_checked
noncomputable def leaf1_0527 : Block :=
  Block.single profile0527 selection1_0527 profile0527_checked selection1_0527_checked
noncomputable def leaf1_0528 : Block :=
  Block.single profile0528 selection1_0528 profile0528_checked selection1_0528_checked
noncomputable def leaf1_0529 : Block :=
  Block.single profile0529 selection1_0529 profile0529_checked selection1_0529_checked
noncomputable def leaf1_0530 : Block :=
  Block.single profile0530 selection1_0530 profile0530_checked selection1_0530_checked
noncomputable def leaf1_0531 : Block :=
  Block.single profile0531 selection1_0531 profile0531_checked selection1_0531_checked
noncomputable def leaf1_0532 : Block :=
  Block.single profile0532 selection1_0532 profile0532_checked selection1_0532_checked
noncomputable def leaf1_0533 : Block :=
  Block.single profile0533 selection1_0533 profile0533_checked selection1_0533_checked
noncomputable def leaf1_0534 : Block :=
  Block.single profile0534 selection1_0534 profile0534_checked selection1_0534_checked
noncomputable def leaf1_0535 : Block :=
  Block.single profile0535 selection1_0535 profile0535_checked selection1_0535_checked
noncomputable def leaf1_0536 : Block :=
  Block.single profile0536 selection1_0536 profile0536_checked selection1_0536_checked
noncomputable def leaf1_0537 : Block :=
  Block.single profile0537 selection1_0537 profile0537_checked selection1_0537_checked
noncomputable def leaf1_0538 : Block :=
  Block.single profile0538 selection1_0538 profile0538_checked selection1_0538_checked
noncomputable def leaf1_0539 : Block :=
  Block.single profile0539 selection1_0539 profile0539_checked selection1_0539_checked
noncomputable def leaf1_0540 : Block :=
  Block.single profile0540 selection1_0540 profile0540_checked selection1_0540_checked
noncomputable def leaf1_0541 : Block :=
  Block.single profile0541 selection1_0541 profile0541_checked selection1_0541_checked
noncomputable def leaf1_0542 : Block :=
  Block.single profile0542 selection1_0542 profile0542_checked selection1_0542_checked
noncomputable def leaf1_0543 : Block :=
  Block.single profile0543 selection1_0543 profile0543_checked selection1_0543_checked
noncomputable def leaf1_0544 : Block :=
  Block.single profile0544 selection1_0544 profile0544_checked selection1_0544_checked
noncomputable def leaf1_0545 : Block :=
  Block.single profile0545 selection1_0545 profile0545_checked selection1_0545_checked
noncomputable def leaf1_0546 : Block :=
  Block.single profile0546 selection1_0546 profile0546_checked selection1_0546_checked
noncomputable def leaf1_0547 : Block :=
  Block.single profile0547 selection1_0547 profile0547_checked selection1_0547_checked
noncomputable def leaf1_0548 : Block :=
  Block.single profile0548 selection1_0548 profile0548_checked selection1_0548_checked
noncomputable def leaf1_0549 : Block :=
  Block.single profile0549 selection1_0549 profile0549_checked selection1_0549_checked
noncomputable def leaf1_0550 : Block :=
  Block.single profile0550 selection1_0550 profile0550_checked selection1_0550_checked
noncomputable def leaf1_0551 : Block :=
  Block.single profile0551 selection1_0551 profile0551_checked selection1_0551_checked
noncomputable def leaf1_0552 : Block :=
  Block.single profile0552 selection1_0552 profile0552_checked selection1_0552_checked
noncomputable def leaf1_0553 : Block :=
  Block.single profile0553 selection1_0553 profile0553_checked selection1_0553_checked
noncomputable def leaf1_0554 : Block :=
  Block.single profile0554 selection1_0554 profile0554_checked selection1_0554_checked
noncomputable def leaf1_0555 : Block :=
  Block.single profile0555 selection1_0555 profile0555_checked selection1_0555_checked
noncomputable def leaf1_0556 : Block :=
  Block.single profile0556 selection1_0556 profile0556_checked selection1_0556_checked
noncomputable def leaf1_0557 : Block :=
  Block.single profile0557 selection1_0557 profile0557_checked selection1_0557_checked
noncomputable def leaf1_0558 : Block :=
  Block.single profile0558 selection1_0558 profile0558_checked selection1_0558_checked
noncomputable def leaf1_0559 : Block :=
  Block.single profile0559 selection1_0559 profile0559_checked selection1_0559_checked
noncomputable def leaf1_0560 : Block :=
  Block.single profile0560 selection1_0560 profile0560_checked selection1_0560_checked
noncomputable def leaf1_0561 : Block :=
  Block.single profile0561 selection1_0561 profile0561_checked selection1_0561_checked
noncomputable def leaf1_0562 : Block :=
  Block.single profile0562 selection1_0562 profile0562_checked selection1_0562_checked
noncomputable def leaf1_0563 : Block :=
  Block.single profile0563 selection1_0563 profile0563_checked selection1_0563_checked
noncomputable def leaf1_0564 : Block :=
  Block.single profile0564 selection1_0564 profile0564_checked selection1_0564_checked
noncomputable def leaf1_0565 : Block :=
  Block.single profile0565 selection1_0565 profile0565_checked selection1_0565_checked
noncomputable def leaf1_0566 : Block :=
  Block.single profile0566 selection1_0566 profile0566_checked selection1_0566_checked
noncomputable def leaf1_0567 : Block :=
  Block.single profile0567 selection1_0567 profile0567_checked selection1_0567_checked
noncomputable def leaf1_0568 : Block :=
  Block.single profile0568 selection1_0568 profile0568_checked selection1_0568_checked
noncomputable def leaf1_0569 : Block :=
  Block.single profile0569 selection1_0569 profile0569_checked selection1_0569_checked
noncomputable def leaf1_0570 : Block :=
  Block.single profile0570 selection1_0570 profile0570_checked selection1_0570_checked
noncomputable def leaf1_0571 : Block :=
  Block.single profile0571 selection1_0571 profile0571_checked selection1_0571_checked
noncomputable def leaf1_0572 : Block :=
  Block.single profile0572 selection1_0572 profile0572_checked selection1_0572_checked
noncomputable def leaf1_0573 : Block :=
  Block.single profile0573 selection1_0573 profile0573_checked selection1_0573_checked
noncomputable def leaf1_0574 : Block :=
  Block.single profile0574 selection1_0574 profile0574_checked selection1_0574_checked
noncomputable def leaf1_0575 : Block :=
  Block.single profile0575 selection1_0575 profile0575_checked selection1_0575_checked
noncomputable def batch008p1_0_0000 : Block :=
  Block.append leaf1_0512 leaf1_0513 (by decide +kernel)
noncomputable def batch008p1_0_0001 : Block :=
  Block.append leaf1_0514 leaf1_0515 (by decide +kernel)
noncomputable def batch008p1_0_0002 : Block :=
  Block.append leaf1_0516 leaf1_0517 (by decide +kernel)
noncomputable def batch008p1_0_0003 : Block :=
  Block.append leaf1_0518 leaf1_0519 (by decide +kernel)
noncomputable def batch008p1_0_0004 : Block :=
  Block.append leaf1_0520 leaf1_0521 (by decide +kernel)
noncomputable def batch008p1_0_0005 : Block :=
  Block.append leaf1_0522 leaf1_0523 (by decide +kernel)
noncomputable def batch008p1_0_0006 : Block :=
  Block.append leaf1_0524 leaf1_0525 (by decide +kernel)
noncomputable def batch008p1_0_0007 : Block :=
  Block.append leaf1_0526 leaf1_0527 (by decide +kernel)
noncomputable def batch008p1_0_0008 : Block :=
  Block.append leaf1_0528 leaf1_0529 (by decide +kernel)
noncomputable def batch008p1_0_0009 : Block :=
  Block.append leaf1_0530 leaf1_0531 (by decide +kernel)
noncomputable def batch008p1_0_0010 : Block :=
  Block.append leaf1_0532 leaf1_0533 (by decide +kernel)
noncomputable def batch008p1_0_0011 : Block :=
  Block.append leaf1_0534 leaf1_0535 (by decide +kernel)
noncomputable def batch008p1_0_0012 : Block :=
  Block.append leaf1_0536 leaf1_0537 (by decide +kernel)
noncomputable def batch008p1_0_0013 : Block :=
  Block.append leaf1_0538 leaf1_0539 (by decide +kernel)
noncomputable def batch008p1_0_0014 : Block :=
  Block.append leaf1_0540 leaf1_0541 (by decide +kernel)
noncomputable def batch008p1_0_0015 : Block :=
  Block.append leaf1_0542 leaf1_0543 (by decide +kernel)
noncomputable def batch008p1_0_0016 : Block :=
  Block.append leaf1_0544 leaf1_0545 (by decide +kernel)
noncomputable def batch008p1_0_0017 : Block :=
  Block.append leaf1_0546 leaf1_0547 (by decide +kernel)
noncomputable def batch008p1_0_0018 : Block :=
  Block.append leaf1_0548 leaf1_0549 (by decide +kernel)
noncomputable def batch008p1_0_0019 : Block :=
  Block.append leaf1_0550 leaf1_0551 (by decide +kernel)
noncomputable def batch008p1_0_0020 : Block :=
  Block.append leaf1_0552 leaf1_0553 (by decide +kernel)
noncomputable def batch008p1_0_0021 : Block :=
  Block.append leaf1_0554 leaf1_0555 (by decide +kernel)
noncomputable def batch008p1_0_0022 : Block :=
  Block.append leaf1_0556 leaf1_0557 (by decide +kernel)
noncomputable def batch008p1_0_0023 : Block :=
  Block.append leaf1_0558 leaf1_0559 (by decide +kernel)
noncomputable def batch008p1_0_0024 : Block :=
  Block.append leaf1_0560 leaf1_0561 (by decide +kernel)
noncomputable def batch008p1_0_0025 : Block :=
  Block.append leaf1_0562 leaf1_0563 (by decide +kernel)
noncomputable def batch008p1_0_0026 : Block :=
  Block.append leaf1_0564 leaf1_0565 (by decide +kernel)
noncomputable def batch008p1_0_0027 : Block :=
  Block.append leaf1_0566 leaf1_0567 (by decide +kernel)
noncomputable def batch008p1_0_0028 : Block :=
  Block.append leaf1_0568 leaf1_0569 (by decide +kernel)
noncomputable def batch008p1_0_0029 : Block :=
  Block.append leaf1_0570 leaf1_0571 (by decide +kernel)
noncomputable def batch008p1_0_0030 : Block :=
  Block.append leaf1_0572 leaf1_0573 (by decide +kernel)
noncomputable def batch008p1_0_0031 : Block :=
  Block.append leaf1_0574 leaf1_0575 (by decide +kernel)
noncomputable def batch008p1_1_0000 : Block :=
  Block.append batch008p1_0_0000 batch008p1_0_0001 (by decide +kernel)
noncomputable def batch008p1_1_0001 : Block :=
  Block.append batch008p1_0_0002 batch008p1_0_0003 (by decide +kernel)
noncomputable def batch008p1_1_0002 : Block :=
  Block.append batch008p1_0_0004 batch008p1_0_0005 (by decide +kernel)
noncomputable def batch008p1_1_0003 : Block :=
  Block.append batch008p1_0_0006 batch008p1_0_0007 (by decide +kernel)
noncomputable def batch008p1_1_0004 : Block :=
  Block.append batch008p1_0_0008 batch008p1_0_0009 (by decide +kernel)
noncomputable def batch008p1_1_0005 : Block :=
  Block.append batch008p1_0_0010 batch008p1_0_0011 (by decide +kernel)
noncomputable def batch008p1_1_0006 : Block :=
  Block.append batch008p1_0_0012 batch008p1_0_0013 (by decide +kernel)
noncomputable def batch008p1_1_0007 : Block :=
  Block.append batch008p1_0_0014 batch008p1_0_0015 (by decide +kernel)
noncomputable def batch008p1_1_0008 : Block :=
  Block.append batch008p1_0_0016 batch008p1_0_0017 (by decide +kernel)
noncomputable def batch008p1_1_0009 : Block :=
  Block.append batch008p1_0_0018 batch008p1_0_0019 (by decide +kernel)
noncomputable def batch008p1_1_0010 : Block :=
  Block.append batch008p1_0_0020 batch008p1_0_0021 (by decide +kernel)
noncomputable def batch008p1_1_0011 : Block :=
  Block.append batch008p1_0_0022 batch008p1_0_0023 (by decide +kernel)
noncomputable def batch008p1_1_0012 : Block :=
  Block.append batch008p1_0_0024 batch008p1_0_0025 (by decide +kernel)
noncomputable def batch008p1_1_0013 : Block :=
  Block.append batch008p1_0_0026 batch008p1_0_0027 (by decide +kernel)
noncomputable def batch008p1_1_0014 : Block :=
  Block.append batch008p1_0_0028 batch008p1_0_0029 (by decide +kernel)
noncomputable def batch008p1_1_0015 : Block :=
  Block.append batch008p1_0_0030 batch008p1_0_0031 (by decide +kernel)
noncomputable def batch008p1_2_0000 : Block :=
  Block.append batch008p1_1_0000 batch008p1_1_0001 (by decide +kernel)
noncomputable def batch008p1_2_0001 : Block :=
  Block.append batch008p1_1_0002 batch008p1_1_0003 (by decide +kernel)
noncomputable def batch008p1_2_0002 : Block :=
  Block.append batch008p1_1_0004 batch008p1_1_0005 (by decide +kernel)
noncomputable def batch008p1_2_0003 : Block :=
  Block.append batch008p1_1_0006 batch008p1_1_0007 (by decide +kernel)
noncomputable def batch008p1_2_0004 : Block :=
  Block.append batch008p1_1_0008 batch008p1_1_0009 (by decide +kernel)
noncomputable def batch008p1_2_0005 : Block :=
  Block.append batch008p1_1_0010 batch008p1_1_0011 (by decide +kernel)
noncomputable def batch008p1_2_0006 : Block :=
  Block.append batch008p1_1_0012 batch008p1_1_0013 (by decide +kernel)
noncomputable def batch008p1_2_0007 : Block :=
  Block.append batch008p1_1_0014 batch008p1_1_0015 (by decide +kernel)
noncomputable def batch008p1_3_0000 : Block :=
  Block.append batch008p1_2_0000 batch008p1_2_0001 (by decide +kernel)
noncomputable def batch008p1_3_0001 : Block :=
  Block.append batch008p1_2_0002 batch008p1_2_0003 (by decide +kernel)
noncomputable def batch008p1_3_0002 : Block :=
  Block.append batch008p1_2_0004 batch008p1_2_0005 (by decide +kernel)
noncomputable def batch008p1_3_0003 : Block :=
  Block.append batch008p1_2_0006 batch008p1_2_0007 (by decide +kernel)
noncomputable def batch008p1_4_0000 : Block :=
  Block.append batch008p1_3_0000 batch008p1_3_0001 (by decide +kernel)
noncomputable def batch008p1_4_0001 : Block :=
  Block.append batch008p1_3_0002 batch008p1_3_0003 (by decide +kernel)
noncomputable def batch008p1_5_0000 : Block :=
  Block.append batch008p1_4_0000 batch008p1_4_0001 (by decide +kernel)
theorem batch008p1_5_0000_left : batch008p1_5_0000.left = (72/61) := by decide +kernel
theorem batch008p1_5_0000_right : batch008p1_5_0000.right = (65/54) := by decide +kernel
theorem batch008p1_5_0000_units : batch008p1_5_0000.units = 23677 := by decide +kernel
noncomputable def leaf2_0512 : Block :=
  Block.single profile0512 selection2_0512 profile0512_checked selection2_0512_checked
noncomputable def leaf2_0513 : Block :=
  Block.single profile0513 selection2_0513 profile0513_checked selection2_0513_checked
noncomputable def leaf2_0514 : Block :=
  Block.single profile0514 selection2_0514 profile0514_checked selection2_0514_checked
noncomputable def leaf2_0515 : Block :=
  Block.single profile0515 selection2_0515 profile0515_checked selection2_0515_checked
noncomputable def leaf2_0516 : Block :=
  Block.single profile0516 selection2_0516 profile0516_checked selection2_0516_checked
noncomputable def leaf2_0517 : Block :=
  Block.single profile0517 selection2_0517 profile0517_checked selection2_0517_checked
noncomputable def leaf2_0518 : Block :=
  Block.single profile0518 selection2_0518 profile0518_checked selection2_0518_checked
noncomputable def leaf2_0519 : Block :=
  Block.single profile0519 selection2_0519 profile0519_checked selection2_0519_checked
noncomputable def leaf2_0520 : Block :=
  Block.single profile0520 selection2_0520 profile0520_checked selection2_0520_checked
noncomputable def leaf2_0521 : Block :=
  Block.single profile0521 selection2_0521 profile0521_checked selection2_0521_checked
noncomputable def leaf2_0522 : Block :=
  Block.single profile0522 selection2_0522 profile0522_checked selection2_0522_checked
noncomputable def leaf2_0523 : Block :=
  Block.single profile0523 selection2_0523 profile0523_checked selection2_0523_checked
noncomputable def leaf2_0524 : Block :=
  Block.single profile0524 selection2_0524 profile0524_checked selection2_0524_checked
noncomputable def leaf2_0525 : Block :=
  Block.single profile0525 selection2_0525 profile0525_checked selection2_0525_checked
noncomputable def leaf2_0526 : Block :=
  Block.single profile0526 selection2_0526 profile0526_checked selection2_0526_checked
noncomputable def leaf2_0527 : Block :=
  Block.single profile0527 selection2_0527 profile0527_checked selection2_0527_checked
noncomputable def leaf2_0528 : Block :=
  Block.single profile0528 selection2_0528 profile0528_checked selection2_0528_checked
noncomputable def leaf2_0529 : Block :=
  Block.single profile0529 selection2_0529 profile0529_checked selection2_0529_checked
noncomputable def leaf2_0530 : Block :=
  Block.single profile0530 selection2_0530 profile0530_checked selection2_0530_checked
noncomputable def leaf2_0531 : Block :=
  Block.single profile0531 selection2_0531 profile0531_checked selection2_0531_checked
noncomputable def leaf2_0532 : Block :=
  Block.single profile0532 selection2_0532 profile0532_checked selection2_0532_checked
noncomputable def leaf2_0533 : Block :=
  Block.single profile0533 selection2_0533 profile0533_checked selection2_0533_checked
noncomputable def leaf2_0534 : Block :=
  Block.single profile0534 selection2_0534 profile0534_checked selection2_0534_checked
noncomputable def leaf2_0535 : Block :=
  Block.single profile0535 selection2_0535 profile0535_checked selection2_0535_checked
noncomputable def leaf2_0536 : Block :=
  Block.single profile0536 selection2_0536 profile0536_checked selection2_0536_checked
noncomputable def leaf2_0537 : Block :=
  Block.single profile0537 selection2_0537 profile0537_checked selection2_0537_checked
noncomputable def leaf2_0538 : Block :=
  Block.single profile0538 selection2_0538 profile0538_checked selection2_0538_checked
noncomputable def leaf2_0539 : Block :=
  Block.single profile0539 selection2_0539 profile0539_checked selection2_0539_checked
noncomputable def leaf2_0540 : Block :=
  Block.single profile0540 selection2_0540 profile0540_checked selection2_0540_checked
noncomputable def leaf2_0541 : Block :=
  Block.single profile0541 selection2_0541 profile0541_checked selection2_0541_checked
noncomputable def leaf2_0542 : Block :=
  Block.single profile0542 selection2_0542 profile0542_checked selection2_0542_checked
noncomputable def leaf2_0543 : Block :=
  Block.single profile0543 selection2_0543 profile0543_checked selection2_0543_checked
noncomputable def leaf2_0544 : Block :=
  Block.single profile0544 selection2_0544 profile0544_checked selection2_0544_checked
noncomputable def leaf2_0545 : Block :=
  Block.single profile0545 selection2_0545 profile0545_checked selection2_0545_checked
noncomputable def leaf2_0546 : Block :=
  Block.single profile0546 selection2_0546 profile0546_checked selection2_0546_checked
noncomputable def leaf2_0547 : Block :=
  Block.single profile0547 selection2_0547 profile0547_checked selection2_0547_checked
noncomputable def leaf2_0548 : Block :=
  Block.single profile0548 selection2_0548 profile0548_checked selection2_0548_checked
noncomputable def leaf2_0549 : Block :=
  Block.single profile0549 selection2_0549 profile0549_checked selection2_0549_checked
noncomputable def leaf2_0550 : Block :=
  Block.single profile0550 selection2_0550 profile0550_checked selection2_0550_checked
noncomputable def leaf2_0551 : Block :=
  Block.single profile0551 selection2_0551 profile0551_checked selection2_0551_checked
noncomputable def leaf2_0552 : Block :=
  Block.single profile0552 selection2_0552 profile0552_checked selection2_0552_checked
noncomputable def leaf2_0553 : Block :=
  Block.single profile0553 selection2_0553 profile0553_checked selection2_0553_checked
noncomputable def leaf2_0554 : Block :=
  Block.single profile0554 selection2_0554 profile0554_checked selection2_0554_checked
noncomputable def leaf2_0555 : Block :=
  Block.single profile0555 selection2_0555 profile0555_checked selection2_0555_checked
noncomputable def leaf2_0556 : Block :=
  Block.single profile0556 selection2_0556 profile0556_checked selection2_0556_checked
noncomputable def leaf2_0557 : Block :=
  Block.single profile0557 selection2_0557 profile0557_checked selection2_0557_checked
noncomputable def leaf2_0558 : Block :=
  Block.single profile0558 selection2_0558 profile0558_checked selection2_0558_checked
noncomputable def leaf2_0559 : Block :=
  Block.single profile0559 selection2_0559 profile0559_checked selection2_0559_checked
noncomputable def leaf2_0560 : Block :=
  Block.single profile0560 selection2_0560 profile0560_checked selection2_0560_checked
noncomputable def leaf2_0561 : Block :=
  Block.single profile0561 selection2_0561 profile0561_checked selection2_0561_checked
noncomputable def leaf2_0562 : Block :=
  Block.single profile0562 selection2_0562 profile0562_checked selection2_0562_checked
noncomputable def leaf2_0563 : Block :=
  Block.single profile0563 selection2_0563 profile0563_checked selection2_0563_checked
noncomputable def leaf2_0564 : Block :=
  Block.single profile0564 selection2_0564 profile0564_checked selection2_0564_checked
noncomputable def leaf2_0565 : Block :=
  Block.single profile0565 selection2_0565 profile0565_checked selection2_0565_checked
noncomputable def leaf2_0566 : Block :=
  Block.single profile0566 selection2_0566 profile0566_checked selection2_0566_checked
noncomputable def leaf2_0567 : Block :=
  Block.single profile0567 selection2_0567 profile0567_checked selection2_0567_checked
noncomputable def leaf2_0568 : Block :=
  Block.single profile0568 selection2_0568 profile0568_checked selection2_0568_checked
noncomputable def leaf2_0569 : Block :=
  Block.single profile0569 selection2_0569 profile0569_checked selection2_0569_checked
noncomputable def leaf2_0570 : Block :=
  Block.single profile0570 selection2_0570 profile0570_checked selection2_0570_checked
noncomputable def leaf2_0571 : Block :=
  Block.single profile0571 selection2_0571 profile0571_checked selection2_0571_checked
noncomputable def leaf2_0572 : Block :=
  Block.single profile0572 selection2_0572 profile0572_checked selection2_0572_checked
noncomputable def leaf2_0573 : Block :=
  Block.single profile0573 selection2_0573 profile0573_checked selection2_0573_checked
noncomputable def leaf2_0574 : Block :=
  Block.single profile0574 selection2_0574 profile0574_checked selection2_0574_checked
noncomputable def leaf2_0575 : Block :=
  Block.single profile0575 selection2_0575 profile0575_checked selection2_0575_checked
noncomputable def batch008p2_0_0000 : Block :=
  Block.append leaf2_0512 leaf2_0513 (by decide +kernel)
noncomputable def batch008p2_0_0001 : Block :=
  Block.append leaf2_0514 leaf2_0515 (by decide +kernel)
noncomputable def batch008p2_0_0002 : Block :=
  Block.append leaf2_0516 leaf2_0517 (by decide +kernel)
noncomputable def batch008p2_0_0003 : Block :=
  Block.append leaf2_0518 leaf2_0519 (by decide +kernel)
noncomputable def batch008p2_0_0004 : Block :=
  Block.append leaf2_0520 leaf2_0521 (by decide +kernel)
noncomputable def batch008p2_0_0005 : Block :=
  Block.append leaf2_0522 leaf2_0523 (by decide +kernel)
noncomputable def batch008p2_0_0006 : Block :=
  Block.append leaf2_0524 leaf2_0525 (by decide +kernel)
noncomputable def batch008p2_0_0007 : Block :=
  Block.append leaf2_0526 leaf2_0527 (by decide +kernel)
noncomputable def batch008p2_0_0008 : Block :=
  Block.append leaf2_0528 leaf2_0529 (by decide +kernel)
noncomputable def batch008p2_0_0009 : Block :=
  Block.append leaf2_0530 leaf2_0531 (by decide +kernel)
noncomputable def batch008p2_0_0010 : Block :=
  Block.append leaf2_0532 leaf2_0533 (by decide +kernel)
noncomputable def batch008p2_0_0011 : Block :=
  Block.append leaf2_0534 leaf2_0535 (by decide +kernel)
noncomputable def batch008p2_0_0012 : Block :=
  Block.append leaf2_0536 leaf2_0537 (by decide +kernel)
noncomputable def batch008p2_0_0013 : Block :=
  Block.append leaf2_0538 leaf2_0539 (by decide +kernel)
noncomputable def batch008p2_0_0014 : Block :=
  Block.append leaf2_0540 leaf2_0541 (by decide +kernel)
noncomputable def batch008p2_0_0015 : Block :=
  Block.append leaf2_0542 leaf2_0543 (by decide +kernel)
noncomputable def batch008p2_0_0016 : Block :=
  Block.append leaf2_0544 leaf2_0545 (by decide +kernel)
noncomputable def batch008p2_0_0017 : Block :=
  Block.append leaf2_0546 leaf2_0547 (by decide +kernel)
noncomputable def batch008p2_0_0018 : Block :=
  Block.append leaf2_0548 leaf2_0549 (by decide +kernel)
noncomputable def batch008p2_0_0019 : Block :=
  Block.append leaf2_0550 leaf2_0551 (by decide +kernel)
noncomputable def batch008p2_0_0020 : Block :=
  Block.append leaf2_0552 leaf2_0553 (by decide +kernel)
noncomputable def batch008p2_0_0021 : Block :=
  Block.append leaf2_0554 leaf2_0555 (by decide +kernel)
noncomputable def batch008p2_0_0022 : Block :=
  Block.append leaf2_0556 leaf2_0557 (by decide +kernel)
noncomputable def batch008p2_0_0023 : Block :=
  Block.append leaf2_0558 leaf2_0559 (by decide +kernel)
noncomputable def batch008p2_0_0024 : Block :=
  Block.append leaf2_0560 leaf2_0561 (by decide +kernel)
noncomputable def batch008p2_0_0025 : Block :=
  Block.append leaf2_0562 leaf2_0563 (by decide +kernel)
noncomputable def batch008p2_0_0026 : Block :=
  Block.append leaf2_0564 leaf2_0565 (by decide +kernel)
noncomputable def batch008p2_0_0027 : Block :=
  Block.append leaf2_0566 leaf2_0567 (by decide +kernel)
noncomputable def batch008p2_0_0028 : Block :=
  Block.append leaf2_0568 leaf2_0569 (by decide +kernel)
noncomputable def batch008p2_0_0029 : Block :=
  Block.append leaf2_0570 leaf2_0571 (by decide +kernel)
noncomputable def batch008p2_0_0030 : Block :=
  Block.append leaf2_0572 leaf2_0573 (by decide +kernel)
noncomputable def batch008p2_0_0031 : Block :=
  Block.append leaf2_0574 leaf2_0575 (by decide +kernel)
noncomputable def batch008p2_1_0000 : Block :=
  Block.append batch008p2_0_0000 batch008p2_0_0001 (by decide +kernel)
noncomputable def batch008p2_1_0001 : Block :=
  Block.append batch008p2_0_0002 batch008p2_0_0003 (by decide +kernel)
noncomputable def batch008p2_1_0002 : Block :=
  Block.append batch008p2_0_0004 batch008p2_0_0005 (by decide +kernel)
noncomputable def batch008p2_1_0003 : Block :=
  Block.append batch008p2_0_0006 batch008p2_0_0007 (by decide +kernel)
noncomputable def batch008p2_1_0004 : Block :=
  Block.append batch008p2_0_0008 batch008p2_0_0009 (by decide +kernel)
noncomputable def batch008p2_1_0005 : Block :=
  Block.append batch008p2_0_0010 batch008p2_0_0011 (by decide +kernel)
noncomputable def batch008p2_1_0006 : Block :=
  Block.append batch008p2_0_0012 batch008p2_0_0013 (by decide +kernel)
noncomputable def batch008p2_1_0007 : Block :=
  Block.append batch008p2_0_0014 batch008p2_0_0015 (by decide +kernel)
noncomputable def batch008p2_1_0008 : Block :=
  Block.append batch008p2_0_0016 batch008p2_0_0017 (by decide +kernel)
noncomputable def batch008p2_1_0009 : Block :=
  Block.append batch008p2_0_0018 batch008p2_0_0019 (by decide +kernel)
noncomputable def batch008p2_1_0010 : Block :=
  Block.append batch008p2_0_0020 batch008p2_0_0021 (by decide +kernel)
noncomputable def batch008p2_1_0011 : Block :=
  Block.append batch008p2_0_0022 batch008p2_0_0023 (by decide +kernel)
noncomputable def batch008p2_1_0012 : Block :=
  Block.append batch008p2_0_0024 batch008p2_0_0025 (by decide +kernel)
noncomputable def batch008p2_1_0013 : Block :=
  Block.append batch008p2_0_0026 batch008p2_0_0027 (by decide +kernel)
noncomputable def batch008p2_1_0014 : Block :=
  Block.append batch008p2_0_0028 batch008p2_0_0029 (by decide +kernel)
noncomputable def batch008p2_1_0015 : Block :=
  Block.append batch008p2_0_0030 batch008p2_0_0031 (by decide +kernel)
noncomputable def batch008p2_2_0000 : Block :=
  Block.append batch008p2_1_0000 batch008p2_1_0001 (by decide +kernel)
noncomputable def batch008p2_2_0001 : Block :=
  Block.append batch008p2_1_0002 batch008p2_1_0003 (by decide +kernel)
noncomputable def batch008p2_2_0002 : Block :=
  Block.append batch008p2_1_0004 batch008p2_1_0005 (by decide +kernel)
noncomputable def batch008p2_2_0003 : Block :=
  Block.append batch008p2_1_0006 batch008p2_1_0007 (by decide +kernel)
noncomputable def batch008p2_2_0004 : Block :=
  Block.append batch008p2_1_0008 batch008p2_1_0009 (by decide +kernel)
noncomputable def batch008p2_2_0005 : Block :=
  Block.append batch008p2_1_0010 batch008p2_1_0011 (by decide +kernel)
noncomputable def batch008p2_2_0006 : Block :=
  Block.append batch008p2_1_0012 batch008p2_1_0013 (by decide +kernel)
noncomputable def batch008p2_2_0007 : Block :=
  Block.append batch008p2_1_0014 batch008p2_1_0015 (by decide +kernel)
noncomputable def batch008p2_3_0000 : Block :=
  Block.append batch008p2_2_0000 batch008p2_2_0001 (by decide +kernel)
noncomputable def batch008p2_3_0001 : Block :=
  Block.append batch008p2_2_0002 batch008p2_2_0003 (by decide +kernel)
noncomputable def batch008p2_3_0002 : Block :=
  Block.append batch008p2_2_0004 batch008p2_2_0005 (by decide +kernel)
noncomputable def batch008p2_3_0003 : Block :=
  Block.append batch008p2_2_0006 batch008p2_2_0007 (by decide +kernel)
noncomputable def batch008p2_4_0000 : Block :=
  Block.append batch008p2_3_0000 batch008p2_3_0001 (by decide +kernel)
noncomputable def batch008p2_4_0001 : Block :=
  Block.append batch008p2_3_0002 batch008p2_3_0003 (by decide +kernel)
noncomputable def batch008p2_5_0000 : Block :=
  Block.append batch008p2_4_0000 batch008p2_4_0001 (by decide +kernel)
theorem batch008p2_5_0000_left : batch008p2_5_0000.left = (133/61) := by decide +kernel
theorem batch008p2_5_0000_right : batch008p2_5_0000.right = (119/54) := by decide +kernel
theorem batch008p2_5_0000_units : batch008p2_5_0000.units = 6894 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
