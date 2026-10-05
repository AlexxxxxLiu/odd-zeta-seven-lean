"""Emit complete saved endpoint partitions as kernel-checked Lean certificates.

Only the cell coordinates, root sets, theta values, and requested ceilings are
read from the saved JSON. Its numerical interval bounds are deliberately unused.
"""

import argparse
import json
from pathlib import Path

from generate_compact_phase import (
    ARGS, PROJECT, SOURCE, Emitter, Q, fmt, pair_bound, phase_bounds,
)


def emit_phase(e, j, l, r):
    c = (l+r)/2
    B, U = phase_bounds(l, r)
    if l == 0 and r == 3:
        return "first_phase_cell", U
    log_names = [e.log(a*a+c*c)[0] for a in ARGS]
    atan_names = [e.atan(c/a)[0] for a in ARGS]
    left_names = [e.atan(l/a)[0] for a in ARGS]
    right_names = [e.atan(r/a)[0] for a in ARGS]
    e.array(f"centerLogs_{j}",
            f"∀ i, Enclosure (Real.log ((phaseArg i^2+({fmt(c)} : ℚ)^2 : ℚ) : ℝ))",
            log_names, "")
    for name, x, names in (("centerAtans", c, atan_names),
                           ("leftAtans", l, left_names), ("rightAtans", r, right_names)):
        e.array(f"{name}_{j}",
                f"∀ i, Enclosure (Real.arctan (({fmt(x)}/phaseArg i : ℚ) : ℝ))",
                names, "")
    e.put(f"def centerE_{j} := phaseEnclosure {fmt(c)} constantE piE centerLogs_{j} centerAtans_{j}\n")
    e.put(f"theorem phase_cell_{j} {{s : ℝ}}\n"
          f"    (hs : ({fmt(l)} : ℚ) ≤ s ∧ s ≤ ({fmt(r)} : ℚ)) :\n"
          f"    h158Phase s ≤ ({fmt(U)} : ℚ) := by\n"
          f"  apply phase_enclosed_cell {fmt(l)} {fmt(r)} {fmt(c)} {fmt(B)} {fmt(U)}\n"
          f"    (by decide +kernel) (by decide +kernel) centerE_{j} piE leftAtans_{j} rightAtans_{j}\n"
          "  · decide +kernel\n"
          "  · decide +kernel\n"
          "  · decide +kernel\n"
          "  · exact hs\n")
    return f"phase_cell_{j}", U


def emit_potential(e, k, j, rec, l, r, phase_name, U):
    theta, ceiling = Q(rec["theta"]), Q(rec["ceiling"])
    b = k//2
    name = f"potential_cell_{j}"
    if theta == 0:
        e.put(f"theorem {name} {{s : ℝ}}\n"
              f"    (hs : ({fmt(l)} : ℚ) ≤ s ∧ s ≤ ({fmt(r)} : ℚ)) :\n"
              f"    h158PhasePotential (fun i => (h158PhaseRoots {b} i : ℝ)) {fmt(theta)} s ≤ ({fmt(ceiling)} : ℚ) := by\n"
              "  apply potential_zero_cell_le\n"
              f"  exact ({phase_name} (by simpa using hs)).trans (by norm_num)\n")
        return name
    roots = list(map(Q, rec["roots"]))
    pair_names, pair_values = zip(*(e.log(pair_bound(l, r, a)) for a in roots))
    final = U+theta/8*sum((bounds[1] for bounds in pair_values), Q(0))
    assert final <= ceiling, (k, j, final, ceiling)
    e.array(f"pairLogs_{j}",
            f"∀ i, Enclosure (Real.log ((pairBound {fmt(l)} {fmt(r)} (h158PhaseRoots {b} i) : ℚ) : ℝ))",
            pair_names, "")
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


def emit_join(e, cells, names, positive, indent="  "):
    if len(cells) == 1:
        e.put(f"{indent}exact {names[0]} (by simpa using hs){' hpositive' if positive else ''}")
        return
    mid = len(cells)//2
    boundary = cells[mid][0]
    e.put(f"{indent}apply interval_join (m := ({fmt(boundary)} : ℚ)) ?_ ?_ hs")
    e.put(f"{indent}· intro hs")
    emit_join(e, cells[:mid], names[:mid], positive, indent+"  ")
    e.put(f"{indent}· intro hs")
    emit_join(e, cells[mid:], names[mid:], positive, indent+"  ")


def generate(k):
    records = json.loads(SOURCE.read_text())["rank_two_phase_replay"]["records"]
    rec = records[k]
    b = k//2
    cells = [tuple(map(Q, row[:2])) for row in rec["cells"]]
    cells.sort()
    assert cells[0][0] == 0 and cells[-1][1] == 96
    assert all(l < r for l, r in cells)
    assert all(cells[j][1] == cells[j+1][0] for j in range(len(cells)-1))
    e = Emitter()
    e.put("-- Generated by generate_compact_phase_endpoints.py using exact rational witnesses.\n"
          "import OddZetaMixed.H158CompactPhaseCertificates\n\n"
          "noncomputable section\n"
          "set_option maxRecDepth 100000\n"
          "set_option maxHeartbeats 0\n"
          f"namespace OddZetaMixed.CompactPhase.Endpoint{k:02d}\n"
          "open Finset Certificates\n")
    names = []
    for j, (l, r) in enumerate(cells):
        phase_name, U = emit_phase(e, j, l, r)
        names.append(emit_potential(e, k, j, rec, l, r, phase_name, U))
        e.put(f"#check {names[-1]}\n")
    theta, ceiling = Q(rec["theta"]), Q(rec["ceiling"])
    e.put("theorem compact_endpoint {s : ℝ} (hs : 0 ≤ s ∧ s ≤ 96)")
    if theta:
        e.put(f"    (hpositive : ∀ i, 0 < h158AdaptivePairModulus 75 (h158PhaseRoots {b} i : ℝ) s)")
    e.put(f"    : h158PhasePotential (fun i => (h158PhaseRoots {b} i : ℝ)) {fmt(theta)} s ≤ ({fmt(ceiling)} : ℚ) := by")
    emit_join(e, cells, names, bool(theta))
    e.put(f"\nend OddZetaMixed.CompactPhase.Endpoint{k:02d}\n")
    target = PROJECT / f"OddZetaMixed/H158CompactPhaseEndpoint{k:02d}.lean"
    target.write_text("\n".join(e.lines))
    print(json.dumps({"output": str(target), "endpoint": k, "cells": len(cells),
                      "logs": len(e.logs), "atans": len(e.atans), "bytes": target.stat().st_size,
                      "interval": ["0", "96"], "original_ceiling": str(ceiling)}), flush=True)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("endpoints", nargs="+", type=int, choices=range(16))
    args = parser.parse_args()
    for endpoint in args.endpoints:
        generate(endpoint)
