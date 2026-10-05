# Seven odd zeta values: a Lean formalization

**Jingwei Liu**

This repository contains the Lean development and verification evidence for
the following statement:

> At least one of zeta(7), zeta(9), zeta(11), zeta(13), zeta(15), zeta(17),
> and zeta(19) is irrational.

The conclusion is existential: it does not identify which of the seven
values is irrational, and does not establish the irrationality of zeta(7)
individually. The repository is limited to this result and its formalization.

## The theorem

The public Lean declaration is in
[`OddZetaMixed/H158SevenIrrational.lean`](OddZetaMixed/H158SevenIrrational.lean):

```lean
theorem exists_irrational_riemannZeta_seven_to_nineteen :
    ∃ s ∈ ({7,9,11,13,15,17,19} : Finset ℕ),
      Irrational ((riemannZeta (s : ℂ)).re)
```

The statement uses Mathlib's Riemann zeta function and has no additional
mathematical hypotheses. The same file proves the eventual global bound

```text
abs(det(h158Functional n) / h158PrimitiveScalar n) <= exp(-n^2 / 2).
```

See [RESULT.md](RESULT.md) for the scope and proof outline, and
[`H158UnconditionalAcceptanceCheck.lean`](H158UnconditionalAcceptanceCheck.lean)
for the closed acceptance statements.

## Proof checking

The verifier rebuilds the project and its bundled PNT dependency from source,
checks the closed final statements, and audits their transitive axiom
dependencies. The permitted foundations are `propext`, `Classical.choice`,
and `Quot.sound`. Rejection tests check that the audit detects an added
assumption and that the seven-value result cannot be used as a proof of
irrationality for a particular member of the list.

The recorded replay passed all 300 checks and rebuilt 256 project modules.
The PNT replay rebuilt 22 dependency modules plus two audit files and checked
72 targets. The receipts record hashes for all 326 proof, configuration, and
verifier inputs. Only the pinned Lean/Mathlib foundation artifacts are reused;
the project and bundled PNT modules are freshly compiled.

The verification evidence for this source snapshot is in
[`audit/2026-10-06/`](audit/2026-10-06/):

- [Complete replay log](audit/2026-10-06/verification.log)
- [Verification receipt and input hashes](audit/2026-10-06/verification.json)
- [PNT audit output](audit/2026-10-06/pnt-target-audit.log)
- [PNT replay receipt](audit/2026-10-06/pnt-replay-receipt.json)
- [Evidence checksums](audit/2026-10-06/SHA256SUMS)

## Pinned dependencies

| Dependency | Revision |
| --- | --- |
| Lean | `leanprover/lean4:v4.34.0-rc2` |
| Mathlib | `dc4b8d60d5edb3c493c3662126b1b7ccae7d67cf` |
| PrimeNumberTheoremAnd | `c39a751132c88b6e8080b74c74023fd95b3d8be0` |
| LeanArchitect | `468e8f58fb4ad6e6ad672a08da6d0d0531e95a97` |

[`PNTDependency/provenance.json`](PNTDependency/provenance.json) records
upstream URLs, original hashes, snapshot hashes, and exact source-selection
and compatibility transformations. Required source and upstream licenses are
included; no moving upstream branch is used as the proof dependency.

## Reproduce

Use Git, Node.js, Python 3.11 or later, and Lean's `elan` toolchain manager.
The verifier uses the standard elan toolchain location under the user's
home directory. From the repository root:

```sh
elan toolchain install leanprover/lean4:v4.34.0-rc2
lake exe cache get
python3 tools/check_snapshot.py
python3 -m unittest test_verify
python3 verify.py
```

Keep the committed `lake-manifest.json` and `lean-toolchain`; do not update
dependencies to newer revisions. `verify.py` starts fresh project and PNT
build directories and records new `verification.json` and `verification.log`
files at the repository root. A full replay is computationally substantial:
compilation is serial with an initial 8192 MB compiler limit and one permitted
12288 MB retry only after an explicit memory-limit failure.

`tools/check_snapshot.py` checks byte identity and the recorded acceptance
status, not mathematical validity. The full Lean replay checks the proofs.
The checked-in `audit/2026-10-06/` evidence is not overwritten by a replay.

The frozen source-generation scripts are included for provenance. Some
optional generators refer to the original research workspace; they are not
required by `verify.py`. The emitted Lean certificates are included and
checked directly, without trusting those generators or external numerical
JSON files as mathematical oracles.

## Attribution

See [NOTICE.md](NOTICE.md). Upstream sources retain their original notices
and licenses. This private snapshot does not introduce a new blanket license
for the original project files.
