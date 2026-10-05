"""Independent exact low-cell reconstruction and Lean proof-input generator.

Only this task's check facade and H158LowCellsData batch modules are written.
The frozen elementary JSON and existing project sources are read-only.
Midpoints choose integer floor witnesses; rational inequalities at both
endpoints certify the entire cell. No numerical approximation is used in any
acceptance test. Use --replay for resumable serial kernel checking with -j1;
--start and --count restrict a replay to a bounded subset of batches.
"""

import argparse
from bisect import bisect_right
from collections import defaultdict
from fractions import Fraction as Q
import hashlib
import json
import os
from pathlib import Path
import signal
import subprocess
import time

ROOT = Path(__file__).resolve().parents[2]
SOURCE = ROOT / "outputs/odd_zeta_low_prime_budget_20261005_elementary.json"
ENDPOINTS = [0] + list(range(48, 69)) + list(range(90, 111)) + [158]
NORMAL = [52 - 2 * b for b in range(16)] + list(range(48, 53))
SLOTS = 24
UPPER_Q = 3
TARGET = Q(74)


def coeff(i):
    return -1 if i < 22 else (1 if i < 43 else -5)


def floor(x):
    return x.numerator // x.denominator


def ceil(x):
    return -floor(-x)


def excess(weight, tau):
    count = max(0, min(SLOTS, (weight - tau + 1) // 2))
    return count * (weight - tau) - count * (count - 1)


def reconstruct(row):
    a, b = Q(row["left"]), Q(row["right"])
    assert 0 <= a < b <= 1
    mid = (a + b) / 2
    norm = [floor(c * mid) for c in NORMAL]
    for c, k in zip(NORMAL, norm):
        assert k <= c * a and c * b <= k + 1
    nu = sum(norm[:16]) - 2 * sum(norm[16:])
    assert nu == row["nu"]
    events = sorted(
        [(i, floor(ENDPOINTS[i] * mid)) for i in range(1, 44)],
        key=lambda ik: ENDPOINTS[ik[0]] * mid - ik[1],
    )
    assert sorted(i for i, _ in events) == list(range(1, 44))
    for i, k in events:
        assert 0 <= ENDPOINTS[i] * a - k
        assert ENDPOINTS[i] * b - k <= 1
    forms = [(Q(0), Q(0))] + [(Q(-k), Q(ENDPOINTS[i])) for i, k in events]
    forms.append((Q(1), Q(0)))
    for l, r in zip(forms, forms[1:]):
        for x in (a, b):
            assert l[0] + l[1] * x <= r[0] + r[1] * x
    weight = -1 + sum(coeff(i) * k for i, k in events) - nu
    histogram = defaultdict(lambda: [Q(0), Q(0)])
    strips = []
    for j, (l, r) in enumerate(zip(forms, forms[1:])):
        assert -6 <= weight <= 20
        strips.append((l, r, weight))
        histogram[weight][0] += r[0] - l[0]
        histogram[weight][1] += r[1] - l[1]
        if j < len(events):
            weight -= coeff(events[j][0])
    histogram = {w: ab for w, ab in histogram.items() if ab != [0, 0]}
    stored = {int(w): list(map(Q, ab)) for w, ab in row["weight_histogram_affine"].items()}
    assert histogram == stored, "Original-floor reconstruction disagrees with stored histogram"
    assert sum(ab[0] for ab in histogram.values()) == 1
    assert sum(ab[1] for ab in histogram.values()) == 0
    return dict(left=a, right=b, norm=norm, events=events, strips=strips, histogram=histogram)


def produce(data):
    cells = [reconstruct(row) for row in data["profile"]["cells"]]
    assert len(cells) == 2842
    assert cells[0]["left"] == 0 and cells[-1]["right"] == 1
    assert all(a["right"] == b["left"] for a, b in zip(cells, cells[1:]))
    saved = data["signed_improvement"]["cells"]
    starts = [Q(r["q_left"]) for r in saved]
    total = Q(40, UPPER_Q)
    rectangular_total = Q(40, UPPER_Q)
    selection_count = 0
    for cell in cells:
        selections = []
        for period in range(UPPER_Q):
            a = max(Q(1, 4), period + cell["left"])
            b = period + cell["right"]
            if a >= b:
                selections.append(None)
                continue
            mid = (a + b) / 2
            source = saved[bisect_right(starts, mid) - 1]
            tau = source["selected_threshold"]
            assert isinstance(tau, int) and 20 - 2 * SLOTS <= tau <= 20
            m = floor(4 * mid)
            assert m <= 4 * a and 4 * b <= m + 1
            area_a = sum(excess(w, tau) * ab[0] for w, ab in cell["histogram"].items())
            area_b = sum(excess(w, tau) * ab[1] for w, ab in cell["histogram"].items())
            assert area_a.denominator == area_b.denominator == 1
            A = (area_a - area_b * period - m * (m + 1)) / 2
            B = area_b / 2 + 2 * tau + 4 * m
            assert min(A / a + B, A / b + B) >= 0
            integral = A * (1 / a**2 - 1 / b**2) / 2 + B * (1 / a - 1 / b)
            assert integral >= 0
            total += integral
            upper = Q(ceil(100 * max(A / a + B, A / b + B)), 100)
            rectangular_integral = upper * (1 / a - 1 / b)
            units = ceil(100000 * rectangular_integral)
            assert A + B*a <= upper*a and A + B*b <= upper*b
            assert rectangular_integral <= Q(units, 100000)
            rectangular_total += Q(units, 100000)
            selections.append(dict(left=a, right=b, tau=tau, m=m, A=A, B=B, integral=integral,
                                   upper=upper, integral_units=units))
            selections[-1].update(area_constant=area_a.numerator, area_slope=area_b.numerator)
            selection_count += 1
        cell["selections"] = selections
    assert total < TARGET, "Conservative target is not met"
    assert rectangular_total < TARGET, "Rounded rectangular certificate exceeds target"
    return cells, total, selection_count


def lean_q(x):
    x = Q(x)
    return str(x.numerator) if x.denominator == 1 else f"({x.numerator}/{x.denominator})"


PROJECT = Path(__file__).resolve().parent
CHECK = PROJECT / "OddZetaMixed/H158LowCellsCertificateCheck.lean"
DATA = PROJECT / "OddZetaMixed/H158LowCellsData"


def write_changed(path, lines):
    content = "\n".join(lines) + "\n"
    path.parent.mkdir(parents=True, exist_ok=True)
    if not path.exists() or path.read_text() != content:
        path.write_text(content)


def header(imports=None):
    return (imports or [
        "import OddZetaMixed.H158LowCells",
        "import OddZetaMixed.TrustAudit",
    ]) + ["",
        "/-! Generated original-floor certificates. Each validity proof uses kernel reduction. -/",
        "set_option maxRecDepth 100000",
        "set_option maxHeartbeats 0",
        "noncomputable section",
        "namespace OddZetaMixed.H158LowCells.Certificate",
        "",
    ]


def cell_lines(i, cell):
    name = f"profile{i:04d}"
    floors = lambda xs: "[" + ", ".join(map(str, xs)) + "]"
    events = "[" + ", ".join(f"⟨{j}, {k}⟩" for j, k in cell["events"]) + "]"
    lines = [
        f"noncomputable def {name} : ProfileCell :=",
        f"  ⟨{lean_q(cell['left'])}, {lean_q(cell['right'])},",
        f"    {floors(cell['norm'][:16])}, {floors(cell['norm'][16:])},",
        f"    {events}⟩",
        f"theorem {name}_checked : {name}.check := by decide +kernel",
        "",
    ]
    for period, s in enumerate(cell["selections"]):
        if s is None:
            continue
        sname = f"selection{period}_{i:04d}"
        lines += [
            f"noncomputable def {sname} : Selection :=",
            f"  ⟨{period}, {s['tau']}, {s['m']}, {lean_q(s['upper'])}, {s['integral_units']}, "
            f"{s['area_constant']}, {s['area_slope']}⟩",
            f"theorem {sname}_checked : {sname}.check {name} := by decide +kernel",
            "",
        ]
    return lines


def metadata(lines, entry, child_pair=None):
    name, a, b, units = entry
    if child_pair is None:
        proofs = ["by decide +kernel"] * 3
    else:
        left, right = child_pair
        proofs = [f"{left}_left", f"{right}_right",
                  f"by\n  change {left}.units+{right}.units = {units}\n"
                  f"  rw [{left}_units, {right}_units]"]
    for field, value, proof in zip(("left", "right", "units"), (lean_q(a), lean_q(b), str(units)), proofs):
        lines.append(f"theorem {name}_{field} : {name}.{field} = {value} := {proof}")


def join_tree(lines, entries, prefix, cached=False):
    level = 0
    while len(entries) > 1:
        joined = []
        for k in range(0, len(entries), 2):
            if k + 1 == len(entries):
                joined.append(entries[k])
                continue
            x, y = entries[k:k+2]
            assert x[2] == y[1], "Coverage gap between source-certified blocks"
            name = f"{prefix}_{level}_{k//2:04d}"
            proof = f"by rw [{x[0]}_right, {y[0]}_left]" if cached else "by decide +kernel"
            lines += [f"noncomputable def {name} : Block :=",
                      f"  Block.append {x[0]} {y[0]} ({proof})"]
            entry = (name, x[1], y[2], x[3]+y[3])
            if cached:
                metadata(lines, entry, (x[0], y[0]))
            joined.append(entry)
        entries = joined
        level += 1
    return entries[0]


def finish_check(lines, root):
    name, a, b, units = root
    assert a == Q(1, 4) and b == UPPER_Q
    lines += [
        f"noncomputable def lowBlock : Block := {name}",
        f"theorem lowBlock_left : lowBlock.left = 1/4 := {name}_left",
        f"theorem lowBlock_right : lowBlock.right = 3 := {name}_right",
        f"theorem lowBlock_units_value : lowBlock.units = {units} := {name}_units",
        "theorem lowBlock_units_bound : (40/3 : ℚ)+(lowBlock.units : ℚ)/100000 ≤ 74 := by",
        "  rw [lowBlock_units_value]",
        "  norm_num",
        "theorem lowBlock_integral_le_seventyFour :",
        "    (40/3 : ℚ)+(lowBlock.bands.map Band.integral).sum ≤ 74 :=",
        "  (add_le_add le_rfl lowBlock.integral_le).trans lowBlock_units_bound",
        "theorem actual_low_finite_bound {p : ℕ} [Fact p.Prime] (n : ℕ) (hn : 0 < n)",
        "    (hp4 : p ≤ 4*n) (hsq : 158*n+2 < p^2)",
        "    (hdet : (h158SevenMatrix n).det ≠ 0) :",
        "    max 0 (-(padicValRat p (h158PrimitiveScalar n)) : ℝ) ≤ lowBlock.majorant n p :=",
        "  lowBlock.primitive_positive_cost_le lowBlock_left lowBlock_right n hn hp4 hsq hdet",
        "theorem actual_low_prime_rate :",
        "    UpperQuadraticRateOn {n | (h158SevenMatrix n).det ≠ 0} actualLowPrimeCost 74 :=",
        "  lowBlock.actualLowPrimeCost_rate lowBlock_left lowBlock_right 74",
        "    lowBlock_integral_le_seventyFour",
        "#print axioms actual_low_finite_bound",
        "#print axioms actual_low_prime_rate",
        "audit_project_axioms OddZetaMixed.H158LowCells.Certificate.actual_low_finite_bound",
        "audit_project_axioms OddZetaMixed.H158LowCells.Certificate.actual_low_prime_rate",
        "end OddZetaMixed.H158LowCells.Certificate",
    ]


def emit_profiles(cells, count):
    """A small pilot only; full certificates use bounded batch modules."""
    assert count <= 128, "Use --emit-batches for the full source certificate"
    lines = header()
    for i, cell in enumerate(cells[:count]):
        lines += cell_lines(i, cell)
    lines += ["#print axioms ProfileCell.primitive_positive_cost_le",
              "end OddZetaMixed.H158LowCells.Certificate",
              "audit_project_axioms OddZetaMixed.H158LowCells.ProfileCell.primitive_positive_cost_le"]
    write_changed(CHECK, lines)
    return CHECK


def emit_batches(cells, batch_size):
    """Each module proves its own leaves, joins, endpoints and integer budget."""
    assert 1 <= batch_size <= 128
    batch_paths, periods = [], [[] for _ in range(UPPER_Q)]
    for batch, start in enumerate(range(0, len(cells), batch_size)):
        stop = min(start+batch_size, len(cells))
        lines = header()
        for i in range(start, stop):
            lines += cell_lines(i, cells[i])
        for period in range(UPPER_Q):
            entries = []
            for i in range(start, stop):
                s = cells[i]["selections"][period]
                if s is None:
                    continue
                name, p, sn = f"leaf{period}_{i:04d}", f"profile{i:04d}", f"selection{period}_{i:04d}"
                lines += [f"noncomputable def {name} : Block :=",
                          f"  Block.single {p} {sn} {p}_checked {sn}_checked"]
                entries.append((name, s["left"], s["right"], s["integral_units"]))
            if entries:
                entry = join_tree(lines, entries, f"batch{batch:03d}p{period}")
                metadata(lines, entry)
                periods[period].append(entry)
        lines += ["end OddZetaMixed.H158LowCells.Certificate"]
        path = DATA / f"Batch{batch:03d}.lean"
        write_changed(path, lines)
        batch_paths.append(path)
    lines = header([f"import OddZetaMixed.H158LowCellsData.{p.stem}" for p in batch_paths])
    root = join_tree(lines, [e for period in periods for e in period], "finalJoin", cached=True)
    finish_check(lines, root)
    write_changed(CHECK, lines)
    return batch_paths


def replay_serial(paths, start, count, timeout, memory, skip_facade):
    """One compiler at a time. A timeout stops that compiler's entire process group."""
    lake = Path.home() / ".elan/bin/lake"
    output_root = PROJECT / ".lake/build/lib/lean"
    core = output_root / "OddZetaMixed/H158LowCells.olean"

    def output(p):
        return output_root / p.relative_to(PROJECT).with_suffix(".olean")

    def fresh(p):
        o = output(p)
        return o.exists() and o.stat().st_mtime >= max(p.stat().st_mtime, core.stat().st_mtime)

    def compile_one(p):
        o = output(p)
        o.parent.mkdir(parents=True, exist_ok=True)
        log = o.with_suffix(".replay.log")
        command = [str(lake), "env", "lean", "-j1", f"-M{memory}", "-o", str(o), str(p)]
        source_hash = hashlib.sha256(p.read_bytes()).hexdigest()
        core_hash = hashlib.sha256(core.read_bytes()).hexdigest()
        preface = (f"command: {command!r}\nsource_sha256: {source_hash}\n"
                   f"core_olean_sha256: {core_hash}\n")
        begin = time.monotonic()
        print(f"START {p.name} (-j1 -M{memory})", flush=True)
        with subprocess.Popen(command,
                              cwd=PROJECT, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                              text=True, start_new_session=True) as proc:
            try:
                text, _ = proc.communicate(timeout=timeout)
            except subprocess.TimeoutExpired:
                os.killpg(proc.pid, signal.SIGTERM)
                try:
                    text, _ = proc.communicate(timeout=10)
                except subprocess.TimeoutExpired:
                    os.killpg(proc.pid, signal.SIGKILL)
                    text, _ = proc.communicate()
                log.write_text(preface+f"TIMEOUT {timeout}s\n"+text)
                o.unlink(missing_ok=True)
                print(text, flush=True)
                raise RuntimeError(f"Timed out after {timeout}s: {p.name}")
            if text:
                print(text, end="" if text.endswith("\n") else "\n", flush=True)
            if proc.returncode:
                log.write_text(preface+f"exit_code: {proc.returncode}\n"+text)
                o.unlink(missing_ok=True)
                raise RuntimeError(f"Lean rejected {p.name}, exit {proc.returncode}")
        elapsed = time.monotonic()-begin
        log.write_text(preface+f"exit_code: 0\nelapsed_seconds: {elapsed:.3f}\n"+text)
        print(f"PASS {p.name} {elapsed:.1f}s", flush=True)

    stop = len(paths) if count is None else min(start+count, len(paths))
    for p in paths[start:stop]:
        if fresh(p):
            print(f"CACHED {p.name}", flush=True)
        else:
            compile_one(p)
    if not skip_facade and all(fresh(p) for p in paths):
        compile_one(CHECK)
        return True
    return False


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--audit", action="store_true", help="reconstruct and audit every frozen geometric cell")
    parser.add_argument("--emit-profiles", type=int, default=0,
                        help="emit a pilot of at most 128 profiles; use --emit-batches for all profiles")
    parser.add_argument("--emit-batches", action="store_true")
    parser.add_argument("--batch-size", type=int, default=64)
    parser.add_argument("--replay", action="store_true", help="replay serially with -j1, reusing checked batches")
    parser.add_argument("--start", type=int, default=0)
    parser.add_argument("--count", type=int)
    parser.add_argument("--timeout", type=int, default=300)
    parser.add_argument("--memory", type=int, default=4096, help="per-compiler Lean memory limit in MB")
    parser.add_argument("--skip-facade", action="store_true", help="use for disjoint workers; check facade once afterwards")
    args = parser.parse_args()
    data = json.loads(SOURCE.read_text())
    cells, total, count = produce(data)
    units = sum(s["integral_units"] for c in cells for s in c["selections"] if s is not None)
    rectangle_bound = Q(40, UPPER_Q) + Q(units, 100000)
    if args.emit_profiles:
        assert not args.emit_batches and not args.replay
        assert 0 < args.emit_profiles <= len(cells)
        print(emit_profiles(cells, args.emit_profiles))
    checked = False
    if args.emit_batches or args.replay:
        paths = emit_batches(cells, args.batch_size)
        print(f"Generated {len(paths)} bounded batch modules and {CHECK.name}", flush=True)
        if args.replay:
            checked = replay_serial(paths, args.start, args.count, args.timeout, args.memory, args.skip_facade)
    print(json.dumps({
        "geometric_cells_reconstructed_from_original_floors": len(cells),
        "single_threshold_cells": count,
        "slots": SLOTS,
        "reciprocal_upper": UPPER_Q,
        "coarse_tail": str(Q(40, UPPER_Q)),
        "upper_decimal_display_only": float(total),
        "rounded_step_units": units,
        "rounded_step_bound_exact": str(rectangle_bound),
        "rounded_step_bound_decimal_display_only": float(rectangle_bound),
        "conservative_upper": str(TARGET),
        "conservative_comparison_exact": total < TARGET,
        "kernel_checked": checked,
    }, indent=2))


if __name__ == "__main__":
    main()
