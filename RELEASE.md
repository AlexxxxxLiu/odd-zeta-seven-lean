# Version 1.0.0

**Jingwei Liu | 6 October 2026**

At least one of zeta(7), zeta(9), zeta(11), zeta(13), zeta(15), zeta(17),
and zeta(19) is irrational.

This release contains the proof manuscript and its complete Lean
development. A growing determinant, primitive normalization, a global
quadratic-exponential bound, and auxiliary-prime nonvanishing give the
seven-value conclusion.

- Manuscript: `paper/seven-odd-zeta-values-v1.pdf` and its TeX source.
- Theorem: `OddZetaMixed.exists_irrational_riemannZeta_seven_to_nineteen`.
- Global bound: `h158_eventually_primitive_det_small`, in
  `OddZetaMixed/H158SevenIrrational.lean`.
- Source-replay evidence: `audit/2026-10-06/`.
- Proof-input inventory: the 326 inputs recorded in the replay receipt.
- Publication inventory: `RELEASE-SHA256SUMS` covers every distributed file
  except that inventory itself.

All 300 recorded checks passed. The release preserves the certified proof
inputs byte for byte. Its documentation and paper add the readable proof,
citations, version metadata, and licensing.

Archive: https://doi.org/10.5281/zenodo.23191331

GitHub release:
https://github.com/AlexxxxxLiu/odd-zeta-seven-lean/releases/tag/v1.0.0

Paper and original prose: CC BY 4.0. Original code: Apache-2.0.
Upstream licenses and attribution are preserved in `NOTICE.md` and
`PNTDependency/licenses/`.
