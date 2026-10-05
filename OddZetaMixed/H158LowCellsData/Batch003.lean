import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile0192 : ProfileCell :=
  ⟨(2/29), (7/101),
    [3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨11, 4⟩, ⟨34, 7⟩, ⟨12, 4⟩, ⟨35, 7⟩, ⟨13, 4⟩, ⟨36, 7⟩, ⟨14, 4⟩, ⟨22, 6⟩, ⟨37, 7⟩, ⟨15, 4⟩, ⟨23, 6⟩, ⟨1, 3⟩, ⟨38, 7⟩, ⟨16, 4⟩, ⟨24, 6⟩, ⟨2, 3⟩, ⟨39, 7⟩, ⟨17, 4⟩, ⟨25, 6⟩, ⟨3, 3⟩, ⟨40, 7⟩, ⟨18, 4⟩, ⟨26, 6⟩, ⟨4, 3⟩, ⟨41, 7⟩, ⟨19, 4⟩, ⟨27, 6⟩, ⟨5, 3⟩, ⟨42, 7⟩, ⟨20, 4⟩, ⟨28, 6⟩, ⟨6, 3⟩, ⟨21, 4⟩, ⟨29, 6⟩, ⟨7, 3⟩, ⟨30, 6⟩, ⟨8, 3⟩, ⟨31, 6⟩, ⟨9, 3⟩, ⟨32, 6⟩, ⟨43, 10⟩, ⟨10, 3⟩, ⟨33, 6⟩]⟩
theorem profile0192_checked : profile0192.check := by decide +kernel

noncomputable def selection1_0192 : Selection :=
  ⟨1, 0, 4, (378/25), 452, 49, -448⟩
theorem selection1_0192_checked : selection1_0192.check profile0192 := by decide +kernel

noncomputable def selection2_0192 : Selection :=
  ⟨2, -8, 8, (1491/100), 119, 73, -80⟩
theorem selection2_0192_checked : selection2_0192.check profile0192 := by decide +kernel

noncomputable def profile0193 : ProfileCell :=
  ⟨(7/101), (11/158),
    [3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨33, 7⟩, ⟨11, 4⟩, ⟨34, 7⟩, ⟨12, 4⟩, ⟨35, 7⟩, ⟨13, 4⟩, ⟨36, 7⟩, ⟨14, 4⟩, ⟨22, 6⟩, ⟨37, 7⟩, ⟨15, 4⟩, ⟨23, 6⟩, ⟨1, 3⟩, ⟨38, 7⟩, ⟨16, 4⟩, ⟨24, 6⟩, ⟨2, 3⟩, ⟨39, 7⟩, ⟨17, 4⟩, ⟨25, 6⟩, ⟨3, 3⟩, ⟨40, 7⟩, ⟨18, 4⟩, ⟨26, 6⟩, ⟨4, 3⟩, ⟨41, 7⟩, ⟨19, 4⟩, ⟨27, 6⟩, ⟨5, 3⟩, ⟨42, 7⟩, ⟨20, 4⟩, ⟨28, 6⟩, ⟨6, 3⟩, ⟨21, 4⟩, ⟨29, 6⟩, ⟨7, 3⟩, ⟨30, 6⟩, ⟨8, 3⟩, ⟨31, 6⟩, ⟨9, 3⟩, ⟨32, 6⟩, ⟨10, 3⟩, ⟨43, 10⟩]⟩
theorem profile0193_checked : profile0193.check := by decide +kernel

noncomputable def selection1_0193 : Selection :=
  ⟨1, 0, 4, (301/20), 413, 91, -1054⟩
theorem selection1_0193_checked : selection1_0193.check profile0193 := by decide +kernel

noncomputable def selection2_0193 : Selection :=
  ⟨2, -8, 8, (1491/100), 110, 115, -686⟩
theorem selection2_0193_checked : selection2_0193.check profile0193 := by decide +kernel

noncomputable def profile0194 : ProfileCell :=
  ⟨(11/158), (3/43),
    [3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨43, 11⟩, ⟨33, 7⟩, ⟨11, 4⟩, ⟨34, 7⟩, ⟨12, 4⟩, ⟨35, 7⟩, ⟨13, 4⟩, ⟨36, 7⟩, ⟨14, 4⟩, ⟨22, 6⟩, ⟨37, 7⟩, ⟨15, 4⟩, ⟨23, 6⟩, ⟨1, 3⟩, ⟨38, 7⟩, ⟨16, 4⟩, ⟨24, 6⟩, ⟨2, 3⟩, ⟨39, 7⟩, ⟨17, 4⟩, ⟨25, 6⟩, ⟨3, 3⟩, ⟨40, 7⟩, ⟨18, 4⟩, ⟨26, 6⟩, ⟨4, 3⟩, ⟨41, 7⟩, ⟨19, 4⟩, ⟨27, 6⟩, ⟨5, 3⟩, ⟨42, 7⟩, ⟨20, 4⟩, ⟨28, 6⟩, ⟨6, 3⟩, ⟨21, 4⟩, ⟨29, 6⟩, ⟨7, 3⟩, ⟨30, 6⟩, ⟨8, 3⟩, ⟨31, 6⟩, ⟨9, 3⟩, ⟨32, 6⟩, ⟨10, 3⟩]⟩
theorem profile0194_checked : profile0194.check := by decide +kernel

noncomputable def selection1_0194 : Selection :=
  ⟨1, 0, 4, (374/25), 193, -52, 1000⟩
theorem selection1_0194_checked : selection1_0194.check profile0194 := by decide +kernel

noncomputable def selection2_0194 : Selection :=
  ⟨2, -8, 8, (149/10), 52, -28, 1368⟩
theorem selection2_0194_checked : selection2_0194.check profile0194 := by decide +kernel

noncomputable def profile0195 : ProfileCell :=
  ⟨(3/43), (7/100),
    [3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨43, 11⟩, ⟨11, 4⟩, ⟨33, 7⟩, ⟨12, 4⟩, ⟨34, 7⟩, ⟨13, 4⟩, ⟨35, 7⟩, ⟨14, 4⟩, ⟨36, 7⟩, ⟨22, 6⟩, ⟨15, 4⟩, ⟨37, 7⟩, ⟨1, 3⟩, ⟨23, 6⟩, ⟨16, 4⟩, ⟨38, 7⟩, ⟨2, 3⟩, ⟨24, 6⟩, ⟨17, 4⟩, ⟨39, 7⟩, ⟨3, 3⟩, ⟨25, 6⟩, ⟨18, 4⟩, ⟨40, 7⟩, ⟨4, 3⟩, ⟨26, 6⟩, ⟨19, 4⟩, ⟨41, 7⟩, ⟨5, 3⟩, ⟨27, 6⟩, ⟨20, 4⟩, ⟨42, 7⟩, ⟨6, 3⟩, ⟨28, 6⟩, ⟨21, 4⟩, ⟨7, 3⟩, ⟨29, 6⟩, ⟨8, 3⟩, ⟨30, 6⟩, ⟨9, 3⟩, ⟨31, 6⟩, ⟨10, 3⟩, ⟨32, 6⟩]⟩
theorem profile0195_checked : profile0195.check := by decide +kernel

noncomputable def selection1_0195 : Selection :=
  ⟨1, 0, 4, (1511/100), 307, -76, 1344⟩
theorem selection1_0195_checked : selection1_0195.check profile0195 := by decide +kernel

noncomputable def selection2_0195 : Selection :=
  ⟨2, -8, 8, 15, 82, -52, 1712⟩
theorem selection2_0195_checked : selection2_0195.check profile0195 := by decide +kernel

noncomputable def profile0196 : ProfileCell :=
  ⟨(7/100), (4/57),
    [3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨32, 7⟩, ⟨11, 4⟩, ⟨43, 11⟩, ⟨33, 7⟩, ⟨12, 4⟩, ⟨34, 7⟩, ⟨13, 4⟩, ⟨35, 7⟩, ⟨14, 4⟩, ⟨36, 7⟩, ⟨22, 6⟩, ⟨15, 4⟩, ⟨37, 7⟩, ⟨1, 3⟩, ⟨23, 6⟩, ⟨16, 4⟩, ⟨38, 7⟩, ⟨2, 3⟩, ⟨24, 6⟩, ⟨17, 4⟩, ⟨39, 7⟩, ⟨3, 3⟩, ⟨25, 6⟩, ⟨18, 4⟩, ⟨40, 7⟩, ⟨4, 3⟩, ⟨26, 6⟩, ⟨19, 4⟩, ⟨41, 7⟩, ⟨5, 3⟩, ⟨27, 6⟩, ⟨20, 4⟩, ⟨42, 7⟩, ⟨6, 3⟩, ⟨28, 6⟩, ⟨21, 4⟩, ⟨7, 3⟩, ⟨29, 6⟩, ⟨8, 3⟩, ⟨30, 6⟩, ⟨9, 3⟩, ⟨31, 6⟩, ⟨10, 3⟩]⟩
theorem profile0196_checked : profile0196.check := by decide +kernel

noncomputable def selection1_0196 : Selection :=
  ⟨1, 0, 4, (1517/100), 233, -34, 744⟩
theorem selection1_0196_checked : selection1_0196.check profile0196 := by decide +kernel

noncomputable def selection2_0196 : Selection :=
  ⟨2, -8, 8, (301/20), 62, -10, 1112⟩
theorem selection2_0196_checked : selection2_0196.check profile0196 := by decide +kernel

noncomputable def profile0197 : ProfileCell :=
  ⟨(4/57), (7/99),
    [3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨10, 4⟩, ⟨32, 7⟩, ⟨11, 4⟩, ⟨33, 7⟩, ⟨43, 11⟩, ⟨12, 4⟩, ⟨34, 7⟩, ⟨13, 4⟩, ⟨35, 7⟩, ⟨14, 4⟩, ⟨36, 7⟩, ⟨22, 6⟩, ⟨15, 4⟩, ⟨1, 3⟩, ⟨37, 7⟩, ⟨23, 6⟩, ⟨16, 4⟩, ⟨2, 3⟩, ⟨38, 7⟩, ⟨24, 6⟩, ⟨17, 4⟩, ⟨3, 3⟩, ⟨39, 7⟩, ⟨25, 6⟩, ⟨18, 4⟩, ⟨4, 3⟩, ⟨40, 7⟩, ⟨26, 6⟩, ⟨19, 4⟩, ⟨5, 3⟩, ⟨41, 7⟩, ⟨27, 6⟩, ⟨20, 4⟩, ⟨6, 3⟩, ⟨42, 7⟩, ⟨28, 6⟩, ⟨21, 4⟩, ⟨7, 3⟩, ⟨29, 6⟩, ⟨8, 3⟩, ⟨30, 6⟩, ⟨9, 3⟩, ⟨31, 6⟩]⟩
theorem profile0197_checked : profile0197.check := by decide +kernel

noncomputable def selection1_0197 : Selection :=
  ⟨1, 0, 4, (388/25), 721, -82, 1428⟩
theorem selection1_0197_checked : selection1_0197.check profile0197 := by decide +kernel

noncomputable def selection2_0197 : Selection :=
  ⟨2, -8, 8, (382/25), 190, -58, 1796⟩
theorem selection2_0197_checked : selection2_0197.check profile0197 := by decide +kernel

noncomputable def profile0198 : ProfileCell :=
  ⟨(7/99), (1/14),
    [3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨31, 7⟩, ⟨10, 4⟩, ⟨32, 7⟩, ⟨11, 4⟩, ⟨33, 7⟩, ⟨12, 4⟩, ⟨43, 11⟩, ⟨34, 7⟩, ⟨13, 4⟩, ⟨35, 7⟩, ⟨14, 4⟩, ⟨36, 7⟩, ⟨22, 6⟩, ⟨15, 4⟩, ⟨1, 3⟩, ⟨37, 7⟩, ⟨23, 6⟩, ⟨16, 4⟩, ⟨2, 3⟩, ⟨38, 7⟩, ⟨24, 6⟩, ⟨17, 4⟩, ⟨3, 3⟩, ⟨39, 7⟩, ⟨25, 6⟩, ⟨18, 4⟩, ⟨4, 3⟩, ⟨40, 7⟩, ⟨26, 6⟩, ⟨19, 4⟩, ⟨5, 3⟩, ⟨41, 7⟩, ⟨27, 6⟩, ⟨20, 4⟩, ⟨6, 3⟩, ⟨42, 7⟩, ⟨28, 6⟩, ⟨21, 4⟩, ⟨7, 3⟩, ⟨29, 6⟩, ⟨8, 3⟩, ⟨30, 6⟩, ⟨9, 3⟩]⟩
theorem profile0198_checked : profile0198.check := by decide +kernel

noncomputable def selection1_0198 : Selection :=
  ⟨1, 0, 4, (79/5), 994, -40, 834⟩
theorem selection1_0198_checked : selection1_0198.check profile0198 := by decide +kernel

noncomputable def selection2_0198 : Selection :=
  ⟨2, -8, 8, (1549/100), 261, -16, 1202⟩
theorem selection2_0198_checked : selection2_0198.check profile0198 := by decide +kernel

noncomputable def profile0199 : ProfileCell :=
  ⟨(1/14), (7/97),
    [3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨9, 4⟩, ⟨30, 7⟩, ⟨10, 4⟩, ⟨31, 7⟩, ⟨11, 4⟩, ⟨32, 7⟩, ⟨12, 4⟩, ⟨33, 7⟩, ⟨13, 4⟩, ⟨34, 7⟩, ⟨43, 11⟩, ⟨14, 4⟩, ⟨35, 7⟩, ⟨1, 3⟩, ⟨15, 4⟩, ⟨22, 6⟩, ⟨36, 7⟩, ⟨2, 3⟩, ⟨16, 4⟩, ⟨23, 6⟩, ⟨37, 7⟩, ⟨3, 3⟩, ⟨17, 4⟩, ⟨24, 6⟩, ⟨38, 7⟩, ⟨4, 3⟩, ⟨18, 4⟩, ⟨25, 6⟩, ⟨39, 7⟩, ⟨5, 3⟩, ⟨19, 4⟩, ⟨26, 6⟩, ⟨40, 7⟩, ⟨6, 3⟩, ⟨20, 4⟩, ⟨27, 6⟩, ⟨41, 7⟩, ⟨7, 3⟩, ⟨21, 4⟩, ⟨28, 6⟩, ⟨42, 7⟩, ⟨8, 3⟩, ⟨29, 6⟩]⟩
theorem profile0199_checked : profile0199.check := by decide +kernel

noncomputable def selection1_0199 : Selection :=
  ⟨1, -2, 4, (1221/100), 783, -65, 1184⟩
theorem selection1_0199_checked : selection1_0199.check profile0199 := by decide +kernel

noncomputable def selection2_0199 : Selection :=
  ⟨2, -10, 8, (294/25), 202, -41, 1552⟩
theorem selection2_0199_checked : selection2_0199.check profile0199 := by decide +kernel

noncomputable def profile0200 : ProfileCell :=
  ⟨(7/97), (4/55),
    [3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨29, 7⟩, ⟨9, 4⟩, ⟨30, 7⟩, ⟨10, 4⟩, ⟨31, 7⟩, ⟨11, 4⟩, ⟨32, 7⟩, ⟨12, 4⟩, ⟨33, 7⟩, ⟨13, 4⟩, ⟨34, 7⟩, ⟨14, 4⟩, ⟨43, 11⟩, ⟨35, 7⟩, ⟨1, 3⟩, ⟨15, 4⟩, ⟨22, 6⟩, ⟨36, 7⟩, ⟨2, 3⟩, ⟨16, 4⟩, ⟨23, 6⟩, ⟨37, 7⟩, ⟨3, 3⟩, ⟨17, 4⟩, ⟨24, 6⟩, ⟨38, 7⟩, ⟨4, 3⟩, ⟨18, 4⟩, ⟨25, 6⟩, ⟨39, 7⟩, ⟨5, 3⟩, ⟨19, 4⟩, ⟨26, 6⟩, ⟨40, 7⟩, ⟨6, 3⟩, ⟨20, 4⟩, ⟨27, 6⟩, ⟨41, 7⟩, ⟨7, 3⟩, ⟨21, 4⟩, ⟨28, 6⟩, ⟨42, 7⟩, ⟨8, 3⟩]⟩
theorem profile0200_checked : profile0200.check := by decide +kernel

noncomputable def selection1_0200 : Selection :=
  ⟨1, -2, 4, (621/50), 608, -37, 796⟩
theorem selection1_0200_checked : selection1_0200.check profile0200 := by decide +kernel

noncomputable def selection2_0200 : Selection :=
  ⟨2, -10, 8, (298/25), 157, -13, 1164⟩
theorem selection2_0200_checked : selection2_0200.check profile0200 := by decide +kernel

noncomputable def profile0201 : ProfileCell :=
  ⟨(4/55), (7/96),
    [3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨8, 4⟩, ⟨42, 8⟩, ⟨29, 7⟩, ⟨9, 4⟩, ⟨30, 7⟩, ⟨10, 4⟩, ⟨31, 7⟩, ⟨11, 4⟩, ⟨32, 7⟩, ⟨12, 4⟩, ⟨33, 7⟩, ⟨13, 4⟩, ⟨34, 7⟩, ⟨14, 4⟩, ⟨1, 3⟩, ⟨35, 7⟩, ⟨43, 11⟩, ⟨15, 4⟩, ⟨22, 6⟩, ⟨2, 3⟩, ⟨36, 7⟩, ⟨16, 4⟩, ⟨23, 6⟩, ⟨3, 3⟩, ⟨37, 7⟩, ⟨17, 4⟩, ⟨24, 6⟩, ⟨4, 3⟩, ⟨38, 7⟩, ⟨18, 4⟩, ⟨25, 6⟩, ⟨5, 3⟩, ⟨39, 7⟩, ⟨19, 4⟩, ⟨26, 6⟩, ⟨6, 3⟩, ⟨40, 7⟩, ⟨20, 4⟩, ⟨27, 6⟩, ⟨7, 3⟩, ⟨41, 7⟩, ⟨21, 4⟩, ⟨28, 6⟩]⟩
theorem profile0201_checked : profile0201.check := by decide +kernel

noncomputable def selection1_0201 : Selection :=
  ⟨1, -2, 4, (25/2), 206, -45, 906⟩
theorem selection1_0201_checked : selection1_0201.check profile0201 := by decide +kernel

noncomputable def selection2_0201 : Selection :=
  ⟨2, -10, 8, (599/50), 53, -21, 1274⟩
theorem selection2_0201_checked : selection2_0201.check profile0201 := by decide +kernel

noncomputable def profile0202 : ProfileCell :=
  ⟨(7/96), (3/41),
    [3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨28, 7⟩, ⟨8, 4⟩, ⟨42, 8⟩, ⟨29, 7⟩, ⟨9, 4⟩, ⟨30, 7⟩, ⟨10, 4⟩, ⟨31, 7⟩, ⟨11, 4⟩, ⟨32, 7⟩, ⟨12, 4⟩, ⟨33, 7⟩, ⟨13, 4⟩, ⟨34, 7⟩, ⟨14, 4⟩, ⟨1, 3⟩, ⟨35, 7⟩, ⟨15, 4⟩, ⟨43, 11⟩, ⟨22, 6⟩, ⟨2, 3⟩, ⟨36, 7⟩, ⟨16, 4⟩, ⟨23, 6⟩, ⟨3, 3⟩, ⟨37, 7⟩, ⟨17, 4⟩, ⟨24, 6⟩, ⟨4, 3⟩, ⟨38, 7⟩, ⟨18, 4⟩, ⟨25, 6⟩, ⟨5, 3⟩, ⟨39, 7⟩, ⟨19, 4⟩, ⟨26, 6⟩, ⟨6, 3⟩, ⟨40, 7⟩, ⟨20, 4⟩, ⟨27, 6⟩, ⟨7, 3⟩, ⟨41, 7⟩, ⟨21, 4⟩]⟩
theorem profile0202_checked : profile0202.check := by decide +kernel

noncomputable def selection1_0202 : Selection :=
  ⟨1, -2, 4, (627/50), 277, -3, 330⟩
theorem selection1_0202_checked : selection1_0202.check profile0202 := by decide +kernel

noncomputable def selection2_0202 : Selection :=
  ⟨2, -10, 8, (601/50), 72, 21, 698⟩
theorem selection2_0202_checked : selection2_0202.check profile0202 := by decide +kernel

noncomputable def profile0203 : ProfileCell :=
  ⟨(3/41), (8/109),
    [3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨8, 4⟩, ⟨28, 7⟩, ⟨42, 8⟩, ⟨9, 4⟩, ⟨29, 7⟩, ⟨10, 4⟩, ⟨30, 7⟩, ⟨11, 4⟩, ⟨31, 7⟩, ⟨12, 4⟩, ⟨32, 7⟩, ⟨13, 4⟩, ⟨33, 7⟩, ⟨14, 4⟩, ⟨34, 7⟩, ⟨1, 3⟩, ⟨15, 4⟩, ⟨35, 7⟩, ⟨43, 11⟩, ⟨2, 3⟩, ⟨22, 6⟩, ⟨16, 4⟩, ⟨36, 7⟩, ⟨3, 3⟩, ⟨23, 6⟩, ⟨17, 4⟩, ⟨37, 7⟩, ⟨4, 3⟩, ⟨24, 6⟩, ⟨18, 4⟩, ⟨38, 7⟩, ⟨5, 3⟩, ⟨25, 6⟩, ⟨19, 4⟩, ⟨39, 7⟩, ⟨6, 3⟩, ⟨26, 6⟩, ⟨20, 4⟩, ⟨40, 7⟩, ⟨7, 3⟩, ⟨27, 6⟩, ⟨21, 4⟩, ⟨41, 7⟩]⟩
theorem profile0203_checked : profile0203.check := by decide +kernel

noncomputable def selection1_0203 : Selection :=
  ⟨1, -2, 4, (629/50), 245, -9, 412⟩
theorem selection1_0203_checked : selection1_0203.check profile0203 := by decide +kernel

noncomputable def selection2_0203 : Selection :=
  ⟨2, -10, 8, (603/50), 63, 15, 780⟩
theorem selection2_0203_checked : selection2_0203.check profile0203 := by decide +kernel

noncomputable def profile0204 : ProfileCell :=
  ⟨(8/109), (5/68),
    [3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨41, 8⟩, ⟨8, 4⟩, ⟨28, 7⟩, ⟨42, 8⟩, ⟨9, 4⟩, ⟨29, 7⟩, ⟨10, 4⟩, ⟨30, 7⟩, ⟨11, 4⟩, ⟨31, 7⟩, ⟨12, 4⟩, ⟨32, 7⟩, ⟨13, 4⟩, ⟨33, 7⟩, ⟨14, 4⟩, ⟨34, 7⟩, ⟨1, 3⟩, ⟨15, 4⟩, ⟨35, 7⟩, ⟨2, 3⟩, ⟨43, 11⟩, ⟨22, 6⟩, ⟨16, 4⟩, ⟨36, 7⟩, ⟨3, 3⟩, ⟨23, 6⟩, ⟨17, 4⟩, ⟨37, 7⟩, ⟨4, 3⟩, ⟨24, 6⟩, ⟨18, 4⟩, ⟨38, 7⟩, ⟨5, 3⟩, ⟨25, 6⟩, ⟨19, 4⟩, ⟨39, 7⟩, ⟨6, 3⟩, ⟨26, 6⟩, ⟨20, 4⟩, ⟨40, 7⟩, ⟨7, 3⟩, ⟨27, 6⟩, ⟨21, 4⟩]⟩
theorem profile0204_checked : profile0204.check := by decide +kernel

noncomputable def selection1_0204 : Selection :=
  ⟨1, -2, 4, (629/50), 148, 23, -24⟩
theorem selection1_0204_checked : selection1_0204.check profile0204 := by decide +kernel

noncomputable def selection2_0204 : Selection :=
  ⟨2, -10, 8, (302/25), 38, 47, 344⟩
theorem selection2_0204_checked : selection2_0204.check profile0204 := by decide +kernel

noncomputable def profile0205 : ProfileCell :=
  ⟨(5/68), (7/95),
    [3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨21, 5⟩, ⟨41, 8⟩, ⟨8, 4⟩, ⟨28, 7⟩, ⟨42, 8⟩, ⟨9, 4⟩, ⟨29, 7⟩, ⟨10, 4⟩, ⟨30, 7⟩, ⟨11, 4⟩, ⟨31, 7⟩, ⟨12, 4⟩, ⟨32, 7⟩, ⟨13, 4⟩, ⟨33, 7⟩, ⟨14, 4⟩, ⟨34, 7⟩, ⟨1, 3⟩, ⟨15, 4⟩, ⟨35, 7⟩, ⟨2, 3⟩, ⟨22, 6⟩, ⟨43, 11⟩, ⟨16, 4⟩, ⟨36, 7⟩, ⟨3, 3⟩, ⟨23, 6⟩, ⟨17, 4⟩, ⟨37, 7⟩, ⟨4, 3⟩, ⟨24, 6⟩, ⟨18, 4⟩, ⟨38, 7⟩, ⟨5, 3⟩, ⟨25, 6⟩, ⟨19, 4⟩, ⟨39, 7⟩, ⟨6, 3⟩, ⟨26, 6⟩, ⟨20, 4⟩, ⟨40, 7⟩, ⟨7, 3⟩, ⟨27, 6⟩]⟩
theorem profile0205_checked : profile0205.check := by decide +kernel

noncomputable def selection1_0205 : Selection :=
  ⟨1, -2, 4, (63/5), 170, 3, 248⟩
theorem selection1_0205_checked : selection1_0205.check profile0205 := by decide +kernel

noncomputable def selection2_0205 : Selection :=
  ⟨2, -10, 8, (121/10), 44, 27, 616⟩
theorem selection2_0205_checked : selection2_0205.check profile0205 := by decide +kernel

noncomputable def profile0206 : ProfileCell :=
  ⟨(7/95), (2/27),
    [3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨27, 7⟩, ⟨21, 5⟩, ⟨41, 8⟩, ⟨8, 4⟩, ⟨28, 7⟩, ⟨42, 8⟩, ⟨9, 4⟩, ⟨29, 7⟩, ⟨10, 4⟩, ⟨30, 7⟩, ⟨11, 4⟩, ⟨31, 7⟩, ⟨12, 4⟩, ⟨32, 7⟩, ⟨13, 4⟩, ⟨33, 7⟩, ⟨14, 4⟩, ⟨34, 7⟩, ⟨1, 3⟩, ⟨15, 4⟩, ⟨35, 7⟩, ⟨2, 3⟩, ⟨22, 6⟩, ⟨16, 4⟩, ⟨43, 11⟩, ⟨36, 7⟩, ⟨3, 3⟩, ⟨23, 6⟩, ⟨17, 4⟩, ⟨37, 7⟩, ⟨4, 3⟩, ⟨24, 6⟩, ⟨18, 4⟩, ⟨38, 7⟩, ⟨5, 3⟩, ⟨25, 6⟩, ⟨19, 4⟩, ⟨39, 7⟩, ⟨6, 3⟩, ⟨26, 6⟩, ⟨20, 4⟩, ⟨40, 7⟩, ⟨7, 3⟩]⟩
theorem profile0206_checked : profile0206.check := by decide +kernel

noncomputable def selection1_0206 : Selection :=
  ⟨1, -2, 4, (63/5), 426, 31, -132⟩
theorem selection1_0206_checked : selection1_0206.check profile0206 := by decide +kernel

noncomputable def selection2_0206 : Selection :=
  ⟨2, -10, 8, (303/25), 110, 55, 236⟩
theorem selection2_0206_checked : selection2_0206.check profile0206 := by decide +kernel

noncomputable def profile0207 : ProfileCell :=
  ⟨(2/27), (7/94),
    [3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨7, 4⟩, ⟨40, 8⟩, ⟨21, 5⟩, ⟨27, 7⟩, ⟨8, 4⟩, ⟨41, 8⟩, ⟨28, 7⟩, ⟨9, 4⟩, ⟨42, 8⟩, ⟨29, 7⟩, ⟨10, 4⟩, ⟨30, 7⟩, ⟨11, 4⟩, ⟨31, 7⟩, ⟨12, 4⟩, ⟨32, 7⟩, ⟨13, 4⟩, ⟨33, 7⟩, ⟨14, 4⟩, ⟨1, 3⟩, ⟨34, 7⟩, ⟨15, 4⟩, ⟨2, 3⟩, ⟨35, 7⟩, ⟨16, 4⟩, ⟨22, 6⟩, ⟨3, 3⟩, ⟨36, 7⟩, ⟨43, 11⟩, ⟨17, 4⟩, ⟨23, 6⟩, ⟨4, 3⟩, ⟨37, 7⟩, ⟨18, 4⟩, ⟨24, 6⟩, ⟨5, 3⟩, ⟨38, 7⟩, ⟨19, 4⟩, ⟨25, 6⟩, ⟨6, 3⟩, ⟨39, 7⟩, ⟨20, 4⟩, ⟨26, 6⟩]⟩
theorem profile0207_checked : profile0207.check := by decide +kernel

noncomputable def selection1_0207 : Selection :=
  ⟨1, -2, 4, (629/50), 430, 19, 30⟩
theorem selection1_0207_checked : selection1_0207.check profile0207 := by decide +kernel

noncomputable def selection2_0207 : Selection :=
  ⟨2, -10, 8, (304/25), 112, 43, 398⟩
theorem selection2_0207_checked : selection2_0207.check profile0207 := by decide +kernel

noncomputable def profile0208 : ProfileCell :=
  ⟨(7/94), (5/67),
    [3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨26, 7⟩, ⟨7, 4⟩, ⟨40, 8⟩, ⟨21, 5⟩, ⟨27, 7⟩, ⟨8, 4⟩, ⟨41, 8⟩, ⟨28, 7⟩, ⟨9, 4⟩, ⟨42, 8⟩, ⟨29, 7⟩, ⟨10, 4⟩, ⟨30, 7⟩, ⟨11, 4⟩, ⟨31, 7⟩, ⟨12, 4⟩, ⟨32, 7⟩, ⟨13, 4⟩, ⟨33, 7⟩, ⟨14, 4⟩, ⟨1, 3⟩, ⟨34, 7⟩, ⟨15, 4⟩, ⟨2, 3⟩, ⟨35, 7⟩, ⟨16, 4⟩, ⟨22, 6⟩, ⟨3, 3⟩, ⟨36, 7⟩, ⟨17, 4⟩, ⟨43, 11⟩, ⟨23, 6⟩, ⟨4, 3⟩, ⟨37, 7⟩, ⟨18, 4⟩, ⟨24, 6⟩, ⟨5, 3⟩, ⟨38, 7⟩, ⟨19, 4⟩, ⟨25, 6⟩, ⟨6, 3⟩, ⟨39, 7⟩, ⟨20, 4⟩]⟩
theorem profile0208_checked : profile0208.check := by decide +kernel

noncomputable def selection1_0208 : Selection :=
  ⟨1, -2, 4, (629/50), 173, 61, -534⟩
theorem selection1_0208_checked : selection1_0208.check profile0208 := by decide +kernel

noncomputable def selection2_0208 : Selection :=
  ⟨2, -10, 8, (304/25), 45, 85, -166⟩
theorem selection2_0208_checked : selection2_0208.check profile0208 := by decide +kernel

noncomputable def profile0209 : ProfileCell :=
  ⟨(5/67), (8/107),
    [3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨20, 5⟩, ⟨26, 7⟩, ⟨7, 4⟩, ⟨40, 8⟩, ⟨21, 5⟩, ⟨27, 7⟩, ⟨8, 4⟩, ⟨41, 8⟩, ⟨28, 7⟩, ⟨9, 4⟩, ⟨42, 8⟩, ⟨29, 7⟩, ⟨10, 4⟩, ⟨30, 7⟩, ⟨11, 4⟩, ⟨31, 7⟩, ⟨12, 4⟩, ⟨32, 7⟩, ⟨13, 4⟩, ⟨33, 7⟩, ⟨14, 4⟩, ⟨1, 3⟩, ⟨34, 7⟩, ⟨15, 4⟩, ⟨2, 3⟩, ⟨35, 7⟩, ⟨16, 4⟩, ⟨22, 6⟩, ⟨3, 3⟩, ⟨36, 7⟩, ⟨17, 4⟩, ⟨23, 6⟩, ⟨43, 11⟩, ⟨4, 3⟩, ⟨37, 7⟩, ⟨18, 4⟩, ⟨24, 6⟩, ⟨5, 3⟩, ⟨38, 7⟩, ⟨19, 4⟩, ⟨25, 6⟩, ⟨6, 3⟩, ⟨39, 7⟩]⟩
theorem profile0209_checked : profile0209.check := by decide +kernel

noncomputable def selection1_0209 : Selection :=
  ⟨1, -2, 4, (627/50), 152, 31, -132⟩
theorem selection1_0209_checked : selection1_0209.check profile0209 := by decide +kernel

noncomputable def selection2_0209 : Selection :=
  ⟨2, -10, 8, (304/25), 40, 55, 236⟩
theorem selection2_0209_checked : selection2_0209.check profile0209 := by decide +kernel

noncomputable def profile0210 : ProfileCell :=
  ⟨(8/107), (3/40),
    [3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨39, 8⟩, ⟨20, 5⟩, ⟨26, 7⟩, ⟨7, 4⟩, ⟨40, 8⟩, ⟨21, 5⟩, ⟨27, 7⟩, ⟨8, 4⟩, ⟨41, 8⟩, ⟨28, 7⟩, ⟨9, 4⟩, ⟨42, 8⟩, ⟨29, 7⟩, ⟨10, 4⟩, ⟨30, 7⟩, ⟨11, 4⟩, ⟨31, 7⟩, ⟨12, 4⟩, ⟨32, 7⟩, ⟨13, 4⟩, ⟨33, 7⟩, ⟨14, 4⟩, ⟨1, 3⟩, ⟨34, 7⟩, ⟨15, 4⟩, ⟨2, 3⟩, ⟨35, 7⟩, ⟨16, 4⟩, ⟨22, 6⟩, ⟨3, 3⟩, ⟨36, 7⟩, ⟨17, 4⟩, ⟨23, 6⟩, ⟨4, 3⟩, ⟨43, 11⟩, ⟨37, 7⟩, ⟨18, 4⟩, ⟨24, 6⟩, ⟨5, 3⟩, ⟨38, 7⟩, ⟨19, 4⟩, ⟨25, 6⟩, ⟨6, 3⟩]⟩
theorem profile0210_checked : profile0210.check := by decide +kernel

noncomputable def selection1_0210 : Selection :=
  ⟨1, -2, 4, (1253/100), 254, 79, -774⟩
theorem selection1_0210_checked : selection1_0210.check profile0210 := by decide +kernel

noncomputable def selection2_0210 : Selection :=
  ⟨2, -10, 8, (304/25), 66, 103, -406⟩
theorem selection2_0210_checked : selection2_0210.check profile0210 := by decide +kernel

noncomputable def profile0211 : ProfileCell :=
  ⟨(3/40), (7/93),
    [3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨20, 5⟩, ⟨39, 8⟩, ⟨7, 4⟩, ⟨26, 7⟩, ⟨21, 5⟩, ⟨40, 8⟩, ⟨8, 4⟩, ⟨27, 7⟩, ⟨41, 8⟩, ⟨9, 4⟩, ⟨28, 7⟩, ⟨42, 8⟩, ⟨10, 4⟩, ⟨29, 7⟩, ⟨11, 4⟩, ⟨30, 7⟩, ⟨12, 4⟩, ⟨31, 7⟩, ⟨13, 4⟩, ⟨32, 7⟩, ⟨14, 4⟩, ⟨33, 7⟩, ⟨1, 3⟩, ⟨15, 4⟩, ⟨34, 7⟩, ⟨2, 3⟩, ⟨16, 4⟩, ⟨35, 7⟩, ⟨3, 3⟩, ⟨22, 6⟩, ⟨17, 4⟩, ⟨36, 7⟩, ⟨4, 3⟩, ⟨23, 6⟩, ⟨43, 11⟩, ⟨18, 4⟩, ⟨37, 7⟩, ⟨5, 3⟩, ⟨24, 6⟩, ⟨19, 4⟩, ⟨38, 7⟩, ⟨6, 3⟩, ⟨25, 6⟩]⟩
theorem profile0211_checked : profile0211.check := by decide +kernel

noncomputable def selection1_0211 : Selection :=
  ⟨1, -3, 4, (209/20), 244, 40, -254⟩
theorem selection1_0211_checked : selection1_0211.check profile0211 := by decide +kernel

noncomputable def selection2_0211 : Selection :=
  ⟨2, -11, 8, (507/50), 64, 64, 114⟩
theorem selection2_0211_checked : selection2_0211.check profile0211 := by decide +kernel

noncomputable def profile0212 : ProfileCell :=
  ⟨(7/93), (4/53),
    [3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨25, 7⟩, ⟨20, 5⟩, ⟨39, 8⟩, ⟨7, 4⟩, ⟨26, 7⟩, ⟨21, 5⟩, ⟨40, 8⟩, ⟨8, 4⟩, ⟨27, 7⟩, ⟨41, 8⟩, ⟨9, 4⟩, ⟨28, 7⟩, ⟨42, 8⟩, ⟨10, 4⟩, ⟨29, 7⟩, ⟨11, 4⟩, ⟨30, 7⟩, ⟨12, 4⟩, ⟨31, 7⟩, ⟨13, 4⟩, ⟨32, 7⟩, ⟨14, 4⟩, ⟨33, 7⟩, ⟨1, 3⟩, ⟨15, 4⟩, ⟨34, 7⟩, ⟨2, 3⟩, ⟨16, 4⟩, ⟨35, 7⟩, ⟨3, 3⟩, ⟨22, 6⟩, ⟨17, 4⟩, ⟨36, 7⟩, ⟨4, 3⟩, ⟨23, 6⟩, ⟨18, 4⟩, ⟨43, 11⟩, ⟨37, 7⟩, ⟨5, 3⟩, ⟨24, 6⟩, ⟨19, 4⟩, ⟨38, 7⟩, ⟨6, 3⟩]⟩
theorem profile0212_checked : profile0212.check := by decide +kernel

noncomputable def selection1_0212 : Selection :=
  ⟨1, -3, 4, (1041/100), 183, 68, -626⟩
theorem selection1_0212_checked : selection1_0212.check profile0212 := by decide +kernel

noncomputable def selection2_0212 : Selection :=
  ⟨2, -11, 8, (507/50), 48, 92, -258⟩
theorem selection2_0212_checked : selection2_0212.check profile0212 := by decide +kernel

noncomputable def profile0213 : ProfileCell :=
  ⟨(4/53), (5/66),
    [3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨6, 4⟩, ⟨38, 8⟩, ⟨25, 7⟩, ⟨20, 5⟩, ⟨7, 4⟩, ⟨39, 8⟩, ⟨26, 7⟩, ⟨21, 5⟩, ⟨8, 4⟩, ⟨40, 8⟩, ⟨27, 7⟩, ⟨9, 4⟩, ⟨41, 8⟩, ⟨28, 7⟩, ⟨10, 4⟩, ⟨42, 8⟩, ⟨29, 7⟩, ⟨11, 4⟩, ⟨30, 7⟩, ⟨12, 4⟩, ⟨31, 7⟩, ⟨13, 4⟩, ⟨32, 7⟩, ⟨14, 4⟩, ⟨1, 3⟩, ⟨33, 7⟩, ⟨15, 4⟩, ⟨2, 3⟩, ⟨34, 7⟩, ⟨16, 4⟩, ⟨3, 3⟩, ⟨35, 7⟩, ⟨22, 6⟩, ⟨17, 4⟩, ⟨4, 3⟩, ⟨36, 7⟩, ⟨23, 6⟩, ⟨18, 4⟩, ⟨5, 3⟩, ⟨37, 7⟩, ⟨43, 11⟩, ⟨24, 6⟩, ⟨19, 4⟩]⟩
theorem profile0213_checked : profile0213.check := by decide +kernel

noncomputable def selection1_0213 : Selection :=
  ⟨1, -3, 4, (259/25), 256, 76, -732⟩
theorem selection1_0213_checked : selection1_0213.check profile0213 := by decide +kernel

noncomputable def selection2_0213 : Selection :=
  ⟨2, -11, 8, (1013/100), 68, 100, -364⟩
theorem selection2_0213_checked : selection2_0213.check profile0213 := by decide +kernel

noncomputable def profile0214 : ProfileCell :=
  ⟨(5/66), (6/79),
    [3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨19, 5⟩, ⟨6, 4⟩, ⟨38, 8⟩, ⟨25, 7⟩, ⟨20, 5⟩, ⟨7, 4⟩, ⟨39, 8⟩, ⟨26, 7⟩, ⟨21, 5⟩, ⟨8, 4⟩, ⟨40, 8⟩, ⟨27, 7⟩, ⟨9, 4⟩, ⟨41, 8⟩, ⟨28, 7⟩, ⟨10, 4⟩, ⟨42, 8⟩, ⟨29, 7⟩, ⟨11, 4⟩, ⟨30, 7⟩, ⟨12, 4⟩, ⟨31, 7⟩, ⟨13, 4⟩, ⟨32, 7⟩, ⟨14, 4⟩, ⟨1, 3⟩, ⟨33, 7⟩, ⟨15, 4⟩, ⟨2, 3⟩, ⟨34, 7⟩, ⟨16, 4⟩, ⟨3, 3⟩, ⟨35, 7⟩, ⟨22, 6⟩, ⟨17, 4⟩, ⟨4, 3⟩, ⟨36, 7⟩, ⟨23, 6⟩, ⟨18, 4⟩, ⟨5, 3⟩, ⟨37, 7⟩, ⟨24, 6⟩, ⟨43, 11⟩]⟩
theorem profile0214_checked : profile0214.check := by decide +kernel

noncomputable def selection1_0214 : Selection :=
  ⟨1, -3, 4, (513/50), 171, 56, -468⟩
theorem selection1_0214_checked : selection1_0214.check profile0214 := by decide +kernel

noncomputable def selection2_0214 : Selection :=
  ⟨2, -11, 8, (1011/100), 45, 80, -100⟩
theorem selection2_0214_checked : selection2_0214.check profile0214 := by decide +kernel

noncomputable def profile0215 : ProfileCell :=
  ⟨(6/79), (7/92),
    [3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨43, 12⟩, ⟨19, 5⟩, ⟨6, 4⟩, ⟨38, 8⟩, ⟨25, 7⟩, ⟨20, 5⟩, ⟨7, 4⟩, ⟨39, 8⟩, ⟨26, 7⟩, ⟨21, 5⟩, ⟨8, 4⟩, ⟨40, 8⟩, ⟨27, 7⟩, ⟨9, 4⟩, ⟨41, 8⟩, ⟨28, 7⟩, ⟨10, 4⟩, ⟨42, 8⟩, ⟨29, 7⟩, ⟨11, 4⟩, ⟨30, 7⟩, ⟨12, 4⟩, ⟨31, 7⟩, ⟨13, 4⟩, ⟨32, 7⟩, ⟨14, 4⟩, ⟨1, 3⟩, ⟨33, 7⟩, ⟨15, 4⟩, ⟨2, 3⟩, ⟨34, 7⟩, ⟨16, 4⟩, ⟨3, 3⟩, ⟨35, 7⟩, ⟨22, 6⟩, ⟨17, 4⟩, ⟨4, 3⟩, ⟨36, 7⟩, ⟨23, 6⟩, ⟨18, 4⟩, ⟨5, 3⟩, ⟨37, 7⟩, ⟨24, 6⟩]⟩
theorem profile0215_checked : profile0215.check := by decide +kernel

noncomputable def selection1_0215 : Selection :=
  ⟨1, -3, 4, (258/25), 123, -100, 1586⟩
theorem selection1_0215_checked : selection1_0215.check profile0215 := by decide +kernel

noncomputable def selection2_0215 : Selection :=
  ⟨2, -11, 8, (1017/100), 33, -76, 1954⟩
theorem selection2_0215_checked : selection2_0215.check profile0215 := by decide +kernel

noncomputable def profile0216 : ProfileCell :=
  ⟨(7/92), (8/105),
    [3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨24, 7⟩, ⟨19, 5⟩, ⟨43, 12⟩, ⟨6, 4⟩, ⟨38, 8⟩, ⟨25, 7⟩, ⟨20, 5⟩, ⟨7, 4⟩, ⟨39, 8⟩, ⟨26, 7⟩, ⟨21, 5⟩, ⟨8, 4⟩, ⟨40, 8⟩, ⟨27, 7⟩, ⟨9, 4⟩, ⟨41, 8⟩, ⟨28, 7⟩, ⟨10, 4⟩, ⟨42, 8⟩, ⟨29, 7⟩, ⟨11, 4⟩, ⟨30, 7⟩, ⟨12, 4⟩, ⟨31, 7⟩, ⟨13, 4⟩, ⟨32, 7⟩, ⟨14, 4⟩, ⟨1, 3⟩, ⟨33, 7⟩, ⟨15, 4⟩, ⟨2, 3⟩, ⟨34, 7⟩, ⟨16, 4⟩, ⟨3, 3⟩, ⟨35, 7⟩, ⟨22, 6⟩, ⟨17, 4⟩, ⟨4, 3⟩, ⟨36, 7⟩, ⟨23, 6⟩, ⟨18, 4⟩, ⟨5, 3⟩, ⟨37, 7⟩]⟩
theorem profile0216_checked : profile0216.check := by decide +kernel

noncomputable def selection1_0216 : Selection :=
  ⟨1, -3, 4, (1037/100), 93, -58, 1034⟩
theorem selection1_0216_checked : selection1_0216.check profile0216 := by decide +kernel

noncomputable def selection2_0216 : Selection :=
  ⟨2, -11, 8, (51/5), 25, -34, 1402⟩
theorem selection2_0216_checked : selection2_0216.check profile0216 := by decide +kernel

noncomputable def profile0217 : ProfileCell :=
  ⟨(8/105), (1/13),
    [3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1], [3, 3, 3, 3, 3],
    [⟨37, 8⟩, ⟨24, 7⟩, ⟨19, 5⟩, ⟨6, 4⟩, ⟨43, 12⟩, ⟨38, 8⟩, ⟨25, 7⟩, ⟨20, 5⟩, ⟨7, 4⟩, ⟨39, 8⟩, ⟨26, 7⟩, ⟨21, 5⟩, ⟨8, 4⟩, ⟨40, 8⟩, ⟨27, 7⟩, ⟨9, 4⟩, ⟨41, 8⟩, ⟨28, 7⟩, ⟨10, 4⟩, ⟨42, 8⟩, ⟨29, 7⟩, ⟨11, 4⟩, ⟨30, 7⟩, ⟨12, 4⟩, ⟨31, 7⟩, ⟨13, 4⟩, ⟨32, 7⟩, ⟨14, 4⟩, ⟨1, 3⟩, ⟨33, 7⟩, ⟨15, 4⟩, ⟨2, 3⟩, ⟨34, 7⟩, ⟨16, 4⟩, ⟨3, 3⟩, ⟨35, 7⟩, ⟨22, 6⟩, ⟨17, 4⟩, ⟨4, 3⟩, ⟨36, 7⟩, ⟨23, 6⟩, ⟨18, 4⟩, ⟨5, 3⟩]⟩
theorem profile0217_checked : profile0217.check := by decide +kernel

noncomputable def selection1_0217 : Selection :=
  ⟨1, -3, 4, (529/50), 669, -26, 614⟩
theorem selection1_0217_checked : selection1_0217.check profile0217 := by decide +kernel

noncomputable def selection2_0217 : Selection :=
  ⟨2, -11, 8, (519/50), 177, -2, 982⟩
theorem selection2_0217_checked : selection2_0217.check profile0217 := by decide +kernel

noncomputable def profile0218 : ProfileCell :=
  ⟨(1/13), (8/103),
    [4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1], [3, 3, 3, 3, 4],
    [⟨5, 4⟩, ⟨18, 5⟩, ⟨23, 7⟩, ⟨36, 8⟩, ⟨6, 4⟩, ⟨19, 5⟩, ⟨24, 7⟩, ⟨37, 8⟩, ⟨7, 4⟩, ⟨20, 5⟩, ⟨25, 7⟩, ⟨38, 8⟩, ⟨43, 12⟩, ⟨8, 4⟩, ⟨21, 5⟩, ⟨26, 7⟩, ⟨39, 8⟩, ⟨9, 4⟩, ⟨27, 7⟩, ⟨40, 8⟩, ⟨10, 4⟩, ⟨28, 7⟩, ⟨41, 8⟩, ⟨11, 4⟩, ⟨29, 7⟩, ⟨42, 8⟩, ⟨12, 4⟩, ⟨30, 7⟩, ⟨13, 4⟩, ⟨31, 7⟩, ⟨1, 3⟩, ⟨14, 4⟩, ⟨32, 7⟩, ⟨2, 3⟩, ⟨15, 4⟩, ⟨33, 7⟩, ⟨3, 3⟩, ⟨16, 4⟩, ⟨34, 7⟩, ⟨4, 3⟩, ⟨17, 4⟩, ⟨22, 6⟩, ⟨35, 7⟩]⟩
theorem profile0218_checked : profile0218.check := by decide +kernel

noncomputable def selection1_0218 : Selection :=
  ⟨1, -2, 4, (541/50), 697, -38, 714⟩
theorem selection1_0218_checked : selection1_0218.check profile0218 := by decide +kernel

noncomputable def selection2_0218 : Selection :=
  ⟨2, -10, 8, (1057/100), 183, -18, 1082⟩
theorem selection2_0218_checked : selection2_0218.check profile0218 := by decide +kernel

noncomputable def profile0219 : ProfileCell :=
  ⟨(8/103), (7/90),
    [4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1], [3, 3, 3, 3, 4],
    [⟨35, 8⟩, ⟨5, 4⟩, ⟨18, 5⟩, ⟨23, 7⟩, ⟨36, 8⟩, ⟨6, 4⟩, ⟨19, 5⟩, ⟨24, 7⟩, ⟨37, 8⟩, ⟨7, 4⟩, ⟨20, 5⟩, ⟨25, 7⟩, ⟨38, 8⟩, ⟨8, 4⟩, ⟨43, 12⟩, ⟨21, 5⟩, ⟨26, 7⟩, ⟨39, 8⟩, ⟨9, 4⟩, ⟨27, 7⟩, ⟨40, 8⟩, ⟨10, 4⟩, ⟨28, 7⟩, ⟨41, 8⟩, ⟨11, 4⟩, ⟨29, 7⟩, ⟨42, 8⟩, ⟨12, 4⟩, ⟨30, 7⟩, ⟨13, 4⟩, ⟨31, 7⟩, ⟨1, 3⟩, ⟨14, 4⟩, ⟨32, 7⟩, ⟨2, 3⟩, ⟨15, 4⟩, ⟨33, 7⟩, ⟨3, 3⟩, ⟨16, 4⟩, ⟨34, 7⟩, ⟨4, 3⟩, ⟨17, 4⟩, ⟨22, 6⟩]⟩
theorem profile0219_checked : profile0219.check := by decide +kernel

noncomputable def selection1_0219 : Selection :=
  ⟨1, -2, 4, (271/25), 101, -6, 302⟩
theorem selection1_0219_checked : selection1_0219.check profile0219 := by decide +kernel

noncomputable def selection2_0219 : Selection :=
  ⟨2, -10, 8, (1059/100), 27, 14, 670⟩
theorem selection2_0219_checked : selection2_0219.check profile0219 := by decide +kernel

noncomputable def profile0220 : ProfileCell :=
  ⟨(7/90), (5/64),
    [4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1], [3, 3, 3, 3, 4],
    [⟨22, 7⟩, ⟨35, 8⟩, ⟨5, 4⟩, ⟨18, 5⟩, ⟨23, 7⟩, ⟨36, 8⟩, ⟨6, 4⟩, ⟨19, 5⟩, ⟨24, 7⟩, ⟨37, 8⟩, ⟨7, 4⟩, ⟨20, 5⟩, ⟨25, 7⟩, ⟨38, 8⟩, ⟨8, 4⟩, ⟨21, 5⟩, ⟨43, 12⟩, ⟨26, 7⟩, ⟨39, 8⟩, ⟨9, 4⟩, ⟨27, 7⟩, ⟨40, 8⟩, ⟨10, 4⟩, ⟨28, 7⟩, ⟨41, 8⟩, ⟨11, 4⟩, ⟨29, 7⟩, ⟨42, 8⟩, ⟨12, 4⟩, ⟨30, 7⟩, ⟨13, 4⟩, ⟨31, 7⟩, ⟨1, 3⟩, ⟨14, 4⟩, ⟨32, 7⟩, ⟨2, 3⟩, ⟨15, 4⟩, ⟨33, 7⟩, ⟨3, 3⟩, ⟨16, 4⟩, ⟨34, 7⟩, ⟨4, 3⟩, ⟨17, 4⟩]⟩
theorem profile0220_checked : profile0220.check := by decide +kernel

noncomputable def selection1_0220 : Selection :=
  ⟨1, -2, 4, (271/25), 324, 36, -238⟩
theorem selection1_0220_checked : selection1_0220.check profile0220 := by decide +kernel

noncomputable def selection2_0220 : Selection :=
  ⟨2, -10, 8, (53/5), 86, 56, 130⟩
theorem selection2_0220_checked : selection2_0220.check profile0220 := by decide +kernel

noncomputable def profile0221 : ProfileCell :=
  ⟨(5/64), (4/51),
    [4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1], [3, 3, 3, 3, 4],
    [⟨17, 5⟩, ⟨22, 7⟩, ⟨35, 8⟩, ⟨5, 4⟩, ⟨18, 5⟩, ⟨23, 7⟩, ⟨36, 8⟩, ⟨6, 4⟩, ⟨19, 5⟩, ⟨24, 7⟩, ⟨37, 8⟩, ⟨7, 4⟩, ⟨20, 5⟩, ⟨25, 7⟩, ⟨38, 8⟩, ⟨8, 4⟩, ⟨21, 5⟩, ⟨26, 7⟩, ⟨43, 12⟩, ⟨39, 8⟩, ⟨9, 4⟩, ⟨27, 7⟩, ⟨40, 8⟩, ⟨10, 4⟩, ⟨28, 7⟩, ⟨41, 8⟩, ⟨11, 4⟩, ⟨29, 7⟩, ⟨42, 8⟩, ⟨12, 4⟩, ⟨30, 7⟩, ⟨13, 4⟩, ⟨31, 7⟩, ⟨1, 3⟩, ⟨14, 4⟩, ⟨32, 7⟩, ⟨2, 3⟩, ⟨15, 4⟩, ⟨33, 7⟩, ⟨3, 3⟩, ⟨16, 4⟩, ⟨34, 7⟩, ⟨4, 3⟩]⟩
theorem profile0221_checked : profile0221.check := by decide +kernel

noncomputable def selection1_0221 : Selection :=
  ⟨1, -2, 4, (541/50), 286, 6, 146⟩
theorem selection1_0221_checked : selection1_0221.check profile0221 := by decide +kernel

noncomputable def selection2_0221 : Selection :=
  ⟨2, -10, 8, (266/25), 76, 26, 514⟩
theorem selection2_0221_checked : selection2_0221.check profile0221 := by decide +kernel

noncomputable def profile0222 : ProfileCell :=
  ⟨(4/51), (3/38),
    [4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1], [3, 3, 3, 4, 4],
    [⟨4, 4⟩, ⟨34, 8⟩, ⟨17, 5⟩, ⟨22, 7⟩, ⟨5, 4⟩, ⟨35, 8⟩, ⟨18, 5⟩, ⟨23, 7⟩, ⟨6, 4⟩, ⟨36, 8⟩, ⟨19, 5⟩, ⟨24, 7⟩, ⟨7, 4⟩, ⟨37, 8⟩, ⟨20, 5⟩, ⟨25, 7⟩, ⟨8, 4⟩, ⟨38, 8⟩, ⟨21, 5⟩, ⟨26, 7⟩, ⟨9, 4⟩, ⟨39, 8⟩, ⟨43, 12⟩, ⟨27, 7⟩, ⟨10, 4⟩, ⟨40, 8⟩, ⟨28, 7⟩, ⟨11, 4⟩, ⟨41, 8⟩, ⟨29, 7⟩, ⟨12, 4⟩, ⟨42, 8⟩, ⟨30, 7⟩, ⟨13, 4⟩, ⟨1, 3⟩, ⟨31, 7⟩, ⟨14, 4⟩, ⟨2, 3⟩, ⟨32, 7⟩, ⟨15, 4⟩, ⟨3, 3⟩, ⟨33, 7⟩, ⟨16, 4⟩]⟩
theorem profile0222_checked : profile0222.check := by decide +kernel

noncomputable def selection1_0222 : Selection :=
  ⟨1, 0, 4, (1483/100), 658, 14, 44⟩
theorem selection1_0222_checked : selection1_0222.check profile0222 := by decide +kernel

noncomputable def selection2_0222 : Selection :=
  ⟨2, -8, 8, (1469/100), 176, 34, 412⟩
theorem selection2_0222_checked : selection2_0222.check profile0222 := by decide +kernel

noncomputable def profile0223 : ProfileCell :=
  ⟨(3/38), (8/101),
    [4, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 3, 3, 4, 4],
    [⟨4, 4⟩, ⟨17, 5⟩, ⟨34, 8⟩, ⟨5, 4⟩, ⟨22, 7⟩, ⟨18, 5⟩, ⟨35, 8⟩, ⟨6, 4⟩, ⟨23, 7⟩, ⟨19, 5⟩, ⟨36, 8⟩, ⟨7, 4⟩, ⟨24, 7⟩, ⟨20, 5⟩, ⟨37, 8⟩, ⟨8, 4⟩, ⟨25, 7⟩, ⟨21, 5⟩, ⟨38, 8⟩, ⟨9, 4⟩, ⟨26, 7⟩, ⟨39, 8⟩, ⟨43, 12⟩, ⟨10, 4⟩, ⟨27, 7⟩, ⟨40, 8⟩, ⟨11, 4⟩, ⟨28, 7⟩, ⟨41, 8⟩, ⟨12, 4⟩, ⟨29, 7⟩, ⟨42, 8⟩, ⟨13, 4⟩, ⟨30, 7⟩, ⟨1, 3⟩, ⟨14, 4⟩, ⟨31, 7⟩, ⟨2, 3⟩, ⟨15, 4⟩, ⟨32, 7⟩, ⟨3, 3⟩, ⟨16, 4⟩, ⟨33, 7⟩]⟩
theorem profile0223_checked : profile0223.check := by decide +kernel

noncomputable def selection1_0223 : Selection :=
  ⟨1, -1, 4, (129/10), 289, -28, 576⟩
theorem selection1_0223_checked : selection1_0223.check profile0223 := by decide +kernel

noncomputable def selection2_0223 : Selection :=
  ⟨2, -9, 8, (51/4), 77, -8, 944⟩
theorem selection2_0223_checked : selection2_0223.check profile0223 := by decide +kernel

noncomputable def profile0224 : ProfileCell :=
  ⟨(8/101), (5/63),
    [4, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 3, 3, 4, 4],
    [⟨33, 8⟩, ⟨4, 4⟩, ⟨17, 5⟩, ⟨34, 8⟩, ⟨5, 4⟩, ⟨22, 7⟩, ⟨18, 5⟩, ⟨35, 8⟩, ⟨6, 4⟩, ⟨23, 7⟩, ⟨19, 5⟩, ⟨36, 8⟩, ⟨7, 4⟩, ⟨24, 7⟩, ⟨20, 5⟩, ⟨37, 8⟩, ⟨8, 4⟩, ⟨25, 7⟩, ⟨21, 5⟩, ⟨38, 8⟩, ⟨9, 4⟩, ⟨26, 7⟩, ⟨39, 8⟩, ⟨10, 4⟩, ⟨43, 12⟩, ⟨27, 7⟩, ⟨40, 8⟩, ⟨11, 4⟩, ⟨28, 7⟩, ⟨41, 8⟩, ⟨12, 4⟩, ⟨29, 7⟩, ⟨42, 8⟩, ⟨13, 4⟩, ⟨30, 7⟩, ⟨1, 3⟩, ⟨14, 4⟩, ⟨31, 7⟩, ⟨2, 3⟩, ⟨15, 4⟩, ⟨32, 7⟩, ⟨3, 3⟩, ⟨16, 4⟩]⟩
theorem profile0224_checked : profile0224.check := by decide +kernel

noncomputable def selection1_0224 : Selection :=
  ⟨1, -1, 4, (129/10), 175, 20, -30⟩
theorem selection1_0224_checked : selection1_0224.check profile0224 := by decide +kernel

noncomputable def selection2_0224 : Selection :=
  ⟨2, -9, 8, (319/25), 47, 40, 338⟩
theorem selection2_0224_checked : selection2_0224.check profile0224 := by decide +kernel

noncomputable def profile0225 : ProfileCell :=
  ⟨(5/63), (2/25),
    [4, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 3, 3, 4, 4],
    [⟨16, 5⟩, ⟨33, 8⟩, ⟨4, 4⟩, ⟨17, 5⟩, ⟨34, 8⟩, ⟨5, 4⟩, ⟨22, 7⟩, ⟨18, 5⟩, ⟨35, 8⟩, ⟨6, 4⟩, ⟨23, 7⟩, ⟨19, 5⟩, ⟨36, 8⟩, ⟨7, 4⟩, ⟨24, 7⟩, ⟨20, 5⟩, ⟨37, 8⟩, ⟨8, 4⟩, ⟨25, 7⟩, ⟨21, 5⟩, ⟨38, 8⟩, ⟨9, 4⟩, ⟨26, 7⟩, ⟨39, 8⟩, ⟨10, 4⟩, ⟨27, 7⟩, ⟨43, 12⟩, ⟨40, 8⟩, ⟨11, 4⟩, ⟨28, 7⟩, ⟨41, 8⟩, ⟨12, 4⟩, ⟨29, 7⟩, ⟨42, 8⟩, ⟨13, 4⟩, ⟨30, 7⟩, ⟨1, 3⟩, ⟨14, 4⟩, ⟨31, 7⟩, ⟨2, 3⟩, ⟨15, 4⟩, ⟨32, 7⟩, ⟨3, 3⟩]⟩
theorem profile0225_checked : profile0225.check := by decide +kernel

noncomputable def selection1_0225 : Selection :=
  ⟨1, -1, 4, 13, 709, -10, 348⟩
theorem selection1_0225_checked : selection1_0225.check profile0225 := by decide +kernel

noncomputable def selection2_0225 : Selection :=
  ⟨2, -9, 8, (1287/100), 189, 10, 716⟩
theorem selection2_0225_checked : selection2_0225.check profile0225 := by decide +kernel

noncomputable def profile0226 : ProfileCell :=
  ⟨(2/25), (5/62),
    [4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 3, 4, 4, 4],
    [⟨3, 4⟩, ⟨32, 8⟩, ⟨16, 5⟩, ⟨4, 4⟩, ⟨33, 8⟩, ⟨17, 5⟩, ⟨5, 4⟩, ⟨34, 8⟩, ⟨18, 5⟩, ⟨22, 7⟩, ⟨6, 4⟩, ⟨35, 8⟩, ⟨19, 5⟩, ⟨23, 7⟩, ⟨7, 4⟩, ⟨36, 8⟩, ⟨20, 5⟩, ⟨24, 7⟩, ⟨8, 4⟩, ⟨37, 8⟩, ⟨21, 5⟩, ⟨25, 7⟩, ⟨9, 4⟩, ⟨38, 8⟩, ⟨26, 7⟩, ⟨10, 4⟩, ⟨39, 8⟩, ⟨27, 7⟩, ⟨11, 4⟩, ⟨40, 8⟩, ⟨43, 12⟩, ⟨28, 7⟩, ⟨12, 4⟩, ⟨41, 8⟩, ⟨29, 7⟩, ⟨13, 4⟩, ⟨42, 8⟩, ⟨1, 3⟩, ⟨30, 7⟩, ⟨14, 4⟩, ⟨2, 3⟩, ⟨31, 7⟩, ⟨15, 4⟩]⟩
theorem profile0226_checked : profile0226.check := by decide +kernel

noncomputable def selection1_0226 : Selection :=
  ⟨1, 0, 4, (1511/100), 836, -10, 348⟩
theorem selection1_0226_checked : selection1_0226.check profile0226 := by decide +kernel

noncomputable def selection2_0226 : Selection :=
  ⟨2, -8, 8, (749/50), 224, 10, 716⟩
theorem selection2_0226_checked : selection2_0226.check profile0226 := by decide +kernel

noncomputable def profile0227 : ProfileCell :=
  ⟨(5/62), (8/99),
    [4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 3, 4, 4, 4],
    [⟨15, 5⟩, ⟨3, 4⟩, ⟨32, 8⟩, ⟨16, 5⟩, ⟨4, 4⟩, ⟨33, 8⟩, ⟨17, 5⟩, ⟨5, 4⟩, ⟨34, 8⟩, ⟨18, 5⟩, ⟨22, 7⟩, ⟨6, 4⟩, ⟨35, 8⟩, ⟨19, 5⟩, ⟨23, 7⟩, ⟨7, 4⟩, ⟨36, 8⟩, ⟨20, 5⟩, ⟨24, 7⟩, ⟨8, 4⟩, ⟨37, 8⟩, ⟨21, 5⟩, ⟨25, 7⟩, ⟨9, 4⟩, ⟨38, 8⟩, ⟨26, 7⟩, ⟨10, 4⟩, ⟨39, 8⟩, ⟨27, 7⟩, ⟨11, 4⟩, ⟨40, 8⟩, ⟨28, 7⟩, ⟨43, 12⟩, ⟨12, 4⟩, ⟨41, 8⟩, ⟨29, 7⟩, ⟨13, 4⟩, ⟨1, 3⟩, ⟨42, 8⟩, ⟨30, 7⟩, ⟨14, 4⟩, ⟨2, 3⟩, ⟨31, 7⟩]⟩
theorem profile0227_checked : profile0227.check := by decide +kernel

noncomputable def selection1_0227 : Selection :=
  ⟨1, 0, 4, (303/20), 212, -30, 596⟩
theorem selection1_0227_checked : selection1_0227.check profile0227 := by decide +kernel

noncomputable def selection2_0227 : Selection :=
  ⟨2, -8, 8, (751/50), 57, -10, 964⟩
theorem selection2_0227_checked : selection2_0227.check profile0227 := by decide +kernel

noncomputable def profile0228 : ProfileCell :=
  ⟨(8/99), (3/37),
    [4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 3, 4, 4, 4],
    [⟨31, 8⟩, ⟨15, 5⟩, ⟨3, 4⟩, ⟨32, 8⟩, ⟨16, 5⟩, ⟨4, 4⟩, ⟨33, 8⟩, ⟨17, 5⟩, ⟨5, 4⟩, ⟨34, 8⟩, ⟨18, 5⟩, ⟨22, 7⟩, ⟨6, 4⟩, ⟨35, 8⟩, ⟨19, 5⟩, ⟨23, 7⟩, ⟨7, 4⟩, ⟨36, 8⟩, ⟨20, 5⟩, ⟨24, 7⟩, ⟨8, 4⟩, ⟨37, 8⟩, ⟨21, 5⟩, ⟨25, 7⟩, ⟨9, 4⟩, ⟨38, 8⟩, ⟨26, 7⟩, ⟨10, 4⟩, ⟨39, 8⟩, ⟨27, 7⟩, ⟨11, 4⟩, ⟨40, 8⟩, ⟨28, 7⟩, ⟨12, 4⟩, ⟨43, 12⟩, ⟨41, 8⟩, ⟨29, 7⟩, ⟨13, 4⟩, ⟨1, 3⟩, ⟨42, 8⟩, ⟨30, 7⟩, ⟨14, 4⟩, ⟨2, 3⟩]⟩
theorem profile0228_checked : profile0228.check := by decide +kernel

noncomputable def selection1_0228 : Selection :=
  ⟨1, 0, 4, (759/50), 355, 2, 200⟩
theorem selection1_0228_checked : selection1_0228.check profile0228 := by decide +kernel

noncomputable def selection2_0228 : Selection :=
  ⟨2, -8, 8, (753/50), 95, 22, 568⟩
theorem selection2_0228_checked : selection2_0228.check profile0228 := by decide +kernel

noncomputable def profile0229 : ProfileCell :=
  ⟨(3/37), (4/49),
    [4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 3, 4, 4, 4],
    [⟨15, 5⟩, ⟨31, 8⟩, ⟨3, 4⟩, ⟨16, 5⟩, ⟨32, 8⟩, ⟨4, 4⟩, ⟨17, 5⟩, ⟨33, 8⟩, ⟨5, 4⟩, ⟨18, 5⟩, ⟨34, 8⟩, ⟨6, 4⟩, ⟨22, 7⟩, ⟨19, 5⟩, ⟨35, 8⟩, ⟨7, 4⟩, ⟨23, 7⟩, ⟨20, 5⟩, ⟨36, 8⟩, ⟨8, 4⟩, ⟨24, 7⟩, ⟨21, 5⟩, ⟨37, 8⟩, ⟨9, 4⟩, ⟨25, 7⟩, ⟨38, 8⟩, ⟨10, 4⟩, ⟨26, 7⟩, ⟨39, 8⟩, ⟨11, 4⟩, ⟨27, 7⟩, ⟨40, 8⟩, ⟨12, 4⟩, ⟨28, 7⟩, ⟨43, 12⟩, ⟨41, 8⟩, ⟨13, 4⟩, ⟨29, 7⟩, ⟨1, 3⟩, ⟨42, 8⟩, ⟨14, 4⟩, ⟨30, 7⟩, ⟨2, 3⟩]⟩
theorem profile0229_checked : profile0229.check := by decide +kernel

noncomputable def selection1_0229 : Selection :=
  ⟨1, 0, 4, (1533/100), 724, -28, 570⟩
theorem selection1_0229_checked : selection1_0229.check profile0229 := by decide +kernel

noncomputable def selection2_0229 : Selection :=
  ⟨2, -8, 8, (759/50), 194, -8, 938⟩
theorem selection2_0229_checked : selection2_0229.check profile0229 := by decide +kernel

noncomputable def profile0230 : ProfileCell :=
  ⟨(4/49), (9/110),
    [4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 4, 4, 4, 4],
    [⟨2, 4⟩, ⟨30, 8⟩, ⟨15, 5⟩, ⟨3, 4⟩, ⟨31, 8⟩, ⟨16, 5⟩, ⟨4, 4⟩, ⟨32, 8⟩, ⟨17, 5⟩, ⟨5, 4⟩, ⟨33, 8⟩, ⟨18, 5⟩, ⟨6, 4⟩, ⟨34, 8⟩, ⟨22, 7⟩, ⟨19, 5⟩, ⟨7, 4⟩, ⟨35, 8⟩, ⟨23, 7⟩, ⟨20, 5⟩, ⟨8, 4⟩, ⟨36, 8⟩, ⟨24, 7⟩, ⟨21, 5⟩, ⟨9, 4⟩, ⟨37, 8⟩, ⟨25, 7⟩, ⟨10, 4⟩, ⟨38, 8⟩, ⟨26, 7⟩, ⟨11, 4⟩, ⟨39, 8⟩, ⟨27, 7⟩, ⟨12, 4⟩, ⟨40, 8⟩, ⟨28, 7⟩, ⟨13, 4⟩, ⟨41, 8⟩, ⟨43, 12⟩, ⟨1, 3⟩, ⟨29, 7⟩, ⟨14, 4⟩, ⟨42, 8⟩]⟩
theorem profile0230_checked : profile0230.check := by decide +kernel

noncomputable def selection1_0230 : Selection :=
  ⟨1, 2, 4, (969/50), 308, -36, 668⟩
theorem selection1_0230_checked : selection1_0230.check profile0230 := by decide +kernel

noncomputable def selection2_0230 : Selection :=
  ⟨2, -6, 8, (1923/100), 83, -16, 1036⟩
theorem selection2_0230_checked : selection2_0230.check profile0230 := by decide +kernel

noncomputable def profile0231 : ProfileCell :=
  ⟨(9/110), (5/61),
    [4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 4, 4, 4, 4],
    [⟨42, 9⟩, ⟨2, 4⟩, ⟨30, 8⟩, ⟨15, 5⟩, ⟨3, 4⟩, ⟨31, 8⟩, ⟨16, 5⟩, ⟨4, 4⟩, ⟨32, 8⟩, ⟨17, 5⟩, ⟨5, 4⟩, ⟨33, 8⟩, ⟨18, 5⟩, ⟨6, 4⟩, ⟨34, 8⟩, ⟨22, 7⟩, ⟨19, 5⟩, ⟨7, 4⟩, ⟨35, 8⟩, ⟨23, 7⟩, ⟨20, 5⟩, ⟨8, 4⟩, ⟨36, 8⟩, ⟨24, 7⟩, ⟨21, 5⟩, ⟨9, 4⟩, ⟨37, 8⟩, ⟨25, 7⟩, ⟨10, 4⟩, ⟨38, 8⟩, ⟨26, 7⟩, ⟨11, 4⟩, ⟨39, 8⟩, ⟨27, 7⟩, ⟨12, 4⟩, ⟨40, 8⟩, ⟨28, 7⟩, ⟨13, 4⟩, ⟨41, 8⟩, ⟨1, 3⟩, ⟨43, 12⟩, ⟨29, 7⟩, ⟨14, 4⟩]⟩
theorem profile0231_checked : profile0231.check := by decide +kernel

noncomputable def selection1_0231 : Selection :=
  ⟨1, 2, 4, (969/50), 247, 18, 8⟩
theorem selection1_0231_checked : selection1_0231.check profile0231 := by decide +kernel

noncomputable def selection2_0231 : Selection :=
  ⟨2, -6, 8, (481/25), 67, 38, 376⟩
theorem selection2_0231_checked : selection2_0231.check profile0231 := by decide +kernel

noncomputable def profile0232 : ProfileCell :=
  ⟨(5/61), (13/158),
    [4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 4, 4, 4, 4],
    [⟨14, 5⟩, ⟨2, 4⟩, ⟨42, 9⟩, ⟨30, 8⟩, ⟨15, 5⟩, ⟨3, 4⟩, ⟨31, 8⟩, ⟨16, 5⟩, ⟨4, 4⟩, ⟨32, 8⟩, ⟨17, 5⟩, ⟨5, 4⟩, ⟨33, 8⟩, ⟨18, 5⟩, ⟨6, 4⟩, ⟨34, 8⟩, ⟨22, 7⟩, ⟨19, 5⟩, ⟨7, 4⟩, ⟨35, 8⟩, ⟨23, 7⟩, ⟨20, 5⟩, ⟨8, 4⟩, ⟨36, 8⟩, ⟨24, 7⟩, ⟨21, 5⟩, ⟨9, 4⟩, ⟨37, 8⟩, ⟨25, 7⟩, ⟨10, 4⟩, ⟨38, 8⟩, ⟨26, 7⟩, ⟨11, 4⟩, ⟨39, 8⟩, ⟨27, 7⟩, ⟨12, 4⟩, ⟨40, 8⟩, ⟨28, 7⟩, ⟨13, 4⟩, ⟨1, 3⟩, ⟨41, 8⟩, ⟨29, 7⟩, ⟨43, 12⟩]⟩
theorem profile0232_checked : profile0232.check := by decide +kernel

noncomputable def selection1_0232 : Selection :=
  ⟨1, 2, 4, (973/50), 518, -22, 496⟩
theorem selection1_0232_checked : selection1_0232.check profile0232 := by decide +kernel

noncomputable def selection2_0232 : Selection :=
  ⟨2, -6, 8, (1931/100), 139, -2, 864⟩
theorem selection2_0232_checked : selection2_0232.check profile0232 := by decide +kernel

noncomputable def profile0233 : ProfileCell :=
  ⟨(13/158), (8/97),
    [4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 4, 4, 4, 4],
    [⟨43, 13⟩, ⟨14, 5⟩, ⟨2, 4⟩, ⟨42, 9⟩, ⟨30, 8⟩, ⟨15, 5⟩, ⟨3, 4⟩, ⟨31, 8⟩, ⟨16, 5⟩, ⟨4, 4⟩, ⟨32, 8⟩, ⟨17, 5⟩, ⟨5, 4⟩, ⟨33, 8⟩, ⟨18, 5⟩, ⟨6, 4⟩, ⟨34, 8⟩, ⟨22, 7⟩, ⟨19, 5⟩, ⟨7, 4⟩, ⟨35, 8⟩, ⟨23, 7⟩, ⟨20, 5⟩, ⟨8, 4⟩, ⟨36, 8⟩, ⟨24, 7⟩, ⟨21, 5⟩, ⟨9, 4⟩, ⟨37, 8⟩, ⟨25, 7⟩, ⟨10, 4⟩, ⟨38, 8⟩, ⟨26, 7⟩, ⟨11, 4⟩, ⟨39, 8⟩, ⟨27, 7⟩, ⟨12, 4⟩, ⟨40, 8⟩, ⟨28, 7⟩, ⟨13, 4⟩, ⟨1, 3⟩, ⟨41, 8⟩, ⟨29, 7⟩]⟩
theorem profile0233_checked : profile0233.check := by decide +kernel

noncomputable def selection1_0233 : Selection :=
  ⟨1, 2, 4, (1967/100), 329, -178, 2392⟩
theorem selection1_0233_checked : selection1_0233.check profile0233 := by decide +kernel

noncomputable def selection2_0233 : Selection :=
  ⟨2, -6, 8, (486/25), 88, -158, 2760⟩
theorem selection2_0233_checked : selection2_0233.check profile0233 := by decide +kernel

noncomputable def profile0234 : ProfileCell :=
  ⟨(8/97), (9/109),
    [4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 4, 4, 4, 4],
    [⟨29, 8⟩, ⟨14, 5⟩, ⟨43, 13⟩, ⟨2, 4⟩, ⟨42, 9⟩, ⟨30, 8⟩, ⟨15, 5⟩, ⟨3, 4⟩, ⟨31, 8⟩, ⟨16, 5⟩, ⟨4, 4⟩, ⟨32, 8⟩, ⟨17, 5⟩, ⟨5, 4⟩, ⟨33, 8⟩, ⟨18, 5⟩, ⟨6, 4⟩, ⟨34, 8⟩, ⟨22, 7⟩, ⟨19, 5⟩, ⟨7, 4⟩, ⟨35, 8⟩, ⟨23, 7⟩, ⟨20, 5⟩, ⟨8, 4⟩, ⟨36, 8⟩, ⟨24, 7⟩, ⟨21, 5⟩, ⟨9, 4⟩, ⟨37, 8⟩, ⟨25, 7⟩, ⟨10, 4⟩, ⟨38, 8⟩, ⟨26, 7⟩, ⟨11, 4⟩, ⟨39, 8⟩, ⟨27, 7⟩, ⟨12, 4⟩, ⟨40, 8⟩, ⟨28, 7⟩, ⟨13, 4⟩, ⟨1, 3⟩, ⟨41, 8⟩]⟩
theorem profile0234_checked : profile0234.check := by decide +kernel

noncomputable def selection1_0234 : Selection :=
  ⟨1, 2, 4, (494/25), 160, -146, 2004⟩
theorem selection1_0234_checked : selection1_0234.check profile0234 := by decide +kernel

noncomputable def selection2_0234 : Selection :=
  ⟨2, -6, 8, (1949/100), 43, -126, 2372⟩
theorem selection2_0234_checked : selection2_0234.check profile0234 := by decide +kernel

noncomputable def profile0235 : ProfileCell :=
  ⟨(9/109), (1/12),
    [4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1], [3, 4, 4, 4, 4],
    [⟨41, 9⟩, ⟨29, 8⟩, ⟨14, 5⟩, ⟨2, 4⟩, ⟨43, 13⟩, ⟨42, 9⟩, ⟨30, 8⟩, ⟨15, 5⟩, ⟨3, 4⟩, ⟨31, 8⟩, ⟨16, 5⟩, ⟨4, 4⟩, ⟨32, 8⟩, ⟨17, 5⟩, ⟨5, 4⟩, ⟨33, 8⟩, ⟨18, 5⟩, ⟨6, 4⟩, ⟨34, 8⟩, ⟨22, 7⟩, ⟨19, 5⟩, ⟨7, 4⟩, ⟨35, 8⟩, ⟨23, 7⟩, ⟨20, 5⟩, ⟨8, 4⟩, ⟨36, 8⟩, ⟨24, 7⟩, ⟨21, 5⟩, ⟨9, 4⟩, ⟨37, 8⟩, ⟨25, 7⟩, ⟨10, 4⟩, ⟨38, 8⟩, ⟨26, 7⟩, ⟨11, 4⟩, ⟨39, 8⟩, ⟨27, 7⟩, ⟨12, 4⟩, ⟨40, 8⟩, ⟨28, 7⟩, ⟨13, 4⟩, ⟨1, 3⟩]⟩
theorem profile0235_checked : profile0235.check := by decide +kernel

noncomputable def selection1_0235 : Selection :=
  ⟨1, 2, 4, (506/25), 1320, -92, 1350⟩
theorem selection1_0235_checked : selection1_0235.check profile0235 := by decide +kernel

noncomputable def selection2_0235 : Selection :=
  ⟨2, -6, 8, (99/5), 349, -72, 1718⟩
theorem selection2_0235_checked : selection2_0235.check profile0235 := by decide +kernel

noncomputable def profile0236 : ProfileCell :=
  ⟨(1/12), (9/107),
    [4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨1, 4⟩, ⟨13, 5⟩, ⟨28, 8⟩, ⟨40, 9⟩, ⟨2, 4⟩, ⟨14, 5⟩, ⟨29, 8⟩, ⟨41, 9⟩, ⟨3, 4⟩, ⟨15, 5⟩, ⟨30, 8⟩, ⟨42, 9⟩, ⟨43, 13⟩, ⟨4, 4⟩, ⟨16, 5⟩, ⟨31, 8⟩, ⟨5, 4⟩, ⟨17, 5⟩, ⟨32, 8⟩, ⟨6, 4⟩, ⟨18, 5⟩, ⟨33, 8⟩, ⟨7, 4⟩, ⟨19, 5⟩, ⟨22, 7⟩, ⟨34, 8⟩, ⟨8, 4⟩, ⟨20, 5⟩, ⟨23, 7⟩, ⟨35, 8⟩, ⟨9, 4⟩, ⟨21, 5⟩, ⟨24, 7⟩, ⟨36, 8⟩, ⟨10, 4⟩, ⟨25, 7⟩, ⟨37, 8⟩, ⟨11, 4⟩, ⟨26, 7⟩, ⟨38, 8⟩, ⟨12, 4⟩, ⟨27, 7⟩, ⟨39, 8⟩]⟩
theorem profile0236_checked : profile0236.check := by decide +kernel

noncomputable def selection1_0236 : Selection :=
  ⟨1, 1, 4, (94/5), 1247, -110, 1566⟩
theorem selection1_0236_checked : selection1_0236.check profile0236 := by decide +kernel

noncomputable def selection2_0236 : Selection :=
  ⟨2, -7, 8, (1817/100), 326, -90, 1934⟩
theorem selection2_0236_checked : selection2_0236.check profile0236 := by decide +kernel

noncomputable def profile0237 : ProfileCell :=
  ⟨(9/107), (8/95),
    [4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨39, 9⟩, ⟨1, 4⟩, ⟨13, 5⟩, ⟨28, 8⟩, ⟨40, 9⟩, ⟨2, 4⟩, ⟨14, 5⟩, ⟨29, 8⟩, ⟨41, 9⟩, ⟨3, 4⟩, ⟨15, 5⟩, ⟨30, 8⟩, ⟨42, 9⟩, ⟨4, 4⟩, ⟨43, 13⟩, ⟨16, 5⟩, ⟨31, 8⟩, ⟨5, 4⟩, ⟨17, 5⟩, ⟨32, 8⟩, ⟨6, 4⟩, ⟨18, 5⟩, ⟨33, 8⟩, ⟨7, 4⟩, ⟨19, 5⟩, ⟨22, 7⟩, ⟨34, 8⟩, ⟨8, 4⟩, ⟨20, 5⟩, ⟨23, 7⟩, ⟨35, 8⟩, ⟨9, 4⟩, ⟨21, 5⟩, ⟨24, 7⟩, ⟨36, 8⟩, ⟨10, 4⟩, ⟨25, 7⟩, ⟨37, 8⟩, ⟨11, 4⟩, ⟨26, 7⟩, ⟨38, 8⟩, ⟨12, 4⟩, ⟨27, 7⟩]⟩
theorem profile0237_checked : profile0237.check := by decide +kernel

noncomputable def selection1_0237 : Selection :=
  ⟨1, 1, 4, (377/20), 158, -74, 1138⟩
theorem selection1_0237_checked : selection1_0237.check profile0237 := by decide +kernel

noncomputable def selection2_0237 : Selection :=
  ⟨2, -7, 8, (91/5), 42, -54, 1506⟩
theorem selection2_0237_checked : selection2_0237.check profile0237 := by decide +kernel

noncomputable def profile0238 : ProfileCell :=
  ⟨(8/95), (5/59),
    [4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨27, 8⟩, ⟨39, 9⟩, ⟨1, 4⟩, ⟨13, 5⟩, ⟨28, 8⟩, ⟨40, 9⟩, ⟨2, 4⟩, ⟨14, 5⟩, ⟨29, 8⟩, ⟨41, 9⟩, ⟨3, 4⟩, ⟨15, 5⟩, ⟨30, 8⟩, ⟨42, 9⟩, ⟨4, 4⟩, ⟨16, 5⟩, ⟨43, 13⟩, ⟨31, 8⟩, ⟨5, 4⟩, ⟨17, 5⟩, ⟨32, 8⟩, ⟨6, 4⟩, ⟨18, 5⟩, ⟨33, 8⟩, ⟨7, 4⟩, ⟨19, 5⟩, ⟨22, 7⟩, ⟨34, 8⟩, ⟨8, 4⟩, ⟨20, 5⟩, ⟨23, 7⟩, ⟨35, 8⟩, ⟨9, 4⟩, ⟨21, 5⟩, ⟨24, 7⟩, ⟨36, 8⟩, ⟨10, 4⟩, ⟨25, 7⟩, ⟨37, 8⟩, ⟨11, 4⟩, ⟨26, 7⟩, ⟨38, 8⟩, ⟨12, 4⟩]⟩
theorem profile0238_checked : profile0238.check := by decide +kernel

noncomputable def selection1_0238 : Selection :=
  ⟨1, 1, 4, (1899/100), 865, -26, 568⟩
theorem selection1_0238_checked : selection1_0238.check profile0238 := by decide +kernel

noncomputable def selection2_0238 : Selection :=
  ⟨2, -7, 8, (458/25), 226, -6, 936⟩
theorem selection2_0238_checked : selection2_0238.check profile0238 := by decide +kernel

noncomputable def profile0239 : ProfileCell :=
  ⟨(5/59), (9/106),
    [4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨12, 5⟩, ⟨27, 8⟩, ⟨1, 4⟩, ⟨39, 9⟩, ⟨13, 5⟩, ⟨28, 8⟩, ⟨2, 4⟩, ⟨40, 9⟩, ⟨14, 5⟩, ⟨29, 8⟩, ⟨3, 4⟩, ⟨41, 9⟩, ⟨15, 5⟩, ⟨30, 8⟩, ⟨4, 4⟩, ⟨42, 9⟩, ⟨16, 5⟩, ⟨31, 8⟩, ⟨43, 13⟩, ⟨5, 4⟩, ⟨17, 5⟩, ⟨32, 8⟩, ⟨6, 4⟩, ⟨18, 5⟩, ⟨33, 8⟩, ⟨7, 4⟩, ⟨19, 5⟩, ⟨22, 7⟩, ⟨34, 8⟩, ⟨8, 4⟩, ⟨20, 5⟩, ⟨23, 7⟩, ⟨35, 8⟩, ⟨9, 4⟩, ⟨21, 5⟩, ⟨24, 7⟩, ⟨36, 8⟩, ⟨10, 4⟩, ⟨25, 7⟩, ⟨37, 8⟩, ⟨11, 4⟩, ⟨26, 7⟩, ⟨38, 8⟩]⟩
theorem profile0239_checked : profile0239.check := by decide +kernel

noncomputable def selection1_0239 : Selection :=
  ⟨1, 1, 4, (953/50), 259, -56, 922⟩
theorem selection1_0239_checked : selection1_0239.check profile0239 := by decide +kernel

noncomputable def selection2_0239 : Selection :=
  ⟨2, -7, 8, (1837/100), 68, -36, 1290⟩
theorem selection2_0239_checked : selection2_0239.check profile0239 := by decide +kernel

noncomputable def profile0240 : ProfileCell :=
  ⟨(9/106), (4/47),
    [4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨38, 9⟩, ⟨12, 5⟩, ⟨27, 8⟩, ⟨1, 4⟩, ⟨39, 9⟩, ⟨13, 5⟩, ⟨28, 8⟩, ⟨2, 4⟩, ⟨40, 9⟩, ⟨14, 5⟩, ⟨29, 8⟩, ⟨3, 4⟩, ⟨41, 9⟩, ⟨15, 5⟩, ⟨30, 8⟩, ⟨4, 4⟩, ⟨42, 9⟩, ⟨16, 5⟩, ⟨31, 8⟩, ⟨5, 4⟩, ⟨43, 13⟩, ⟨17, 5⟩, ⟨32, 8⟩, ⟨6, 4⟩, ⟨18, 5⟩, ⟨33, 8⟩, ⟨7, 4⟩, ⟨19, 5⟩, ⟨22, 7⟩, ⟨34, 8⟩, ⟨8, 4⟩, ⟨20, 5⟩, ⟨23, 7⟩, ⟨35, 8⟩, ⟨9, 4⟩, ⟨21, 5⟩, ⟨24, 7⟩, ⟨36, 8⟩, ⟨10, 4⟩, ⟨25, 7⟩, ⟨37, 8⟩, ⟨11, 4⟩, ⟨26, 7⟩]⟩
theorem profile0240_checked : profile0240.check := by decide +kernel

noncomputable def selection1_0240 : Selection :=
  ⟨1, 1, 4, (477/25), 326, -2, 286⟩
theorem selection1_0240_checked : selection1_0240.check profile0240 := by decide +kernel

noncomputable def selection2_0240 : Selection :=
  ⟨2, -7, 8, (92/5), 85, 18, 654⟩
theorem selection2_0240_checked : selection2_0240.check profile0240 := by decide +kernel

noncomputable def profile0241 : ProfileCell :=
  ⟨(4/47), (3/35),
    [4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨26, 8⟩, ⟨12, 5⟩, ⟨38, 9⟩, ⟨1, 4⟩, ⟨27, 8⟩, ⟨13, 5⟩, ⟨39, 9⟩, ⟨2, 4⟩, ⟨28, 8⟩, ⟨14, 5⟩, ⟨40, 9⟩, ⟨3, 4⟩, ⟨29, 8⟩, ⟨15, 5⟩, ⟨41, 9⟩, ⟨4, 4⟩, ⟨30, 8⟩, ⟨16, 5⟩, ⟨42, 9⟩, ⟨5, 4⟩, ⟨31, 8⟩, ⟨17, 5⟩, ⟨43, 13⟩, ⟨6, 4⟩, ⟨32, 8⟩, ⟨18, 5⟩, ⟨7, 4⟩, ⟨33, 8⟩, ⟨19, 5⟩, ⟨22, 7⟩, ⟨8, 4⟩, ⟨34, 8⟩, ⟨20, 5⟩, ⟨23, 7⟩, ⟨9, 4⟩, ⟨35, 8⟩, ⟨21, 5⟩, ⟨24, 7⟩, ⟨10, 4⟩, ⟨36, 8⟩, ⟨25, 7⟩, ⟨11, 4⟩, ⟨37, 8⟩]⟩
theorem profile0241_checked : profile0241.check := by decide +kernel

noncomputable def selection1_0241 : Selection :=
  ⟨1, 1, 4, (961/50), 992, -18, 474⟩
theorem selection1_0241_checked : selection1_0241.check profile0241 := by decide +kernel

noncomputable def selection2_0241 : Selection :=
  ⟨2, -7, 8, (1853/100), 260, 2, 842⟩
theorem selection2_0241_checked : selection2_0241.check profile0241 := by decide +kernel

noncomputable def profile0242 : ProfileCell :=
  ⟨(3/35), (8/93),
    [4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨37, 9⟩, ⟨12, 5⟩, ⟨26, 8⟩, ⟨38, 9⟩, ⟨1, 4⟩, ⟨13, 5⟩, ⟨27, 8⟩, ⟨39, 9⟩, ⟨2, 4⟩, ⟨14, 5⟩, ⟨28, 8⟩, ⟨40, 9⟩, ⟨3, 4⟩, ⟨15, 5⟩, ⟨29, 8⟩, ⟨41, 9⟩, ⟨4, 4⟩, ⟨16, 5⟩, ⟨30, 8⟩, ⟨42, 9⟩, ⟨5, 4⟩, ⟨17, 5⟩, ⟨31, 8⟩, ⟨6, 4⟩, ⟨43, 13⟩, ⟨18, 5⟩, ⟨32, 8⟩, ⟨7, 4⟩, ⟨19, 5⟩, ⟨33, 8⟩, ⟨8, 4⟩, ⟨22, 7⟩, ⟨20, 5⟩, ⟨34, 8⟩, ⟨9, 4⟩, ⟨23, 7⟩, ⟨21, 5⟩, ⟨35, 8⟩, ⟨10, 4⟩, ⟨24, 7⟩, ⟨36, 8⟩, ⟨11, 4⟩, ⟨25, 7⟩]⟩
theorem profile0242_checked : profile0242.check := by decide +kernel

noncomputable def selection1_0242 : Selection :=
  ⟨1, 1, 4, (961/50), 501, 18, 54⟩
theorem selection1_0242_checked : selection1_0242.check profile0242 := by decide +kernel

noncomputable def selection2_0242 : Selection :=
  ⟨2, -7, 8, (464/25), 132, 38, 422⟩
theorem selection2_0242_checked : selection2_0242.check profile0242 := by decide +kernel

noncomputable def profile0243 : ProfileCell :=
  ⟨(8/93), (5/58),
    [4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨25, 8⟩, ⟨37, 9⟩, ⟨12, 5⟩, ⟨26, 8⟩, ⟨38, 9⟩, ⟨1, 4⟩, ⟨13, 5⟩, ⟨27, 8⟩, ⟨39, 9⟩, ⟨2, 4⟩, ⟨14, 5⟩, ⟨28, 8⟩, ⟨40, 9⟩, ⟨3, 4⟩, ⟨15, 5⟩, ⟨29, 8⟩, ⟨41, 9⟩, ⟨4, 4⟩, ⟨16, 5⟩, ⟨30, 8⟩, ⟨42, 9⟩, ⟨5, 4⟩, ⟨17, 5⟩, ⟨31, 8⟩, ⟨6, 4⟩, ⟨18, 5⟩, ⟨43, 13⟩, ⟨32, 8⟩, ⟨7, 4⟩, ⟨19, 5⟩, ⟨33, 8⟩, ⟨8, 4⟩, ⟨22, 7⟩, ⟨20, 5⟩, ⟨34, 8⟩, ⟨9, 4⟩, ⟨23, 7⟩, ⟨21, 5⟩, ⟨35, 8⟩, ⟨10, 4⟩, ⟨24, 7⟩, ⟨36, 8⟩, ⟨11, 4⟩]⟩
theorem profile0243_checked : profile0243.check := by decide +kernel

noncomputable def selection1_0243 : Selection :=
  ⟨1, 1, 4, (961/50), 303, 50, -318⟩
theorem selection1_0243_checked : selection1_0243.check profile0243 := by decide +kernel

noncomputable def selection2_0243 : Selection :=
  ⟨2, -7, 8, (464/25), 80, 70, 50⟩
theorem selection2_0243_checked : selection2_0243.check profile0243 := by decide +kernel

noncomputable def profile0244 : ProfileCell :=
  ⟨(5/58), (9/104),
    [4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨11, 5⟩, ⟨25, 8⟩, ⟨37, 9⟩, ⟨12, 5⟩, ⟨26, 8⟩, ⟨1, 4⟩, ⟨38, 9⟩, ⟨13, 5⟩, ⟨27, 8⟩, ⟨2, 4⟩, ⟨39, 9⟩, ⟨14, 5⟩, ⟨28, 8⟩, ⟨3, 4⟩, ⟨40, 9⟩, ⟨15, 5⟩, ⟨29, 8⟩, ⟨4, 4⟩, ⟨41, 9⟩, ⟨16, 5⟩, ⟨30, 8⟩, ⟨5, 4⟩, ⟨42, 9⟩, ⟨17, 5⟩, ⟨31, 8⟩, ⟨6, 4⟩, ⟨18, 5⟩, ⟨32, 8⟩, ⟨43, 13⟩, ⟨7, 4⟩, ⟨19, 5⟩, ⟨33, 8⟩, ⟨8, 4⟩, ⟨22, 7⟩, ⟨20, 5⟩, ⟨34, 8⟩, ⟨9, 4⟩, ⟨23, 7⟩, ⟨21, 5⟩, ⟨35, 8⟩, ⟨10, 4⟩, ⟨24, 7⟩, ⟨36, 8⟩]⟩
theorem profile0244_checked : profile0244.check := by decide +kernel

noncomputable def selection1_0244 : Selection :=
  ⟨1, 1, 4, (96/5), 540, 30, -86⟩
theorem selection1_0244_checked : selection1_0244.check profile0244 := by decide +kernel

noncomputable def selection2_0244 : Selection :=
  ⟨2, -7, 8, (929/50), 142, 50, 282⟩
theorem selection2_0244_checked : selection2_0244.check profile0244 := by decide +kernel

noncomputable def profile0245 : ProfileCell :=
  ⟨(9/104), (2/23),
    [4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨36, 9⟩, ⟨11, 5⟩, ⟨25, 8⟩, ⟨37, 9⟩, ⟨12, 5⟩, ⟨26, 8⟩, ⟨1, 4⟩, ⟨38, 9⟩, ⟨13, 5⟩, ⟨27, 8⟩, ⟨2, 4⟩, ⟨39, 9⟩, ⟨14, 5⟩, ⟨28, 8⟩, ⟨3, 4⟩, ⟨40, 9⟩, ⟨15, 5⟩, ⟨29, 8⟩, ⟨4, 4⟩, ⟨41, 9⟩, ⟨16, 5⟩, ⟨30, 8⟩, ⟨5, 4⟩, ⟨42, 9⟩, ⟨17, 5⟩, ⟨31, 8⟩, ⟨6, 4⟩, ⟨18, 5⟩, ⟨32, 8⟩, ⟨7, 4⟩, ⟨43, 13⟩, ⟨19, 5⟩, ⟨33, 8⟩, ⟨8, 4⟩, ⟨22, 7⟩, ⟨20, 5⟩, ⟨34, 8⟩, ⟨9, 4⟩, ⟨23, 7⟩, ⟨21, 5⟩, ⟨35, 8⟩, ⟨10, 4⟩, ⟨24, 7⟩]⟩
theorem profile0245_checked : profile0245.check := by decide +kernel

noncomputable def selection1_0245 : Selection :=
  ⟨1, 1, 4, (959/50), 679, 66, -502⟩
theorem selection1_0245_checked : selection1_0245.check profile0245 := by decide +kernel

noncomputable def selection2_0245 : Selection :=
  ⟨2, -7, 8, (929/50), 179, 86, -134⟩
theorem selection2_0245_checked : selection2_0245.check profile0245 := by decide +kernel

noncomputable def profile0246 : ProfileCell :=
  ⟨(2/23), (9/103),
    [4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨24, 8⟩, ⟨11, 5⟩, ⟨36, 9⟩, ⟨25, 8⟩, ⟨12, 5⟩, ⟨37, 9⟩, ⟨1, 4⟩, ⟨26, 8⟩, ⟨13, 5⟩, ⟨38, 9⟩, ⟨2, 4⟩, ⟨27, 8⟩, ⟨14, 5⟩, ⟨39, 9⟩, ⟨3, 4⟩, ⟨28, 8⟩, ⟨15, 5⟩, ⟨40, 9⟩, ⟨4, 4⟩, ⟨29, 8⟩, ⟨16, 5⟩, ⟨41, 9⟩, ⟨5, 4⟩, ⟨30, 8⟩, ⟨17, 5⟩, ⟨42, 9⟩, ⟨6, 4⟩, ⟨31, 8⟩, ⟨18, 5⟩, ⟨7, 4⟩, ⟨32, 8⟩, ⟨19, 5⟩, ⟨43, 13⟩, ⟨8, 4⟩, ⟨33, 8⟩, ⟨20, 5⟩, ⟨22, 7⟩, ⟨9, 4⟩, ⟨34, 8⟩, ⟨21, 5⟩, ⟨23, 7⟩, ⟨10, 4⟩, ⟨35, 8⟩]⟩
theorem profile0246_checked : profile0246.check := by decide +kernel

noncomputable def selection1_0246 : Selection :=
  ⟨1, 0, 4, (427/25), 610, 66, -502⟩
theorem selection1_0246_checked : selection1_0246.check profile0246 := by decide +kernel

noncomputable def selection2_0246 : Selection :=
  ⟨2, -8, 8, (1657/100), 161, 86, -134⟩
theorem selection2_0246_checked : selection2_0246.check profile0246 := by decide +kernel

noncomputable def profile0247 : ProfileCell :=
  ⟨(9/103), (5/57),
    [4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨35, 9⟩, ⟨24, 8⟩, ⟨11, 5⟩, ⟨36, 9⟩, ⟨25, 8⟩, ⟨12, 5⟩, ⟨37, 9⟩, ⟨1, 4⟩, ⟨26, 8⟩, ⟨13, 5⟩, ⟨38, 9⟩, ⟨2, 4⟩, ⟨27, 8⟩, ⟨14, 5⟩, ⟨39, 9⟩, ⟨3, 4⟩, ⟨28, 8⟩, ⟨15, 5⟩, ⟨40, 9⟩, ⟨4, 4⟩, ⟨29, 8⟩, ⟨16, 5⟩, ⟨41, 9⟩, ⟨5, 4⟩, ⟨30, 8⟩, ⟨17, 5⟩, ⟨42, 9⟩, ⟨6, 4⟩, ⟨31, 8⟩, ⟨18, 5⟩, ⟨7, 4⟩, ⟨32, 8⟩, ⟨19, 5⟩, ⟨8, 4⟩, ⟨43, 13⟩, ⟨33, 8⟩, ⟨20, 5⟩, ⟨22, 7⟩, ⟨9, 4⟩, ⟨34, 8⟩, ⟨21, 5⟩, ⟨23, 7⟩, ⟨10, 4⟩]⟩
theorem profile0247_checked : profile0247.check := by decide +kernel

noncomputable def selection1_0247 : Selection :=
  ⟨1, 0, 4, (1699/100), 490, 102, -914⟩
theorem selection1_0247_checked : selection1_0247.check profile0247 := by decide +kernel

noncomputable def selection2_0247 : Selection :=
  ⟨2, -8, 8, (331/20), 130, 122, -546⟩
theorem selection2_0247_checked : selection2_0247.check profile0247 := by decide +kernel

noncomputable def profile0248 : ProfileCell :=
  ⟨(5/57), (8/91),
    [4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨10, 5⟩, ⟨35, 9⟩, ⟨24, 8⟩, ⟨11, 5⟩, ⟨36, 9⟩, ⟨25, 8⟩, ⟨12, 5⟩, ⟨1, 4⟩, ⟨37, 9⟩, ⟨26, 8⟩, ⟨13, 5⟩, ⟨2, 4⟩, ⟨38, 9⟩, ⟨27, 8⟩, ⟨14, 5⟩, ⟨3, 4⟩, ⟨39, 9⟩, ⟨28, 8⟩, ⟨15, 5⟩, ⟨4, 4⟩, ⟨40, 9⟩, ⟨29, 8⟩, ⟨16, 5⟩, ⟨5, 4⟩, ⟨41, 9⟩, ⟨30, 8⟩, ⟨17, 5⟩, ⟨6, 4⟩, ⟨42, 9⟩, ⟨31, 8⟩, ⟨18, 5⟩, ⟨7, 4⟩, ⟨32, 8⟩, ⟨19, 5⟩, ⟨8, 4⟩, ⟨33, 8⟩, ⟨43, 13⟩, ⟨20, 5⟩, ⟨22, 7⟩, ⟨9, 4⟩, ⟨34, 8⟩, ⟨21, 5⟩, ⟨23, 7⟩]⟩
theorem profile0248_checked : profile0248.check := by decide +kernel

noncomputable def selection1_0248 : Selection :=
  ⟨1, 1, 4, (421/25), 275, 65, -542⟩
theorem selection1_0248_checked : selection1_0248.check profile0248 := by decide +kernel

noncomputable def selection2_0248 : Selection :=
  ⟨2, -7, 8, (33/2), 73, 81, -174⟩
theorem selection2_0248_checked : selection2_0248.check profile0248 := by decide +kernel

noncomputable def profile0249 : ProfileCell :=
  ⟨(8/91), (3/34),
    [4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨23, 8⟩, ⟨10, 5⟩, ⟨35, 9⟩, ⟨24, 8⟩, ⟨11, 5⟩, ⟨36, 9⟩, ⟨25, 8⟩, ⟨12, 5⟩, ⟨1, 4⟩, ⟨37, 9⟩, ⟨26, 8⟩, ⟨13, 5⟩, ⟨2, 4⟩, ⟨38, 9⟩, ⟨27, 8⟩, ⟨14, 5⟩, ⟨3, 4⟩, ⟨39, 9⟩, ⟨28, 8⟩, ⟨15, 5⟩, ⟨4, 4⟩, ⟨40, 9⟩, ⟨29, 8⟩, ⟨16, 5⟩, ⟨5, 4⟩, ⟨41, 9⟩, ⟨30, 8⟩, ⟨17, 5⟩, ⟨6, 4⟩, ⟨42, 9⟩, ⟨31, 8⟩, ⟨18, 5⟩, ⟨7, 4⟩, ⟨32, 8⟩, ⟨19, 5⟩, ⟨8, 4⟩, ⟨33, 8⟩, ⟨20, 5⟩, ⟨43, 13⟩, ⟨22, 7⟩, ⟨9, 4⟩, ⟨34, 8⟩, ⟨21, 5⟩]⟩
theorem profile0249_checked : profile0249.check := by decide +kernel

noncomputable def selection1_0249 : Selection :=
  ⟨1, 0, 4, (839/50), 459, 114, -1050⟩
theorem selection1_0249_checked : selection1_0249.check profile0249 := by decide +kernel

noncomputable def selection2_0249 : Selection :=
  ⟨2, -8, 8, (1649/100), 123, 134, -682⟩
theorem selection2_0249_checked : selection2_0249.check profile0249 := by decide +kernel

noncomputable def profile0250 : ProfileCell :=
  ⟨(3/34), (7/79),
    [4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨21, 6⟩, ⟨34, 9⟩, ⟨10, 5⟩, ⟨23, 8⟩, ⟨35, 9⟩, ⟨11, 5⟩, ⟨24, 8⟩, ⟨36, 9⟩, ⟨12, 5⟩, ⟨25, 8⟩, ⟨1, 4⟩, ⟨37, 9⟩, ⟨13, 5⟩, ⟨26, 8⟩, ⟨2, 4⟩, ⟨38, 9⟩, ⟨14, 5⟩, ⟨27, 8⟩, ⟨3, 4⟩, ⟨39, 9⟩, ⟨15, 5⟩, ⟨28, 8⟩, ⟨4, 4⟩, ⟨40, 9⟩, ⟨16, 5⟩, ⟨29, 8⟩, ⟨5, 4⟩, ⟨41, 9⟩, ⟨17, 5⟩, ⟨30, 8⟩, ⟨6, 4⟩, ⟨42, 9⟩, ⟨18, 5⟩, ⟨31, 8⟩, ⟨7, 4⟩, ⟨19, 5⟩, ⟨32, 8⟩, ⟨8, 4⟩, ⟨20, 5⟩, ⟨33, 8⟩, ⟨9, 4⟩, ⟨22, 7⟩, ⟨43, 13⟩]⟩
theorem profile0250_checked : profile0250.check := by decide +kernel

noncomputable def selection1_0250 : Selection :=
  ⟨1, -1, 4, (1463/100), 460, 120, -1118⟩
theorem selection1_0250_checked : selection1_0250.check profile0250 := by decide +kernel

noncomputable def selection2_0250 : Selection :=
  ⟨2, -9, 8, (361/25), 124, 140, -750⟩
theorem selection2_0250_checked : selection2_0250.check profile0250 := by decide +kernel

noncomputable def profile0251 : ProfileCell :=
  ⟨(7/79), (4/45),
    [4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨43, 14⟩, ⟨21, 6⟩, ⟨34, 9⟩, ⟨10, 5⟩, ⟨23, 8⟩, ⟨35, 9⟩, ⟨11, 5⟩, ⟨24, 8⟩, ⟨36, 9⟩, ⟨12, 5⟩, ⟨25, 8⟩, ⟨1, 4⟩, ⟨37, 9⟩, ⟨13, 5⟩, ⟨26, 8⟩, ⟨2, 4⟩, ⟨38, 9⟩, ⟨14, 5⟩, ⟨27, 8⟩, ⟨3, 4⟩, ⟨39, 9⟩, ⟨15, 5⟩, ⟨28, 8⟩, ⟨4, 4⟩, ⟨40, 9⟩, ⟨16, 5⟩, ⟨29, 8⟩, ⟨5, 4⟩, ⟨41, 9⟩, ⟨17, 5⟩, ⟨30, 8⟩, ⟨6, 4⟩, ⟨42, 9⟩, ⟨18, 5⟩, ⟨31, 8⟩, ⟨7, 4⟩, ⟨19, 5⟩, ⟨32, 8⟩, ⟨8, 4⟩, ⟨20, 5⟩, ⟨33, 8⟩, ⟨9, 4⟩, ⟨22, 7⟩]⟩
theorem profile0251_checked : profile0251.check := by decide +kernel

noncomputable def selection1_0251 : Selection :=
  ⟨1, -1, 4, (727/50), 346, -48, 778⟩
theorem selection1_0251_checked : selection1_0251.check profile0251 := by decide +kernel

noncomputable def selection2_0251 : Selection :=
  ⟨2, -9, 8, (289/20), 94, -28, 1146⟩
theorem selection2_0251_checked : selection2_0251.check profile0251 := by decide +kernel

noncomputable def profile0252 : ProfileCell :=
  ⟨(4/45), (9/101),
    [4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨22, 8⟩, ⟨21, 6⟩, ⟨43, 14⟩, ⟨10, 5⟩, ⟨34, 9⟩, ⟨23, 8⟩, ⟨11, 5⟩, ⟨35, 9⟩, ⟨24, 8⟩, ⟨12, 5⟩, ⟨36, 9⟩, ⟨1, 4⟩, ⟨25, 8⟩, ⟨13, 5⟩, ⟨37, 9⟩, ⟨2, 4⟩, ⟨26, 8⟩, ⟨14, 5⟩, ⟨38, 9⟩, ⟨3, 4⟩, ⟨27, 8⟩, ⟨15, 5⟩, ⟨39, 9⟩, ⟨4, 4⟩, ⟨28, 8⟩, ⟨16, 5⟩, ⟨40, 9⟩, ⟨5, 4⟩, ⟨29, 8⟩, ⟨17, 5⟩, ⟨41, 9⟩, ⟨6, 4⟩, ⟨30, 8⟩, ⟨18, 5⟩, ⟨42, 9⟩, ⟨7, 4⟩, ⟨31, 8⟩, ⟨19, 5⟩, ⟨8, 4⟩, ⟨32, 8⟩, ⟨20, 5⟩, ⟨9, 4⟩, ⟨33, 8⟩]⟩
theorem profile0252_checked : profile0252.check := by decide +kernel

noncomputable def selection1_0252 : Selection :=
  ⟨1, -1, 4, (293/20), 272, -80, 1138⟩
theorem selection1_0252_checked : selection1_0252.check profile0252 := by decide +kernel

noncomputable def selection2_0252 : Selection :=
  ⟨2, -9, 8, (1453/100), 74, -60, 1506⟩
theorem selection2_0252_checked : selection2_0252.check profile0252 := by decide +kernel

noncomputable def profile0253 : ProfileCell :=
  ⟨(9/101), (5/56),
    [4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨33, 9⟩, ⟨22, 8⟩, ⟨21, 6⟩, ⟨10, 5⟩, ⟨43, 14⟩, ⟨34, 9⟩, ⟨23, 8⟩, ⟨11, 5⟩, ⟨35, 9⟩, ⟨24, 8⟩, ⟨12, 5⟩, ⟨36, 9⟩, ⟨1, 4⟩, ⟨25, 8⟩, ⟨13, 5⟩, ⟨37, 9⟩, ⟨2, 4⟩, ⟨26, 8⟩, ⟨14, 5⟩, ⟨38, 9⟩, ⟨3, 4⟩, ⟨27, 8⟩, ⟨15, 5⟩, ⟨39, 9⟩, ⟨4, 4⟩, ⟨28, 8⟩, ⟨16, 5⟩, ⟨40, 9⟩, ⟨5, 4⟩, ⟨29, 8⟩, ⟨17, 5⟩, ⟨41, 9⟩, ⟨6, 4⟩, ⟨30, 8⟩, ⟨18, 5⟩, ⟨42, 9⟩, ⟨7, 4⟩, ⟨31, 8⟩, ⟨19, 5⟩, ⟨8, 4⟩, ⟨32, 8⟩, ⟨20, 5⟩, ⟨9, 4⟩]⟩
theorem profile0253_checked : profile0253.check := by decide +kernel

noncomputable def selection1_0253 : Selection :=
  ⟨1, -1, 4, (1469/100), 219, -26, 532⟩
theorem selection1_0253_checked : selection1_0253.check profile0253 := by decide +kernel

noncomputable def selection2_0253 : Selection :=
  ⟨2, -9, 8, (1457/100), 60, -6, 900⟩
theorem selection2_0253_checked : selection2_0253.check profile0253 := by decide +kernel

noncomputable def profile0254 : ProfileCell :=
  ⟨(5/56), (6/67),
    [4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨9, 5⟩, ⟨33, 9⟩, ⟨22, 8⟩, ⟨21, 6⟩, ⟨10, 5⟩, ⟨34, 9⟩, ⟨43, 14⟩, ⟨23, 8⟩, ⟨11, 5⟩, ⟨35, 9⟩, ⟨24, 8⟩, ⟨12, 5⟩, ⟨1, 4⟩, ⟨36, 9⟩, ⟨25, 8⟩, ⟨13, 5⟩, ⟨2, 4⟩, ⟨37, 9⟩, ⟨26, 8⟩, ⟨14, 5⟩, ⟨3, 4⟩, ⟨38, 9⟩, ⟨27, 8⟩, ⟨15, 5⟩, ⟨4, 4⟩, ⟨39, 9⟩, ⟨28, 8⟩, ⟨16, 5⟩, ⟨5, 4⟩, ⟨40, 9⟩, ⟨29, 8⟩, ⟨17, 5⟩, ⟨6, 4⟩, ⟨41, 9⟩, ⟨30, 8⟩, ⟨18, 5⟩, ⟨7, 4⟩, ⟨42, 9⟩, ⟨31, 8⟩, ⟨19, 5⟩, ⟨8, 4⟩, ⟨32, 8⟩, ⟨20, 5⟩]⟩
theorem profile0254_checked : profile0254.check := by decide +kernel

noncomputable def selection1_0254 : Selection :=
  ⟨1, -1, 4, (74/5), 333, -56, 868⟩
theorem selection1_0254_checked : selection1_0254.check profile0254 := by decide +kernel

noncomputable def selection2_0254 : Selection :=
  ⟨2, -9, 8, (293/20), 90, -36, 1236⟩
theorem selection2_0254_checked : selection2_0254.check profile0254 := by decide +kernel

noncomputable def profile0255 : ProfileCell :=
  ⟨(6/67), (9/100),
    [4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 1], [4, 4, 4, 4, 4],
    [⟨20, 6⟩, ⟨9, 5⟩, ⟨33, 9⟩, ⟨22, 8⟩, ⟨21, 6⟩, ⟨10, 5⟩, ⟨34, 9⟩, ⟨23, 8⟩, ⟨43, 14⟩, ⟨11, 5⟩, ⟨35, 9⟩, ⟨24, 8⟩, ⟨12, 5⟩, ⟨1, 4⟩, ⟨36, 9⟩, ⟨25, 8⟩, ⟨13, 5⟩, ⟨2, 4⟩, ⟨37, 9⟩, ⟨26, 8⟩, ⟨14, 5⟩, ⟨3, 4⟩, ⟨38, 9⟩, ⟨27, 8⟩, ⟨15, 5⟩, ⟨4, 4⟩, ⟨39, 9⟩, ⟨28, 8⟩, ⟨16, 5⟩, ⟨5, 4⟩, ⟨40, 9⟩, ⟨29, 8⟩, ⟨17, 5⟩, ⟨6, 4⟩, ⟨41, 9⟩, ⟨30, 8⟩, ⟨18, 5⟩, ⟨7, 4⟩, ⟨42, 9⟩, ⟨31, 8⟩, ⟨19, 5⟩, ⟨8, 4⟩, ⟨32, 8⟩]⟩
theorem profile0255_checked : profile0255.check := by decide +kernel

noncomputable def selection1_0255 : Selection :=
  ⟨1, -1, 4, (1503/100), 567, -80, 1136⟩
theorem selection1_0255_checked : selection1_0255.check profile0255 := by decide +kernel

noncomputable def selection2_0255 : Selection :=
  ⟨2, -9, 8, (1481/100), 152, -60, 1504⟩
theorem selection2_0255_checked : selection2_0255.check profile0255 := by decide +kernel

noncomputable def leaf1_0192 : Block :=
  Block.single profile0192 selection1_0192 profile0192_checked selection1_0192_checked
noncomputable def leaf1_0193 : Block :=
  Block.single profile0193 selection1_0193 profile0193_checked selection1_0193_checked
noncomputable def leaf1_0194 : Block :=
  Block.single profile0194 selection1_0194 profile0194_checked selection1_0194_checked
noncomputable def leaf1_0195 : Block :=
  Block.single profile0195 selection1_0195 profile0195_checked selection1_0195_checked
noncomputable def leaf1_0196 : Block :=
  Block.single profile0196 selection1_0196 profile0196_checked selection1_0196_checked
noncomputable def leaf1_0197 : Block :=
  Block.single profile0197 selection1_0197 profile0197_checked selection1_0197_checked
noncomputable def leaf1_0198 : Block :=
  Block.single profile0198 selection1_0198 profile0198_checked selection1_0198_checked
noncomputable def leaf1_0199 : Block :=
  Block.single profile0199 selection1_0199 profile0199_checked selection1_0199_checked
noncomputable def leaf1_0200 : Block :=
  Block.single profile0200 selection1_0200 profile0200_checked selection1_0200_checked
noncomputable def leaf1_0201 : Block :=
  Block.single profile0201 selection1_0201 profile0201_checked selection1_0201_checked
noncomputable def leaf1_0202 : Block :=
  Block.single profile0202 selection1_0202 profile0202_checked selection1_0202_checked
noncomputable def leaf1_0203 : Block :=
  Block.single profile0203 selection1_0203 profile0203_checked selection1_0203_checked
noncomputable def leaf1_0204 : Block :=
  Block.single profile0204 selection1_0204 profile0204_checked selection1_0204_checked
noncomputable def leaf1_0205 : Block :=
  Block.single profile0205 selection1_0205 profile0205_checked selection1_0205_checked
noncomputable def leaf1_0206 : Block :=
  Block.single profile0206 selection1_0206 profile0206_checked selection1_0206_checked
noncomputable def leaf1_0207 : Block :=
  Block.single profile0207 selection1_0207 profile0207_checked selection1_0207_checked
noncomputable def leaf1_0208 : Block :=
  Block.single profile0208 selection1_0208 profile0208_checked selection1_0208_checked
noncomputable def leaf1_0209 : Block :=
  Block.single profile0209 selection1_0209 profile0209_checked selection1_0209_checked
noncomputable def leaf1_0210 : Block :=
  Block.single profile0210 selection1_0210 profile0210_checked selection1_0210_checked
noncomputable def leaf1_0211 : Block :=
  Block.single profile0211 selection1_0211 profile0211_checked selection1_0211_checked
noncomputable def leaf1_0212 : Block :=
  Block.single profile0212 selection1_0212 profile0212_checked selection1_0212_checked
noncomputable def leaf1_0213 : Block :=
  Block.single profile0213 selection1_0213 profile0213_checked selection1_0213_checked
noncomputable def leaf1_0214 : Block :=
  Block.single profile0214 selection1_0214 profile0214_checked selection1_0214_checked
noncomputable def leaf1_0215 : Block :=
  Block.single profile0215 selection1_0215 profile0215_checked selection1_0215_checked
noncomputable def leaf1_0216 : Block :=
  Block.single profile0216 selection1_0216 profile0216_checked selection1_0216_checked
noncomputable def leaf1_0217 : Block :=
  Block.single profile0217 selection1_0217 profile0217_checked selection1_0217_checked
noncomputable def leaf1_0218 : Block :=
  Block.single profile0218 selection1_0218 profile0218_checked selection1_0218_checked
noncomputable def leaf1_0219 : Block :=
  Block.single profile0219 selection1_0219 profile0219_checked selection1_0219_checked
noncomputable def leaf1_0220 : Block :=
  Block.single profile0220 selection1_0220 profile0220_checked selection1_0220_checked
noncomputable def leaf1_0221 : Block :=
  Block.single profile0221 selection1_0221 profile0221_checked selection1_0221_checked
noncomputable def leaf1_0222 : Block :=
  Block.single profile0222 selection1_0222 profile0222_checked selection1_0222_checked
noncomputable def leaf1_0223 : Block :=
  Block.single profile0223 selection1_0223 profile0223_checked selection1_0223_checked
noncomputable def leaf1_0224 : Block :=
  Block.single profile0224 selection1_0224 profile0224_checked selection1_0224_checked
noncomputable def leaf1_0225 : Block :=
  Block.single profile0225 selection1_0225 profile0225_checked selection1_0225_checked
noncomputable def leaf1_0226 : Block :=
  Block.single profile0226 selection1_0226 profile0226_checked selection1_0226_checked
noncomputable def leaf1_0227 : Block :=
  Block.single profile0227 selection1_0227 profile0227_checked selection1_0227_checked
noncomputable def leaf1_0228 : Block :=
  Block.single profile0228 selection1_0228 profile0228_checked selection1_0228_checked
noncomputable def leaf1_0229 : Block :=
  Block.single profile0229 selection1_0229 profile0229_checked selection1_0229_checked
noncomputable def leaf1_0230 : Block :=
  Block.single profile0230 selection1_0230 profile0230_checked selection1_0230_checked
noncomputable def leaf1_0231 : Block :=
  Block.single profile0231 selection1_0231 profile0231_checked selection1_0231_checked
noncomputable def leaf1_0232 : Block :=
  Block.single profile0232 selection1_0232 profile0232_checked selection1_0232_checked
noncomputable def leaf1_0233 : Block :=
  Block.single profile0233 selection1_0233 profile0233_checked selection1_0233_checked
noncomputable def leaf1_0234 : Block :=
  Block.single profile0234 selection1_0234 profile0234_checked selection1_0234_checked
noncomputable def leaf1_0235 : Block :=
  Block.single profile0235 selection1_0235 profile0235_checked selection1_0235_checked
noncomputable def leaf1_0236 : Block :=
  Block.single profile0236 selection1_0236 profile0236_checked selection1_0236_checked
noncomputable def leaf1_0237 : Block :=
  Block.single profile0237 selection1_0237 profile0237_checked selection1_0237_checked
noncomputable def leaf1_0238 : Block :=
  Block.single profile0238 selection1_0238 profile0238_checked selection1_0238_checked
noncomputable def leaf1_0239 : Block :=
  Block.single profile0239 selection1_0239 profile0239_checked selection1_0239_checked
noncomputable def leaf1_0240 : Block :=
  Block.single profile0240 selection1_0240 profile0240_checked selection1_0240_checked
noncomputable def leaf1_0241 : Block :=
  Block.single profile0241 selection1_0241 profile0241_checked selection1_0241_checked
noncomputable def leaf1_0242 : Block :=
  Block.single profile0242 selection1_0242 profile0242_checked selection1_0242_checked
noncomputable def leaf1_0243 : Block :=
  Block.single profile0243 selection1_0243 profile0243_checked selection1_0243_checked
noncomputable def leaf1_0244 : Block :=
  Block.single profile0244 selection1_0244 profile0244_checked selection1_0244_checked
noncomputable def leaf1_0245 : Block :=
  Block.single profile0245 selection1_0245 profile0245_checked selection1_0245_checked
noncomputable def leaf1_0246 : Block :=
  Block.single profile0246 selection1_0246 profile0246_checked selection1_0246_checked
noncomputable def leaf1_0247 : Block :=
  Block.single profile0247 selection1_0247 profile0247_checked selection1_0247_checked
noncomputable def leaf1_0248 : Block :=
  Block.single profile0248 selection1_0248 profile0248_checked selection1_0248_checked
noncomputable def leaf1_0249 : Block :=
  Block.single profile0249 selection1_0249 profile0249_checked selection1_0249_checked
noncomputable def leaf1_0250 : Block :=
  Block.single profile0250 selection1_0250 profile0250_checked selection1_0250_checked
noncomputable def leaf1_0251 : Block :=
  Block.single profile0251 selection1_0251 profile0251_checked selection1_0251_checked
noncomputable def leaf1_0252 : Block :=
  Block.single profile0252 selection1_0252 profile0252_checked selection1_0252_checked
noncomputable def leaf1_0253 : Block :=
  Block.single profile0253 selection1_0253 profile0253_checked selection1_0253_checked
noncomputable def leaf1_0254 : Block :=
  Block.single profile0254 selection1_0254 profile0254_checked selection1_0254_checked
noncomputable def leaf1_0255 : Block :=
  Block.single profile0255 selection1_0255 profile0255_checked selection1_0255_checked
noncomputable def batch003p1_0_0000 : Block :=
  Block.append leaf1_0192 leaf1_0193 (by decide +kernel)
noncomputable def batch003p1_0_0001 : Block :=
  Block.append leaf1_0194 leaf1_0195 (by decide +kernel)
noncomputable def batch003p1_0_0002 : Block :=
  Block.append leaf1_0196 leaf1_0197 (by decide +kernel)
noncomputable def batch003p1_0_0003 : Block :=
  Block.append leaf1_0198 leaf1_0199 (by decide +kernel)
noncomputable def batch003p1_0_0004 : Block :=
  Block.append leaf1_0200 leaf1_0201 (by decide +kernel)
noncomputable def batch003p1_0_0005 : Block :=
  Block.append leaf1_0202 leaf1_0203 (by decide +kernel)
noncomputable def batch003p1_0_0006 : Block :=
  Block.append leaf1_0204 leaf1_0205 (by decide +kernel)
noncomputable def batch003p1_0_0007 : Block :=
  Block.append leaf1_0206 leaf1_0207 (by decide +kernel)
noncomputable def batch003p1_0_0008 : Block :=
  Block.append leaf1_0208 leaf1_0209 (by decide +kernel)
noncomputable def batch003p1_0_0009 : Block :=
  Block.append leaf1_0210 leaf1_0211 (by decide +kernel)
noncomputable def batch003p1_0_0010 : Block :=
  Block.append leaf1_0212 leaf1_0213 (by decide +kernel)
noncomputable def batch003p1_0_0011 : Block :=
  Block.append leaf1_0214 leaf1_0215 (by decide +kernel)
noncomputable def batch003p1_0_0012 : Block :=
  Block.append leaf1_0216 leaf1_0217 (by decide +kernel)
noncomputable def batch003p1_0_0013 : Block :=
  Block.append leaf1_0218 leaf1_0219 (by decide +kernel)
noncomputable def batch003p1_0_0014 : Block :=
  Block.append leaf1_0220 leaf1_0221 (by decide +kernel)
noncomputable def batch003p1_0_0015 : Block :=
  Block.append leaf1_0222 leaf1_0223 (by decide +kernel)
noncomputable def batch003p1_0_0016 : Block :=
  Block.append leaf1_0224 leaf1_0225 (by decide +kernel)
noncomputable def batch003p1_0_0017 : Block :=
  Block.append leaf1_0226 leaf1_0227 (by decide +kernel)
noncomputable def batch003p1_0_0018 : Block :=
  Block.append leaf1_0228 leaf1_0229 (by decide +kernel)
noncomputable def batch003p1_0_0019 : Block :=
  Block.append leaf1_0230 leaf1_0231 (by decide +kernel)
noncomputable def batch003p1_0_0020 : Block :=
  Block.append leaf1_0232 leaf1_0233 (by decide +kernel)
noncomputable def batch003p1_0_0021 : Block :=
  Block.append leaf1_0234 leaf1_0235 (by decide +kernel)
noncomputable def batch003p1_0_0022 : Block :=
  Block.append leaf1_0236 leaf1_0237 (by decide +kernel)
noncomputable def batch003p1_0_0023 : Block :=
  Block.append leaf1_0238 leaf1_0239 (by decide +kernel)
noncomputable def batch003p1_0_0024 : Block :=
  Block.append leaf1_0240 leaf1_0241 (by decide +kernel)
noncomputable def batch003p1_0_0025 : Block :=
  Block.append leaf1_0242 leaf1_0243 (by decide +kernel)
noncomputable def batch003p1_0_0026 : Block :=
  Block.append leaf1_0244 leaf1_0245 (by decide +kernel)
noncomputable def batch003p1_0_0027 : Block :=
  Block.append leaf1_0246 leaf1_0247 (by decide +kernel)
noncomputable def batch003p1_0_0028 : Block :=
  Block.append leaf1_0248 leaf1_0249 (by decide +kernel)
noncomputable def batch003p1_0_0029 : Block :=
  Block.append leaf1_0250 leaf1_0251 (by decide +kernel)
noncomputable def batch003p1_0_0030 : Block :=
  Block.append leaf1_0252 leaf1_0253 (by decide +kernel)
noncomputable def batch003p1_0_0031 : Block :=
  Block.append leaf1_0254 leaf1_0255 (by decide +kernel)
noncomputable def batch003p1_1_0000 : Block :=
  Block.append batch003p1_0_0000 batch003p1_0_0001 (by decide +kernel)
noncomputable def batch003p1_1_0001 : Block :=
  Block.append batch003p1_0_0002 batch003p1_0_0003 (by decide +kernel)
noncomputable def batch003p1_1_0002 : Block :=
  Block.append batch003p1_0_0004 batch003p1_0_0005 (by decide +kernel)
noncomputable def batch003p1_1_0003 : Block :=
  Block.append batch003p1_0_0006 batch003p1_0_0007 (by decide +kernel)
noncomputable def batch003p1_1_0004 : Block :=
  Block.append batch003p1_0_0008 batch003p1_0_0009 (by decide +kernel)
noncomputable def batch003p1_1_0005 : Block :=
  Block.append batch003p1_0_0010 batch003p1_0_0011 (by decide +kernel)
noncomputable def batch003p1_1_0006 : Block :=
  Block.append batch003p1_0_0012 batch003p1_0_0013 (by decide +kernel)
noncomputable def batch003p1_1_0007 : Block :=
  Block.append batch003p1_0_0014 batch003p1_0_0015 (by decide +kernel)
noncomputable def batch003p1_1_0008 : Block :=
  Block.append batch003p1_0_0016 batch003p1_0_0017 (by decide +kernel)
noncomputable def batch003p1_1_0009 : Block :=
  Block.append batch003p1_0_0018 batch003p1_0_0019 (by decide +kernel)
noncomputable def batch003p1_1_0010 : Block :=
  Block.append batch003p1_0_0020 batch003p1_0_0021 (by decide +kernel)
noncomputable def batch003p1_1_0011 : Block :=
  Block.append batch003p1_0_0022 batch003p1_0_0023 (by decide +kernel)
noncomputable def batch003p1_1_0012 : Block :=
  Block.append batch003p1_0_0024 batch003p1_0_0025 (by decide +kernel)
noncomputable def batch003p1_1_0013 : Block :=
  Block.append batch003p1_0_0026 batch003p1_0_0027 (by decide +kernel)
noncomputable def batch003p1_1_0014 : Block :=
  Block.append batch003p1_0_0028 batch003p1_0_0029 (by decide +kernel)
noncomputable def batch003p1_1_0015 : Block :=
  Block.append batch003p1_0_0030 batch003p1_0_0031 (by decide +kernel)
noncomputable def batch003p1_2_0000 : Block :=
  Block.append batch003p1_1_0000 batch003p1_1_0001 (by decide +kernel)
noncomputable def batch003p1_2_0001 : Block :=
  Block.append batch003p1_1_0002 batch003p1_1_0003 (by decide +kernel)
noncomputable def batch003p1_2_0002 : Block :=
  Block.append batch003p1_1_0004 batch003p1_1_0005 (by decide +kernel)
noncomputable def batch003p1_2_0003 : Block :=
  Block.append batch003p1_1_0006 batch003p1_1_0007 (by decide +kernel)
noncomputable def batch003p1_2_0004 : Block :=
  Block.append batch003p1_1_0008 batch003p1_1_0009 (by decide +kernel)
noncomputable def batch003p1_2_0005 : Block :=
  Block.append batch003p1_1_0010 batch003p1_1_0011 (by decide +kernel)
noncomputable def batch003p1_2_0006 : Block :=
  Block.append batch003p1_1_0012 batch003p1_1_0013 (by decide +kernel)
noncomputable def batch003p1_2_0007 : Block :=
  Block.append batch003p1_1_0014 batch003p1_1_0015 (by decide +kernel)
noncomputable def batch003p1_3_0000 : Block :=
  Block.append batch003p1_2_0000 batch003p1_2_0001 (by decide +kernel)
noncomputable def batch003p1_3_0001 : Block :=
  Block.append batch003p1_2_0002 batch003p1_2_0003 (by decide +kernel)
noncomputable def batch003p1_3_0002 : Block :=
  Block.append batch003p1_2_0004 batch003p1_2_0005 (by decide +kernel)
noncomputable def batch003p1_3_0003 : Block :=
  Block.append batch003p1_2_0006 batch003p1_2_0007 (by decide +kernel)
noncomputable def batch003p1_4_0000 : Block :=
  Block.append batch003p1_3_0000 batch003p1_3_0001 (by decide +kernel)
noncomputable def batch003p1_4_0001 : Block :=
  Block.append batch003p1_3_0002 batch003p1_3_0003 (by decide +kernel)
noncomputable def batch003p1_5_0000 : Block :=
  Block.append batch003p1_4_0000 batch003p1_4_0001 (by decide +kernel)
theorem batch003p1_5_0000_left : batch003p1_5_0000.left = (31/29) := by decide +kernel
theorem batch003p1_5_0000_right : batch003p1_5_0000.right = (109/100) := by decide +kernel
theorem batch003p1_5_0000_units : batch003p1_5_0000.units = 27073 := by decide +kernel
noncomputable def leaf2_0192 : Block :=
  Block.single profile0192 selection2_0192 profile0192_checked selection2_0192_checked
noncomputable def leaf2_0193 : Block :=
  Block.single profile0193 selection2_0193 profile0193_checked selection2_0193_checked
noncomputable def leaf2_0194 : Block :=
  Block.single profile0194 selection2_0194 profile0194_checked selection2_0194_checked
noncomputable def leaf2_0195 : Block :=
  Block.single profile0195 selection2_0195 profile0195_checked selection2_0195_checked
noncomputable def leaf2_0196 : Block :=
  Block.single profile0196 selection2_0196 profile0196_checked selection2_0196_checked
noncomputable def leaf2_0197 : Block :=
  Block.single profile0197 selection2_0197 profile0197_checked selection2_0197_checked
noncomputable def leaf2_0198 : Block :=
  Block.single profile0198 selection2_0198 profile0198_checked selection2_0198_checked
noncomputable def leaf2_0199 : Block :=
  Block.single profile0199 selection2_0199 profile0199_checked selection2_0199_checked
noncomputable def leaf2_0200 : Block :=
  Block.single profile0200 selection2_0200 profile0200_checked selection2_0200_checked
noncomputable def leaf2_0201 : Block :=
  Block.single profile0201 selection2_0201 profile0201_checked selection2_0201_checked
noncomputable def leaf2_0202 : Block :=
  Block.single profile0202 selection2_0202 profile0202_checked selection2_0202_checked
noncomputable def leaf2_0203 : Block :=
  Block.single profile0203 selection2_0203 profile0203_checked selection2_0203_checked
noncomputable def leaf2_0204 : Block :=
  Block.single profile0204 selection2_0204 profile0204_checked selection2_0204_checked
noncomputable def leaf2_0205 : Block :=
  Block.single profile0205 selection2_0205 profile0205_checked selection2_0205_checked
noncomputable def leaf2_0206 : Block :=
  Block.single profile0206 selection2_0206 profile0206_checked selection2_0206_checked
noncomputable def leaf2_0207 : Block :=
  Block.single profile0207 selection2_0207 profile0207_checked selection2_0207_checked
noncomputable def leaf2_0208 : Block :=
  Block.single profile0208 selection2_0208 profile0208_checked selection2_0208_checked
noncomputable def leaf2_0209 : Block :=
  Block.single profile0209 selection2_0209 profile0209_checked selection2_0209_checked
noncomputable def leaf2_0210 : Block :=
  Block.single profile0210 selection2_0210 profile0210_checked selection2_0210_checked
noncomputable def leaf2_0211 : Block :=
  Block.single profile0211 selection2_0211 profile0211_checked selection2_0211_checked
noncomputable def leaf2_0212 : Block :=
  Block.single profile0212 selection2_0212 profile0212_checked selection2_0212_checked
noncomputable def leaf2_0213 : Block :=
  Block.single profile0213 selection2_0213 profile0213_checked selection2_0213_checked
noncomputable def leaf2_0214 : Block :=
  Block.single profile0214 selection2_0214 profile0214_checked selection2_0214_checked
noncomputable def leaf2_0215 : Block :=
  Block.single profile0215 selection2_0215 profile0215_checked selection2_0215_checked
noncomputable def leaf2_0216 : Block :=
  Block.single profile0216 selection2_0216 profile0216_checked selection2_0216_checked
noncomputable def leaf2_0217 : Block :=
  Block.single profile0217 selection2_0217 profile0217_checked selection2_0217_checked
noncomputable def leaf2_0218 : Block :=
  Block.single profile0218 selection2_0218 profile0218_checked selection2_0218_checked
noncomputable def leaf2_0219 : Block :=
  Block.single profile0219 selection2_0219 profile0219_checked selection2_0219_checked
noncomputable def leaf2_0220 : Block :=
  Block.single profile0220 selection2_0220 profile0220_checked selection2_0220_checked
noncomputable def leaf2_0221 : Block :=
  Block.single profile0221 selection2_0221 profile0221_checked selection2_0221_checked
noncomputable def leaf2_0222 : Block :=
  Block.single profile0222 selection2_0222 profile0222_checked selection2_0222_checked
noncomputable def leaf2_0223 : Block :=
  Block.single profile0223 selection2_0223 profile0223_checked selection2_0223_checked
noncomputable def leaf2_0224 : Block :=
  Block.single profile0224 selection2_0224 profile0224_checked selection2_0224_checked
noncomputable def leaf2_0225 : Block :=
  Block.single profile0225 selection2_0225 profile0225_checked selection2_0225_checked
noncomputable def leaf2_0226 : Block :=
  Block.single profile0226 selection2_0226 profile0226_checked selection2_0226_checked
noncomputable def leaf2_0227 : Block :=
  Block.single profile0227 selection2_0227 profile0227_checked selection2_0227_checked
noncomputable def leaf2_0228 : Block :=
  Block.single profile0228 selection2_0228 profile0228_checked selection2_0228_checked
noncomputable def leaf2_0229 : Block :=
  Block.single profile0229 selection2_0229 profile0229_checked selection2_0229_checked
noncomputable def leaf2_0230 : Block :=
  Block.single profile0230 selection2_0230 profile0230_checked selection2_0230_checked
noncomputable def leaf2_0231 : Block :=
  Block.single profile0231 selection2_0231 profile0231_checked selection2_0231_checked
noncomputable def leaf2_0232 : Block :=
  Block.single profile0232 selection2_0232 profile0232_checked selection2_0232_checked
noncomputable def leaf2_0233 : Block :=
  Block.single profile0233 selection2_0233 profile0233_checked selection2_0233_checked
noncomputable def leaf2_0234 : Block :=
  Block.single profile0234 selection2_0234 profile0234_checked selection2_0234_checked
noncomputable def leaf2_0235 : Block :=
  Block.single profile0235 selection2_0235 profile0235_checked selection2_0235_checked
noncomputable def leaf2_0236 : Block :=
  Block.single profile0236 selection2_0236 profile0236_checked selection2_0236_checked
noncomputable def leaf2_0237 : Block :=
  Block.single profile0237 selection2_0237 profile0237_checked selection2_0237_checked
noncomputable def leaf2_0238 : Block :=
  Block.single profile0238 selection2_0238 profile0238_checked selection2_0238_checked
noncomputable def leaf2_0239 : Block :=
  Block.single profile0239 selection2_0239 profile0239_checked selection2_0239_checked
noncomputable def leaf2_0240 : Block :=
  Block.single profile0240 selection2_0240 profile0240_checked selection2_0240_checked
noncomputable def leaf2_0241 : Block :=
  Block.single profile0241 selection2_0241 profile0241_checked selection2_0241_checked
noncomputable def leaf2_0242 : Block :=
  Block.single profile0242 selection2_0242 profile0242_checked selection2_0242_checked
noncomputable def leaf2_0243 : Block :=
  Block.single profile0243 selection2_0243 profile0243_checked selection2_0243_checked
noncomputable def leaf2_0244 : Block :=
  Block.single profile0244 selection2_0244 profile0244_checked selection2_0244_checked
noncomputable def leaf2_0245 : Block :=
  Block.single profile0245 selection2_0245 profile0245_checked selection2_0245_checked
noncomputable def leaf2_0246 : Block :=
  Block.single profile0246 selection2_0246 profile0246_checked selection2_0246_checked
noncomputable def leaf2_0247 : Block :=
  Block.single profile0247 selection2_0247 profile0247_checked selection2_0247_checked
noncomputable def leaf2_0248 : Block :=
  Block.single profile0248 selection2_0248 profile0248_checked selection2_0248_checked
noncomputable def leaf2_0249 : Block :=
  Block.single profile0249 selection2_0249 profile0249_checked selection2_0249_checked
noncomputable def leaf2_0250 : Block :=
  Block.single profile0250 selection2_0250 profile0250_checked selection2_0250_checked
noncomputable def leaf2_0251 : Block :=
  Block.single profile0251 selection2_0251 profile0251_checked selection2_0251_checked
noncomputable def leaf2_0252 : Block :=
  Block.single profile0252 selection2_0252 profile0252_checked selection2_0252_checked
noncomputable def leaf2_0253 : Block :=
  Block.single profile0253 selection2_0253 profile0253_checked selection2_0253_checked
noncomputable def leaf2_0254 : Block :=
  Block.single profile0254 selection2_0254 profile0254_checked selection2_0254_checked
noncomputable def leaf2_0255 : Block :=
  Block.single profile0255 selection2_0255 profile0255_checked selection2_0255_checked
noncomputable def batch003p2_0_0000 : Block :=
  Block.append leaf2_0192 leaf2_0193 (by decide +kernel)
noncomputable def batch003p2_0_0001 : Block :=
  Block.append leaf2_0194 leaf2_0195 (by decide +kernel)
noncomputable def batch003p2_0_0002 : Block :=
  Block.append leaf2_0196 leaf2_0197 (by decide +kernel)
noncomputable def batch003p2_0_0003 : Block :=
  Block.append leaf2_0198 leaf2_0199 (by decide +kernel)
noncomputable def batch003p2_0_0004 : Block :=
  Block.append leaf2_0200 leaf2_0201 (by decide +kernel)
noncomputable def batch003p2_0_0005 : Block :=
  Block.append leaf2_0202 leaf2_0203 (by decide +kernel)
noncomputable def batch003p2_0_0006 : Block :=
  Block.append leaf2_0204 leaf2_0205 (by decide +kernel)
noncomputable def batch003p2_0_0007 : Block :=
  Block.append leaf2_0206 leaf2_0207 (by decide +kernel)
noncomputable def batch003p2_0_0008 : Block :=
  Block.append leaf2_0208 leaf2_0209 (by decide +kernel)
noncomputable def batch003p2_0_0009 : Block :=
  Block.append leaf2_0210 leaf2_0211 (by decide +kernel)
noncomputable def batch003p2_0_0010 : Block :=
  Block.append leaf2_0212 leaf2_0213 (by decide +kernel)
noncomputable def batch003p2_0_0011 : Block :=
  Block.append leaf2_0214 leaf2_0215 (by decide +kernel)
noncomputable def batch003p2_0_0012 : Block :=
  Block.append leaf2_0216 leaf2_0217 (by decide +kernel)
noncomputable def batch003p2_0_0013 : Block :=
  Block.append leaf2_0218 leaf2_0219 (by decide +kernel)
noncomputable def batch003p2_0_0014 : Block :=
  Block.append leaf2_0220 leaf2_0221 (by decide +kernel)
noncomputable def batch003p2_0_0015 : Block :=
  Block.append leaf2_0222 leaf2_0223 (by decide +kernel)
noncomputable def batch003p2_0_0016 : Block :=
  Block.append leaf2_0224 leaf2_0225 (by decide +kernel)
noncomputable def batch003p2_0_0017 : Block :=
  Block.append leaf2_0226 leaf2_0227 (by decide +kernel)
noncomputable def batch003p2_0_0018 : Block :=
  Block.append leaf2_0228 leaf2_0229 (by decide +kernel)
noncomputable def batch003p2_0_0019 : Block :=
  Block.append leaf2_0230 leaf2_0231 (by decide +kernel)
noncomputable def batch003p2_0_0020 : Block :=
  Block.append leaf2_0232 leaf2_0233 (by decide +kernel)
noncomputable def batch003p2_0_0021 : Block :=
  Block.append leaf2_0234 leaf2_0235 (by decide +kernel)
noncomputable def batch003p2_0_0022 : Block :=
  Block.append leaf2_0236 leaf2_0237 (by decide +kernel)
noncomputable def batch003p2_0_0023 : Block :=
  Block.append leaf2_0238 leaf2_0239 (by decide +kernel)
noncomputable def batch003p2_0_0024 : Block :=
  Block.append leaf2_0240 leaf2_0241 (by decide +kernel)
noncomputable def batch003p2_0_0025 : Block :=
  Block.append leaf2_0242 leaf2_0243 (by decide +kernel)
noncomputable def batch003p2_0_0026 : Block :=
  Block.append leaf2_0244 leaf2_0245 (by decide +kernel)
noncomputable def batch003p2_0_0027 : Block :=
  Block.append leaf2_0246 leaf2_0247 (by decide +kernel)
noncomputable def batch003p2_0_0028 : Block :=
  Block.append leaf2_0248 leaf2_0249 (by decide +kernel)
noncomputable def batch003p2_0_0029 : Block :=
  Block.append leaf2_0250 leaf2_0251 (by decide +kernel)
noncomputable def batch003p2_0_0030 : Block :=
  Block.append leaf2_0252 leaf2_0253 (by decide +kernel)
noncomputable def batch003p2_0_0031 : Block :=
  Block.append leaf2_0254 leaf2_0255 (by decide +kernel)
noncomputable def batch003p2_1_0000 : Block :=
  Block.append batch003p2_0_0000 batch003p2_0_0001 (by decide +kernel)
noncomputable def batch003p2_1_0001 : Block :=
  Block.append batch003p2_0_0002 batch003p2_0_0003 (by decide +kernel)
noncomputable def batch003p2_1_0002 : Block :=
  Block.append batch003p2_0_0004 batch003p2_0_0005 (by decide +kernel)
noncomputable def batch003p2_1_0003 : Block :=
  Block.append batch003p2_0_0006 batch003p2_0_0007 (by decide +kernel)
noncomputable def batch003p2_1_0004 : Block :=
  Block.append batch003p2_0_0008 batch003p2_0_0009 (by decide +kernel)
noncomputable def batch003p2_1_0005 : Block :=
  Block.append batch003p2_0_0010 batch003p2_0_0011 (by decide +kernel)
noncomputable def batch003p2_1_0006 : Block :=
  Block.append batch003p2_0_0012 batch003p2_0_0013 (by decide +kernel)
noncomputable def batch003p2_1_0007 : Block :=
  Block.append batch003p2_0_0014 batch003p2_0_0015 (by decide +kernel)
noncomputable def batch003p2_1_0008 : Block :=
  Block.append batch003p2_0_0016 batch003p2_0_0017 (by decide +kernel)
noncomputable def batch003p2_1_0009 : Block :=
  Block.append batch003p2_0_0018 batch003p2_0_0019 (by decide +kernel)
noncomputable def batch003p2_1_0010 : Block :=
  Block.append batch003p2_0_0020 batch003p2_0_0021 (by decide +kernel)
noncomputable def batch003p2_1_0011 : Block :=
  Block.append batch003p2_0_0022 batch003p2_0_0023 (by decide +kernel)
noncomputable def batch003p2_1_0012 : Block :=
  Block.append batch003p2_0_0024 batch003p2_0_0025 (by decide +kernel)
noncomputable def batch003p2_1_0013 : Block :=
  Block.append batch003p2_0_0026 batch003p2_0_0027 (by decide +kernel)
noncomputable def batch003p2_1_0014 : Block :=
  Block.append batch003p2_0_0028 batch003p2_0_0029 (by decide +kernel)
noncomputable def batch003p2_1_0015 : Block :=
  Block.append batch003p2_0_0030 batch003p2_0_0031 (by decide +kernel)
noncomputable def batch003p2_2_0000 : Block :=
  Block.append batch003p2_1_0000 batch003p2_1_0001 (by decide +kernel)
noncomputable def batch003p2_2_0001 : Block :=
  Block.append batch003p2_1_0002 batch003p2_1_0003 (by decide +kernel)
noncomputable def batch003p2_2_0002 : Block :=
  Block.append batch003p2_1_0004 batch003p2_1_0005 (by decide +kernel)
noncomputable def batch003p2_2_0003 : Block :=
  Block.append batch003p2_1_0006 batch003p2_1_0007 (by decide +kernel)
noncomputable def batch003p2_2_0004 : Block :=
  Block.append batch003p2_1_0008 batch003p2_1_0009 (by decide +kernel)
noncomputable def batch003p2_2_0005 : Block :=
  Block.append batch003p2_1_0010 batch003p2_1_0011 (by decide +kernel)
noncomputable def batch003p2_2_0006 : Block :=
  Block.append batch003p2_1_0012 batch003p2_1_0013 (by decide +kernel)
noncomputable def batch003p2_2_0007 : Block :=
  Block.append batch003p2_1_0014 batch003p2_1_0015 (by decide +kernel)
noncomputable def batch003p2_3_0000 : Block :=
  Block.append batch003p2_2_0000 batch003p2_2_0001 (by decide +kernel)
noncomputable def batch003p2_3_0001 : Block :=
  Block.append batch003p2_2_0002 batch003p2_2_0003 (by decide +kernel)
noncomputable def batch003p2_3_0002 : Block :=
  Block.append batch003p2_2_0004 batch003p2_2_0005 (by decide +kernel)
noncomputable def batch003p2_3_0003 : Block :=
  Block.append batch003p2_2_0006 batch003p2_2_0007 (by decide +kernel)
noncomputable def batch003p2_4_0000 : Block :=
  Block.append batch003p2_3_0000 batch003p2_3_0001 (by decide +kernel)
noncomputable def batch003p2_4_0001 : Block :=
  Block.append batch003p2_3_0002 batch003p2_3_0003 (by decide +kernel)
noncomputable def batch003p2_5_0000 : Block :=
  Block.append batch003p2_4_0000 batch003p2_4_0001 (by decide +kernel)
theorem batch003p2_5_0000_left : batch003p2_5_0000.left = (60/29) := by decide +kernel
theorem batch003p2_5_0000_right : batch003p2_5_0000.right = (209/100) := by decide +kernel
theorem batch003p2_5_0000_units : batch003p2_5_0000.units = 7159 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
