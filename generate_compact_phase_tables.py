"""Generate compact proof tables with exactly the original enclosure endpoints.

This uses the same LOG_N, D, OUT_D and phase upper bounds as the audited baseline.
Only atan truncation orders may decrease, after an exact rational comparison
shows that the shorter series still proves the identical rounded witnesses.
Lean checks every table entry, every phase comparison, and partition coverage.
"""

import argparse
import json
import subprocess
from collections import Counter
from functools import lru_cache

from generate_compact_phase import (
    ARGS, ATAN_N, PI_L, PI_U, PROJECT, SOURCE, Emitter, Q, atan_bounds,
    fmt, log_bounds, pair_bound, phase_bounds,
)
from generate_compact_phase_endpoints import emit_join


def atan_exact(q, n):
    def small(x):
        lo = sum(((-1)**i*x**(2*i+1)/Q(2*i+1) for i in range(2*n)), Q(0))
        return lo, lo+x**(4*n+1)/Q(4*n+1)
    if q <= Q(1, 2):
        return small(q)
    if q <= 1:
        lo, hi = small((1-q)/(1+q))
        return PI_L/4-hi, PI_U/4-lo
    if q <= 2:
        lo, hi = small((q-1)/(q+1))
        return PI_L/4+lo, PI_U/4+hi
    lo, hi = small(1/q)
    return PI_L/2-hi, PI_U/2-lo


@lru_cache(maxsize=None)
def atan_order(q):
    lo, hi = atan_bounds(q)
    for n in range(ATAN_N+1):
        lower, upper = atan_exact(q, n)
        if lo <= lower and upper <= hi:
            return n
    raise AssertionError((q, lo, hi))


class Tables(Emitter):
    def __init__(self):
        super().__init__()
        self.at_points = {}
        self.orders = Counter()

    def log_table(self, name, values, expression):
        rows = []
        for q in values:
            k, lo, hi = log_bounds(q)
            rows.append(f"⟨{k}, {fmt(lo)}, {fmt(hi)}⟩")
        self.put(f"def {name}Data : Fin {len(rows)} → LogWitness :=\n  ![" + ",\n    ".join(rows) + "]\n")
        self.put(f"def {name} := logEnclosures (fun i => {expression}) {name}Data (by decide +kernel)\n")

    def atan_point(self, x):
        if x in self.at_points:
            return self.at_points[x]
        name = f"atans_{len(self.at_points)}"
        rows = []
        for a in ARGS:
            q = x/a
            n = atan_order(q)
            lo, hi = atan_bounds(q)
            rows.append(f"⟨{n}, {fmt(lo)}, {fmt(hi)}⟩")
            self.orders[n] += 1
        self.put(f"def {name}Data : Fin 44 → AtanWitness :=\n  ![" + ",\n    ".join(rows) + "]\n")
        self.put(f"def {name} := atanEnclosures (fun i => ({fmt(x)} : ℚ)/phaseArg i)\n"
                 f"  {name}Data (by decide +kernel)\n")
        self.at_points[x] = name
        return name


def emit_phase(e, j, l, r):
    c = (l+r)/2
    B, U = phase_bounds(l, r)
    if l == 0 and r == 3:
        return "first_phase_cell", U
    e.log_table(f"centerLogs_{j}", [a*a+c*c for a in ARGS],
                f"phaseArg i^2+({fmt(c)} : ℚ)^2")
    ac, al, ar = [e.atan_point(x) for x in (c, l, r)]
    e.put(f"def centerE_{j} := phaseEnclosure {fmt(c)} constantE piE centerLogs_{j} {ac}\n")
    e.put(f"theorem phase_cell_{j} {{s : ℝ}}\n"
          f"    (hs : ({fmt(l)} : ℚ) ≤ s ∧ s ≤ ({fmt(r)} : ℚ)) :\n"
          f"    h158Phase s ≤ ({fmt(U)} : ℚ) := by\n"
          f"  apply phase_enclosed_cell {fmt(l)} {fmt(r)} {fmt(c)} {fmt(B)} {fmt(U)}\n"
          f"    (by decide +kernel) (by decide +kernel) centerE_{j} piE {al} {ar}\n"
          "  · decide +kernel\n"
          "  · decide +kernel\n"
          "  · decide +kernel\n"
          "  · exact hs\n")
    return f"phase_cell_{j}", U


def emit_potential(e, k, j, rec, l, r, phase_name, U):
    theta, ceiling = Q(rec["theta"]), Q(rec["ceiling"])
    b = k//2
    roots = list(map(Q, rec["roots"]))
    values = [pair_bound(l, r, a) for a in roots]
    assert U+theta/8*sum((log_bounds(q)[2] for q in values), Q(0)) <= ceiling
    e.log_table(f"pairLogs_{j}", values, f"pairBound {fmt(l)} {fmt(r)} (h158PhaseRoots {b} i)")
    name = f"potential_cell_{j}"
    e.put(f"theorem {name} {{s : ℝ}}\n"
          f"    (hs : ({fmt(l)} : ℚ) ≤ s ∧ s ≤ ({fmt(r)} : ℚ))\n"
          f"    (hpositive : ∀ i, 0 < h158AdaptivePairModulus 75 (h158PhaseRoots {b} i : ℝ) s) :\n"
          f"    h158PhasePotential (fun i => (h158PhaseRoots {b} i : ℝ)) {fmt(theta)} s ≤ ({fmt(ceiling)} : ℚ) := by\n"
          f"  have h := potential_cell_le (fun i => (h158PhaseRoots {b} i : ℝ))\n"
          f"    (theta := {fmt(theta)}) (by norm_num) ({phase_name} (by simpa using hs))\n"
          f"    (fun i => (pairBound {fmt(l)} {fmt(r)} (h158PhaseRoots {b} i) : ℝ))\n"
          f"    (fun i => ((pairLogs_{j} i).hi : ℝ)) hpositive\n"
          f"    (fun i => pair_le_pairBound {fmt(l)} {fmt(r)} (h158PhaseRoots {b} i) (by decide +kernel)\n"
          f"      (by have hq := (h158PhaseRoots_bounds ({b} : Fin 8) i).1.le; exact_mod_cast hq) hs)\n"
          f"    (fun i => (pairLogs_{j} i).upper)\n"
          f"  have hq : ({fmt(U)} : ℚ)+{fmt(theta)}/8*∑ i, (pairLogs_{j} i).hi ≤ {fmt(ceiling)} := by decide +kernel\n"
          f"  have hreal : ((({fmt(U)} : ℚ)+{fmt(theta)}/8*∑ i, (pairLogs_{j} i).hi : ℚ) : ℝ) ≤ ({fmt(ceiling)} : ℚ) := Rat.cast_le.mpr hq\n"
          "  apply h.trans\n"
          "  push_cast at hreal\n"
          "  norm_num at hreal ⊢\n"
          "  exact hreal\n")
    return name


def generate(k, limit=None, start=0, batch=None):
    records = json.loads(SOURCE.read_text())["rank_two_phase_replay"]["records"]
    rec = records[k]
    b = k//2
    cells = sorted(tuple(map(Q, row[:2])) for row in rec["cells"])
    if limit is not None:
        cells = cells[start:start+limit]
    assert cells
    assert start or cells[0][0] == 0
    assert limit is not None or cells[-1][1] == 96
    assert all(l < r for l, r in cells)
    assert all(cells[j][1] == cells[j+1][0] for j in range(len(cells)-1))
    e = Tables()
    namespace = f"OddZetaMixed.CompactPhase.Endpoint{k:02d}"
    if batch is not None:
        namespace += f".Batch{batch:02d}"
    e.put("-- Generated by generate_compact_phase_tables.py; every table is kernel checked.\n"
          "import OddZetaMixed.H158CompactPhaseCertificates\n"
          "import OddZetaMixed.H158CompactPhaseData\n\n"
          "noncomputable section\n"
          "set_option maxRecDepth 100000\n"
          "set_option maxHeartbeats 0\n"
          "set_option Elab.async false\n"
          f"namespace {namespace}\n"
          "open Finset Certificates\n")
    names = []
    for j, (l, r) in enumerate(cells):
        phase_name, U = emit_phase(e, j, l, r)
        names.append(emit_potential(e, k, j, rec, l, r, phase_name, U))
    theta, ceiling = Q(rec["theta"]), Q(rec["ceiling"])
    summary = "compact_endpoint" if limit is None else "covered_endpoint"
    e.put(f"theorem {summary} {{s : ℝ}} (hs : ({fmt(cells[0][0])} : ℚ) ≤ s ∧ s ≤ ({fmt(cells[-1][1])} : ℚ))\n"
          f"    (hpositive : ∀ i, 0 < h158AdaptivePairModulus 75 (h158PhaseRoots {b} i : ℝ) s) :\n"
          f"    h158PhasePotential (fun i => (h158PhaseRoots {b} i : ℝ)) {fmt(theta)} s ≤ ({fmt(ceiling)} : ℚ) := by")
    emit_join(e, cells, names, True)
    e.put(f"\nend {namespace}\n")
    suffix = "" if batch is None else f"Batch{batch:02d}"
    target = PROJECT / f"OddZetaMixed/H158CompactPhaseEndpoint{k:02d}{suffix}.lean"
    target.write_text("\n".join(e.lines))
    print(json.dumps({"output": str(target), "endpoint": k, "cells": len(cells),
                      "bytes": target.stat().st_size, "atan_orders": dict(e.orders),
                      "interval": [str(cells[0][0]), str(cells[-1][1])], "original_ceiling": str(ceiling),
                      "unchanged_rounded_witnesses": True}), flush=True)
    return target


def generate_batches(k, batch_size):
    rec = json.loads(SOURCE.read_text())["rank_two_phase_replay"]["records"][k]
    cells = sorted(tuple(map(Q, row[:2])) for row in rec["cells"])
    targets = []
    ranges = []
    names = []
    for batch, start in enumerate(range(0, len(cells), batch_size)):
        targets.append(generate(k, batch_size, start, batch))
        ranges.append((cells[start][0], cells[min(start+batch_size, len(cells))-1][1]))
        names.append(f"Batch{batch:02d}.covered_endpoint")
    e = Emitter()
    for target in targets:
        e.put(f"import OddZetaMixed.{target.stem}")
    e.put("\nnoncomputable section\n"
          f"namespace OddZetaMixed.CompactPhase.Endpoint{k:02d}\n")
    theta, ceiling = Q(rec["theta"]), Q(rec["ceiling"])
    e.put("theorem compact_endpoint {s : ℝ} (hs : 0 ≤ s ∧ s ≤ 96)\n"
          f"    (hpositive : ∀ i, 0 < h158AdaptivePairModulus 75 (h158PhaseRoots {k//2} i : ℝ) s) :\n"
          f"    h158PhasePotential (fun i => (h158PhaseRoots {k//2} i : ℝ)) {fmt(theta)} s ≤ ({fmt(ceiling)} : ℚ) := by")
    emit_join(e, ranges, names, True)
    e.put(f"\nend OddZetaMixed.CompactPhase.Endpoint{k:02d}\n")
    target = PROJECT / f"OddZetaMixed/H158CompactPhaseEndpoint{k:02d}.lean"
    target.write_text("\n".join(e.lines))
    targets.append(target)
    return targets


def compile_serial(targets):
    for target in targets:
        relative = target.relative_to(PROJECT)
        output = PROJECT / ".lake/build/lib/lean" / relative.with_suffix(".olean")
        print(json.dumps({"compiling": str(relative), "threads": 1}), flush=True)
        subprocess.run(["/Users/jingweiliu/.elan/bin/lake", "env", "lean", "-j", "1",
                        "-o", str(output), str(relative)], cwd=PROJECT, check=True)
        print(json.dumps({"compiled": str(relative)}), flush=True)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("endpoints", nargs="+", type=int, choices=range(2, 16))
    parser.add_argument("--limit", type=int, help="Generate only this many initial cells as a pilot")
    parser.add_argument("--batch-size", type=int, default=8, help="Cells per bounded proof file")
    parser.add_argument("--compile", action="store_true", help="Compile generated files serially with one Lean worker")
    args = parser.parse_args()
    if args.batch_size < 1 or (args.limit is not None and args.limit < 1):
        parser.error("batch size and limit must be positive")
    for endpoint in args.endpoints:
        targets = ([generate(endpoint, args.limit)] if args.limit is not None else
                   generate_batches(endpoint, args.batch_size))
        if args.compile:
            compile_serial(targets)
