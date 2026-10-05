import OddZetaMixed.H158LowCells
import OddZetaMixed.TrustAudit

/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace OddZetaMixed.H158LowCells.Certificate

noncomputable def profile1920 : ProfileCell :=
  ⟨(71/105), (23/34),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 22, 21, 20, 18, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨37, 71⟩, ⟨40, 73⟩, ⟨2, 33⟩, ⟨5, 35⟩, ⟨8, 37⟩, ⟨24, 62⟩, ⟨11, 39⟩, ⟨27, 64⟩, ⟨14, 41⟩, ⟨30, 66⟩, ⟨17, 43⟩, ⟨33, 68⟩, ⟨20, 45⟩, ⟨36, 70⟩, ⟨39, 72⟩, ⟨42, 74⟩, ⟨1, 32⟩, ⟨4, 34⟩, ⟨7, 36⟩, ⟨23, 61⟩, ⟨10, 38⟩, ⟨26, 63⟩, ⟨13, 40⟩, ⟨29, 65⟩, ⟨16, 42⟩, ⟨32, 67⟩, ⟨19, 44⟩, ⟨35, 69⟩, ⟨38, 71⟩, ⟨41, 73⟩, ⟨3, 33⟩, ⟨6, 35⟩, ⟨43, 106⟩, ⟨22, 60⟩, ⟨9, 37⟩, ⟨25, 62⟩, ⟨12, 39⟩, ⟨28, 64⟩, ⟨15, 41⟩, ⟨31, 66⟩, ⟨18, 43⟩, ⟨34, 68⟩, ⟨21, 45⟩]⟩
theorem profile1920_checked : profile1920.check := by decide +kernel

noncomputable def selection0_1920 : Selection :=
  ⟨0, 4, 2, (1743/100), 1068, 250, -358⟩
theorem selection0_1920_checked : selection0_1920.check profile1920 := by decide +kernel

noncomputable def selection1_1920 : Selection :=
  ⟨1, -4, 6, (1683/100), 168, 38, 10⟩
theorem selection1_1920_checked : selection1_1920.check profile1920 := by decide +kernel

noncomputable def selection2_1920 : Selection :=
  ⟨2, -12, 10, (167/10), 66, -142, 378⟩
theorem selection2_1920_checked : selection2_1920.check profile1920 := by decide +kernel

noncomputable def profile1921 : ProfileCell :=
  ⟨(23/34), (67/99),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 18, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨21, 46⟩, ⟨34, 69⟩, ⟨37, 71⟩, ⟨40, 73⟩, ⟨2, 33⟩, ⟨5, 35⟩, ⟨8, 37⟩, ⟨11, 39⟩, ⟨24, 62⟩, ⟨14, 41⟩, ⟨27, 64⟩, ⟨17, 43⟩, ⟨30, 66⟩, ⟨20, 45⟩, ⟨33, 68⟩, ⟨36, 70⟩, ⟨39, 72⟩, ⟨42, 74⟩, ⟨1, 32⟩, ⟨4, 34⟩, ⟨7, 36⟩, ⟨10, 38⟩, ⟨23, 61⟩, ⟨13, 40⟩, ⟨26, 63⟩, ⟨16, 42⟩, ⟨29, 65⟩, ⟨19, 44⟩, ⟨32, 67⟩, ⟨35, 69⟩, ⟨38, 71⟩, ⟨41, 73⟩, ⟨3, 33⟩, ⟨6, 35⟩, ⟨9, 37⟩, ⟨22, 60⟩, ⟨43, 106⟩, ⟨12, 39⟩, ⟨25, 62⟩, ⟨15, 41⟩, ⟨28, 64⟩, ⟨18, 43⟩, ⟨31, 66⟩]⟩
theorem profile1921_checked : profile1921.check := by decide +kernel

noncomputable def selection0_1921 : Selection :=
  ⟨0, 3, 2, (307/20), 997, 342, -494⟩
theorem selection0_1921_checked : selection0_1921.check profile1921 := by decide +kernel

noncomputable def selection1_1921 : Selection :=
  ⟨1, -5, 6, (1483/100), 157, 130, -126⟩
theorem selection1_1921_checked : selection1_1921.check profile1921 := by decide +kernel

noncomputable def selection2_1921 : Selection :=
  ⟨2, -13, 10, (1471/100), 61, -50, 242⟩
theorem selection2_1921_checked : selection2_1921.check profile1921 := by decide +kernel

noncomputable def profile1922 : ProfileCell :=
  ⟨(67/99), (44/65),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 18, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨31, 67⟩, ⟨21, 46⟩, ⟨34, 69⟩, ⟨37, 71⟩, ⟨40, 73⟩, ⟨2, 33⟩, ⟨5, 35⟩, ⟨8, 37⟩, ⟨11, 39⟩, ⟨24, 62⟩, ⟨14, 41⟩, ⟨27, 64⟩, ⟨17, 43⟩, ⟨30, 66⟩, ⟨20, 45⟩, ⟨33, 68⟩, ⟨36, 70⟩, ⟨39, 72⟩, ⟨42, 74⟩, ⟨1, 32⟩, ⟨4, 34⟩, ⟨7, 36⟩, ⟨10, 38⟩, ⟨23, 61⟩, ⟨13, 40⟩, ⟨26, 63⟩, ⟨16, 42⟩, ⟨29, 65⟩, ⟨19, 44⟩, ⟨32, 67⟩, ⟨35, 69⟩, ⟨38, 71⟩, ⟨41, 73⟩, ⟨3, 33⟩, ⟨6, 35⟩, ⟨9, 37⟩, ⟨22, 60⟩, ⟨12, 39⟩, ⟨43, 106⟩, ⟨25, 62⟩, ⟨15, 41⟩, ⟨28, 64⟩, ⟨18, 43⟩]⟩
theorem profile1922_checked : profile1922.check := by decide +kernel

noncomputable def selection0_1922 : Selection :=
  ⟨0, 3, 2, (381/25), 517, 610, -890⟩
theorem selection0_1922_checked : selection0_1922.check profile1922 := by decide +kernel

noncomputable def selection1_1922 : Selection :=
  ⟨1, -5, 6, (741/50), 82, 398, -522⟩
theorem selection1_1922_checked : selection1_1922.check profile1922 := by decide +kernel

noncomputable def selection2_1922 : Selection :=
  ⟨2, -13, 10, (1471/100), 32, 218, -154⟩
theorem selection2_1922_checked : selection2_1922.check profile1922 := by decide +kernel

noncomputable def profile1923 : ProfileCell :=
  ⟨(44/65), (65/96),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 18, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨18, 44⟩, ⟨31, 67⟩, ⟨21, 46⟩, ⟨34, 69⟩, ⟨37, 71⟩, ⟨40, 73⟩, ⟨2, 33⟩, ⟨5, 35⟩, ⟨8, 37⟩, ⟨11, 39⟩, ⟨24, 62⟩, ⟨14, 41⟩, ⟨27, 64⟩, ⟨17, 43⟩, ⟨30, 66⟩, ⟨20, 45⟩, ⟨33, 68⟩, ⟨36, 70⟩, ⟨39, 72⟩, ⟨42, 74⟩, ⟨1, 32⟩, ⟨4, 34⟩, ⟨7, 36⟩, ⟨10, 38⟩, ⟨23, 61⟩, ⟨13, 40⟩, ⟨26, 63⟩, ⟨16, 42⟩, ⟨29, 65⟩, ⟨19, 44⟩, ⟨32, 67⟩, ⟨35, 69⟩, ⟨38, 71⟩, ⟨41, 73⟩, ⟨3, 33⟩, ⟨6, 35⟩, ⟨9, 37⟩, ⟨22, 60⟩, ⟨12, 39⟩, ⟨25, 62⟩, ⟨43, 106⟩, ⟨15, 41⟩, ⟨28, 64⟩]⟩
theorem profile1923_checked : profile1923.check := by decide +kernel

noncomputable def selection0_1923 : Selection :=
  ⟨0, 3, 2, (757/50), 530, 434, -630⟩
theorem selection0_1923_checked : selection0_1923.check profile1923 := by decide +kernel

noncomputable def selection1_1923 : Selection :=
  ⟨1, -5, 6, (1479/100), 85, 222, -262⟩
theorem selection1_1923_checked : selection1_1923.check profile1923 := by decide +kernel

noncomputable def selection2_1923 : Selection :=
  ⟨2, -13, 10, (1471/100), 33, 42, 106⟩
theorem selection2_1923_checked : selection2_1923.check profile1923 := by decide +kernel

noncomputable def profile1924 : ProfileCell :=
  ⟨(65/96), (107/158),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 18, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨28, 65⟩, ⟨18, 44⟩, ⟨31, 67⟩, ⟨21, 46⟩, ⟨34, 69⟩, ⟨37, 71⟩, ⟨40, 73⟩, ⟨2, 33⟩, ⟨5, 35⟩, ⟨8, 37⟩, ⟨11, 39⟩, ⟨24, 62⟩, ⟨14, 41⟩, ⟨27, 64⟩, ⟨17, 43⟩, ⟨30, 66⟩, ⟨20, 45⟩, ⟨33, 68⟩, ⟨36, 70⟩, ⟨39, 72⟩, ⟨42, 74⟩, ⟨1, 32⟩, ⟨4, 34⟩, ⟨7, 36⟩, ⟨10, 38⟩, ⟨23, 61⟩, ⟨13, 40⟩, ⟨26, 63⟩, ⟨16, 42⟩, ⟨29, 65⟩, ⟨19, 44⟩, ⟨32, 67⟩, ⟨35, 69⟩, ⟨38, 71⟩, ⟨41, 73⟩, ⟨3, 33⟩, ⟨6, 35⟩, ⟨9, 37⟩, ⟨22, 60⟩, ⟨12, 39⟩, ⟨25, 62⟩, ⟨15, 41⟩, ⟨43, 106⟩]⟩
theorem profile1924_checked : profile1924.check := by decide +kernel

noncomputable def selection0_1924 : Selection :=
  ⟨0, 3, 2, (1507/100), 434, 694, -1014⟩
theorem selection0_1924_checked : selection0_1924.check profile1924 := by decide +kernel

noncomputable def selection1_1924 : Selection :=
  ⟨1, -5, 6, (739/50), 70, 482, -646⟩
theorem selection1_1924_checked : selection1_1924.check profile1924 := by decide +kernel

noncomputable def selection2_1924 : Selection :=
  ⟨2, -13, 10, (1471/100), 28, 302, -278⟩
theorem selection2_1924_checked : selection2_1924.check profile1924 := by decide +kernel

noncomputable def profile1925 : ProfileCell :=
  ⟨(107/158), (21/31),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 18, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨43, 107⟩, ⟨28, 65⟩, ⟨18, 44⟩, ⟨31, 67⟩, ⟨21, 46⟩, ⟨34, 69⟩, ⟨37, 71⟩, ⟨40, 73⟩, ⟨2, 33⟩, ⟨5, 35⟩, ⟨8, 37⟩, ⟨11, 39⟩, ⟨24, 62⟩, ⟨14, 41⟩, ⟨27, 64⟩, ⟨17, 43⟩, ⟨30, 66⟩, ⟨20, 45⟩, ⟨33, 68⟩, ⟨36, 70⟩, ⟨39, 72⟩, ⟨42, 74⟩, ⟨1, 32⟩, ⟨4, 34⟩, ⟨7, 36⟩, ⟨10, 38⟩, ⟨23, 61⟩, ⟨13, 40⟩, ⟨26, 63⟩, ⟨16, 42⟩, ⟨29, 65⟩, ⟨19, 44⟩, ⟨32, 67⟩, ⟨35, 69⟩, ⟨38, 71⟩, ⟨41, 73⟩, ⟨3, 33⟩, ⟨6, 35⟩, ⟨9, 37⟩, ⟨22, 60⟩, ⟨12, 39⟩, ⟨25, 62⟩, ⟨15, 41⟩]⟩
theorem profile1925_checked : profile1925.check := by decide +kernel

noncomputable def selection0_1925 : Selection :=
  ⟨0, 3, 2, (151/10), 673, -590, 882⟩
theorem selection0_1925_checked : selection0_1925.check profile1925 := by decide +kernel

noncomputable def selection1_1925 : Selection :=
  ⟨1, -5, 6, (1483/100), 108, -802, 1250⟩
theorem selection1_1925_checked : selection1_1925.check profile1925 := by decide +kernel

noncomputable def selection2_1925 : Selection :=
  ⟨2, -13, 10, (369/25), 43, -982, 1618⟩
theorem selection2_1925_checked : selection2_1925.check profile1925 := by decide +kernel

noncomputable def profile1926 : ProfileCell :=
  ⟨(21/31), (61/90),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 18, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨15, 42⟩, ⟨25, 63⟩, ⟨18, 44⟩, ⟨28, 65⟩, ⟨43, 107⟩, ⟨21, 46⟩, ⟨31, 67⟩, ⟨34, 69⟩, ⟨37, 71⟩, ⟨40, 73⟩, ⟨2, 33⟩, ⟨5, 35⟩, ⟨8, 37⟩, ⟨11, 39⟩, ⟨14, 41⟩, ⟨24, 62⟩, ⟨17, 43⟩, ⟨27, 64⟩, ⟨20, 45⟩, ⟨30, 66⟩, ⟨33, 68⟩, ⟨36, 70⟩, ⟨39, 72⟩, ⟨1, 32⟩, ⟨42, 74⟩, ⟨4, 34⟩, ⟨7, 36⟩, ⟨10, 38⟩, ⟨13, 40⟩, ⟨23, 61⟩, ⟨16, 42⟩, ⟨26, 63⟩, ⟨19, 44⟩, ⟨29, 65⟩, ⟨32, 67⟩, ⟨35, 69⟩, ⟨38, 71⟩, ⟨41, 73⟩, ⟨3, 33⟩, ⟨6, 35⟩, ⟨9, 37⟩, ⟨12, 39⟩, ⟨22, 60⟩]⟩
theorem profile1926_checked : profile1926.check := by decide +kernel

noncomputable def selection0_1926 : Selection :=
  ⟨0, 3, 2, (307/20), 1199, -632, 944⟩
theorem selection0_1926_checked : selection0_1926.check profile1926 := by decide +kernel

noncomputable def selection1_1926 : Selection :=
  ⟨1, -5, 6, (1497/100), 191, -844, 1312⟩
theorem selection1_1926_checked : selection1_1926.check profile1926 := by decide +kernel

noncomputable def selection2_1926 : Selection :=
  ⟨2, -13, 10, (372/25), 75, -1024, 1680⟩
theorem selection2_1926_checked : selection2_1926.check profile1926 := by decide +kernel

noncomputable def profile1927 : ProfileCell :=
  ⟨(61/90), (40/59),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 18, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨22, 61⟩, ⟨15, 42⟩, ⟨25, 63⟩, ⟨18, 44⟩, ⟨28, 65⟩, ⟨21, 46⟩, ⟨43, 107⟩, ⟨31, 67⟩, ⟨34, 69⟩, ⟨37, 71⟩, ⟨40, 73⟩, ⟨2, 33⟩, ⟨5, 35⟩, ⟨8, 37⟩, ⟨11, 39⟩, ⟨14, 41⟩, ⟨24, 62⟩, ⟨17, 43⟩, ⟨27, 64⟩, ⟨20, 45⟩, ⟨30, 66⟩, ⟨33, 68⟩, ⟨36, 70⟩, ⟨39, 72⟩, ⟨1, 32⟩, ⟨42, 74⟩, ⟨4, 34⟩, ⟨7, 36⟩, ⟨10, 38⟩, ⟨13, 40⟩, ⟨23, 61⟩, ⟨16, 42⟩, ⟨26, 63⟩, ⟨19, 44⟩, ⟨29, 65⟩, ⟨32, 67⟩, ⟨35, 69⟩, ⟨38, 71⟩, ⟨41, 73⟩, ⟨3, 33⟩, ⟨6, 35⟩, ⟨9, 37⟩, ⟨12, 39⟩]⟩
theorem profile1927_checked : profile1927.check := by decide +kernel

noncomputable def selection0_1927 : Selection :=
  ⟨0, 3, 2, (1543/100), 633, -388, 584⟩
theorem selection0_1927_checked : selection0_1927.check profile1927 := by decide +kernel

noncomputable def selection1_1927 : Selection :=
  ⟨1, -5, 6, (1503/100), 101, -600, 952⟩
theorem selection1_1927_checked : selection1_1927.check profile1927 := by decide +kernel

noncomputable def selection2_1927 : Selection :=
  ⟨2, -13, 10, (373/25), 40, -780, 1320⟩
theorem selection2_1927_checked : selection2_1927.check profile1927 := by decide +kernel

noncomputable def profile1928 : ProfileCell :=
  ⟨(40/59), (19/28),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 18, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨12, 40⟩, ⟨22, 61⟩, ⟨15, 42⟩, ⟨25, 63⟩, ⟨18, 44⟩, ⟨28, 65⟩, ⟨21, 46⟩, ⟨31, 67⟩, ⟨43, 107⟩, ⟨34, 69⟩, ⟨37, 71⟩, ⟨2, 33⟩, ⟨40, 73⟩, ⟨5, 35⟩, ⟨8, 37⟩, ⟨11, 39⟩, ⟨14, 41⟩, ⟨24, 62⟩, ⟨17, 43⟩, ⟨27, 64⟩, ⟨20, 45⟩, ⟨30, 66⟩, ⟨33, 68⟩, ⟨36, 70⟩, ⟨1, 32⟩, ⟨39, 72⟩, ⟨4, 34⟩, ⟨42, 74⟩, ⟨7, 36⟩, ⟨10, 38⟩, ⟨13, 40⟩, ⟨23, 61⟩, ⟨16, 42⟩, ⟨26, 63⟩, ⟨19, 44⟩, ⟨29, 65⟩, ⟨32, 67⟩, ⟨35, 69⟩, ⟨38, 71⟩, ⟨3, 33⟩, ⟨41, 73⟩, ⟨6, 35⟩, ⟨9, 37⟩]⟩
theorem profile1928_checked : profile1928.check := by decide +kernel

noncomputable def selection0_1928 : Selection :=
  ⟨0, 3, 2, (317/20), 2086, -628, 938⟩
theorem selection0_1928_checked : selection0_1928.check profile1928 := by decide +kernel

noncomputable def selection1_1928 : Selection :=
  ⟨1, -5, 6, (763/50), 328, -840, 1306⟩
theorem selection1_1928_checked : selection1_1928.check profile1928 := by decide +kernel

noncomputable def selection2_1928 : Selection :=
  ⟨2, -13, 10, (1511/100), 128, -1020, 1674⟩
theorem selection2_1928_checked : selection2_1928.check profile1928 := by decide +kernel

noncomputable def profile1929 : ProfileCell :=
  ⟨(19/28), (74/109),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨9, 38⟩, ⟨12, 40⟩, ⟨15, 42⟩, ⟨22, 61⟩, ⟨18, 44⟩, ⟨25, 63⟩, ⟨21, 46⟩, ⟨28, 65⟩, ⟨31, 67⟩, ⟨34, 69⟩, ⟨43, 107⟩, ⟨2, 33⟩, ⟨37, 71⟩, ⟨5, 35⟩, ⟨40, 73⟩, ⟨8, 37⟩, ⟨11, 39⟩, ⟨14, 41⟩, ⟨17, 43⟩, ⟨24, 62⟩, ⟨20, 45⟩, ⟨27, 64⟩, ⟨30, 66⟩, ⟨33, 68⟩, ⟨1, 32⟩, ⟨36, 70⟩, ⟨4, 34⟩, ⟨39, 72⟩, ⟨7, 36⟩, ⟨42, 74⟩, ⟨10, 38⟩, ⟨13, 40⟩, ⟨16, 42⟩, ⟨23, 61⟩, ⟨19, 44⟩, ⟨26, 63⟩, ⟨29, 65⟩, ⟨32, 67⟩, ⟨35, 69⟩, ⟨3, 33⟩, ⟨38, 71⟩, ⟨6, 35⟩, ⟨41, 73⟩]⟩
theorem profile1929_checked : profile1929.check := by decide +kernel

noncomputable def selection0_1929 : Selection :=
  ⟨0, 2, 2, (1421/100), 1011, -1008, 1498⟩
theorem selection0_1929_checked : selection0_1929.check profile1929 := by decide +kernel

noncomputable def selection1_1929 : Selection :=
  ⟨1, -6, 6, (336/25), 157, -1220, 1866⟩
theorem selection1_1929_checked : selection1_1929.check profile1929 := by decide +kernel

noncomputable def selection2_1929 : Selection :=
  ⟨2, -14, 10, (53/4), 61, -1400, 2234⟩
theorem selection2_1929_checked : selection2_1929.check profile1929 := by decide +kernel

noncomputable def profile1930 : ProfileCell :=
  ⟨(74/109), (36/53),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨41, 74⟩, ⟨9, 38⟩, ⟨12, 40⟩, ⟨15, 42⟩, ⟨22, 61⟩, ⟨18, 44⟩, ⟨25, 63⟩, ⟨21, 46⟩, ⟨28, 65⟩, ⟨31, 67⟩, ⟨34, 69⟩, ⟨2, 33⟩, ⟨43, 107⟩, ⟨37, 71⟩, ⟨5, 35⟩, ⟨40, 73⟩, ⟨8, 37⟩, ⟨11, 39⟩, ⟨14, 41⟩, ⟨17, 43⟩, ⟨24, 62⟩, ⟨20, 45⟩, ⟨27, 64⟩, ⟨30, 66⟩, ⟨33, 68⟩, ⟨1, 32⟩, ⟨36, 70⟩, ⟨4, 34⟩, ⟨39, 72⟩, ⟨7, 36⟩, ⟨42, 74⟩, ⟨10, 38⟩, ⟨13, 40⟩, ⟨16, 42⟩, ⟨23, 61⟩, ⟨19, 44⟩, ⟨26, 63⟩, ⟨29, 65⟩, ⟨32, 67⟩, ⟨35, 69⟩, ⟨3, 33⟩, ⟨38, 71⟩, ⟨6, 35⟩]⟩
theorem profile1930_checked : profile1930.check := by decide +kernel

noncomputable def selection0_1930 : Selection :=
  ⟨0, 2, 2, (721/50), 1083, -564, 844⟩
theorem selection0_1930_checked : selection0_1930.check profile1930 := by decide +kernel

noncomputable def selection1_1930 : Selection :=
  ⟨1, -6, 6, (1357/100), 167, -776, 1212⟩
theorem selection1_1930_checked : selection1_1930.check profile1930 := by decide +kernel

noncomputable def selection2_1930 : Selection :=
  ⟨2, -14, 10, (267/20), 65, -956, 1580⟩
theorem selection2_1930_checked : selection2_1930.check profile1930 := by decide +kernel

noncomputable def profile1931 : ProfileCell :=
  ⟨(36/53), (70/103),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨6, 36⟩, ⟨38, 72⟩, ⟨9, 38⟩, ⟨41, 74⟩, ⟨12, 40⟩, ⟨15, 42⟩, ⟨22, 61⟩, ⟨18, 44⟩, ⟨25, 63⟩, ⟨21, 46⟩, ⟨28, 65⟩, ⟨31, 67⟩, ⟨2, 33⟩, ⟨34, 69⟩, ⟨5, 35⟩, ⟨37, 71⟩, ⟨43, 107⟩, ⟨8, 37⟩, ⟨40, 73⟩, ⟨11, 39⟩, ⟨14, 41⟩, ⟨17, 43⟩, ⟨24, 62⟩, ⟨20, 45⟩, ⟨27, 64⟩, ⟨30, 66⟩, ⟨1, 32⟩, ⟨33, 68⟩, ⟨4, 34⟩, ⟨36, 70⟩, ⟨7, 36⟩, ⟨39, 72⟩, ⟨10, 38⟩, ⟨42, 74⟩, ⟨13, 40⟩, ⟨16, 42⟩, ⟨23, 61⟩, ⟨19, 44⟩, ⟨26, 63⟩, ⟨29, 65⟩, ⟨32, 67⟩, ⟨3, 33⟩, ⟨35, 69⟩]⟩
theorem profile1931_checked : profile1931.check := by decide +kernel

noncomputable def selection0_1931 : Selection :=
  ⟨0, 2, 2, (367/25), 1166, -636, 950⟩
theorem selection0_1931_checked : selection0_1931.check profile1931 := by decide +kernel

noncomputable def selection1_1931 : Selection :=
  ⟨1, -6, 6, (1371/100), 179, -848, 1318⟩
theorem selection1_1931_checked : selection1_1931.check profile1931 := by decide +kernel

noncomputable def selection2_1931 : Selection :=
  ⟨2, -14, 10, (1347/100), 69, -1028, 1686⟩
theorem selection2_1931_checked : selection2_1931.check profile1931 := by decide +kernel

noncomputable def profile1932 : ProfileCell :=
  ⟨(70/103), (17/25),
    [35, 33, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 14], [32, 33, 33, 34, 35],
    [⟨35, 70⟩, ⟨6, 36⟩, ⟨38, 72⟩, ⟨9, 38⟩, ⟨41, 74⟩, ⟨12, 40⟩, ⟨15, 42⟩, ⟨22, 61⟩, ⟨18, 44⟩, ⟨25, 63⟩, ⟨21, 46⟩, ⟨28, 65⟩, ⟨31, 67⟩, ⟨2, 33⟩, ⟨34, 69⟩, ⟨5, 35⟩, ⟨37, 71⟩, ⟨8, 37⟩, ⟨43, 107⟩, ⟨40, 73⟩, ⟨11, 39⟩, ⟨14, 41⟩, ⟨17, 43⟩, ⟨24, 62⟩, ⟨20, 45⟩, ⟨27, 64⟩, ⟨30, 66⟩, ⟨1, 32⟩, ⟨33, 68⟩, ⟨4, 34⟩, ⟨36, 70⟩, ⟨7, 36⟩, ⟨39, 72⟩, ⟨10, 38⟩, ⟨42, 74⟩, ⟨13, 40⟩, ⟨16, 42⟩, ⟨23, 61⟩, ⟨19, 44⟩, ⟨26, 63⟩, ⟨29, 65⟩, ⟨32, 67⟩, ⟨3, 33⟩]⟩
theorem profile1932_checked : profile1932.check := by decide +kernel

noncomputable def selection0_1932 : Selection :=
  ⟨0, 2, 2, (1483/100), 1247, -356, 538⟩
theorem selection0_1932_checked : selection0_1932.check profile1932 := by decide +kernel

noncomputable def selection1_1932 : Selection :=
  ⟨1, -6, 6, (1381/100), 191, -568, 906⟩
theorem selection1_1932_checked : selection1_1932.check profile1932 := by decide +kernel

noncomputable def selection2_1932 : Selection :=
  ⟨2, -14, 10, (339/25), 74, -748, 1274⟩
theorem selection2_1932_checked : selection2_1932.check profile1932 := by decide +kernel

noncomputable def profile1933 : ProfileCell :=
  ⟨(17/25), (66/97),
    [35, 34, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 14], [32, 33, 34, 34, 35],
    [⟨3, 34⟩, ⟨32, 68⟩, ⟨6, 36⟩, ⟨35, 70⟩, ⟨9, 38⟩, ⟨38, 72⟩, ⟨12, 40⟩, ⟨41, 74⟩, ⟨15, 42⟩, ⟨18, 44⟩, ⟨22, 61⟩, ⟨21, 46⟩, ⟨25, 63⟩, ⟨28, 65⟩, ⟨2, 33⟩, ⟨31, 67⟩, ⟨5, 35⟩, ⟨34, 69⟩, ⟨8, 37⟩, ⟨37, 71⟩, ⟨11, 39⟩, ⟨40, 73⟩, ⟨43, 107⟩, ⟨14, 41⟩, ⟨17, 43⟩, ⟨20, 45⟩, ⟨24, 62⟩, ⟨27, 64⟩, ⟨1, 32⟩, ⟨30, 66⟩, ⟨4, 34⟩, ⟨33, 68⟩, ⟨7, 36⟩, ⟨36, 70⟩, ⟨10, 38⟩, ⟨39, 72⟩, ⟨13, 40⟩, ⟨42, 74⟩, ⟨16, 42⟩, ⟨19, 44⟩, ⟨23, 61⟩, ⟨26, 63⟩, ⟨29, 65⟩]⟩
theorem profile1933_checked : profile1933.check := by decide +kernel

noncomputable def selection0_1933 : Selection :=
  ⟨0, 3, 2, (424/25), 1512, -288, 438⟩
theorem selection0_1933_checked : selection0_1933.check profile1933 := by decide +kernel

noncomputable def selection1_1933 : Selection :=
  ⟨1, -5, 6, (1591/100), 233, -500, 806⟩
theorem selection1_1933_checked : selection1_1933.check profile1933 := by decide +kernel

noncomputable def selection2_1933 : Selection :=
  ⟨2, -13, 10, (313/20), 90, -680, 1174⟩
theorem selection2_1933_checked : selection2_1933.check profile1933 := by decide +kernel

noncomputable def profile1934 : ProfileCell :=
  ⟨(66/97), (32/47),
    [35, 34, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 14], [32, 33, 34, 34, 35],
    [⟨29, 66⟩, ⟨3, 34⟩, ⟨32, 68⟩, ⟨6, 36⟩, ⟨35, 70⟩, ⟨9, 38⟩, ⟨38, 72⟩, ⟨12, 40⟩, ⟨41, 74⟩, ⟨15, 42⟩, ⟨18, 44⟩, ⟨22, 61⟩, ⟨21, 46⟩, ⟨25, 63⟩, ⟨28, 65⟩, ⟨2, 33⟩, ⟨31, 67⟩, ⟨5, 35⟩, ⟨34, 69⟩, ⟨8, 37⟩, ⟨37, 71⟩, ⟨11, 39⟩, ⟨40, 73⟩, ⟨14, 41⟩, ⟨43, 107⟩, ⟨17, 43⟩, ⟨20, 45⟩, ⟨24, 62⟩, ⟨27, 64⟩, ⟨1, 32⟩, ⟨30, 66⟩, ⟨4, 34⟩, ⟨33, 68⟩, ⟨7, 36⟩, ⟨36, 70⟩, ⟨10, 38⟩, ⟨39, 72⟩, ⟨13, 40⟩, ⟨42, 74⟩, ⟨16, 42⟩, ⟨19, 44⟩, ⟨23, 61⟩, ⟨26, 63⟩]⟩
theorem profile1934_checked : profile1934.check := by decide +kernel

noncomputable def selection0_1934 : Selection :=
  ⟨0, 3, 2, (424/25), 1607, 108, -144⟩
theorem selection0_1934_checked : selection0_1934.check profile1934 := by decide +kernel

noncomputable def selection1_1934 : Selection :=
  ⟨1, -5, 6, (797/50), 248, -104, 224⟩
theorem selection1_1934_checked : selection1_1934.check profile1934 := by decide +kernel

noncomputable def selection2_1934 : Selection :=
  ⟨2, -13, 10, (157/10), 96, -284, 592⟩
theorem selection2_1934_checked : selection2_1934.check profile1934 := by decide +kernel

noncomputable def profile1935 : ProfileCell :=
  ⟨(32/47), (62/91),
    [35, 34, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 14], [32, 33, 34, 34, 35],
    [⟨26, 64⟩, ⟨3, 34⟩, ⟨29, 66⟩, ⟨6, 36⟩, ⟨32, 68⟩, ⟨9, 38⟩, ⟨35, 70⟩, ⟨12, 40⟩, ⟨38, 72⟩, ⟨15, 42⟩, ⟨41, 74⟩, ⟨18, 44⟩, ⟨22, 61⟩, ⟨21, 46⟩, ⟨25, 63⟩, ⟨2, 33⟩, ⟨28, 65⟩, ⟨5, 35⟩, ⟨31, 67⟩, ⟨8, 37⟩, ⟨34, 69⟩, ⟨11, 39⟩, ⟨37, 71⟩, ⟨14, 41⟩, ⟨40, 73⟩, ⟨17, 43⟩, ⟨43, 107⟩, ⟨20, 45⟩, ⟨24, 62⟩, ⟨1, 32⟩, ⟨27, 64⟩, ⟨4, 34⟩, ⟨30, 66⟩, ⟨7, 36⟩, ⟨33, 68⟩, ⟨10, 38⟩, ⟨36, 70⟩, ⟨13, 40⟩, ⟨39, 72⟩, ⟨16, 42⟩, ⟨42, 74⟩, ⟨19, 44⟩, ⟨23, 61⟩]⟩
theorem profile1935_checked : profile1935.check := by decide +kernel

noncomputable def selection0_1935 : Selection :=
  ⟨0, 3, 2, (1699/100), 1713, -148, 232⟩
theorem selection0_1935_checked : selection0_1935.check profile1935 := by decide +kernel

noncomputable def selection1_1935 : Selection :=
  ⟨1, -5, 6, (801/50), 266, -360, 600⟩
theorem selection1_1935_checked : selection1_1935.check profile1935 := by decide +kernel

noncomputable def selection2_1935 : Selection :=
  ⟨2, -13, 10, (789/50), 103, -540, 968⟩
theorem selection2_1935_checked : selection2_1935.check profile1935 := by decide +kernel

noncomputable def profile1936 : ProfileCell :=
  ⟨(62/91), (15/22),
    [35, 34, 32, 31, 29, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 14], [32, 33, 34, 34, 35],
    [⟨23, 62⟩, ⟨26, 64⟩, ⟨3, 34⟩, ⟨29, 66⟩, ⟨6, 36⟩, ⟨32, 68⟩, ⟨9, 38⟩, ⟨35, 70⟩, ⟨12, 40⟩, ⟨38, 72⟩, ⟨15, 42⟩, ⟨41, 74⟩, ⟨18, 44⟩, ⟨22, 61⟩, ⟨21, 46⟩, ⟨25, 63⟩, ⟨2, 33⟩, ⟨28, 65⟩, ⟨5, 35⟩, ⟨31, 67⟩, ⟨8, 37⟩, ⟨34, 69⟩, ⟨11, 39⟩, ⟨37, 71⟩, ⟨14, 41⟩, ⟨40, 73⟩, ⟨17, 43⟩, ⟨20, 45⟩, ⟨43, 107⟩, ⟨24, 62⟩, ⟨1, 32⟩, ⟨27, 64⟩, ⟨4, 34⟩, ⟨30, 66⟩, ⟨7, 36⟩, ⟨33, 68⟩, ⟨10, 38⟩, ⟨36, 70⟩, ⟨13, 40⟩, ⟨39, 72⟩, ⟨16, 42⟩, ⟨42, 74⟩, ⟨19, 44⟩]⟩
theorem profile1936_checked : profile1936.check := by decide +kernel

noncomputable def selection0_1936 : Selection :=
  ⟨0, 3, 2, (1699/100), 1827, 224, -314⟩
theorem selection0_1936_checked : selection0_1936.check profile1936 := by decide +kernel

noncomputable def selection1_1936 : Selection :=
  ⟨1, -5, 6, (1603/100), 284, 12, 54⟩
theorem selection1_1936_checked : selection1_1936.check profile1936 := by decide +kernel

noncomputable def selection2_1936 : Selection :=
  ⟨2, -13, 10, (791/50), 110, -168, 422⟩
theorem selection2_1936_checked : selection2_1936.check profile1936 := by decide +kernel

noncomputable def profile1937 : ProfileCell :=
  ⟨(15/22), (73/107),
    [35, 34, 32, 31, 30, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨19, 45⟩, ⟨42, 75⟩, ⟨23, 62⟩, ⟨3, 34⟩, ⟨26, 64⟩, ⟨6, 36⟩, ⟨29, 66⟩, ⟨9, 38⟩, ⟨32, 68⟩, ⟨12, 40⟩, ⟨35, 70⟩, ⟨15, 42⟩, ⟨38, 72⟩, ⟨18, 44⟩, ⟨41, 74⟩, ⟨21, 46⟩, ⟨22, 61⟩, ⟨2, 33⟩, ⟨25, 63⟩, ⟨5, 35⟩, ⟨28, 65⟩, ⟨8, 37⟩, ⟨31, 67⟩, ⟨11, 39⟩, ⟨34, 69⟩, ⟨14, 41⟩, ⟨37, 71⟩, ⟨17, 43⟩, ⟨40, 73⟩, ⟨20, 45⟩, ⟨1, 32⟩, ⟨24, 62⟩, ⟨43, 107⟩, ⟨4, 34⟩, ⟨27, 64⟩, ⟨7, 36⟩, ⟨30, 66⟩, ⟨10, 38⟩, ⟨33, 68⟩, ⟨13, 40⟩, ⟨36, 70⟩, ⟨16, 42⟩, ⟨39, 72⟩]⟩
theorem profile1937_checked : profile1937.check := by decide +kernel

noncomputable def selection0_1937 : Selection :=
  ⟨0, 2, 2, (64/5), 1169, 78, -104⟩
theorem selection0_1937_checked : selection0_1937.check profile1937 := by decide +kernel

noncomputable def selection1_1937 : Selection :=
  ⟨1, -6, 6, (301/25), 181, -138, 264⟩
theorem selection1_1937_checked : selection1_1937.check profile1937 := by decide +kernel

noncomputable def selection2_1937 : Selection :=
  ⟨2, -14, 10, (237/20), 70, -322, 632⟩
theorem selection2_1937_checked : selection2_1937.check profile1937 := by decide +kernel

noncomputable def profile1938 : ProfileCell :=
  ⟨(73/107), (43/63),
    [35, 34, 32, 31, 30, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨39, 73⟩, ⟨19, 45⟩, ⟨42, 75⟩, ⟨23, 62⟩, ⟨3, 34⟩, ⟨26, 64⟩, ⟨6, 36⟩, ⟨29, 66⟩, ⟨9, 38⟩, ⟨32, 68⟩, ⟨12, 40⟩, ⟨35, 70⟩, ⟨15, 42⟩, ⟨38, 72⟩, ⟨18, 44⟩, ⟨41, 74⟩, ⟨21, 46⟩, ⟨22, 61⟩, ⟨2, 33⟩, ⟨25, 63⟩, ⟨5, 35⟩, ⟨28, 65⟩, ⟨8, 37⟩, ⟨31, 67⟩, ⟨11, 39⟩, ⟨34, 69⟩, ⟨14, 41⟩, ⟨37, 71⟩, ⟨17, 43⟩, ⟨40, 73⟩, ⟨20, 45⟩, ⟨1, 32⟩, ⟨24, 62⟩, ⟨4, 34⟩, ⟨43, 107⟩, ⟨27, 64⟩, ⟨7, 36⟩, ⟨30, 66⟩, ⟨10, 38⟩, ⟨33, 68⟩, ⟨13, 40⟩, ⟨36, 70⟩, ⟨16, 42⟩]⟩
theorem profile1938_checked : profile1938.check := by decide +kernel

noncomputable def selection0_1938 : Selection :=
  ⟨0, 1, 2, (318/25), 811, 636, -918⟩
theorem selection0_1938_checked : selection0_1938.check profile1938 := by decide +kernel

noncomputable def selection1_1938 : Selection :=
  ⟨1, -7, 6, (601/50), 126, 424, -550⟩
theorem selection1_1938_checked : selection1_1938.check profile1938 := by decide +kernel

noncomputable def selection2_1938 : Selection :=
  ⟨2, -15, 10, (296/25), 49, 244, -182⟩
theorem selection2_1938_checked : selection2_1938.check profile1938 := by decide +kernel

noncomputable def profile1939 : ProfileCell :=
  ⟨(43/63), (71/104),
    [35, 34, 32, 31, 30, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨16, 43⟩, ⟨39, 73⟩, ⟨19, 45⟩, ⟨42, 75⟩, ⟨23, 62⟩, ⟨3, 34⟩, ⟨26, 64⟩, ⟨6, 36⟩, ⟨29, 66⟩, ⟨9, 38⟩, ⟨32, 68⟩, ⟨12, 40⟩, ⟨35, 70⟩, ⟨15, 42⟩, ⟨38, 72⟩, ⟨18, 44⟩, ⟨41, 74⟩, ⟨21, 46⟩, ⟨22, 61⟩, ⟨2, 33⟩, ⟨25, 63⟩, ⟨5, 35⟩, ⟨28, 65⟩, ⟨8, 37⟩, ⟨31, 67⟩, ⟨11, 39⟩, ⟨34, 69⟩, ⟨14, 41⟩, ⟨37, 71⟩, ⟨17, 43⟩, ⟨40, 73⟩, ⟨20, 45⟩, ⟨1, 32⟩, ⟨24, 62⟩, ⟨4, 34⟩, ⟨27, 64⟩, ⟨43, 107⟩, ⟨7, 36⟩, ⟨30, 66⟩, ⟨10, 38⟩, ⟨33, 68⟩, ⟨13, 40⟩, ⟨36, 70⟩]⟩
theorem profile1939_checked : profile1939.check := by decide +kernel

noncomputable def selection0_1939 : Selection :=
  ⟨0, 1, 2, (313/25), 411, 464, -666⟩
theorem selection0_1939_checked : selection0_1939.check profile1939 := by decide +kernel

noncomputable def selection1_1939 : Selection :=
  ⟨1, -7, 6, (1197/100), 65, 252, -298⟩
theorem selection1_1939_checked : selection1_1939.check profile1939 := by decide +kernel

noncomputable def selection2_1939 : Selection :=
  ⟨2, -15, 10, (1183/100), 26, 72, 70⟩
theorem selection2_1939_checked : selection2_1939.check profile1939 := by decide +kernel

noncomputable def profile1940 : ProfileCell :=
  ⟨(71/104), (28/41),
    [35, 34, 32, 31, 30, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨36, 71⟩, ⟨16, 43⟩, ⟨39, 73⟩, ⟨19, 45⟩, ⟨42, 75⟩, ⟨23, 62⟩, ⟨3, 34⟩, ⟨26, 64⟩, ⟨6, 36⟩, ⟨29, 66⟩, ⟨9, 38⟩, ⟨32, 68⟩, ⟨12, 40⟩, ⟨35, 70⟩, ⟨15, 42⟩, ⟨38, 72⟩, ⟨18, 44⟩, ⟨41, 74⟩, ⟨21, 46⟩, ⟨22, 61⟩, ⟨2, 33⟩, ⟨25, 63⟩, ⟨5, 35⟩, ⟨28, 65⟩, ⟨8, 37⟩, ⟨31, 67⟩, ⟨11, 39⟩, ⟨34, 69⟩, ⟨14, 41⟩, ⟨37, 71⟩, ⟨17, 43⟩, ⟨40, 73⟩, ⟨20, 45⟩, ⟨1, 32⟩, ⟨24, 62⟩, ⟨4, 34⟩, ⟨27, 64⟩, ⟨7, 36⟩, ⟨43, 107⟩, ⟨30, 66⟩, ⟨10, 38⟩, ⟨33, 68⟩, ⟨13, 40⟩]⟩
theorem profile1940_checked : profile1940.check := by decide +kernel

noncomputable def selection0_1940 : Selection :=
  ⟨0, 1, 2, (311/25), 626, 748, -1082⟩
theorem selection0_1940_checked : selection0_1940.check profile1940 := by decide +kernel

noncomputable def selection1_1940 : Selection :=
  ⟨1, -7, 6, (239/20), 99, 536, -714⟩
theorem selection1_1940_checked : selection1_1940.check profile1940 := by decide +kernel

noncomputable def selection2_1940 : Selection :=
  ⟨2, -15, 10, (1183/100), 39, 356, -346⟩
theorem selection2_1940_checked : selection2_1940.check profile1940 := by decide +kernel

noncomputable def profile1941 : ProfileCell :=
  ⟨(28/41), (69/101),
    [35, 34, 32, 31, 30, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨16, 43⟩, ⟨36, 71⟩, ⟨19, 45⟩, ⟨39, 73⟩, ⟨42, 75⟩, ⟨3, 34⟩, ⟨23, 62⟩, ⟨6, 36⟩, ⟨26, 64⟩, ⟨9, 38⟩, ⟨29, 66⟩, ⟨12, 40⟩, ⟨32, 68⟩, ⟨15, 42⟩, ⟨35, 70⟩, ⟨18, 44⟩, ⟨38, 72⟩, ⟨21, 46⟩, ⟨41, 74⟩, ⟨2, 33⟩, ⟨22, 61⟩, ⟨5, 35⟩, ⟨25, 63⟩, ⟨8, 37⟩, ⟨28, 65⟩, ⟨11, 39⟩, ⟨31, 67⟩, ⟨14, 41⟩, ⟨34, 69⟩, ⟨17, 43⟩, ⟨37, 71⟩, ⟨20, 45⟩, ⟨40, 73⟩, ⟨1, 32⟩, ⟨4, 34⟩, ⟨24, 62⟩, ⟨7, 36⟩, ⟨27, 64⟩, ⟨43, 107⟩, ⟨10, 38⟩, ⟨30, 66⟩, ⟨13, 40⟩, ⟨33, 68⟩]⟩
theorem profile1941_checked : profile1941.check := by decide +kernel

noncomputable def selection0_1941 : Selection :=
  ⟨0, 1, 2, (49/4), 635, 300, -426⟩
theorem selection0_1941_checked : selection0_1941.check profile1941 := by decide +kernel

noncomputable def selection1_1941 : Selection :=
  ⟨1, -7, 6, (119/10), 102, 88, -58⟩
theorem selection1_1941_checked : selection1_1941.check profile1941 := by decide +kernel

noncomputable def selection2_1941 : Selection :=
  ⟨2, -15, 10, (1183/100), 40, -92, 310⟩
theorem selection2_1941_checked : selection2_1941.check profile1941 := by decide +kernel

noncomputable def profile1942 : ProfileCell :=
  ⟨(69/101), (41/60),
    [35, 34, 32, 31, 30, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨33, 69⟩, ⟨16, 43⟩, ⟨36, 71⟩, ⟨19, 45⟩, ⟨39, 73⟩, ⟨42, 75⟩, ⟨3, 34⟩, ⟨23, 62⟩, ⟨6, 36⟩, ⟨26, 64⟩, ⟨9, 38⟩, ⟨29, 66⟩, ⟨12, 40⟩, ⟨32, 68⟩, ⟨15, 42⟩, ⟨35, 70⟩, ⟨18, 44⟩, ⟨38, 72⟩, ⟨21, 46⟩, ⟨41, 74⟩, ⟨2, 33⟩, ⟨22, 61⟩, ⟨5, 35⟩, ⟨25, 63⟩, ⟨8, 37⟩, ⟨28, 65⟩, ⟨11, 39⟩, ⟨31, 67⟩, ⟨14, 41⟩, ⟨34, 69⟩, ⟨17, 43⟩, ⟨37, 71⟩, ⟨20, 45⟩, ⟨40, 73⟩, ⟨1, 32⟩, ⟨4, 34⟩, ⟨24, 62⟩, ⟨7, 36⟩, ⟨27, 64⟩, ⟨10, 38⟩, ⟨43, 107⟩, ⟨30, 66⟩, ⟨13, 40⟩]⟩
theorem profile1942_checked : profile1942.check := by decide +kernel

noncomputable def selection0_1942 : Selection :=
  ⟨0, 1, 2, (609/50), 431, 714, -1032⟩
theorem selection0_1942_checked : selection0_1942.check profile1942 := by decide +kernel

noncomputable def selection1_1942 : Selection :=
  ⟨1, -7, 6, (119/10), 70, 502, -664⟩
theorem selection1_1942_checked : selection1_1942.check profile1942 := by decide +kernel

noncomputable def selection2_1942 : Selection :=
  ⟨2, -15, 10, (1183/100), 28, 322, -296⟩
theorem selection2_1942_checked : selection2_1942.check profile1942 := by decide +kernel

noncomputable def profile1943 : ProfileCell :=
  ⟨(41/60), (54/79),
    [35, 34, 32, 31, 30, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨13, 41⟩, ⟨33, 69⟩, ⟨16, 43⟩, ⟨36, 71⟩, ⟨19, 45⟩, ⟨39, 73⟩, ⟨3, 34⟩, ⟨42, 75⟩, ⟨23, 62⟩, ⟨6, 36⟩, ⟨26, 64⟩, ⟨9, 38⟩, ⟨29, 66⟩, ⟨12, 40⟩, ⟨32, 68⟩, ⟨15, 42⟩, ⟨35, 70⟩, ⟨18, 44⟩, ⟨38, 72⟩, ⟨21, 46⟩, ⟨2, 33⟩, ⟨41, 74⟩, ⟨22, 61⟩, ⟨5, 35⟩, ⟨25, 63⟩, ⟨8, 37⟩, ⟨28, 65⟩, ⟨11, 39⟩, ⟨31, 67⟩, ⟨14, 41⟩, ⟨34, 69⟩, ⟨17, 43⟩, ⟨37, 71⟩, ⟨20, 45⟩, ⟨1, 32⟩, ⟨40, 73⟩, ⟨4, 34⟩, ⟨24, 62⟩, ⟨7, 36⟩, ⟨27, 64⟩, ⟨10, 38⟩, ⟨30, 66⟩, ⟨43, 107⟩]⟩
theorem profile1943_checked : profile1943.check := by decide +kernel

noncomputable def selection0_1943 : Selection :=
  ⟨0, 1, 2, (241/20), 545, 468, -672⟩
theorem selection0_1943_checked : selection0_1943.check profile1943 := by decide +kernel

noncomputable def selection1_1943 : Selection :=
  ⟨1, -7, 6, (1187/100), 89, 256, -304⟩
theorem selection1_1943_checked : selection1_1943.check profile1943 := by decide +kernel

noncomputable def selection2_1943 : Selection :=
  ⟨2, -15, 10, (591/50), 35, 76, 64⟩
theorem selection2_1943_checked : selection2_1943.check profile1943 := by decide +kernel

noncomputable def profile1944 : ProfileCell :=
  ⟨(54/79), (67/98),
    [35, 34, 32, 31, 30, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨43, 108⟩, ⟨13, 41⟩, ⟨33, 69⟩, ⟨16, 43⟩, ⟨36, 71⟩, ⟨19, 45⟩, ⟨39, 73⟩, ⟨3, 34⟩, ⟨42, 75⟩, ⟨23, 62⟩, ⟨6, 36⟩, ⟨26, 64⟩, ⟨9, 38⟩, ⟨29, 66⟩, ⟨12, 40⟩, ⟨32, 68⟩, ⟨15, 42⟩, ⟨35, 70⟩, ⟨18, 44⟩, ⟨38, 72⟩, ⟨21, 46⟩, ⟨2, 33⟩, ⟨41, 74⟩, ⟨22, 61⟩, ⟨5, 35⟩, ⟨25, 63⟩, ⟨8, 37⟩, ⟨28, 65⟩, ⟨11, 39⟩, ⟨31, 67⟩, ⟨14, 41⟩, ⟨34, 69⟩, ⟨17, 43⟩, ⟨37, 71⟩, ⟨20, 45⟩, ⟨1, 32⟩, ⟨40, 73⟩, ⟨4, 34⟩, ⟨24, 62⟩, ⟨7, 36⟩, ⟨27, 64⟩, ⟨10, 38⟩, ⟨30, 66⟩]⟩
theorem profile1944_checked : profile1944.check := by decide +kernel

noncomputable def selection0_1944 : Selection :=
  ⟨0, 1, 2, (603/50), 334, -828, 1224⟩
theorem selection0_1944_checked : selection0_1944.check profile1944 := by decide +kernel

noncomputable def selection1_1944 : Selection :=
  ⟨1, -7, 6, (1191/100), 55, -1040, 1592⟩
theorem selection1_1944_checked : selection1_1944.check profile1944 := by decide +kernel

noncomputable def selection2_1944 : Selection :=
  ⟨2, -15, 10, (1187/100), 22, -1220, 1960⟩
theorem selection2_1944_checked : selection2_1944.check profile1944 := by decide +kernel

noncomputable def profile1945 : ProfileCell :=
  ⟨(67/98), (13/19),
    [35, 34, 32, 31, 30, 28, 27, 25, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨30, 67⟩, ⟨13, 41⟩, ⟨43, 108⟩, ⟨33, 69⟩, ⟨16, 43⟩, ⟨36, 71⟩, ⟨19, 45⟩, ⟨39, 73⟩, ⟨3, 34⟩, ⟨42, 75⟩, ⟨23, 62⟩, ⟨6, 36⟩, ⟨26, 64⟩, ⟨9, 38⟩, ⟨29, 66⟩, ⟨12, 40⟩, ⟨32, 68⟩, ⟨15, 42⟩, ⟨35, 70⟩, ⟨18, 44⟩, ⟨38, 72⟩, ⟨21, 46⟩, ⟨2, 33⟩, ⟨41, 74⟩, ⟨22, 61⟩, ⟨5, 35⟩, ⟨25, 63⟩, ⟨8, 37⟩, ⟨28, 65⟩, ⟨11, 39⟩, ⟨31, 67⟩, ⟨14, 41⟩, ⟨34, 69⟩, ⟨17, 43⟩, ⟨37, 71⟩, ⟨20, 45⟩, ⟨1, 32⟩, ⟨40, 73⟩, ⟨4, 34⟩, ⟨24, 62⟩, ⟨7, 36⟩, ⟨27, 64⟩, ⟨10, 38⟩]⟩
theorem profile1945_checked : profile1945.check := by decide +kernel

noncomputable def selection0_1945 : Selection :=
  ⟨0, 2, 2, (247/20), 1418, -441, 654⟩
theorem selection0_1945_checked : selection0_1945.check profile1945 := by decide +kernel

noncomputable def selection1_1945 : Selection :=
  ⟨1, -6, 6, (302/25), 229, -657, 1022⟩
theorem selection1_1945_checked : selection1_1945.check profile1945 := by decide +kernel

noncomputable def selection2_1945 : Selection :=
  ⟨2, -14, 10, (1201/100), 90, -841, 1390⟩
theorem selection2_1945_checked : selection2_1945.check profile1945 := by decide +kernel

noncomputable def profile1946 : ProfileCell :=
  ⟨(13/19), (63/92),
    [35, 34, 32, 31, 30, 28, 27, 26, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨10, 39⟩, ⟨27, 65⟩, ⟨13, 41⟩, ⟨30, 67⟩, ⟨16, 43⟩, ⟨33, 69⟩, ⟨43, 108⟩, ⟨19, 45⟩, ⟨36, 71⟩, ⟨3, 34⟩, ⟨39, 73⟩, ⟨6, 36⟩, ⟨23, 62⟩, ⟨42, 75⟩, ⟨9, 38⟩, ⟨26, 64⟩, ⟨12, 40⟩, ⟨29, 66⟩, ⟨15, 42⟩, ⟨32, 68⟩, ⟨18, 44⟩, ⟨35, 70⟩, ⟨2, 33⟩, ⟨21, 46⟩, ⟨38, 72⟩, ⟨5, 35⟩, ⟨22, 61⟩, ⟨41, 74⟩, ⟨8, 37⟩, ⟨25, 63⟩, ⟨11, 39⟩, ⟨28, 65⟩, ⟨14, 41⟩, ⟨31, 67⟩, ⟨17, 43⟩, ⟨34, 69⟩, ⟨1, 32⟩, ⟨20, 45⟩, ⟨37, 71⟩, ⟨4, 34⟩, ⟨40, 73⟩, ⟨7, 36⟩, ⟨24, 62⟩]⟩
theorem profile1946_checked : profile1946.check := by decide +kernel

noncomputable def selection0_1946 : Selection :=
  ⟨0, 1, 2, (1077/100), 1316, -675, 996⟩
theorem selection0_1946_checked : selection0_1946.check profile1946 := by decide +kernel

noncomputable def selection1_1946 : Selection :=
  ⟨1, -7, 6, (1031/100), 208, -891, 1364⟩
theorem selection1_1946_checked : selection1_1946.check profile1946 := by decide +kernel

noncomputable def selection2_1946 : Selection :=
  ⟨2, -15, 10, (51/5), 81, -1075, 1732⟩
theorem selection2_1946_checked : selection2_1946.check profile1946 := by decide +kernel

noncomputable def profile1947 : ProfileCell :=
  ⟨(63/92), (37/54),
    [35, 34, 32, 31, 30, 28, 27, 26, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨24, 63⟩, ⟨10, 39⟩, ⟨27, 65⟩, ⟨13, 41⟩, ⟨30, 67⟩, ⟨16, 43⟩, ⟨33, 69⟩, ⟨19, 45⟩, ⟨43, 108⟩, ⟨36, 71⟩, ⟨3, 34⟩, ⟨39, 73⟩, ⟨6, 36⟩, ⟨23, 62⟩, ⟨42, 75⟩, ⟨9, 38⟩, ⟨26, 64⟩, ⟨12, 40⟩, ⟨29, 66⟩, ⟨15, 42⟩, ⟨32, 68⟩, ⟨18, 44⟩, ⟨35, 70⟩, ⟨2, 33⟩, ⟨21, 46⟩, ⟨38, 72⟩, ⟨5, 35⟩, ⟨22, 61⟩, ⟨41, 74⟩, ⟨8, 37⟩, ⟨25, 63⟩, ⟨11, 39⟩, ⟨28, 65⟩, ⟨14, 41⟩, ⟨31, 67⟩, ⟨17, 43⟩, ⟨34, 69⟩, ⟨1, 32⟩, ⟨20, 45⟩, ⟨37, 71⟩, ⟨4, 34⟩, ⟨40, 73⟩, ⟨7, 36⟩]⟩
theorem profile1947_checked : profile1947.check := by decide +kernel

noncomputable def selection0_1947 : Selection :=
  ⟨0, 1, 2, (219/20), 940, -423, 628⟩
theorem selection0_1947_checked : selection0_1947.check profile1947 := by decide +kernel

noncomputable def selection1_1947 : Selection :=
  ⟨1, -7, 6, (1043/100), 148, -639, 996⟩
theorem selection1_1947_checked : selection1_1947.check profile1947 := by decide +kernel

noncomputable def selection2_1947 : Selection :=
  ⟨2, -15, 10, (103/10), 58, -823, 1364⟩
theorem selection2_1947_checked : selection2_1947.check profile1947 := by decide +kernel

noncomputable def profile1948 : ProfileCell :=
  ⟨(37/54), (24/35),
    [35, 34, 32, 31, 30, 28, 27, 26, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨7, 37⟩, ⟨40, 74⟩, ⟨24, 63⟩, ⟨10, 39⟩, ⟨27, 65⟩, ⟨13, 41⟩, ⟨30, 67⟩, ⟨16, 43⟩, ⟨33, 69⟩, ⟨19, 45⟩, ⟨3, 34⟩, ⟨36, 71⟩, ⟨43, 108⟩, ⟨6, 36⟩, ⟨39, 73⟩, ⟨23, 62⟩, ⟨9, 38⟩, ⟨42, 75⟩, ⟨26, 64⟩, ⟨12, 40⟩, ⟨29, 66⟩, ⟨15, 42⟩, ⟨32, 68⟩, ⟨18, 44⟩, ⟨2, 33⟩, ⟨35, 70⟩, ⟨21, 46⟩, ⟨5, 35⟩, ⟨38, 72⟩, ⟨22, 61⟩, ⟨8, 37⟩, ⟨41, 74⟩, ⟨25, 63⟩, ⟨11, 39⟩, ⟨28, 65⟩, ⟨14, 41⟩, ⟨31, 67⟩, ⟨17, 43⟩, ⟨1, 32⟩, ⟨34, 69⟩, ⟨20, 45⟩, ⟨4, 34⟩, ⟨37, 71⟩]⟩
theorem profile1948_checked : profile1948.check := by decide +kernel

noncomputable def selection0_1948 : Selection :=
  ⟨0, 0, 2, (1113/100), 1254, -312, 470⟩
theorem selection0_1948_checked : selection0_1948.check profile1948 := by decide +kernel

noncomputable def selection1_1948 : Selection :=
  ⟨1, -8, 6, (264/25), 197, -524, 838⟩
theorem selection1_1948_checked : selection1_1948.check profile1948 := by decide +kernel

noncomputable def selection2_1948 : Selection :=
  ⟨2, -16, 10, (521/50), 77, -704, 1206⟩
theorem selection2_1948_checked : selection2_1948.check profile1948 := by decide +kernel

noncomputable def profile1949 : ProfileCell :=
  ⟨(24/35), (35/51),
    [35, 34, 32, 31, 30, 28, 27, 26, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 34, 35],
    [⟨37, 72⟩, ⟨7, 37⟩, ⟨40, 74⟩, ⟨10, 39⟩, ⟨24, 63⟩, ⟨13, 41⟩, ⟨27, 65⟩, ⟨16, 43⟩, ⟨30, 67⟩, ⟨19, 45⟩, ⟨33, 69⟩, ⟨3, 34⟩, ⟨36, 71⟩, ⟨6, 36⟩, ⟨43, 108⟩, ⟨39, 73⟩, ⟨9, 38⟩, ⟨23, 62⟩, ⟨42, 75⟩, ⟨12, 40⟩, ⟨26, 64⟩, ⟨15, 42⟩, ⟨29, 66⟩, ⟨18, 44⟩, ⟨32, 68⟩, ⟨2, 33⟩, ⟨21, 46⟩, ⟨35, 70⟩, ⟨5, 35⟩, ⟨38, 72⟩, ⟨8, 37⟩, ⟨22, 61⟩, ⟨41, 74⟩, ⟨11, 39⟩, ⟨25, 63⟩, ⟨14, 41⟩, ⟨28, 65⟩, ⟨17, 43⟩, ⟨31, 67⟩, ⟨1, 32⟩, ⟨20, 45⟩, ⟨34, 69⟩, ⟨4, 34⟩]⟩
theorem profile1949_checked : profile1949.check := by decide +kernel

noncomputable def selection0_1949 : Selection :=
  ⟨0, 1, 2, (56/5), 1334, -50, 84⟩
theorem selection0_1949_checked : selection0_1949.check profile1949 := by decide +kernel

noncomputable def selection1_1949 : Selection :=
  ⟨1, -7, 6, (533/50), 211, -266, 452⟩
theorem selection1_1949_checked : selection1_1949.check profile1949 := by decide +kernel

noncomputable def selection2_1949 : Selection :=
  ⟨2, -15, 10, (263/25), 82, -450, 820⟩
theorem selection2_1949_checked : selection2_1949.check profile1949 := by decide +kernel

noncomputable def profile1950 : ProfileCell :=
  ⟨(35/51), (46/67),
    [35, 34, 32, 31, 30, 28, 27, 26, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 35, 35],
    [⟨4, 35⟩, ⟨34, 70⟩, ⟨7, 37⟩, ⟨37, 72⟩, ⟨10, 39⟩, ⟨40, 74⟩, ⟨24, 63⟩, ⟨13, 41⟩, ⟨27, 65⟩, ⟨16, 43⟩, ⟨30, 67⟩, ⟨19, 45⟩, ⟨3, 34⟩, ⟨33, 69⟩, ⟨6, 36⟩, ⟨36, 71⟩, ⟨9, 38⟩, ⟨39, 73⟩, ⟨43, 108⟩, ⟨23, 62⟩, ⟨12, 40⟩, ⟨42, 75⟩, ⟨26, 64⟩, ⟨15, 42⟩, ⟨29, 66⟩, ⟨18, 44⟩, ⟨2, 33⟩, ⟨32, 68⟩, ⟨21, 46⟩, ⟨5, 35⟩, ⟨35, 70⟩, ⟨8, 37⟩, ⟨38, 72⟩, ⟨22, 61⟩, ⟨11, 39⟩, ⟨41, 74⟩, ⟨25, 63⟩, ⟨14, 41⟩, ⟨28, 65⟩, ⟨17, 43⟩, ⟨1, 32⟩, ⟨31, 67⟩, ⟨20, 45⟩]⟩
theorem profile1950_checked : profile1950.check := by decide +kernel

noncomputable def selection0_1950 : Selection :=
  ⟨0, 3, 2, (1527/100), 949, -190, 288⟩
theorem selection0_1950_checked : selection0_1950.check profile1950 := by decide +kernel

noncomputable def selection1_1950 : Selection :=
  ⟨1, -5, 6, (1471/100), 152, -406, 656⟩
theorem selection1_1950_checked : selection1_1950.check profile1950 := by decide +kernel

noncomputable def selection2_1950 : Selection :=
  ⟨2, -13, 10, (1457/100), 60, -590, 1024⟩
theorem selection2_1950_checked : selection2_1950.check profile1950 := by decide +kernel

noncomputable def profile1951 : ProfileCell :=
  ⟨(46/67), (68/99),
    [35, 34, 32, 31, 30, 28, 27, 26, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 35, 35],
    [⟨20, 46⟩, ⟨4, 35⟩, ⟨34, 70⟩, ⟨7, 37⟩, ⟨37, 72⟩, ⟨10, 39⟩, ⟨40, 74⟩, ⟨24, 63⟩, ⟨13, 41⟩, ⟨27, 65⟩, ⟨16, 43⟩, ⟨30, 67⟩, ⟨19, 45⟩, ⟨3, 34⟩, ⟨33, 69⟩, ⟨6, 36⟩, ⟨36, 71⟩, ⟨9, 38⟩, ⟨39, 73⟩, ⟨23, 62⟩, ⟨43, 108⟩, ⟨12, 40⟩, ⟨42, 75⟩, ⟨26, 64⟩, ⟨15, 42⟩, ⟨29, 66⟩, ⟨18, 44⟩, ⟨2, 33⟩, ⟨32, 68⟩, ⟨21, 46⟩, ⟨5, 35⟩, ⟨35, 70⟩, ⟨8, 37⟩, ⟨38, 72⟩, ⟨22, 61⟩, ⟨11, 39⟩, ⟨41, 74⟩, ⟨25, 63⟩, ⟨14, 41⟩, ⟨28, 65⟩, ⟨17, 43⟩, ⟨1, 32⟩, ⟨31, 67⟩]⟩
theorem profile1951_checked : profile1951.check := by decide +kernel

noncomputable def selection0_1951 : Selection :=
  ⟨0, 3, 2, (771/50), 986, -466, 690⟩
theorem selection0_1951_checked : selection0_1951.check profile1951 := by decide +kernel

noncomputable def selection1_1951 : Selection :=
  ⟨1, -5, 6, (1481/100), 157, -682, 1058⟩
theorem selection1_1951_checked : selection1_1951.check profile1951 := by decide +kernel

noncomputable def selection2_1951 : Selection :=
  ⟨2, -13, 10, (293/20), 62, -866, 1426⟩
theorem selection2_1951_checked : selection2_1951.check profile1951 := by decide +kernel

noncomputable def profile1952 : ProfileCell :=
  ⟨(68/99), (11/16),
    [35, 34, 32, 31, 30, 28, 27, 26, 24, 23, 21, 20, 19, 17, 16, 15], [32, 33, 34, 35, 35],
    [⟨31, 68⟩, ⟨20, 46⟩, ⟨4, 35⟩, ⟨34, 70⟩, ⟨7, 37⟩, ⟨37, 72⟩, ⟨10, 39⟩, ⟨40, 74⟩, ⟨24, 63⟩, ⟨13, 41⟩, ⟨27, 65⟩, ⟨16, 43⟩, ⟨30, 67⟩, ⟨19, 45⟩, ⟨3, 34⟩, ⟨33, 69⟩, ⟨6, 36⟩, ⟨36, 71⟩, ⟨9, 38⟩, ⟨39, 73⟩, ⟨23, 62⟩, ⟨12, 40⟩, ⟨43, 108⟩, ⟨42, 75⟩, ⟨26, 64⟩, ⟨15, 42⟩, ⟨29, 66⟩, ⟨18, 44⟩, ⟨2, 33⟩, ⟨32, 68⟩, ⟨21, 46⟩, ⟨5, 35⟩, ⟨35, 70⟩, ⟨8, 37⟩, ⟨38, 72⟩, ⟨22, 61⟩, ⟨11, 39⟩, ⟨41, 74⟩, ⟨25, 63⟩, ⟨14, 41⟩, ⟨28, 65⟩, ⟨17, 43⟩, ⟨1, 32⟩]⟩
theorem profile1952_checked : profile1952.check := by decide +kernel

noncomputable def selection0_1952 : Selection :=
  ⟨0, 3, 2, (773/50), 2067, -58, 96⟩
theorem selection0_1952_checked : selection0_1952.check profile1952 := by decide +kernel

noncomputable def selection1_1952 : Selection :=
  ⟨1, -5, 6, (1489/100), 331, -274, 464⟩
theorem selection1_1952_checked : selection1_1952.check profile1952 := by decide +kernel

noncomputable def selection2_1952 : Selection :=
  ⟨2, -13, 10, (59/4), 129, -458, 832⟩
theorem selection2_1952_checked : selection2_1952.check profile1952 := by decide +kernel

noncomputable def profile1953 : ProfileCell :=
  ⟨(11/16), (75/109),
    [35, 34, 33, 31, 30, 28, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨1, 33⟩, ⟨17, 44⟩, ⟨28, 66⟩, ⟨4, 35⟩, ⟨20, 46⟩, ⟨31, 68⟩, ⟨7, 37⟩, ⟨34, 70⟩, ⟨10, 39⟩, ⟨37, 72⟩, ⟨13, 41⟩, ⟨24, 63⟩, ⟨40, 74⟩, ⟨16, 43⟩, ⟨27, 65⟩, ⟨3, 34⟩, ⟨19, 45⟩, ⟨30, 67⟩, ⟨6, 36⟩, ⟨33, 69⟩, ⟨9, 38⟩, ⟨36, 71⟩, ⟨12, 40⟩, ⟨23, 62⟩, ⟨39, 73⟩, ⟨15, 42⟩, ⟨26, 64⟩, ⟨42, 75⟩, ⟨43, 108⟩, ⟨2, 33⟩, ⟨18, 44⟩, ⟨29, 66⟩, ⟨5, 35⟩, ⟨21, 46⟩, ⟨32, 68⟩, ⟨8, 37⟩, ⟨35, 70⟩, ⟨11, 39⟩, ⟨22, 61⟩, ⟨38, 72⟩, ⟨14, 41⟩, ⟨25, 63⟩, ⟨41, 74⟩]⟩
theorem profile1953_checked : profile1953.check := by decide +kernel

noncomputable def selection0_1953 : Selection :=
  ⟨0, 3, 2, (1573/100), 1907, -443, 656⟩
theorem selection0_1953_checked : selection0_1953.check profile1953 := by decide +kernel

noncomputable def selection1_1953 : Selection :=
  ⟨1, -5, 6, (1507/100), 304, -659, 1024⟩
theorem selection1_1953_checked : selection1_1953.check profile1953 := by decide +kernel

noncomputable def selection2_1953 : Selection :=
  ⟨2, -13, 10, (149/10), 119, -843, 1392⟩
theorem selection2_1953_checked : selection2_1953.check profile1953 := by decide +kernel

noncomputable def profile1954 : ProfileCell :=
  ⟨(75/109), (64/93),
    [35, 34, 33, 31, 30, 28, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨41, 75⟩, ⟨1, 33⟩, ⟨17, 44⟩, ⟨28, 66⟩, ⟨4, 35⟩, ⟨20, 46⟩, ⟨31, 68⟩, ⟨7, 37⟩, ⟨34, 70⟩, ⟨10, 39⟩, ⟨37, 72⟩, ⟨13, 41⟩, ⟨24, 63⟩, ⟨40, 74⟩, ⟨16, 43⟩, ⟨27, 65⟩, ⟨3, 34⟩, ⟨19, 45⟩, ⟨30, 67⟩, ⟨6, 36⟩, ⟨33, 69⟩, ⟨9, 38⟩, ⟨36, 71⟩, ⟨12, 40⟩, ⟨23, 62⟩, ⟨39, 73⟩, ⟨15, 42⟩, ⟨26, 64⟩, ⟨42, 75⟩, ⟨2, 33⟩, ⟨43, 108⟩, ⟨18, 44⟩, ⟨29, 66⟩, ⟨5, 35⟩, ⟨21, 46⟩, ⟨32, 68⟩, ⟨8, 37⟩, ⟨35, 70⟩, ⟨11, 39⟩, ⟨22, 61⟩, ⟨38, 72⟩, ⟨14, 41⟩, ⟨25, 63⟩]⟩
theorem profile1954_checked : profile1954.check := by decide +kernel

noncomputable def selection0_1954 : Selection :=
  ⟨0, 3, 2, (1573/100), 328, 7, 2⟩
theorem selection0_1954_checked : selection0_1954.check profile1954 := by decide +kernel

noncomputable def selection1_1954 : Selection :=
  ⟨1, -5, 6, (377/25), 53, -209, 370⟩
theorem selection1_1954_checked : selection1_1954.check profile1954 := by decide +kernel

noncomputable def selection2_1954 : Selection :=
  ⟨2, -13, 10, (1491/100), 21, -393, 738⟩
theorem selection2_1954_checked : selection2_1954.check profile1954 := by decide +kernel

noncomputable def profile1955 : ProfileCell :=
  ⟨(64/93), (42/61),
    [35, 34, 33, 31, 30, 28, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨25, 64⟩, ⟨41, 75⟩, ⟨1, 33⟩, ⟨17, 44⟩, ⟨28, 66⟩, ⟨4, 35⟩, ⟨20, 46⟩, ⟨31, 68⟩, ⟨7, 37⟩, ⟨34, 70⟩, ⟨10, 39⟩, ⟨37, 72⟩, ⟨13, 41⟩, ⟨24, 63⟩, ⟨40, 74⟩, ⟨16, 43⟩, ⟨27, 65⟩, ⟨3, 34⟩, ⟨19, 45⟩, ⟨30, 67⟩, ⟨6, 36⟩, ⟨33, 69⟩, ⟨9, 38⟩, ⟨36, 71⟩, ⟨12, 40⟩, ⟨23, 62⟩, ⟨39, 73⟩, ⟨15, 42⟩, ⟨26, 64⟩, ⟨42, 75⟩, ⟨2, 33⟩, ⟨18, 44⟩, ⟨43, 108⟩, ⟨29, 66⟩, ⟨5, 35⟩, ⟨21, 46⟩, ⟨32, 68⟩, ⟨8, 37⟩, ⟨35, 70⟩, ⟨11, 39⟩, ⟨22, 61⟩, ⟨38, 72⟩, ⟨14, 41⟩]⟩
theorem profile1955_checked : profile1955.check := by decide +kernel

noncomputable def selection0_1955 : Selection :=
  ⟨0, 3, 2, (1573/100), 1171, 263, -370⟩
theorem selection0_1955_checked : selection0_1955.check profile1955 := by decide +kernel

noncomputable def selection1_1955 : Selection :=
  ⟨1, -5, 6, (377/25), 187, 47, -2⟩
theorem selection1_1955_checked : selection1_1955.check profile1955 := by decide +kernel

noncomputable def selection2_1955 : Selection :=
  ⟨2, -13, 10, (1493/100), 73, -137, 366⟩
theorem selection2_1955_checked : selection2_1955.check profile1955 := by decide +kernel

noncomputable def profile1956 : ProfileCell :=
  ⟨(42/61), (73/106),
    [35, 34, 33, 31, 30, 28, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨14, 42⟩, ⟨25, 64⟩, ⟨1, 33⟩, ⟨41, 75⟩, ⟨17, 44⟩, ⟨28, 66⟩, ⟨4, 35⟩, ⟨20, 46⟩, ⟨31, 68⟩, ⟨7, 37⟩, ⟨34, 70⟩, ⟨10, 39⟩, ⟨37, 72⟩, ⟨13, 41⟩, ⟨24, 63⟩, ⟨40, 74⟩, ⟨16, 43⟩, ⟨27, 65⟩, ⟨3, 34⟩, ⟨19, 45⟩, ⟨30, 67⟩, ⟨6, 36⟩, ⟨33, 69⟩, ⟨9, 38⟩, ⟨36, 71⟩, ⟨12, 40⟩, ⟨23, 62⟩, ⟨39, 73⟩, ⟨15, 42⟩, ⟨26, 64⟩, ⟨2, 33⟩, ⟨42, 75⟩, ⟨18, 44⟩, ⟨29, 66⟩, ⟨43, 108⟩, ⟨5, 35⟩, ⟨21, 46⟩, ⟨32, 68⟩, ⟨8, 37⟩, ⟨35, 70⟩, ⟨11, 39⟩, ⟨22, 61⟩, ⟨38, 72⟩]⟩
theorem profile1956_checked : profile1956.check := by decide +kernel

noncomputable def selection0_1956 : Selection :=
  ⟨0, 3, 2, (391/25), 511, 11, -4⟩
theorem selection0_1956_checked : selection0_1956.check profile1956 := by decide +kernel

noncomputable def selection1_1956 : Selection :=
  ⟨1, -5, 6, (1509/100), 82, -205, 364⟩
theorem selection1_1956_checked : selection1_1956.check profile1956 := by decide +kernel

noncomputable def selection2_1956 : Selection :=
  ⟨2, -13, 10, (374/25), 33, -389, 732⟩
theorem selection2_1956_checked : selection2_1956.check profile1956 := by decide +kernel

noncomputable def profile1957 : ProfileCell :=
  ⟨(73/106), (31/45),
    [35, 34, 33, 31, 30, 28, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨38, 73⟩, ⟨14, 42⟩, ⟨25, 64⟩, ⟨1, 33⟩, ⟨41, 75⟩, ⟨17, 44⟩, ⟨28, 66⟩, ⟨4, 35⟩, ⟨20, 46⟩, ⟨31, 68⟩, ⟨7, 37⟩, ⟨34, 70⟩, ⟨10, 39⟩, ⟨37, 72⟩, ⟨13, 41⟩, ⟨24, 63⟩, ⟨40, 74⟩, ⟨16, 43⟩, ⟨27, 65⟩, ⟨3, 34⟩, ⟨19, 45⟩, ⟨30, 67⟩, ⟨6, 36⟩, ⟨33, 69⟩, ⟨9, 38⟩, ⟨36, 71⟩, ⟨12, 40⟩, ⟨23, 62⟩, ⟨39, 73⟩, ⟨15, 42⟩, ⟨26, 64⟩, ⟨2, 33⟩, ⟨42, 75⟩, ⟨18, 44⟩, ⟨29, 66⟩, ⟨5, 35⟩, ⟨43, 108⟩, ⟨21, 46⟩, ⟨32, 68⟩, ⟨8, 37⟩, ⟨35, 70⟩, ⟨11, 39⟩, ⟨22, 61⟩]⟩
theorem profile1957_checked : profile1957.check := by decide +kernel

noncomputable def selection0_1957 : Selection :=
  ⟨0, 3, 2, (391/25), 692, 303, -428⟩
theorem selection0_1957_checked : selection0_1957.check profile1957 := by decide +kernel

noncomputable def selection1_1957 : Selection :=
  ⟨1, -5, 6, (1509/100), 111, 87, -60⟩
theorem selection1_1957_checked : selection1_1957.check profile1957 := by decide +kernel

noncomputable def selection2_1957 : Selection :=
  ⟨2, -13, 10, (1497/100), 44, -97, 308⟩
theorem selection2_1957_checked : selection2_1957.check profile1957 := by decide +kernel

noncomputable def profile1958 : ProfileCell :=
  ⟨(31/45), (71/103),
    [35, 34, 33, 31, 30, 28, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨22, 62⟩, ⟨14, 42⟩, ⟨38, 73⟩, ⟨1, 33⟩, ⟨25, 64⟩, ⟨17, 44⟩, ⟨41, 75⟩, ⟨4, 35⟩, ⟨28, 66⟩, ⟨20, 46⟩, ⟨7, 37⟩, ⟨31, 68⟩, ⟨10, 39⟩, ⟨34, 70⟩, ⟨13, 41⟩, ⟨37, 72⟩, ⟨24, 63⟩, ⟨16, 43⟩, ⟨40, 74⟩, ⟨3, 34⟩, ⟨27, 65⟩, ⟨19, 45⟩, ⟨6, 36⟩, ⟨30, 67⟩, ⟨9, 38⟩, ⟨33, 69⟩, ⟨12, 40⟩, ⟨36, 71⟩, ⟨23, 62⟩, ⟨15, 42⟩, ⟨39, 73⟩, ⟨2, 33⟩, ⟨26, 64⟩, ⟨18, 44⟩, ⟨42, 75⟩, ⟨5, 35⟩, ⟨29, 66⟩, ⟨21, 46⟩, ⟨43, 108⟩, ⟨8, 37⟩, ⟨32, 68⟩, ⟨11, 39⟩, ⟨35, 70⟩]⟩
theorem profile1958_checked : profile1958.check := by decide +kernel

noncomputable def selection0_1958 : Selection :=
  ⟨0, 3, 2, (1557/100), 1415, 489, -698⟩
theorem selection0_1958_checked : selection0_1958.check profile1958 := by decide +kernel

noncomputable def selection1_1958 : Selection :=
  ⟨1, -5, 6, (1509/100), 229, 273, -330⟩
theorem selection1_1958_checked : selection1_1958.check profile1958 := by decide +kernel

noncomputable def selection2_1958 : Selection :=
  ⟨2, -13, 10, (1497/100), 90, 89, 38⟩
theorem selection2_1958_checked : selection2_1958.check profile1958 := by decide +kernel

noncomputable def profile1959 : ProfileCell :=
  ⟨(71/103), (20/29),
    [35, 34, 33, 31, 30, 28, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨35, 71⟩, ⟨22, 62⟩, ⟨14, 42⟩, ⟨38, 73⟩, ⟨1, 33⟩, ⟨25, 64⟩, ⟨17, 44⟩, ⟨41, 75⟩, ⟨4, 35⟩, ⟨28, 66⟩, ⟨20, 46⟩, ⟨7, 37⟩, ⟨31, 68⟩, ⟨10, 39⟩, ⟨34, 70⟩, ⟨13, 41⟩, ⟨37, 72⟩, ⟨24, 63⟩, ⟨16, 43⟩, ⟨40, 74⟩, ⟨3, 34⟩, ⟨27, 65⟩, ⟨19, 45⟩, ⟨6, 36⟩, ⟨30, 67⟩, ⟨9, 38⟩, ⟨33, 69⟩, ⟨12, 40⟩, ⟨36, 71⟩, ⟨23, 62⟩, ⟨15, 42⟩, ⟨39, 73⟩, ⟨2, 33⟩, ⟨26, 64⟩, ⟨18, 44⟩, ⟨42, 75⟩, ⟨5, 35⟩, ⟨29, 66⟩, ⟨21, 46⟩, ⟨8, 37⟩, ⟨43, 108⟩, ⟨32, 68⟩, ⟨11, 39⟩]⟩
theorem profile1959_checked : profile1959.check := by decide +kernel

noncomputable def selection0_1959 : Selection :=
  ⟨0, 3, 2, (307/20), 1081, 773, -1110⟩
theorem selection0_1959_checked : selection0_1959.check profile1959 := by decide +kernel

noncomputable def selection1_1959 : Selection :=
  ⟨1, -5, 6, (301/20), 177, 557, -742⟩
theorem selection1_1959_checked : selection1_1959.check profile1959 := by decide +kernel

noncomputable def selection2_1959 : Selection :=
  ⟨2, -13, 10, (1497/100), 70, 373, -374⟩
theorem selection2_1959_checked : selection2_1959.check profile1959 := by decide +kernel

noncomputable def profile1960 : ProfileCell :=
  ⟨(20/29), (109/158),
    [35, 34, 33, 31, 30, 28, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨11, 40⟩, ⟨35, 71⟩, ⟨14, 42⟩, ⟨22, 62⟩, ⟨1, 33⟩, ⟨38, 73⟩, ⟨17, 44⟩, ⟨25, 64⟩, ⟨4, 35⟩, ⟨41, 75⟩, ⟨20, 46⟩, ⟨28, 66⟩, ⟨7, 37⟩, ⟨31, 68⟩, ⟨10, 39⟩, ⟨34, 70⟩, ⟨13, 41⟩, ⟨37, 72⟩, ⟨16, 43⟩, ⟨24, 63⟩, ⟨3, 34⟩, ⟨40, 74⟩, ⟨19, 45⟩, ⟨27, 65⟩, ⟨6, 36⟩, ⟨30, 67⟩, ⟨9, 38⟩, ⟨33, 69⟩, ⟨12, 40⟩, ⟨36, 71⟩, ⟨15, 42⟩, ⟨23, 62⟩, ⟨2, 33⟩, ⟨39, 73⟩, ⟨18, 44⟩, ⟨26, 64⟩, ⟨5, 35⟩, ⟨42, 75⟩, ⟨21, 46⟩, ⟨29, 66⟩, ⟨8, 37⟩, ⟨32, 68⟩, ⟨43, 108⟩]⟩
theorem profile1960_checked : profile1960.check := by decide +kernel

noncomputable def selection0_1960 : Selection :=
  ⟨0, 3, 2, (377/25), 692, 253, -356⟩
theorem selection0_1960_checked : selection0_1960.check profile1960 := by decide +kernel

noncomputable def selection1_1960 : Selection :=
  ⟨1, -5, 6, (749/50), 115, 37, 12⟩
theorem selection1_1960_checked : selection1_1960.check profile1960 := by decide +kernel

noncomputable def selection2_1960 : Selection :=
  ⟨2, -13, 10, (374/25), 46, -147, 380⟩
theorem selection2_1960_checked : selection2_1960.check profile1960 := by decide +kernel

noncomputable def profile1961 : ProfileCell :=
  ⟨(109/158), (69/100),
    [35, 34, 33, 31, 30, 28, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨43, 109⟩, ⟨11, 40⟩, ⟨35, 71⟩, ⟨14, 42⟩, ⟨22, 62⟩, ⟨1, 33⟩, ⟨38, 73⟩, ⟨17, 44⟩, ⟨25, 64⟩, ⟨4, 35⟩, ⟨41, 75⟩, ⟨20, 46⟩, ⟨28, 66⟩, ⟨7, 37⟩, ⟨31, 68⟩, ⟨10, 39⟩, ⟨34, 70⟩, ⟨13, 41⟩, ⟨37, 72⟩, ⟨16, 43⟩, ⟨24, 63⟩, ⟨3, 34⟩, ⟨40, 74⟩, ⟨19, 45⟩, ⟨27, 65⟩, ⟨6, 36⟩, ⟨30, 67⟩, ⟨9, 38⟩, ⟨33, 69⟩, ⟨12, 40⟩, ⟨36, 71⟩, ⟨15, 42⟩, ⟨23, 62⟩, ⟨2, 33⟩, ⟨39, 73⟩, ⟨18, 44⟩, ⟨26, 64⟩, ⟨5, 35⟩, ⟨42, 75⟩, ⟨21, 46⟩, ⟨29, 66⟩, ⟨8, 37⟩, ⟨32, 68⟩]⟩
theorem profile1961_checked : profile1961.check := by decide +kernel

noncomputable def selection0_1961 : Selection :=
  ⟨0, 3, 2, (759/50), 404, -1164, 1698⟩
theorem selection0_1961_checked : selection0_1961.check profile1961 := by decide +kernel

noncomputable def selection1_1961 : Selection :=
  ⟨1, -5, 6, (301/20), 67, -1380, 2066⟩
theorem selection1_1961_checked : selection1_1961.check profile1961 := by decide +kernel

noncomputable def selection2_1961 : Selection :=
  ⟨2, -13, 10, (751/50), 27, -1564, 2434⟩
theorem selection2_1961_checked : selection2_1961.check profile1961 := by decide +kernel

noncomputable def profile1962 : ProfileCell :=
  ⟨(69/100), (29/42),
    [35, 34, 33, 31, 30, 28, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨32, 69⟩, ⟨11, 40⟩, ⟨43, 109⟩, ⟨35, 71⟩, ⟨14, 42⟩, ⟨22, 62⟩, ⟨1, 33⟩, ⟨38, 73⟩, ⟨17, 44⟩, ⟨25, 64⟩, ⟨4, 35⟩, ⟨41, 75⟩, ⟨20, 46⟩, ⟨28, 66⟩, ⟨7, 37⟩, ⟨31, 68⟩, ⟨10, 39⟩, ⟨34, 70⟩, ⟨13, 41⟩, ⟨37, 72⟩, ⟨16, 43⟩, ⟨24, 63⟩, ⟨3, 34⟩, ⟨40, 74⟩, ⟨19, 45⟩, ⟨27, 65⟩, ⟨6, 36⟩, ⟨30, 67⟩, ⟨9, 38⟩, ⟨33, 69⟩, ⟨12, 40⟩, ⟨36, 71⟩, ⟨15, 42⟩, ⟨23, 62⟩, ⟨2, 33⟩, ⟨39, 73⟩, ⟨18, 44⟩, ⟨26, 64⟩, ⟨5, 35⟩, ⟨42, 75⟩, ⟨21, 46⟩, ⟨29, 66⟩, ⟨8, 37⟩]⟩
theorem profile1962_checked : profile1962.check := by decide +kernel

noncomputable def selection0_1962 : Selection :=
  ⟨0, 3, 2, (389/25), 1556, -750, 1098⟩
theorem selection0_1962_checked : selection0_1962.check profile1962 := by decide +kernel

noncomputable def selection1_1962 : Selection :=
  ⟨1, -5, 6, (763/50), 255, -966, 1466⟩
theorem selection1_1962_checked : selection1_1962.check profile1962 := by decide +kernel

noncomputable def selection2_1962 : Selection :=
  ⟨2, -13, 10, (759/50), 100, -1150, 1834⟩
theorem selection2_1962_checked : selection2_1962.check profile1962 := by decide +kernel

noncomputable def profile1963 : ProfileCell :=
  ⟨(29/42), (67/97),
    [35, 34, 33, 31, 30, 29, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨11, 40⟩, ⟨32, 69⟩, ⟨43, 109⟩, ⟨14, 42⟩, ⟨35, 71⟩, ⟨1, 33⟩, ⟨22, 62⟩, ⟨17, 44⟩, ⟨38, 73⟩, ⟨4, 35⟩, ⟨25, 64⟩, ⟨20, 46⟩, ⟨41, 75⟩, ⟨7, 37⟩, ⟨28, 66⟩, ⟨10, 39⟩, ⟨31, 68⟩, ⟨13, 41⟩, ⟨34, 70⟩, ⟨16, 43⟩, ⟨37, 72⟩, ⟨3, 34⟩, ⟨24, 63⟩, ⟨19, 45⟩, ⟨40, 74⟩, ⟨6, 36⟩, ⟨27, 65⟩, ⟨9, 38⟩, ⟨30, 67⟩, ⟨12, 40⟩, ⟨33, 69⟩, ⟨15, 42⟩, ⟨36, 71⟩, ⟨2, 33⟩, ⟨23, 62⟩, ⟨18, 44⟩, ⟨39, 73⟩, ⟨5, 35⟩, ⟨26, 64⟩, ⟨21, 46⟩, ⟨42, 75⟩, ⟨8, 37⟩, ⟨29, 66⟩]⟩
theorem profile1963_checked : profile1963.check := by decide +kernel

noncomputable def selection0_1963 : Selection :=
  ⟨0, 2, 2, (344/25), 709, -779, 1140⟩
theorem selection0_1963_checked : selection0_1963.check profile1963 := by decide +kernel

noncomputable def selection1_1963 : Selection :=
  ⟨1, -6, 6, (1337/100), 115, -995, 1508⟩
theorem selection1_1963_checked : selection1_1963.check profile1963 := by decide +kernel

noncomputable def selection2_1963 : Selection :=
  ⟨2, -14, 10, (1327/100), 45, -1179, 1876⟩
theorem selection2_1963_checked : selection2_1963.check profile1963 := by decide +kernel

noncomputable def profile1964 : ProfileCell :=
  ⟨(67/97), (38/55),
    [35, 34, 33, 31, 30, 29, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨29, 67⟩, ⟨11, 40⟩, ⟨32, 69⟩, ⟨14, 42⟩, ⟨43, 109⟩, ⟨35, 71⟩, ⟨1, 33⟩, ⟨22, 62⟩, ⟨17, 44⟩, ⟨38, 73⟩, ⟨4, 35⟩, ⟨25, 64⟩, ⟨20, 46⟩, ⟨41, 75⟩, ⟨7, 37⟩, ⟨28, 66⟩, ⟨10, 39⟩, ⟨31, 68⟩, ⟨13, 41⟩, ⟨34, 70⟩, ⟨16, 43⟩, ⟨37, 72⟩, ⟨3, 34⟩, ⟨24, 63⟩, ⟨19, 45⟩, ⟨40, 74⟩, ⟨6, 36⟩, ⟨27, 65⟩, ⟨9, 38⟩, ⟨30, 67⟩, ⟨12, 40⟩, ⟨33, 69⟩, ⟨15, 42⟩, ⟨36, 71⟩, ⟨2, 33⟩, ⟨23, 62⟩, ⟨18, 44⟩, ⟨39, 73⟩, ⟨5, 35⟩, ⟨26, 64⟩, ⟨21, 46⟩, ⟨42, 75⟩, ⟨8, 37⟩]⟩
theorem profile1964_checked : profile1964.check := by decide +kernel

noncomputable def selection0_1964 : Selection :=
  ⟨0, 2, 2, (693/50), 545, -511, 752⟩
theorem selection0_1964_checked : selection0_1964.check profile1964 := by decide +kernel

noncomputable def selection1_1964 : Selection :=
  ⟨1, -6, 6, (1343/100), 89, -727, 1120⟩
theorem selection1_1964_checked : selection1_1964.check profile1964 := by decide +kernel

noncomputable def selection2_1964 : Selection :=
  ⟨2, -14, 10, (333/25), 35, -911, 1488⟩
theorem selection2_1964_checked : selection2_1964.check profile1964 := by decide +kernel

noncomputable def profile1965 : ProfileCell :=
  ⟨(38/55), (47/68),
    [35, 34, 33, 31, 30, 29, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨8, 38⟩, ⟨42, 76⟩, ⟨29, 67⟩, ⟨11, 40⟩, ⟨32, 69⟩, ⟨14, 42⟩, ⟨1, 33⟩, ⟨35, 71⟩, ⟨43, 109⟩, ⟨22, 62⟩, ⟨17, 44⟩, ⟨4, 35⟩, ⟨38, 73⟩, ⟨25, 64⟩, ⟨20, 46⟩, ⟨7, 37⟩, ⟨41, 75⟩, ⟨28, 66⟩, ⟨10, 39⟩, ⟨31, 68⟩, ⟨13, 41⟩, ⟨34, 70⟩, ⟨16, 43⟩, ⟨3, 34⟩, ⟨37, 72⟩, ⟨24, 63⟩, ⟨19, 45⟩, ⟨6, 36⟩, ⟨40, 74⟩, ⟨27, 65⟩, ⟨9, 38⟩, ⟨30, 67⟩, ⟨12, 40⟩, ⟨33, 69⟩, ⟨15, 42⟩, ⟨2, 33⟩, ⟨36, 71⟩, ⟨23, 62⟩, ⟨18, 44⟩, ⟨5, 35⟩, ⟨39, 73⟩, ⟨26, 64⟩, ⟨21, 46⟩]⟩
theorem profile1965_checked : profile1965.check := by decide +kernel

noncomputable def selection0_1965 : Selection :=
  ⟨0, 2, 2, (1403/100), 786, -587, 862⟩
theorem selection0_1965_checked : selection0_1965.check profile1965 := by decide +kernel

noncomputable def selection1_1965 : Selection :=
  ⟨1, -6, 6, (1353/100), 127, -803, 1230⟩
theorem selection1_1965_checked : selection1_1965.check profile1965 := by decide +kernel

noncomputable def selection2_1965 : Selection :=
  ⟨2, -14, 10, (67/5), 50, -987, 1598⟩
theorem selection2_1965_checked : selection2_1965.check profile1965 := by decide +kernel

noncomputable def profile1966 : ProfileCell :=
  ⟨(47/68), (65/94),
    [35, 34, 33, 31, 30, 29, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨21, 47⟩, ⟨8, 38⟩, ⟨42, 76⟩, ⟨29, 67⟩, ⟨11, 40⟩, ⟨32, 69⟩, ⟨14, 42⟩, ⟨1, 33⟩, ⟨35, 71⟩, ⟨22, 62⟩, ⟨43, 109⟩, ⟨17, 44⟩, ⟨4, 35⟩, ⟨38, 73⟩, ⟨25, 64⟩, ⟨20, 46⟩, ⟨7, 37⟩, ⟨41, 75⟩, ⟨28, 66⟩, ⟨10, 39⟩, ⟨31, 68⟩, ⟨13, 41⟩, ⟨34, 70⟩, ⟨16, 43⟩, ⟨3, 34⟩, ⟨37, 72⟩, ⟨24, 63⟩, ⟨19, 45⟩, ⟨6, 36⟩, ⟨40, 74⟩, ⟨27, 65⟩, ⟨9, 38⟩, ⟨30, 67⟩, ⟨12, 40⟩, ⟨33, 69⟩, ⟨15, 42⟩, ⟨2, 33⟩, ⟨36, 71⟩, ⟨23, 62⟩, ⟨18, 44⟩, ⟨5, 35⟩, ⟨39, 73⟩, ⟨26, 64⟩]⟩
theorem profile1966_checked : profile1966.check := by decide +kernel

noncomputable def selection0_1966 : Selection :=
  ⟨0, 2, 2, (357/25), 935, -775, 1134⟩
theorem selection0_1966_checked : selection0_1966.check profile1966 := by decide +kernel

noncomputable def selection1_1966 : Selection :=
  ⟨1, -6, 6, (1367/100), 150, -991, 1502⟩
theorem selection1_1966_checked : selection1_1966.check profile1966 := by decide +kernel

noncomputable def selection2_1966 : Selection :=
  ⟨2, -14, 10, (1351/100), 59, -1175, 1870⟩
theorem selection2_1966_checked : selection2_1966.check profile1966 := by decide +kernel

noncomputable def profile1967 : ProfileCell :=
  ⟨(65/94), (74/107),
    [35, 34, 33, 31, 30, 29, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨26, 65⟩, ⟨21, 47⟩, ⟨8, 38⟩, ⟨42, 76⟩, ⟨29, 67⟩, ⟨11, 40⟩, ⟨32, 69⟩, ⟨14, 42⟩, ⟨1, 33⟩, ⟨35, 71⟩, ⟨22, 62⟩, ⟨17, 44⟩, ⟨43, 109⟩, ⟨4, 35⟩, ⟨38, 73⟩, ⟨25, 64⟩, ⟨20, 46⟩, ⟨7, 37⟩, ⟨41, 75⟩, ⟨28, 66⟩, ⟨10, 39⟩, ⟨31, 68⟩, ⟨13, 41⟩, ⟨34, 70⟩, ⟨16, 43⟩, ⟨3, 34⟩, ⟨37, 72⟩, ⟨24, 63⟩, ⟨19, 45⟩, ⟨6, 36⟩, ⟨40, 74⟩, ⟨27, 65⟩, ⟨9, 38⟩, ⟨30, 67⟩, ⟨12, 40⟩, ⟨33, 69⟩, ⟨15, 42⟩, ⟨2, 33⟩, ⟨36, 71⟩, ⟨23, 62⟩, ⟨18, 44⟩, ⟨5, 35⟩, ⟨39, 73⟩]⟩
theorem profile1967_checked : profile1967.check := by decide +kernel

noncomputable def selection0_1967 : Selection :=
  ⟨0, 2, 2, (717/50), 299, -515, 758⟩
theorem selection0_1967_checked : selection0_1967.check profile1967 := by decide +kernel

noncomputable def selection1_1967 : Selection :=
  ⟨1, -6, 6, (137/10), 48, -731, 1126⟩
theorem selection1_1967_checked : selection1_1967.check profile1967 := by decide +kernel

noncomputable def selection2_1967 : Selection :=
  ⟨2, -14, 10, (1353/100), 19, -915, 1494⟩
theorem selection2_1967_checked : selection2_1967.check profile1967 := by decide +kernel

noncomputable def profile1968 : ProfileCell :=
  ⟨(74/107), (9/13),
    [35, 34, 33, 31, 30, 29, 27, 26, 24, 23, 22, 20, 19, 17, 16, 15], [33, 33, 34, 35, 35],
    [⟨39, 74⟩, ⟨26, 65⟩, ⟨21, 47⟩, ⟨8, 38⟩, ⟨42, 76⟩, ⟨29, 67⟩, ⟨11, 40⟩, ⟨32, 69⟩, ⟨14, 42⟩, ⟨1, 33⟩, ⟨35, 71⟩, ⟨22, 62⟩, ⟨17, 44⟩, ⟨4, 35⟩, ⟨43, 109⟩, ⟨38, 73⟩, ⟨25, 64⟩, ⟨20, 46⟩, ⟨7, 37⟩, ⟨41, 75⟩, ⟨28, 66⟩, ⟨10, 39⟩, ⟨31, 68⟩, ⟨13, 41⟩, ⟨34, 70⟩, ⟨16, 43⟩, ⟨3, 34⟩, ⟨37, 72⟩, ⟨24, 63⟩, ⟨19, 45⟩, ⟨6, 36⟩, ⟨40, 74⟩, ⟨27, 65⟩, ⟨9, 38⟩, ⟨30, 67⟩, ⟨12, 40⟩, ⟨33, 69⟩, ⟨15, 42⟩, ⟨2, 33⟩, ⟨36, 71⟩, ⟨23, 62⟩, ⟨18, 44⟩, ⟨5, 35⟩]⟩
theorem profile1968_checked : profile1968.check := by decide +kernel

noncomputable def selection0_1968 : Selection :=
  ⟨0, 2, 2, (1439/100), 2161, -71, 116⟩
theorem selection0_1968_checked : selection0_1968.check profile1968 := by decide +kernel

noncomputable def selection1_1968 : Selection :=
  ⟨1, -6, 6, (69/5), 347, -287, 484⟩
theorem selection1_1968_checked : selection1_1968.check profile1968 := by decide +kernel

noncomputable def selection2_1968 : Selection :=
  ⟨2, -14, 10, (273/20), 136, -471, 852⟩
theorem selection2_1968_checked : selection2_1968.check profile1968 := by decide +kernel

noncomputable def profile1969 : ProfileCell :=
  ⟨(9/13), (70/101),
    [36, 34, 33, 31, 30, 29, 27, 26, 24, 23, 22, 20, 19, 18, 16, 15], [33, 33, 34, 35, 36],
    [⟨5, 36⟩, ⟨18, 45⟩, ⟨23, 63⟩, ⟨36, 72⟩, ⟨8, 38⟩, ⟨21, 47⟩, ⟨26, 65⟩, ⟨39, 74⟩, ⟨11, 40⟩, ⟨29, 67⟩, ⟨42, 76⟩, ⟨1, 33⟩, ⟨14, 42⟩, ⟨32, 69⟩, ⟨4, 35⟩, ⟨17, 44⟩, ⟨22, 62⟩, ⟨35, 71⟩, ⟨7, 37⟩, ⟨20, 46⟩, ⟨25, 64⟩, ⟨38, 73⟩, ⟨43, 109⟩, ⟨10, 39⟩, ⟨28, 66⟩, ⟨41, 75⟩, ⟨13, 41⟩, ⟨31, 68⟩, ⟨3, 34⟩, ⟨16, 43⟩, ⟨34, 70⟩, ⟨6, 36⟩, ⟨19, 45⟩, ⟨24, 63⟩, ⟨37, 72⟩, ⟨9, 38⟩, ⟨27, 65⟩, ⟨40, 74⟩, ⟨12, 40⟩, ⟨30, 67⟩, ⟨2, 33⟩, ⟨15, 42⟩, ⟨33, 69⟩]⟩
theorem profile1969_checked : profile1969.check := by decide +kernel

noncomputable def selection0_1969 : Selection :=
  ⟨0, 2, 2, (73/5), 2318, -251, 376⟩
theorem selection0_1969_checked : selection0_1969.check profile1969 := by decide +kernel

noncomputable def selection1_1969 : Selection :=
  ⟨1, -6, 6, (1397/100), 372, -467, 744⟩
theorem selection1_1969_checked : selection1_1969.check profile1969 := by decide +kernel

noncomputable def selection2_1969 : Selection :=
  ⟨2, -14, 10, (69/5), 145, -651, 1112⟩
theorem selection2_1969_checked : selection2_1969.check profile1969 := by decide +kernel

noncomputable def profile1970 : ProfileCell :=
  ⟨(70/101), (43/62),
    [36, 34, 33, 31, 30, 29, 27, 26, 24, 23, 22, 20, 19, 18, 16, 15], [33, 33, 34, 35, 36],
    [⟨33, 70⟩, ⟨5, 36⟩, ⟨18, 45⟩, ⟨23, 63⟩, ⟨36, 72⟩, ⟨8, 38⟩, ⟨21, 47⟩, ⟨26, 65⟩, ⟨39, 74⟩, ⟨11, 40⟩, ⟨29, 67⟩, ⟨42, 76⟩, ⟨1, 33⟩, ⟨14, 42⟩, ⟨32, 69⟩, ⟨4, 35⟩, ⟨17, 44⟩, ⟨22, 62⟩, ⟨35, 71⟩, ⟨7, 37⟩, ⟨20, 46⟩, ⟨25, 64⟩, ⟨38, 73⟩, ⟨10, 39⟩, ⟨43, 109⟩, ⟨28, 66⟩, ⟨41, 75⟩, ⟨13, 41⟩, ⟨31, 68⟩, ⟨3, 34⟩, ⟨16, 43⟩, ⟨34, 70⟩, ⟨6, 36⟩, ⟨19, 45⟩, ⟨24, 63⟩, ⟨37, 72⟩, ⟨9, 38⟩, ⟨27, 65⟩, ⟨40, 74⟩, ⟨12, 40⟩, ⟨30, 67⟩, ⟨2, 33⟩, ⟨15, 42⟩]⟩
theorem profile1970_checked : profile1970.check := by decide +kernel

noncomputable def selection0_1970 : Selection :=
  ⟨0, 2, 2, (73/5), 1456, 29, -28⟩
theorem selection0_1970_checked : selection0_1970.check profile1970 := by decide +kernel

noncomputable def selection1_1970 : Selection :=
  ⟨1, -6, 6, (1401/100), 235, -187, 340⟩
theorem selection1_1970_checked : selection1_1970.check profile1970 := by decide +kernel

noncomputable def selection2_1970 : Selection :=
  ⟨2, -14, 10, (1387/100), 92, -371, 708⟩
theorem selection2_1970_checked : selection2_1970.check profile1970 := by decide +kernel

noncomputable def profile1971 : ProfileCell :=
  ⟨(43/62), (34/49),
    [36, 34, 33, 31, 30, 29, 27, 26, 24, 23, 22, 20, 19, 18, 16, 15], [33, 33, 34, 35, 36],
    [⟨15, 43⟩, ⟨33, 70⟩, ⟨5, 36⟩, ⟨18, 45⟩, ⟨23, 63⟩, ⟨36, 72⟩, ⟨8, 38⟩, ⟨21, 47⟩, ⟨26, 65⟩, ⟨39, 74⟩, ⟨11, 40⟩, ⟨29, 67⟩, ⟨1, 33⟩, ⟨42, 76⟩, ⟨14, 42⟩, ⟨32, 69⟩, ⟨4, 35⟩, ⟨17, 44⟩, ⟨22, 62⟩, ⟨35, 71⟩, ⟨7, 37⟩, ⟨20, 46⟩, ⟨25, 64⟩, ⟨38, 73⟩, ⟨10, 39⟩, ⟨28, 66⟩, ⟨43, 109⟩, ⟨41, 75⟩, ⟨13, 41⟩, ⟨31, 68⟩, ⟨3, 34⟩, ⟨16, 43⟩, ⟨34, 70⟩, ⟨6, 36⟩, ⟨19, 45⟩, ⟨24, 63⟩, ⟨37, 72⟩, ⟨9, 38⟩, ⟨27, 65⟩, ⟨40, 74⟩, ⟨12, 40⟩, ⟨30, 67⟩, ⟨2, 33⟩]⟩
theorem profile1971_checked : profile1971.check := by decide +kernel

noncomputable def selection0_1971 : Selection :=
  ⟨0, 2, 2, (293/20), 1003, -186, 282⟩
theorem selection0_1971_checked : selection0_1971.check profile1971 := by decide +kernel

noncomputable def selection1_1971 : Selection :=
  ⟨1, -6, 6, (352/25), 162, -402, 650⟩
theorem selection1_1971_checked : selection1_1971.check profile1971 := by decide +kernel

noncomputable def selection2_1971 : Selection :=
  ⟨2, -14, 10, (1393/100), 64, -586, 1018⟩
theorem selection2_1971_checked : selection2_1971.check profile1971 := by decide +kernel

noncomputable def profile1972 : ProfileCell :=
  ⟨(34/49), (25/36),
    [36, 34, 33, 31, 30, 29, 27, 26, 24, 23, 22, 20, 19, 18, 16, 15], [33, 34, 34, 35, 36],
    [⟨2, 34⟩, ⟨30, 68⟩, ⟨15, 43⟩, ⟨5, 36⟩, ⟨33, 70⟩, ⟨18, 45⟩, ⟨23, 63⟩, ⟨8, 38⟩, ⟨36, 72⟩, ⟨21, 47⟩, ⟨26, 65⟩, ⟨11, 40⟩, ⟨39, 74⟩, ⟨1, 33⟩, ⟨29, 67⟩, ⟨14, 42⟩, ⟨42, 76⟩, ⟨4, 35⟩, ⟨32, 69⟩, ⟨17, 44⟩, ⟨22, 62⟩, ⟨7, 37⟩, ⟨35, 71⟩, ⟨20, 46⟩, ⟨25, 64⟩, ⟨10, 39⟩, ⟨38, 73⟩, ⟨28, 66⟩, ⟨13, 41⟩, ⟨41, 75⟩, ⟨43, 109⟩, ⟨3, 34⟩, ⟨31, 68⟩, ⟨16, 43⟩, ⟨6, 36⟩, ⟨34, 70⟩, ⟨19, 45⟩, ⟨24, 63⟩, ⟨9, 38⟩, ⟨37, 72⟩, ⟨27, 65⟩, ⟨12, 40⟩, ⟨40, 74⟩]⟩
theorem profile1972_checked : profile1972.check := by decide +kernel

noncomputable def selection0_1972 : Selection :=
  ⟨0, 4, 2, (468/25), 2203, -118, 184⟩
theorem selection0_1972_checked : selection0_1972.check profile1972 := by decide +kernel

noncomputable def selection1_1972 : Selection :=
  ⟨1, -4, 6, (1817/100), 359, -334, 552⟩
theorem selection1_1972_checked : selection1_1972.check profile1972 := by decide +kernel

noncomputable def selection2_1972 : Selection :=
  ⟨2, -12, 10, (1803/100), 141, -518, 920⟩
theorem selection2_1972_checked : selection2_1972.check profile1972 := by decide +kernel

noncomputable def profile1973 : ProfileCell :=
  ⟨(25/36), (66/95),
    [36, 34, 33, 31, 30, 29, 27, 26, 25, 23, 22, 20, 19, 18, 16, 15], [33, 34, 34, 35, 36],
    [⟨40, 75⟩, ⟨2, 34⟩, ⟨15, 43⟩, ⟨30, 68⟩, ⟨5, 36⟩, ⟨18, 45⟩, ⟨33, 70⟩, ⟨8, 38⟩, ⟨23, 63⟩, ⟨21, 47⟩, ⟨36, 72⟩, ⟨11, 40⟩, ⟨26, 65⟩, ⟨39, 74⟩, ⟨1, 33⟩, ⟨14, 42⟩, ⟨29, 67⟩, ⟨42, 76⟩, ⟨4, 35⟩, ⟨17, 44⟩, ⟨32, 69⟩, ⟨7, 37⟩, ⟨22, 62⟩, ⟨20, 46⟩, ⟨35, 71⟩, ⟨10, 39⟩, ⟨25, 64⟩, ⟨38, 73⟩, ⟨13, 41⟩, ⟨28, 66⟩, ⟨41, 75⟩, ⟨3, 34⟩, ⟨43, 109⟩, ⟨16, 43⟩, ⟨31, 68⟩, ⟨6, 36⟩, ⟨19, 45⟩, ⟨34, 70⟩, ⟨9, 38⟩, ⟨24, 63⟩, ⟨37, 72⟩, ⟨12, 40⟩, ⟨27, 65⟩]⟩
theorem profile1973_checked : profile1973.check := by decide +kernel

noncomputable def selection0_1973 : Selection :=
  ⟨0, 3, 2, (67/4), 1016, -93, 148⟩
theorem selection0_1973_checked : selection0_1973.check profile1973 := by decide +kernel

noncomputable def selection1_1973 : Selection :=
  ⟨1, -5, 6, (1621/100), 166, -309, 516⟩
theorem selection1_1973_checked : selection1_1973.check profile1973 := by decide +kernel

noncomputable def selection2_1973 : Selection :=
  ⟨2, -13, 10, (1607/100), 65, -493, 884⟩
theorem selection2_1973_checked : selection2_1973.check profile1973 := by decide +kernel

noncomputable def profile1974 : ProfileCell :=
  ⟨(66/95), (41/59),
    [36, 34, 33, 31, 30, 29, 27, 26, 25, 23, 22, 20, 19, 18, 16, 15], [33, 34, 34, 35, 36],
    [⟨27, 66⟩, ⟨40, 75⟩, ⟨2, 34⟩, ⟨15, 43⟩, ⟨30, 68⟩, ⟨5, 36⟩, ⟨18, 45⟩, ⟨33, 70⟩, ⟨8, 38⟩, ⟨23, 63⟩, ⟨21, 47⟩, ⟨36, 72⟩, ⟨11, 40⟩, ⟨26, 65⟩, ⟨39, 74⟩, ⟨1, 33⟩, ⟨14, 42⟩, ⟨29, 67⟩, ⟨42, 76⟩, ⟨4, 35⟩, ⟨17, 44⟩, ⟨32, 69⟩, ⟨7, 37⟩, ⟨22, 62⟩, ⟨20, 46⟩, ⟨35, 71⟩, ⟨10, 39⟩, ⟨25, 64⟩, ⟨38, 73⟩, ⟨13, 41⟩, ⟨28, 66⟩, ⟨41, 75⟩, ⟨3, 34⟩, ⟨16, 43⟩, ⟨43, 109⟩, ⟨31, 68⟩, ⟨6, 36⟩, ⟨19, 45⟩, ⟨34, 70⟩, ⟨9, 38⟩, ⟨24, 63⟩, ⟨37, 72⟩, ⟨12, 40⟩]⟩
theorem profile1974_checked : profile1974.check := by decide +kernel

noncomputable def selection0_1974 : Selection :=
  ⟨0, 3, 2, (67/4), 619, 303, -422⟩
theorem selection0_1974_checked : selection0_1974.check profile1974 := by decide +kernel

noncomputable def selection1_1974 : Selection :=
  ⟨1, -5, 6, (1621/100), 101, 87, -54⟩
theorem selection1_1974_checked : selection1_1974.check profile1974 := by decide +kernel

noncomputable def selection2_1974 : Selection :=
  ⟨2, -13, 10, (402/25), 40, -97, 314⟩
theorem selection2_1974_checked : selection2_1974.check profile1974 := by decide +kernel

noncomputable def profile1975 : ProfileCell :=
  ⟨(41/59), (73/105),
    [36, 34, 33, 31, 30, 29, 27, 26, 25, 23, 22, 20, 19, 18, 16, 15], [33, 34, 34, 35, 36],
    [⟨12, 41⟩, ⟨27, 66⟩, ⟨2, 34⟩, ⟨40, 75⟩, ⟨15, 43⟩, ⟨30, 68⟩, ⟨5, 36⟩, ⟨18, 45⟩, ⟨33, 70⟩, ⟨8, 38⟩, ⟨23, 63⟩, ⟨21, 47⟩, ⟨36, 72⟩, ⟨11, 40⟩, ⟨26, 65⟩, ⟨1, 33⟩, ⟨39, 74⟩, ⟨14, 42⟩, ⟨29, 67⟩, ⟨4, 35⟩, ⟨42, 76⟩, ⟨17, 44⟩, ⟨32, 69⟩, ⟨7, 37⟩, ⟨22, 62⟩, ⟨20, 46⟩, ⟨35, 71⟩, ⟨10, 39⟩, ⟨25, 64⟩, ⟨38, 73⟩, ⟨13, 41⟩, ⟨28, 66⟩, ⟨3, 34⟩, ⟨41, 75⟩, ⟨16, 43⟩, ⟨31, 68⟩, ⟨43, 109⟩, ⟨6, 36⟩, ⟨19, 45⟩, ⟨34, 70⟩, ⟨9, 38⟩, ⟨24, 63⟩, ⟨37, 72⟩]⟩
theorem profile1975_checked : profile1975.check := by decide +kernel

noncomputable def selection0_1975 : Selection :=
  ⟨0, 3, 2, (1671/100), 1117, -25, 50⟩
theorem selection0_1975_checked : selection0_1975.check profile1975 := by decide +kernel

noncomputable def selection1_1975 : Selection :=
  ⟨1, -5, 6, (65/4), 183, -241, 418⟩
theorem selection1_1975_checked : selection1_1975.check profile1975 := by decide +kernel

noncomputable def selection2_1975 : Selection :=
  ⟨2, -13, 10, (1613/100), 72, -425, 786⟩
theorem selection2_1975_checked : selection2_1975.check profile1975 := by decide +kernel

noncomputable def profile1976 : ProfileCell :=
  ⟨(73/105), (16/23),
    [36, 34, 33, 31, 30, 29, 27, 26, 25, 23, 22, 20, 19, 18, 16, 15], [33, 34, 34, 35, 36],
    [⟨37, 73⟩, ⟨12, 41⟩, ⟨27, 66⟩, ⟨2, 34⟩, ⟨40, 75⟩, ⟨15, 43⟩, ⟨30, 68⟩, ⟨5, 36⟩, ⟨18, 45⟩, ⟨33, 70⟩, ⟨8, 38⟩, ⟨23, 63⟩, ⟨21, 47⟩, ⟨36, 72⟩, ⟨11, 40⟩, ⟨26, 65⟩, ⟨1, 33⟩, ⟨39, 74⟩, ⟨14, 42⟩, ⟨29, 67⟩, ⟨4, 35⟩, ⟨42, 76⟩, ⟨17, 44⟩, ⟨32, 69⟩, ⟨7, 37⟩, ⟨22, 62⟩, ⟨20, 46⟩, ⟨35, 71⟩, ⟨10, 39⟩, ⟨25, 64⟩, ⟨38, 73⟩, ⟨13, 41⟩, ⟨28, 66⟩, ⟨3, 34⟩, ⟨41, 75⟩, ⟨16, 43⟩, ⟨31, 68⟩, ⟨6, 36⟩, ⟨43, 109⟩, ⟨19, 45⟩, ⟨34, 70⟩, ⟨9, 38⟩, ⟨24, 63⟩]⟩
theorem profile1976_checked : profile1976.check := by decide +kernel

noncomputable def selection0_1976 : Selection :=
  ⟨0, 3, 2, (1671/100), 1431, 413, -580⟩
theorem selection0_1976_checked : selection0_1976.check profile1976 := by decide +kernel

noncomputable def selection1_1976 : Selection :=
  ⟨1, -5, 6, (65/4), 235, 197, -212⟩
theorem selection1_1976_checked : selection1_1976.check profile1976 := by decide +kernel

noncomputable def selection2_1976 : Selection :=
  ⟨2, -13, 10, (807/50), 92, 13, 156⟩
theorem selection2_1976_checked : selection2_1976.check profile1976 := by decide +kernel

noncomputable def profile1977 : ProfileCell :=
  ⟨(16/23), (71/102),
    [36, 34, 33, 32, 30, 29, 27, 26, 25, 23, 22, 20, 19, 18, 16, 15], [33, 34, 34, 35, 36],
    [⟨24, 64⟩, ⟨12, 41⟩, ⟨37, 73⟩, ⟨2, 34⟩, ⟨27, 66⟩, ⟨15, 43⟩, ⟨40, 75⟩, ⟨5, 36⟩, ⟨30, 68⟩, ⟨18, 45⟩, ⟨8, 38⟩, ⟨33, 70⟩, ⟨21, 47⟩, ⟨23, 63⟩, ⟨11, 40⟩, ⟨36, 72⟩, ⟨1, 33⟩, ⟨26, 65⟩, ⟨14, 42⟩, ⟨39, 74⟩, ⟨4, 35⟩, ⟨29, 67⟩, ⟨17, 44⟩, ⟨42, 76⟩, ⟨7, 37⟩, ⟨32, 69⟩, ⟨20, 46⟩, ⟨22, 62⟩, ⟨10, 39⟩, ⟨35, 71⟩, ⟨25, 64⟩, ⟨13, 41⟩, ⟨38, 73⟩, ⟨3, 34⟩, ⟨28, 66⟩, ⟨16, 43⟩, ⟨41, 75⟩, ⟨6, 36⟩, ⟨31, 68⟩, ⟨19, 45⟩, ⟨43, 109⟩, ⟨9, 38⟩, ⟨34, 70⟩]⟩
theorem profile1977_checked : profile1977.check := by decide +kernel

noncomputable def selection0_1977 : Selection :=
  ⟨0, 2, 2, (727/50), 1280, 381, -534⟩
theorem selection0_1977_checked : selection0_1977.check profile1977 := by decide +kernel

noncomputable def selection1_1977 : Selection :=
  ⟨1, -6, 6, (711/50), 211, 165, -166⟩
theorem selection1_1977_checked : selection1_1977.check profile1977 := by decide +kernel

noncomputable def selection2_1977 : Selection :=
  ⟨2, -14, 10, (354/25), 84, -19, 202⟩
theorem selection2_1977_checked : selection2_1977.check profile1977 := by decide +kernel

noncomputable def profile1978 : ProfileCell :=
  ⟨(71/102), (55/79),
    [36, 34, 33, 32, 30, 29, 27, 26, 25, 23, 22, 20, 19, 18, 16, 15], [33, 34, 34, 35, 36],
    [⟨34, 71⟩, ⟨24, 64⟩, ⟨12, 41⟩, ⟨37, 73⟩, ⟨2, 34⟩, ⟨27, 66⟩, ⟨15, 43⟩, ⟨40, 75⟩, ⟨5, 36⟩, ⟨30, 68⟩, ⟨18, 45⟩, ⟨8, 38⟩, ⟨33, 70⟩, ⟨21, 47⟩, ⟨23, 63⟩, ⟨11, 40⟩, ⟨36, 72⟩, ⟨1, 33⟩, ⟨26, 65⟩, ⟨14, 42⟩, ⟨39, 74⟩, ⟨4, 35⟩, ⟨29, 67⟩, ⟨17, 44⟩, ⟨42, 76⟩, ⟨7, 37⟩, ⟨32, 69⟩, ⟨20, 46⟩, ⟨22, 62⟩, ⟨10, 39⟩, ⟨35, 71⟩, ⟨25, 64⟩, ⟨13, 41⟩, ⟨38, 73⟩, ⟨3, 34⟩, ⟨28, 66⟩, ⟨16, 43⟩, ⟨41, 75⟩, ⟨6, 36⟩, ⟨31, 68⟩, ⟨19, 45⟩, ⟨9, 38⟩, ⟨43, 109⟩]⟩
theorem profile1978_checked : profile1978.check := by decide +kernel

noncomputable def selection0_1978 : Selection :=
  ⟨0, 3, 2, (359/25), 368, 768, -1094⟩
theorem selection0_1978_checked : selection0_1978.check profile1978 := by decide +kernel

noncomputable def selection1_1978 : Selection :=
  ⟨1, -5, 6, (71/5), 62, 548, -726⟩
theorem selection1_1978_checked : selection1_1978.check profile1978 := by decide +kernel

noncomputable def selection2_1978 : Selection :=
  ⟨2, -13, 10, (283/20), 25, 360, -358⟩
theorem selection2_1978_checked : selection2_1978.check profile1978 := by decide +kernel

noncomputable def profile1979 : ProfileCell :=
  ⟨(55/79), (39/56),
    [36, 34, 33, 32, 30, 29, 27, 26, 25, 23, 22, 20, 19, 18, 16, 15], [33, 34, 34, 35, 36],
    [⟨43, 110⟩, ⟨34, 71⟩, ⟨24, 64⟩, ⟨12, 41⟩, ⟨37, 73⟩, ⟨2, 34⟩, ⟨27, 66⟩, ⟨15, 43⟩, ⟨40, 75⟩, ⟨5, 36⟩, ⟨30, 68⟩, ⟨18, 45⟩, ⟨8, 38⟩, ⟨33, 70⟩, ⟨21, 47⟩, ⟨23, 63⟩, ⟨11, 40⟩, ⟨36, 72⟩, ⟨1, 33⟩, ⟨26, 65⟩, ⟨14, 42⟩, ⟨39, 74⟩, ⟨4, 35⟩, ⟨29, 67⟩, ⟨17, 44⟩, ⟨42, 76⟩, ⟨7, 37⟩, ⟨32, 69⟩, ⟨20, 46⟩, ⟨22, 62⟩, ⟨10, 39⟩, ⟨35, 71⟩, ⟨25, 64⟩, ⟨13, 41⟩, ⟨38, 73⟩, ⟨3, 34⟩, ⟨28, 66⟩, ⟨16, 43⟩, ⟨41, 75⟩, ⟨6, 36⟩, ⟨31, 68⟩, ⟨19, 45⟩, ⟨9, 38⟩]⟩
theorem profile1979_checked : profile1979.check := by decide +kernel

noncomputable def selection0_1979 : Selection :=
  ⟨0, 3, 2, (1439/100), 671, -552, 802⟩
theorem selection0_1979_checked : selection0_1979.check profile1979 := by decide +kernel

noncomputable def selection1_1979 : Selection :=
  ⟨1, -5, 6, (57/4), 112, -772, 1170⟩
theorem selection1_1979_checked : selection1_1979.check profile1979 := by decide +kernel

noncomputable def selection2_1979 : Selection :=
  ⟨2, -13, 10, (1421/100), 45, -960, 1538⟩
theorem selection2_1979_checked : selection2_1979.check profile1979 := by decide +kernel

noncomputable def profile1980 : ProfileCell :=
  ⟨(39/56), (23/33),
    [36, 34, 33, 32, 30, 29, 27, 26, 25, 23, 22, 20, 19, 18, 16, 15], [33, 34, 34, 35, 36],
    [⟨9, 39⟩, ⟨34, 71⟩, ⟨43, 110⟩, ⟨24, 64⟩, ⟨12, 41⟩, ⟨2, 34⟩, ⟨37, 73⟩, ⟨27, 66⟩, ⟨15, 43⟩, ⟨5, 36⟩, ⟨40, 75⟩, ⟨30, 68⟩, ⟨18, 45⟩, ⟨8, 38⟩, ⟨33, 70⟩, ⟨21, 47⟩, ⟨23, 63⟩, ⟨11, 40⟩, ⟨1, 33⟩, ⟨36, 72⟩, ⟨26, 65⟩, ⟨14, 42⟩, ⟨4, 35⟩, ⟨39, 74⟩, ⟨29, 67⟩, ⟨17, 44⟩, ⟨7, 37⟩, ⟨42, 76⟩, ⟨32, 69⟩, ⟨20, 46⟩, ⟨22, 62⟩, ⟨10, 39⟩, ⟨35, 71⟩, ⟨25, 64⟩, ⟨13, 41⟩, ⟨3, 34⟩, ⟨38, 73⟩, ⟨28, 66⟩, ⟨16, 43⟩, ⟨6, 36⟩, ⟨41, 75⟩, ⟨31, 68⟩, ⟨19, 45⟩]⟩
theorem profile1980_checked : profile1980.check := by decide +kernel

noncomputable def selection0_1980 : Selection :=
  ⟨0, 3, 2, (373/25), 1664, -942, 1362⟩
theorem selection0_1980_checked : selection0_1980.check profile1980 := by decide +kernel

noncomputable def selection1_1980 : Selection :=
  ⟨1, -5, 6, (363/25), 273, -1162, 1730⟩
theorem selection1_1980_checked : selection1_1980.check profile1980 := by decide +kernel

noncomputable def selection2_1980 : Selection :=
  ⟨2, -13, 10, (721/50), 108, -1350, 2098⟩
theorem selection2_1980_checked : selection2_1980.check profile1980 := by decide +kernel

noncomputable def profile1981 : ProfileCell :=
  ⟨(23/33), (76/109),
    [36, 34, 33, 32, 30, 29, 27, 26, 25, 23, 22, 20, 19, 18, 16, 15], [33, 34, 34, 35, 36],
    [⟨19, 46⟩, ⟨31, 69⟩, ⟨9, 39⟩, ⟨34, 71⟩, ⟨12, 41⟩, ⟨24, 64⟩, ⟨43, 110⟩, ⟨2, 34⟩, ⟨37, 73⟩, ⟨15, 43⟩, ⟨27, 66⟩, ⟨5, 36⟩, ⟨40, 75⟩, ⟨18, 45⟩, ⟨30, 68⟩, ⟨8, 38⟩, ⟨21, 47⟩, ⟨33, 70⟩, ⟨11, 40⟩, ⟨23, 63⟩, ⟨1, 33⟩, ⟨36, 72⟩, ⟨14, 42⟩, ⟨26, 65⟩, ⟨4, 35⟩, ⟨39, 74⟩, ⟨17, 44⟩, ⟨29, 67⟩, ⟨7, 37⟩, ⟨42, 76⟩, ⟨20, 46⟩, ⟨32, 69⟩, ⟨10, 39⟩, ⟨22, 62⟩, ⟨35, 71⟩, ⟨13, 41⟩, ⟨25, 64⟩, ⟨3, 34⟩, ⟨38, 73⟩, ⟨16, 43⟩, ⟨28, 66⟩, ⟨6, 36⟩, ⟨41, 75⟩]⟩
theorem profile1981_checked : profile1981.check := by decide +kernel

noncomputable def selection0_1981 : Selection :=
  ⟨0, 3, 2, (1519/100), 869, -942, 1362⟩
theorem selection0_1981_checked : selection0_1981.check profile1981 := by decide +kernel

noncomputable def selection1_1981 : Selection :=
  ⟨1, -5, 6, (733/50), 142, -1162, 1730⟩
theorem selection1_1981_checked : selection1_1981.check profile1981 := by decide +kernel

noncomputable def selection2_1981 : Selection :=
  ⟨2, -13, 10, (1453/100), 56, -1350, 2098⟩
theorem selection2_1981_checked : selection2_1981.check profile1981 := by decide +kernel

noncomputable def profile1982 : ProfileCell :=
  ⟨(76/109), (30/43),
    [36, 34, 33, 32, 30, 29, 27, 26, 25, 23, 22, 20, 19, 18, 16, 15], [33, 34, 34, 35, 36],
    [⟨41, 76⟩, ⟨19, 46⟩, ⟨31, 69⟩, ⟨9, 39⟩, ⟨34, 71⟩, ⟨12, 41⟩, ⟨24, 64⟩, ⟨2, 34⟩, ⟨43, 110⟩, ⟨37, 73⟩, ⟨15, 43⟩, ⟨27, 66⟩, ⟨5, 36⟩, ⟨40, 75⟩, ⟨18, 45⟩, ⟨30, 68⟩, ⟨8, 38⟩, ⟨21, 47⟩, ⟨33, 70⟩, ⟨11, 40⟩, ⟨23, 63⟩, ⟨1, 33⟩, ⟨36, 72⟩, ⟨14, 42⟩, ⟨26, 65⟩, ⟨4, 35⟩, ⟨39, 74⟩, ⟨17, 44⟩, ⟨29, 67⟩, ⟨7, 37⟩, ⟨42, 76⟩, ⟨20, 46⟩, ⟨32, 69⟩, ⟨10, 39⟩, ⟨22, 62⟩, ⟨35, 71⟩, ⟨13, 41⟩, ⟨25, 64⟩, ⟨3, 34⟩, ⟨38, 73⟩, ⟨16, 43⟩, ⟨28, 66⟩, ⟨6, 36⟩]⟩
theorem profile1982_checked : profile1982.check := by decide +kernel

noncomputable def selection0_1982 : Selection :=
  ⟨0, 3, 2, (77/5), 1351, -486, 708⟩
theorem selection0_1982_checked : selection0_1982.check profile1982 := by decide +kernel

noncomputable def selection1_1982 : Selection :=
  ⟨1, -5, 6, (74/5), 220, -706, 1076⟩
theorem selection1_1982_checked : selection1_1982.check profile1982 := by decide +kernel

noncomputable def selection2_1982 : Selection :=
  ⟨2, -13, 10, (366/25), 86, -894, 1444⟩
theorem selection2_1982_checked : selection2_1982.check profile1982 := by decide +kernel

noncomputable def profile1983 : ProfileCell :=
  ⟨(30/43), (67/96),
    [36, 34, 33, 32, 30, 29, 27, 26, 25, 23, 22, 20, 19, 18, 16, 15], [33, 34, 34, 35, 36],
    [⟨19, 46⟩, ⟨41, 76⟩, ⟨9, 39⟩, ⟨31, 69⟩, ⟨12, 41⟩, ⟨34, 71⟩, ⟨2, 34⟩, ⟨24, 64⟩, ⟨43, 110⟩, ⟨15, 43⟩, ⟨37, 73⟩, ⟨5, 36⟩, ⟨27, 66⟩, ⟨18, 45⟩, ⟨40, 75⟩, ⟨8, 38⟩, ⟨30, 68⟩, ⟨21, 47⟩, ⟨11, 40⟩, ⟨33, 70⟩, ⟨1, 33⟩, ⟨23, 63⟩, ⟨14, 42⟩, ⟨36, 72⟩, ⟨4, 35⟩, ⟨26, 65⟩, ⟨17, 44⟩, ⟨39, 74⟩, ⟨7, 37⟩, ⟨29, 67⟩, ⟨20, 46⟩, ⟨42, 76⟩, ⟨10, 39⟩, ⟨32, 69⟩, ⟨22, 62⟩, ⟨13, 41⟩, ⟨35, 71⟩, ⟨3, 34⟩, ⟨25, 64⟩, ⟨16, 43⟩, ⟨38, 73⟩, ⟨6, 36⟩, ⟨28, 66⟩]⟩
theorem profile1983_checked : profile1983.check := by decide +kernel

noncomputable def selection0_1983 : Selection :=
  ⟨0, 3, 2, (781/50), 778, -846, 1224⟩
theorem selection0_1983_checked : selection0_1983.check profile1983 := by decide +kernel

noncomputable def selection1_1983 : Selection :=
  ⟨1, -5, 6, (1491/100), 126, -1066, 1592⟩
theorem selection1_1983_checked : selection1_1983.check profile1983 := by decide +kernel

noncomputable def selection2_1983 : Selection :=
  ⟨2, -13, 10, (1473/100), 50, -1254, 1960⟩
theorem selection2_1983_checked : selection2_1983.check profile1983 := by decide +kernel

noncomputable def leaf0_1920 : Block :=
  Block.single profile1920 selection0_1920 profile1920_checked selection0_1920_checked
noncomputable def leaf0_1921 : Block :=
  Block.single profile1921 selection0_1921 profile1921_checked selection0_1921_checked
noncomputable def leaf0_1922 : Block :=
  Block.single profile1922 selection0_1922 profile1922_checked selection0_1922_checked
noncomputable def leaf0_1923 : Block :=
  Block.single profile1923 selection0_1923 profile1923_checked selection0_1923_checked
noncomputable def leaf0_1924 : Block :=
  Block.single profile1924 selection0_1924 profile1924_checked selection0_1924_checked
noncomputable def leaf0_1925 : Block :=
  Block.single profile1925 selection0_1925 profile1925_checked selection0_1925_checked
noncomputable def leaf0_1926 : Block :=
  Block.single profile1926 selection0_1926 profile1926_checked selection0_1926_checked
noncomputable def leaf0_1927 : Block :=
  Block.single profile1927 selection0_1927 profile1927_checked selection0_1927_checked
noncomputable def leaf0_1928 : Block :=
  Block.single profile1928 selection0_1928 profile1928_checked selection0_1928_checked
noncomputable def leaf0_1929 : Block :=
  Block.single profile1929 selection0_1929 profile1929_checked selection0_1929_checked
noncomputable def leaf0_1930 : Block :=
  Block.single profile1930 selection0_1930 profile1930_checked selection0_1930_checked
noncomputable def leaf0_1931 : Block :=
  Block.single profile1931 selection0_1931 profile1931_checked selection0_1931_checked
noncomputable def leaf0_1932 : Block :=
  Block.single profile1932 selection0_1932 profile1932_checked selection0_1932_checked
noncomputable def leaf0_1933 : Block :=
  Block.single profile1933 selection0_1933 profile1933_checked selection0_1933_checked
noncomputable def leaf0_1934 : Block :=
  Block.single profile1934 selection0_1934 profile1934_checked selection0_1934_checked
noncomputable def leaf0_1935 : Block :=
  Block.single profile1935 selection0_1935 profile1935_checked selection0_1935_checked
noncomputable def leaf0_1936 : Block :=
  Block.single profile1936 selection0_1936 profile1936_checked selection0_1936_checked
noncomputable def leaf0_1937 : Block :=
  Block.single profile1937 selection0_1937 profile1937_checked selection0_1937_checked
noncomputable def leaf0_1938 : Block :=
  Block.single profile1938 selection0_1938 profile1938_checked selection0_1938_checked
noncomputable def leaf0_1939 : Block :=
  Block.single profile1939 selection0_1939 profile1939_checked selection0_1939_checked
noncomputable def leaf0_1940 : Block :=
  Block.single profile1940 selection0_1940 profile1940_checked selection0_1940_checked
noncomputable def leaf0_1941 : Block :=
  Block.single profile1941 selection0_1941 profile1941_checked selection0_1941_checked
noncomputable def leaf0_1942 : Block :=
  Block.single profile1942 selection0_1942 profile1942_checked selection0_1942_checked
noncomputable def leaf0_1943 : Block :=
  Block.single profile1943 selection0_1943 profile1943_checked selection0_1943_checked
noncomputable def leaf0_1944 : Block :=
  Block.single profile1944 selection0_1944 profile1944_checked selection0_1944_checked
noncomputable def leaf0_1945 : Block :=
  Block.single profile1945 selection0_1945 profile1945_checked selection0_1945_checked
noncomputable def leaf0_1946 : Block :=
  Block.single profile1946 selection0_1946 profile1946_checked selection0_1946_checked
noncomputable def leaf0_1947 : Block :=
  Block.single profile1947 selection0_1947 profile1947_checked selection0_1947_checked
noncomputable def leaf0_1948 : Block :=
  Block.single profile1948 selection0_1948 profile1948_checked selection0_1948_checked
noncomputable def leaf0_1949 : Block :=
  Block.single profile1949 selection0_1949 profile1949_checked selection0_1949_checked
noncomputable def leaf0_1950 : Block :=
  Block.single profile1950 selection0_1950 profile1950_checked selection0_1950_checked
noncomputable def leaf0_1951 : Block :=
  Block.single profile1951 selection0_1951 profile1951_checked selection0_1951_checked
noncomputable def leaf0_1952 : Block :=
  Block.single profile1952 selection0_1952 profile1952_checked selection0_1952_checked
noncomputable def leaf0_1953 : Block :=
  Block.single profile1953 selection0_1953 profile1953_checked selection0_1953_checked
noncomputable def leaf0_1954 : Block :=
  Block.single profile1954 selection0_1954 profile1954_checked selection0_1954_checked
noncomputable def leaf0_1955 : Block :=
  Block.single profile1955 selection0_1955 profile1955_checked selection0_1955_checked
noncomputable def leaf0_1956 : Block :=
  Block.single profile1956 selection0_1956 profile1956_checked selection0_1956_checked
noncomputable def leaf0_1957 : Block :=
  Block.single profile1957 selection0_1957 profile1957_checked selection0_1957_checked
noncomputable def leaf0_1958 : Block :=
  Block.single profile1958 selection0_1958 profile1958_checked selection0_1958_checked
noncomputable def leaf0_1959 : Block :=
  Block.single profile1959 selection0_1959 profile1959_checked selection0_1959_checked
noncomputable def leaf0_1960 : Block :=
  Block.single profile1960 selection0_1960 profile1960_checked selection0_1960_checked
noncomputable def leaf0_1961 : Block :=
  Block.single profile1961 selection0_1961 profile1961_checked selection0_1961_checked
noncomputable def leaf0_1962 : Block :=
  Block.single profile1962 selection0_1962 profile1962_checked selection0_1962_checked
noncomputable def leaf0_1963 : Block :=
  Block.single profile1963 selection0_1963 profile1963_checked selection0_1963_checked
noncomputable def leaf0_1964 : Block :=
  Block.single profile1964 selection0_1964 profile1964_checked selection0_1964_checked
noncomputable def leaf0_1965 : Block :=
  Block.single profile1965 selection0_1965 profile1965_checked selection0_1965_checked
noncomputable def leaf0_1966 : Block :=
  Block.single profile1966 selection0_1966 profile1966_checked selection0_1966_checked
noncomputable def leaf0_1967 : Block :=
  Block.single profile1967 selection0_1967 profile1967_checked selection0_1967_checked
noncomputable def leaf0_1968 : Block :=
  Block.single profile1968 selection0_1968 profile1968_checked selection0_1968_checked
noncomputable def leaf0_1969 : Block :=
  Block.single profile1969 selection0_1969 profile1969_checked selection0_1969_checked
noncomputable def leaf0_1970 : Block :=
  Block.single profile1970 selection0_1970 profile1970_checked selection0_1970_checked
noncomputable def leaf0_1971 : Block :=
  Block.single profile1971 selection0_1971 profile1971_checked selection0_1971_checked
noncomputable def leaf0_1972 : Block :=
  Block.single profile1972 selection0_1972 profile1972_checked selection0_1972_checked
noncomputable def leaf0_1973 : Block :=
  Block.single profile1973 selection0_1973 profile1973_checked selection0_1973_checked
noncomputable def leaf0_1974 : Block :=
  Block.single profile1974 selection0_1974 profile1974_checked selection0_1974_checked
noncomputable def leaf0_1975 : Block :=
  Block.single profile1975 selection0_1975 profile1975_checked selection0_1975_checked
noncomputable def leaf0_1976 : Block :=
  Block.single profile1976 selection0_1976 profile1976_checked selection0_1976_checked
noncomputable def leaf0_1977 : Block :=
  Block.single profile1977 selection0_1977 profile1977_checked selection0_1977_checked
noncomputable def leaf0_1978 : Block :=
  Block.single profile1978 selection0_1978 profile1978_checked selection0_1978_checked
noncomputable def leaf0_1979 : Block :=
  Block.single profile1979 selection0_1979 profile1979_checked selection0_1979_checked
noncomputable def leaf0_1980 : Block :=
  Block.single profile1980 selection0_1980 profile1980_checked selection0_1980_checked
noncomputable def leaf0_1981 : Block :=
  Block.single profile1981 selection0_1981 profile1981_checked selection0_1981_checked
noncomputable def leaf0_1982 : Block :=
  Block.single profile1982 selection0_1982 profile1982_checked selection0_1982_checked
noncomputable def leaf0_1983 : Block :=
  Block.single profile1983 selection0_1983 profile1983_checked selection0_1983_checked
noncomputable def batch030p0_0_0000 : Block :=
  Block.append leaf0_1920 leaf0_1921 (by decide +kernel)
noncomputable def batch030p0_0_0001 : Block :=
  Block.append leaf0_1922 leaf0_1923 (by decide +kernel)
noncomputable def batch030p0_0_0002 : Block :=
  Block.append leaf0_1924 leaf0_1925 (by decide +kernel)
noncomputable def batch030p0_0_0003 : Block :=
  Block.append leaf0_1926 leaf0_1927 (by decide +kernel)
noncomputable def batch030p0_0_0004 : Block :=
  Block.append leaf0_1928 leaf0_1929 (by decide +kernel)
noncomputable def batch030p0_0_0005 : Block :=
  Block.append leaf0_1930 leaf0_1931 (by decide +kernel)
noncomputable def batch030p0_0_0006 : Block :=
  Block.append leaf0_1932 leaf0_1933 (by decide +kernel)
noncomputable def batch030p0_0_0007 : Block :=
  Block.append leaf0_1934 leaf0_1935 (by decide +kernel)
noncomputable def batch030p0_0_0008 : Block :=
  Block.append leaf0_1936 leaf0_1937 (by decide +kernel)
noncomputable def batch030p0_0_0009 : Block :=
  Block.append leaf0_1938 leaf0_1939 (by decide +kernel)
noncomputable def batch030p0_0_0010 : Block :=
  Block.append leaf0_1940 leaf0_1941 (by decide +kernel)
noncomputable def batch030p0_0_0011 : Block :=
  Block.append leaf0_1942 leaf0_1943 (by decide +kernel)
noncomputable def batch030p0_0_0012 : Block :=
  Block.append leaf0_1944 leaf0_1945 (by decide +kernel)
noncomputable def batch030p0_0_0013 : Block :=
  Block.append leaf0_1946 leaf0_1947 (by decide +kernel)
noncomputable def batch030p0_0_0014 : Block :=
  Block.append leaf0_1948 leaf0_1949 (by decide +kernel)
noncomputable def batch030p0_0_0015 : Block :=
  Block.append leaf0_1950 leaf0_1951 (by decide +kernel)
noncomputable def batch030p0_0_0016 : Block :=
  Block.append leaf0_1952 leaf0_1953 (by decide +kernel)
noncomputable def batch030p0_0_0017 : Block :=
  Block.append leaf0_1954 leaf0_1955 (by decide +kernel)
noncomputable def batch030p0_0_0018 : Block :=
  Block.append leaf0_1956 leaf0_1957 (by decide +kernel)
noncomputable def batch030p0_0_0019 : Block :=
  Block.append leaf0_1958 leaf0_1959 (by decide +kernel)
noncomputable def batch030p0_0_0020 : Block :=
  Block.append leaf0_1960 leaf0_1961 (by decide +kernel)
noncomputable def batch030p0_0_0021 : Block :=
  Block.append leaf0_1962 leaf0_1963 (by decide +kernel)
noncomputable def batch030p0_0_0022 : Block :=
  Block.append leaf0_1964 leaf0_1965 (by decide +kernel)
noncomputable def batch030p0_0_0023 : Block :=
  Block.append leaf0_1966 leaf0_1967 (by decide +kernel)
noncomputable def batch030p0_0_0024 : Block :=
  Block.append leaf0_1968 leaf0_1969 (by decide +kernel)
noncomputable def batch030p0_0_0025 : Block :=
  Block.append leaf0_1970 leaf0_1971 (by decide +kernel)
noncomputable def batch030p0_0_0026 : Block :=
  Block.append leaf0_1972 leaf0_1973 (by decide +kernel)
noncomputable def batch030p0_0_0027 : Block :=
  Block.append leaf0_1974 leaf0_1975 (by decide +kernel)
noncomputable def batch030p0_0_0028 : Block :=
  Block.append leaf0_1976 leaf0_1977 (by decide +kernel)
noncomputable def batch030p0_0_0029 : Block :=
  Block.append leaf0_1978 leaf0_1979 (by decide +kernel)
noncomputable def batch030p0_0_0030 : Block :=
  Block.append leaf0_1980 leaf0_1981 (by decide +kernel)
noncomputable def batch030p0_0_0031 : Block :=
  Block.append leaf0_1982 leaf0_1983 (by decide +kernel)
noncomputable def batch030p0_1_0000 : Block :=
  Block.append batch030p0_0_0000 batch030p0_0_0001 (by decide +kernel)
noncomputable def batch030p0_1_0001 : Block :=
  Block.append batch030p0_0_0002 batch030p0_0_0003 (by decide +kernel)
noncomputable def batch030p0_1_0002 : Block :=
  Block.append batch030p0_0_0004 batch030p0_0_0005 (by decide +kernel)
noncomputable def batch030p0_1_0003 : Block :=
  Block.append batch030p0_0_0006 batch030p0_0_0007 (by decide +kernel)
noncomputable def batch030p0_1_0004 : Block :=
  Block.append batch030p0_0_0008 batch030p0_0_0009 (by decide +kernel)
noncomputable def batch030p0_1_0005 : Block :=
  Block.append batch030p0_0_0010 batch030p0_0_0011 (by decide +kernel)
noncomputable def batch030p0_1_0006 : Block :=
  Block.append batch030p0_0_0012 batch030p0_0_0013 (by decide +kernel)
noncomputable def batch030p0_1_0007 : Block :=
  Block.append batch030p0_0_0014 batch030p0_0_0015 (by decide +kernel)
noncomputable def batch030p0_1_0008 : Block :=
  Block.append batch030p0_0_0016 batch030p0_0_0017 (by decide +kernel)
noncomputable def batch030p0_1_0009 : Block :=
  Block.append batch030p0_0_0018 batch030p0_0_0019 (by decide +kernel)
noncomputable def batch030p0_1_0010 : Block :=
  Block.append batch030p0_0_0020 batch030p0_0_0021 (by decide +kernel)
noncomputable def batch030p0_1_0011 : Block :=
  Block.append batch030p0_0_0022 batch030p0_0_0023 (by decide +kernel)
noncomputable def batch030p0_1_0012 : Block :=
  Block.append batch030p0_0_0024 batch030p0_0_0025 (by decide +kernel)
noncomputable def batch030p0_1_0013 : Block :=
  Block.append batch030p0_0_0026 batch030p0_0_0027 (by decide +kernel)
noncomputable def batch030p0_1_0014 : Block :=
  Block.append batch030p0_0_0028 batch030p0_0_0029 (by decide +kernel)
noncomputable def batch030p0_1_0015 : Block :=
  Block.append batch030p0_0_0030 batch030p0_0_0031 (by decide +kernel)
noncomputable def batch030p0_2_0000 : Block :=
  Block.append batch030p0_1_0000 batch030p0_1_0001 (by decide +kernel)
noncomputable def batch030p0_2_0001 : Block :=
  Block.append batch030p0_1_0002 batch030p0_1_0003 (by decide +kernel)
noncomputable def batch030p0_2_0002 : Block :=
  Block.append batch030p0_1_0004 batch030p0_1_0005 (by decide +kernel)
noncomputable def batch030p0_2_0003 : Block :=
  Block.append batch030p0_1_0006 batch030p0_1_0007 (by decide +kernel)
noncomputable def batch030p0_2_0004 : Block :=
  Block.append batch030p0_1_0008 batch030p0_1_0009 (by decide +kernel)
noncomputable def batch030p0_2_0005 : Block :=
  Block.append batch030p0_1_0010 batch030p0_1_0011 (by decide +kernel)
noncomputable def batch030p0_2_0006 : Block :=
  Block.append batch030p0_1_0012 batch030p0_1_0013 (by decide +kernel)
noncomputable def batch030p0_2_0007 : Block :=
  Block.append batch030p0_1_0014 batch030p0_1_0015 (by decide +kernel)
noncomputable def batch030p0_3_0000 : Block :=
  Block.append batch030p0_2_0000 batch030p0_2_0001 (by decide +kernel)
noncomputable def batch030p0_3_0001 : Block :=
  Block.append batch030p0_2_0002 batch030p0_2_0003 (by decide +kernel)
noncomputable def batch030p0_3_0002 : Block :=
  Block.append batch030p0_2_0004 batch030p0_2_0005 (by decide +kernel)
noncomputable def batch030p0_3_0003 : Block :=
  Block.append batch030p0_2_0006 batch030p0_2_0007 (by decide +kernel)
noncomputable def batch030p0_4_0000 : Block :=
  Block.append batch030p0_3_0000 batch030p0_3_0001 (by decide +kernel)
noncomputable def batch030p0_4_0001 : Block :=
  Block.append batch030p0_3_0002 batch030p0_3_0003 (by decide +kernel)
noncomputable def batch030p0_5_0000 : Block :=
  Block.append batch030p0_4_0000 batch030p0_4_0001 (by decide +kernel)
theorem batch030p0_5_0000_left : batch030p0_5_0000.left = (71/105) := by decide +kernel
theorem batch030p0_5_0000_right : batch030p0_5_0000.right = (67/96) := by decide +kernel
theorem batch030p0_5_0000_units : batch030p0_5_0000.units = 67865 := by decide +kernel
noncomputable def leaf1_1920 : Block :=
  Block.single profile1920 selection1_1920 profile1920_checked selection1_1920_checked
noncomputable def leaf1_1921 : Block :=
  Block.single profile1921 selection1_1921 profile1921_checked selection1_1921_checked
noncomputable def leaf1_1922 : Block :=
  Block.single profile1922 selection1_1922 profile1922_checked selection1_1922_checked
noncomputable def leaf1_1923 : Block :=
  Block.single profile1923 selection1_1923 profile1923_checked selection1_1923_checked
noncomputable def leaf1_1924 : Block :=
  Block.single profile1924 selection1_1924 profile1924_checked selection1_1924_checked
noncomputable def leaf1_1925 : Block :=
  Block.single profile1925 selection1_1925 profile1925_checked selection1_1925_checked
noncomputable def leaf1_1926 : Block :=
  Block.single profile1926 selection1_1926 profile1926_checked selection1_1926_checked
noncomputable def leaf1_1927 : Block :=
  Block.single profile1927 selection1_1927 profile1927_checked selection1_1927_checked
noncomputable def leaf1_1928 : Block :=
  Block.single profile1928 selection1_1928 profile1928_checked selection1_1928_checked
noncomputable def leaf1_1929 : Block :=
  Block.single profile1929 selection1_1929 profile1929_checked selection1_1929_checked
noncomputable def leaf1_1930 : Block :=
  Block.single profile1930 selection1_1930 profile1930_checked selection1_1930_checked
noncomputable def leaf1_1931 : Block :=
  Block.single profile1931 selection1_1931 profile1931_checked selection1_1931_checked
noncomputable def leaf1_1932 : Block :=
  Block.single profile1932 selection1_1932 profile1932_checked selection1_1932_checked
noncomputable def leaf1_1933 : Block :=
  Block.single profile1933 selection1_1933 profile1933_checked selection1_1933_checked
noncomputable def leaf1_1934 : Block :=
  Block.single profile1934 selection1_1934 profile1934_checked selection1_1934_checked
noncomputable def leaf1_1935 : Block :=
  Block.single profile1935 selection1_1935 profile1935_checked selection1_1935_checked
noncomputable def leaf1_1936 : Block :=
  Block.single profile1936 selection1_1936 profile1936_checked selection1_1936_checked
noncomputable def leaf1_1937 : Block :=
  Block.single profile1937 selection1_1937 profile1937_checked selection1_1937_checked
noncomputable def leaf1_1938 : Block :=
  Block.single profile1938 selection1_1938 profile1938_checked selection1_1938_checked
noncomputable def leaf1_1939 : Block :=
  Block.single profile1939 selection1_1939 profile1939_checked selection1_1939_checked
noncomputable def leaf1_1940 : Block :=
  Block.single profile1940 selection1_1940 profile1940_checked selection1_1940_checked
noncomputable def leaf1_1941 : Block :=
  Block.single profile1941 selection1_1941 profile1941_checked selection1_1941_checked
noncomputable def leaf1_1942 : Block :=
  Block.single profile1942 selection1_1942 profile1942_checked selection1_1942_checked
noncomputable def leaf1_1943 : Block :=
  Block.single profile1943 selection1_1943 profile1943_checked selection1_1943_checked
noncomputable def leaf1_1944 : Block :=
  Block.single profile1944 selection1_1944 profile1944_checked selection1_1944_checked
noncomputable def leaf1_1945 : Block :=
  Block.single profile1945 selection1_1945 profile1945_checked selection1_1945_checked
noncomputable def leaf1_1946 : Block :=
  Block.single profile1946 selection1_1946 profile1946_checked selection1_1946_checked
noncomputable def leaf1_1947 : Block :=
  Block.single profile1947 selection1_1947 profile1947_checked selection1_1947_checked
noncomputable def leaf1_1948 : Block :=
  Block.single profile1948 selection1_1948 profile1948_checked selection1_1948_checked
noncomputable def leaf1_1949 : Block :=
  Block.single profile1949 selection1_1949 profile1949_checked selection1_1949_checked
noncomputable def leaf1_1950 : Block :=
  Block.single profile1950 selection1_1950 profile1950_checked selection1_1950_checked
noncomputable def leaf1_1951 : Block :=
  Block.single profile1951 selection1_1951 profile1951_checked selection1_1951_checked
noncomputable def leaf1_1952 : Block :=
  Block.single profile1952 selection1_1952 profile1952_checked selection1_1952_checked
noncomputable def leaf1_1953 : Block :=
  Block.single profile1953 selection1_1953 profile1953_checked selection1_1953_checked
noncomputable def leaf1_1954 : Block :=
  Block.single profile1954 selection1_1954 profile1954_checked selection1_1954_checked
noncomputable def leaf1_1955 : Block :=
  Block.single profile1955 selection1_1955 profile1955_checked selection1_1955_checked
noncomputable def leaf1_1956 : Block :=
  Block.single profile1956 selection1_1956 profile1956_checked selection1_1956_checked
noncomputable def leaf1_1957 : Block :=
  Block.single profile1957 selection1_1957 profile1957_checked selection1_1957_checked
noncomputable def leaf1_1958 : Block :=
  Block.single profile1958 selection1_1958 profile1958_checked selection1_1958_checked
noncomputable def leaf1_1959 : Block :=
  Block.single profile1959 selection1_1959 profile1959_checked selection1_1959_checked
noncomputable def leaf1_1960 : Block :=
  Block.single profile1960 selection1_1960 profile1960_checked selection1_1960_checked
noncomputable def leaf1_1961 : Block :=
  Block.single profile1961 selection1_1961 profile1961_checked selection1_1961_checked
noncomputable def leaf1_1962 : Block :=
  Block.single profile1962 selection1_1962 profile1962_checked selection1_1962_checked
noncomputable def leaf1_1963 : Block :=
  Block.single profile1963 selection1_1963 profile1963_checked selection1_1963_checked
noncomputable def leaf1_1964 : Block :=
  Block.single profile1964 selection1_1964 profile1964_checked selection1_1964_checked
noncomputable def leaf1_1965 : Block :=
  Block.single profile1965 selection1_1965 profile1965_checked selection1_1965_checked
noncomputable def leaf1_1966 : Block :=
  Block.single profile1966 selection1_1966 profile1966_checked selection1_1966_checked
noncomputable def leaf1_1967 : Block :=
  Block.single profile1967 selection1_1967 profile1967_checked selection1_1967_checked
noncomputable def leaf1_1968 : Block :=
  Block.single profile1968 selection1_1968 profile1968_checked selection1_1968_checked
noncomputable def leaf1_1969 : Block :=
  Block.single profile1969 selection1_1969 profile1969_checked selection1_1969_checked
noncomputable def leaf1_1970 : Block :=
  Block.single profile1970 selection1_1970 profile1970_checked selection1_1970_checked
noncomputable def leaf1_1971 : Block :=
  Block.single profile1971 selection1_1971 profile1971_checked selection1_1971_checked
noncomputable def leaf1_1972 : Block :=
  Block.single profile1972 selection1_1972 profile1972_checked selection1_1972_checked
noncomputable def leaf1_1973 : Block :=
  Block.single profile1973 selection1_1973 profile1973_checked selection1_1973_checked
noncomputable def leaf1_1974 : Block :=
  Block.single profile1974 selection1_1974 profile1974_checked selection1_1974_checked
noncomputable def leaf1_1975 : Block :=
  Block.single profile1975 selection1_1975 profile1975_checked selection1_1975_checked
noncomputable def leaf1_1976 : Block :=
  Block.single profile1976 selection1_1976 profile1976_checked selection1_1976_checked
noncomputable def leaf1_1977 : Block :=
  Block.single profile1977 selection1_1977 profile1977_checked selection1_1977_checked
noncomputable def leaf1_1978 : Block :=
  Block.single profile1978 selection1_1978 profile1978_checked selection1_1978_checked
noncomputable def leaf1_1979 : Block :=
  Block.single profile1979 selection1_1979 profile1979_checked selection1_1979_checked
noncomputable def leaf1_1980 : Block :=
  Block.single profile1980 selection1_1980 profile1980_checked selection1_1980_checked
noncomputable def leaf1_1981 : Block :=
  Block.single profile1981 selection1_1981 profile1981_checked selection1_1981_checked
noncomputable def leaf1_1982 : Block :=
  Block.single profile1982 selection1_1982 profile1982_checked selection1_1982_checked
noncomputable def leaf1_1983 : Block :=
  Block.single profile1983 selection1_1983 profile1983_checked selection1_1983_checked
noncomputable def batch030p1_0_0000 : Block :=
  Block.append leaf1_1920 leaf1_1921 (by decide +kernel)
noncomputable def batch030p1_0_0001 : Block :=
  Block.append leaf1_1922 leaf1_1923 (by decide +kernel)
noncomputable def batch030p1_0_0002 : Block :=
  Block.append leaf1_1924 leaf1_1925 (by decide +kernel)
noncomputable def batch030p1_0_0003 : Block :=
  Block.append leaf1_1926 leaf1_1927 (by decide +kernel)
noncomputable def batch030p1_0_0004 : Block :=
  Block.append leaf1_1928 leaf1_1929 (by decide +kernel)
noncomputable def batch030p1_0_0005 : Block :=
  Block.append leaf1_1930 leaf1_1931 (by decide +kernel)
noncomputable def batch030p1_0_0006 : Block :=
  Block.append leaf1_1932 leaf1_1933 (by decide +kernel)
noncomputable def batch030p1_0_0007 : Block :=
  Block.append leaf1_1934 leaf1_1935 (by decide +kernel)
noncomputable def batch030p1_0_0008 : Block :=
  Block.append leaf1_1936 leaf1_1937 (by decide +kernel)
noncomputable def batch030p1_0_0009 : Block :=
  Block.append leaf1_1938 leaf1_1939 (by decide +kernel)
noncomputable def batch030p1_0_0010 : Block :=
  Block.append leaf1_1940 leaf1_1941 (by decide +kernel)
noncomputable def batch030p1_0_0011 : Block :=
  Block.append leaf1_1942 leaf1_1943 (by decide +kernel)
noncomputable def batch030p1_0_0012 : Block :=
  Block.append leaf1_1944 leaf1_1945 (by decide +kernel)
noncomputable def batch030p1_0_0013 : Block :=
  Block.append leaf1_1946 leaf1_1947 (by decide +kernel)
noncomputable def batch030p1_0_0014 : Block :=
  Block.append leaf1_1948 leaf1_1949 (by decide +kernel)
noncomputable def batch030p1_0_0015 : Block :=
  Block.append leaf1_1950 leaf1_1951 (by decide +kernel)
noncomputable def batch030p1_0_0016 : Block :=
  Block.append leaf1_1952 leaf1_1953 (by decide +kernel)
noncomputable def batch030p1_0_0017 : Block :=
  Block.append leaf1_1954 leaf1_1955 (by decide +kernel)
noncomputable def batch030p1_0_0018 : Block :=
  Block.append leaf1_1956 leaf1_1957 (by decide +kernel)
noncomputable def batch030p1_0_0019 : Block :=
  Block.append leaf1_1958 leaf1_1959 (by decide +kernel)
noncomputable def batch030p1_0_0020 : Block :=
  Block.append leaf1_1960 leaf1_1961 (by decide +kernel)
noncomputable def batch030p1_0_0021 : Block :=
  Block.append leaf1_1962 leaf1_1963 (by decide +kernel)
noncomputable def batch030p1_0_0022 : Block :=
  Block.append leaf1_1964 leaf1_1965 (by decide +kernel)
noncomputable def batch030p1_0_0023 : Block :=
  Block.append leaf1_1966 leaf1_1967 (by decide +kernel)
noncomputable def batch030p1_0_0024 : Block :=
  Block.append leaf1_1968 leaf1_1969 (by decide +kernel)
noncomputable def batch030p1_0_0025 : Block :=
  Block.append leaf1_1970 leaf1_1971 (by decide +kernel)
noncomputable def batch030p1_0_0026 : Block :=
  Block.append leaf1_1972 leaf1_1973 (by decide +kernel)
noncomputable def batch030p1_0_0027 : Block :=
  Block.append leaf1_1974 leaf1_1975 (by decide +kernel)
noncomputable def batch030p1_0_0028 : Block :=
  Block.append leaf1_1976 leaf1_1977 (by decide +kernel)
noncomputable def batch030p1_0_0029 : Block :=
  Block.append leaf1_1978 leaf1_1979 (by decide +kernel)
noncomputable def batch030p1_0_0030 : Block :=
  Block.append leaf1_1980 leaf1_1981 (by decide +kernel)
noncomputable def batch030p1_0_0031 : Block :=
  Block.append leaf1_1982 leaf1_1983 (by decide +kernel)
noncomputable def batch030p1_1_0000 : Block :=
  Block.append batch030p1_0_0000 batch030p1_0_0001 (by decide +kernel)
noncomputable def batch030p1_1_0001 : Block :=
  Block.append batch030p1_0_0002 batch030p1_0_0003 (by decide +kernel)
noncomputable def batch030p1_1_0002 : Block :=
  Block.append batch030p1_0_0004 batch030p1_0_0005 (by decide +kernel)
noncomputable def batch030p1_1_0003 : Block :=
  Block.append batch030p1_0_0006 batch030p1_0_0007 (by decide +kernel)
noncomputable def batch030p1_1_0004 : Block :=
  Block.append batch030p1_0_0008 batch030p1_0_0009 (by decide +kernel)
noncomputable def batch030p1_1_0005 : Block :=
  Block.append batch030p1_0_0010 batch030p1_0_0011 (by decide +kernel)
noncomputable def batch030p1_1_0006 : Block :=
  Block.append batch030p1_0_0012 batch030p1_0_0013 (by decide +kernel)
noncomputable def batch030p1_1_0007 : Block :=
  Block.append batch030p1_0_0014 batch030p1_0_0015 (by decide +kernel)
noncomputable def batch030p1_1_0008 : Block :=
  Block.append batch030p1_0_0016 batch030p1_0_0017 (by decide +kernel)
noncomputable def batch030p1_1_0009 : Block :=
  Block.append batch030p1_0_0018 batch030p1_0_0019 (by decide +kernel)
noncomputable def batch030p1_1_0010 : Block :=
  Block.append batch030p1_0_0020 batch030p1_0_0021 (by decide +kernel)
noncomputable def batch030p1_1_0011 : Block :=
  Block.append batch030p1_0_0022 batch030p1_0_0023 (by decide +kernel)
noncomputable def batch030p1_1_0012 : Block :=
  Block.append batch030p1_0_0024 batch030p1_0_0025 (by decide +kernel)
noncomputable def batch030p1_1_0013 : Block :=
  Block.append batch030p1_0_0026 batch030p1_0_0027 (by decide +kernel)
noncomputable def batch030p1_1_0014 : Block :=
  Block.append batch030p1_0_0028 batch030p1_0_0029 (by decide +kernel)
noncomputable def batch030p1_1_0015 : Block :=
  Block.append batch030p1_0_0030 batch030p1_0_0031 (by decide +kernel)
noncomputable def batch030p1_2_0000 : Block :=
  Block.append batch030p1_1_0000 batch030p1_1_0001 (by decide +kernel)
noncomputable def batch030p1_2_0001 : Block :=
  Block.append batch030p1_1_0002 batch030p1_1_0003 (by decide +kernel)
noncomputable def batch030p1_2_0002 : Block :=
  Block.append batch030p1_1_0004 batch030p1_1_0005 (by decide +kernel)
noncomputable def batch030p1_2_0003 : Block :=
  Block.append batch030p1_1_0006 batch030p1_1_0007 (by decide +kernel)
noncomputable def batch030p1_2_0004 : Block :=
  Block.append batch030p1_1_0008 batch030p1_1_0009 (by decide +kernel)
noncomputable def batch030p1_2_0005 : Block :=
  Block.append batch030p1_1_0010 batch030p1_1_0011 (by decide +kernel)
noncomputable def batch030p1_2_0006 : Block :=
  Block.append batch030p1_1_0012 batch030p1_1_0013 (by decide +kernel)
noncomputable def batch030p1_2_0007 : Block :=
  Block.append batch030p1_1_0014 batch030p1_1_0015 (by decide +kernel)
noncomputable def batch030p1_3_0000 : Block :=
  Block.append batch030p1_2_0000 batch030p1_2_0001 (by decide +kernel)
noncomputable def batch030p1_3_0001 : Block :=
  Block.append batch030p1_2_0002 batch030p1_2_0003 (by decide +kernel)
noncomputable def batch030p1_3_0002 : Block :=
  Block.append batch030p1_2_0004 batch030p1_2_0005 (by decide +kernel)
noncomputable def batch030p1_3_0003 : Block :=
  Block.append batch030p1_2_0006 batch030p1_2_0007 (by decide +kernel)
noncomputable def batch030p1_4_0000 : Block :=
  Block.append batch030p1_3_0000 batch030p1_3_0001 (by decide +kernel)
noncomputable def batch030p1_4_0001 : Block :=
  Block.append batch030p1_3_0002 batch030p1_3_0003 (by decide +kernel)
noncomputable def batch030p1_5_0000 : Block :=
  Block.append batch030p1_4_0000 batch030p1_4_0001 (by decide +kernel)
theorem batch030p1_5_0000_left : batch030p1_5_0000.left = (176/105) := by decide +kernel
theorem batch030p1_5_0000_right : batch030p1_5_0000.right = (163/96) := by decide +kernel
theorem batch030p1_5_0000_units : batch030p1_5_0000.units = 10850 := by decide +kernel
noncomputable def leaf2_1920 : Block :=
  Block.single profile1920 selection2_1920 profile1920_checked selection2_1920_checked
noncomputable def leaf2_1921 : Block :=
  Block.single profile1921 selection2_1921 profile1921_checked selection2_1921_checked
noncomputable def leaf2_1922 : Block :=
  Block.single profile1922 selection2_1922 profile1922_checked selection2_1922_checked
noncomputable def leaf2_1923 : Block :=
  Block.single profile1923 selection2_1923 profile1923_checked selection2_1923_checked
noncomputable def leaf2_1924 : Block :=
  Block.single profile1924 selection2_1924 profile1924_checked selection2_1924_checked
noncomputable def leaf2_1925 : Block :=
  Block.single profile1925 selection2_1925 profile1925_checked selection2_1925_checked
noncomputable def leaf2_1926 : Block :=
  Block.single profile1926 selection2_1926 profile1926_checked selection2_1926_checked
noncomputable def leaf2_1927 : Block :=
  Block.single profile1927 selection2_1927 profile1927_checked selection2_1927_checked
noncomputable def leaf2_1928 : Block :=
  Block.single profile1928 selection2_1928 profile1928_checked selection2_1928_checked
noncomputable def leaf2_1929 : Block :=
  Block.single profile1929 selection2_1929 profile1929_checked selection2_1929_checked
noncomputable def leaf2_1930 : Block :=
  Block.single profile1930 selection2_1930 profile1930_checked selection2_1930_checked
noncomputable def leaf2_1931 : Block :=
  Block.single profile1931 selection2_1931 profile1931_checked selection2_1931_checked
noncomputable def leaf2_1932 : Block :=
  Block.single profile1932 selection2_1932 profile1932_checked selection2_1932_checked
noncomputable def leaf2_1933 : Block :=
  Block.single profile1933 selection2_1933 profile1933_checked selection2_1933_checked
noncomputable def leaf2_1934 : Block :=
  Block.single profile1934 selection2_1934 profile1934_checked selection2_1934_checked
noncomputable def leaf2_1935 : Block :=
  Block.single profile1935 selection2_1935 profile1935_checked selection2_1935_checked
noncomputable def leaf2_1936 : Block :=
  Block.single profile1936 selection2_1936 profile1936_checked selection2_1936_checked
noncomputable def leaf2_1937 : Block :=
  Block.single profile1937 selection2_1937 profile1937_checked selection2_1937_checked
noncomputable def leaf2_1938 : Block :=
  Block.single profile1938 selection2_1938 profile1938_checked selection2_1938_checked
noncomputable def leaf2_1939 : Block :=
  Block.single profile1939 selection2_1939 profile1939_checked selection2_1939_checked
noncomputable def leaf2_1940 : Block :=
  Block.single profile1940 selection2_1940 profile1940_checked selection2_1940_checked
noncomputable def leaf2_1941 : Block :=
  Block.single profile1941 selection2_1941 profile1941_checked selection2_1941_checked
noncomputable def leaf2_1942 : Block :=
  Block.single profile1942 selection2_1942 profile1942_checked selection2_1942_checked
noncomputable def leaf2_1943 : Block :=
  Block.single profile1943 selection2_1943 profile1943_checked selection2_1943_checked
noncomputable def leaf2_1944 : Block :=
  Block.single profile1944 selection2_1944 profile1944_checked selection2_1944_checked
noncomputable def leaf2_1945 : Block :=
  Block.single profile1945 selection2_1945 profile1945_checked selection2_1945_checked
noncomputable def leaf2_1946 : Block :=
  Block.single profile1946 selection2_1946 profile1946_checked selection2_1946_checked
noncomputable def leaf2_1947 : Block :=
  Block.single profile1947 selection2_1947 profile1947_checked selection2_1947_checked
noncomputable def leaf2_1948 : Block :=
  Block.single profile1948 selection2_1948 profile1948_checked selection2_1948_checked
noncomputable def leaf2_1949 : Block :=
  Block.single profile1949 selection2_1949 profile1949_checked selection2_1949_checked
noncomputable def leaf2_1950 : Block :=
  Block.single profile1950 selection2_1950 profile1950_checked selection2_1950_checked
noncomputable def leaf2_1951 : Block :=
  Block.single profile1951 selection2_1951 profile1951_checked selection2_1951_checked
noncomputable def leaf2_1952 : Block :=
  Block.single profile1952 selection2_1952 profile1952_checked selection2_1952_checked
noncomputable def leaf2_1953 : Block :=
  Block.single profile1953 selection2_1953 profile1953_checked selection2_1953_checked
noncomputable def leaf2_1954 : Block :=
  Block.single profile1954 selection2_1954 profile1954_checked selection2_1954_checked
noncomputable def leaf2_1955 : Block :=
  Block.single profile1955 selection2_1955 profile1955_checked selection2_1955_checked
noncomputable def leaf2_1956 : Block :=
  Block.single profile1956 selection2_1956 profile1956_checked selection2_1956_checked
noncomputable def leaf2_1957 : Block :=
  Block.single profile1957 selection2_1957 profile1957_checked selection2_1957_checked
noncomputable def leaf2_1958 : Block :=
  Block.single profile1958 selection2_1958 profile1958_checked selection2_1958_checked
noncomputable def leaf2_1959 : Block :=
  Block.single profile1959 selection2_1959 profile1959_checked selection2_1959_checked
noncomputable def leaf2_1960 : Block :=
  Block.single profile1960 selection2_1960 profile1960_checked selection2_1960_checked
noncomputable def leaf2_1961 : Block :=
  Block.single profile1961 selection2_1961 profile1961_checked selection2_1961_checked
noncomputable def leaf2_1962 : Block :=
  Block.single profile1962 selection2_1962 profile1962_checked selection2_1962_checked
noncomputable def leaf2_1963 : Block :=
  Block.single profile1963 selection2_1963 profile1963_checked selection2_1963_checked
noncomputable def leaf2_1964 : Block :=
  Block.single profile1964 selection2_1964 profile1964_checked selection2_1964_checked
noncomputable def leaf2_1965 : Block :=
  Block.single profile1965 selection2_1965 profile1965_checked selection2_1965_checked
noncomputable def leaf2_1966 : Block :=
  Block.single profile1966 selection2_1966 profile1966_checked selection2_1966_checked
noncomputable def leaf2_1967 : Block :=
  Block.single profile1967 selection2_1967 profile1967_checked selection2_1967_checked
noncomputable def leaf2_1968 : Block :=
  Block.single profile1968 selection2_1968 profile1968_checked selection2_1968_checked
noncomputable def leaf2_1969 : Block :=
  Block.single profile1969 selection2_1969 profile1969_checked selection2_1969_checked
noncomputable def leaf2_1970 : Block :=
  Block.single profile1970 selection2_1970 profile1970_checked selection2_1970_checked
noncomputable def leaf2_1971 : Block :=
  Block.single profile1971 selection2_1971 profile1971_checked selection2_1971_checked
noncomputable def leaf2_1972 : Block :=
  Block.single profile1972 selection2_1972 profile1972_checked selection2_1972_checked
noncomputable def leaf2_1973 : Block :=
  Block.single profile1973 selection2_1973 profile1973_checked selection2_1973_checked
noncomputable def leaf2_1974 : Block :=
  Block.single profile1974 selection2_1974 profile1974_checked selection2_1974_checked
noncomputable def leaf2_1975 : Block :=
  Block.single profile1975 selection2_1975 profile1975_checked selection2_1975_checked
noncomputable def leaf2_1976 : Block :=
  Block.single profile1976 selection2_1976 profile1976_checked selection2_1976_checked
noncomputable def leaf2_1977 : Block :=
  Block.single profile1977 selection2_1977 profile1977_checked selection2_1977_checked
noncomputable def leaf2_1978 : Block :=
  Block.single profile1978 selection2_1978 profile1978_checked selection2_1978_checked
noncomputable def leaf2_1979 : Block :=
  Block.single profile1979 selection2_1979 profile1979_checked selection2_1979_checked
noncomputable def leaf2_1980 : Block :=
  Block.single profile1980 selection2_1980 profile1980_checked selection2_1980_checked
noncomputable def leaf2_1981 : Block :=
  Block.single profile1981 selection2_1981 profile1981_checked selection2_1981_checked
noncomputable def leaf2_1982 : Block :=
  Block.single profile1982 selection2_1982 profile1982_checked selection2_1982_checked
noncomputable def leaf2_1983 : Block :=
  Block.single profile1983 selection2_1983 profile1983_checked selection2_1983_checked
noncomputable def batch030p2_0_0000 : Block :=
  Block.append leaf2_1920 leaf2_1921 (by decide +kernel)
noncomputable def batch030p2_0_0001 : Block :=
  Block.append leaf2_1922 leaf2_1923 (by decide +kernel)
noncomputable def batch030p2_0_0002 : Block :=
  Block.append leaf2_1924 leaf2_1925 (by decide +kernel)
noncomputable def batch030p2_0_0003 : Block :=
  Block.append leaf2_1926 leaf2_1927 (by decide +kernel)
noncomputable def batch030p2_0_0004 : Block :=
  Block.append leaf2_1928 leaf2_1929 (by decide +kernel)
noncomputable def batch030p2_0_0005 : Block :=
  Block.append leaf2_1930 leaf2_1931 (by decide +kernel)
noncomputable def batch030p2_0_0006 : Block :=
  Block.append leaf2_1932 leaf2_1933 (by decide +kernel)
noncomputable def batch030p2_0_0007 : Block :=
  Block.append leaf2_1934 leaf2_1935 (by decide +kernel)
noncomputable def batch030p2_0_0008 : Block :=
  Block.append leaf2_1936 leaf2_1937 (by decide +kernel)
noncomputable def batch030p2_0_0009 : Block :=
  Block.append leaf2_1938 leaf2_1939 (by decide +kernel)
noncomputable def batch030p2_0_0010 : Block :=
  Block.append leaf2_1940 leaf2_1941 (by decide +kernel)
noncomputable def batch030p2_0_0011 : Block :=
  Block.append leaf2_1942 leaf2_1943 (by decide +kernel)
noncomputable def batch030p2_0_0012 : Block :=
  Block.append leaf2_1944 leaf2_1945 (by decide +kernel)
noncomputable def batch030p2_0_0013 : Block :=
  Block.append leaf2_1946 leaf2_1947 (by decide +kernel)
noncomputable def batch030p2_0_0014 : Block :=
  Block.append leaf2_1948 leaf2_1949 (by decide +kernel)
noncomputable def batch030p2_0_0015 : Block :=
  Block.append leaf2_1950 leaf2_1951 (by decide +kernel)
noncomputable def batch030p2_0_0016 : Block :=
  Block.append leaf2_1952 leaf2_1953 (by decide +kernel)
noncomputable def batch030p2_0_0017 : Block :=
  Block.append leaf2_1954 leaf2_1955 (by decide +kernel)
noncomputable def batch030p2_0_0018 : Block :=
  Block.append leaf2_1956 leaf2_1957 (by decide +kernel)
noncomputable def batch030p2_0_0019 : Block :=
  Block.append leaf2_1958 leaf2_1959 (by decide +kernel)
noncomputable def batch030p2_0_0020 : Block :=
  Block.append leaf2_1960 leaf2_1961 (by decide +kernel)
noncomputable def batch030p2_0_0021 : Block :=
  Block.append leaf2_1962 leaf2_1963 (by decide +kernel)
noncomputable def batch030p2_0_0022 : Block :=
  Block.append leaf2_1964 leaf2_1965 (by decide +kernel)
noncomputable def batch030p2_0_0023 : Block :=
  Block.append leaf2_1966 leaf2_1967 (by decide +kernel)
noncomputable def batch030p2_0_0024 : Block :=
  Block.append leaf2_1968 leaf2_1969 (by decide +kernel)
noncomputable def batch030p2_0_0025 : Block :=
  Block.append leaf2_1970 leaf2_1971 (by decide +kernel)
noncomputable def batch030p2_0_0026 : Block :=
  Block.append leaf2_1972 leaf2_1973 (by decide +kernel)
noncomputable def batch030p2_0_0027 : Block :=
  Block.append leaf2_1974 leaf2_1975 (by decide +kernel)
noncomputable def batch030p2_0_0028 : Block :=
  Block.append leaf2_1976 leaf2_1977 (by decide +kernel)
noncomputable def batch030p2_0_0029 : Block :=
  Block.append leaf2_1978 leaf2_1979 (by decide +kernel)
noncomputable def batch030p2_0_0030 : Block :=
  Block.append leaf2_1980 leaf2_1981 (by decide +kernel)
noncomputable def batch030p2_0_0031 : Block :=
  Block.append leaf2_1982 leaf2_1983 (by decide +kernel)
noncomputable def batch030p2_1_0000 : Block :=
  Block.append batch030p2_0_0000 batch030p2_0_0001 (by decide +kernel)
noncomputable def batch030p2_1_0001 : Block :=
  Block.append batch030p2_0_0002 batch030p2_0_0003 (by decide +kernel)
noncomputable def batch030p2_1_0002 : Block :=
  Block.append batch030p2_0_0004 batch030p2_0_0005 (by decide +kernel)
noncomputable def batch030p2_1_0003 : Block :=
  Block.append batch030p2_0_0006 batch030p2_0_0007 (by decide +kernel)
noncomputable def batch030p2_1_0004 : Block :=
  Block.append batch030p2_0_0008 batch030p2_0_0009 (by decide +kernel)
noncomputable def batch030p2_1_0005 : Block :=
  Block.append batch030p2_0_0010 batch030p2_0_0011 (by decide +kernel)
noncomputable def batch030p2_1_0006 : Block :=
  Block.append batch030p2_0_0012 batch030p2_0_0013 (by decide +kernel)
noncomputable def batch030p2_1_0007 : Block :=
  Block.append batch030p2_0_0014 batch030p2_0_0015 (by decide +kernel)
noncomputable def batch030p2_1_0008 : Block :=
  Block.append batch030p2_0_0016 batch030p2_0_0017 (by decide +kernel)
noncomputable def batch030p2_1_0009 : Block :=
  Block.append batch030p2_0_0018 batch030p2_0_0019 (by decide +kernel)
noncomputable def batch030p2_1_0010 : Block :=
  Block.append batch030p2_0_0020 batch030p2_0_0021 (by decide +kernel)
noncomputable def batch030p2_1_0011 : Block :=
  Block.append batch030p2_0_0022 batch030p2_0_0023 (by decide +kernel)
noncomputable def batch030p2_1_0012 : Block :=
  Block.append batch030p2_0_0024 batch030p2_0_0025 (by decide +kernel)
noncomputable def batch030p2_1_0013 : Block :=
  Block.append batch030p2_0_0026 batch030p2_0_0027 (by decide +kernel)
noncomputable def batch030p2_1_0014 : Block :=
  Block.append batch030p2_0_0028 batch030p2_0_0029 (by decide +kernel)
noncomputable def batch030p2_1_0015 : Block :=
  Block.append batch030p2_0_0030 batch030p2_0_0031 (by decide +kernel)
noncomputable def batch030p2_2_0000 : Block :=
  Block.append batch030p2_1_0000 batch030p2_1_0001 (by decide +kernel)
noncomputable def batch030p2_2_0001 : Block :=
  Block.append batch030p2_1_0002 batch030p2_1_0003 (by decide +kernel)
noncomputable def batch030p2_2_0002 : Block :=
  Block.append batch030p2_1_0004 batch030p2_1_0005 (by decide +kernel)
noncomputable def batch030p2_2_0003 : Block :=
  Block.append batch030p2_1_0006 batch030p2_1_0007 (by decide +kernel)
noncomputable def batch030p2_2_0004 : Block :=
  Block.append batch030p2_1_0008 batch030p2_1_0009 (by decide +kernel)
noncomputable def batch030p2_2_0005 : Block :=
  Block.append batch030p2_1_0010 batch030p2_1_0011 (by decide +kernel)
noncomputable def batch030p2_2_0006 : Block :=
  Block.append batch030p2_1_0012 batch030p2_1_0013 (by decide +kernel)
noncomputable def batch030p2_2_0007 : Block :=
  Block.append batch030p2_1_0014 batch030p2_1_0015 (by decide +kernel)
noncomputable def batch030p2_3_0000 : Block :=
  Block.append batch030p2_2_0000 batch030p2_2_0001 (by decide +kernel)
noncomputable def batch030p2_3_0001 : Block :=
  Block.append batch030p2_2_0002 batch030p2_2_0003 (by decide +kernel)
noncomputable def batch030p2_3_0002 : Block :=
  Block.append batch030p2_2_0004 batch030p2_2_0005 (by decide +kernel)
noncomputable def batch030p2_3_0003 : Block :=
  Block.append batch030p2_2_0006 batch030p2_2_0007 (by decide +kernel)
noncomputable def batch030p2_4_0000 : Block :=
  Block.append batch030p2_3_0000 batch030p2_3_0001 (by decide +kernel)
noncomputable def batch030p2_4_0001 : Block :=
  Block.append batch030p2_3_0002 batch030p2_3_0003 (by decide +kernel)
noncomputable def batch030p2_5_0000 : Block :=
  Block.append batch030p2_4_0000 batch030p2_4_0001 (by decide +kernel)
theorem batch030p2_5_0000_left : batch030p2_5_0000.left = (281/105) := by decide +kernel
theorem batch030p2_5_0000_right : batch030p2_5_0000.right = (259/96) := by decide +kernel
theorem batch030p2_5_0000_units : batch030p2_5_0000.units = 4254 := by decide +kernel
end OddZetaMixed.H158LowCells.Certificate
