"""Reconstruct original H158 floor strips and exact saved-cell certificates.

Uses only integer/Fraction arithmetic. Midpoints choose witnesses; all
validations are affine endpoint inequalities covering the entire cell.
Generated Lean checks use `decide +kernel`, never native_decide.
"""

import argparse
from collections import defaultdict
from fractions import Fraction as Q
from hashlib import sha256
import json
from pathlib import Path


ADDRESSES = [0, *range(48, 69), *range(90, 111), 158]
J = 10


def ev(f, x):
    return f[0] + f[1] * x


def add(f, g):
    return (f[0] + g[0], f[1] + g[1])


def scale(f, q):
    return (q * f[0], q * f[1])


def sub(f, g):
    return add(f, scale(g, -1))


def le_on(f, g, a, b):
    return ev(f, a) <= ev(g, a) and ev(f, b) <= ev(g, b)


def weight(v, nu):
    return 5 * v[0] - sum(v[1:22]) + sum(v[22:43]) - 5 * v[43] - nu + 4


def excess(w, tau):
    return sum(max(w - 2 * j - tau, 0) for j in range(J))


def integral(f, a, b):
    return f[0] * (b - a) + f[1] * (b * b - a * a) / 2


def reconstruct(row):
    a, b = Q(row["left"]), Q(row["right"])
    assert 4 <= a < b <= 26
    x = (a + b) / 2
    den = [int(Q(52 - 2 * i) // x) for i in range(16)]
    num = [int(Q(48 + i) // x) for i in range(5)]
    nu = sum(den) - 2 * sum(num)
    assert nu == row["nu"]
    for A, k in [*(zip(range(52, 20, -2), den)), *(zip(range(48, 53), num))]:
        assert k >= 0 and k * b <= A <= (k + 1) * a
    endpoints = {(Q(0), Q(0)), (Q(0), Q(1))}
    endpoints.update((Q(A), Q(-int(Q(A) // x))) for A in ADDRESSES)
    endpoints = sorted(endpoints, key=lambda f: ev(f, x))
    assert endpoints[0] == (0, 0) and endpoints[-1] == (0, 1)
    strips = []
    histogram = defaultdict(lambda: (Q(0), Q(0)))
    for l, r in zip(endpoints, endpoints[1:]):
        assert le_on(l, r, a, b)
        y = (ev(l, x) + ev(r, x)) / 2
        floors = [int((Q(A) - y) // x) for A in ADDRESSES]
        for A, k in zip(ADDRESSES, floors):
            assert le_on((0, k), (A - r[0], -r[1]), a, b)
            assert le_on((A - l[0], -l[1]), (0, k + 1), a, b)
        w = weight(floors, nu)
        assert w <= 20
        strips.append((l, r, floors, w))
        histogram[w] = add(histogram[w], scale(sub(r, l), Q(1, 2)))
    assert len(strips) <= 44
    hist = {w: f for w, f in histogram.items() if f != (0, 0)}
    saved_hist = {int(w): tuple(map(Q, pair)) for w, pair in row["histogram_affine"].items()}
    assert hist == saved_hist, (a, b, hist, saved_hist)
    rates = []
    for tau in range(21):
        rate = (Q(2 * tau), Q(0))
        above = (Q(0), Q(0))
        at_least = (Q(0), Q(0))
        for l, r, _, w in strips:
            width = scale(sub(r, l), Q(1, 2))
            rate = add(rate, scale(width, excess(w, tau)))
            above = add(above, scale(width, sum(w - 2 * j > tau for j in range(J))))
            at_least = add(at_least, scale(width, sum(w - 2 * j >= tau for j in range(J))))
        if le_on(above, (2, 0), a, b) and (tau == 0 or le_on((2, 0), at_least, a, b)):
            rates.append((tau, rate))
    target = tuple(map(Q, row["cost_affine_constant_slope"]))
    choices = [(t, r) for t, r in rates if r == target]
    assert choices, (a, b, rates, target)
    tau, rate = choices[0]
    assert integral(rate, a, b) == Q(row["cost_integral"])
    entry = Q(row["entrywise_cost_per_n"])
    gap = (entry - rate[0], -rate[1])
    assert le_on((0, 0), gap, a, b)
    assert integral(gap, a, b) == Q(row["saved_integral_vs_entrywise_envelope"])
    return dict(left=a, right=b, den=den, num=num, strips=strips, tau=tau, cost=rate)


def qlean(q):
    q = Q(q)
    return str(q.numerator) if q.denominator == 1 else f"({q.numerator}/{q.denominator})"


def affine(f):
    return f"\u27e8{qlean(f[0])}, {qlean(f[1])}\u27e9"


def ilist(xs):
    return "[" + ", ".join(map(str, xs)) + "]"


def emit_cell(c, index, grid=False, fast_grid=False):
    strips = ",\n    ".join(
        f"\u27e8{affine(l)}, {affine(r)}, {ilist(v)}, {w}\u27e9" for l, r, v, w in c["strips"]
    )
    definition = (
        f"def savedCell{index:03d} : Cell :=\n"
        f"  \u27e8{qlean(c['left'])}, {qlean(c['right'])},\n"
        f"    {ilist(c['den'])}, {ilist(c['num'])},\n"
        f"    [{strips}], {c['tau']}, {affine(c['cost'])}\u27e9\n\n")
    if grid:
        boundaries = [s[0] for s in c["strips"]] + [c["strips"][-1][1]]
        x = (c["left"] + c["right"]) / 2
        quotients = [int(Q(A) // x) for A in ADDRESSES]
        positions = [boundaries.index((Q(A), Q(-q))) for A, q in zip(ADDRESSES, quotients)]
        definition += (
            f"def savedGrid{index:03d} : GridCertificate :=\n"
            f"  \u27e8savedCell{index:03d}, [{', '.join(affine(f) for f in boundaries)}],\n"
            f"    {ilist(quotients)}, {ilist(positions)}\u27e9\n\n"
            f"theorem savedCell{index:03d}_checked : savedCell{index:03d}.check :=\n"
            f"  savedGrid{index:03d}.{'fastCheck_cell' if fast_grid else 'check_sound'} "
            "(by decide +kernel)\n\n")
    else:
        definition += (f"theorem savedCell{index:03d}_checked : savedCell{index:03d}.check := by\n"
                       "  decide +kernel\n\n")
    return definition + (
        f"theorem savedCell{index:03d}_selection_checked : savedCell{index:03d}.selectionCheck := by\n"
        "  decide +kernel\n\n"
        f"theorem savedCell{index:03d}_nonnegative : savedCell{index:03d}.nonnegativeCheck := by\n"
        "  decide +kernel\n\n"
    )


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path)
    parser.add_argument("--limit", type=int)
    parser.add_argument("--witness-json", type=Path)
    parser.add_argument("--profile-output", type=Path)
    parser.add_argument("--grid", action="store_true")
    parser.add_argument("--batch-output-dir", type=Path)
    parser.add_argument("--batch-size", type=int, default=16)
    parser.add_argument("--batch-start", type=int, default=0,
                        help="Preserve already generated batches below this index")
    parser.add_argument("--fast-batch-start", type=int,
                        help="Use the equivalent row-list checker from this batch index")
    args = parser.parse_args()
    raw = args.source.read_bytes()
    data = json.loads(raw)
    assert data["left"] == "4" and data["right"] == "26"
    assert data["even_polynomial_reflection_used"] is True
    rows = data["cells"]
    previous = Q(4)
    cells = []
    for row in rows:
        c = reconstruct(row)
        assert c["left"] == previous
        previous = c["right"]
        cells.append(c)
    assert previous == 26
    total = sum((integral(c["cost"], c["left"], c["right"]) for c in cells), Q(0))
    assert total == Q(data["cost_integral"])
    assert sum((Q(r["saved_integral_vs_entrywise_envelope"]) for r in rows), Q(0)) == Q(
        data["saved_integral_vs_entrywise_envelope"]
    )
    count = len(cells) if args.limit is None else min(args.limit, len(cells))
    if args.profile_output:
        body = ",\n  ".join(
            f"\u27e8{qlean(c['left'])}, {qlean(c['right'])}, {affine(c['cost'])}\u27e9" for c in cells)
        header = ("import OddZetaMixed.H158MiddleCellsProfileSupport\n\n"
                  f"-- Affine projection only. Source SHA-256 {sha256(raw).hexdigest()}.\n"
                  "set_option maxRecDepth 100000\nset_option maxHeartbeats 0\n\n"
                  "namespace OddZetaMixed.H158MiddleCells\n\n")
        tail = ("theorem savedProfile_coverage : profileCoverage 4 26 savedProfile := by\n"
                "  decide +kernel\n\n"
                "theorem savedProfile_checked : \u2200 c \u2208 savedProfile, c.check := by\n"
                "  decide +kernel\n\n"
                "theorem savedProfile_nodup : savedProfile.Nodup :=\n"
                "  profileCoverage_nodup savedProfile savedProfile_coverage savedProfile_checked\n\n"
                "theorem savedProfile_pairwise : savedProfile.Pairwise (fun c d => c.right \u2264 d.left) :=\n"
                "  profileCoverage_pairwise 4 26 savedProfile savedProfile_coverage\n\n"
                "theorem savedProfile_nonnegative (x : \u211d) : 0 \u2264 middleProfile savedProfile x :=\n"
                "  middleProfile_nonneg savedProfile savedProfile_checked x\n\n"
                f"theorem savedProfile_integral : (savedProfile.map ProfileCell.integral).sum = {qlean(total)} := by\n"
                "  decide +kernel\n\n"
                "end OddZetaMixed.H158MiddleCells\n")
        args.profile_output.write_text(header + f"def savedProfile : List ProfileCell :=\n  [{body}]\n\n" + tail)
    if args.witness_json:
        def serialize(value):
            if isinstance(value, Q):
                return str(value)
            if isinstance(value, (list, tuple)):
                return [serialize(v) for v in value]
            if isinstance(value, dict):
                return {k: serialize(v) for k, v in value.items()}
            return value
        witness = dict(source_sha256=sha256(raw).hexdigest(), slots=J,
                       integral=str(total), cells=serialize(cells),
                       full_lean_kernel_replay_claimed=False)
        args.witness_json.write_text(json.dumps(witness, separators=(",", ":")) + "\n")
    if args.output_dir:
        args.output_dir.mkdir(parents=True, exist_ok=True)
        for i, c in enumerate(cells[:count]):
            output = args.output_dir / f"H158MiddleCellsData{i:03d}.lean"
            header = (
                f"import OddZetaMixed.H158MiddleCells{'Grid' if args.grid else ''}\n\n"
                f"-- Generated from source SHA-256 {sha256(raw).hexdigest()}.\n"
                "set_option maxRecDepth 100000\n"
                "set_option maxHeartbeats 0\n\n"
                "namespace OddZetaMixed.H158MiddleCells\n\n"
            )
            output.write_text(header + emit_cell(c, i, args.grid) + "end OddZetaMixed.H158MiddleCells\n")
    if args.batch_output_dir:
        args.batch_output_dir.mkdir(parents=True, exist_ok=True)
        batches = []
        for start in range(1, len(cells), args.batch_size):
            batch = (start - 1) // args.batch_size
            name = f"H158MiddleCellsBatch{batch:03d}"
            batches.append(name)
            if batch < args.batch_start:
                continue
            fast = args.fast_batch_start is not None and batch >= args.fast_batch_start
            header = (f"import OddZetaMixed.H158MiddleCells{'FastGrid' if fast else 'Grid'}\n\n"
                      f"-- Source SHA-256 {sha256(raw).hexdigest()}.\n"
                      "set_option maxRecDepth 100000\nset_option maxHeartbeats 0\n\n"
                      "namespace OddZetaMixed.H158MiddleCells\n\n")
            body = "".join(emit_cell(cells[i], i, True, fast)
                           for i in range(start, min(start + args.batch_size, len(cells))))
            (args.batch_output_dir / f"{name}.lean").write_text(
                header + body + "end OddZetaMixed.H158MiddleCells\n")
        header = ("import OddZetaMixed.H158MiddleCellsData000\n"
                  "import OddZetaMixed.H158MiddleCellsSavedProfile\n" +
                  "".join(f"import OddZetaMixed.{name}\n" for name in batches) +
                  "\nset_option maxRecDepth 100000\nset_option maxHeartbeats 0\n\n"
                  "namespace OddZetaMixed.H158MiddleCells\n\n")
        names = [f"savedCell{i:03d}" for i in range(len(cells))]
        proof = ", ".join(f"{name}_checked" for name in names)
        selection_proof = ", ".join(f"{name}_selection_checked" for name in names)
        body = ("def savedCells : List Cell := [" + ", ".join(names) + "]\n\n"
                f"def savedCertificate : Certificate := \u27e8savedCells, {qlean(total)}\u27e9\n\n"
                "theorem savedCells_checked : \u2200 c \u2208 savedCells, c.check := by\n"
                "  simp only [savedCells, List.forall_mem_cons]\n"
                f"  exact \u27e8{proof}, List.forall_mem_nil _\u27e9\n\n"
                "theorem savedCells_selection_checked : \u2200 c \u2208 savedCells, c.selectionCheck := by\n"
                "  simp only [savedCells, List.forall_mem_cons]\n"
                f"  exact \u27e8{selection_proof}, List.forall_mem_nil _\u27e9\n\n"
                "theorem savedCertificate_checked : savedCertificate.check := by\n"
                "  refine \u27e8?_, savedCells_checked, ?_\u27e9 <;> decide +kernel\n\n"
                "theorem savedCertificate_integral_lt_433 : savedCertificate.integral < 433 := by\n"
                "  decide +kernel\n\n"
                "theorem savedCells_projection : savedCells.map Cell.toProfile = savedProfile := by\n"
                "  decide +kernel\n\n"
                "theorem savedCertificate_profile_checked :\n"
                "    \u2200 c \u2208 savedCertificate.cells, c.toProfile.check := by\n"
                "  intro c hc\n"
                "  apply savedProfile_checked\n"
                "  rw [\u2190 savedCells_projection]\n"
                "  exact List.mem_map.mpr \u27e8c, hc, rfl\u27e9\n\n"
                "theorem savedCertificate_nodup : savedCells.Nodup :=\n"
                "  savedCertificate.nodup savedCertificate_checked\n\n"
                "theorem savedProfile_actual_cost {p : \u2115} [Fact p.Prime]\n"
                "    (n : \u2115) (hn : 0 < n) (hlo : 4*n < p) (hhi : p \u2264 26*n)\n"
                "    (hsq : 158*n+2 < p^2) (hdet : (h158SevenMatrix n).det \u2260 0) :\n"
                "    \u2203 c \u2208 savedProfile, c.left < (p : \u211a)/n \u2227 (p : \u211a)/n \u2264 c.right \u2227\n"
                "      (-(padicValRat p (h158PrimitiveScalar n)) : \u211a) \u2264\n"
                "        (n : \u211a)*c.cost.eval ((p : \u211a)/n)+4635 := by\n"
                "  obtain \u27e8c, hc, ha, hb, hcost\u27e9 := savedCertificate.actual_cost\n"
                "    savedCertificate_checked n hn hlo hhi hsq hdet\n"
                "  refine \u27e8c.toProfile, ?_, ha, hb, hcost\u27e9\n"
                "  rw [\u2190 savedCells_projection]\n"
                "  exact List.mem_map.mpr \u27e8c, hc, rfl\u27e9\n\n"
                "#print axioms savedCertificate_checked\n"
                "#print axioms savedCertificate_integral_lt_433\n"
                "#print axioms savedCells_selection_checked\n"
                "#print axioms savedCertificate_profile_checked\n"
                "#print axioms savedCells_projection\n\n"
                "#print axioms savedProfile_actual_cost\n\n"
                "end OddZetaMixed.H158MiddleCells\n")
        (args.batch_output_dir / "H158MiddleCellsSavedCertificate.lean").write_text(header + body)
    print(json.dumps(dict(source_sha256=sha256(raw).hexdigest(), cells=len(cells),
                         max_strips=max(len(c["strips"]) for c in cells),
                         floor_checks=sum(44 * len(c["strips"]) for c in cells),
                         cost_integral=str(total), generated=count if args.output_dir else 0,
                         kernel_checked=False), indent=2))


if __name__ == "__main__":
    main()
