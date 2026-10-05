import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile0640 : ProfileCell :=
  ⟨(23/102), (7/31),
    [11, 11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4], [10, 11, 11, 11, 11],
    [⟨34, 23⟩, ⟨2, 11⟩, ⟨11, 13⟩, ⟨30, 22⟩, ⟨20, 15⟩, ⟨39, 24⟩, ⟨7, 12⟩, ⟨26, 21⟩, ⟨16, 14⟩, ⟨35, 23⟩, ⟨3, 11⟩, ⟨22, 20⟩, ⟨12, 13⟩, ⟨31, 22⟩, ⟨21, 15⟩, ⟨40, 24⟩, ⟨8, 12⟩, ⟨27, 21⟩, ⟨17, 14⟩, ⟨36, 23⟩, ⟨4, 11⟩, ⟨23, 20⟩, ⟨13, 13⟩, ⟨32, 22⟩, ⟨41, 24⟩, ⟨9, 12⟩, ⟨43, 35⟩, ⟨28, 21⟩, ⟨18, 14⟩, ⟨37, 23⟩, ⟨5, 11⟩, ⟨24, 20⟩, ⟨14, 13⟩, ⟨33, 22⟩, ⟨42, 24⟩, ⟨1, 10⟩, ⟨10, 12⟩, ⟨29, 21⟩, ⟨19, 14⟩, ⟨38, 23⟩, ⟨6, 11⟩, ⟨25, 20⟩, ⟨15, 13⟩]⟩
theorem profile0640_checked : profile0640.check := by decide +kernel

noncomputable def selection1_0640 : Selection :=
  ⟨1, -1, 4, (319/20), 336, 4, 92⟩
theorem selection1_0640_checked : selection1_0640.check profile0640 := by decide +kernel

noncomputable def selection2_0640 : Selection :=
  ⟨2, -9, 8, (1577/100), 101, -24, 460⟩
theorem selection2_0640_checked : selection2_0640.check profile0640 := by decide +kernel

noncomputable def profile0641 : ProfileCell :=
  ⟨(7/31), (12/53),
    [11, 11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4], [10, 11, 11, 11, 11],
    [⟨15, 14⟩, ⟨25, 21⟩, ⟨34, 23⟩, ⟨2, 11⟩, ⟨11, 13⟩, ⟨20, 15⟩, ⟨30, 22⟩, ⟨39, 24⟩, ⟨7, 12⟩, ⟨16, 14⟩, ⟨26, 21⟩, ⟨35, 23⟩, ⟨3, 11⟩, ⟨12, 13⟩, ⟨22, 20⟩, ⟨21, 15⟩, ⟨31, 22⟩, ⟨40, 24⟩, ⟨8, 12⟩, ⟨17, 14⟩, ⟨27, 21⟩, ⟨36, 23⟩, ⟨4, 11⟩, ⟨13, 13⟩, ⟨23, 20⟩, ⟨32, 22⟩, ⟨41, 24⟩, ⟨9, 12⟩, ⟨18, 14⟩, ⟨28, 21⟩, ⟨43, 35⟩, ⟨37, 23⟩, ⟨5, 11⟩, ⟨14, 13⟩, ⟨24, 20⟩, ⟨33, 22⟩, ⟨1, 10⟩, ⟨42, 24⟩, ⟨10, 12⟩, ⟨19, 14⟩, ⟨29, 21⟩, ⟨38, 23⟩, ⟨6, 11⟩]⟩
theorem profile0641_checked : profile0641.check := by decide +kernel

noncomputable def selection1_0641 : Selection :=
  ⟨1, -1, 4, 16, 648, -24, 216⟩
theorem selection1_0641_checked : selection1_0641.check profile0641 := by decide +kernel

noncomputable def selection2_0641 : Selection :=
  ⟨2, -9, 8, (317/20), 195, -52, 584⟩
theorem selection2_0641_checked : selection2_0641.check profile0641 := by decide +kernel

noncomputable def profile0642 : ProfileCell :=
  ⟨(12/53), (22/97),
    [11, 11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4], [10, 11, 11, 11, 11],
    [⟨6, 12⟩, ⟨38, 24⟩, ⟨15, 14⟩, ⟨25, 21⟩, ⟨2, 11⟩, ⟨34, 23⟩, ⟨11, 13⟩, ⟨20, 15⟩, ⟨30, 22⟩, ⟨7, 12⟩, ⟨39, 24⟩, ⟨16, 14⟩, ⟨26, 21⟩, ⟨3, 11⟩, ⟨35, 23⟩, ⟨12, 13⟩, ⟨22, 20⟩, ⟨21, 15⟩, ⟨31, 22⟩, ⟨8, 12⟩, ⟨40, 24⟩, ⟨17, 14⟩, ⟨27, 21⟩, ⟨4, 11⟩, ⟨36, 23⟩, ⟨13, 13⟩, ⟨23, 20⟩, ⟨32, 22⟩, ⟨9, 12⟩, ⟨41, 24⟩, ⟨18, 14⟩, ⟨28, 21⟩, ⟨5, 11⟩, ⟨37, 23⟩, ⟨43, 35⟩, ⟨14, 13⟩, ⟨24, 20⟩, ⟨1, 10⟩, ⟨33, 22⟩, ⟨10, 12⟩, ⟨42, 24⟩, ⟨19, 14⟩, ⟨29, 21⟩]⟩
theorem profile0642_checked : profile0642.check := by decide +kernel

noncomputable def selection1_0642 : Selection :=
  ⟨1, -1, 4, (803/50), 416, -48, 322⟩
theorem selection1_0642_checked : selection1_0642.check profile0642 := by decide +kernel

noncomputable def selection2_0642 : Selection :=
  ⟨2, -9, 8, (1591/100), 125, -76, 690⟩
theorem selection2_0642_checked : selection2_0642.check profile0642 := by decide +kernel

noncomputable def profile0643 : ProfileCell :=
  ⟨(22/97), (5/22),
    [11, 11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4], [10, 11, 11, 11, 11],
    [⟨29, 22⟩, ⟨6, 12⟩, ⟨38, 24⟩, ⟨15, 14⟩, ⟨25, 21⟩, ⟨2, 11⟩, ⟨34, 23⟩, ⟨11, 13⟩, ⟨20, 15⟩, ⟨30, 22⟩, ⟨7, 12⟩, ⟨39, 24⟩, ⟨16, 14⟩, ⟨26, 21⟩, ⟨3, 11⟩, ⟨35, 23⟩, ⟨12, 13⟩, ⟨22, 20⟩, ⟨21, 15⟩, ⟨31, 22⟩, ⟨8, 12⟩, ⟨40, 24⟩, ⟨17, 14⟩, ⟨27, 21⟩, ⟨4, 11⟩, ⟨36, 23⟩, ⟨13, 13⟩, ⟨23, 20⟩, ⟨32, 22⟩, ⟨9, 12⟩, ⟨41, 24⟩, ⟨18, 14⟩, ⟨28, 21⟩, ⟨5, 11⟩, ⟨37, 23⟩, ⟨14, 13⟩, ⟨43, 35⟩, ⟨24, 20⟩, ⟨1, 10⟩, ⟨33, 22⟩, ⟨10, 12⟩, ⟨42, 24⟩, ⟨19, 14⟩]⟩
theorem profile0643_checked : profile0643.check := by decide +kernel

noncomputable def selection1_0643 : Selection :=
  ⟨1, -1, 4, (803/50), 500, 84, -260⟩
theorem selection1_0643_checked : selection1_0643.check profile0643 := by decide +kernel

noncomputable def selection2_0643 : Selection :=
  ⟨2, -9, 8, (398/25), 151, 56, 108⟩
theorem selection2_0643_checked : selection2_0643.check profile0643 := by decide +kernel

noncomputable def profile0644 : ProfileCell :=
  ⟨(5/22), (23/101),
    [11, 11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 5], [10, 11, 11, 11, 11],
    [⟨19, 15⟩, ⟨42, 25⟩, ⟨6, 12⟩, ⟨29, 22⟩, ⟨15, 14⟩, ⟨38, 24⟩, ⟨2, 11⟩, ⟨25, 21⟩, ⟨11, 13⟩, ⟨34, 23⟩, ⟨20, 15⟩, ⟨7, 12⟩, ⟨30, 22⟩, ⟨16, 14⟩, ⟨39, 24⟩, ⟨3, 11⟩, ⟨26, 21⟩, ⟨12, 13⟩, ⟨35, 23⟩, ⟨21, 15⟩, ⟨22, 20⟩, ⟨8, 12⟩, ⟨31, 22⟩, ⟨17, 14⟩, ⟨40, 24⟩, ⟨4, 11⟩, ⟨27, 21⟩, ⟨13, 13⟩, ⟨36, 23⟩, ⟨23, 20⟩, ⟨9, 12⟩, ⟨32, 22⟩, ⟨18, 14⟩, ⟨41, 24⟩, ⟨5, 11⟩, ⟨28, 21⟩, ⟨14, 13⟩, ⟨37, 23⟩, ⟨1, 10⟩, ⟨24, 20⟩, ⟨43, 35⟩, ⟨10, 12⟩, ⟨33, 22⟩]⟩
theorem profile0644_checked : profile0644.check := by decide +kernel

noncomputable def selection1_0644 : Selection :=
  ⟨1, -3, 4, 12, 359, 44, -84⟩
theorem selection1_0644_checked : selection1_0644.check profile0644 := by decide +kernel

noncomputable def selection2_0644 : Selection :=
  ⟨2, -11, 8, (239/20), 109, 16, 284⟩
theorem selection2_0644_checked : selection2_0644.check profile0644 := by decide +kernel

noncomputable def profile0645 : ProfileCell :=
  ⟨(23/101), (18/79),
    [11, 11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 5], [10, 11, 11, 11, 11],
    [⟨33, 23⟩, ⟨19, 15⟩, ⟨42, 25⟩, ⟨6, 12⟩, ⟨29, 22⟩, ⟨15, 14⟩, ⟨38, 24⟩, ⟨2, 11⟩, ⟨25, 21⟩, ⟨11, 13⟩, ⟨34, 23⟩, ⟨20, 15⟩, ⟨7, 12⟩, ⟨30, 22⟩, ⟨16, 14⟩, ⟨39, 24⟩, ⟨3, 11⟩, ⟨26, 21⟩, ⟨12, 13⟩, ⟨35, 23⟩, ⟨21, 15⟩, ⟨22, 20⟩, ⟨8, 12⟩, ⟨31, 22⟩, ⟨17, 14⟩, ⟨40, 24⟩, ⟨4, 11⟩, ⟨27, 21⟩, ⟨13, 13⟩, ⟨36, 23⟩, ⟨23, 20⟩, ⟨9, 12⟩, ⟨32, 22⟩, ⟨18, 14⟩, ⟨41, 24⟩, ⟨5, 11⟩, ⟨28, 21⟩, ⟨14, 13⟩, ⟨37, 23⟩, ⟨1, 10⟩, ⟨24, 20⟩, ⟨10, 12⟩, ⟨43, 35⟩]⟩
theorem profile0645_checked : profile0645.check := by decide +kernel

noncomputable def selection1_0645 : Selection :=
  ⟨1, -3, 4, (1199/100), 100, 136, -488⟩
theorem selection1_0645_checked : selection1_0645.check profile0645 := by decide +kernel

noncomputable def selection2_0645 : Selection :=
  ⟨2, -11, 8, (239/20), 31, 108, -120⟩
theorem selection2_0645_checked : selection2_0645.check profile0645 := by decide +kernel

noncomputable def profile0646 : ProfileCell :=
  ⟨(18/79), (13/57),
    [11, 11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 5], [10, 11, 11, 11, 11],
    [⟨43, 36⟩, ⟨33, 23⟩, ⟨19, 15⟩, ⟨42, 25⟩, ⟨6, 12⟩, ⟨29, 22⟩, ⟨15, 14⟩, ⟨38, 24⟩, ⟨2, 11⟩, ⟨25, 21⟩, ⟨11, 13⟩, ⟨34, 23⟩, ⟨20, 15⟩, ⟨7, 12⟩, ⟨30, 22⟩, ⟨16, 14⟩, ⟨39, 24⟩, ⟨3, 11⟩, ⟨26, 21⟩, ⟨12, 13⟩, ⟨35, 23⟩, ⟨21, 15⟩, ⟨22, 20⟩, ⟨8, 12⟩, ⟨31, 22⟩, ⟨17, 14⟩, ⟨40, 24⟩, ⟨4, 11⟩, ⟨27, 21⟩, ⟨13, 13⟩, ⟨36, 23⟩, ⟨23, 20⟩, ⟨9, 12⟩, ⟨32, 22⟩, ⟨18, 14⟩, ⟨41, 24⟩, ⟨5, 11⟩, ⟨28, 21⟩, ⟨14, 13⟩, ⟨37, 23⟩, ⟨1, 10⟩, ⟨24, 20⟩, ⟨10, 12⟩]⟩
theorem profile0646_checked : profile0646.check := by decide +kernel

noncomputable def selection1_0646 : Selection :=
  ⟨1, -3, 4, (1209/100), 179, -296, 1408⟩
theorem selection1_0646_checked : selection1_0646.check profile0646 := by decide +kernel

noncomputable def selection2_0646 : Selection :=
  ⟨2, -11, 8, (301/25), 54, -324, 1776⟩
theorem selection2_0646_checked : selection2_0646.check profile0646 := by decide +kernel

noncomputable def profile0647 : ProfileCell :=
  ⟨(13/57), (21/92),
    [11, 11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 5], [10, 11, 11, 11, 11],
    [⟨10, 13⟩, ⟨33, 23⟩, ⟨43, 36⟩, ⟨19, 15⟩, ⟨6, 12⟩, ⟨42, 25⟩, ⟨29, 22⟩, ⟨15, 14⟩, ⟨2, 11⟩, ⟨38, 24⟩, ⟨25, 21⟩, ⟨11, 13⟩, ⟨34, 23⟩, ⟨20, 15⟩, ⟨7, 12⟩, ⟨30, 22⟩, ⟨16, 14⟩, ⟨3, 11⟩, ⟨39, 24⟩, ⟨26, 21⟩, ⟨12, 13⟩, ⟨35, 23⟩, ⟨21, 15⟩, ⟨22, 20⟩, ⟨8, 12⟩, ⟨31, 22⟩, ⟨17, 14⟩, ⟨4, 11⟩, ⟨40, 24⟩, ⟨27, 21⟩, ⟨13, 13⟩, ⟨36, 23⟩, ⟨23, 20⟩, ⟨9, 12⟩, ⟨32, 22⟩, ⟨18, 14⟩, ⟨5, 11⟩, ⟨41, 24⟩, ⟨28, 21⟩, ⟨14, 13⟩, ⟨1, 10⟩, ⟨37, 23⟩, ⟨24, 20⟩]⟩
theorem profile0647_checked : profile0647.check := by decide +kernel

noncomputable def selection1_0647 : Selection :=
  ⟨1, -3, 4, (306/25), 155, -400, 1864⟩
theorem selection1_0647_checked : selection1_0647.check profile0647 := by decide +kernel

noncomputable def selection2_0647 : Selection :=
  ⟨2, -11, 8, (1213/100), 47, -428, 2232⟩
theorem selection2_0647_checked : selection2_0647.check profile0647 := by decide +kernel

noncomputable def profile0648 : ProfileCell :=
  ⟨(21/92), (8/35),
    [11, 11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 5], [10, 11, 11, 11, 11],
    [⟨24, 21⟩, ⟨10, 13⟩, ⟨33, 23⟩, ⟨19, 15⟩, ⟨43, 36⟩, ⟨6, 12⟩, ⟨42, 25⟩, ⟨29, 22⟩, ⟨15, 14⟩, ⟨2, 11⟩, ⟨38, 24⟩, ⟨25, 21⟩, ⟨11, 13⟩, ⟨34, 23⟩, ⟨20, 15⟩, ⟨7, 12⟩, ⟨30, 22⟩, ⟨16, 14⟩, ⟨3, 11⟩, ⟨39, 24⟩, ⟨26, 21⟩, ⟨12, 13⟩, ⟨35, 23⟩, ⟨21, 15⟩, ⟨22, 20⟩, ⟨8, 12⟩, ⟨31, 22⟩, ⟨17, 14⟩, ⟨4, 11⟩, ⟨40, 24⟩, ⟨27, 21⟩, ⟨13, 13⟩, ⟨36, 23⟩, ⟨23, 20⟩, ⟨9, 12⟩, ⟨32, 22⟩, ⟨18, 14⟩, ⟨5, 11⟩, ⟨41, 24⟩, ⟨28, 21⟩, ⟨14, 13⟩, ⟨1, 10⟩, ⟨37, 23⟩]⟩
theorem profile0648_checked : profile0648.check := by decide +kernel

noncomputable def selection1_0648 : Selection :=
  ⟨1, -3, 4, (62/5), 256, -274, 1312⟩
theorem selection1_0648_checked : selection1_0648.check profile0648 := by decide +kernel

noncomputable def selection2_0648 : Selection :=
  ⟨2, -11, 8, (49/4), 77, -302, 1680⟩
theorem selection2_0648_checked : selection2_0648.check profile0648 := by decide +kernel

noncomputable def profile0649 : ProfileCell :=
  ⟨(8/35), (11/48),
    [11, 11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 5], [10, 11, 11, 11, 11],
    [⟨37, 24⟩, ⟨10, 13⟩, ⟨24, 21⟩, ⟨19, 15⟩, ⟨33, 23⟩, ⟨6, 12⟩, ⟨43, 36⟩, ⟨42, 25⟩, ⟨15, 14⟩, ⟨29, 22⟩, ⟨2, 11⟩, ⟨38, 24⟩, ⟨11, 13⟩, ⟨25, 21⟩, ⟨20, 15⟩, ⟨34, 23⟩, ⟨7, 12⟩, ⟨16, 14⟩, ⟨30, 22⟩, ⟨3, 11⟩, ⟨39, 24⟩, ⟨12, 13⟩, ⟨26, 21⟩, ⟨21, 15⟩, ⟨35, 23⟩, ⟨8, 12⟩, ⟨22, 20⟩, ⟨17, 14⟩, ⟨31, 22⟩, ⟨4, 11⟩, ⟨40, 24⟩, ⟨13, 13⟩, ⟨27, 21⟩, ⟨36, 23⟩, ⟨9, 12⟩, ⟨23, 20⟩, ⟨18, 14⟩, ⟨32, 22⟩, ⟨5, 11⟩, ⟨41, 24⟩, ⟨14, 13⟩, ⟨28, 21⟩, ⟨1, 10⟩]⟩
theorem profile0649_checked : profile0649.check := by decide +kernel

noncomputable def selection1_0649 : Selection :=
  ⟨1, -3, 4, (317/25), 500, -242, 1172⟩
theorem selection1_0649_checked : selection1_0649.check profile0649 := by decide +kernel

noncomputable def selection2_0649 : Selection :=
  ⟨2, -11, 8, (249/20), 150, -270, 1540⟩
theorem selection2_0649_checked : selection2_0649.check profile0649 := by decide +kernel

noncomputable def profile0650 : ProfileCell :=
  ⟨(11/48), (25/109),
    [11, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 5], [11, 11, 11, 11, 11],
    [⟨1, 11⟩, ⟨28, 22⟩, ⟨10, 13⟩, ⟨37, 24⟩, ⟨24, 21⟩, ⟨19, 15⟩, ⟨6, 12⟩, ⟨33, 23⟩, ⟨15, 14⟩, ⟨42, 25⟩, ⟨43, 36⟩, ⟨2, 11⟩, ⟨29, 22⟩, ⟨11, 13⟩, ⟨38, 24⟩, ⟨25, 21⟩, ⟨20, 15⟩, ⟨7, 12⟩, ⟨34, 23⟩, ⟨16, 14⟩, ⟨3, 11⟩, ⟨30, 22⟩, ⟨12, 13⟩, ⟨39, 24⟩, ⟨26, 21⟩, ⟨21, 15⟩, ⟨8, 12⟩, ⟨35, 23⟩, ⟨22, 20⟩, ⟨17, 14⟩, ⟨4, 11⟩, ⟨31, 22⟩, ⟨13, 13⟩, ⟨40, 24⟩, ⟨27, 21⟩, ⟨9, 12⟩, ⟨36, 23⟩, ⟨23, 20⟩, ⟨18, 14⟩, ⟨5, 11⟩, ⟨32, 22⟩, ⟨14, 13⟩, ⟨41, 24⟩]⟩
theorem profile0650_checked : profile0650.check := by decide +kernel

noncomputable def selection1_0650 : Selection :=
  ⟨1, -2, 4, (739/50), 187, -264, 1268⟩
theorem selection1_0650_checked : selection1_0650.check profile0650 := by decide +kernel

noncomputable def selection2_0650 : Selection :=
  ⟨2, -10, 8, (363/25), 56, -292, 1636⟩
theorem selection2_0650_checked : selection2_0650.check profile0650 := by decide +kernel

noncomputable def profile0651 : ProfileCell :=
  ⟨(25/109), (14/61),
    [11, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 5], [11, 11, 11, 11, 11],
    [⟨41, 25⟩, ⟨1, 11⟩, ⟨28, 22⟩, ⟨10, 13⟩, ⟨37, 24⟩, ⟨24, 21⟩, ⟨19, 15⟩, ⟨6, 12⟩, ⟨33, 23⟩, ⟨15, 14⟩, ⟨42, 25⟩, ⟨2, 11⟩, ⟨43, 36⟩, ⟨29, 22⟩, ⟨11, 13⟩, ⟨38, 24⟩, ⟨25, 21⟩, ⟨20, 15⟩, ⟨7, 12⟩, ⟨34, 23⟩, ⟨16, 14⟩, ⟨3, 11⟩, ⟨30, 22⟩, ⟨12, 13⟩, ⟨39, 24⟩, ⟨26, 21⟩, ⟨21, 15⟩, ⟨8, 12⟩, ⟨35, 23⟩, ⟨22, 20⟩, ⟨17, 14⟩, ⟨4, 11⟩, ⟨31, 22⟩, ⟨13, 13⟩, ⟨40, 24⟩, ⟨27, 21⟩, ⟨9, 12⟩, ⟨36, 23⟩, ⟨23, 20⟩, ⟨18, 14⟩, ⟨5, 11⟩, ⟨32, 22⟩, ⟨14, 13⟩]⟩
theorem profile0651_checked : profile0651.check := by decide +kernel

noncomputable def selection1_0651 : Selection :=
  ⟨1, -2, 4, (741/50), 148, -114, 614⟩
theorem selection1_0651_checked : selection1_0651.check profile0651 := by decide +kernel

noncomputable def selection2_0651 : Selection :=
  ⟨2, -10, 8, (364/25), 45, -142, 982⟩
theorem selection2_0651_checked : selection2_0651.check profile0651 := by decide +kernel

noncomputable def profile0652 : ProfileCell :=
  ⟨(14/61), (23/100),
    [11, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 5], [11, 11, 11, 11, 11],
    [⟨14, 14⟩, ⟨1, 11⟩, ⟨41, 25⟩, ⟨28, 22⟩, ⟨10, 13⟩, ⟨37, 24⟩, ⟨24, 21⟩, ⟨19, 15⟩, ⟨6, 12⟩, ⟨33, 23⟩, ⟨15, 14⟩, ⟨2, 11⟩, ⟨42, 25⟩, ⟨29, 22⟩, ⟨43, 36⟩, ⟨11, 13⟩, ⟨38, 24⟩, ⟨25, 21⟩, ⟨20, 15⟩, ⟨7, 12⟩, ⟨34, 23⟩, ⟨16, 14⟩, ⟨3, 11⟩, ⟨30, 22⟩, ⟨12, 13⟩, ⟨39, 24⟩, ⟨26, 21⟩, ⟨21, 15⟩, ⟨8, 12⟩, ⟨35, 23⟩, ⟨22, 20⟩, ⟨17, 14⟩, ⟨4, 11⟩, ⟨31, 22⟩, ⟨13, 13⟩, ⟨40, 24⟩, ⟨27, 21⟩, ⟨9, 12⟩, ⟨36, 23⟩, ⟨23, 20⟩, ⟨18, 14⟩, ⟨5, 11⟩, ⟨32, 22⟩]⟩
theorem profile0652_checked : profile0652.check := by decide +kernel

noncomputable def selection1_0652 : Selection :=
  ⟨1, -2, 4, (376/25), 490, -226, 1102⟩
theorem selection1_0652_checked : selection1_0652.check profile0652 := by decide +kernel

noncomputable def selection2_0652 : Selection :=
  ⟨2, -10, 8, (368/25), 146, -254, 1470⟩
theorem selection2_0652_checked : selection2_0652.check profile0652 := by decide +kernel

noncomputable def profile0653 : ProfileCell :=
  ⟨(23/100), (3/13),
    [11, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 5], [11, 11, 11, 11, 11],
    [⟨32, 23⟩, ⟨14, 14⟩, ⟨1, 11⟩, ⟨41, 25⟩, ⟨28, 22⟩, ⟨10, 13⟩, ⟨37, 24⟩, ⟨24, 21⟩, ⟨19, 15⟩, ⟨6, 12⟩, ⟨33, 23⟩, ⟨15, 14⟩, ⟨2, 11⟩, ⟨42, 25⟩, ⟨29, 22⟩, ⟨11, 13⟩, ⟨43, 36⟩, ⟨38, 24⟩, ⟨25, 21⟩, ⟨20, 15⟩, ⟨7, 12⟩, ⟨34, 23⟩, ⟨16, 14⟩, ⟨3, 11⟩, ⟨30, 22⟩, ⟨12, 13⟩, ⟨39, 24⟩, ⟨26, 21⟩, ⟨21, 15⟩, ⟨8, 12⟩, ⟨35, 23⟩, ⟨22, 20⟩, ⟨17, 14⟩, ⟨4, 11⟩, ⟨31, 22⟩, ⟨13, 13⟩, ⟨40, 24⟩, ⟨27, 21⟩, ⟨9, 12⟩, ⟨36, 23⟩, ⟨23, 20⟩, ⟨18, 14⟩, ⟨5, 11⟩]⟩
theorem profile0653_checked : profile0653.check := by decide +kernel

noncomputable def selection1_0653 : Selection :=
  ⟨1, -2, 4, (1519/100), 772, -88, 502⟩
theorem selection1_0653_checked : selection1_0653.check profile0653 := by decide +kernel

noncomputable def selection2_0653 : Selection :=
  ⟨2, -10, 8, (1487/100), 230, -116, 870⟩
theorem selection2_0653_checked : selection2_0653.check profile0653 := by decide +kernel

noncomputable def profile0654 : ProfileCell :=
  ⟨(3/13), (25/108),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨5, 12⟩, ⟨18, 15⟩, ⟨23, 21⟩, ⟨36, 24⟩, ⟨1, 11⟩, ⟨14, 14⟩, ⟨32, 23⟩, ⟨10, 13⟩, ⟨28, 22⟩, ⟨41, 25⟩, ⟨6, 12⟩, ⟨19, 15⟩, ⟨24, 21⟩, ⟨37, 24⟩, ⟨2, 11⟩, ⟨15, 14⟩, ⟨33, 23⟩, ⟨11, 13⟩, ⟨29, 22⟩, ⟨42, 25⟩, ⟨7, 12⟩, ⟨20, 15⟩, ⟨25, 21⟩, ⟨38, 24⟩, ⟨43, 36⟩, ⟨3, 11⟩, ⟨16, 14⟩, ⟨34, 23⟩, ⟨12, 13⟩, ⟨30, 22⟩, ⟨8, 12⟩, ⟨21, 15⟩, ⟨26, 21⟩, ⟨39, 24⟩, ⟨4, 11⟩, ⟨17, 14⟩, ⟨22, 20⟩, ⟨35, 23⟩, ⟨13, 13⟩, ⟨31, 22⟩, ⟨9, 12⟩, ⟨27, 21⟩, ⟨40, 24⟩]⟩
theorem profile0654_checked : profile0654.check := by decide +kernel

noncomputable def selection1_0654 : Selection :=
  ⟨1, -2, 4, (771/50), 725, -154, 788⟩
theorem selection1_0654_checked : selection1_0654.check profile0654 := by decide +kernel

noncomputable def selection2_0654 : Selection :=
  ⟨2, -10, 8, (301/20), 216, -182, 1156⟩
theorem selection2_0654_checked : selection2_0654.check profile0654 := by decide +kernel

noncomputable def profile0655 : ProfileCell :=
  ⟨(25/108), (22/95),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨40, 25⟩, ⟨5, 12⟩, ⟨18, 15⟩, ⟨23, 21⟩, ⟨36, 24⟩, ⟨1, 11⟩, ⟨14, 14⟩, ⟨32, 23⟩, ⟨10, 13⟩, ⟨28, 22⟩, ⟨41, 25⟩, ⟨6, 12⟩, ⟨19, 15⟩, ⟨24, 21⟩, ⟨37, 24⟩, ⟨2, 11⟩, ⟨15, 14⟩, ⟨33, 23⟩, ⟨11, 13⟩, ⟨29, 22⟩, ⟨42, 25⟩, ⟨7, 12⟩, ⟨20, 15⟩, ⟨25, 21⟩, ⟨38, 24⟩, ⟨3, 11⟩, ⟨43, 36⟩, ⟨16, 14⟩, ⟨34, 23⟩, ⟨12, 13⟩, ⟨30, 22⟩, ⟨8, 12⟩, ⟨21, 15⟩, ⟨26, 21⟩, ⟨39, 24⟩, ⟨4, 11⟩, ⟨17, 14⟩, ⟨22, 20⟩, ⟨35, 23⟩, ⟨13, 13⟩, ⟨31, 22⟩, ⟨9, 12⟩, ⟨27, 21⟩]⟩
theorem profile0655_checked : profile0655.check := by decide +kernel

noncomputable def selection1_0655 : Selection :=
  ⟨1, -2, 4, (1543/100), 100, -54, 356⟩
theorem selection1_0655_checked : selection1_0655.check profile0655 := by decide +kernel

noncomputable def selection2_0655 : Selection :=
  ⟨2, -10, 8, (1507/100), 30, -82, 724⟩
theorem selection2_0655_checked : selection2_0655.check profile0655 := by decide +kernel

noncomputable def profile0656 : ProfileCell :=
  ⟨(22/95), (13/56),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨27, 22⟩, ⟨40, 25⟩, ⟨5, 12⟩, ⟨18, 15⟩, ⟨23, 21⟩, ⟨36, 24⟩, ⟨1, 11⟩, ⟨14, 14⟩, ⟨32, 23⟩, ⟨10, 13⟩, ⟨28, 22⟩, ⟨41, 25⟩, ⟨6, 12⟩, ⟨19, 15⟩, ⟨24, 21⟩, ⟨37, 24⟩, ⟨2, 11⟩, ⟨15, 14⟩, ⟨33, 23⟩, ⟨11, 13⟩, ⟨29, 22⟩, ⟨42, 25⟩, ⟨7, 12⟩, ⟨20, 15⟩, ⟨25, 21⟩, ⟨38, 24⟩, ⟨3, 11⟩, ⟨16, 14⟩, ⟨43, 36⟩, ⟨34, 23⟩, ⟨12, 13⟩, ⟨30, 22⟩, ⟨8, 12⟩, ⟨21, 15⟩, ⟨26, 21⟩, ⟨39, 24⟩, ⟨4, 11⟩, ⟨17, 14⟩, ⟨22, 20⟩, ⟨35, 23⟩, ⟨13, 13⟩, ⟨31, 22⟩, ⟨9, 12⟩]⟩
theorem profile0656_checked : profile0656.check := by decide +kernel

noncomputable def selection1_0656 : Selection :=
  ⟨1, -2, 4, (1543/100), 574, 78, -214⟩
theorem selection1_0656_checked : selection1_0656.check profile0656 := by decide +kernel

noncomputable def selection2_0656 : Selection :=
  ⟨2, -10, 8, (377/25), 171, 50, 154⟩
theorem selection2_0656_checked : selection2_0656.check profile0656 := by decide +kernel

noncomputable def profile0657 : ProfileCell :=
  ⟨(13/56), (23/99),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨9, 13⟩, ⟨27, 22⟩, ⟨5, 12⟩, ⟨40, 25⟩, ⟨18, 15⟩, ⟨23, 21⟩, ⟨1, 11⟩, ⟨36, 24⟩, ⟨14, 14⟩, ⟨32, 23⟩, ⟨10, 13⟩, ⟨28, 22⟩, ⟨6, 12⟩, ⟨41, 25⟩, ⟨19, 15⟩, ⟨24, 21⟩, ⟨2, 11⟩, ⟨37, 24⟩, ⟨15, 14⟩, ⟨33, 23⟩, ⟨11, 13⟩, ⟨29, 22⟩, ⟨7, 12⟩, ⟨42, 25⟩, ⟨20, 15⟩, ⟨25, 21⟩, ⟨3, 11⟩, ⟨38, 24⟩, ⟨16, 14⟩, ⟨34, 23⟩, ⟨43, 36⟩, ⟨12, 13⟩, ⟨30, 22⟩, ⟨8, 12⟩, ⟨21, 15⟩, ⟨26, 21⟩, ⟨4, 11⟩, ⟨39, 24⟩, ⟨17, 14⟩, ⟨22, 20⟩, ⟨35, 23⟩, ⟨13, 13⟩, ⟨31, 22⟩]⟩
theorem profile0657_checked : profile0657.check := by decide +kernel

noncomputable def selection1_0657 : Selection :=
  ⟨1, -2, 4, (1539/100), 183, 0, 122⟩
theorem selection1_0657_checked : selection1_0657.check profile0657 := by decide +kernel

noncomputable def selection2_0657 : Selection :=
  ⟨2, -10, 8, (151/10), 55, -28, 490⟩
theorem selection2_0657_checked : selection2_0657.check profile0657 := by decide +kernel

noncomputable def profile0658 : ProfileCell :=
  ⟨(23/99), (10/43),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨31, 23⟩, ⟨9, 13⟩, ⟨27, 22⟩, ⟨5, 12⟩, ⟨40, 25⟩, ⟨18, 15⟩, ⟨23, 21⟩, ⟨1, 11⟩, ⟨36, 24⟩, ⟨14, 14⟩, ⟨32, 23⟩, ⟨10, 13⟩, ⟨28, 22⟩, ⟨6, 12⟩, ⟨41, 25⟩, ⟨19, 15⟩, ⟨24, 21⟩, ⟨2, 11⟩, ⟨37, 24⟩, ⟨15, 14⟩, ⟨33, 23⟩, ⟨11, 13⟩, ⟨29, 22⟩, ⟨7, 12⟩, ⟨42, 25⟩, ⟨20, 15⟩, ⟨25, 21⟩, ⟨3, 11⟩, ⟨38, 24⟩, ⟨16, 14⟩, ⟨34, 23⟩, ⟨12, 13⟩, ⟨43, 36⟩, ⟨30, 22⟩, ⟨8, 12⟩, ⟨21, 15⟩, ⟨26, 21⟩, ⟨4, 11⟩, ⟨39, 24⟩, ⟨17, 14⟩, ⟨22, 20⟩, ⟨35, 23⟩, ⟨13, 13⟩]⟩
theorem profile0658_checked : profile0658.check := by decide +kernel

noncomputable def selection1_0658 : Selection :=
  ⟨1, -2, 4, (1539/100), 239, 138, -472⟩
theorem selection1_0658_checked : selection1_0658.check profile0658 := by decide +kernel

noncomputable def selection2_0658 : Selection :=
  ⟨2, -10, 8, (151/10), 72, 110, -104⟩
theorem selection2_0658_checked : selection2_0658.check profile0658 := by decide +kernel

noncomputable def profile0659 : ProfileCell :=
  ⟨(10/43), (24/103),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨9, 13⟩, ⟨31, 23⟩, ⟨5, 12⟩, ⟨27, 22⟩, ⟨18, 15⟩, ⟨40, 25⟩, ⟨1, 11⟩, ⟨23, 21⟩, ⟨14, 14⟩, ⟨36, 24⟩, ⟨10, 13⟩, ⟨32, 23⟩, ⟨6, 12⟩, ⟨28, 22⟩, ⟨19, 15⟩, ⟨41, 25⟩, ⟨2, 11⟩, ⟨24, 21⟩, ⟨15, 14⟩, ⟨37, 24⟩, ⟨11, 13⟩, ⟨33, 23⟩, ⟨7, 12⟩, ⟨29, 22⟩, ⟨20, 15⟩, ⟨42, 25⟩, ⟨3, 11⟩, ⟨25, 21⟩, ⟨16, 14⟩, ⟨38, 24⟩, ⟨12, 13⟩, ⟨34, 23⟩, ⟨43, 36⟩, ⟨8, 12⟩, ⟨30, 22⟩, ⟨21, 15⟩, ⟨4, 11⟩, ⟨26, 21⟩, ⟨17, 14⟩, ⟨39, 24⟩, ⟨22, 20⟩, ⟨13, 13⟩, ⟨35, 23⟩]⟩
theorem profile0659_checked : profile0659.check := by decide +kernel

noncomputable def selection1_0659 : Selection :=
  ⟨1, -2, 4, (77/5), 458, -42, 302⟩
theorem selection1_0659_checked : selection1_0659.check profile0659 := by decide +kernel

noncomputable def selection2_0659 : Selection :=
  ⟨2, -10, 8, (1517/100), 138, -70, 670⟩
theorem selection2_0659_checked : selection2_0659.check profile0659 := by decide +kernel

noncomputable def profile0660 : ProfileCell :=
  ⟨(24/103), (7/30),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨35, 24⟩, ⟨9, 13⟩, ⟨31, 23⟩, ⟨5, 12⟩, ⟨27, 22⟩, ⟨18, 15⟩, ⟨40, 25⟩, ⟨1, 11⟩, ⟨23, 21⟩, ⟨14, 14⟩, ⟨36, 24⟩, ⟨10, 13⟩, ⟨32, 23⟩, ⟨6, 12⟩, ⟨28, 22⟩, ⟨19, 15⟩, ⟨41, 25⟩, ⟨2, 11⟩, ⟨24, 21⟩, ⟨15, 14⟩, ⟨37, 24⟩, ⟨11, 13⟩, ⟨33, 23⟩, ⟨7, 12⟩, ⟨29, 22⟩, ⟨20, 15⟩, ⟨42, 25⟩, ⟨3, 11⟩, ⟨25, 21⟩, ⟨16, 14⟩, ⟨38, 24⟩, ⟨12, 13⟩, ⟨34, 23⟩, ⟨8, 12⟩, ⟨43, 36⟩, ⟨30, 22⟩, ⟨21, 15⟩, ⟨4, 11⟩, ⟨26, 21⟩, ⟨17, 14⟩, ⟨39, 24⟩, ⟨22, 20⟩, ⟨13, 13⟩]⟩
theorem profile0660_checked : profile0660.check := by decide +kernel

noncomputable def selection1_0660 : Selection :=
  ⟨1, -1, 4, (1541/100), 328, 167, -616⟩
theorem selection1_0660_checked : selection1_0660.check profile0660 := by decide +kernel

noncomputable def selection2_0660 : Selection :=
  ⟨2, -9, 8, (1517/100), 99, 135, -248⟩
theorem selection2_0660_checked : selection2_0660.check profile0660 := by decide +kernel

noncomputable def profile0661 : ProfileCell :=
  ⟨(7/30), (25/107),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨13, 14⟩, ⟨22, 21⟩, ⟨35, 24⟩, ⟨9, 13⟩, ⟨31, 23⟩, ⟨5, 12⟩, ⟨18, 15⟩, ⟨27, 22⟩, ⟨1, 11⟩, ⟨40, 25⟩, ⟨14, 14⟩, ⟨23, 21⟩, ⟨36, 24⟩, ⟨10, 13⟩, ⟨32, 23⟩, ⟨6, 12⟩, ⟨19, 15⟩, ⟨28, 22⟩, ⟨2, 11⟩, ⟨41, 25⟩, ⟨15, 14⟩, ⟨24, 21⟩, ⟨37, 24⟩, ⟨11, 13⟩, ⟨33, 23⟩, ⟨7, 12⟩, ⟨20, 15⟩, ⟨29, 22⟩, ⟨3, 11⟩, ⟨42, 25⟩, ⟨16, 14⟩, ⟨25, 21⟩, ⟨38, 24⟩, ⟨12, 13⟩, ⟨34, 23⟩, ⟨8, 12⟩, ⟨21, 15⟩, ⟨30, 22⟩, ⟨43, 36⟩, ⟨4, 11⟩, ⟨17, 14⟩, ⟨26, 21⟩, ⟨39, 24⟩]⟩
theorem profile0661_checked : profile0661.check := by decide +kernel

noncomputable def selection1_0661 : Selection :=
  ⟨1, -2, 4, (1333/100), 273, 104, -346⟩
theorem selection1_0661_checked : selection1_0661.check profile0661 := by decide +kernel

noncomputable def selection2_0661 : Selection :=
  ⟨2, -10, 8, (329/25), 83, 72, 22⟩
theorem selection2_0661_checked : selection2_0661.check profile0661 := by decide +kernel

noncomputable def profile0662 : ProfileCell :=
  ⟨(25/107), (11/47),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨39, 25⟩, ⟨13, 14⟩, ⟨22, 21⟩, ⟨35, 24⟩, ⟨9, 13⟩, ⟨31, 23⟩, ⟨5, 12⟩, ⟨18, 15⟩, ⟨27, 22⟩, ⟨1, 11⟩, ⟨40, 25⟩, ⟨14, 14⟩, ⟨23, 21⟩, ⟨36, 24⟩, ⟨10, 13⟩, ⟨32, 23⟩, ⟨6, 12⟩, ⟨19, 15⟩, ⟨28, 22⟩, ⟨2, 11⟩, ⟨41, 25⟩, ⟨15, 14⟩, ⟨24, 21⟩, ⟨37, 24⟩, ⟨11, 13⟩, ⟨33, 23⟩, ⟨7, 12⟩, ⟨20, 15⟩, ⟨29, 22⟩, ⟨3, 11⟩, ⟨42, 25⟩, ⟨16, 14⟩, ⟨25, 21⟩, ⟨38, 24⟩, ⟨12, 13⟩, ⟨34, 23⟩, ⟨8, 12⟩, ⟨21, 15⟩, ⟨30, 22⟩, ⟨4, 11⟩, ⟨43, 36⟩, ⟨17, 14⟩, ⟨26, 21⟩]⟩
theorem profile0662_checked : profile0662.check := by decide +kernel

noncomputable def selection1_0662 : Selection :=
  ⟨1, -2, 4, (1329/100), 348, 204, -774⟩
theorem selection1_0662_checked : selection1_0662.check profile0662 := by decide +kernel

noncomputable def selection2_0662 : Selection :=
  ⟨2, -10, 8, (329/25), 105, 172, -406⟩
theorem selection2_0662_checked : selection2_0662.check profile0662 := by decide +kernel

noncomputable def profile0663 : ProfileCell :=
  ⟨(11/47), (37/158),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨26, 22⟩, ⟨13, 14⟩, ⟨39, 25⟩, ⟨22, 21⟩, ⟨9, 13⟩, ⟨35, 24⟩, ⟨5, 12⟩, ⟨31, 23⟩, ⟨18, 15⟩, ⟨1, 11⟩, ⟨27, 22⟩, ⟨14, 14⟩, ⟨40, 25⟩, ⟨23, 21⟩, ⟨10, 13⟩, ⟨36, 24⟩, ⟨6, 12⟩, ⟨32, 23⟩, ⟨19, 15⟩, ⟨2, 11⟩, ⟨28, 22⟩, ⟨15, 14⟩, ⟨41, 25⟩, ⟨24, 21⟩, ⟨11, 13⟩, ⟨37, 24⟩, ⟨7, 12⟩, ⟨33, 23⟩, ⟨20, 15⟩, ⟨3, 11⟩, ⟨29, 22⟩, ⟨16, 14⟩, ⟨42, 25⟩, ⟨25, 21⟩, ⟨12, 13⟩, ⟨38, 24⟩, ⟨8, 12⟩, ⟨34, 23⟩, ⟨21, 15⟩, ⟨4, 11⟩, ⟨30, 22⟩, ⟨17, 14⟩, ⟨43, 36⟩]⟩
theorem profile0663_checked : profile0663.check := by decide +kernel

noncomputable def selection1_0663 : Selection :=
  ⟨1, -2, 4, (329/25), 117, 248, -962⟩
theorem selection1_0663_checked : selection1_0663.check profile0663 := by decide +kernel

noncomputable def selection2_0663 : Selection :=
  ⟨2, -10, 8, (328/25), 36, 216, -594⟩
theorem selection2_0663_checked : selection2_0663.check profile0663 := by decide +kernel

noncomputable def profile0664 : ProfileCell :=
  ⟨(37/158), (15/64),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨43, 37⟩, ⟨26, 22⟩, ⟨13, 14⟩, ⟨39, 25⟩, ⟨22, 21⟩, ⟨9, 13⟩, ⟨35, 24⟩, ⟨5, 12⟩, ⟨31, 23⟩, ⟨18, 15⟩, ⟨1, 11⟩, ⟨27, 22⟩, ⟨14, 14⟩, ⟨40, 25⟩, ⟨23, 21⟩, ⟨10, 13⟩, ⟨36, 24⟩, ⟨6, 12⟩, ⟨32, 23⟩, ⟨19, 15⟩, ⟨2, 11⟩, ⟨28, 22⟩, ⟨15, 14⟩, ⟨41, 25⟩, ⟨24, 21⟩, ⟨11, 13⟩, ⟨37, 24⟩, ⟨7, 12⟩, ⟨33, 23⟩, ⟨20, 15⟩, ⟨3, 11⟩, ⟨29, 22⟩, ⟨16, 14⟩, ⟨42, 25⟩, ⟨25, 21⟩, ⟨12, 13⟩, ⟨38, 24⟩, ⟨8, 12⟩, ⟨34, 23⟩, ⟨21, 15⟩, ⟨4, 11⟩, ⟨30, 22⟩, ⟨17, 14⟩]⟩
theorem profile0664_checked : profile0664.check := by decide +kernel

noncomputable def selection1_0664 : Selection :=
  ⟨1, -2, 4, (1319/100), 172, -233, 1092⟩
theorem selection1_0664_checked : selection1_0664.check profile0664 := by decide +kernel

noncomputable def selection2_0664 : Selection :=
  ⟨2, -10, 8, (1317/100), 53, -265, 1460⟩
theorem selection2_0664_checked : selection2_0664.check profile0664 := by decide +kernel

noncomputable def profile0665 : ProfileCell :=
  ⟨(15/64), (23/98),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨17, 15⟩, ⟨26, 22⟩, ⟨43, 37⟩, ⟨13, 14⟩, ⟨39, 25⟩, ⟨22, 21⟩, ⟨9, 13⟩, ⟨35, 24⟩, ⟨5, 12⟩, ⟨31, 23⟩, ⟨18, 15⟩, ⟨1, 11⟩, ⟨27, 22⟩, ⟨14, 14⟩, ⟨40, 25⟩, ⟨23, 21⟩, ⟨10, 13⟩, ⟨36, 24⟩, ⟨6, 12⟩, ⟨32, 23⟩, ⟨19, 15⟩, ⟨2, 11⟩, ⟨28, 22⟩, ⟨15, 14⟩, ⟨41, 25⟩, ⟨24, 21⟩, ⟨11, 13⟩, ⟨37, 24⟩, ⟨7, 12⟩, ⟨33, 23⟩, ⟨20, 15⟩, ⟨3, 11⟩, ⟨29, 22⟩, ⟨16, 14⟩, ⟨42, 25⟩, ⟨25, 21⟩, ⟨12, 13⟩, ⟨38, 24⟩, ⟨8, 12⟩, ⟨34, 23⟩, ⟨21, 15⟩, ⟨4, 11⟩, ⟨30, 22⟩]⟩
theorem profile0665_checked : profile0665.check := by decide +kernel

noncomputable def selection1_0665 : Selection :=
  ⟨1, -2, 4, (1337/100), 280, -293, 1348⟩
theorem selection1_0665_checked : selection1_0665.check profile0665 := by decide +kernel

noncomputable def selection2_0665 : Selection :=
  ⟨2, -10, 8, (1329/100), 85, -325, 1716⟩
theorem selection2_0665_checked : selection2_0665.check profile0665 := by decide +kernel

noncomputable def profile0666 : ProfileCell :=
  ⟨(23/98), (4/17),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5], [11, 11, 11, 11, 12],
    [⟨30, 23⟩, ⟨17, 15⟩, ⟨26, 22⟩, ⟨13, 14⟩, ⟨43, 37⟩, ⟨39, 25⟩, ⟨22, 21⟩, ⟨9, 13⟩, ⟨35, 24⟩, ⟨5, 12⟩, ⟨31, 23⟩, ⟨18, 15⟩, ⟨1, 11⟩, ⟨27, 22⟩, ⟨14, 14⟩, ⟨40, 25⟩, ⟨23, 21⟩, ⟨10, 13⟩, ⟨36, 24⟩, ⟨6, 12⟩, ⟨32, 23⟩, ⟨19, 15⟩, ⟨2, 11⟩, ⟨28, 22⟩, ⟨15, 14⟩, ⟨41, 25⟩, ⟨24, 21⟩, ⟨11, 13⟩, ⟨37, 24⟩, ⟨7, 12⟩, ⟨33, 23⟩, ⟨20, 15⟩, ⟨3, 11⟩, ⟨29, 22⟩, ⟨16, 14⟩, ⟨42, 25⟩, ⟨25, 21⟩, ⟨12, 13⟩, ⟨38, 24⟩, ⟨8, 12⟩, ⟨34, 23⟩, ⟨21, 15⟩, ⟨4, 11⟩]⟩
theorem profile0666_checked : profile0666.check := by decide +kernel

noncomputable def selection1_0666 : Selection :=
  ⟨1, -2, 4, (68/5), 536, -201, 956⟩
theorem selection1_0666_checked : selection1_0666.check profile0666 := by decide +kernel

noncomputable def selection2_0666 : Selection :=
  ⟨2, -10, 8, (1347/100), 162, -233, 1324⟩
theorem selection2_0666_checked : selection2_0666.check profile0666 := by decide +kernel

noncomputable def profile0667 : ProfileCell :=
  ⟨(4/17), (25/106),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨4, 12⟩, ⟨21, 16⟩, ⟨34, 24⟩, ⟨17, 15⟩, ⟨30, 23⟩, ⟨13, 14⟩, ⟨26, 22⟩, ⟨9, 13⟩, ⟨22, 21⟩, ⟨39, 25⟩, ⟨43, 37⟩, ⟨5, 12⟩, ⟨35, 24⟩, ⟨1, 11⟩, ⟨18, 15⟩, ⟨31, 23⟩, ⟨14, 14⟩, ⟨27, 22⟩, ⟨10, 13⟩, ⟨23, 21⟩, ⟨40, 25⟩, ⟨6, 12⟩, ⟨36, 24⟩, ⟨2, 11⟩, ⟨19, 15⟩, ⟨32, 23⟩, ⟨15, 14⟩, ⟨28, 22⟩, ⟨11, 13⟩, ⟨24, 21⟩, ⟨41, 25⟩, ⟨7, 12⟩, ⟨37, 24⟩, ⟨3, 11⟩, ⟨20, 15⟩, ⟨33, 23⟩, ⟨16, 14⟩, ⟨29, 22⟩, ⟨12, 13⟩, ⟨25, 21⟩, ⟨42, 25⟩, ⟨8, 12⟩, ⟨38, 24⟩]⟩
theorem profile0667_checked : profile0667.check := by decide +kernel

noncomputable def selection1_0667 : Selection :=
  ⟨1, -1, 4, (159/10), 578, -289, 1330⟩
theorem selection1_0667_checked : selection1_0667.check profile0667 := by decide +kernel

noncomputable def selection2_0667 : Selection :=
  ⟨2, -9, 8, (392/25), 175, -321, 1698⟩
theorem selection2_0667_checked : selection2_0667.check profile0667 := by decide +kernel

noncomputable def profile0668 : ProfileCell :=
  ⟨(25/106), (13/55),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨38, 25⟩, ⟨4, 12⟩, ⟨21, 16⟩, ⟨34, 24⟩, ⟨17, 15⟩, ⟨30, 23⟩, ⟨13, 14⟩, ⟨26, 22⟩, ⟨9, 13⟩, ⟨22, 21⟩, ⟨39, 25⟩, ⟨5, 12⟩, ⟨43, 37⟩, ⟨35, 24⟩, ⟨1, 11⟩, ⟨18, 15⟩, ⟨31, 23⟩, ⟨14, 14⟩, ⟨27, 22⟩, ⟨10, 13⟩, ⟨23, 21⟩, ⟨40, 25⟩, ⟨6, 12⟩, ⟨36, 24⟩, ⟨2, 11⟩, ⟨19, 15⟩, ⟨32, 23⟩, ⟨15, 14⟩, ⟨28, 22⟩, ⟨11, 13⟩, ⟨24, 21⟩, ⟨41, 25⟩, ⟨7, 12⟩, ⟨37, 24⟩, ⟨3, 11⟩, ⟨20, 15⟩, ⟨33, 23⟩, ⟨16, 14⟩, ⟨29, 22⟩, ⟨12, 13⟩, ⟨25, 21⟩, ⟨42, 25⟩, ⟨8, 12⟩]⟩
theorem profile0668_checked : profile0668.check := by decide +kernel

noncomputable def selection1_0668 : Selection :=
  ⟨1, -1, 4, (1609/100), 542, -189, 906⟩
theorem selection1_0668_checked : selection1_0668.check profile0668 := by decide +kernel

noncomputable def selection2_0668 : Selection :=
  ⟨2, -9, 8, (791/50), 163, -221, 1274⟩
theorem selection2_0668_checked : selection2_0668.check profile0668 := by decide +kernel

noncomputable def profile0669 : ProfileCell :=
  ⟨(13/55), (22/93),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨8, 13⟩, ⟨42, 26⟩, ⟨4, 12⟩, ⟨38, 25⟩, ⟨21, 16⟩, ⟨34, 24⟩, ⟨17, 15⟩, ⟨30, 23⟩, ⟨13, 14⟩, ⟨26, 22⟩, ⟨9, 13⟩, ⟨22, 21⟩, ⟨5, 12⟩, ⟨39, 25⟩, ⟨1, 11⟩, ⟨35, 24⟩, ⟨43, 37⟩, ⟨18, 15⟩, ⟨31, 23⟩, ⟨14, 14⟩, ⟨27, 22⟩, ⟨10, 13⟩, ⟨23, 21⟩, ⟨6, 12⟩, ⟨40, 25⟩, ⟨2, 11⟩, ⟨36, 24⟩, ⟨19, 15⟩, ⟨32, 23⟩, ⟨15, 14⟩, ⟨28, 22⟩, ⟨11, 13⟩, ⟨24, 21⟩, ⟨7, 12⟩, ⟨41, 25⟩, ⟨3, 11⟩, ⟨37, 24⟩, ⟨20, 15⟩, ⟨33, 23⟩, ⟨16, 14⟩, ⟨29, 22⟩, ⟨12, 13⟩, ⟨25, 21⟩]⟩
theorem profile0669_checked : profile0669.check := by decide +kernel

noncomputable def selection1_0669 : Selection :=
  ⟨1, -1, 4, (404/25), 207, -189, 906⟩
theorem selection1_0669_checked : selection1_0669.check profile0669 := by decide +kernel

noncomputable def selection2_0669 : Selection :=
  ⟨2, -9, 8, (397/25), 63, -221, 1274⟩
theorem selection2_0669_checked : selection2_0669.check profile0669 := by decide +kernel

noncomputable def profile0670 : ProfileCell :=
  ⟨(22/93), (9/38),
    [12, 11, 11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨25, 22⟩, ⟨8, 13⟩, ⟨42, 26⟩, ⟨4, 12⟩, ⟨38, 25⟩, ⟨21, 16⟩, ⟨34, 24⟩, ⟨17, 15⟩, ⟨30, 23⟩, ⟨13, 14⟩, ⟨26, 22⟩, ⟨9, 13⟩, ⟨22, 21⟩, ⟨5, 12⟩, ⟨39, 25⟩, ⟨1, 11⟩, ⟨35, 24⟩, ⟨18, 15⟩, ⟨43, 37⟩, ⟨31, 23⟩, ⟨14, 14⟩, ⟨27, 22⟩, ⟨10, 13⟩, ⟨23, 21⟩, ⟨6, 12⟩, ⟨40, 25⟩, ⟨2, 11⟩, ⟨36, 24⟩, ⟨19, 15⟩, ⟨32, 23⟩, ⟨15, 14⟩, ⟨28, 22⟩, ⟨11, 13⟩, ⟨24, 21⟩, ⟨7, 12⟩, ⟨41, 25⟩, ⟨3, 11⟩, ⟨37, 24⟩, ⟨20, 15⟩, ⟨33, 23⟩, ⟨16, 14⟩, ⟨29, 22⟩, ⟨12, 13⟩]⟩
theorem profile0670_checked : profile0670.check := by decide +kernel

noncomputable def selection1_0670 : Selection :=
  ⟨1, -1, 4, (81/5), 300, -57, 348⟩
theorem selection1_0670_checked : selection1_0670.check profile0670 := by decide +kernel

noncomputable def selection2_0670 : Selection :=
  ⟨2, -9, 8, (398/25), 91, -89, 716⟩
theorem selection2_0670_checked : selection2_0670.check profile0670 := by decide +kernel

noncomputable def profile0671 : ProfileCell :=
  ⟨(9/38), (23/97),
    [12, 11, 11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨8, 13⟩, ⟨25, 22⟩, ⟨42, 26⟩, ⟨4, 12⟩, ⟨21, 16⟩, ⟨38, 25⟩, ⟨17, 15⟩, ⟨34, 24⟩, ⟨13, 14⟩, ⟨30, 23⟩, ⟨9, 13⟩, ⟨26, 22⟩, ⟨5, 12⟩, ⟨22, 21⟩, ⟨39, 25⟩, ⟨1, 11⟩, ⟨18, 15⟩, ⟨35, 24⟩, ⟨43, 37⟩, ⟨14, 14⟩, ⟨31, 23⟩, ⟨10, 13⟩, ⟨27, 22⟩, ⟨6, 12⟩, ⟨23, 21⟩, ⟨40, 25⟩, ⟨2, 11⟩, ⟨19, 15⟩, ⟨36, 24⟩, ⟨15, 14⟩, ⟨32, 23⟩, ⟨11, 13⟩, ⟨28, 22⟩, ⟨7, 12⟩, ⟨24, 21⟩, ⟨41, 25⟩, ⟨3, 11⟩, ⟨20, 15⟩, ⟨37, 24⟩, ⟨16, 14⟩, ⟨33, 23⟩, ⟨12, 13⟩, ⟨29, 22⟩]⟩
theorem profile0671_checked : profile0671.check := by decide +kernel

noncomputable def selection1_0671 : Selection :=
  ⟨1, -2, 4, (713/50), 253, -120, 614⟩
theorem selection1_0671_checked : selection1_0671.check profile0671 := by decide +kernel

noncomputable def selection2_0671 : Selection :=
  ⟨2, -10, 8, (699/50), 76, -152, 982⟩
theorem selection2_0671_checked : selection2_0671.check profile0671 := by decide +kernel

noncomputable def profile0672 : ProfileCell :=
  ⟨(23/97), (14/59),
    [12, 11, 11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨29, 23⟩, ⟨8, 13⟩, ⟨25, 22⟩, ⟨42, 26⟩, ⟨4, 12⟩, ⟨21, 16⟩, ⟨38, 25⟩, ⟨17, 15⟩, ⟨34, 24⟩, ⟨13, 14⟩, ⟨30, 23⟩, ⟨9, 13⟩, ⟨26, 22⟩, ⟨5, 12⟩, ⟨22, 21⟩, ⟨39, 25⟩, ⟨1, 11⟩, ⟨18, 15⟩, ⟨35, 24⟩, ⟨14, 14⟩, ⟨43, 37⟩, ⟨31, 23⟩, ⟨10, 13⟩, ⟨27, 22⟩, ⟨6, 12⟩, ⟨23, 21⟩, ⟨40, 25⟩, ⟨2, 11⟩, ⟨19, 15⟩, ⟨36, 24⟩, ⟨15, 14⟩, ⟨32, 23⟩, ⟨11, 13⟩, ⟨28, 22⟩, ⟨7, 12⟩, ⟨24, 21⟩, ⟨41, 25⟩, ⟨3, 11⟩, ⟨20, 15⟩, ⟨37, 24⟩, ⟨16, 14⟩, ⟨33, 23⟩, ⟨12, 13⟩]⟩
theorem profile0672_checked : profile0672.check := by decide +kernel

noncomputable def selection1_0672 : Selection :=
  ⟨1, -2, 4, (357/25), 164, -28, 226⟩
theorem selection1_0672_checked : selection1_0672.check profile0672 := by decide +kernel

noncomputable def selection2_0672 : Selection :=
  ⟨2, -10, 8, 14, 49, -60, 594⟩
theorem selection2_0672_checked : selection2_0672.check profile0672 := by decide +kernel

noncomputable def profile0673 : ProfileCell :=
  ⟨(14/59), (24/101),
    [12, 11, 11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨12, 14⟩, ⟨29, 23⟩, ⟨8, 13⟩, ⟨25, 22⟩, ⟨4, 12⟩, ⟨42, 26⟩, ⟨21, 16⟩, ⟨38, 25⟩, ⟨17, 15⟩, ⟨34, 24⟩, ⟨13, 14⟩, ⟨30, 23⟩, ⟨9, 13⟩, ⟨26, 22⟩, ⟨5, 12⟩, ⟨22, 21⟩, ⟨1, 11⟩, ⟨39, 25⟩, ⟨18, 15⟩, ⟨35, 24⟩, ⟨14, 14⟩, ⟨31, 23⟩, ⟨43, 37⟩, ⟨10, 13⟩, ⟨27, 22⟩, ⟨6, 12⟩, ⟨23, 21⟩, ⟨2, 11⟩, ⟨40, 25⟩, ⟨19, 15⟩, ⟨36, 24⟩, ⟨15, 14⟩, ⟨32, 23⟩, ⟨11, 13⟩, ⟨28, 22⟩, ⟨7, 12⟩, ⟨24, 21⟩, ⟨3, 11⟩, ⟨41, 25⟩, ⟨20, 15⟩, ⟨37, 24⟩, ⟨16, 14⟩, ⟨33, 23⟩]⟩
theorem profile0673_checked : profile0673.check := by decide +kernel

noncomputable def selection1_0673 : Selection :=
  ⟨1, -2, 4, (359/25), 315, -112, 580⟩
theorem selection1_0673_checked : selection1_0673.check profile0673 := by decide +kernel

noncomputable def selection2_0673 : Selection :=
  ⟨2, -10, 8, (352/25), 95, -144, 948⟩
theorem selection2_0673_checked : selection2_0673.check profile0673 := by decide +kernel

noncomputable def profile0674 : ProfileCell :=
  ⟨(24/101), (5/21),
    [12, 11, 11, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨33, 24⟩, ⟨12, 14⟩, ⟨29, 23⟩, ⟨8, 13⟩, ⟨25, 22⟩, ⟨4, 12⟩, ⟨42, 26⟩, ⟨21, 16⟩, ⟨38, 25⟩, ⟨17, 15⟩, ⟨34, 24⟩, ⟨13, 14⟩, ⟨30, 23⟩, ⟨9, 13⟩, ⟨26, 22⟩, ⟨5, 12⟩, ⟨22, 21⟩, ⟨1, 11⟩, ⟨39, 25⟩, ⟨18, 15⟩, ⟨35, 24⟩, ⟨14, 14⟩, ⟨31, 23⟩, ⟨10, 13⟩, ⟨43, 37⟩, ⟨27, 22⟩, ⟨6, 12⟩, ⟨23, 21⟩, ⟨2, 11⟩, ⟨40, 25⟩, ⟨19, 15⟩, ⟨36, 24⟩, ⟨15, 14⟩, ⟨32, 23⟩, ⟨11, 13⟩, ⟨28, 22⟩, ⟨7, 12⟩, ⟨24, 21⟩, ⟨3, 11⟩, ⟨41, 25⟩, ⟨20, 15⟩, ⟨37, 24⟩, ⟨16, 14⟩]⟩
theorem profile0674_checked : profile0674.check := by decide +kernel

noncomputable def selection1_0674 : Selection :=
  ⟨1, -2, 4, (1439/100), 443, -16, 176⟩
theorem selection1_0674_checked : selection1_0674.check profile0674 := by decide +kernel

noncomputable def selection2_0674 : Selection :=
  ⟨2, -10, 8, (1413/100), 134, -48, 544⟩
theorem selection2_0674_checked : selection2_0674.check profile0674 := by decide +kernel

noncomputable def profile0675 : ProfileCell :=
  ⟨(5/21), (26/109),
    [12, 11, 11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨16, 15⟩, ⟨37, 25⟩, ⟨12, 14⟩, ⟨33, 24⟩, ⟨8, 13⟩, ⟨29, 23⟩, ⟨4, 12⟩, ⟨25, 22⟩, ⟨21, 16⟩, ⟨42, 26⟩, ⟨17, 15⟩, ⟨38, 25⟩, ⟨13, 14⟩, ⟨34, 24⟩, ⟨9, 13⟩, ⟨30, 23⟩, ⟨5, 12⟩, ⟨26, 22⟩, ⟨1, 11⟩, ⟨22, 21⟩, ⟨18, 15⟩, ⟨39, 25⟩, ⟨14, 14⟩, ⟨35, 24⟩, ⟨10, 13⟩, ⟨31, 23⟩, ⟨6, 12⟩, ⟨27, 22⟩, ⟨43, 37⟩, ⟨2, 11⟩, ⟨23, 21⟩, ⟨19, 15⟩, ⟨40, 25⟩, ⟨15, 14⟩, ⟨36, 24⟩, ⟨11, 13⟩, ⟨32, 23⟩, ⟨7, 12⟩, ⟨28, 22⟩, ⟨3, 11⟩, ⟨24, 21⟩, ⟨20, 15⟩, ⟨41, 25⟩]⟩
theorem profile0675_checked : profile0675.check := by decide +kernel

noncomputable def selection1_0675 : Selection :=
  ⟨1, -3, 4, (311/25), 355, -46, 302⟩
theorem selection1_0675_checked : selection1_0675.check profile0675 := by decide +kernel

noncomputable def selection2_0675 : Selection :=
  ⟨2, -11, 8, (61/5), 107, -78, 670⟩
theorem selection2_0675_checked : selection2_0675.check profile0675 := by decide +kernel

noncomputable def profile0676 : ProfileCell :=
  ⟨(26/109), (16/67),
    [12, 11, 11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨41, 26⟩, ⟨16, 15⟩, ⟨37, 25⟩, ⟨12, 14⟩, ⟨33, 24⟩, ⟨8, 13⟩, ⟨29, 23⟩, ⟨4, 12⟩, ⟨25, 22⟩, ⟨21, 16⟩, ⟨42, 26⟩, ⟨17, 15⟩, ⟨38, 25⟩, ⟨13, 14⟩, ⟨34, 24⟩, ⟨9, 13⟩, ⟨30, 23⟩, ⟨5, 12⟩, ⟨26, 22⟩, ⟨1, 11⟩, ⟨22, 21⟩, ⟨18, 15⟩, ⟨39, 25⟩, ⟨14, 14⟩, ⟨35, 24⟩, ⟨10, 13⟩, ⟨31, 23⟩, ⟨6, 12⟩, ⟨27, 22⟩, ⟨2, 11⟩, ⟨43, 37⟩, ⟨23, 21⟩, ⟨19, 15⟩, ⟨40, 25⟩, ⟨15, 14⟩, ⟨36, 24⟩, ⟨11, 13⟩, ⟨32, 23⟩, ⟨7, 12⟩, ⟨28, 22⟩, ⟨3, 11⟩, ⟨24, 21⟩, ⟨20, 15⟩]⟩
theorem profile0676_checked : profile0676.check := by decide +kernel

noncomputable def selection1_0676 : Selection :=
  ⟨1, -3, 4, (311/25), 223, 110, -352⟩
theorem selection1_0676_checked : selection1_0676.check profile0676 := by decide +kernel

noncomputable def selection2_0676 : Selection :=
  ⟨2, -11, 8, (61/5), 67, 78, 16⟩
theorem selection2_0676_checked : selection2_0676.check profile0676 := by decide +kernel

noncomputable def profile0677 : ProfileCell :=
  ⟨(16/67), (11/46),
    [12, 11, 11, 10, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨20, 16⟩, ⟨41, 26⟩, ⟨16, 15⟩, ⟨37, 25⟩, ⟨12, 14⟩, ⟨33, 24⟩, ⟨8, 13⟩, ⟨29, 23⟩, ⟨4, 12⟩, ⟨25, 22⟩, ⟨21, 16⟩, ⟨42, 26⟩, ⟨17, 15⟩, ⟨38, 25⟩, ⟨13, 14⟩, ⟨34, 24⟩, ⟨9, 13⟩, ⟨30, 23⟩, ⟨5, 12⟩, ⟨26, 22⟩, ⟨1, 11⟩, ⟨22, 21⟩, ⟨18, 15⟩, ⟨39, 25⟩, ⟨14, 14⟩, ⟨35, 24⟩, ⟨10, 13⟩, ⟨31, 23⟩, ⟨6, 12⟩, ⟨27, 22⟩, ⟨2, 11⟩, ⟨23, 21⟩, ⟨43, 37⟩, ⟨19, 15⟩, ⟨40, 25⟩, ⟨15, 14⟩, ⟨36, 24⟩, ⟨11, 13⟩, ⟨32, 23⟩, ⟨7, 12⟩, ⟨28, 22⟩, ⟨3, 11⟩, ⟨24, 21⟩]⟩
theorem profile0677_checked : profile0677.check := by decide +kernel

noncomputable def selection1_0677 : Selection :=
  ⟨1, -3, 4, (1241/100), 263, 14, 50⟩
theorem selection1_0677_checked : selection1_0677.check profile0677 := by decide +kernel

noncomputable def selection2_0677 : Selection :=
  ⟨2, -11, 8, (1223/100), 80, -18, 418⟩
theorem selection2_0677_checked : selection2_0677.check profile0677 := by decide +kernel

noncomputable def profile0678 : ProfileCell :=
  ⟨(11/46), (23/96),
    [12, 11, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨24, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨41, 26⟩, ⟨12, 14⟩, ⟨37, 25⟩, ⟨8, 13⟩, ⟨33, 24⟩, ⟨4, 12⟩, ⟨29, 23⟩, ⟨25, 22⟩, ⟨21, 16⟩, ⟨17, 15⟩, ⟨42, 26⟩, ⟨13, 14⟩, ⟨38, 25⟩, ⟨9, 13⟩, ⟨34, 24⟩, ⟨5, 12⟩, ⟨30, 23⟩, ⟨1, 11⟩, ⟨26, 22⟩, ⟨22, 21⟩, ⟨18, 15⟩, ⟨14, 14⟩, ⟨39, 25⟩, ⟨10, 13⟩, ⟨35, 24⟩, ⟨6, 12⟩, ⟨31, 23⟩, ⟨2, 11⟩, ⟨27, 22⟩, ⟨23, 21⟩, ⟨19, 15⟩, ⟨43, 37⟩, ⟨15, 14⟩, ⟨40, 25⟩, ⟨11, 13⟩, ⟨36, 24⟩, ⟨7, 12⟩, ⟨32, 23⟩, ⟨3, 11⟩, ⟨28, 22⟩]⟩
theorem profile0678_checked : profile0678.check := by decide +kernel

noncomputable def selection1_0678 : Selection :=
  ⟨1, -4, 4, (1043/100), 308, 3, 96⟩
theorem selection1_0678_checked : selection1_0678.check profile0678 := by decide +kernel

noncomputable def selection2_0678 : Selection :=
  ⟨2, -12, 8, (1027/100), 93, -29, 464⟩
theorem selection2_0678_checked : selection2_0678.check profile0678 := by decide +kernel

noncomputable def profile0679 : ProfileCell :=
  ⟨(23/96), (6/25),
    [12, 11, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 11, 12, 12],
    [⟨28, 23⟩, ⟨24, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨41, 26⟩, ⟨12, 14⟩, ⟨37, 25⟩, ⟨8, 13⟩, ⟨33, 24⟩, ⟨4, 12⟩, ⟨29, 23⟩, ⟨25, 22⟩, ⟨21, 16⟩, ⟨17, 15⟩, ⟨42, 26⟩, ⟨13, 14⟩, ⟨38, 25⟩, ⟨9, 13⟩, ⟨34, 24⟩, ⟨5, 12⟩, ⟨30, 23⟩, ⟨1, 11⟩, ⟨26, 22⟩, ⟨22, 21⟩, ⟨18, 15⟩, ⟨14, 14⟩, ⟨39, 25⟩, ⟨10, 13⟩, ⟨35, 24⟩, ⟨6, 12⟩, ⟨31, 23⟩, ⟨2, 11⟩, ⟨27, 22⟩, ⟨23, 21⟩, ⟨19, 15⟩, ⟨15, 14⟩, ⟨43, 37⟩, ⟨40, 25⟩, ⟨11, 13⟩, ⟨36, 24⟩, ⟨7, 12⟩, ⟨32, 23⟩, ⟨3, 11⟩]⟩
theorem profile0679_checked : profile0679.check := by decide +kernel

noncomputable def selection1_0679 : Selection :=
  ⟨1, -4, 4, (1043/100), 283, 95, -288⟩
theorem selection1_0679_checked : selection1_0679.check profile0679 := by decide +kernel

noncomputable def selection2_0679 : Selection :=
  ⟨2, -12, 8, (257/25), 86, 63, 80⟩
theorem selection2_0679_checked : selection2_0679.check profile0679 := by decide +kernel

noncomputable def profile0680 : ProfileCell :=
  ⟨(6/25), (25/104),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨3, 12⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨20, 16⟩, ⟨24, 22⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨41, 26⟩, ⟨8, 13⟩, ⟨37, 25⟩, ⟨4, 12⟩, ⟨33, 24⟩, ⟨29, 23⟩, ⟨21, 16⟩, ⟨25, 22⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨42, 26⟩, ⟨9, 13⟩, ⟨38, 25⟩, ⟨5, 12⟩, ⟨34, 24⟩, ⟨1, 11⟩, ⟨30, 23⟩, ⟨26, 22⟩, ⟨18, 15⟩, ⟨22, 21⟩, ⟨14, 14⟩, ⟨10, 13⟩, ⟨39, 25⟩, ⟨6, 12⟩, ⟨35, 24⟩, ⟨2, 11⟩, ⟨31, 23⟩, ⟨27, 22⟩, ⟨19, 15⟩, ⟨23, 21⟩, ⟨15, 14⟩, ⟨11, 13⟩, ⟨40, 25⟩, ⟨43, 37⟩, ⟨7, 12⟩, ⟨36, 24⟩]⟩
theorem profile0680_checked : profile0680.check := by decide +kernel

noncomputable def selection1_0680 : Selection :=
  ⟨1, -3, 4, (619/50), 310, 107, -338⟩
theorem selection1_0680_checked : selection1_0680.check profile0680 := by decide +kernel

noncomputable def selection2_0680 : Selection :=
  ⟨2, -11, 8, (307/25), 95, 75, 30⟩
theorem selection2_0680_checked : selection2_0680.check profile0680 := by decide +kernel

noncomputable def profile0681 : ProfileCell :=
  ⟨(25/104), (19/79),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨36, 25⟩, ⟨3, 12⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨20, 16⟩, ⟨24, 22⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨41, 26⟩, ⟨8, 13⟩, ⟨37, 25⟩, ⟨4, 12⟩, ⟨33, 24⟩, ⟨29, 23⟩, ⟨21, 16⟩, ⟨25, 22⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨42, 26⟩, ⟨9, 13⟩, ⟨38, 25⟩, ⟨5, 12⟩, ⟨34, 24⟩, ⟨1, 11⟩, ⟨30, 23⟩, ⟨26, 22⟩, ⟨18, 15⟩, ⟨22, 21⟩, ⟨14, 14⟩, ⟨10, 13⟩, ⟨39, 25⟩, ⟨6, 12⟩, ⟨35, 24⟩, ⟨2, 11⟩, ⟨31, 23⟩, ⟨27, 22⟩, ⟨19, 15⟩, ⟨23, 21⟩, ⟨15, 14⟩, ⟨11, 13⟩, ⟨40, 25⟩, ⟨7, 12⟩, ⟨43, 37⟩]⟩
theorem profile0681_checked : profile0681.check := by decide +kernel

noncomputable def selection1_0681 : Selection :=
  ⟨1, -3, 4, (308/25), 98, 257, -962⟩
theorem selection1_0681_checked : selection1_0681.check profile0681 := by decide +kernel

noncomputable def selection2_0681 : Selection :=
  ⟨2, -11, 8, (307/25), 30, 225, -594⟩
theorem selection2_0681_checked : selection2_0681.check profile0681 := by decide +kernel

noncomputable def profile0682 : ProfileCell :=
  ⟨(19/79), (13/54),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨43, 38⟩, ⟨36, 25⟩, ⟨3, 12⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨20, 16⟩, ⟨24, 22⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨41, 26⟩, ⟨8, 13⟩, ⟨37, 25⟩, ⟨4, 12⟩, ⟨33, 24⟩, ⟨29, 23⟩, ⟨21, 16⟩, ⟨25, 22⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨42, 26⟩, ⟨9, 13⟩, ⟨38, 25⟩, ⟨5, 12⟩, ⟨34, 24⟩, ⟨1, 11⟩, ⟨30, 23⟩, ⟨26, 22⟩, ⟨18, 15⟩, ⟨22, 21⟩, ⟨14, 14⟩, ⟨10, 13⟩, ⟨39, 25⟩, ⟨6, 12⟩, ⟨35, 24⟩, ⟨2, 11⟩, ⟨31, 23⟩, ⟨27, 22⟩, ⟨19, 15⟩, ⟨23, 21⟩, ⟨15, 14⟩, ⟨11, 13⟩, ⟨40, 25⟩, ⟨7, 12⟩]⟩
theorem profile0682_checked : profile0682.check := by decide +kernel

noncomputable def selection1_0682 : Selection :=
  ⟨1, -3, 4, (619/50), 189, -237, 1092⟩
theorem selection1_0682_checked : selection1_0682.check profile0682 := by decide +kernel

noncomputable def selection2_0682 : Selection :=
  ⟨2, -11, 8, (617/50), 58, -269, 1460⟩
theorem selection2_0682_checked : selection2_0682.check profile0682 := by decide +kernel

noncomputable def profile0683 : ProfileCell :=
  ⟨(13/54), (7/29),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨7, 13⟩, ⟨40, 26⟩, ⟨3, 12⟩, ⟨36, 25⟩, ⟨43, 38⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨20, 16⟩, ⟨24, 22⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨8, 13⟩, ⟨41, 26⟩, ⟨4, 12⟩, ⟨37, 25⟩, ⟨33, 24⟩, ⟨29, 23⟩, ⟨21, 16⟩, ⟨25, 22⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨9, 13⟩, ⟨42, 26⟩, ⟨5, 12⟩, ⟨38, 25⟩, ⟨1, 11⟩, ⟨34, 24⟩, ⟨30, 23⟩, ⟨26, 22⟩, ⟨18, 15⟩, ⟨22, 21⟩, ⟨14, 14⟩, ⟨10, 13⟩, ⟨6, 12⟩, ⟨39, 25⟩, ⟨2, 11⟩, ⟨35, 24⟩, ⟨31, 23⟩, ⟨27, 22⟩, ⟨19, 15⟩, ⟨23, 21⟩, ⟨15, 14⟩, ⟨11, 13⟩]⟩
theorem profile0683_checked : profile0683.check := by decide +kernel

noncomputable def selection1_0683 : Selection :=
  ⟨1, -3, 4, (127/10), 527, -276, 1254⟩
theorem selection1_0683_checked : selection1_0683.check profile0683 := by decide +kernel

noncomputable def selection2_0683 : Selection :=
  ⟨2, -11, 8, (1257/100), 160, -308, 1622⟩
theorem selection2_0683_checked : selection2_0683.check profile0683 := by decide +kernel

noncomputable def profile0684 : ProfileCell :=
  ⟨(7/29), (22/91),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨11, 14⟩, ⟨7, 13⟩, ⟨3, 12⟩, ⟨40, 26⟩, ⟨36, 25⟩, ⟨32, 24⟩, ⟨43, 38⟩, ⟨20, 16⟩, ⟨28, 23⟩, ⟨16, 15⟩, ⟨24, 22⟩, ⟨12, 14⟩, ⟨8, 13⟩, ⟨4, 12⟩, ⟨41, 26⟩, ⟨37, 25⟩, ⟨33, 24⟩, ⟨21, 16⟩, ⟨29, 23⟩, ⟨17, 15⟩, ⟨25, 22⟩, ⟨13, 14⟩, ⟨9, 13⟩, ⟨5, 12⟩, ⟨42, 26⟩, ⟨1, 11⟩, ⟨38, 25⟩, ⟨34, 24⟩, ⟨30, 23⟩, ⟨18, 15⟩, ⟨26, 22⟩, ⟨14, 14⟩, ⟨22, 21⟩, ⟨10, 13⟩, ⟨6, 12⟩, ⟨2, 11⟩, ⟨39, 25⟩, ⟨35, 24⟩, ⟨31, 23⟩, ⟨19, 15⟩, ⟨27, 22⟩, ⟨15, 14⟩, ⟨23, 21⟩]⟩
theorem profile0684_checked : profile0684.check := by decide +kernel

noncomputable def selection1_0684 : Selection :=
  ⟨1, -3, 4, (1293/100), 318, -346, 1544⟩
theorem selection1_0684_checked : selection1_0684.check profile0684 := by decide +kernel

noncomputable def selection2_0684 : Selection :=
  ⟨2, -11, 8, (637/50), 97, -378, 1912⟩
theorem selection2_0684_checked : selection2_0684.check profile0684 := by decide +kernel

noncomputable def profile0685 : ProfileCell :=
  ⟨(22/91), (15/62),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨23, 22⟩, ⟨11, 14⟩, ⟨7, 13⟩, ⟨3, 12⟩, ⟨40, 26⟩, ⟨36, 25⟩, ⟨32, 24⟩, ⟨20, 16⟩, ⟨43, 38⟩, ⟨28, 23⟩, ⟨16, 15⟩, ⟨24, 22⟩, ⟨12, 14⟩, ⟨8, 13⟩, ⟨4, 12⟩, ⟨41, 26⟩, ⟨37, 25⟩, ⟨33, 24⟩, ⟨21, 16⟩, ⟨29, 23⟩, ⟨17, 15⟩, ⟨25, 22⟩, ⟨13, 14⟩, ⟨9, 13⟩, ⟨5, 12⟩, ⟨42, 26⟩, ⟨1, 11⟩, ⟨38, 25⟩, ⟨34, 24⟩, ⟨30, 23⟩, ⟨18, 15⟩, ⟨26, 22⟩, ⟨14, 14⟩, ⟨22, 21⟩, ⟨10, 13⟩, ⟨6, 12⟩, ⟨2, 11⟩, ⟨39, 25⟩, ⟨35, 24⟩, ⟨31, 23⟩, ⟨19, 15⟩, ⟨27, 22⟩, ⟨15, 14⟩]⟩
theorem profile0685_checked : profile0685.check := by decide +kernel

noncomputable def selection1_0685 : Selection :=
  ⟨1, -3, 4, (651/50), 150, -258, 1180⟩
theorem selection1_0685_checked : selection1_0685.check profile0685 := by decide +kernel

noncomputable def selection2_0685 : Selection :=
  ⟨2, -11, 8, (64/5), 46, -290, 1548⟩
theorem selection2_0685_checked : selection2_0685.check profile0685 := by decide +kernel

noncomputable def profile0686 : ProfileCell :=
  ⟨(15/62), (23/95),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨15, 15⟩, ⟨23, 22⟩, ⟨11, 14⟩, ⟨7, 13⟩, ⟨3, 12⟩, ⟨40, 26⟩, ⟨36, 25⟩, ⟨32, 24⟩, ⟨20, 16⟩, ⟨28, 23⟩, ⟨43, 38⟩, ⟨16, 15⟩, ⟨24, 22⟩, ⟨12, 14⟩, ⟨8, 13⟩, ⟨4, 12⟩, ⟨41, 26⟩, ⟨37, 25⟩, ⟨33, 24⟩, ⟨21, 16⟩, ⟨29, 23⟩, ⟨17, 15⟩, ⟨25, 22⟩, ⟨13, 14⟩, ⟨9, 13⟩, ⟨5, 12⟩, ⟨1, 11⟩, ⟨42, 26⟩, ⟨38, 25⟩, ⟨34, 24⟩, ⟨30, 23⟩, ⟨18, 15⟩, ⟨26, 22⟩, ⟨14, 14⟩, ⟨22, 21⟩, ⟨10, 13⟩, ⟨6, 12⟩, ⟨2, 11⟩, ⟨39, 25⟩, ⟨35, 24⟩, ⟨31, 23⟩, ⟨19, 15⟩, ⟨27, 22⟩]⟩
theorem profile0686_checked : profile0686.check := by decide +kernel

noncomputable def selection1_0686 : Selection :=
  ⟨1, -3, 4, (328/25), 145, -333, 1490⟩
theorem selection1_0686_checked : selection1_0686.check profile0686 := by decide +kernel

noncomputable def selection2_0686 : Selection :=
  ⟨2, -11, 8, (1287/100), 44, -365, 1858⟩
theorem selection2_0686_checked : selection2_0686.check profile0686 := by decide +kernel

noncomputable def profile0687 : ProfileCell :=
  ⟨(23/95), (8/33),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨27, 23⟩, ⟨15, 15⟩, ⟨23, 22⟩, ⟨11, 14⟩, ⟨7, 13⟩, ⟨3, 12⟩, ⟨40, 26⟩, ⟨36, 25⟩, ⟨32, 24⟩, ⟨20, 16⟩, ⟨28, 23⟩, ⟨16, 15⟩, ⟨43, 38⟩, ⟨24, 22⟩, ⟨12, 14⟩, ⟨8, 13⟩, ⟨4, 12⟩, ⟨41, 26⟩, ⟨37, 25⟩, ⟨33, 24⟩, ⟨21, 16⟩, ⟨29, 23⟩, ⟨17, 15⟩, ⟨25, 22⟩, ⟨13, 14⟩, ⟨9, 13⟩, ⟨5, 12⟩, ⟨1, 11⟩, ⟨42, 26⟩, ⟨38, 25⟩, ⟨34, 24⟩, ⟨30, 23⟩, ⟨18, 15⟩, ⟨26, 22⟩, ⟨14, 14⟩, ⟨22, 21⟩, ⟨10, 13⟩, ⟨6, 12⟩, ⟨2, 11⟩, ⟨39, 25⟩, ⟨35, 24⟩, ⟨31, 23⟩, ⟨19, 15⟩]⟩
theorem profile0687_checked : profile0687.check := by decide +kernel

noncomputable def selection1_0687 : Selection :=
  ⟨1, -3, 4, (663/50), 275, -241, 1110⟩
theorem selection1_0687_checked : selection1_0687.check profile0687 := by decide +kernel

noncomputable def selection2_0687 : Selection :=
  ⟨2, -11, 8, (1297/100), 83, -273, 1478⟩
theorem selection2_0687_checked : selection2_0687.check profile0687 := by decide +kernel

noncomputable def profile0688 : ProfileCell :=
  ⟨(8/33), (25/103),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨19, 16⟩, ⟨31, 24⟩, ⟨15, 15⟩, ⟨27, 23⟩, ⟨11, 14⟩, ⟨23, 22⟩, ⟨7, 13⟩, ⟨3, 12⟩, ⟨40, 26⟩, ⟨36, 25⟩, ⟨20, 16⟩, ⟨32, 24⟩, ⟨16, 15⟩, ⟨28, 23⟩, ⟨12, 14⟩, ⟨24, 22⟩, ⟨43, 38⟩, ⟨8, 13⟩, ⟨4, 12⟩, ⟨41, 26⟩, ⟨37, 25⟩, ⟨21, 16⟩, ⟨33, 24⟩, ⟨17, 15⟩, ⟨29, 23⟩, ⟨13, 14⟩, ⟨25, 22⟩, ⟨9, 13⟩, ⟨5, 12⟩, ⟨1, 11⟩, ⟨42, 26⟩, ⟨38, 25⟩, ⟨34, 24⟩, ⟨18, 15⟩, ⟨30, 23⟩, ⟨14, 14⟩, ⟨26, 22⟩, ⟨10, 13⟩, ⟨22, 21⟩, ⟨6, 12⟩, ⟨2, 11⟩, ⟨39, 25⟩, ⟨35, 24⟩]⟩
theorem profile0688_checked : profile0688.check := by decide +kernel

noncomputable def selection1_0688 : Selection :=
  ⟨1, -3, 4, (67/5), 256, -257, 1176⟩
theorem selection1_0688_checked : selection1_0688.check profile0688 := by decide +kernel

noncomputable def selection2_0688 : Selection :=
  ⟨2, -11, 8, (1307/100), 77, -289, 1544⟩
theorem selection2_0688_checked : selection2_0688.check profile0688 := by decide +kernel

noncomputable def profile0689 : ProfileCell :=
  ⟨(25/103), (26/107),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨35, 25⟩, ⟨19, 16⟩, ⟨31, 24⟩, ⟨15, 15⟩, ⟨27, 23⟩, ⟨11, 14⟩, ⟨23, 22⟩, ⟨7, 13⟩, ⟨3, 12⟩, ⟨40, 26⟩, ⟨36, 25⟩, ⟨20, 16⟩, ⟨32, 24⟩, ⟨16, 15⟩, ⟨28, 23⟩, ⟨12, 14⟩, ⟨24, 22⟩, ⟨8, 13⟩, ⟨43, 38⟩, ⟨4, 12⟩, ⟨41, 26⟩, ⟨37, 25⟩, ⟨21, 16⟩, ⟨33, 24⟩, ⟨17, 15⟩, ⟨29, 23⟩, ⟨13, 14⟩, ⟨25, 22⟩, ⟨9, 13⟩, ⟨5, 12⟩, ⟨1, 11⟩, ⟨42, 26⟩, ⟨38, 25⟩, ⟨34, 24⟩, ⟨18, 15⟩, ⟨30, 23⟩, ⟨14, 14⟩, ⟨26, 22⟩, ⟨10, 13⟩, ⟨22, 21⟩, ⟨6, 12⟩, ⟨2, 11⟩, ⟨39, 25⟩]⟩
theorem profile0689_checked : profile0689.check := by decide +kernel

noncomputable def selection1_0689 : Selection :=
  ⟨1, -3, 4, (673/50), 238, -107, 558⟩
theorem selection1_0689_checked : selection1_0689.check profile0689 := by decide +kernel

noncomputable def selection2_0689 : Selection :=
  ⟨2, -11, 8, (1313/100), 72, -139, 926⟩
theorem selection2_0689_checked : selection2_0689.check profile0689 := by decide +kernel

noncomputable def profile0690 : ProfileCell :=
  ⟨(26/107), (9/37),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨39, 26⟩, ⟨35, 25⟩, ⟨19, 16⟩, ⟨31, 24⟩, ⟨15, 15⟩, ⟨27, 23⟩, ⟨11, 14⟩, ⟨23, 22⟩, ⟨7, 13⟩, ⟨3, 12⟩, ⟨40, 26⟩, ⟨36, 25⟩, ⟨20, 16⟩, ⟨32, 24⟩, ⟨16, 15⟩, ⟨28, 23⟩, ⟨12, 14⟩, ⟨24, 22⟩, ⟨8, 13⟩, ⟨4, 12⟩, ⟨43, 38⟩, ⟨41, 26⟩, ⟨37, 25⟩, ⟨21, 16⟩, ⟨33, 24⟩, ⟨17, 15⟩, ⟨29, 23⟩, ⟨13, 14⟩, ⟨25, 22⟩, ⟨9, 13⟩, ⟨5, 12⟩, ⟨1, 11⟩, ⟨42, 26⟩, ⟨38, 25⟩, ⟨34, 24⟩, ⟨18, 15⟩, ⟨30, 23⟩, ⟨14, 14⟩, ⟨26, 22⟩, ⟨10, 13⟩, ⟨22, 21⟩, ⟨6, 12⟩, ⟨2, 11⟩]⟩
theorem profile0690_checked : profile0690.check := by decide +kernel

noncomputable def selection1_0690 : Selection :=
  ⟨1, -3, 4, (1347/100), 221, -3, 130⟩
theorem selection1_0690_checked : selection1_0690.check profile0690 := by decide +kernel

noncomputable def selection2_0690 : Selection :=
  ⟨2, -11, 8, (329/25), 67, -35, 498⟩
theorem selection2_0690_checked : selection2_0690.check profile0690 := by decide +kernel

noncomputable def profile0691 : ProfileCell :=
  ⟨(9/37), (10/41),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨39, 26⟩, ⟨19, 16⟩, ⟨35, 25⟩, ⟨15, 15⟩, ⟨31, 24⟩, ⟨11, 14⟩, ⟨27, 23⟩, ⟨7, 13⟩, ⟨23, 22⟩, ⟨3, 12⟩, ⟨40, 26⟩, ⟨20, 16⟩, ⟨36, 25⟩, ⟨16, 15⟩, ⟨32, 24⟩, ⟨12, 14⟩, ⟨28, 23⟩, ⟨8, 13⟩, ⟨24, 22⟩, ⟨4, 12⟩, ⟨43, 38⟩, ⟨41, 26⟩, ⟨21, 16⟩, ⟨37, 25⟩, ⟨17, 15⟩, ⟨33, 24⟩, ⟨13, 14⟩, ⟨29, 23⟩, ⟨9, 13⟩, ⟨25, 22⟩, ⟨5, 12⟩, ⟨1, 11⟩, ⟨42, 26⟩, ⟨38, 25⟩, ⟨18, 15⟩, ⟨34, 24⟩, ⟨14, 14⟩, ⟨30, 23⟩, ⟨10, 13⟩, ⟨26, 22⟩, ⟨6, 12⟩, ⟨22, 21⟩, ⟨2, 11⟩]⟩
theorem profile0691_checked : profile0691.check := by decide +kernel

noncomputable def selection1_0691 : Selection :=
  ⟨1, -2, 4, (271/20), 578, -42, 270⟩
theorem selection1_0691_checked : selection1_0691.check profile0691 := by decide +kernel

noncomputable def selection2_0691 : Selection :=
  ⟨2, -10, 8, (53/4), 174, -78, 638⟩
theorem selection2_0691_checked : selection2_0691.check profile0691 := by decide +kernel

noncomputable def profile0692 : ProfileCell :=
  ⟨(10/41), (11/45),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨19, 16⟩, ⟨39, 26⟩, ⟨15, 15⟩, ⟨35, 25⟩, ⟨11, 14⟩, ⟨31, 24⟩, ⟨7, 13⟩, ⟨27, 23⟩, ⟨3, 12⟩, ⟨23, 22⟩, ⟨20, 16⟩, ⟨40, 26⟩, ⟨16, 15⟩, ⟨36, 25⟩, ⟨12, 14⟩, ⟨32, 24⟩, ⟨8, 13⟩, ⟨28, 23⟩, ⟨4, 12⟩, ⟨24, 22⟩, ⟨43, 38⟩, ⟨21, 16⟩, ⟨41, 26⟩, ⟨17, 15⟩, ⟨37, 25⟩, ⟨13, 14⟩, ⟨33, 24⟩, ⟨9, 13⟩, ⟨29, 23⟩, ⟨5, 12⟩, ⟨25, 22⟩, ⟨1, 11⟩, ⟨42, 26⟩, ⟨18, 15⟩, ⟨38, 25⟩, ⟨14, 14⟩, ⟨34, 24⟩, ⟨10, 13⟩, ⟨30, 23⟩, ⟨6, 12⟩, ⟨26, 22⟩, ⟨2, 11⟩, ⟨22, 21⟩]⟩
theorem profile0692_checked : profile0692.check := by decide +kernel

noncomputable def selection1_0692 : Selection :=
  ⟨1, -2, 4, (137/10), 480, -142, 680⟩
theorem selection1_0692_checked : selection1_0692.check profile0692 := by decide +kernel

noncomputable def selection2_0692 : Selection :=
  ⟨2, -10, 8, (669/50), 144, -178, 1048⟩
theorem selection2_0692_checked : selection2_0692.check profile0692 := by decide +kernel

noncomputable def profile0693 : ProfileCell :=
  ⟨(11/45), (23/94),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨22, 22⟩, ⟨19, 16⟩, ⟨15, 15⟩, ⟨39, 26⟩, ⟨11, 14⟩, ⟨35, 25⟩, ⟨7, 13⟩, ⟨31, 24⟩, ⟨3, 12⟩, ⟨27, 23⟩, ⟨23, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨40, 26⟩, ⟨12, 14⟩, ⟨36, 25⟩, ⟨8, 13⟩, ⟨32, 24⟩, ⟨4, 12⟩, ⟨28, 23⟩, ⟨24, 22⟩, ⟨21, 16⟩, ⟨43, 38⟩, ⟨17, 15⟩, ⟨41, 26⟩, ⟨13, 14⟩, ⟨37, 25⟩, ⟨9, 13⟩, ⟨33, 24⟩, ⟨5, 12⟩, ⟨29, 23⟩, ⟨1, 11⟩, ⟨25, 22⟩, ⟨18, 15⟩, ⟨42, 26⟩, ⟨14, 14⟩, ⟨38, 25⟩, ⟨10, 13⟩, ⟨34, 24⟩, ⟨6, 12⟩, ⟨30, 23⟩, ⟨2, 11⟩, ⟨26, 22⟩]⟩
theorem profile0693_checked : profile0693.check := by decide +kernel

noncomputable def selection1_0693 : Selection :=
  ⟨1, -2, 4, (1377/100), 211, -164, 770⟩
theorem selection1_0693_checked : selection1_0693.check profile0693 := by decide +kernel

noncomputable def selection2_0693 : Selection :=
  ⟨2, -10, 8, (336/25), 64, -200, 1138⟩
theorem selection2_0693_checked : selection2_0693.check profile0693 := by decide +kernel

noncomputable def profile0694 : ProfileCell :=
  ⟨(23/94), (12/49),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 11, 12, 12, 12],
    [⟨26, 23⟩, ⟨22, 22⟩, ⟨19, 16⟩, ⟨15, 15⟩, ⟨39, 26⟩, ⟨11, 14⟩, ⟨35, 25⟩, ⟨7, 13⟩, ⟨31, 24⟩, ⟨3, 12⟩, ⟨27, 23⟩, ⟨23, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨40, 26⟩, ⟨12, 14⟩, ⟨36, 25⟩, ⟨8, 13⟩, ⟨32, 24⟩, ⟨4, 12⟩, ⟨28, 23⟩, ⟨24, 22⟩, ⟨21, 16⟩, ⟨17, 15⟩, ⟨43, 38⟩, ⟨41, 26⟩, ⟨13, 14⟩, ⟨37, 25⟩, ⟨9, 13⟩, ⟨33, 24⟩, ⟨5, 12⟩, ⟨29, 23⟩, ⟨1, 11⟩, ⟨25, 22⟩, ⟨18, 15⟩, ⟨42, 26⟩, ⟨14, 14⟩, ⟨38, 25⟩, ⟨10, 13⟩, ⟨34, 24⟩, ⟨6, 12⟩, ⟨30, 23⟩, ⟨2, 11⟩]⟩
theorem profile0694_checked : profile0694.check := by decide +kernel

noncomputable def selection1_0694 : Selection :=
  ⟨1, -2, 4, (1379/100), 194, -26, 206⟩
theorem selection1_0694_checked : selection1_0694.check profile0694 := by decide +kernel

noncomputable def selection2_0694 : Selection :=
  ⟨2, -10, 8, (1347/100), 59, -62, 574⟩
theorem selection2_0694_checked : selection2_0694.check profile0694 := by decide +kernel

noncomputable def profile0695 : ProfileCell :=
  ⟨(12/49), (25/102),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 12, 12, 12, 12],
    [⟨2, 12⟩, ⟨30, 24⟩, ⟨26, 23⟩, ⟨22, 22⟩, ⟨19, 16⟩, ⟨15, 15⟩, ⟨11, 14⟩, ⟨39, 26⟩, ⟨7, 13⟩, ⟨35, 25⟩, ⟨3, 12⟩, ⟨31, 24⟩, ⟨27, 23⟩, ⟨23, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨40, 26⟩, ⟨8, 13⟩, ⟨36, 25⟩, ⟨4, 12⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨24, 22⟩, ⟨21, 16⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨41, 26⟩, ⟨43, 38⟩, ⟨9, 13⟩, ⟨37, 25⟩, ⟨5, 12⟩, ⟨33, 24⟩, ⟨1, 11⟩, ⟨29, 23⟩, ⟨25, 22⟩, ⟨18, 15⟩, ⟨14, 14⟩, ⟨42, 26⟩, ⟨10, 13⟩, ⟨38, 25⟩, ⟨6, 12⟩, ⟨34, 24⟩]⟩
theorem profile0695_checked : profile0695.check := by decide +kernel

noncomputable def selection1_0695 : Selection :=
  ⟨1, 0, 4, (891/50), 231, -50, 304⟩
theorem selection1_0695_checked : selection1_0695.check profile0695 := by decide +kernel

noncomputable def selection2_0695 : Selection :=
  ⟨2, -8, 8, (35/2), 70, -86, 672⟩
theorem selection2_0695_checked : selection2_0695.check profile0695 := by decide +kernel

noncomputable def profile0696 : ProfileCell :=
  ⟨(25/102), (13/53),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 12, 12, 12, 12],
    [⟨34, 25⟩, ⟨2, 12⟩, ⟨30, 24⟩, ⟨26, 23⟩, ⟨22, 22⟩, ⟨19, 16⟩, ⟨15, 15⟩, ⟨11, 14⟩, ⟨39, 26⟩, ⟨7, 13⟩, ⟨35, 25⟩, ⟨3, 12⟩, ⟨31, 24⟩, ⟨27, 23⟩, ⟨23, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨40, 26⟩, ⟨8, 13⟩, ⟨36, 25⟩, ⟨4, 12⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨24, 22⟩, ⟨21, 16⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨41, 26⟩, ⟨9, 13⟩, ⟨43, 38⟩, ⟨37, 25⟩, ⟨5, 12⟩, ⟨33, 24⟩, ⟨1, 11⟩, ⟨29, 23⟩, ⟨25, 22⟩, ⟨18, 15⟩, ⟨14, 14⟩, ⟨42, 26⟩, ⟨10, 13⟩, ⟨38, 25⟩, ⟨6, 12⟩]⟩
theorem profile0696_checked : profile0696.check := by decide +kernel

noncomputable def selection1_0696 : Selection :=
  ⟨1, 0, 4, (891/50), 213, 50, -104⟩
theorem selection1_0696_checked : selection1_0696.check profile0696 := by decide +kernel

noncomputable def selection2_0696 : Selection :=
  ⟨2, -8, 8, (1751/100), 65, 14, 264⟩
theorem selection2_0696_checked : selection2_0696.check profile0696 := by decide +kernel

noncomputable def profile0697 : ProfileCell :=
  ⟨(13/53), (27/110),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 12, 12, 12, 12],
    [⟨6, 13⟩, ⟨38, 26⟩, ⟨2, 12⟩, ⟨34, 25⟩, ⟨30, 24⟩, ⟨26, 23⟩, ⟨22, 22⟩, ⟨19, 16⟩, ⟨15, 15⟩, ⟨11, 14⟩, ⟨7, 13⟩, ⟨39, 26⟩, ⟨3, 12⟩, ⟨35, 25⟩, ⟨31, 24⟩, ⟨27, 23⟩, ⟨23, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨8, 13⟩, ⟨40, 26⟩, ⟨4, 12⟩, ⟨36, 25⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨24, 22⟩, ⟨21, 16⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨9, 13⟩, ⟨41, 26⟩, ⟨5, 12⟩, ⟨37, 25⟩, ⟨43, 38⟩, ⟨1, 11⟩, ⟨33, 24⟩, ⟨29, 23⟩, ⟨25, 22⟩, ⟨18, 15⟩, ⟨14, 14⟩, ⟨10, 13⟩, ⟨42, 26⟩]⟩
theorem profile0697_checked : profile0697.check := by decide +kernel

noncomputable def selection1_0697 : Selection :=
  ⟨1, 0, 4, (1781/100), 197, 76, -210⟩
theorem selection1_0697_checked : selection1_0697.check profile0697 := by decide +kernel

noncomputable def selection2_0697 : Selection :=
  ⟨2, -8, 8, (438/25), 60, 40, 158⟩
theorem selection2_0697_checked : selection2_0697.check profile0697 := by decide +kernel

noncomputable def profile0698 : ProfileCell :=
  ⟨(27/110), (14/57),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 12, 12, 12, 12],
    [⟨42, 27⟩, ⟨6, 13⟩, ⟨38, 26⟩, ⟨2, 12⟩, ⟨34, 25⟩, ⟨30, 24⟩, ⟨26, 23⟩, ⟨22, 22⟩, ⟨19, 16⟩, ⟨15, 15⟩, ⟨11, 14⟩, ⟨7, 13⟩, ⟨39, 26⟩, ⟨3, 12⟩, ⟨35, 25⟩, ⟨31, 24⟩, ⟨27, 23⟩, ⟨23, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨8, 13⟩, ⟨40, 26⟩, ⟨4, 12⟩, ⟨36, 25⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨24, 22⟩, ⟨21, 16⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨9, 13⟩, ⟨41, 26⟩, ⟨5, 12⟩, ⟨37, 25⟩, ⟨1, 11⟩, ⟨43, 38⟩, ⟨33, 24⟩, ⟨29, 23⟩, ⟨25, 22⟩, ⟨18, 15⟩, ⟨14, 14⟩, ⟨10, 13⟩]⟩
theorem profile0698_checked : profile0698.check := by decide +kernel

noncomputable def selection1_0698 : Selection :=
  ⟨1, 0, 4, (1779/100), 183, 238, -870⟩
theorem selection1_0698_checked : selection1_0698.check profile0698 := by decide +kernel

noncomputable def selection2_0698 : Selection :=
  ⟨2, -8, 8, (438/25), 56, 202, -502⟩
theorem selection2_0698_checked : selection2_0698.check profile0698 := by decide +kernel

noncomputable def profile0699 : ProfileCell :=
  ⟨(14/57), (15/61),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 12, 12, 12, 12],
    [⟨10, 14⟩, ⟨6, 13⟩, ⟨42, 27⟩, ⟨2, 12⟩, ⟨38, 26⟩, ⟨34, 25⟩, ⟨30, 24⟩, ⟨26, 23⟩, ⟨22, 22⟩, ⟨19, 16⟩, ⟨15, 15⟩, ⟨11, 14⟩, ⟨7, 13⟩, ⟨3, 12⟩, ⟨39, 26⟩, ⟨35, 25⟩, ⟨31, 24⟩, ⟨27, 23⟩, ⟨23, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨8, 13⟩, ⟨4, 12⟩, ⟨40, 26⟩, ⟨36, 25⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨24, 22⟩, ⟨21, 16⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨9, 13⟩, ⟨5, 12⟩, ⟨41, 26⟩, ⟨1, 11⟩, ⟨37, 25⟩, ⟨33, 24⟩, ⟨43, 38⟩, ⟨29, 23⟩, ⟨25, 22⟩, ⟨18, 15⟩, ⟨14, 14⟩]⟩
theorem profile0699_checked : profile0699.check := by decide +kernel

noncomputable def selection1_0699 : Selection :=
  ⟨1, 0, 4, (887/50), 329, 70, -186⟩
theorem selection1_0699_checked : selection1_0699.check profile0699 := by decide +kernel

noncomputable def selection2_0699 : Selection :=
  ⟨2, -8, 8, (1751/100), 100, 34, 182⟩
theorem selection2_0699_checked : selection2_0699.check profile0699 := by decide +kernel

noncomputable def profile0700 : ProfileCell :=
  ⟨(15/61), (16/65),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 12, 12, 12, 12],
    [⟨14, 15⟩, ⟨10, 14⟩, ⟨6, 13⟩, ⟨2, 12⟩, ⟨42, 27⟩, ⟨38, 26⟩, ⟨34, 25⟩, ⟨30, 24⟩, ⟨26, 23⟩, ⟨22, 22⟩, ⟨19, 16⟩, ⟨15, 15⟩, ⟨11, 14⟩, ⟨7, 13⟩, ⟨3, 12⟩, ⟨39, 26⟩, ⟨35, 25⟩, ⟨31, 24⟩, ⟨27, 23⟩, ⟨23, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨8, 13⟩, ⟨4, 12⟩, ⟨40, 26⟩, ⟨36, 25⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨24, 22⟩, ⟨21, 16⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨9, 13⟩, ⟨5, 12⟩, ⟨1, 11⟩, ⟨41, 26⟩, ⟨37, 25⟩, ⟨33, 24⟩, ⟨29, 23⟩, ⟨43, 38⟩, ⟨25, 22⟩, ⟨18, 15⟩]⟩
theorem profile0700_checked : profile0700.check := by decide +kernel

noncomputable def selection1_0700 : Selection :=
  ⟨1, 0, 4, (443/25), 288, 10, 58⟩
theorem selection1_0700_checked : selection1_0700.check profile0700 := by decide +kernel

noncomputable def selection2_0700 : Selection :=
  ⟨2, -8, 8, (1753/100), 88, -26, 426⟩
theorem selection2_0700_checked : selection2_0700.check profile0700 := by decide +kernel

noncomputable def profile0701 : ProfileCell :=
  ⟨(16/65), (39/158),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 12, 12, 12, 12],
    [⟨18, 16⟩, ⟨14, 15⟩, ⟨10, 14⟩, ⟨6, 13⟩, ⟨2, 12⟩, ⟨42, 27⟩, ⟨38, 26⟩, ⟨34, 25⟩, ⟨30, 24⟩, ⟨26, 23⟩, ⟨22, 22⟩, ⟨19, 16⟩, ⟨15, 15⟩, ⟨11, 14⟩, ⟨7, 13⟩, ⟨3, 12⟩, ⟨39, 26⟩, ⟨35, 25⟩, ⟨31, 24⟩, ⟨27, 23⟩, ⟨23, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨8, 13⟩, ⟨4, 12⟩, ⟨40, 26⟩, ⟨36, 25⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨24, 22⟩, ⟨21, 16⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨9, 13⟩, ⟨5, 12⟩, ⟨1, 11⟩, ⟨41, 26⟩, ⟨37, 25⟩, ⟨33, 24⟩, ⟨29, 23⟩, ⟨25, 22⟩, ⟨43, 38⟩]⟩
theorem profile0701_checked : profile0701.check := by decide +kernel

noncomputable def selection1_0701 : Selection :=
  ⟨1, 0, 4, (446/25), 783, -86, 448⟩
theorem selection1_0701_checked : selection1_0701.check profile0701 := by decide +kernel

noncomputable def selection2_0701 : Selection :=
  ⟨2, -8, 8, (883/50), 239, -122, 816⟩
theorem selection2_0701_checked : selection2_0701.check profile0701 := by decide +kernel

noncomputable def profile0702 : ProfileCell :=
  ⟨(39/158), (23/93),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 12, 12, 12, 12],
    [⟨43, 39⟩, ⟨18, 16⟩, ⟨14, 15⟩, ⟨10, 14⟩, ⟨6, 13⟩, ⟨2, 12⟩, ⟨42, 27⟩, ⟨38, 26⟩, ⟨34, 25⟩, ⟨30, 24⟩, ⟨26, 23⟩, ⟨22, 22⟩, ⟨19, 16⟩, ⟨15, 15⟩, ⟨11, 14⟩, ⟨7, 13⟩, ⟨3, 12⟩, ⟨39, 26⟩, ⟨35, 25⟩, ⟨31, 24⟩, ⟨27, 23⟩, ⟨23, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨8, 13⟩, ⟨4, 12⟩, ⟨40, 26⟩, ⟨36, 25⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨24, 22⟩, ⟨21, 16⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨9, 13⟩, ⟨5, 12⟩, ⟨1, 11⟩, ⟨41, 26⟩, ⟨37, 25⟩, ⟨33, 24⟩, ⟨29, 23⟩, ⟨25, 22⟩]⟩
theorem profile0702_checked : profile0702.check := by decide +kernel

noncomputable def selection1_0702 : Selection :=
  ⟨1, 0, 4, (1829/100), 561, -554, 2344⟩
theorem selection1_0702_checked : selection1_0702.check profile0702 := by decide +kernel

noncomputable def selection2_0702 : Selection :=
  ⟨2, -8, 8, (897/50), 170, -590, 2712⟩
theorem selection2_0702_checked : selection2_0702.check profile0702 := by decide +kernel

noncomputable def profile0703 : ProfileCell :=
  ⟨(23/93), (24/97),
    [12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5], [11, 12, 12, 12, 12],
    [⟨25, 23⟩, ⟨18, 16⟩, ⟨43, 39⟩, ⟨14, 15⟩, ⟨10, 14⟩, ⟨6, 13⟩, ⟨2, 12⟩, ⟨42, 27⟩, ⟨38, 26⟩, ⟨34, 25⟩, ⟨30, 24⟩, ⟨26, 23⟩, ⟨22, 22⟩, ⟨19, 16⟩, ⟨15, 15⟩, ⟨11, 14⟩, ⟨7, 13⟩, ⟨3, 12⟩, ⟨39, 26⟩, ⟨35, 25⟩, ⟨31, 24⟩, ⟨27, 23⟩, ⟨23, 22⟩, ⟨20, 16⟩, ⟨16, 15⟩, ⟨12, 14⟩, ⟨8, 13⟩, ⟨4, 12⟩, ⟨40, 26⟩, ⟨36, 25⟩, ⟨32, 24⟩, ⟨28, 23⟩, ⟨24, 22⟩, ⟨21, 16⟩, ⟨17, 15⟩, ⟨13, 14⟩, ⟨9, 13⟩, ⟨5, 12⟩, ⟨1, 11⟩, ⟨41, 26⟩, ⟨37, 25⟩, ⟨33, 24⟩, ⟨29, 23⟩]⟩
theorem profile0703_checked : profile0703.check := by decide +kernel

noncomputable def selection1_0703 : Selection :=
  ⟨1, 0, 4, (919/50), 131, -462, 1972⟩
theorem selection1_0703_checked : selection1_0703.check profile0703 := by decide +kernel

noncomputable def selection2_0703 : Selection :=
  ⟨2, -8, 8, 18, 40, -498, 2340⟩
theorem selection2_0703_checked : selection2_0703.check profile0703 := by decide +kernel

noncomputable def leaf1_0640 : Block :=
  Block.single profile0640 selection1_0640 profile0640_checked selection1_0640_checked
noncomputable def leaf1_0641 : Block :=
  Block.single profile0641 selection1_0641 profile0641_checked selection1_0641_checked
noncomputable def leaf1_0642 : Block :=
  Block.single profile0642 selection1_0642 profile0642_checked selection1_0642_checked
noncomputable def leaf1_0643 : Block :=
  Block.single profile0643 selection1_0643 profile0643_checked selection1_0643_checked
noncomputable def leaf1_0644 : Block :=
  Block.single profile0644 selection1_0644 profile0644_checked selection1_0644_checked
noncomputable def leaf1_0645 : Block :=
  Block.single profile0645 selection1_0645 profile0645_checked selection1_0645_checked
noncomputable def leaf1_0646 : Block :=
  Block.single profile0646 selection1_0646 profile0646_checked selection1_0646_checked
noncomputable def leaf1_0647 : Block :=
  Block.single profile0647 selection1_0647 profile0647_checked selection1_0647_checked
noncomputable def leaf1_0648 : Block :=
  Block.single profile0648 selection1_0648 profile0648_checked selection1_0648_checked
noncomputable def leaf1_0649 : Block :=
  Block.single profile0649 selection1_0649 profile0649_checked selection1_0649_checked
noncomputable def leaf1_0650 : Block :=
  Block.single profile0650 selection1_0650 profile0650_checked selection1_0650_checked
noncomputable def leaf1_0651 : Block :=
  Block.single profile0651 selection1_0651 profile0651_checked selection1_0651_checked
noncomputable def leaf1_0652 : Block :=
  Block.single profile0652 selection1_0652 profile0652_checked selection1_0652_checked
noncomputable def leaf1_0653 : Block :=
  Block.single profile0653 selection1_0653 profile0653_checked selection1_0653_checked
noncomputable def leaf1_0654 : Block :=
  Block.single profile0654 selection1_0654 profile0654_checked selection1_0654_checked
noncomputable def leaf1_0655 : Block :=
  Block.single profile0655 selection1_0655 profile0655_checked selection1_0655_checked
noncomputable def leaf1_0656 : Block :=
  Block.single profile0656 selection1_0656 profile0656_checked selection1_0656_checked
noncomputable def leaf1_0657 : Block :=
  Block.single profile0657 selection1_0657 profile0657_checked selection1_0657_checked
noncomputable def leaf1_0658 : Block :=
  Block.single profile0658 selection1_0658 profile0658_checked selection1_0658_checked
noncomputable def leaf1_0659 : Block :=
  Block.single profile0659 selection1_0659 profile0659_checked selection1_0659_checked
noncomputable def leaf1_0660 : Block :=
  Block.single profile0660 selection1_0660 profile0660_checked selection1_0660_checked
noncomputable def leaf1_0661 : Block :=
  Block.single profile0661 selection1_0661 profile0661_checked selection1_0661_checked
noncomputable def leaf1_0662 : Block :=
  Block.single profile0662 selection1_0662 profile0662_checked selection1_0662_checked
noncomputable def leaf1_0663 : Block :=
  Block.single profile0663 selection1_0663 profile0663_checked selection1_0663_checked
noncomputable def leaf1_0664 : Block :=
  Block.single profile0664 selection1_0664 profile0664_checked selection1_0664_checked
noncomputable def leaf1_0665 : Block :=
  Block.single profile0665 selection1_0665 profile0665_checked selection1_0665_checked
noncomputable def leaf1_0666 : Block :=
  Block.single profile0666 selection1_0666 profile0666_checked selection1_0666_checked
noncomputable def leaf1_0667 : Block :=
  Block.single profile0667 selection1_0667 profile0667_checked selection1_0667_checked
noncomputable def leaf1_0668 : Block :=
  Block.single profile0668 selection1_0668 profile0668_checked selection1_0668_checked
noncomputable def leaf1_0669 : Block :=
  Block.single profile0669 selection1_0669 profile0669_checked selection1_0669_checked
noncomputable def leaf1_0670 : Block :=
  Block.single profile0670 selection1_0670 profile0670_checked selection1_0670_checked
noncomputable def leaf1_0671 : Block :=
  Block.single profile0671 selection1_0671 profile0671_checked selection1_0671_checked
noncomputable def leaf1_0672 : Block :=
  Block.single profile0672 selection1_0672 profile0672_checked selection1_0672_checked
noncomputable def leaf1_0673 : Block :=
  Block.single profile0673 selection1_0673 profile0673_checked selection1_0673_checked
noncomputable def leaf1_0674 : Block :=
  Block.single profile0674 selection1_0674 profile0674_checked selection1_0674_checked
noncomputable def leaf1_0675 : Block :=
  Block.single profile0675 selection1_0675 profile0675_checked selection1_0675_checked
noncomputable def leaf1_0676 : Block :=
  Block.single profile0676 selection1_0676 profile0676_checked selection1_0676_checked
noncomputable def leaf1_0677 : Block :=
  Block.single profile0677 selection1_0677 profile0677_checked selection1_0677_checked
noncomputable def leaf1_0678 : Block :=
  Block.single profile0678 selection1_0678 profile0678_checked selection1_0678_checked
noncomputable def leaf1_0679 : Block :=
  Block.single profile0679 selection1_0679 profile0679_checked selection1_0679_checked
noncomputable def leaf1_0680 : Block :=
  Block.single profile0680 selection1_0680 profile0680_checked selection1_0680_checked
noncomputable def leaf1_0681 : Block :=
  Block.single profile0681 selection1_0681 profile0681_checked selection1_0681_checked
noncomputable def leaf1_0682 : Block :=
  Block.single profile0682 selection1_0682 profile0682_checked selection1_0682_checked
noncomputable def leaf1_0683 : Block :=
  Block.single profile0683 selection1_0683 profile0683_checked selection1_0683_checked
noncomputable def leaf1_0684 : Block :=
  Block.single profile0684 selection1_0684 profile0684_checked selection1_0684_checked
noncomputable def leaf1_0685 : Block :=
  Block.single profile0685 selection1_0685 profile0685_checked selection1_0685_checked
noncomputable def leaf1_0686 : Block :=
  Block.single profile0686 selection1_0686 profile0686_checked selection1_0686_checked
noncomputable def leaf1_0687 : Block :=
  Block.single profile0687 selection1_0687 profile0687_checked selection1_0687_checked
noncomputable def leaf1_0688 : Block :=
  Block.single profile0688 selection1_0688 profile0688_checked selection1_0688_checked
noncomputable def leaf1_0689 : Block :=
  Block.single profile0689 selection1_0689 profile0689_checked selection1_0689_checked
noncomputable def leaf1_0690 : Block :=
  Block.single profile0690 selection1_0690 profile0690_checked selection1_0690_checked
noncomputable def leaf1_0691 : Block :=
  Block.single profile0691 selection1_0691 profile0691_checked selection1_0691_checked
noncomputable def leaf1_0692 : Block :=
  Block.single profile0692 selection1_0692 profile0692_checked selection1_0692_checked
noncomputable def leaf1_0693 : Block :=
  Block.single profile0693 selection1_0693 profile0693_checked selection1_0693_checked
noncomputable def leaf1_0694 : Block :=
  Block.single profile0694 selection1_0694 profile0694_checked selection1_0694_checked
noncomputable def leaf1_0695 : Block :=
  Block.single profile0695 selection1_0695 profile0695_checked selection1_0695_checked
noncomputable def leaf1_0696 : Block :=
  Block.single profile0696 selection1_0696 profile0696_checked selection1_0696_checked
noncomputable def leaf1_0697 : Block :=
  Block.single profile0697 selection1_0697 profile0697_checked selection1_0697_checked
noncomputable def leaf1_0698 : Block :=
  Block.single profile0698 selection1_0698 profile0698_checked selection1_0698_checked
noncomputable def leaf1_0699 : Block :=
  Block.single profile0699 selection1_0699 profile0699_checked selection1_0699_checked
noncomputable def leaf1_0700 : Block :=
  Block.single profile0700 selection1_0700 profile0700_checked selection1_0700_checked
noncomputable def leaf1_0701 : Block :=
  Block.single profile0701 selection1_0701 profile0701_checked selection1_0701_checked
noncomputable def leaf1_0702 : Block :=
  Block.single profile0702 selection1_0702 profile0702_checked selection1_0702_checked
noncomputable def leaf1_0703 : Block :=
  Block.single profile0703 selection1_0703 profile0703_checked selection1_0703_checked
noncomputable def batch010p1_0_0000 : Block :=
  Block.append leaf1_0640 leaf1_0641 (by decide +kernel)
noncomputable def batch010p1_0_0001 : Block :=
  Block.append leaf1_0642 leaf1_0643 (by decide +kernel)
noncomputable def batch010p1_0_0002 : Block :=
  Block.append leaf1_0644 leaf1_0645 (by decide +kernel)
noncomputable def batch010p1_0_0003 : Block :=
  Block.append leaf1_0646 leaf1_0647 (by decide +kernel)
noncomputable def batch010p1_0_0004 : Block :=
  Block.append leaf1_0648 leaf1_0649 (by decide +kernel)
noncomputable def batch010p1_0_0005 : Block :=
  Block.append leaf1_0650 leaf1_0651 (by decide +kernel)
noncomputable def batch010p1_0_0006 : Block :=
  Block.append leaf1_0652 leaf1_0653 (by decide +kernel)
noncomputable def batch010p1_0_0007 : Block :=
  Block.append leaf1_0654 leaf1_0655 (by decide +kernel)
noncomputable def batch010p1_0_0008 : Block :=
  Block.append leaf1_0656 leaf1_0657 (by decide +kernel)
noncomputable def batch010p1_0_0009 : Block :=
  Block.append leaf1_0658 leaf1_0659 (by decide +kernel)
noncomputable def batch010p1_0_0010 : Block :=
  Block.append leaf1_0660 leaf1_0661 (by decide +kernel)
noncomputable def batch010p1_0_0011 : Block :=
  Block.append leaf1_0662 leaf1_0663 (by decide +kernel)
noncomputable def batch010p1_0_0012 : Block :=
  Block.append leaf1_0664 leaf1_0665 (by decide +kernel)
noncomputable def batch010p1_0_0013 : Block :=
  Block.append leaf1_0666 leaf1_0667 (by decide +kernel)
noncomputable def batch010p1_0_0014 : Block :=
  Block.append leaf1_0668 leaf1_0669 (by decide +kernel)
noncomputable def batch010p1_0_0015 : Block :=
  Block.append leaf1_0670 leaf1_0671 (by decide +kernel)
noncomputable def batch010p1_0_0016 : Block :=
  Block.append leaf1_0672 leaf1_0673 (by decide +kernel)
noncomputable def batch010p1_0_0017 : Block :=
  Block.append leaf1_0674 leaf1_0675 (by decide +kernel)
noncomputable def batch010p1_0_0018 : Block :=
  Block.append leaf1_0676 leaf1_0677 (by decide +kernel)
noncomputable def batch010p1_0_0019 : Block :=
  Block.append leaf1_0678 leaf1_0679 (by decide +kernel)
noncomputable def batch010p1_0_0020 : Block :=
  Block.append leaf1_0680 leaf1_0681 (by decide +kernel)
noncomputable def batch010p1_0_0021 : Block :=
  Block.append leaf1_0682 leaf1_0683 (by decide +kernel)
noncomputable def batch010p1_0_0022 : Block :=
  Block.append leaf1_0684 leaf1_0685 (by decide +kernel)
noncomputable def batch010p1_0_0023 : Block :=
  Block.append leaf1_0686 leaf1_0687 (by decide +kernel)
noncomputable def batch010p1_0_0024 : Block :=
  Block.append leaf1_0688 leaf1_0689 (by decide +kernel)
noncomputable def batch010p1_0_0025 : Block :=
  Block.append leaf1_0690 leaf1_0691 (by decide +kernel)
noncomputable def batch010p1_0_0026 : Block :=
  Block.append leaf1_0692 leaf1_0693 (by decide +kernel)
noncomputable def batch010p1_0_0027 : Block :=
  Block.append leaf1_0694 leaf1_0695 (by decide +kernel)
noncomputable def batch010p1_0_0028 : Block :=
  Block.append leaf1_0696 leaf1_0697 (by decide +kernel)
noncomputable def batch010p1_0_0029 : Block :=
  Block.append leaf1_0698 leaf1_0699 (by decide +kernel)
noncomputable def batch010p1_0_0030 : Block :=
  Block.append leaf1_0700 leaf1_0701 (by decide +kernel)
noncomputable def batch010p1_0_0031 : Block :=
  Block.append leaf1_0702 leaf1_0703 (by decide +kernel)
noncomputable def batch010p1_1_0000 : Block :=
  Block.append batch010p1_0_0000 batch010p1_0_0001 (by decide +kernel)
noncomputable def batch010p1_1_0001 : Block :=
  Block.append batch010p1_0_0002 batch010p1_0_0003 (by decide +kernel)
noncomputable def batch010p1_1_0002 : Block :=
  Block.append batch010p1_0_0004 batch010p1_0_0005 (by decide +kernel)
noncomputable def batch010p1_1_0003 : Block :=
  Block.append batch010p1_0_0006 batch010p1_0_0007 (by decide +kernel)
noncomputable def batch010p1_1_0004 : Block :=
  Block.append batch010p1_0_0008 batch010p1_0_0009 (by decide +kernel)
noncomputable def batch010p1_1_0005 : Block :=
  Block.append batch010p1_0_0010 batch010p1_0_0011 (by decide +kernel)
noncomputable def batch010p1_1_0006 : Block :=
  Block.append batch010p1_0_0012 batch010p1_0_0013 (by decide +kernel)
noncomputable def batch010p1_1_0007 : Block :=
  Block.append batch010p1_0_0014 batch010p1_0_0015 (by decide +kernel)
noncomputable def batch010p1_1_0008 : Block :=
  Block.append batch010p1_0_0016 batch010p1_0_0017 (by decide +kernel)
noncomputable def batch010p1_1_0009 : Block :=
  Block.append batch010p1_0_0018 batch010p1_0_0019 (by decide +kernel)
noncomputable def batch010p1_1_0010 : Block :=
  Block.append batch010p1_0_0020 batch010p1_0_0021 (by decide +kernel)
noncomputable def batch010p1_1_0011 : Block :=
  Block.append batch010p1_0_0022 batch010p1_0_0023 (by decide +kernel)
noncomputable def batch010p1_1_0012 : Block :=
  Block.append batch010p1_0_0024 batch010p1_0_0025 (by decide +kernel)
noncomputable def batch010p1_1_0013 : Block :=
  Block.append batch010p1_0_0026 batch010p1_0_0027 (by decide +kernel)
noncomputable def batch010p1_1_0014 : Block :=
  Block.append batch010p1_0_0028 batch010p1_0_0029 (by decide +kernel)
noncomputable def batch010p1_1_0015 : Block :=
  Block.append batch010p1_0_0030 batch010p1_0_0031 (by decide +kernel)
noncomputable def batch010p1_2_0000 : Block :=
  Block.append batch010p1_1_0000 batch010p1_1_0001 (by decide +kernel)
noncomputable def batch010p1_2_0001 : Block :=
  Block.append batch010p1_1_0002 batch010p1_1_0003 (by decide +kernel)
noncomputable def batch010p1_2_0002 : Block :=
  Block.append batch010p1_1_0004 batch010p1_1_0005 (by decide +kernel)
noncomputable def batch010p1_2_0003 : Block :=
  Block.append batch010p1_1_0006 batch010p1_1_0007 (by decide +kernel)
noncomputable def batch010p1_2_0004 : Block :=
  Block.append batch010p1_1_0008 batch010p1_1_0009 (by decide +kernel)
noncomputable def batch010p1_2_0005 : Block :=
  Block.append batch010p1_1_0010 batch010p1_1_0011 (by decide +kernel)
noncomputable def batch010p1_2_0006 : Block :=
  Block.append batch010p1_1_0012 batch010p1_1_0013 (by decide +kernel)
noncomputable def batch010p1_2_0007 : Block :=
  Block.append batch010p1_1_0014 batch010p1_1_0015 (by decide +kernel)
noncomputable def batch010p1_3_0000 : Block :=
  Block.append batch010p1_2_0000 batch010p1_2_0001 (by decide +kernel)
noncomputable def batch010p1_3_0001 : Block :=
  Block.append batch010p1_2_0002 batch010p1_2_0003 (by decide +kernel)
noncomputable def batch010p1_3_0002 : Block :=
  Block.append batch010p1_2_0004 batch010p1_2_0005 (by decide +kernel)
noncomputable def batch010p1_3_0003 : Block :=
  Block.append batch010p1_2_0006 batch010p1_2_0007 (by decide +kernel)
noncomputable def batch010p1_4_0000 : Block :=
  Block.append batch010p1_3_0000 batch010p1_3_0001 (by decide +kernel)
noncomputable def batch010p1_4_0001 : Block :=
  Block.append batch010p1_3_0002 batch010p1_3_0003 (by decide +kernel)
noncomputable def batch010p1_5_0000 : Block :=
  Block.append batch010p1_4_0000 batch010p1_4_0001 (by decide +kernel)
theorem batch010p1_5_0000_left : batch010p1_5_0000.left = (125/102) := by decide +kernel
theorem batch010p1_5_0000_right : batch010p1_5_0000.right = (121/97) := by decide +kernel
theorem batch010p1_5_0000_units : batch010p1_5_0000.units = 20719 := by decide +kernel
noncomputable def leaf2_0640 : Block :=
  Block.single profile0640 selection2_0640 profile0640_checked selection2_0640_checked
noncomputable def leaf2_0641 : Block :=
  Block.single profile0641 selection2_0641 profile0641_checked selection2_0641_checked
noncomputable def leaf2_0642 : Block :=
  Block.single profile0642 selection2_0642 profile0642_checked selection2_0642_checked
noncomputable def leaf2_0643 : Block :=
  Block.single profile0643 selection2_0643 profile0643_checked selection2_0643_checked
noncomputable def leaf2_0644 : Block :=
  Block.single profile0644 selection2_0644 profile0644_checked selection2_0644_checked
noncomputable def leaf2_0645 : Block :=
  Block.single profile0645 selection2_0645 profile0645_checked selection2_0645_checked
noncomputable def leaf2_0646 : Block :=
  Block.single profile0646 selection2_0646 profile0646_checked selection2_0646_checked
noncomputable def leaf2_0647 : Block :=
  Block.single profile0647 selection2_0647 profile0647_checked selection2_0647_checked
noncomputable def leaf2_0648 : Block :=
  Block.single profile0648 selection2_0648 profile0648_checked selection2_0648_checked
noncomputable def leaf2_0649 : Block :=
  Block.single profile0649 selection2_0649 profile0649_checked selection2_0649_checked
noncomputable def leaf2_0650 : Block :=
  Block.single profile0650 selection2_0650 profile0650_checked selection2_0650_checked
noncomputable def leaf2_0651 : Block :=
  Block.single profile0651 selection2_0651 profile0651_checked selection2_0651_checked
noncomputable def leaf2_0652 : Block :=
  Block.single profile0652 selection2_0652 profile0652_checked selection2_0652_checked
noncomputable def leaf2_0653 : Block :=
  Block.single profile0653 selection2_0653 profile0653_checked selection2_0653_checked
noncomputable def leaf2_0654 : Block :=
  Block.single profile0654 selection2_0654 profile0654_checked selection2_0654_checked
noncomputable def leaf2_0655 : Block :=
  Block.single profile0655 selection2_0655 profile0655_checked selection2_0655_checked
noncomputable def leaf2_0656 : Block :=
  Block.single profile0656 selection2_0656 profile0656_checked selection2_0656_checked
noncomputable def leaf2_0657 : Block :=
  Block.single profile0657 selection2_0657 profile0657_checked selection2_0657_checked
noncomputable def leaf2_0658 : Block :=
  Block.single profile0658 selection2_0658 profile0658_checked selection2_0658_checked
noncomputable def leaf2_0659 : Block :=
  Block.single profile0659 selection2_0659 profile0659_checked selection2_0659_checked
noncomputable def leaf2_0660 : Block :=
  Block.single profile0660 selection2_0660 profile0660_checked selection2_0660_checked
noncomputable def leaf2_0661 : Block :=
  Block.single profile0661 selection2_0661 profile0661_checked selection2_0661_checked
noncomputable def leaf2_0662 : Block :=
  Block.single profile0662 selection2_0662 profile0662_checked selection2_0662_checked
noncomputable def leaf2_0663 : Block :=
  Block.single profile0663 selection2_0663 profile0663_checked selection2_0663_checked
noncomputable def leaf2_0664 : Block :=
  Block.single profile0664 selection2_0664 profile0664_checked selection2_0664_checked
noncomputable def leaf2_0665 : Block :=
  Block.single profile0665 selection2_0665 profile0665_checked selection2_0665_checked
noncomputable def leaf2_0666 : Block :=
  Block.single profile0666 selection2_0666 profile0666_checked selection2_0666_checked
noncomputable def leaf2_0667 : Block :=
  Block.single profile0667 selection2_0667 profile0667_checked selection2_0667_checked
noncomputable def leaf2_0668 : Block :=
  Block.single profile0668 selection2_0668 profile0668_checked selection2_0668_checked
noncomputable def leaf2_0669 : Block :=
  Block.single profile0669 selection2_0669 profile0669_checked selection2_0669_checked
noncomputable def leaf2_0670 : Block :=
  Block.single profile0670 selection2_0670 profile0670_checked selection2_0670_checked
noncomputable def leaf2_0671 : Block :=
  Block.single profile0671 selection2_0671 profile0671_checked selection2_0671_checked
noncomputable def leaf2_0672 : Block :=
  Block.single profile0672 selection2_0672 profile0672_checked selection2_0672_checked
noncomputable def leaf2_0673 : Block :=
  Block.single profile0673 selection2_0673 profile0673_checked selection2_0673_checked
noncomputable def leaf2_0674 : Block :=
  Block.single profile0674 selection2_0674 profile0674_checked selection2_0674_checked
noncomputable def leaf2_0675 : Block :=
  Block.single profile0675 selection2_0675 profile0675_checked selection2_0675_checked
noncomputable def leaf2_0676 : Block :=
  Block.single profile0676 selection2_0676 profile0676_checked selection2_0676_checked
noncomputable def leaf2_0677 : Block :=
  Block.single profile0677 selection2_0677 profile0677_checked selection2_0677_checked
noncomputable def leaf2_0678 : Block :=
  Block.single profile0678 selection2_0678 profile0678_checked selection2_0678_checked
noncomputable def leaf2_0679 : Block :=
  Block.single profile0679 selection2_0679 profile0679_checked selection2_0679_checked
noncomputable def leaf2_0680 : Block :=
  Block.single profile0680 selection2_0680 profile0680_checked selection2_0680_checked
noncomputable def leaf2_0681 : Block :=
  Block.single profile0681 selection2_0681 profile0681_checked selection2_0681_checked
noncomputable def leaf2_0682 : Block :=
  Block.single profile0682 selection2_0682 profile0682_checked selection2_0682_checked
noncomputable def leaf2_0683 : Block :=
  Block.single profile0683 selection2_0683 profile0683_checked selection2_0683_checked
noncomputable def leaf2_0684 : Block :=
  Block.single profile0684 selection2_0684 profile0684_checked selection2_0684_checked
noncomputable def leaf2_0685 : Block :=
  Block.single profile0685 selection2_0685 profile0685_checked selection2_0685_checked
noncomputable def leaf2_0686 : Block :=
  Block.single profile0686 selection2_0686 profile0686_checked selection2_0686_checked
noncomputable def leaf2_0687 : Block :=
  Block.single profile0687 selection2_0687 profile0687_checked selection2_0687_checked
noncomputable def leaf2_0688 : Block :=
  Block.single profile0688 selection2_0688 profile0688_checked selection2_0688_checked
noncomputable def leaf2_0689 : Block :=
  Block.single profile0689 selection2_0689 profile0689_checked selection2_0689_checked
noncomputable def leaf2_0690 : Block :=
  Block.single profile0690 selection2_0690 profile0690_checked selection2_0690_checked
noncomputable def leaf2_0691 : Block :=
  Block.single profile0691 selection2_0691 profile0691_checked selection2_0691_checked
noncomputable def leaf2_0692 : Block :=
  Block.single profile0692 selection2_0692 profile0692_checked selection2_0692_checked
noncomputable def leaf2_0693 : Block :=
  Block.single profile0693 selection2_0693 profile0693_checked selection2_0693_checked
noncomputable def leaf2_0694 : Block :=
  Block.single profile0694 selection2_0694 profile0694_checked selection2_0694_checked
noncomputable def leaf2_0695 : Block :=
  Block.single profile0695 selection2_0695 profile0695_checked selection2_0695_checked
noncomputable def leaf2_0696 : Block :=
  Block.single profile0696 selection2_0696 profile0696_checked selection2_0696_checked
noncomputable def leaf2_0697 : Block :=
  Block.single profile0697 selection2_0697 profile0697_checked selection2_0697_checked
noncomputable def leaf2_0698 : Block :=
  Block.single profile0698 selection2_0698 profile0698_checked selection2_0698_checked
noncomputable def leaf2_0699 : Block :=
  Block.single profile0699 selection2_0699 profile0699_checked selection2_0699_checked
noncomputable def leaf2_0700 : Block :=
  Block.single profile0700 selection2_0700 profile0700_checked selection2_0700_checked
noncomputable def leaf2_0701 : Block :=
  Block.single profile0701 selection2_0701 profile0701_checked selection2_0701_checked
noncomputable def leaf2_0702 : Block :=
  Block.single profile0702 selection2_0702 profile0702_checked selection2_0702_checked
noncomputable def leaf2_0703 : Block :=
  Block.single profile0703 selection2_0703 profile0703_checked selection2_0703_checked
noncomputable def batch010p2_0_0000 : Block :=
  Block.append leaf2_0640 leaf2_0641 (by decide +kernel)
noncomputable def batch010p2_0_0001 : Block :=
  Block.append leaf2_0642 leaf2_0643 (by decide +kernel)
noncomputable def batch010p2_0_0002 : Block :=
  Block.append leaf2_0644 leaf2_0645 (by decide +kernel)
noncomputable def batch010p2_0_0003 : Block :=
  Block.append leaf2_0646 leaf2_0647 (by decide +kernel)
noncomputable def batch010p2_0_0004 : Block :=
  Block.append leaf2_0648 leaf2_0649 (by decide +kernel)
noncomputable def batch010p2_0_0005 : Block :=
  Block.append leaf2_0650 leaf2_0651 (by decide +kernel)
noncomputable def batch010p2_0_0006 : Block :=
  Block.append leaf2_0652 leaf2_0653 (by decide +kernel)
noncomputable def batch010p2_0_0007 : Block :=
  Block.append leaf2_0654 leaf2_0655 (by decide +kernel)
noncomputable def batch010p2_0_0008 : Block :=
  Block.append leaf2_0656 leaf2_0657 (by decide +kernel)
noncomputable def batch010p2_0_0009 : Block :=
  Block.append leaf2_0658 leaf2_0659 (by decide +kernel)
noncomputable def batch010p2_0_0010 : Block :=
  Block.append leaf2_0660 leaf2_0661 (by decide +kernel)
noncomputable def batch010p2_0_0011 : Block :=
  Block.append leaf2_0662 leaf2_0663 (by decide +kernel)
noncomputable def batch010p2_0_0012 : Block :=
  Block.append leaf2_0664 leaf2_0665 (by decide +kernel)
noncomputable def batch010p2_0_0013 : Block :=
  Block.append leaf2_0666 leaf2_0667 (by decide +kernel)
noncomputable def batch010p2_0_0014 : Block :=
  Block.append leaf2_0668 leaf2_0669 (by decide +kernel)
noncomputable def batch010p2_0_0015 : Block :=
  Block.append leaf2_0670 leaf2_0671 (by decide +kernel)
noncomputable def batch010p2_0_0016 : Block :=
  Block.append leaf2_0672 leaf2_0673 (by decide +kernel)
noncomputable def batch010p2_0_0017 : Block :=
  Block.append leaf2_0674 leaf2_0675 (by decide +kernel)
noncomputable def batch010p2_0_0018 : Block :=
  Block.append leaf2_0676 leaf2_0677 (by decide +kernel)
noncomputable def batch010p2_0_0019 : Block :=
  Block.append leaf2_0678 leaf2_0679 (by decide +kernel)
noncomputable def batch010p2_0_0020 : Block :=
  Block.append leaf2_0680 leaf2_0681 (by decide +kernel)
noncomputable def batch010p2_0_0021 : Block :=
  Block.append leaf2_0682 leaf2_0683 (by decide +kernel)
noncomputable def batch010p2_0_0022 : Block :=
  Block.append leaf2_0684 leaf2_0685 (by decide +kernel)
noncomputable def batch010p2_0_0023 : Block :=
  Block.append leaf2_0686 leaf2_0687 (by decide +kernel)
noncomputable def batch010p2_0_0024 : Block :=
  Block.append leaf2_0688 leaf2_0689 (by decide +kernel)
noncomputable def batch010p2_0_0025 : Block :=
  Block.append leaf2_0690 leaf2_0691 (by decide +kernel)
noncomputable def batch010p2_0_0026 : Block :=
  Block.append leaf2_0692 leaf2_0693 (by decide +kernel)
noncomputable def batch010p2_0_0027 : Block :=
  Block.append leaf2_0694 leaf2_0695 (by decide +kernel)
noncomputable def batch010p2_0_0028 : Block :=
  Block.append leaf2_0696 leaf2_0697 (by decide +kernel)
noncomputable def batch010p2_0_0029 : Block :=
  Block.append leaf2_0698 leaf2_0699 (by decide +kernel)
noncomputable def batch010p2_0_0030 : Block :=
  Block.append leaf2_0700 leaf2_0701 (by decide +kernel)
noncomputable def batch010p2_0_0031 : Block :=
  Block.append leaf2_0702 leaf2_0703 (by decide +kernel)
noncomputable def batch010p2_1_0000 : Block :=
  Block.append batch010p2_0_0000 batch010p2_0_0001 (by decide +kernel)
noncomputable def batch010p2_1_0001 : Block :=
  Block.append batch010p2_0_0002 batch010p2_0_0003 (by decide +kernel)
noncomputable def batch010p2_1_0002 : Block :=
  Block.append batch010p2_0_0004 batch010p2_0_0005 (by decide +kernel)
noncomputable def batch010p2_1_0003 : Block :=
  Block.append batch010p2_0_0006 batch010p2_0_0007 (by decide +kernel)
noncomputable def batch010p2_1_0004 : Block :=
  Block.append batch010p2_0_0008 batch010p2_0_0009 (by decide +kernel)
noncomputable def batch010p2_1_0005 : Block :=
  Block.append batch010p2_0_0010 batch010p2_0_0011 (by decide +kernel)
noncomputable def batch010p2_1_0006 : Block :=
  Block.append batch010p2_0_0012 batch010p2_0_0013 (by decide +kernel)
noncomputable def batch010p2_1_0007 : Block :=
  Block.append batch010p2_0_0014 batch010p2_0_0015 (by decide +kernel)
noncomputable def batch010p2_1_0008 : Block :=
  Block.append batch010p2_0_0016 batch010p2_0_0017 (by decide +kernel)
noncomputable def batch010p2_1_0009 : Block :=
  Block.append batch010p2_0_0018 batch010p2_0_0019 (by decide +kernel)
noncomputable def batch010p2_1_0010 : Block :=
  Block.append batch010p2_0_0020 batch010p2_0_0021 (by decide +kernel)
noncomputable def batch010p2_1_0011 : Block :=
  Block.append batch010p2_0_0022 batch010p2_0_0023 (by decide +kernel)
noncomputable def batch010p2_1_0012 : Block :=
  Block.append batch010p2_0_0024 batch010p2_0_0025 (by decide +kernel)
noncomputable def batch010p2_1_0013 : Block :=
  Block.append batch010p2_0_0026 batch010p2_0_0027 (by decide +kernel)
noncomputable def batch010p2_1_0014 : Block :=
  Block.append batch010p2_0_0028 batch010p2_0_0029 (by decide +kernel)
noncomputable def batch010p2_1_0015 : Block :=
  Block.append batch010p2_0_0030 batch010p2_0_0031 (by decide +kernel)
noncomputable def batch010p2_2_0000 : Block :=
  Block.append batch010p2_1_0000 batch010p2_1_0001 (by decide +kernel)
noncomputable def batch010p2_2_0001 : Block :=
  Block.append batch010p2_1_0002 batch010p2_1_0003 (by decide +kernel)
noncomputable def batch010p2_2_0002 : Block :=
  Block.append batch010p2_1_0004 batch010p2_1_0005 (by decide +kernel)
noncomputable def batch010p2_2_0003 : Block :=
  Block.append batch010p2_1_0006 batch010p2_1_0007 (by decide +kernel)
noncomputable def batch010p2_2_0004 : Block :=
  Block.append batch010p2_1_0008 batch010p2_1_0009 (by decide +kernel)
noncomputable def batch010p2_2_0005 : Block :=
  Block.append batch010p2_1_0010 batch010p2_1_0011 (by decide +kernel)
noncomputable def batch010p2_2_0006 : Block :=
  Block.append batch010p2_1_0012 batch010p2_1_0013 (by decide +kernel)
noncomputable def batch010p2_2_0007 : Block :=
  Block.append batch010p2_1_0014 batch010p2_1_0015 (by decide +kernel)
noncomputable def batch010p2_3_0000 : Block :=
  Block.append batch010p2_2_0000 batch010p2_2_0001 (by decide +kernel)
noncomputable def batch010p2_3_0001 : Block :=
  Block.append batch010p2_2_0002 batch010p2_2_0003 (by decide +kernel)
noncomputable def batch010p2_3_0002 : Block :=
  Block.append batch010p2_2_0004 batch010p2_2_0005 (by decide +kernel)
noncomputable def batch010p2_3_0003 : Block :=
  Block.append batch010p2_2_0006 batch010p2_2_0007 (by decide +kernel)
noncomputable def batch010p2_4_0000 : Block :=
  Block.append batch010p2_3_0000 batch010p2_3_0001 (by decide +kernel)
noncomputable def batch010p2_4_0001 : Block :=
  Block.append batch010p2_3_0002 batch010p2_3_0003 (by decide +kernel)
noncomputable def batch010p2_5_0000 : Block :=
  Block.append batch010p2_4_0000 batch010p2_4_0001 (by decide +kernel)
theorem batch010p2_5_0000_left : batch010p2_5_0000.left = (227/102) := by decide +kernel
theorem batch010p2_5_0000_right : batch010p2_5_0000.right = (218/97) := by decide +kernel
theorem batch010p2_5_0000_units : batch010p2_5_0000.units = 6259 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
