# Attribution and snapshot scope

Project author: Jingwei Liu.

The project was developed with AI assistance, including OpenAI Codex.

This repository packages only the seven-value result and its Lean
development, verification scripts, fixed source dependencies, and audit
evidence. It does not include the enclosing research journal, single-value
zeta experiments, or the author's other conjecture projects.

The bundled source snapshot draws on:

- PrimeNumberTheoremAnd, pinned at
  `c39a751132c88b6e8080b74c74023fd95b3d8be0`:
  https://github.com/AlexKontorovich/PrimeNumberTheoremAnd
- LeanArchitect, pinned at
  `468e8f58fb4ad6e6ad672a08da6d0d0531e95a97`:
  https://github.com/hanwenzhu/LeanArchitect
- Mathlib, fetched at the revision in `lake-manifest.json`:
  https://github.com/leanprover-community/mathlib4

Upstream copyright notices and the bundled Apache-2.0 license texts are
preserved in `PNTDependency/licenses/`; the upstream PNT citation file is
also included there. Exact source-selection and compatibility transformations
and checksums are in `PNTDependency/provenance.json` and
`PNTDependency/source-transform.cjs`. The bundled sources can be compared
with the pinned upstream Git objects by running `PNTDependency/vendor.cjs`
with `--pnt-checkout` and `--architect-checkout` pointing to local upstream
checkouts. This comparison is read-only and does not require distributing
complete upstream copies.

The audit directory records a fresh source replay of this selected snapshot.
The seven-value theorem and its project proof files are unchanged by the
publication source selection.

Copyright (c) 2026 Jingwei Liu.

Original Lean code, verification programs, and source-generation scripts
are licensed under the Apache License, Version 2.0 (see `LICENSE`). The
manuscript, its TeX source, and accompanying original prose are licensed
under Creative Commons Attribution 4.0 International:
https://creativecommons.org/licenses/by/4.0/.

Third-party material retains its pre-existing licenses and notices. The
bundled license and provenance files identify that material individually.
