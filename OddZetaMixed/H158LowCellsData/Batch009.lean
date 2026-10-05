import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile0576 : ProfileCell :=
  ⟨(11/54), (21/103),
    [10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 9, 10, 10, 10],
    [⟨7, 11⟩, ⟨40, 22⟩, ⟨12, 12⟩, ⟨17, 13⟩, ⟨26, 19⟩, ⟨31, 20⟩, ⟨3, 10⟩, ⟨36, 21⟩, ⟨43, 32⟩, ⟨8, 11⟩, ⟨41, 22⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨4, 10⟩, ⟨37, 21⟩, ⟨9, 11⟩, ⟨42, 22⟩, ⟨14, 12⟩, ⟨19, 13⟩, ⟨23, 18⟩, ⟨28, 19⟩, ⟨33, 20⟩, ⟨5, 10⟩, ⟨38, 21⟩, ⟨10, 11⟩, ⟨15, 12⟩, ⟨20, 13⟩, ⟨24, 18⟩, ⟨29, 19⟩, ⟨1, 9⟩, ⟨34, 20⟩, ⟨6, 10⟩, ⟨39, 21⟩, ⟨11, 11⟩, ⟨16, 12⟩, ⟨21, 13⟩, ⟨25, 18⟩, ⟨30, 19⟩, ⟨2, 9⟩, ⟨35, 20⟩]⟩
theorem profile0576_checked : profile0576.check := by decide +kernel

noncomputable def selection1_0576 : Selection :=
  ⟨1, -2, 4, (349/25), 174, -180, 1004⟩
theorem selection1_0576_checked : selection1_0576.check profile0576 := by decide +kernel

noncomputable def selection2_0576 : Selection :=
  ⟨2, -10, 8, (344/25), 51, -200, 1372⟩
theorem selection2_0576_checked : selection2_0576.check profile0576 := by decide +kernel

noncomputable def profile0577 : ProfileCell :=
  ⟨(21/103), (10/49),
    [10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 9, 10, 10, 10],
    [⟨35, 21⟩, ⟨7, 11⟩, ⟨40, 22⟩, ⟨12, 12⟩, ⟨17, 13⟩, ⟨26, 19⟩, ⟨31, 20⟩, ⟨3, 10⟩, ⟨36, 21⟩, ⟨8, 11⟩, ⟨43, 32⟩, ⟨41, 22⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨4, 10⟩, ⟨37, 21⟩, ⟨9, 11⟩, ⟨42, 22⟩, ⟨14, 12⟩, ⟨19, 13⟩, ⟨23, 18⟩, ⟨28, 19⟩, ⟨33, 20⟩, ⟨5, 10⟩, ⟨38, 21⟩, ⟨10, 11⟩, ⟨15, 12⟩, ⟨20, 13⟩, ⟨24, 18⟩, ⟨29, 19⟩, ⟨1, 9⟩, ⟨34, 20⟩, ⟨6, 10⟩, ⟨39, 21⟩, ⟨11, 11⟩, ⟨16, 12⟩, ⟨21, 13⟩, ⟨25, 18⟩, ⟨30, 19⟩, ⟨2, 9⟩]⟩
theorem profile0577_checked : profile0577.check := by decide +kernel

noncomputable def selection1_0577 : Selection :=
  ⟨1, -2, 4, 14, 192, -96, 592⟩
theorem selection1_0577_checked : selection1_0577.check profile0577 := by decide +kernel

noncomputable def selection2_0577 : Selection :=
  ⟨2, -10, 8, (69/5), 57, -116, 960⟩
theorem selection2_0577_checked : selection2_0577.check profile0577 := by decide +kernel

noncomputable def profile0578 : ProfileCell :=
  ⟨(10/49), (19/93),
    [10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 10, 10, 10, 10],
    [⟨2, 10⟩, ⟨30, 20⟩, ⟨7, 11⟩, ⟨35, 21⟩, ⟨12, 12⟩, ⟨40, 22⟩, ⟨17, 13⟩, ⟨26, 19⟩, ⟨3, 10⟩, ⟨31, 20⟩, ⟨8, 11⟩, ⟨36, 21⟩, ⟨13, 12⟩, ⟨41, 22⟩, ⟨43, 32⟩, ⟨18, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨4, 10⟩, ⟨32, 20⟩, ⟨9, 11⟩, ⟨37, 21⟩, ⟨14, 12⟩, ⟨42, 22⟩, ⟨19, 13⟩, ⟨23, 18⟩, ⟨28, 19⟩, ⟨5, 10⟩, ⟨33, 20⟩, ⟨10, 11⟩, ⟨38, 21⟩, ⟨15, 12⟩, ⟨20, 13⟩, ⟨24, 18⟩, ⟨1, 9⟩, ⟨29, 19⟩, ⟨6, 10⟩, ⟨34, 20⟩, ⟨11, 11⟩, ⟨39, 21⟩, ⟨16, 12⟩, ⟨21, 13⟩, ⟨25, 18⟩]⟩
theorem profile0578_checked : profile0578.check := by decide +kernel

noncomputable def selection1_0578 : Selection :=
  ⟨1, 0, 4, (361/20), 274, -76, 494⟩
theorem selection1_0578_checked : selection1_0578.check profile0578 := by decide +kernel

noncomputable def selection2_0578 : Selection :=
  ⟨2, -8, 8, (446/25), 81, -96, 862⟩
theorem selection2_0578_checked : selection2_0578.check profile0578 := by decide +kernel

noncomputable def profile0579 : ProfileCell :=
  ⟨(19/93), (9/44),
    [10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 10, 10, 10, 10],
    [⟨25, 19⟩, ⟨2, 10⟩, ⟨30, 20⟩, ⟨7, 11⟩, ⟨35, 21⟩, ⟨12, 12⟩, ⟨40, 22⟩, ⟨17, 13⟩, ⟨26, 19⟩, ⟨3, 10⟩, ⟨31, 20⟩, ⟨8, 11⟩, ⟨36, 21⟩, ⟨13, 12⟩, ⟨41, 22⟩, ⟨18, 13⟩, ⟨43, 32⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨4, 10⟩, ⟨32, 20⟩, ⟨9, 11⟩, ⟨37, 21⟩, ⟨14, 12⟩, ⟨42, 22⟩, ⟨19, 13⟩, ⟨23, 18⟩, ⟨28, 19⟩, ⟨5, 10⟩, ⟨33, 20⟩, ⟨10, 11⟩, ⟨38, 21⟩, ⟨15, 12⟩, ⟨20, 13⟩, ⟨24, 18⟩, ⟨1, 9⟩, ⟨29, 19⟩, ⟨6, 10⟩, ⟨34, 20⟩, ⟨11, 11⟩, ⟨39, 21⟩, ⟨16, 12⟩, ⟨21, 13⟩]⟩
theorem profile0579_checked : profile0579.check := by decide +kernel

noncomputable def selection1_0579 : Selection :=
  ⟨1, 0, 4, (361/20), 305, 38, -64⟩
theorem selection1_0579_checked : selection1_0579.check profile0579 := by decide +kernel

noncomputable def selection2_0579 : Selection :=
  ⟨2, -8, 8, (893/50), 90, 18, 304⟩
theorem selection2_0579_checked : selection2_0579.check profile0579 := by decide +kernel

noncomputable def profile0580 : ProfileCell :=
  ⟨(9/44), (8/39),
    [10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 10, 10, 10, 10],
    [⟨2, 10⟩, ⟨25, 19⟩, ⟨7, 11⟩, ⟨30, 20⟩, ⟨12, 12⟩, ⟨35, 21⟩, ⟨17, 13⟩, ⟨40, 22⟩, ⟨3, 10⟩, ⟨26, 19⟩, ⟨8, 11⟩, ⟨31, 20⟩, ⟨13, 12⟩, ⟨36, 21⟩, ⟨18, 13⟩, ⟨41, 22⟩, ⟨43, 32⟩, ⟨22, 18⟩, ⟨4, 10⟩, ⟨27, 19⟩, ⟨9, 11⟩, ⟨32, 20⟩, ⟨14, 12⟩, ⟨37, 21⟩, ⟨19, 13⟩, ⟨42, 22⟩, ⟨23, 18⟩, ⟨5, 10⟩, ⟨28, 19⟩, ⟨10, 11⟩, ⟨33, 20⟩, ⟨15, 12⟩, ⟨38, 21⟩, ⟨20, 13⟩, ⟨1, 9⟩, ⟨24, 18⟩, ⟨6, 10⟩, ⟨29, 19⟩, ⟨11, 11⟩, ⟨34, 20⟩, ⟨16, 12⟩, ⟨39, 21⟩, ⟨21, 13⟩]⟩
theorem profile0580_checked : profile0580.check := by decide +kernel

noncomputable def selection1_0580 : Selection :=
  ⟨1, -1, 4, (81/5), 651, -106, 640⟩
theorem selection1_0580_checked : selection1_0580.check profile0580 := by decide +kernel

noncomputable def selection2_0580 : Selection :=
  ⟨2, -9, 8, (1599/100), 192, -126, 1008⟩
theorem selection2_0580_checked : selection2_0580.check profile0580 := by decide +kernel

noncomputable def profile0581 : ProfileCell :=
  ⟨(8/39), (22/107),
    [10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 10, 10, 10, 10],
    [⟨2, 10⟩, ⟨7, 11⟩, ⟨25, 19⟩, ⟨12, 12⟩, ⟨30, 20⟩, ⟨17, 13⟩, ⟨35, 21⟩, ⟨40, 22⟩, ⟨3, 10⟩, ⟨8, 11⟩, ⟨26, 19⟩, ⟨13, 12⟩, ⟨31, 20⟩, ⟨18, 13⟩, ⟨36, 21⟩, ⟨41, 22⟩, ⟨43, 32⟩, ⟨4, 10⟩, ⟨22, 18⟩, ⟨9, 11⟩, ⟨27, 19⟩, ⟨14, 12⟩, ⟨32, 20⟩, ⟨19, 13⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨5, 10⟩, ⟨23, 18⟩, ⟨10, 11⟩, ⟨28, 19⟩, ⟨15, 12⟩, ⟨33, 20⟩, ⟨20, 13⟩, ⟨38, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨24, 18⟩, ⟨11, 11⟩, ⟨29, 19⟩, ⟨16, 12⟩, ⟨34, 20⟩, ⟨21, 13⟩, ⟨39, 21⟩]⟩
theorem profile0581_checked : profile0581.check := by decide +kernel

noncomputable def selection1_0581 : Selection :=
  ⟨1, -1, 4, (327/20), 540, -138, 796⟩
theorem selection1_0581_checked : selection1_0581.check profile0581 := by decide +kernel

noncomputable def selection2_0581 : Selection :=
  ⟨2, -9, 8, (403/25), 159, -158, 1164⟩
theorem selection2_0581_checked : selection2_0581.check profile0581 := by decide +kernel

noncomputable def profile0582 : ProfileCell :=
  ⟨(22/107), (7/34),
    [10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4], [9, 10, 10, 10, 10],
    [⟨39, 22⟩, ⟨2, 10⟩, ⟨7, 11⟩, ⟨25, 19⟩, ⟨12, 12⟩, ⟨30, 20⟩, ⟨17, 13⟩, ⟨35, 21⟩, ⟨40, 22⟩, ⟨3, 10⟩, ⟨8, 11⟩, ⟨26, 19⟩, ⟨13, 12⟩, ⟨31, 20⟩, ⟨18, 13⟩, ⟨36, 21⟩, ⟨41, 22⟩, ⟨4, 10⟩, ⟨43, 32⟩, ⟨22, 18⟩, ⟨9, 11⟩, ⟨27, 19⟩, ⟨14, 12⟩, ⟨32, 20⟩, ⟨19, 13⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨5, 10⟩, ⟨23, 18⟩, ⟨10, 11⟩, ⟨28, 19⟩, ⟨15, 12⟩, ⟨33, 20⟩, ⟨20, 13⟩, ⟨38, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨24, 18⟩, ⟨11, 11⟩, ⟨29, 19⟩, ⟨16, 12⟩, ⟨34, 20⟩, ⟨21, 13⟩]⟩
theorem profile0582_checked : profile0582.check := by decide +kernel

noncomputable def selection1_0582 : Selection :=
  ⟨1, -1, 4, (82/5), 311, -50, 368⟩
theorem selection1_0582_checked : selection1_0582.check profile0582 := by decide +kernel

noncomputable def selection2_0582 : Selection :=
  ⟨2, -9, 8, (404/25), 92, -70, 736⟩
theorem selection2_0582_checked : selection2_0582.check profile0582 := by decide +kernel

noncomputable def profile0583 : ProfileCell :=
  ⟨(7/34), (20/97),
    [10, 10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4, 4], [9, 10, 10, 10, 10],
    [⟨21, 14⟩, ⟨34, 21⟩, ⟨39, 22⟩, ⟨2, 10⟩, ⟨7, 11⟩, ⟨12, 12⟩, ⟨25, 19⟩, ⟨17, 13⟩, ⟨30, 20⟩, ⟨35, 21⟩, ⟨40, 22⟩, ⟨3, 10⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨26, 19⟩, ⟨18, 13⟩, ⟨31, 20⟩, ⟨36, 21⟩, ⟨41, 22⟩, ⟨4, 10⟩, ⟨9, 11⟩, ⟨22, 18⟩, ⟨43, 32⟩, ⟨14, 12⟩, ⟨27, 19⟩, ⟨19, 13⟩, ⟨32, 20⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨5, 10⟩, ⟨10, 11⟩, ⟨23, 18⟩, ⟨15, 12⟩, ⟨28, 19⟩, ⟨20, 13⟩, ⟨33, 20⟩, ⟨38, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨11, 11⟩, ⟨24, 18⟩, ⟨16, 12⟩, ⟨29, 19⟩]⟩
theorem profile0583_checked : profile0583.check := by decide +kernel

noncomputable def selection1_0583 : Selection :=
  ⟨1, -2, 4, (723/50), 302, -78, 504⟩
theorem selection1_0583_checked : selection1_0583.check profile0583 := by decide +kernel

noncomputable def selection2_0583 : Selection :=
  ⟨2, -10, 8, (711/50), 89, -98, 872⟩
theorem selection2_0583_checked : selection2_0583.check profile0583 := by decide +kernel

noncomputable def profile0584 : ProfileCell :=
  ⟨(20/97), (13/63),
    [10, 10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4, 4], [9, 10, 10, 10, 10],
    [⟨29, 20⟩, ⟨21, 14⟩, ⟨34, 21⟩, ⟨39, 22⟩, ⟨2, 10⟩, ⟨7, 11⟩, ⟨12, 12⟩, ⟨25, 19⟩, ⟨17, 13⟩, ⟨30, 20⟩, ⟨35, 21⟩, ⟨40, 22⟩, ⟨3, 10⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨26, 19⟩, ⟨18, 13⟩, ⟨31, 20⟩, ⟨36, 21⟩, ⟨41, 22⟩, ⟨4, 10⟩, ⟨9, 11⟩, ⟨22, 18⟩, ⟨14, 12⟩, ⟨43, 32⟩, ⟨27, 19⟩, ⟨19, 13⟩, ⟨32, 20⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨5, 10⟩, ⟨10, 11⟩, ⟨23, 18⟩, ⟨15, 12⟩, ⟨28, 19⟩, ⟨20, 13⟩, ⟨33, 20⟩, ⟨38, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨11, 11⟩, ⟨24, 18⟩, ⟨16, 12⟩]⟩
theorem profile0584_checked : profile0584.check := by decide +kernel

noncomputable def selection1_0584 : Selection :=
  ⟨1, -2, 4, (723/50), 163, 42, -78⟩
theorem selection1_0584_checked : selection1_0584.check profile0584 := by decide +kernel

noncomputable def selection2_0584 : Selection :=
  ⟨2, -10, 8, (356/25), 48, 22, 290⟩
theorem selection2_0584_checked : selection2_0584.check profile0584 := by decide +kernel

noncomputable def profile0585 : ProfileCell :=
  ⟨(13/63), (19/92),
    [10, 10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4, 4], [9, 10, 10, 10, 10],
    [⟨16, 13⟩, ⟨29, 20⟩, ⟨21, 14⟩, ⟨34, 21⟩, ⟨39, 22⟩, ⟨2, 10⟩, ⟨7, 11⟩, ⟨12, 12⟩, ⟨25, 19⟩, ⟨17, 13⟩, ⟨30, 20⟩, ⟨35, 21⟩, ⟨40, 22⟩, ⟨3, 10⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨26, 19⟩, ⟨18, 13⟩, ⟨31, 20⟩, ⟨36, 21⟩, ⟨41, 22⟩, ⟨4, 10⟩, ⟨9, 11⟩, ⟨22, 18⟩, ⟨14, 12⟩, ⟨27, 19⟩, ⟨43, 32⟩, ⟨19, 13⟩, ⟨32, 20⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨5, 10⟩, ⟨10, 11⟩, ⟨23, 18⟩, ⟨15, 12⟩, ⟨28, 19⟩, ⟨20, 13⟩, ⟨33, 20⟩, ⟨38, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨11, 11⟩, ⟨24, 18⟩]⟩
theorem profile0585_checked : profile0585.check := by decide +kernel

noncomputable def selection1_0585 : Selection :=
  ⟨1, -2, 4, (1447/100), 172, -36, 300⟩
theorem selection1_0585_checked : selection1_0585.check profile0585 := by decide +kernel

noncomputable def selection2_0585 : Selection :=
  ⟨2, -10, 8, (713/50), 51, -56, 668⟩
theorem selection2_0585_checked : selection2_0585.check profile0585 := by decide +kernel

noncomputable def profile0586 : ProfileCell :=
  ⟨(19/92), (6/29),
    [10, 10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4, 4], [9, 10, 10, 10, 10],
    [⟨24, 19⟩, ⟨16, 13⟩, ⟨29, 20⟩, ⟨21, 14⟩, ⟨34, 21⟩, ⟨39, 22⟩, ⟨2, 10⟩, ⟨7, 11⟩, ⟨12, 12⟩, ⟨25, 19⟩, ⟨17, 13⟩, ⟨30, 20⟩, ⟨35, 21⟩, ⟨40, 22⟩, ⟨3, 10⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨26, 19⟩, ⟨18, 13⟩, ⟨31, 20⟩, ⟨36, 21⟩, ⟨41, 22⟩, ⟨4, 10⟩, ⟨9, 11⟩, ⟨22, 18⟩, ⟨14, 12⟩, ⟨27, 19⟩, ⟨19, 13⟩, ⟨43, 32⟩, ⟨32, 20⟩, ⟨37, 21⟩, ⟨42, 22⟩, ⟨5, 10⟩, ⟨10, 11⟩, ⟨23, 18⟩, ⟨15, 12⟩, ⟨28, 19⟩, ⟨20, 13⟩, ⟨33, 20⟩, ⟨38, 21⟩, ⟨1, 9⟩, ⟨6, 10⟩, ⟨11, 11⟩]⟩
theorem profile0586_checked : profile0586.check := by decide +kernel

noncomputable def selection1_0586 : Selection :=
  ⟨1, -2, 4, (1447/100), 373, 78, -252⟩
theorem selection1_0586_checked : selection1_0586.check profile0586 := by decide +kernel

noncomputable def selection2_0586 : Selection :=
  ⟨2, -10, 8, (1427/100), 110, 58, 116⟩
theorem selection2_0586_checked : selection2_0586.check profile0586 := by decide +kernel

noncomputable def profile0587 : ProfileCell :=
  ⟨(6/29), (11/53),
    [10, 10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4, 4], [9, 10, 10, 10, 10],
    [⟨11, 12⟩, ⟨16, 13⟩, ⟨24, 19⟩, ⟨21, 14⟩, ⟨29, 20⟩, ⟨34, 21⟩, ⟨2, 10⟩, ⟨39, 22⟩, ⟨7, 11⟩, ⟨12, 12⟩, ⟨17, 13⟩, ⟨25, 19⟩, ⟨30, 20⟩, ⟨35, 21⟩, ⟨3, 10⟩, ⟨40, 22⟩, ⟨8, 11⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨26, 19⟩, ⟨31, 20⟩, ⟨36, 21⟩, ⟨4, 10⟩, ⟨41, 22⟩, ⟨9, 11⟩, ⟨14, 12⟩, ⟨22, 18⟩, ⟨19, 13⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨43, 32⟩, ⟨37, 21⟩, ⟨5, 10⟩, ⟨42, 22⟩, ⟨10, 11⟩, ⟨15, 12⟩, ⟨23, 18⟩, ⟨20, 13⟩, ⟨28, 19⟩, ⟨33, 20⟩, ⟨1, 9⟩, ⟨38, 21⟩, ⟨6, 10⟩]⟩
theorem profile0587_checked : profile0587.check := by decide +kernel

noncomputable def selection1_0587 : Selection :=
  ⟨1, -2, 4, (29/2), 648, -30, 270⟩
theorem selection1_0587_checked : selection1_0587.check profile0587 := by decide +kernel

noncomputable def selection2_0587 : Selection :=
  ⟨2, -10, 8, (359/25), 192, -50, 638⟩
theorem selection2_0587_checked : selection2_0587.check profile0587 := by decide +kernel

noncomputable def profile0588 : ProfileCell :=
  ⟨(11/53), (21/101),
    [10, 10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4, 4], [9, 10, 10, 10, 10],
    [⟨6, 11⟩, ⟨38, 22⟩, ⟨11, 12⟩, ⟨16, 13⟩, ⟨24, 19⟩, ⟨21, 14⟩, ⟨29, 20⟩, ⟨2, 10⟩, ⟨34, 21⟩, ⟨7, 11⟩, ⟨39, 22⟩, ⟨12, 12⟩, ⟨17, 13⟩, ⟨25, 19⟩, ⟨30, 20⟩, ⟨3, 10⟩, ⟨35, 21⟩, ⟨8, 11⟩, ⟨40, 22⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨26, 19⟩, ⟨31, 20⟩, ⟨4, 10⟩, ⟨36, 21⟩, ⟨9, 11⟩, ⟨41, 22⟩, ⟨14, 12⟩, ⟨22, 18⟩, ⟨19, 13⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨5, 10⟩, ⟨37, 21⟩, ⟨43, 32⟩, ⟨10, 11⟩, ⟨42, 22⟩, ⟨15, 12⟩, ⟨23, 18⟩, ⟨20, 13⟩, ⟨28, 19⟩, ⟨1, 9⟩, ⟨33, 20⟩]⟩
theorem profile0588_checked : profile0588.check := by decide +kernel

noncomputable def selection1_0588 : Selection :=
  ⟨1, -2, 4, (729/50), 374, -74, 482⟩
theorem selection1_0588_checked : selection1_0588.check profile0588 := by decide +kernel

noncomputable def selection2_0588 : Selection :=
  ⟨2, -10, 8, (361/25), 111, -94, 850⟩
theorem selection2_0588_checked : selection2_0588.check profile0588 := by decide +kernel

noncomputable def profile0589 : ProfileCell :=
  ⟨(21/101), (5/24),
    [10, 10, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4, 4], [9, 10, 10, 10, 10],
    [⟨33, 21⟩, ⟨6, 11⟩, ⟨38, 22⟩, ⟨11, 12⟩, ⟨16, 13⟩, ⟨24, 19⟩, ⟨21, 14⟩, ⟨29, 20⟩, ⟨2, 10⟩, ⟨34, 21⟩, ⟨7, 11⟩, ⟨39, 22⟩, ⟨12, 12⟩, ⟨17, 13⟩, ⟨25, 19⟩, ⟨30, 20⟩, ⟨3, 10⟩, ⟨35, 21⟩, ⟨8, 11⟩, ⟨40, 22⟩, ⟨13, 12⟩, ⟨18, 13⟩, ⟨26, 19⟩, ⟨31, 20⟩, ⟨4, 10⟩, ⟨36, 21⟩, ⟨9, 11⟩, ⟨41, 22⟩, ⟨14, 12⟩, ⟨22, 18⟩, ⟨19, 13⟩, ⟨27, 19⟩, ⟨32, 20⟩, ⟨5, 10⟩, ⟨37, 21⟩, ⟨10, 11⟩, ⟨43, 32⟩, ⟨42, 22⟩, ⟨15, 12⟩, ⟨23, 18⟩, ⟨20, 13⟩, ⟨28, 19⟩, ⟨1, 9⟩]⟩
theorem profile0589_checked : profile0589.check := by decide +kernel

noncomputable def selection1_0589 : Selection :=
  ⟨1, -1, 4, (1457/100), 412, 80, -282⟩
theorem selection1_0589_checked : selection1_0589.check profile0589 := by decide +kernel

noncomputable def selection2_0589 : Selection :=
  ⟨2, -9, 8, (361/25), 123, 56, 86⟩
theorem selection2_0589_checked : selection2_0589.check profile0589 := by decide +kernel

noncomputable def profile0590 : ProfileCell :=
  ⟨(5/24), (19/91),
    [10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 10],
    [⟨1, 10⟩, ⟨28, 20⟩, ⟨6, 11⟩, ⟨33, 21⟩, ⟨11, 12⟩, ⟨38, 22⟩, ⟨16, 13⟩, ⟨21, 14⟩, ⟨24, 19⟩, ⟨2, 10⟩, ⟨29, 20⟩, ⟨7, 11⟩, ⟨34, 21⟩, ⟨12, 12⟩, ⟨39, 22⟩, ⟨17, 13⟩, ⟨25, 19⟩, ⟨3, 10⟩, ⟨30, 20⟩, ⟨8, 11⟩, ⟨35, 21⟩, ⟨13, 12⟩, ⟨40, 22⟩, ⟨18, 13⟩, ⟨26, 19⟩, ⟨4, 10⟩, ⟨31, 20⟩, ⟨9, 11⟩, ⟨36, 21⟩, ⟨14, 12⟩, ⟨41, 22⟩, ⟨19, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨5, 10⟩, ⟨32, 20⟩, ⟨10, 11⟩, ⟨37, 21⟩, ⟨15, 12⟩, ⟨42, 22⟩, ⟨43, 32⟩, ⟨20, 13⟩, ⟨23, 18⟩]⟩
theorem profile0590_checked : profile0590.check := by decide +kernel

noncomputable def selection1_0590 : Selection :=
  ⟨1, -1, 4, (1453/100), 456, 15, 30⟩
theorem selection1_0590_checked : selection1_0590.check profile0590 := by decide +kernel

noncomputable def selection2_0590 : Selection :=
  ⟨2, -9, 8, (362/25), 136, -9, 398⟩
theorem selection2_0590_checked : selection2_0590.check profile0590 := by decide +kernel

noncomputable def profile0591 : ProfileCell :=
  ⟨(19/91), (33/158),
    [10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 10],
    [⟨23, 19⟩, ⟨1, 10⟩, ⟨28, 20⟩, ⟨6, 11⟩, ⟨33, 21⟩, ⟨11, 12⟩, ⟨38, 22⟩, ⟨16, 13⟩, ⟨21, 14⟩, ⟨24, 19⟩, ⟨2, 10⟩, ⟨29, 20⟩, ⟨7, 11⟩, ⟨34, 21⟩, ⟨12, 12⟩, ⟨39, 22⟩, ⟨17, 13⟩, ⟨25, 19⟩, ⟨3, 10⟩, ⟨30, 20⟩, ⟨8, 11⟩, ⟨35, 21⟩, ⟨13, 12⟩, ⟨40, 22⟩, ⟨18, 13⟩, ⟨26, 19⟩, ⟨4, 10⟩, ⟨31, 20⟩, ⟨9, 11⟩, ⟨36, 21⟩, ⟨14, 12⟩, ⟨41, 22⟩, ⟨19, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨5, 10⟩, ⟨32, 20⟩, ⟨10, 11⟩, ⟨37, 21⟩, ⟨15, 12⟩, ⟨42, 22⟩, ⟨20, 13⟩, ⟨43, 32⟩]⟩
theorem profile0591_checked : profile0591.check := by decide +kernel

noncomputable def selection1_0591 : Selection :=
  ⟨1, -1, 4, (1453/100), 70, 129, -516⟩
theorem selection1_0591_checked : selection1_0591.check profile0591 := by decide +kernel

noncomputable def selection2_0591 : Selection :=
  ⟨2, -9, 8, (362/25), 21, 105, -148⟩
theorem selection2_0591_checked : selection2_0591.check profile0591 := by decide +kernel

noncomputable def profile0592 : ProfileCell :=
  ⟨(33/158), (14/67),
    [10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 10],
    [⟨43, 33⟩, ⟨23, 19⟩, ⟨1, 10⟩, ⟨28, 20⟩, ⟨6, 11⟩, ⟨33, 21⟩, ⟨11, 12⟩, ⟨38, 22⟩, ⟨16, 13⟩, ⟨21, 14⟩, ⟨24, 19⟩, ⟨2, 10⟩, ⟨29, 20⟩, ⟨7, 11⟩, ⟨34, 21⟩, ⟨12, 12⟩, ⟨39, 22⟩, ⟨17, 13⟩, ⟨25, 19⟩, ⟨3, 10⟩, ⟨30, 20⟩, ⟨8, 11⟩, ⟨35, 21⟩, ⟨13, 12⟩, ⟨40, 22⟩, ⟨18, 13⟩, ⟨26, 19⟩, ⟨4, 10⟩, ⟨31, 20⟩, ⟨9, 11⟩, ⟨36, 21⟩, ⟨14, 12⟩, ⟨41, 22⟩, ⟨19, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨5, 10⟩, ⟨32, 20⟩, ⟨10, 11⟩, ⟨37, 21⟩, ⟨15, 12⟩, ⟨42, 22⟩, ⟨20, 13⟩]⟩
theorem profile0592_checked : profile0592.check := by decide +kernel

noncomputable def selection1_0592 : Selection :=
  ⟨1, -1, 4, (1457/100), 95, -300, 1538⟩
theorem selection1_0592_checked : selection1_0592.check profile0592 := by decide +kernel

noncomputable def selection2_0592 : Selection :=
  ⟨2, -9, 8, (363/25), 29, -324, 1906⟩
theorem selection2_0592_checked : selection2_0592.check profile0592 := by decide +kernel

noncomputable def profile0593 : ProfileCell :=
  ⟨(14/67), (23/110),
    [10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 10],
    [⟨20, 14⟩, ⟨23, 19⟩, ⟨43, 33⟩, ⟨1, 10⟩, ⟨28, 20⟩, ⟨6, 11⟩, ⟨33, 21⟩, ⟨11, 12⟩, ⟨38, 22⟩, ⟨16, 13⟩, ⟨21, 14⟩, ⟨24, 19⟩, ⟨2, 10⟩, ⟨29, 20⟩, ⟨7, 11⟩, ⟨34, 21⟩, ⟨12, 12⟩, ⟨39, 22⟩, ⟨17, 13⟩, ⟨25, 19⟩, ⟨3, 10⟩, ⟨30, 20⟩, ⟨8, 11⟩, ⟨35, 21⟩, ⟨13, 12⟩, ⟨40, 22⟩, ⟨18, 13⟩, ⟨26, 19⟩, ⟨4, 10⟩, ⟨31, 20⟩, ⟨9, 11⟩, ⟨36, 21⟩, ⟨14, 12⟩, ⟨41, 22⟩, ⟨19, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨5, 10⟩, ⟨32, 20⟩, ⟨10, 11⟩, ⟨37, 21⟩, ⟨15, 12⟩, ⟨42, 22⟩]⟩
theorem profile0593_checked : profile0593.check := by decide +kernel

noncomputable def selection1_0593 : Selection :=
  ⟨1, -1, 4, (1467/100), 137, -356, 1806⟩
theorem selection1_0593_checked : selection1_0593.check profile0593 := by decide +kernel

noncomputable def selection2_0593 : Selection :=
  ⟨2, -9, 8, (1459/100), 41, -380, 2174⟩
theorem selection2_0593_checked : selection2_0593.check profile0593 := by decide +kernel

noncomputable def profile0594 : ProfileCell :=
  ⟨(23/110), (9/43),
    [10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 10],
    [⟨42, 23⟩, ⟨20, 14⟩, ⟨23, 19⟩, ⟨1, 10⟩, ⟨43, 33⟩, ⟨28, 20⟩, ⟨6, 11⟩, ⟨33, 21⟩, ⟨11, 12⟩, ⟨38, 22⟩, ⟨16, 13⟩, ⟨21, 14⟩, ⟨24, 19⟩, ⟨2, 10⟩, ⟨29, 20⟩, ⟨7, 11⟩, ⟨34, 21⟩, ⟨12, 12⟩, ⟨39, 22⟩, ⟨17, 13⟩, ⟨25, 19⟩, ⟨3, 10⟩, ⟨30, 20⟩, ⟨8, 11⟩, ⟨35, 21⟩, ⟨13, 12⟩, ⟨40, 22⟩, ⟨18, 13⟩, ⟨26, 19⟩, ⟨4, 10⟩, ⟨31, 20⟩, ⟨9, 11⟩, ⟨36, 21⟩, ⟨14, 12⟩, ⟨41, 22⟩, ⟨19, 13⟩, ⟨22, 18⟩, ⟨27, 19⟩, ⟨5, 10⟩, ⟨32, 20⟩, ⟨10, 11⟩, ⟨37, 21⟩, ⟨15, 12⟩]⟩
theorem profile0594_checked : profile0594.check := by decide +kernel

noncomputable def selection1_0594 : Selection :=
  ⟨1, -2, 4, (1477/100), 214, -214, 1150⟩
theorem selection1_0594_checked : selection1_0594.check profile0594 := by decide +kernel

noncomputable def selection2_0594 : Selection :=
  ⟨2, -10, 8, (733/50), 64, -234, 1518⟩
theorem selection2_0594_checked : selection2_0594.check profile0594 := by decide +kernel

noncomputable def profile0595 : ProfileCell :=
  ⟨(9/43), (22/105),
    [10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 10],
    [⟨20, 14⟩, ⟨42, 23⟩, ⟨1, 10⟩, ⟨23, 19⟩, ⟨43, 33⟩, ⟨6, 11⟩, ⟨28, 20⟩, ⟨11, 12⟩, ⟨33, 21⟩, ⟨16, 13⟩, ⟨38, 22⟩, ⟨21, 14⟩, ⟨2, 10⟩, ⟨24, 19⟩, ⟨7, 11⟩, ⟨29, 20⟩, ⟨12, 12⟩, ⟨34, 21⟩, ⟨17, 13⟩, ⟨39, 22⟩, ⟨3, 10⟩, ⟨25, 19⟩, ⟨8, 11⟩, ⟨30, 20⟩, ⟨13, 12⟩, ⟨35, 21⟩, ⟨18, 13⟩, ⟨40, 22⟩, ⟨4, 10⟩, ⟨26, 19⟩, ⟨9, 11⟩, ⟨31, 20⟩, ⟨14, 12⟩, ⟨36, 21⟩, ⟨19, 13⟩, ⟨41, 22⟩, ⟨22, 18⟩, ⟨5, 10⟩, ⟨27, 19⟩, ⟨10, 11⟩, ⟨32, 20⟩, ⟨15, 12⟩, ⟨37, 21⟩]⟩
theorem profile0595_checked : profile0595.check := by decide +kernel

noncomputable def selection1_0595 : Selection :=
  ⟨1, -2, 4, (1493/100), 227, -340, 1752⟩
theorem selection1_0595_checked : selection1_0595.check profile0595 := by decide +kernel

noncomputable def selection2_0595 : Selection :=
  ⟨2, -10, 8, (369/25), 67, -360, 2120⟩
theorem selection2_0595_checked : selection2_0595.check profile0595 := by decide +kernel

noncomputable def profile0596 : ProfileCell :=
  ⟨(22/105), (13/62),
    [10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 10],
    [⟨37, 22⟩, ⟨20, 14⟩, ⟨42, 23⟩, ⟨1, 10⟩, ⟨23, 19⟩, ⟨6, 11⟩, ⟨43, 33⟩, ⟨28, 20⟩, ⟨11, 12⟩, ⟨33, 21⟩, ⟨16, 13⟩, ⟨38, 22⟩, ⟨21, 14⟩, ⟨2, 10⟩, ⟨24, 19⟩, ⟨7, 11⟩, ⟨29, 20⟩, ⟨12, 12⟩, ⟨34, 21⟩, ⟨17, 13⟩, ⟨39, 22⟩, ⟨3, 10⟩, ⟨25, 19⟩, ⟨8, 11⟩, ⟨30, 20⟩, ⟨13, 12⟩, ⟨35, 21⟩, ⟨18, 13⟩, ⟨40, 22⟩, ⟨4, 10⟩, ⟨26, 19⟩, ⟨9, 11⟩, ⟨31, 20⟩, ⟨14, 12⟩, ⟨36, 21⟩, ⟨19, 13⟩, ⟨41, 22⟩, ⟨22, 18⟩, ⟨5, 10⟩, ⟨27, 19⟩, ⟨10, 11⟩, ⟨32, 20⟩, ⟨15, 12⟩]⟩
theorem profile0596_checked : profile0596.check := by decide +kernel

noncomputable def selection1_0596 : Selection :=
  ⟨1, -1, 4, 15, 158, -186, 994⟩
theorem selection1_0596_checked : selection1_0596.check profile0596 := by decide +kernel

noncomputable def selection2_0596 : Selection :=
  ⟨2, -9, 8, (741/50), 47, -210, 1362⟩
theorem selection2_0596_checked : selection2_0596.check profile0596 := by decide +kernel

noncomputable def profile0597 : ProfileCell :=
  ⟨(13/62), (21/100),
    [10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 10],
    [⟨15, 13⟩, ⟨37, 22⟩, ⟨20, 14⟩, ⟨1, 10⟩, ⟨42, 23⟩, ⟨23, 19⟩, ⟨6, 11⟩, ⟨28, 20⟩, ⟨43, 33⟩, ⟨11, 12⟩, ⟨33, 21⟩, ⟨16, 13⟩, ⟨38, 22⟩, ⟨21, 14⟩, ⟨2, 10⟩, ⟨24, 19⟩, ⟨7, 11⟩, ⟨29, 20⟩, ⟨12, 12⟩, ⟨34, 21⟩, ⟨17, 13⟩, ⟨39, 22⟩, ⟨3, 10⟩, ⟨25, 19⟩, ⟨8, 11⟩, ⟨30, 20⟩, ⟨13, 12⟩, ⟨35, 21⟩, ⟨18, 13⟩, ⟨40, 22⟩, ⟨4, 10⟩, ⟨26, 19⟩, ⟨9, 11⟩, ⟨31, 20⟩, ⟨14, 12⟩, ⟨36, 21⟩, ⟨19, 13⟩, ⟨41, 22⟩, ⟨22, 18⟩, ⟨5, 10⟩, ⟨27, 19⟩, ⟨10, 11⟩, ⟨32, 20⟩]⟩
theorem profile0597_checked : profile0597.check := by decide +kernel

noncomputable def selection1_0597 : Selection :=
  ⟨1, -1, 4, (76/5), 335, -277, 1428⟩
theorem selection1_0597_checked : selection1_0597.check profile0597 := by decide +kernel

noncomputable def selection2_0597 : Selection :=
  ⟨2, -9, 8, (299/20), 99, -301, 1796⟩
theorem selection2_0597_checked : selection2_0597.check profile0597 := by decide +kernel

noncomputable def profile0598 : ProfileCell :=
  ⟨(21/100), (4/19),
    [10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 10],
    [⟨32, 21⟩, ⟨15, 13⟩, ⟨37, 22⟩, ⟨20, 14⟩, ⟨1, 10⟩, ⟨42, 23⟩, ⟨23, 19⟩, ⟨6, 11⟩, ⟨28, 20⟩, ⟨11, 12⟩, ⟨43, 33⟩, ⟨33, 21⟩, ⟨16, 13⟩, ⟨38, 22⟩, ⟨21, 14⟩, ⟨2, 10⟩, ⟨24, 19⟩, ⟨7, 11⟩, ⟨29, 20⟩, ⟨12, 12⟩, ⟨34, 21⟩, ⟨17, 13⟩, ⟨39, 22⟩, ⟨3, 10⟩, ⟨25, 19⟩, ⟨8, 11⟩, ⟨30, 20⟩, ⟨13, 12⟩, ⟨35, 21⟩, ⟨18, 13⟩, ⟨40, 22⟩, ⟨4, 10⟩, ⟨26, 19⟩, ⟨9, 11⟩, ⟨31, 20⟩, ⟨14, 12⟩, ⟨36, 21⟩, ⟨19, 13⟩, ⟨41, 22⟩, ⟨22, 18⟩, ⟨5, 10⟩, ⟨27, 19⟩, ⟨10, 11⟩]⟩
theorem profile0598_checked : profile0598.check := by decide +kernel

noncomputable def selection1_0598 : Selection :=
  ⟨1, -1, 4, (1537/100), 553, -151, 828⟩
theorem selection1_0598_checked : selection1_0598.check profile0598 := by decide +kernel

noncomputable def selection2_0598 : Selection :=
  ⟨2, -9, 8, (1509/100), 163, -175, 1196⟩
theorem selection2_0598_checked : selection2_0598.check profile0598 := by decide +kernel

noncomputable def profile0599 : ProfileCell :=
  ⟨(4/19), (23/109),
    [10, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 10],
    [⟨10, 12⟩, ⟨27, 20⟩, ⟨15, 13⟩, ⟨32, 21⟩, ⟨1, 10⟩, ⟨20, 14⟩, ⟨37, 22⟩, ⟨6, 11⟩, ⟨23, 19⟩, ⟨42, 23⟩, ⟨11, 12⟩, ⟨28, 20⟩, ⟨16, 13⟩, ⟨33, 21⟩, ⟨43, 33⟩, ⟨2, 10⟩, ⟨21, 14⟩, ⟨38, 22⟩, ⟨7, 11⟩, ⟨24, 19⟩, ⟨12, 12⟩, ⟨29, 20⟩, ⟨17, 13⟩, ⟨34, 21⟩, ⟨3, 10⟩, ⟨39, 22⟩, ⟨8, 11⟩, ⟨25, 19⟩, ⟨13, 12⟩, ⟨30, 20⟩, ⟨18, 13⟩, ⟨35, 21⟩, ⟨4, 10⟩, ⟨40, 22⟩, ⟨9, 11⟩, ⟨26, 19⟩, ⟨14, 12⟩, ⟨31, 20⟩, ⟨19, 13⟩, ⟨36, 21⟩, ⟨5, 10⟩, ⟨22, 18⟩, ⟨41, 22⟩]⟩
theorem profile0599_checked : profile0599.check := by decide +kernel

noncomputable def selection1_0599 : Selection :=
  ⟨1, -2, 4, (273/20), 450, -263, 1360⟩
theorem selection1_0599_checked : selection1_0599.check profile0599 := by decide +kernel

noncomputable def selection2_0599 : Selection :=
  ⟨2, -10, 8, (332/25), 132, -287, 1728⟩
theorem selection2_0599_checked : selection2_0599.check profile0599 := by decide +kernel

noncomputable def profile0600 : ProfileCell :=
  ⟨(23/109), (19/90),
    [10, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 10],
    [⟨41, 23⟩, ⟨10, 12⟩, ⟨27, 20⟩, ⟨15, 13⟩, ⟨32, 21⟩, ⟨1, 10⟩, ⟨20, 14⟩, ⟨37, 22⟩, ⟨6, 11⟩, ⟨23, 19⟩, ⟨42, 23⟩, ⟨11, 12⟩, ⟨28, 20⟩, ⟨16, 13⟩, ⟨33, 21⟩, ⟨2, 10⟩, ⟨43, 33⟩, ⟨21, 14⟩, ⟨38, 22⟩, ⟨7, 11⟩, ⟨24, 19⟩, ⟨12, 12⟩, ⟨29, 20⟩, ⟨17, 13⟩, ⟨34, 21⟩, ⟨3, 10⟩, ⟨39, 22⟩, ⟨8, 11⟩, ⟨25, 19⟩, ⟨13, 12⟩, ⟨30, 20⟩, ⟨18, 13⟩, ⟨35, 21⟩, ⟨4, 10⟩, ⟨40, 22⟩, ⟨9, 11⟩, ⟨26, 19⟩, ⟨14, 12⟩, ⟨31, 20⟩, ⟨19, 13⟩, ⟨36, 21⟩, ⟨5, 10⟩, ⟨22, 18⟩]⟩
theorem profile0600_checked : profile0600.check := by decide +kernel

noncomputable def selection1_0600 : Selection :=
  ⟨1, -2, 4, (342/25), 96, -171, 924⟩
theorem selection1_0600_checked : selection1_0600.check profile0600 := by decide +kernel

noncomputable def selection2_0600 : Selection :=
  ⟨2, -10, 8, (1331/100), 28, -195, 1292⟩
theorem selection2_0600_checked : selection2_0600.check profile0600 := by decide +kernel

noncomputable def profile0601 : ProfileCell :=
  ⟨(19/90), (11/52),
    [10, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 10],
    [⟨22, 19⟩, ⟨41, 23⟩, ⟨10, 12⟩, ⟨27, 20⟩, ⟨15, 13⟩, ⟨32, 21⟩, ⟨1, 10⟩, ⟨20, 14⟩, ⟨37, 22⟩, ⟨6, 11⟩, ⟨23, 19⟩, ⟨42, 23⟩, ⟨11, 12⟩, ⟨28, 20⟩, ⟨16, 13⟩, ⟨33, 21⟩, ⟨2, 10⟩, ⟨21, 14⟩, ⟨43, 33⟩, ⟨38, 22⟩, ⟨7, 11⟩, ⟨24, 19⟩, ⟨12, 12⟩, ⟨29, 20⟩, ⟨17, 13⟩, ⟨34, 21⟩, ⟨3, 10⟩, ⟨39, 22⟩, ⟨8, 11⟩, ⟨25, 19⟩, ⟨13, 12⟩, ⟨30, 20⟩, ⟨18, 13⟩, ⟨35, 21⟩, ⟨4, 10⟩, ⟨40, 22⟩, ⟨9, 11⟩, ⟨26, 19⟩, ⟨14, 12⟩, ⟨31, 20⟩, ⟨19, 13⟩, ⟨36, 21⟩, ⟨5, 10⟩]⟩
theorem profile0601_checked : profile0601.check := by decide +kernel

noncomputable def selection1_0601 : Selection :=
  ⟨1, -2, 4, (55/4), 401, -57, 384⟩
theorem selection1_0601_checked : selection1_0601.check profile0601 := by decide +kernel

noncomputable def selection2_0601 : Selection :=
  ⟨2, -10, 8, (669/50), 117, -81, 752⟩
theorem selection2_0601_checked : selection2_0601.check profile0601 := by decide +kernel

noncomputable def profile0602 : ProfileCell :=
  ⟨(11/52), (7/33),
    [11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 11],
    [⟨5, 11⟩, ⟨36, 22⟩, ⟨22, 19⟩, ⟨10, 12⟩, ⟨41, 23⟩, ⟨27, 20⟩, ⟨15, 13⟩, ⟨1, 10⟩, ⟨32, 21⟩, ⟨20, 14⟩, ⟨6, 11⟩, ⟨37, 22⟩, ⟨23, 19⟩, ⟨11, 12⟩, ⟨42, 23⟩, ⟨28, 20⟩, ⟨16, 13⟩, ⟨2, 10⟩, ⟨33, 21⟩, ⟨21, 14⟩, ⟨7, 11⟩, ⟨38, 22⟩, ⟨43, 33⟩, ⟨24, 19⟩, ⟨12, 12⟩, ⟨29, 20⟩, ⟨17, 13⟩, ⟨3, 10⟩, ⟨34, 21⟩, ⟨8, 11⟩, ⟨39, 22⟩, ⟨25, 19⟩, ⟨13, 12⟩, ⟨30, 20⟩, ⟨18, 13⟩, ⟨4, 10⟩, ⟨35, 21⟩, ⟨9, 11⟩, ⟨40, 22⟩, ⟨26, 19⟩, ⟨14, 12⟩, ⟨31, 20⟩, ⟨19, 13⟩]⟩
theorem profile0602_checked : profile0602.check := by decide +kernel

noncomputable def selection1_0602 : Selection :=
  ⟨1, -1, 4, (79/5), 627, -24, 228⟩
theorem selection1_0602_checked : selection1_0602.check profile0602 := by decide +kernel

noncomputable def selection2_0602 : Selection :=
  ⟨2, -9, 8, (773/50), 185, -48, 596⟩
theorem selection2_0602_checked : selection2_0602.check profile0602 := by decide +kernel

noncomputable def profile0603 : ProfileCell :=
  ⟨(7/33), (10/47),
    [11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 11],
    [⟨19, 14⟩, ⟨31, 21⟩, ⟨5, 11⟩, ⟨36, 22⟩, ⟨10, 12⟩, ⟨22, 19⟩, ⟨41, 23⟩, ⟨15, 13⟩, ⟨27, 20⟩, ⟨1, 10⟩, ⟨20, 14⟩, ⟨32, 21⟩, ⟨6, 11⟩, ⟨37, 22⟩, ⟨11, 12⟩, ⟨23, 19⟩, ⟨42, 23⟩, ⟨16, 13⟩, ⟨28, 20⟩, ⟨2, 10⟩, ⟨21, 14⟩, ⟨33, 21⟩, ⟨7, 11⟩, ⟨38, 22⟩, ⟨12, 12⟩, ⟨24, 19⟩, ⟨43, 33⟩, ⟨17, 13⟩, ⟨29, 20⟩, ⟨3, 10⟩, ⟨34, 21⟩, ⟨8, 11⟩, ⟨39, 22⟩, ⟨13, 12⟩, ⟨25, 19⟩, ⟨18, 13⟩, ⟨30, 20⟩, ⟨4, 10⟩, ⟨35, 21⟩, ⟨9, 11⟩, ⟨40, 22⟩, ⟨14, 12⟩, ⟨26, 19⟩]⟩
theorem profile0603_checked : profile0603.check := by decide +kernel

noncomputable def selection1_0603 : Selection :=
  ⟨1, -1, 4, (793/50), 696, -24, 228⟩
theorem selection1_0603_checked : selection1_0603.check profile0603 := by decide +kernel

noncomputable def selection2_0603 : Selection :=
  ⟨2, -9, 8, (777/50), 205, -48, 596⟩
theorem selection2_0603_checked : selection2_0603.check profile0603 := by decide +kernel

noncomputable def profile0604 : ProfileCell :=
  ⟨(10/47), (23/108),
    [11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 11],
    [⟨26, 20⟩, ⟨19, 14⟩, ⟨5, 11⟩, ⟨31, 21⟩, ⟨10, 12⟩, ⟨36, 22⟩, ⟨22, 19⟩, ⟨15, 13⟩, ⟨41, 23⟩, ⟨1, 10⟩, ⟨27, 20⟩, ⟨20, 14⟩, ⟨6, 11⟩, ⟨32, 21⟩, ⟨11, 12⟩, ⟨37, 22⟩, ⟨23, 19⟩, ⟨16, 13⟩, ⟨42, 23⟩, ⟨2, 10⟩, ⟨28, 20⟩, ⟨21, 14⟩, ⟨7, 11⟩, ⟨33, 21⟩, ⟨12, 12⟩, ⟨38, 22⟩, ⟨24, 19⟩, ⟨17, 13⟩, ⟨43, 33⟩, ⟨3, 10⟩, ⟨29, 20⟩, ⟨8, 11⟩, ⟨34, 21⟩, ⟨13, 12⟩, ⟨39, 22⟩, ⟨25, 19⟩, ⟨18, 13⟩, ⟨4, 10⟩, ⟨30, 20⟩, ⟨9, 11⟩, ⟨35, 21⟩, ⟨14, 12⟩, ⟨40, 22⟩]⟩
theorem profile0604_checked : profile0604.check := by decide +kernel

noncomputable def selection1_0604 : Selection :=
  ⟨1, -1, 4, (1589/100), 213, -44, 322⟩
theorem selection1_0604_checked : selection1_0604.check profile0604 := by decide +kernel

noncomputable def selection2_0604 : Selection :=
  ⟨2, -9, 8, (1557/100), 63, -68, 690⟩
theorem selection2_0604_checked : selection2_0604.check profile0604 := by decide +kernel

noncomputable def profile0605 : ProfileCell :=
  ⟨(23/108), (13/61),
    [11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 11],
    [⟨40, 23⟩, ⟨26, 20⟩, ⟨19, 14⟩, ⟨5, 11⟩, ⟨31, 21⟩, ⟨10, 12⟩, ⟨36, 22⟩, ⟨22, 19⟩, ⟨15, 13⟩, ⟨41, 23⟩, ⟨1, 10⟩, ⟨27, 20⟩, ⟨20, 14⟩, ⟨6, 11⟩, ⟨32, 21⟩, ⟨11, 12⟩, ⟨37, 22⟩, ⟨23, 19⟩, ⟨16, 13⟩, ⟨42, 23⟩, ⟨2, 10⟩, ⟨28, 20⟩, ⟨21, 14⟩, ⟨7, 11⟩, ⟨33, 21⟩, ⟨12, 12⟩, ⟨38, 22⟩, ⟨24, 19⟩, ⟨17, 13⟩, ⟨3, 10⟩, ⟨43, 33⟩, ⟨29, 20⟩, ⟨8, 11⟩, ⟨34, 21⟩, ⟨13, 12⟩, ⟨39, 22⟩, ⟨25, 19⟩, ⟨18, 13⟩, ⟨4, 10⟩, ⟨30, 20⟩, ⟨9, 11⟩, ⟨35, 21⟩, ⟨14, 12⟩]⟩
theorem profile0605_checked : profile0605.check := by decide +kernel

noncomputable def selection1_0605 : Selection :=
  ⟨1, -1, 4, (1589/100), 164, 94, -326⟩
theorem selection1_0605_checked : selection1_0605.check profile0605 := by decide +kernel

noncomputable def selection2_0605 : Selection :=
  ⟨2, -9, 8, (779/50), 49, 70, 42⟩
theorem selection2_0605_checked : selection2_0605.check profile0605 := by decide +kernel

noncomputable def profile0606 : ProfileCell :=
  ⟨(13/61), (22/103),
    [11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 11],
    [⟨14, 13⟩, ⟨40, 23⟩, ⟨26, 20⟩, ⟨19, 14⟩, ⟨5, 11⟩, ⟨31, 21⟩, ⟨10, 12⟩, ⟨36, 22⟩, ⟨22, 19⟩, ⟨15, 13⟩, ⟨1, 10⟩, ⟨41, 23⟩, ⟨27, 20⟩, ⟨20, 14⟩, ⟨6, 11⟩, ⟨32, 21⟩, ⟨11, 12⟩, ⟨37, 22⟩, ⟨23, 19⟩, ⟨16, 13⟩, ⟨2, 10⟩, ⟨42, 23⟩, ⟨28, 20⟩, ⟨21, 14⟩, ⟨7, 11⟩, ⟨33, 21⟩, ⟨12, 12⟩, ⟨38, 22⟩, ⟨24, 19⟩, ⟨17, 13⟩, ⟨3, 10⟩, ⟨29, 20⟩, ⟨43, 33⟩, ⟨8, 11⟩, ⟨34, 21⟩, ⟨13, 12⟩, ⟨39, 22⟩, ⟨25, 19⟩, ⟨18, 13⟩, ⟨4, 10⟩, ⟨30, 20⟩, ⟨9, 11⟩, ⟨35, 21⟩]⟩
theorem profile0606_checked : profile0606.check := by decide +kernel

noncomputable def selection1_0606 : Selection :=
  ⟨1, -1, 4, (397/25), 516, 16, 40⟩
theorem selection1_0606_checked : selection1_0606.check profile0606 := by decide +kernel

noncomputable def selection2_0606 : Selection :=
  ⟨2, -9, 8, (781/50), 153, -8, 408⟩
theorem selection2_0606_checked : selection2_0606.check profile0606 := by decide +kernel

noncomputable def profile0607 : ProfileCell :=
  ⟨(22/103), (3/14),
    [11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 5, 4], [10, 10, 10, 10, 11],
    [⟨35, 22⟩, ⟨14, 13⟩, ⟨40, 23⟩, ⟨26, 20⟩, ⟨19, 14⟩, ⟨5, 11⟩, ⟨31, 21⟩, ⟨10, 12⟩, ⟨36, 22⟩, ⟨22, 19⟩, ⟨15, 13⟩, ⟨1, 10⟩, ⟨41, 23⟩, ⟨27, 20⟩, ⟨20, 14⟩, ⟨6, 11⟩, ⟨32, 21⟩, ⟨11, 12⟩, ⟨37, 22⟩, ⟨23, 19⟩, ⟨16, 13⟩, ⟨2, 10⟩, ⟨42, 23⟩, ⟨28, 20⟩, ⟨21, 14⟩, ⟨7, 11⟩, ⟨33, 21⟩, ⟨12, 12⟩, ⟨38, 22⟩, ⟨24, 19⟩, ⟨17, 13⟩, ⟨3, 10⟩, ⟨29, 20⟩, ⟨8, 11⟩, ⟨43, 33⟩, ⟨34, 21⟩, ⟨13, 12⟩, ⟨39, 22⟩, ⟨25, 19⟩, ⟨18, 13⟩, ⟨4, 10⟩, ⟨30, 20⟩, ⟨9, 11⟩]⟩
theorem profile0607_checked : profile0607.check := by decide +kernel

noncomputable def selection1_0607 : Selection :=
  ⟨1, -1, 4, (397/25), 748, 148, -578⟩
theorem selection1_0607_checked : selection1_0607.check profile0607 := by decide +kernel

noncomputable def selection2_0607 : Selection :=
  ⟨2, -9, 8, (781/50), 221, 124, -210⟩
theorem selection2_0607_checked : selection2_0607.check profile0607 := by decide +kernel

noncomputable def profile0608 : ProfileCell :=
  ⟨(3/14), (23/107),
    [11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 10, 11],
    [⟨9, 12⟩, ⟨30, 21⟩, ⟨14, 13⟩, ⟨35, 22⟩, ⟨5, 11⟩, ⟨19, 14⟩, ⟨26, 20⟩, ⟨40, 23⟩, ⟨10, 12⟩, ⟨31, 21⟩, ⟨1, 10⟩, ⟨15, 13⟩, ⟨22, 19⟩, ⟨36, 22⟩, ⟨6, 11⟩, ⟨20, 14⟩, ⟨27, 20⟩, ⟨41, 23⟩, ⟨11, 12⟩, ⟨32, 21⟩, ⟨2, 10⟩, ⟨16, 13⟩, ⟨23, 19⟩, ⟨37, 22⟩, ⟨7, 11⟩, ⟨21, 14⟩, ⟨28, 20⟩, ⟨42, 23⟩, ⟨12, 12⟩, ⟨33, 21⟩, ⟨3, 10⟩, ⟨17, 13⟩, ⟨24, 19⟩, ⟨38, 22⟩, ⟨8, 11⟩, ⟨29, 20⟩, ⟨13, 12⟩, ⟨34, 21⟩, ⟨43, 33⟩, ⟨4, 10⟩, ⟨18, 13⟩, ⟨25, 19⟩, ⟨39, 22⟩]⟩
theorem profile0608_checked : profile0608.check := by decide +kernel

noncomputable def selection1_0608 : Selection :=
  ⟨1, -3, 4, (293/25), 531, 19, 24⟩
theorem selection1_0608_checked : selection1_0608.check profile0608 := by decide +kernel

noncomputable def selection2_0608 : Selection :=
  ⟨2, -11, 8, (291/25), 159, -5, 392⟩
theorem selection2_0608_checked : selection2_0608.check profile0608 := by decide +kernel

noncomputable def profile0609 : ProfileCell :=
  ⟨(23/107), (20/93),
    [11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 10, 11],
    [⟨39, 23⟩, ⟨9, 12⟩, ⟨30, 21⟩, ⟨14, 13⟩, ⟨35, 22⟩, ⟨5, 11⟩, ⟨19, 14⟩, ⟨26, 20⟩, ⟨40, 23⟩, ⟨10, 12⟩, ⟨31, 21⟩, ⟨1, 10⟩, ⟨15, 13⟩, ⟨22, 19⟩, ⟨36, 22⟩, ⟨6, 11⟩, ⟨20, 14⟩, ⟨27, 20⟩, ⟨41, 23⟩, ⟨11, 12⟩, ⟨32, 21⟩, ⟨2, 10⟩, ⟨16, 13⟩, ⟨23, 19⟩, ⟨37, 22⟩, ⟨7, 11⟩, ⟨21, 14⟩, ⟨28, 20⟩, ⟨42, 23⟩, ⟨12, 12⟩, ⟨33, 21⟩, ⟨3, 10⟩, ⟨17, 13⟩, ⟨24, 19⟩, ⟨38, 22⟩, ⟨8, 11⟩, ⟨29, 20⟩, ⟨13, 12⟩, ⟨34, 21⟩, ⟨4, 10⟩, ⟨43, 33⟩, ⟨18, 13⟩, ⟨25, 19⟩]⟩
theorem profile0609_checked : profile0609.check := by decide +kernel

noncomputable def selection1_0609 : Selection :=
  ⟨1, -3, 4, (293/25), 80, 111, -404⟩
theorem selection1_0609_checked : selection1_0609.check profile0609 := by decide +kernel

noncomputable def selection2_0609 : Selection :=
  ⟨2, -11, 8, (291/25), 24, 87, -36⟩
theorem selection2_0609_checked : selection2_0609.check profile0609 := by decide +kernel

noncomputable def profile0610 : ProfileCell :=
  ⟨(20/93), (17/79),
    [11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 10, 11],
    [⟨25, 20⟩, ⟨39, 23⟩, ⟨9, 12⟩, ⟨30, 21⟩, ⟨14, 13⟩, ⟨35, 22⟩, ⟨5, 11⟩, ⟨19, 14⟩, ⟨26, 20⟩, ⟨40, 23⟩, ⟨10, 12⟩, ⟨31, 21⟩, ⟨1, 10⟩, ⟨15, 13⟩, ⟨22, 19⟩, ⟨36, 22⟩, ⟨6, 11⟩, ⟨20, 14⟩, ⟨27, 20⟩, ⟨41, 23⟩, ⟨11, 12⟩, ⟨32, 21⟩, ⟨2, 10⟩, ⟨16, 13⟩, ⟨23, 19⟩, ⟨37, 22⟩, ⟨7, 11⟩, ⟨21, 14⟩, ⟨28, 20⟩, ⟨42, 23⟩, ⟨12, 12⟩, ⟨33, 21⟩, ⟨3, 10⟩, ⟨17, 13⟩, ⟨24, 19⟩, ⟨38, 22⟩, ⟨8, 11⟩, ⟨29, 20⟩, ⟨13, 12⟩, ⟨34, 21⟩, ⟨4, 10⟩, ⟨18, 13⟩, ⟨43, 33⟩]⟩
theorem profile0610_checked : profile0610.check := by decide +kernel

noncomputable def selection1_0610 : Selection :=
  ⟨1, -3, 4, (117/10), 108, 231, -962⟩
theorem selection1_0610_checked : selection1_0610.check profile0610 := by decide +kernel

noncomputable def selection2_0610 : Selection :=
  ⟨2, -11, 8, (291/25), 33, 207, -594⟩
theorem selection2_0610_checked : selection2_0610.check profile0610 := by decide +kernel

noncomputable def profile0611 : ProfileCell :=
  ⟨(17/79), (14/65),
    [11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 10, 11],
    [⟨43, 34⟩, ⟨25, 20⟩, ⟨39, 23⟩, ⟨9, 12⟩, ⟨30, 21⟩, ⟨14, 13⟩, ⟨35, 22⟩, ⟨5, 11⟩, ⟨19, 14⟩, ⟨26, 20⟩, ⟨40, 23⟩, ⟨10, 12⟩, ⟨31, 21⟩, ⟨1, 10⟩, ⟨15, 13⟩, ⟨22, 19⟩, ⟨36, 22⟩, ⟨6, 11⟩, ⟨20, 14⟩, ⟨27, 20⟩, ⟨41, 23⟩, ⟨11, 12⟩, ⟨32, 21⟩, ⟨2, 10⟩, ⟨16, 13⟩, ⟨23, 19⟩, ⟨37, 22⟩, ⟨7, 11⟩, ⟨21, 14⟩, ⟨28, 20⟩, ⟨42, 23⟩, ⟨12, 12⟩, ⟨33, 21⟩, ⟨3, 10⟩, ⟨17, 13⟩, ⟨24, 19⟩, ⟨38, 22⟩, ⟨8, 11⟩, ⟨29, 20⟩, ⟨13, 12⟩, ⟨34, 21⟩, ⟨4, 10⟩, ⟨18, 13⟩]⟩
theorem profile0611_checked : profile0611.check := by decide +kernel

noncomputable def selection1_0611 : Selection :=
  ⟨1, -3, 4, (1173/100), 155, -211, 1092⟩
theorem selection1_0611_checked : selection1_0611.check profile0611 := by decide +kernel

noncomputable def selection2_0611 : Selection :=
  ⟨2, -11, 8, (1169/100), 47, -235, 1460⟩
theorem selection2_0611_checked : selection2_0611.check profile0611 := by decide +kernel

noncomputable def profile0612 : ProfileCell :=
  ⟨(14/65), (11/51),
    [11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 10, 11],
    [⟨18, 14⟩, ⟨25, 20⟩, ⟨43, 34⟩, ⟨39, 23⟩, ⟨9, 12⟩, ⟨30, 21⟩, ⟨14, 13⟩, ⟨35, 22⟩, ⟨5, 11⟩, ⟨19, 14⟩, ⟨26, 20⟩, ⟨40, 23⟩, ⟨10, 12⟩, ⟨31, 21⟩, ⟨1, 10⟩, ⟨15, 13⟩, ⟨22, 19⟩, ⟨36, 22⟩, ⟨6, 11⟩, ⟨20, 14⟩, ⟨27, 20⟩, ⟨41, 23⟩, ⟨11, 12⟩, ⟨32, 21⟩, ⟨2, 10⟩, ⟨16, 13⟩, ⟨23, 19⟩, ⟨37, 22⟩, ⟨7, 11⟩, ⟨21, 14⟩, ⟨28, 20⟩, ⟨42, 23⟩, ⟨12, 12⟩, ⟨33, 21⟩, ⟨3, 10⟩, ⟨17, 13⟩, ⟨24, 19⟩, ⟨38, 22⟩, ⟨8, 11⟩, ⟨29, 20⟩, ⟨13, 12⟩, ⟨34, 21⟩, ⟨4, 10⟩]⟩
theorem profile0612_checked : profile0612.check := by decide +kernel

noncomputable def selection1_0612 : Selection :=
  ⟨1, -3, 4, (119/10), 243, -267, 1352⟩
theorem selection1_0612_checked : selection1_0612.check profile0612 := by decide +kernel

noncomputable def selection2_0612 : Selection :=
  ⟨2, -11, 8, (1181/100), 73, -291, 1720⟩
theorem selection2_0612_checked : selection2_0612.check profile0612 := by decide +kernel

noncomputable def profile0613 : ProfileCell :=
  ⟨(11/51), (8/37),
    [11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 11, 11],
    [⟨4, 11⟩, ⟨34, 22⟩, ⟨18, 14⟩, ⟨25, 20⟩, ⟨9, 12⟩, ⟨39, 23⟩, ⟨43, 34⟩, ⟨30, 21⟩, ⟨14, 13⟩, ⟨5, 11⟩, ⟨35, 22⟩, ⟨19, 14⟩, ⟨26, 20⟩, ⟨10, 12⟩, ⟨40, 23⟩, ⟨1, 10⟩, ⟨31, 21⟩, ⟨15, 13⟩, ⟨22, 19⟩, ⟨6, 11⟩, ⟨36, 22⟩, ⟨20, 14⟩, ⟨27, 20⟩, ⟨11, 12⟩, ⟨41, 23⟩, ⟨2, 10⟩, ⟨32, 21⟩, ⟨16, 13⟩, ⟨23, 19⟩, ⟨7, 11⟩, ⟨37, 22⟩, ⟨21, 14⟩, ⟨28, 20⟩, ⟨12, 12⟩, ⟨42, 23⟩, ⟨3, 10⟩, ⟨33, 21⟩, ⟨17, 13⟩, ⟨24, 19⟩, ⟨8, 11⟩, ⟨38, 22⟩, ⟨29, 20⟩, ⟨13, 12⟩]⟩
theorem profile0613_checked : profile0613.check := by decide +kernel

noncomputable def selection1_0613 : Selection :=
  ⟨1, -1, 4, (323/20), 579, -223, 1148⟩
theorem selection1_0613_checked : selection1_0613.check profile0613 := by decide +kernel

noncomputable def selection2_0613 : Selection :=
  ⟨2, -9, 8, (1599/100), 173, -247, 1516⟩
theorem selection2_0613_checked : selection2_0613.check profile0613 := by decide +kernel

noncomputable def profile0614 : ProfileCell :=
  ⟨(8/37), (21/97),
    [11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 11, 11],
    [⟨4, 11⟩, ⟨18, 14⟩, ⟨34, 22⟩, ⟨9, 12⟩, ⟨25, 20⟩, ⟨39, 23⟩, ⟨43, 34⟩, ⟨14, 13⟩, ⟨30, 21⟩, ⟨5, 11⟩, ⟨19, 14⟩, ⟨35, 22⟩, ⟨10, 12⟩, ⟨26, 20⟩, ⟨40, 23⟩, ⟨1, 10⟩, ⟨15, 13⟩, ⟨31, 21⟩, ⟨6, 11⟩, ⟨22, 19⟩, ⟨20, 14⟩, ⟨36, 22⟩, ⟨11, 12⟩, ⟨27, 20⟩, ⟨41, 23⟩, ⟨2, 10⟩, ⟨16, 13⟩, ⟨32, 21⟩, ⟨7, 11⟩, ⟨23, 19⟩, ⟨21, 14⟩, ⟨37, 22⟩, ⟨12, 12⟩, ⟨28, 20⟩, ⟨42, 23⟩, ⟨3, 10⟩, ⟨17, 13⟩, ⟨33, 21⟩, ⟨8, 11⟩, ⟨24, 19⟩, ⟨38, 22⟩, ⟨13, 12⟩, ⟨29, 20⟩]⟩
theorem profile0614_checked : profile0614.check := by decide +kernel

noncomputable def selection1_0614 : Selection :=
  ⟨1, -1, 4, (1633/100), 308, -319, 1592⟩
theorem selection1_0614_checked : selection1_0614.check profile0614 := by decide +kernel

noncomputable def selection2_0614 : Selection :=
  ⟨2, -9, 8, (1611/100), 92, -343, 1960⟩
theorem selection2_0614_checked : selection2_0614.check profile0614 := by decide +kernel

noncomputable def profile0615 : ProfileCell :=
  ⟨(21/97), (13/60),
    [11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 11, 11],
    [⟨29, 21⟩, ⟨4, 11⟩, ⟨18, 14⟩, ⟨34, 22⟩, ⟨9, 12⟩, ⟨25, 20⟩, ⟨39, 23⟩, ⟨14, 13⟩, ⟨43, 34⟩, ⟨30, 21⟩, ⟨5, 11⟩, ⟨19, 14⟩, ⟨35, 22⟩, ⟨10, 12⟩, ⟨26, 20⟩, ⟨40, 23⟩, ⟨1, 10⟩, ⟨15, 13⟩, ⟨31, 21⟩, ⟨6, 11⟩, ⟨22, 19⟩, ⟨20, 14⟩, ⟨36, 22⟩, ⟨11, 12⟩, ⟨27, 20⟩, ⟨41, 23⟩, ⟨2, 10⟩, ⟨16, 13⟩, ⟨32, 21⟩, ⟨7, 11⟩, ⟨23, 19⟩, ⟨21, 14⟩, ⟨37, 22⟩, ⟨12, 12⟩, ⟨28, 20⟩, ⟨42, 23⟩, ⟨3, 10⟩, ⟨17, 13⟩, ⟨33, 21⟩, ⟨8, 11⟩, ⟨24, 19⟩, ⟨38, 22⟩, ⟨13, 12⟩]⟩
theorem profile0615_checked : profile0615.check := by decide +kernel

noncomputable def selection1_0615 : Selection :=
  ⟨1, -1, 4, (821/50), 191, -235, 1204⟩
theorem selection1_0615_checked : selection1_0615.check profile0615 := by decide +kernel

noncomputable def selection2_0615 : Selection :=
  ⟨2, -9, 8, (1617/100), 57, -259, 1572⟩
theorem selection2_0615_checked : selection2_0615.check profile0615 := by decide +kernel

noncomputable def profile0616 : ProfileCell :=
  ⟨(13/60), (23/106),
    [11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 11, 11],
    [⟨13, 13⟩, ⟨29, 21⟩, ⟨4, 11⟩, ⟨18, 14⟩, ⟨34, 22⟩, ⟨9, 12⟩, ⟨25, 20⟩, ⟨39, 23⟩, ⟨14, 13⟩, ⟨30, 21⟩, ⟨43, 34⟩, ⟨5, 11⟩, ⟨19, 14⟩, ⟨35, 22⟩, ⟨10, 12⟩, ⟨26, 20⟩, ⟨1, 10⟩, ⟨40, 23⟩, ⟨15, 13⟩, ⟨31, 21⟩, ⟨6, 11⟩, ⟨22, 19⟩, ⟨20, 14⟩, ⟨36, 22⟩, ⟨11, 12⟩, ⟨27, 20⟩, ⟨2, 10⟩, ⟨41, 23⟩, ⟨16, 13⟩, ⟨32, 21⟩, ⟨7, 11⟩, ⟨23, 19⟩, ⟨21, 14⟩, ⟨37, 22⟩, ⟨12, 12⟩, ⟨28, 20⟩, ⟨3, 10⟩, ⟨42, 23⟩, ⟨17, 13⟩, ⟨33, 21⟩, ⟨8, 11⟩, ⟨24, 19⟩, ⟨38, 22⟩]⟩
theorem profile0616_checked : profile0616.check := by decide +kernel

noncomputable def selection1_0616 : Selection :=
  ⟨1, -1, 4, (1663/100), 354, -326, 1624⟩
theorem selection1_0616_checked : selection1_0616.check profile0616 := by decide +kernel

noncomputable def selection2_0616 : Selection :=
  ⟨2, -9, 8, (1631/100), 105, -350, 1992⟩
theorem selection2_0616_checked : selection2_0616.check profile0616 := by decide +kernel

noncomputable def profile0617 : ProfileCell :=
  ⟨(23/106), (5/23),
    [11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 11, 11],
    [⟨38, 23⟩, ⟨13, 13⟩, ⟨29, 21⟩, ⟨4, 11⟩, ⟨18, 14⟩, ⟨34, 22⟩, ⟨9, 12⟩, ⟨25, 20⟩, ⟨39, 23⟩, ⟨14, 13⟩, ⟨30, 21⟩, ⟨5, 11⟩, ⟨43, 34⟩, ⟨19, 14⟩, ⟨35, 22⟩, ⟨10, 12⟩, ⟨26, 20⟩, ⟨1, 10⟩, ⟨40, 23⟩, ⟨15, 13⟩, ⟨31, 21⟩, ⟨6, 11⟩, ⟨22, 19⟩, ⟨20, 14⟩, ⟨36, 22⟩, ⟨11, 12⟩, ⟨27, 20⟩, ⟨2, 10⟩, ⟨41, 23⟩, ⟨16, 13⟩, ⟨32, 21⟩, ⟨7, 11⟩, ⟨23, 19⟩, ⟨21, 14⟩, ⟨37, 22⟩, ⟨12, 12⟩, ⟨28, 20⟩, ⟨3, 10⟩, ⟨42, 23⟩, ⟨17, 13⟩, ⟨33, 21⟩, ⟨8, 11⟩, ⟨24, 19⟩]⟩
theorem profile0617_checked : profile0617.check := by decide +kernel

noncomputable def selection1_0617 : Selection :=
  ⟨1, -1, 4, (1683/100), 466, -234, 1200⟩
theorem selection1_0617_checked : selection1_0617.check profile0617 := by decide +kernel

noncomputable def selection2_0617 : Selection :=
  ⟨2, -9, 8, (823/50), 138, -258, 1568⟩
theorem selection2_0617_checked : selection2_0617.check profile0617 := by decide +kernel

noncomputable def profile0618 : ProfileCell :=
  ⟨(5/23), (22/101),
    [11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 11, 11],
    [⟨24, 20⟩, ⟨13, 13⟩, ⟨38, 23⟩, ⟨4, 11⟩, ⟨29, 21⟩, ⟨18, 14⟩, ⟨9, 12⟩, ⟨34, 22⟩, ⟨25, 20⟩, ⟨14, 13⟩, ⟨39, 23⟩, ⟨5, 11⟩, ⟨30, 21⟩, ⟨19, 14⟩, ⟨43, 34⟩, ⟨10, 12⟩, ⟨35, 22⟩, ⟨1, 10⟩, ⟨26, 20⟩, ⟨15, 13⟩, ⟨40, 23⟩, ⟨6, 11⟩, ⟨31, 21⟩, ⟨20, 14⟩, ⟨22, 19⟩, ⟨11, 12⟩, ⟨36, 22⟩, ⟨2, 10⟩, ⟨27, 20⟩, ⟨16, 13⟩, ⟨41, 23⟩, ⟨7, 11⟩, ⟨32, 21⟩, ⟨21, 14⟩, ⟨23, 19⟩, ⟨12, 12⟩, ⟨37, 22⟩, ⟨3, 10⟩, ⟨28, 20⟩, ⟨17, 13⟩, ⟨42, 23⟩, ⟨8, 11⟩, ⟨33, 21⟩]⟩
theorem profile0618_checked : profile0618.check := by decide +kernel

noncomputable def selection1_0618 : Selection :=
  ⟨1, -2, 4, (299/20), 435, -124, 694⟩
theorem selection1_0618_checked : selection1_0618.check profile0618 := by decide +kernel

noncomputable def selection2_0618 : Selection :=
  ⟨2, -10, 8, (364/25), 128, -148, 1062⟩
theorem selection2_0618_checked : selection2_0618.check profile0618 := by decide +kernel

noncomputable def profile0619 : ProfileCell :=
  ⟨(22/101), (12/55),
    [11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 11, 11],
    [⟨33, 22⟩, ⟨24, 20⟩, ⟨13, 13⟩, ⟨38, 23⟩, ⟨4, 11⟩, ⟨29, 21⟩, ⟨18, 14⟩, ⟨9, 12⟩, ⟨34, 22⟩, ⟨25, 20⟩, ⟨14, 13⟩, ⟨39, 23⟩, ⟨5, 11⟩, ⟨30, 21⟩, ⟨19, 14⟩, ⟨10, 12⟩, ⟨43, 34⟩, ⟨35, 22⟩, ⟨1, 10⟩, ⟨26, 20⟩, ⟨15, 13⟩, ⟨40, 23⟩, ⟨6, 11⟩, ⟨31, 21⟩, ⟨20, 14⟩, ⟨22, 19⟩, ⟨11, 12⟩, ⟨36, 22⟩, ⟨2, 10⟩, ⟨27, 20⟩, ⟨16, 13⟩, ⟨41, 23⟩, ⟨7, 11⟩, ⟨32, 21⟩, ⟨21, 14⟩, ⟨23, 19⟩, ⟨12, 12⟩, ⟨37, 22⟩, ⟨3, 10⟩, ⟨28, 20⟩, ⟨17, 13⟩, ⟨42, 23⟩, ⟨8, 11⟩]⟩
theorem profile0619_checked : profile0619.check := by decide +kernel

noncomputable def selection1_0619 : Selection :=
  ⟨1, -2, 4, (1499/100), 364, -36, 290⟩
theorem selection1_0619_checked : selection1_0619.check profile0619 := by decide +kernel

noncomputable def selection2_0619 : Selection :=
  ⟨2, -10, 8, (1461/100), 107, -60, 658⟩
theorem selection2_0619_checked : selection2_0619.check profile0619 := by decide +kernel

noncomputable def profile0620 : ProfileCell :=
  ⟨(12/55), (7/32),
    [11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4], [10, 10, 10, 11, 11],
    [⟨8, 12⟩, ⟨42, 24⟩, ⟨33, 22⟩, ⟨24, 20⟩, ⟨13, 13⟩, ⟨4, 11⟩, ⟨38, 23⟩, ⟨29, 21⟩, ⟨18, 14⟩, ⟨9, 12⟩, ⟨34, 22⟩, ⟨25, 20⟩, ⟨14, 13⟩, ⟨5, 11⟩, ⟨39, 23⟩, ⟨30, 21⟩, ⟨19, 14⟩, ⟨10, 12⟩, ⟨1, 10⟩, ⟨35, 22⟩, ⟨43, 34⟩, ⟨26, 20⟩, ⟨15, 13⟩, ⟨6, 11⟩, ⟨40, 23⟩, ⟨31, 21⟩, ⟨20, 14⟩, ⟨22, 19⟩, ⟨11, 12⟩, ⟨2, 10⟩, ⟨36, 22⟩, ⟨27, 20⟩, ⟨16, 13⟩, ⟨7, 11⟩, ⟨41, 23⟩, ⟨32, 21⟩, ⟨21, 14⟩, ⟨23, 19⟩, ⟨12, 12⟩, ⟨3, 10⟩, ⟨37, 22⟩, ⟨28, 20⟩, ⟨17, 13⟩]⟩
theorem profile0620_checked : profile0620.check := by decide +kernel

noncomputable def selection1_0620 : Selection :=
  ⟨1, -2, 4, (377/25), 578, -60, 400⟩
theorem selection1_0620_checked : selection1_0620.check profile0620 := by decide +kernel

noncomputable def selection2_0620 : Selection :=
  ⟨2, -10, 8, (1471/100), 170, -84, 768⟩
theorem selection2_0620_checked : selection2_0620.check profile0620 := by decide +kernel

noncomputable def profile0621 : ProfileCell :=
  ⟨(7/32), (23/105),
    [11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4], [10, 10, 10, 11, 11],
    [⟨17, 14⟩, ⟨28, 21⟩, ⟨8, 12⟩, ⟨42, 24⟩, ⟨33, 22⟩, ⟨13, 13⟩, ⟨24, 20⟩, ⟨4, 11⟩, ⟨38, 23⟩, ⟨18, 14⟩, ⟨29, 21⟩, ⟨9, 12⟩, ⟨34, 22⟩, ⟨14, 13⟩, ⟨25, 20⟩, ⟨5, 11⟩, ⟨39, 23⟩, ⟨19, 14⟩, ⟨30, 21⟩, ⟨10, 12⟩, ⟨1, 10⟩, ⟨35, 22⟩, ⟨15, 13⟩, ⟨26, 20⟩, ⟨43, 34⟩, ⟨6, 11⟩, ⟨40, 23⟩, ⟨20, 14⟩, ⟨31, 21⟩, ⟨11, 12⟩, ⟨22, 19⟩, ⟨2, 10⟩, ⟨36, 22⟩, ⟨16, 13⟩, ⟨27, 20⟩, ⟨7, 11⟩, ⟨41, 23⟩, ⟨21, 14⟩, ⟨32, 21⟩, ⟨12, 12⟩, ⟨23, 19⟩, ⟨3, 10⟩, ⟨37, 22⟩]⟩
theorem profile0621_checked : profile0621.check := by decide +kernel

noncomputable def selection1_0621 : Selection :=
  ⟨1, -3, 4, (263/20), 264, -95, 560⟩
theorem selection1_0621_checked : selection1_0621.check profile0621 := by decide +kernel

noncomputable def selection2_0621 : Selection :=
  ⟨2, -11, 8, (1277/100), 78, -119, 928⟩
theorem selection2_0621_checked : selection2_0621.check profile0621 := by decide +kernel

noncomputable def profile0622 : ProfileCell :=
  ⟨(23/105), (9/41),
    [11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4], [10, 10, 10, 11, 11],
    [⟨37, 23⟩, ⟨17, 14⟩, ⟨28, 21⟩, ⟨8, 12⟩, ⟨42, 24⟩, ⟨33, 22⟩, ⟨13, 13⟩, ⟨24, 20⟩, ⟨4, 11⟩, ⟨38, 23⟩, ⟨18, 14⟩, ⟨29, 21⟩, ⟨9, 12⟩, ⟨34, 22⟩, ⟨14, 13⟩, ⟨25, 20⟩, ⟨5, 11⟩, ⟨39, 23⟩, ⟨19, 14⟩, ⟨30, 21⟩, ⟨10, 12⟩, ⟨1, 10⟩, ⟨35, 22⟩, ⟨15, 13⟩, ⟨26, 20⟩, ⟨6, 11⟩, ⟨43, 34⟩, ⟨40, 23⟩, ⟨20, 14⟩, ⟨31, 21⟩, ⟨11, 12⟩, ⟨22, 19⟩, ⟨2, 10⟩, ⟨36, 22⟩, ⟨16, 13⟩, ⟨27, 20⟩, ⟨7, 11⟩, ⟨41, 23⟩, ⟨21, 14⟩, ⟨32, 21⟩, ⟨12, 12⟩, ⟨23, 19⟩, ⟨3, 10⟩]⟩
theorem profile0622_checked : profile0622.check := by decide +kernel

noncomputable def selection1_0622 : Selection :=
  ⟨1, -2, 4, (263/20), 411, 78, -252⟩
theorem selection1_0622_checked : selection1_0622.check profile0622 := by decide +kernel

noncomputable def selection2_0622 : Selection :=
  ⟨2, -10, 8, (1279/100), 121, 50, 116⟩
theorem selection2_0622_checked : selection2_0622.check profile0622 := by decide +kernel

noncomputable def profile0623 : ProfileCell :=
  ⟨(9/41), (20/91),
    [11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4], [10, 10, 10, 11, 11],
    [⟨17, 14⟩, ⟨37, 23⟩, ⟨8, 12⟩, ⟨28, 21⟩, ⟨42, 24⟩, ⟨13, 13⟩, ⟨33, 22⟩, ⟨4, 11⟩, ⟨24, 20⟩, ⟨18, 14⟩, ⟨38, 23⟩, ⟨9, 12⟩, ⟨29, 21⟩, ⟨14, 13⟩, ⟨34, 22⟩, ⟨5, 11⟩, ⟨25, 20⟩, ⟨19, 14⟩, ⟨39, 23⟩, ⟨10, 12⟩, ⟨30, 21⟩, ⟨1, 10⟩, ⟨15, 13⟩, ⟨35, 22⟩, ⟨6, 11⟩, ⟨26, 20⟩, ⟨43, 34⟩, ⟨20, 14⟩, ⟨40, 23⟩, ⟨11, 12⟩, ⟨31, 21⟩, ⟨2, 10⟩, ⟨22, 19⟩, ⟨16, 13⟩, ⟨36, 22⟩, ⟨7, 11⟩, ⟨27, 20⟩, ⟨21, 14⟩, ⟨41, 23⟩, ⟨12, 12⟩, ⟨32, 21⟩, ⟨3, 10⟩, ⟨23, 19⟩]⟩
theorem profile0623_checked : profile0623.check := by decide +kernel

noncomputable def selection1_0623 : Selection :=
  ⟨1, -2, 4, (263/20), 237, -66, 404⟩
theorem selection1_0623_checked : selection1_0623.check profile0623 := by decide +kernel

noncomputable def selection2_0623 : Selection :=
  ⟨2, -10, 8, (1283/100), 70, -94, 772⟩
theorem selection2_0623_checked : selection2_0623.check profile0623 := by decide +kernel

noncomputable def profile0624 : ProfileCell :=
  ⟨(20/91), (11/50),
    [11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4], [10, 10, 10, 11, 11],
    [⟨23, 20⟩, ⟨17, 14⟩, ⟨37, 23⟩, ⟨8, 12⟩, ⟨28, 21⟩, ⟨42, 24⟩, ⟨13, 13⟩, ⟨33, 22⟩, ⟨4, 11⟩, ⟨24, 20⟩, ⟨18, 14⟩, ⟨38, 23⟩, ⟨9, 12⟩, ⟨29, 21⟩, ⟨14, 13⟩, ⟨34, 22⟩, ⟨5, 11⟩, ⟨25, 20⟩, ⟨19, 14⟩, ⟨39, 23⟩, ⟨10, 12⟩, ⟨30, 21⟩, ⟨1, 10⟩, ⟨15, 13⟩, ⟨35, 22⟩, ⟨6, 11⟩, ⟨26, 20⟩, ⟨20, 14⟩, ⟨43, 34⟩, ⟨40, 23⟩, ⟨11, 12⟩, ⟨31, 21⟩, ⟨2, 10⟩, ⟨22, 19⟩, ⟨16, 13⟩, ⟨36, 22⟩, ⟨7, 11⟩, ⟨27, 20⟩, ⟨21, 14⟩, ⟨41, 23⟩, ⟨12, 12⟩, ⟨32, 21⟩, ⟨3, 10⟩]⟩
theorem profile0624_checked : profile0624.check := by decide +kernel

noncomputable def selection1_0624 : Selection :=
  ⟨1, -3, 4, (657/50), 195, 87, -270⟩
theorem selection1_0624_checked : selection1_0624.check profile0624 := by decide +kernel

noncomputable def selection2_0624 : Selection :=
  ⟨2, -11, 8, (1283/100), 58, 63, 98⟩
theorem selection2_0624_checked : selection2_0624.check profile0624 := by decide +kernel

noncomputable def profile0625 : ProfileCell :=
  ⟨(11/50), (24/109),
    [11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨3, 11⟩, ⟨32, 22⟩, ⟨23, 20⟩, ⟨17, 14⟩, ⟨8, 12⟩, ⟨37, 23⟩, ⟨28, 21⟩, ⟨13, 13⟩, ⟨42, 24⟩, ⟨4, 11⟩, ⟨33, 22⟩, ⟨24, 20⟩, ⟨18, 14⟩, ⟨9, 12⟩, ⟨38, 23⟩, ⟨29, 21⟩, ⟨14, 13⟩, ⟨5, 11⟩, ⟨34, 22⟩, ⟨25, 20⟩, ⟨19, 14⟩, ⟨10, 12⟩, ⟨39, 23⟩, ⟨1, 10⟩, ⟨30, 21⟩, ⟨15, 13⟩, ⟨6, 11⟩, ⟨35, 22⟩, ⟨26, 20⟩, ⟨20, 14⟩, ⟨11, 12⟩, ⟨40, 23⟩, ⟨43, 34⟩, ⟨2, 10⟩, ⟨31, 21⟩, ⟨22, 19⟩, ⟨16, 13⟩, ⟨7, 11⟩, ⟨36, 22⟩, ⟨27, 20⟩, ⟨21, 14⟩, ⟨12, 12⟩, ⟨41, 23⟩]⟩
theorem profile0625_checked : profile0625.check := by decide +kernel

noncomputable def selection1_0625 : Selection :=
  ⟨1, -2, 4, (378/25), 187, 32, -20⟩
theorem selection1_0625_checked : selection1_0625.check profile0625 := by decide +kernel

noncomputable def selection2_0625 : Selection :=
  ⟨2, -10, 8, (297/20), 56, 8, 348⟩
theorem selection2_0625_checked : selection2_0625.check profile0625 := by decide +kernel

noncomputable def profile0626 : ProfileCell :=
  ⟨(24/109), (13/59),
    [11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨41, 24⟩, ⟨3, 11⟩, ⟨32, 22⟩, ⟨23, 20⟩, ⟨17, 14⟩, ⟨8, 12⟩, ⟨37, 23⟩, ⟨28, 21⟩, ⟨13, 13⟩, ⟨42, 24⟩, ⟨4, 11⟩, ⟨33, 22⟩, ⟨24, 20⟩, ⟨18, 14⟩, ⟨9, 12⟩, ⟨38, 23⟩, ⟨29, 21⟩, ⟨14, 13⟩, ⟨5, 11⟩, ⟨34, 22⟩, ⟨25, 20⟩, ⟨19, 14⟩, ⟨10, 12⟩, ⟨39, 23⟩, ⟨1, 10⟩, ⟨30, 21⟩, ⟨15, 13⟩, ⟨6, 11⟩, ⟨35, 22⟩, ⟨26, 20⟩, ⟨20, 14⟩, ⟨11, 12⟩, ⟨40, 23⟩, ⟨2, 10⟩, ⟨43, 34⟩, ⟨31, 21⟩, ⟨22, 19⟩, ⟨16, 13⟩, ⟨7, 11⟩, ⟨36, 22⟩, ⟨27, 20⟩, ⟨21, 14⟩, ⟨12, 12⟩]⟩
theorem profile0626_checked : profile0626.check := by decide +kernel

noncomputable def selection1_0626 : Selection :=
  ⟨1, -1, 4, (378/25), 158, 172, -678⟩
theorem selection1_0626_checked : selection1_0626.check profile0626 := by decide +kernel

noncomputable def selection2_0626 : Selection :=
  ⟨2, -9, 8, (297/20), 47, 144, -310⟩
theorem selection2_0626_checked : selection2_0626.check profile0626 := by decide +kernel

noncomputable def profile0627 : ProfileCell :=
  ⟨(13/59), (15/68),
    [11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨12, 13⟩, ⟨3, 11⟩, ⟨41, 24⟩, ⟨32, 22⟩, ⟨23, 20⟩, ⟨17, 14⟩, ⟨8, 12⟩, ⟨37, 23⟩, ⟨28, 21⟩, ⟨13, 13⟩, ⟨4, 11⟩, ⟨42, 24⟩, ⟨33, 22⟩, ⟨24, 20⟩, ⟨18, 14⟩, ⟨9, 12⟩, ⟨38, 23⟩, ⟨29, 21⟩, ⟨14, 13⟩, ⟨5, 11⟩, ⟨34, 22⟩, ⟨25, 20⟩, ⟨19, 14⟩, ⟨10, 12⟩, ⟨1, 10⟩, ⟨39, 23⟩, ⟨30, 21⟩, ⟨15, 13⟩, ⟨6, 11⟩, ⟨35, 22⟩, ⟨26, 20⟩, ⟨20, 14⟩, ⟨11, 12⟩, ⟨2, 10⟩, ⟨40, 23⟩, ⟨31, 21⟩, ⟨43, 34⟩, ⟨22, 19⟩, ⟨16, 13⟩, ⟨7, 11⟩, ⟨36, 22⟩, ⟨27, 20⟩, ⟨21, 14⟩]⟩
theorem profile0627_checked : profile0627.check := by decide +kernel

noncomputable def selection1_0627 : Selection :=
  ⟨1, -1, 4, (1507/100), 253, 94, -324⟩
theorem selection1_0627_checked : selection1_0627.check profile0627 := by decide +kernel

noncomputable def selection2_0627 : Selection :=
  ⟨2, -9, 8, (371/25), 76, 66, 44⟩
theorem selection2_0627_checked : selection2_0627.check profile0627 := by decide +kernel

noncomputable def profile0628 : ProfileCell :=
  ⟨(15/68), (21/95),
    [11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨21, 15⟩, ⟨12, 13⟩, ⟨3, 11⟩, ⟨41, 24⟩, ⟨32, 22⟩, ⟨23, 20⟩, ⟨17, 14⟩, ⟨8, 12⟩, ⟨37, 23⟩, ⟨28, 21⟩, ⟨13, 13⟩, ⟨4, 11⟩, ⟨42, 24⟩, ⟨33, 22⟩, ⟨24, 20⟩, ⟨18, 14⟩, ⟨9, 12⟩, ⟨38, 23⟩, ⟨29, 21⟩, ⟨14, 13⟩, ⟨5, 11⟩, ⟨34, 22⟩, ⟨25, 20⟩, ⟨19, 14⟩, ⟨10, 12⟩, ⟨1, 10⟩, ⟨39, 23⟩, ⟨30, 21⟩, ⟨15, 13⟩, ⟨6, 11⟩, ⟨35, 22⟩, ⟨26, 20⟩, ⟨20, 14⟩, ⟨11, 12⟩, ⟨2, 10⟩, ⟨40, 23⟩, ⟨31, 21⟩, ⟨22, 19⟩, ⟨43, 34⟩, ⟨16, 13⟩, ⟨7, 11⟩, ⟨36, 22⟩, ⟨27, 20⟩]⟩
theorem profile0628_checked : profile0628.check := by decide +kernel

noncomputable def selection1_0628 : Selection :=
  ⟨1, -1, 4, (753/50), 470, 4, 84⟩
theorem selection1_0628_checked : selection1_0628.check profile0628 := by decide +kernel

noncomputable def selection2_0628 : Selection :=
  ⟨2, -9, 8, (1489/100), 141, -24, 452⟩
theorem selection2_0628_checked : selection2_0628.check profile0628 := by decide +kernel

noncomputable def profile0629 : ProfileCell :=
  ⟨(21/95), (23/104),
    [11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨27, 21⟩, ⟨21, 15⟩, ⟨12, 13⟩, ⟨3, 11⟩, ⟨41, 24⟩, ⟨32, 22⟩, ⟨23, 20⟩, ⟨17, 14⟩, ⟨8, 12⟩, ⟨37, 23⟩, ⟨28, 21⟩, ⟨13, 13⟩, ⟨4, 11⟩, ⟨42, 24⟩, ⟨33, 22⟩, ⟨24, 20⟩, ⟨18, 14⟩, ⟨9, 12⟩, ⟨38, 23⟩, ⟨29, 21⟩, ⟨14, 13⟩, ⟨5, 11⟩, ⟨34, 22⟩, ⟨25, 20⟩, ⟨19, 14⟩, ⟨10, 12⟩, ⟨1, 10⟩, ⟨39, 23⟩, ⟨30, 21⟩, ⟨15, 13⟩, ⟨6, 11⟩, ⟨35, 22⟩, ⟨26, 20⟩, ⟨20, 14⟩, ⟨11, 12⟩, ⟨2, 10⟩, ⟨40, 23⟩, ⟨31, 21⟩, ⟨22, 19⟩, ⟨16, 13⟩, ⟨43, 34⟩, ⟨7, 11⟩, ⟨36, 22⟩]⟩
theorem profile0629_checked : profile0629.check := by decide +kernel

noncomputable def selection1_0629 : Selection :=
  ⟨1, -1, 4, (753/50), 103, 130, -486⟩
theorem selection1_0629_checked : selection1_0629.check profile0629 := by decide +kernel

noncomputable def selection2_0629 : Selection :=
  ⟨2, -9, 8, (1489/100), 31, 102, -118⟩
theorem selection2_0629_checked : selection2_0629.check profile0629 := by decide +kernel

noncomputable def profile0630 : ProfileCell :=
  ⟨(23/104), (35/158),
    [11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨36, 23⟩, ⟨27, 21⟩, ⟨21, 15⟩, ⟨12, 13⟩, ⟨3, 11⟩, ⟨41, 24⟩, ⟨32, 22⟩, ⟨23, 20⟩, ⟨17, 14⟩, ⟨8, 12⟩, ⟨37, 23⟩, ⟨28, 21⟩, ⟨13, 13⟩, ⟨4, 11⟩, ⟨42, 24⟩, ⟨33, 22⟩, ⟨24, 20⟩, ⟨18, 14⟩, ⟨9, 12⟩, ⟨38, 23⟩, ⟨29, 21⟩, ⟨14, 13⟩, ⟨5, 11⟩, ⟨34, 22⟩, ⟨25, 20⟩, ⟨19, 14⟩, ⟨10, 12⟩, ⟨1, 10⟩, ⟨39, 23⟩, ⟨30, 21⟩, ⟨15, 13⟩, ⟨6, 11⟩, ⟨35, 22⟩, ⟨26, 20⟩, ⟨20, 14⟩, ⟨11, 12⟩, ⟨2, 10⟩, ⟨40, 23⟩, ⟨31, 21⟩, ⟨22, 19⟩, ⟨16, 13⟩, ⟨7, 11⟩, ⟨43, 34⟩]⟩
theorem profile0630_checked : profile0630.check := by decide +kernel

noncomputable def selection1_0630 : Selection :=
  ⟨1, -1, 4, (376/25), 369, 222, -902⟩
theorem selection1_0630_checked : selection1_0630.check profile0630 := by decide +kernel

noncomputable def selection2_0630 : Selection :=
  ⟨2, -9, 8, (372/25), 111, 194, -534⟩
theorem selection2_0630_checked : selection2_0630.check profile0630 := by decide +kernel

noncomputable def profile0631 : ProfileCell :=
  ⟨(35/158), (2/9),
    [11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨43, 35⟩, ⟨36, 23⟩, ⟨27, 21⟩, ⟨21, 15⟩, ⟨12, 13⟩, ⟨3, 11⟩, ⟨41, 24⟩, ⟨32, 22⟩, ⟨23, 20⟩, ⟨17, 14⟩, ⟨8, 12⟩, ⟨37, 23⟩, ⟨28, 21⟩, ⟨13, 13⟩, ⟨4, 11⟩, ⟨42, 24⟩, ⟨33, 22⟩, ⟨24, 20⟩, ⟨18, 14⟩, ⟨9, 12⟩, ⟨38, 23⟩, ⟨29, 21⟩, ⟨14, 13⟩, ⟨5, 11⟩, ⟨34, 22⟩, ⟨25, 20⟩, ⟨19, 14⟩, ⟨10, 12⟩, ⟨1, 10⟩, ⟨39, 23⟩, ⟨30, 21⟩, ⟨15, 13⟩, ⟨6, 11⟩, ⟨35, 22⟩, ⟨26, 20⟩, ⟨20, 14⟩, ⟨11, 12⟩, ⟨2, 10⟩, ⟨40, 23⟩, ⟨31, 21⟩, ⟨22, 19⟩, ⟨16, 13⟩, ⟨7, 11⟩]⟩
theorem profile0631_checked : profile0631.check := by decide +kernel

noncomputable def selection1_0631 : Selection :=
  ⟨1, -1, 4, (1519/100), 716, -198, 994⟩
theorem selection1_0631_checked : selection1_0631.check profile0631 := by decide +kernel

noncomputable def selection2_0631 : Selection :=
  ⟨2, -9, 8, (301/20), 215, -226, 1362⟩
theorem selection2_0631_checked : selection2_0631.check profile0631 := by decide +kernel

noncomputable def profile0632 : ProfileCell :=
  ⟨(2/9), (23/103),
    [11, 11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨7, 12⟩, ⟨16, 14⟩, ⟨22, 20⟩, ⟨31, 22⟩, ⟨40, 24⟩, ⟨3, 11⟩, ⟨12, 13⟩, ⟨21, 15⟩, ⟨27, 21⟩, ⟨36, 23⟩, ⟨43, 35⟩, ⟨8, 12⟩, ⟨17, 14⟩, ⟨23, 20⟩, ⟨32, 22⟩, ⟨41, 24⟩, ⟨4, 11⟩, ⟨13, 13⟩, ⟨28, 21⟩, ⟨37, 23⟩, ⟨9, 12⟩, ⟨18, 14⟩, ⟨24, 20⟩, ⟨33, 22⟩, ⟨42, 24⟩, ⟨5, 11⟩, ⟨14, 13⟩, ⟨29, 21⟩, ⟨38, 23⟩, ⟨1, 10⟩, ⟨10, 12⟩, ⟨19, 14⟩, ⟨25, 20⟩, ⟨34, 22⟩, ⟨6, 11⟩, ⟨15, 13⟩, ⟨30, 21⟩, ⟨39, 23⟩, ⟨2, 10⟩, ⟨11, 12⟩, ⟨20, 14⟩, ⟨26, 20⟩, ⟨35, 22⟩]⟩
theorem profile0632_checked : profile0632.check := by decide +kernel

noncomputable def selection1_0632 : Selection :=
  ⟨1, -2, 4, (1363/100), 984, -202, 1012⟩
theorem selection1_0632_checked : selection1_0632.check profile0632 := by decide +kernel

noncomputable def selection2_0632 : Selection :=
  ⟨2, -10, 8, (1339/100), 293, -230, 1380⟩
theorem selection2_0632_checked : selection2_0632.check profile0632 := by decide +kernel

noncomputable def profile0633 : ProfileCell :=
  ⟨(23/103), (21/94),
    [11, 11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨35, 23⟩, ⟨7, 12⟩, ⟨16, 14⟩, ⟨22, 20⟩, ⟨31, 22⟩, ⟨40, 24⟩, ⟨3, 11⟩, ⟨12, 13⟩, ⟨21, 15⟩, ⟨27, 21⟩, ⟨36, 23⟩, ⟨8, 12⟩, ⟨43, 35⟩, ⟨17, 14⟩, ⟨23, 20⟩, ⟨32, 22⟩, ⟨41, 24⟩, ⟨4, 11⟩, ⟨13, 13⟩, ⟨28, 21⟩, ⟨37, 23⟩, ⟨9, 12⟩, ⟨18, 14⟩, ⟨24, 20⟩, ⟨33, 22⟩, ⟨42, 24⟩, ⟨5, 11⟩, ⟨14, 13⟩, ⟨29, 21⟩, ⟨38, 23⟩, ⟨1, 10⟩, ⟨10, 12⟩, ⟨19, 14⟩, ⟨25, 20⟩, ⟨34, 22⟩, ⟨6, 11⟩, ⟨15, 13⟩, ⟨30, 21⟩, ⟨39, 23⟩, ⟨2, 10⟩, ⟨11, 12⟩, ⟨20, 14⟩, ⟨26, 20⟩]⟩
theorem profile0633_checked : profile0633.check := by decide +kernel

noncomputable def selection1_0633 : Selection :=
  ⟨1, -2, 4, (273/20), 95, -64, 394⟩
theorem selection1_0633_checked : selection1_0633.check profile0633 := by decide +kernel

noncomputable def selection2_0633 : Selection :=
  ⟨2, -10, 8, (1341/100), 29, -92, 762⟩
theorem selection2_0633_checked : selection2_0633.check profile0633 := by decide +kernel

noncomputable def profile0634 : ProfileCell :=
  ⟨(21/94), (15/67),
    [11, 11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨26, 21⟩, ⟨35, 23⟩, ⟨7, 12⟩, ⟨16, 14⟩, ⟨22, 20⟩, ⟨31, 22⟩, ⟨40, 24⟩, ⟨3, 11⟩, ⟨12, 13⟩, ⟨21, 15⟩, ⟨27, 21⟩, ⟨36, 23⟩, ⟨8, 12⟩, ⟨17, 14⟩, ⟨43, 35⟩, ⟨23, 20⟩, ⟨32, 22⟩, ⟨41, 24⟩, ⟨4, 11⟩, ⟨13, 13⟩, ⟨28, 21⟩, ⟨37, 23⟩, ⟨9, 12⟩, ⟨18, 14⟩, ⟨24, 20⟩, ⟨33, 22⟩, ⟨42, 24⟩, ⟨5, 11⟩, ⟨14, 13⟩, ⟨29, 21⟩, ⟨38, 23⟩, ⟨1, 10⟩, ⟨10, 12⟩, ⟨19, 14⟩, ⟨25, 20⟩, ⟨34, 22⟩, ⟨6, 11⟩, ⟨15, 13⟩, ⟨30, 21⟩, ⟨39, 23⟩, ⟨2, 10⟩, ⟨11, 12⟩, ⟨20, 14⟩]⟩
theorem profile0634_checked : profile0634.check := by decide +kernel

noncomputable def selection1_0634 : Selection :=
  ⟨1, -2, 4, (273/20), 435, 20, 18⟩
theorem selection1_0634_checked : selection1_0634.check profile0634 := by decide +kernel

noncomputable def selection2_0634 : Selection :=
  ⟨2, -10, 8, (269/20), 130, -8, 386⟩
theorem selection2_0634_checked : selection2_0634.check profile0634 := by decide +kernel

noncomputable def profile0635 : ProfileCell :=
  ⟨(15/67), (13/58),
    [11, 11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨20, 15⟩, ⟨26, 21⟩, ⟨35, 23⟩, ⟨7, 12⟩, ⟨16, 14⟩, ⟨22, 20⟩, ⟨31, 22⟩, ⟨40, 24⟩, ⟨3, 11⟩, ⟨12, 13⟩, ⟨21, 15⟩, ⟨27, 21⟩, ⟨36, 23⟩, ⟨8, 12⟩, ⟨17, 14⟩, ⟨23, 20⟩, ⟨43, 35⟩, ⟨32, 22⟩, ⟨41, 24⟩, ⟨4, 11⟩, ⟨13, 13⟩, ⟨28, 21⟩, ⟨37, 23⟩, ⟨9, 12⟩, ⟨18, 14⟩, ⟨24, 20⟩, ⟨33, 22⟩, ⟨42, 24⟩, ⟨5, 11⟩, ⟨14, 13⟩, ⟨29, 21⟩, ⟨38, 23⟩, ⟨1, 10⟩, ⟨10, 12⟩, ⟨19, 14⟩, ⟨25, 20⟩, ⟨34, 22⟩, ⟨6, 11⟩, ⟨15, 13⟩, ⟨30, 21⟩, ⟨39, 23⟩, ⟨2, 10⟩, ⟨11, 12⟩]⟩
theorem profile0635_checked : profile0635.check := by decide +kernel

noncomputable def selection1_0635 : Selection :=
  ⟨1, -2, 4, (342/25), 235, -40, 286⟩
theorem selection1_0635_checked : selection1_0635.check profile0635 := by decide +kernel

noncomputable def selection2_0635 : Selection :=
  ⟨2, -10, 8, (1349/100), 71, -68, 654⟩
theorem selection2_0635_checked : selection2_0635.check profile0635 := by decide +kernel

noncomputable def profile0636 : ProfileCell :=
  ⟨(13/58), (24/107),
    [11, 11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨11, 13⟩, ⟨20, 15⟩, ⟨26, 21⟩, ⟨35, 23⟩, ⟨7, 12⟩, ⟨16, 14⟩, ⟨22, 20⟩, ⟨31, 22⟩, ⟨3, 11⟩, ⟨40, 24⟩, ⟨12, 13⟩, ⟨21, 15⟩, ⟨27, 21⟩, ⟨36, 23⟩, ⟨8, 12⟩, ⟨17, 14⟩, ⟨23, 20⟩, ⟨32, 22⟩, ⟨43, 35⟩, ⟨4, 11⟩, ⟨41, 24⟩, ⟨13, 13⟩, ⟨28, 21⟩, ⟨37, 23⟩, ⟨9, 12⟩, ⟨18, 14⟩, ⟨24, 20⟩, ⟨33, 22⟩, ⟨5, 11⟩, ⟨42, 24⟩, ⟨14, 13⟩, ⟨29, 21⟩, ⟨1, 10⟩, ⟨38, 23⟩, ⟨10, 12⟩, ⟨19, 14⟩, ⟨25, 20⟩, ⟨34, 22⟩, ⟨6, 11⟩, ⟨15, 13⟩, ⟨30, 21⟩, ⟨2, 10⟩, ⟨39, 23⟩]⟩
theorem profile0636_checked : profile0636.check := by decide +kernel

noncomputable def selection1_0636 : Selection :=
  ⟨1, -2, 4, (1373/100), 148, -144, 750⟩
theorem selection1_0636_checked : selection1_0636.check profile0636 := by decide +kernel

noncomputable def selection2_0636 : Selection :=
  ⟨2, -10, 8, (1353/100), 45, -172, 1118⟩
theorem selection2_0636_checked : selection2_0636.check profile0636 := by decide +kernel

noncomputable def profile0637 : ProfileCell :=
  ⟨(24/107), (11/49),
    [11, 11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 4], [10, 10, 11, 11, 11],
    [⟨39, 24⟩, ⟨11, 13⟩, ⟨20, 15⟩, ⟨26, 21⟩, ⟨35, 23⟩, ⟨7, 12⟩, ⟨16, 14⟩, ⟨22, 20⟩, ⟨31, 22⟩, ⟨3, 11⟩, ⟨40, 24⟩, ⟨12, 13⟩, ⟨21, 15⟩, ⟨27, 21⟩, ⟨36, 23⟩, ⟨8, 12⟩, ⟨17, 14⟩, ⟨23, 20⟩, ⟨32, 22⟩, ⟨4, 11⟩, ⟨43, 35⟩, ⟨41, 24⟩, ⟨13, 13⟩, ⟨28, 21⟩, ⟨37, 23⟩, ⟨9, 12⟩, ⟨18, 14⟩, ⟨24, 20⟩, ⟨33, 22⟩, ⟨5, 11⟩, ⟨42, 24⟩, ⟨14, 13⟩, ⟨29, 21⟩, ⟨1, 10⟩, ⟨38, 23⟩, ⟨10, 12⟩, ⟨19, 14⟩, ⟨25, 20⟩, ⟨34, 22⟩, ⟨6, 11⟩, ⟨15, 13⟩, ⟨30, 21⟩, ⟨2, 10⟩]⟩
theorem profile0637_checked : profile0637.check := by decide +kernel

noncomputable def selection1_0637 : Selection :=
  ⟨1, -2, 4, (687/50), 175, 0, 108⟩
theorem selection1_0637_checked : selection1_0637.check profile0637 := by decide +kernel

noncomputable def selection2_0637 : Selection :=
  ⟨2, -10, 8, (271/20), 53, -28, 476⟩
theorem selection2_0637_checked : selection2_0637.check profile0637 := by decide +kernel

noncomputable def profile0638 : ProfileCell :=
  ⟨(11/49), (9/40),
    [11, 11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 4], [10, 11, 11, 11, 11],
    [⟨2, 11⟩, ⟨30, 22⟩, ⟨11, 13⟩, ⟨39, 24⟩, ⟨20, 15⟩, ⟨26, 21⟩, ⟨7, 12⟩, ⟨35, 23⟩, ⟨16, 14⟩, ⟨22, 20⟩, ⟨3, 11⟩, ⟨31, 22⟩, ⟨12, 13⟩, ⟨40, 24⟩, ⟨21, 15⟩, ⟨27, 21⟩, ⟨8, 12⟩, ⟨36, 23⟩, ⟨17, 14⟩, ⟨23, 20⟩, ⟨4, 11⟩, ⟨32, 22⟩, ⟨13, 13⟩, ⟨41, 24⟩, ⟨43, 35⟩, ⟨28, 21⟩, ⟨9, 12⟩, ⟨37, 23⟩, ⟨18, 14⟩, ⟨24, 20⟩, ⟨5, 11⟩, ⟨33, 22⟩, ⟨14, 13⟩, ⟨42, 24⟩, ⟨1, 10⟩, ⟨29, 21⟩, ⟨10, 12⟩, ⟨38, 23⟩, ⟨19, 14⟩, ⟨25, 20⟩, ⟨6, 11⟩, ⟨34, 22⟩, ⟨15, 13⟩]⟩
theorem profile0638_checked : profile0638.check := by decide +kernel

noncomputable def selection1_0638 : Selection :=
  ⟨1, 0, 4, (446/25), 607, -88, 500⟩
theorem selection1_0638_checked : selection1_0638.check profile0638 := by decide +kernel

noncomputable def selection2_0638 : Selection :=
  ⟨2, -8, 8, (353/20), 182, -116, 868⟩
theorem selection2_0638_checked : selection2_0638.check profile0638 := by decide +kernel

noncomputable def profile0639 : ProfileCell :=
  ⟨(9/40), (23/102),
    [11, 11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4], [10, 11, 11, 11, 11],
    [⟨2, 11⟩, ⟨11, 13⟩, ⟨30, 22⟩, ⟨20, 15⟩, ⟨39, 24⟩, ⟨7, 12⟩, ⟨26, 21⟩, ⟨16, 14⟩, ⟨35, 23⟩, ⟨3, 11⟩, ⟨22, 20⟩, ⟨12, 13⟩, ⟨31, 22⟩, ⟨21, 15⟩, ⟨40, 24⟩, ⟨8, 12⟩, ⟨27, 21⟩, ⟨17, 14⟩, ⟨36, 23⟩, ⟨4, 11⟩, ⟨23, 20⟩, ⟨13, 13⟩, ⟨32, 22⟩, ⟨41, 24⟩, ⟨43, 35⟩, ⟨9, 12⟩, ⟨28, 21⟩, ⟨18, 14⟩, ⟨37, 23⟩, ⟨5, 11⟩, ⟨24, 20⟩, ⟨14, 13⟩, ⟨33, 22⟩, ⟨42, 24⟩, ⟨1, 10⟩, ⟨10, 12⟩, ⟨29, 21⟩, ⟨19, 14⟩, ⟨38, 23⟩, ⟨6, 11⟩, ⟨25, 20⟩, ⟨15, 13⟩, ⟨34, 22⟩]⟩
theorem profile0639_checked : profile0639.check := by decide +kernel

noncomputable def selection1_0639 : Selection :=
  ⟨1, -1, 4, (797/50), 521, -88, 500⟩
theorem selection1_0639_checked : selection1_0639.check profile0639 := by decide +kernel

noncomputable def selection2_0639 : Selection :=
  ⟨2, -9, 8, (787/50), 156, -116, 868⟩
theorem selection2_0639_checked : selection2_0639.check profile0639 := by decide +kernel

noncomputable def leaf1_0576 : Block :=
  Block.single profile0576 selection1_0576 profile0576_checked selection1_0576_checked
noncomputable def leaf1_0577 : Block :=
  Block.single profile0577 selection1_0577 profile0577_checked selection1_0577_checked
noncomputable def leaf1_0578 : Block :=
  Block.single profile0578 selection1_0578 profile0578_checked selection1_0578_checked
noncomputable def leaf1_0579 : Block :=
  Block.single profile0579 selection1_0579 profile0579_checked selection1_0579_checked
noncomputable def leaf1_0580 : Block :=
  Block.single profile0580 selection1_0580 profile0580_checked selection1_0580_checked
noncomputable def leaf1_0581 : Block :=
  Block.single profile0581 selection1_0581 profile0581_checked selection1_0581_checked
noncomputable def leaf1_0582 : Block :=
  Block.single profile0582 selection1_0582 profile0582_checked selection1_0582_checked
noncomputable def leaf1_0583 : Block :=
  Block.single profile0583 selection1_0583 profile0583_checked selection1_0583_checked
noncomputable def leaf1_0584 : Block :=
  Block.single profile0584 selection1_0584 profile0584_checked selection1_0584_checked
noncomputable def leaf1_0585 : Block :=
  Block.single profile0585 selection1_0585 profile0585_checked selection1_0585_checked
noncomputable def leaf1_0586 : Block :=
  Block.single profile0586 selection1_0586 profile0586_checked selection1_0586_checked
noncomputable def leaf1_0587 : Block :=
  Block.single profile0587 selection1_0587 profile0587_checked selection1_0587_checked
noncomputable def leaf1_0588 : Block :=
  Block.single profile0588 selection1_0588 profile0588_checked selection1_0588_checked
noncomputable def leaf1_0589 : Block :=
  Block.single profile0589 selection1_0589 profile0589_checked selection1_0589_checked
noncomputable def leaf1_0590 : Block :=
  Block.single profile0590 selection1_0590 profile0590_checked selection1_0590_checked
noncomputable def leaf1_0591 : Block :=
  Block.single profile0591 selection1_0591 profile0591_checked selection1_0591_checked
noncomputable def leaf1_0592 : Block :=
  Block.single profile0592 selection1_0592 profile0592_checked selection1_0592_checked
noncomputable def leaf1_0593 : Block :=
  Block.single profile0593 selection1_0593 profile0593_checked selection1_0593_checked
noncomputable def leaf1_0594 : Block :=
  Block.single profile0594 selection1_0594 profile0594_checked selection1_0594_checked
noncomputable def leaf1_0595 : Block :=
  Block.single profile0595 selection1_0595 profile0595_checked selection1_0595_checked
noncomputable def leaf1_0596 : Block :=
  Block.single profile0596 selection1_0596 profile0596_checked selection1_0596_checked
noncomputable def leaf1_0597 : Block :=
  Block.single profile0597 selection1_0597 profile0597_checked selection1_0597_checked
noncomputable def leaf1_0598 : Block :=
  Block.single profile0598 selection1_0598 profile0598_checked selection1_0598_checked
noncomputable def leaf1_0599 : Block :=
  Block.single profile0599 selection1_0599 profile0599_checked selection1_0599_checked
noncomputable def leaf1_0600 : Block :=
  Block.single profile0600 selection1_0600 profile0600_checked selection1_0600_checked
noncomputable def leaf1_0601 : Block :=
  Block.single profile0601 selection1_0601 profile0601_checked selection1_0601_checked
noncomputable def leaf1_0602 : Block :=
  Block.single profile0602 selection1_0602 profile0602_checked selection1_0602_checked
noncomputable def leaf1_0603 : Block :=
  Block.single profile0603 selection1_0603 profile0603_checked selection1_0603_checked
noncomputable def leaf1_0604 : Block :=
  Block.single profile0604 selection1_0604 profile0604_checked selection1_0604_checked
noncomputable def leaf1_0605 : Block :=
  Block.single profile0605 selection1_0605 profile0605_checked selection1_0605_checked
noncomputable def leaf1_0606 : Block :=
  Block.single profile0606 selection1_0606 profile0606_checked selection1_0606_checked
noncomputable def leaf1_0607 : Block :=
  Block.single profile0607 selection1_0607 profile0607_checked selection1_0607_checked
noncomputable def leaf1_0608 : Block :=
  Block.single profile0608 selection1_0608 profile0608_checked selection1_0608_checked
noncomputable def leaf1_0609 : Block :=
  Block.single profile0609 selection1_0609 profile0609_checked selection1_0609_checked
noncomputable def leaf1_0610 : Block :=
  Block.single profile0610 selection1_0610 profile0610_checked selection1_0610_checked
noncomputable def leaf1_0611 : Block :=
  Block.single profile0611 selection1_0611 profile0611_checked selection1_0611_checked
noncomputable def leaf1_0612 : Block :=
  Block.single profile0612 selection1_0612 profile0612_checked selection1_0612_checked
noncomputable def leaf1_0613 : Block :=
  Block.single profile0613 selection1_0613 profile0613_checked selection1_0613_checked
noncomputable def leaf1_0614 : Block :=
  Block.single profile0614 selection1_0614 profile0614_checked selection1_0614_checked
noncomputable def leaf1_0615 : Block :=
  Block.single profile0615 selection1_0615 profile0615_checked selection1_0615_checked
noncomputable def leaf1_0616 : Block :=
  Block.single profile0616 selection1_0616 profile0616_checked selection1_0616_checked
noncomputable def leaf1_0617 : Block :=
  Block.single profile0617 selection1_0617 profile0617_checked selection1_0617_checked
noncomputable def leaf1_0618 : Block :=
  Block.single profile0618 selection1_0618 profile0618_checked selection1_0618_checked
noncomputable def leaf1_0619 : Block :=
  Block.single profile0619 selection1_0619 profile0619_checked selection1_0619_checked
noncomputable def leaf1_0620 : Block :=
  Block.single profile0620 selection1_0620 profile0620_checked selection1_0620_checked
noncomputable def leaf1_0621 : Block :=
  Block.single profile0621 selection1_0621 profile0621_checked selection1_0621_checked
noncomputable def leaf1_0622 : Block :=
  Block.single profile0622 selection1_0622 profile0622_checked selection1_0622_checked
noncomputable def leaf1_0623 : Block :=
  Block.single profile0623 selection1_0623 profile0623_checked selection1_0623_checked
noncomputable def leaf1_0624 : Block :=
  Block.single profile0624 selection1_0624 profile0624_checked selection1_0624_checked
noncomputable def leaf1_0625 : Block :=
  Block.single profile0625 selection1_0625 profile0625_checked selection1_0625_checked
noncomputable def leaf1_0626 : Block :=
  Block.single profile0626 selection1_0626 profile0626_checked selection1_0626_checked
noncomputable def leaf1_0627 : Block :=
  Block.single profile0627 selection1_0627 profile0627_checked selection1_0627_checked
noncomputable def leaf1_0628 : Block :=
  Block.single profile0628 selection1_0628 profile0628_checked selection1_0628_checked
noncomputable def leaf1_0629 : Block :=
  Block.single profile0629 selection1_0629 profile0629_checked selection1_0629_checked
noncomputable def leaf1_0630 : Block :=
  Block.single profile0630 selection1_0630 profile0630_checked selection1_0630_checked
noncomputable def leaf1_0631 : Block :=
  Block.single profile0631 selection1_0631 profile0631_checked selection1_0631_checked
noncomputable def leaf1_0632 : Block :=
  Block.single profile0632 selection1_0632 profile0632_checked selection1_0632_checked
noncomputable def leaf1_0633 : Block :=
  Block.single profile0633 selection1_0633 profile0633_checked selection1_0633_checked
noncomputable def leaf1_0634 : Block :=
  Block.single profile0634 selection1_0634 profile0634_checked selection1_0634_checked
noncomputable def leaf1_0635 : Block :=
  Block.single profile0635 selection1_0635 profile0635_checked selection1_0635_checked
noncomputable def leaf1_0636 : Block :=
  Block.single profile0636 selection1_0636 profile0636_checked selection1_0636_checked
noncomputable def leaf1_0637 : Block :=
  Block.single profile0637 selection1_0637 profile0637_checked selection1_0637_checked
noncomputable def leaf1_0638 : Block :=
  Block.single profile0638 selection1_0638 profile0638_checked selection1_0638_checked
noncomputable def leaf1_0639 : Block :=
  Block.single profile0639 selection1_0639 profile0639_checked selection1_0639_checked
noncomputable def batch009p1_0_0000 : Block :=
  Block.append leaf1_0576 leaf1_0577 (by decide +kernel)
noncomputable def batch009p1_0_0001 : Block :=
  Block.append leaf1_0578 leaf1_0579 (by decide +kernel)
noncomputable def batch009p1_0_0002 : Block :=
  Block.append leaf1_0580 leaf1_0581 (by decide +kernel)
noncomputable def batch009p1_0_0003 : Block :=
  Block.append leaf1_0582 leaf1_0583 (by decide +kernel)
noncomputable def batch009p1_0_0004 : Block :=
  Block.append leaf1_0584 leaf1_0585 (by decide +kernel)
noncomputable def batch009p1_0_0005 : Block :=
  Block.append leaf1_0586 leaf1_0587 (by decide +kernel)
noncomputable def batch009p1_0_0006 : Block :=
  Block.append leaf1_0588 leaf1_0589 (by decide +kernel)
noncomputable def batch009p1_0_0007 : Block :=
  Block.append leaf1_0590 leaf1_0591 (by decide +kernel)
noncomputable def batch009p1_0_0008 : Block :=
  Block.append leaf1_0592 leaf1_0593 (by decide +kernel)
noncomputable def batch009p1_0_0009 : Block :=
  Block.append leaf1_0594 leaf1_0595 (by decide +kernel)
noncomputable def batch009p1_0_0010 : Block :=
  Block.append leaf1_0596 leaf1_0597 (by decide +kernel)
noncomputable def batch009p1_0_0011 : Block :=
  Block.append leaf1_0598 leaf1_0599 (by decide +kernel)
noncomputable def batch009p1_0_0012 : Block :=
  Block.append leaf1_0600 leaf1_0601 (by decide +kernel)
noncomputable def batch009p1_0_0013 : Block :=
  Block.append leaf1_0602 leaf1_0603 (by decide +kernel)
noncomputable def batch009p1_0_0014 : Block :=
  Block.append leaf1_0604 leaf1_0605 (by decide +kernel)
noncomputable def batch009p1_0_0015 : Block :=
  Block.append leaf1_0606 leaf1_0607 (by decide +kernel)
noncomputable def batch009p1_0_0016 : Block :=
  Block.append leaf1_0608 leaf1_0609 (by decide +kernel)
noncomputable def batch009p1_0_0017 : Block :=
  Block.append leaf1_0610 leaf1_0611 (by decide +kernel)
noncomputable def batch009p1_0_0018 : Block :=
  Block.append leaf1_0612 leaf1_0613 (by decide +kernel)
noncomputable def batch009p1_0_0019 : Block :=
  Block.append leaf1_0614 leaf1_0615 (by decide +kernel)
noncomputable def batch009p1_0_0020 : Block :=
  Block.append leaf1_0616 leaf1_0617 (by decide +kernel)
noncomputable def batch009p1_0_0021 : Block :=
  Block.append leaf1_0618 leaf1_0619 (by decide +kernel)
noncomputable def batch009p1_0_0022 : Block :=
  Block.append leaf1_0620 leaf1_0621 (by decide +kernel)
noncomputable def batch009p1_0_0023 : Block :=
  Block.append leaf1_0622 leaf1_0623 (by decide +kernel)
noncomputable def batch009p1_0_0024 : Block :=
  Block.append leaf1_0624 leaf1_0625 (by decide +kernel)
noncomputable def batch009p1_0_0025 : Block :=
  Block.append leaf1_0626 leaf1_0627 (by decide +kernel)
noncomputable def batch009p1_0_0026 : Block :=
  Block.append leaf1_0628 leaf1_0629 (by decide +kernel)
noncomputable def batch009p1_0_0027 : Block :=
  Block.append leaf1_0630 leaf1_0631 (by decide +kernel)
noncomputable def batch009p1_0_0028 : Block :=
  Block.append leaf1_0632 leaf1_0633 (by decide +kernel)
noncomputable def batch009p1_0_0029 : Block :=
  Block.append leaf1_0634 leaf1_0635 (by decide +kernel)
noncomputable def batch009p1_0_0030 : Block :=
  Block.append leaf1_0636 leaf1_0637 (by decide +kernel)
noncomputable def batch009p1_0_0031 : Block :=
  Block.append leaf1_0638 leaf1_0639 (by decide +kernel)
noncomputable def batch009p1_1_0000 : Block :=
  Block.append batch009p1_0_0000 batch009p1_0_0001 (by decide +kernel)
noncomputable def batch009p1_1_0001 : Block :=
  Block.append batch009p1_0_0002 batch009p1_0_0003 (by decide +kernel)
noncomputable def batch009p1_1_0002 : Block :=
  Block.append batch009p1_0_0004 batch009p1_0_0005 (by decide +kernel)
noncomputable def batch009p1_1_0003 : Block :=
  Block.append batch009p1_0_0006 batch009p1_0_0007 (by decide +kernel)
noncomputable def batch009p1_1_0004 : Block :=
  Block.append batch009p1_0_0008 batch009p1_0_0009 (by decide +kernel)
noncomputable def batch009p1_1_0005 : Block :=
  Block.append batch009p1_0_0010 batch009p1_0_0011 (by decide +kernel)
noncomputable def batch009p1_1_0006 : Block :=
  Block.append batch009p1_0_0012 batch009p1_0_0013 (by decide +kernel)
noncomputable def batch009p1_1_0007 : Block :=
  Block.append batch009p1_0_0014 batch009p1_0_0015 (by decide +kernel)
noncomputable def batch009p1_1_0008 : Block :=
  Block.append batch009p1_0_0016 batch009p1_0_0017 (by decide +kernel)
noncomputable def batch009p1_1_0009 : Block :=
  Block.append batch009p1_0_0018 batch009p1_0_0019 (by decide +kernel)
noncomputable def batch009p1_1_0010 : Block :=
  Block.append batch009p1_0_0020 batch009p1_0_0021 (by decide +kernel)
noncomputable def batch009p1_1_0011 : Block :=
  Block.append batch009p1_0_0022 batch009p1_0_0023 (by decide +kernel)
noncomputable def batch009p1_1_0012 : Block :=
  Block.append batch009p1_0_0024 batch009p1_0_0025 (by decide +kernel)
noncomputable def batch009p1_1_0013 : Block :=
  Block.append batch009p1_0_0026 batch009p1_0_0027 (by decide +kernel)
noncomputable def batch009p1_1_0014 : Block :=
  Block.append batch009p1_0_0028 batch009p1_0_0029 (by decide +kernel)
noncomputable def batch009p1_1_0015 : Block :=
  Block.append batch009p1_0_0030 batch009p1_0_0031 (by decide +kernel)
noncomputable def batch009p1_2_0000 : Block :=
  Block.append batch009p1_1_0000 batch009p1_1_0001 (by decide +kernel)
noncomputable def batch009p1_2_0001 : Block :=
  Block.append batch009p1_1_0002 batch009p1_1_0003 (by decide +kernel)
noncomputable def batch009p1_2_0002 : Block :=
  Block.append batch009p1_1_0004 batch009p1_1_0005 (by decide +kernel)
noncomputable def batch009p1_2_0003 : Block :=
  Block.append batch009p1_1_0006 batch009p1_1_0007 (by decide +kernel)
noncomputable def batch009p1_2_0004 : Block :=
  Block.append batch009p1_1_0008 batch009p1_1_0009 (by decide +kernel)
noncomputable def batch009p1_2_0005 : Block :=
  Block.append batch009p1_1_0010 batch009p1_1_0011 (by decide +kernel)
noncomputable def batch009p1_2_0006 : Block :=
  Block.append batch009p1_1_0012 batch009p1_1_0013 (by decide +kernel)
noncomputable def batch009p1_2_0007 : Block :=
  Block.append batch009p1_1_0014 batch009p1_1_0015 (by decide +kernel)
noncomputable def batch009p1_3_0000 : Block :=
  Block.append batch009p1_2_0000 batch009p1_2_0001 (by decide +kernel)
noncomputable def batch009p1_3_0001 : Block :=
  Block.append batch009p1_2_0002 batch009p1_2_0003 (by decide +kernel)
noncomputable def batch009p1_3_0002 : Block :=
  Block.append batch009p1_2_0004 batch009p1_2_0005 (by decide +kernel)
noncomputable def batch009p1_3_0003 : Block :=
  Block.append batch009p1_2_0006 batch009p1_2_0007 (by decide +kernel)
noncomputable def batch009p1_4_0000 : Block :=
  Block.append batch009p1_3_0000 batch009p1_3_0001 (by decide +kernel)
noncomputable def batch009p1_4_0001 : Block :=
  Block.append batch009p1_3_0002 batch009p1_3_0003 (by decide +kernel)
noncomputable def batch009p1_5_0000 : Block :=
  Block.append batch009p1_4_0000 batch009p1_4_0001 (by decide +kernel)
theorem batch009p1_5_0000_left : batch009p1_5_0000.left = (65/54) := by decide +kernel
theorem batch009p1_5_0000_right : batch009p1_5_0000.right = (125/102) := by decide +kernel
theorem batch009p1_5_0000_units : batch009p1_5_0000.units = 22002 := by decide +kernel
noncomputable def leaf2_0576 : Block :=
  Block.single profile0576 selection2_0576 profile0576_checked selection2_0576_checked
noncomputable def leaf2_0577 : Block :=
  Block.single profile0577 selection2_0577 profile0577_checked selection2_0577_checked
noncomputable def leaf2_0578 : Block :=
  Block.single profile0578 selection2_0578 profile0578_checked selection2_0578_checked
noncomputable def leaf2_0579 : Block :=
  Block.single profile0579 selection2_0579 profile0579_checked selection2_0579_checked
noncomputable def leaf2_0580 : Block :=
  Block.single profile0580 selection2_0580 profile0580_checked selection2_0580_checked
noncomputable def leaf2_0581 : Block :=
  Block.single profile0581 selection2_0581 profile0581_checked selection2_0581_checked
noncomputable def leaf2_0582 : Block :=
  Block.single profile0582 selection2_0582 profile0582_checked selection2_0582_checked
noncomputable def leaf2_0583 : Block :=
  Block.single profile0583 selection2_0583 profile0583_checked selection2_0583_checked
noncomputable def leaf2_0584 : Block :=
  Block.single profile0584 selection2_0584 profile0584_checked selection2_0584_checked
noncomputable def leaf2_0585 : Block :=
  Block.single profile0585 selection2_0585 profile0585_checked selection2_0585_checked
noncomputable def leaf2_0586 : Block :=
  Block.single profile0586 selection2_0586 profile0586_checked selection2_0586_checked
noncomputable def leaf2_0587 : Block :=
  Block.single profile0587 selection2_0587 profile0587_checked selection2_0587_checked
noncomputable def leaf2_0588 : Block :=
  Block.single profile0588 selection2_0588 profile0588_checked selection2_0588_checked
noncomputable def leaf2_0589 : Block :=
  Block.single profile0589 selection2_0589 profile0589_checked selection2_0589_checked
noncomputable def leaf2_0590 : Block :=
  Block.single profile0590 selection2_0590 profile0590_checked selection2_0590_checked
noncomputable def leaf2_0591 : Block :=
  Block.single profile0591 selection2_0591 profile0591_checked selection2_0591_checked
noncomputable def leaf2_0592 : Block :=
  Block.single profile0592 selection2_0592 profile0592_checked selection2_0592_checked
noncomputable def leaf2_0593 : Block :=
  Block.single profile0593 selection2_0593 profile0593_checked selection2_0593_checked
noncomputable def leaf2_0594 : Block :=
  Block.single profile0594 selection2_0594 profile0594_checked selection2_0594_checked
noncomputable def leaf2_0595 : Block :=
  Block.single profile0595 selection2_0595 profile0595_checked selection2_0595_checked
noncomputable def leaf2_0596 : Block :=
  Block.single profile0596 selection2_0596 profile0596_checked selection2_0596_checked
noncomputable def leaf2_0597 : Block :=
  Block.single profile0597 selection2_0597 profile0597_checked selection2_0597_checked
noncomputable def leaf2_0598 : Block :=
  Block.single profile0598 selection2_0598 profile0598_checked selection2_0598_checked
noncomputable def leaf2_0599 : Block :=
  Block.single profile0599 selection2_0599 profile0599_checked selection2_0599_checked
noncomputable def leaf2_0600 : Block :=
  Block.single profile0600 selection2_0600 profile0600_checked selection2_0600_checked
noncomputable def leaf2_0601 : Block :=
  Block.single profile0601 selection2_0601 profile0601_checked selection2_0601_checked
noncomputable def leaf2_0602 : Block :=
  Block.single profile0602 selection2_0602 profile0602_checked selection2_0602_checked
noncomputable def leaf2_0603 : Block :=
  Block.single profile0603 selection2_0603 profile0603_checked selection2_0603_checked
noncomputable def leaf2_0604 : Block :=
  Block.single profile0604 selection2_0604 profile0604_checked selection2_0604_checked
noncomputable def leaf2_0605 : Block :=
  Block.single profile0605 selection2_0605 profile0605_checked selection2_0605_checked
noncomputable def leaf2_0606 : Block :=
  Block.single profile0606 selection2_0606 profile0606_checked selection2_0606_checked
noncomputable def leaf2_0607 : Block :=
  Block.single profile0607 selection2_0607 profile0607_checked selection2_0607_checked
noncomputable def leaf2_0608 : Block :=
  Block.single profile0608 selection2_0608 profile0608_checked selection2_0608_checked
noncomputable def leaf2_0609 : Block :=
  Block.single profile0609 selection2_0609 profile0609_checked selection2_0609_checked
noncomputable def leaf2_0610 : Block :=
  Block.single profile0610 selection2_0610 profile0610_checked selection2_0610_checked
noncomputable def leaf2_0611 : Block :=
  Block.single profile0611 selection2_0611 profile0611_checked selection2_0611_checked
noncomputable def leaf2_0612 : Block :=
  Block.single profile0612 selection2_0612 profile0612_checked selection2_0612_checked
noncomputable def leaf2_0613 : Block :=
  Block.single profile0613 selection2_0613 profile0613_checked selection2_0613_checked
noncomputable def leaf2_0614 : Block :=
  Block.single profile0614 selection2_0614 profile0614_checked selection2_0614_checked
noncomputable def leaf2_0615 : Block :=
  Block.single profile0615 selection2_0615 profile0615_checked selection2_0615_checked
noncomputable def leaf2_0616 : Block :=
  Block.single profile0616 selection2_0616 profile0616_checked selection2_0616_checked
noncomputable def leaf2_0617 : Block :=
  Block.single profile0617 selection2_0617 profile0617_checked selection2_0617_checked
noncomputable def leaf2_0618 : Block :=
  Block.single profile0618 selection2_0618 profile0618_checked selection2_0618_checked
noncomputable def leaf2_0619 : Block :=
  Block.single profile0619 selection2_0619 profile0619_checked selection2_0619_checked
noncomputable def leaf2_0620 : Block :=
  Block.single profile0620 selection2_0620 profile0620_checked selection2_0620_checked
noncomputable def leaf2_0621 : Block :=
  Block.single profile0621 selection2_0621 profile0621_checked selection2_0621_checked
noncomputable def leaf2_0622 : Block :=
  Block.single profile0622 selection2_0622 profile0622_checked selection2_0622_checked
noncomputable def leaf2_0623 : Block :=
  Block.single profile0623 selection2_0623 profile0623_checked selection2_0623_checked
noncomputable def leaf2_0624 : Block :=
  Block.single profile0624 selection2_0624 profile0624_checked selection2_0624_checked
noncomputable def leaf2_0625 : Block :=
  Block.single profile0625 selection2_0625 profile0625_checked selection2_0625_checked
noncomputable def leaf2_0626 : Block :=
  Block.single profile0626 selection2_0626 profile0626_checked selection2_0626_checked
noncomputable def leaf2_0627 : Block :=
  Block.single profile0627 selection2_0627 profile0627_checked selection2_0627_checked
noncomputable def leaf2_0628 : Block :=
  Block.single profile0628 selection2_0628 profile0628_checked selection2_0628_checked
noncomputable def leaf2_0629 : Block :=
  Block.single profile0629 selection2_0629 profile0629_checked selection2_0629_checked
noncomputable def leaf2_0630 : Block :=
  Block.single profile0630 selection2_0630 profile0630_checked selection2_0630_checked
noncomputable def leaf2_0631 : Block :=
  Block.single profile0631 selection2_0631 profile0631_checked selection2_0631_checked
noncomputable def leaf2_0632 : Block :=
  Block.single profile0632 selection2_0632 profile0632_checked selection2_0632_checked
noncomputable def leaf2_0633 : Block :=
  Block.single profile0633 selection2_0633 profile0633_checked selection2_0633_checked
noncomputable def leaf2_0634 : Block :=
  Block.single profile0634 selection2_0634 profile0634_checked selection2_0634_checked
noncomputable def leaf2_0635 : Block :=
  Block.single profile0635 selection2_0635 profile0635_checked selection2_0635_checked
noncomputable def leaf2_0636 : Block :=
  Block.single profile0636 selection2_0636 profile0636_checked selection2_0636_checked
noncomputable def leaf2_0637 : Block :=
  Block.single profile0637 selection2_0637 profile0637_checked selection2_0637_checked
noncomputable def leaf2_0638 : Block :=
  Block.single profile0638 selection2_0638 profile0638_checked selection2_0638_checked
noncomputable def leaf2_0639 : Block :=
  Block.single profile0639 selection2_0639 profile0639_checked selection2_0639_checked
noncomputable def batch009p2_0_0000 : Block :=
  Block.append leaf2_0576 leaf2_0577 (by decide +kernel)
noncomputable def batch009p2_0_0001 : Block :=
  Block.append leaf2_0578 leaf2_0579 (by decide +kernel)
noncomputable def batch009p2_0_0002 : Block :=
  Block.append leaf2_0580 leaf2_0581 (by decide +kernel)
noncomputable def batch009p2_0_0003 : Block :=
  Block.append leaf2_0582 leaf2_0583 (by decide +kernel)
noncomputable def batch009p2_0_0004 : Block :=
  Block.append leaf2_0584 leaf2_0585 (by decide +kernel)
noncomputable def batch009p2_0_0005 : Block :=
  Block.append leaf2_0586 leaf2_0587 (by decide +kernel)
noncomputable def batch009p2_0_0006 : Block :=
  Block.append leaf2_0588 leaf2_0589 (by decide +kernel)
noncomputable def batch009p2_0_0007 : Block :=
  Block.append leaf2_0590 leaf2_0591 (by decide +kernel)
noncomputable def batch009p2_0_0008 : Block :=
  Block.append leaf2_0592 leaf2_0593 (by decide +kernel)
noncomputable def batch009p2_0_0009 : Block :=
  Block.append leaf2_0594 leaf2_0595 (by decide +kernel)
noncomputable def batch009p2_0_0010 : Block :=
  Block.append leaf2_0596 leaf2_0597 (by decide +kernel)
noncomputable def batch009p2_0_0011 : Block :=
  Block.append leaf2_0598 leaf2_0599 (by decide +kernel)
noncomputable def batch009p2_0_0012 : Block :=
  Block.append leaf2_0600 leaf2_0601 (by decide +kernel)
noncomputable def batch009p2_0_0013 : Block :=
  Block.append leaf2_0602 leaf2_0603 (by decide +kernel)
noncomputable def batch009p2_0_0014 : Block :=
  Block.append leaf2_0604 leaf2_0605 (by decide +kernel)
noncomputable def batch009p2_0_0015 : Block :=
  Block.append leaf2_0606 leaf2_0607 (by decide +kernel)
noncomputable def batch009p2_0_0016 : Block :=
  Block.append leaf2_0608 leaf2_0609 (by decide +kernel)
noncomputable def batch009p2_0_0017 : Block :=
  Block.append leaf2_0610 leaf2_0611 (by decide +kernel)
noncomputable def batch009p2_0_0018 : Block :=
  Block.append leaf2_0612 leaf2_0613 (by decide +kernel)
noncomputable def batch009p2_0_0019 : Block :=
  Block.append leaf2_0614 leaf2_0615 (by decide +kernel)
noncomputable def batch009p2_0_0020 : Block :=
  Block.append leaf2_0616 leaf2_0617 (by decide +kernel)
noncomputable def batch009p2_0_0021 : Block :=
  Block.append leaf2_0618 leaf2_0619 (by decide +kernel)
noncomputable def batch009p2_0_0022 : Block :=
  Block.append leaf2_0620 leaf2_0621 (by decide +kernel)
noncomputable def batch009p2_0_0023 : Block :=
  Block.append leaf2_0622 leaf2_0623 (by decide +kernel)
noncomputable def batch009p2_0_0024 : Block :=
  Block.append leaf2_0624 leaf2_0625 (by decide +kernel)
noncomputable def batch009p2_0_0025 : Block :=
  Block.append leaf2_0626 leaf2_0627 (by decide +kernel)
noncomputable def batch009p2_0_0026 : Block :=
  Block.append leaf2_0628 leaf2_0629 (by decide +kernel)
noncomputable def batch009p2_0_0027 : Block :=
  Block.append leaf2_0630 leaf2_0631 (by decide +kernel)
noncomputable def batch009p2_0_0028 : Block :=
  Block.append leaf2_0632 leaf2_0633 (by decide +kernel)
noncomputable def batch009p2_0_0029 : Block :=
  Block.append leaf2_0634 leaf2_0635 (by decide +kernel)
noncomputable def batch009p2_0_0030 : Block :=
  Block.append leaf2_0636 leaf2_0637 (by decide +kernel)
noncomputable def batch009p2_0_0031 : Block :=
  Block.append leaf2_0638 leaf2_0639 (by decide +kernel)
noncomputable def batch009p2_1_0000 : Block :=
  Block.append batch009p2_0_0000 batch009p2_0_0001 (by decide +kernel)
noncomputable def batch009p2_1_0001 : Block :=
  Block.append batch009p2_0_0002 batch009p2_0_0003 (by decide +kernel)
noncomputable def batch009p2_1_0002 : Block :=
  Block.append batch009p2_0_0004 batch009p2_0_0005 (by decide +kernel)
noncomputable def batch009p2_1_0003 : Block :=
  Block.append batch009p2_0_0006 batch009p2_0_0007 (by decide +kernel)
noncomputable def batch009p2_1_0004 : Block :=
  Block.append batch009p2_0_0008 batch009p2_0_0009 (by decide +kernel)
noncomputable def batch009p2_1_0005 : Block :=
  Block.append batch009p2_0_0010 batch009p2_0_0011 (by decide +kernel)
noncomputable def batch009p2_1_0006 : Block :=
  Block.append batch009p2_0_0012 batch009p2_0_0013 (by decide +kernel)
noncomputable def batch009p2_1_0007 : Block :=
  Block.append batch009p2_0_0014 batch009p2_0_0015 (by decide +kernel)
noncomputable def batch009p2_1_0008 : Block :=
  Block.append batch009p2_0_0016 batch009p2_0_0017 (by decide +kernel)
noncomputable def batch009p2_1_0009 : Block :=
  Block.append batch009p2_0_0018 batch009p2_0_0019 (by decide +kernel)
noncomputable def batch009p2_1_0010 : Block :=
  Block.append batch009p2_0_0020 batch009p2_0_0021 (by decide +kernel)
noncomputable def batch009p2_1_0011 : Block :=
  Block.append batch009p2_0_0022 batch009p2_0_0023 (by decide +kernel)
noncomputable def batch009p2_1_0012 : Block :=
  Block.append batch009p2_0_0024 batch009p2_0_0025 (by decide +kernel)
noncomputable def batch009p2_1_0013 : Block :=
  Block.append batch009p2_0_0026 batch009p2_0_0027 (by decide +kernel)
noncomputable def batch009p2_1_0014 : Block :=
  Block.append batch009p2_0_0028 batch009p2_0_0029 (by decide +kernel)
noncomputable def batch009p2_1_0015 : Block :=
  Block.append batch009p2_0_0030 batch009p2_0_0031 (by decide +kernel)
noncomputable def batch009p2_2_0000 : Block :=
  Block.append batch009p2_1_0000 batch009p2_1_0001 (by decide +kernel)
noncomputable def batch009p2_2_0001 : Block :=
  Block.append batch009p2_1_0002 batch009p2_1_0003 (by decide +kernel)
noncomputable def batch009p2_2_0002 : Block :=
  Block.append batch009p2_1_0004 batch009p2_1_0005 (by decide +kernel)
noncomputable def batch009p2_2_0003 : Block :=
  Block.append batch009p2_1_0006 batch009p2_1_0007 (by decide +kernel)
noncomputable def batch009p2_2_0004 : Block :=
  Block.append batch009p2_1_0008 batch009p2_1_0009 (by decide +kernel)
noncomputable def batch009p2_2_0005 : Block :=
  Block.append batch009p2_1_0010 batch009p2_1_0011 (by decide +kernel)
noncomputable def batch009p2_2_0006 : Block :=
  Block.append batch009p2_1_0012 batch009p2_1_0013 (by decide +kernel)
noncomputable def batch009p2_2_0007 : Block :=
  Block.append batch009p2_1_0014 batch009p2_1_0015 (by decide +kernel)
noncomputable def batch009p2_3_0000 : Block :=
  Block.append batch009p2_2_0000 batch009p2_2_0001 (by decide +kernel)
noncomputable def batch009p2_3_0001 : Block :=
  Block.append batch009p2_2_0002 batch009p2_2_0003 (by decide +kernel)
noncomputable def batch009p2_3_0002 : Block :=
  Block.append batch009p2_2_0004 batch009p2_2_0005 (by decide +kernel)
noncomputable def batch009p2_3_0003 : Block :=
  Block.append batch009p2_2_0006 batch009p2_2_0007 (by decide +kernel)
noncomputable def batch009p2_4_0000 : Block :=
  Block.append batch009p2_3_0000 batch009p2_3_0001 (by decide +kernel)
noncomputable def batch009p2_4_0001 : Block :=
  Block.append batch009p2_3_0002 batch009p2_3_0003 (by decide +kernel)
noncomputable def batch009p2_5_0000 : Block :=
  Block.append batch009p2_4_0000 batch009p2_4_0001 (by decide +kernel)
theorem batch009p2_5_0000_left : batch009p2_5_0000.left = (119/54) := by decide +kernel
theorem batch009p2_5_0000_right : batch009p2_5_0000.right = (227/102) := by decide +kernel
theorem batch009p2_5_0000_units : batch009p2_5_0000.units = 6535 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
