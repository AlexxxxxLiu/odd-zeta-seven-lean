"""Generate exact rational Lean witnesses; no floating-point or Arb bounds are trusted."""

import argparse
import json
from fractions import Fraction as Q
from functools import lru_cache
from pathlib import Path

PROJECT = Path(__file__).resolve().parent
SOURCE = PROJECT.parent.parent / "outputs/odd_zeta_global_dependency_audit_20261005.json"
D = 10**12
OUT_D = 10**10
LOG_N = 12
ATAN_N = 10
PI_L = Q(314159265358979323846, 10**20)
PI_U = Q(314159265358979323847, 10**20)
ARGS = [Q(154), Q(4)] + list(map(Q, range(44, 65))) + list(map(Q, range(106, 85, -1)))
WEIGHTS = [5, 5] + [1]*21 + [-1]*21
CARGS = list(map(Q, range(52, 21, -2))) + list(map(Q, range(48, 53)))
CWEIGHTS = CARGS[:16] + [-2*q for q in CARGS[16:]]


def down(q, d=OUT_D):
    return Q(q.numerator*d // q.denominator, d)


def up(q, d=OUT_D):
    return -down(-q, d)


def log_unit(q):
    x = (q-1)/(q+1)
    terms = [x**(2*i+1)/Q(2*i+1) for i in range(LOG_N)]
    return (2*sum((down(t, D) for t in terms), Q(0)),
            2*sum((up(t, D) for t in terms), Q(0)) + up(2*x**(2*LOG_N+1)/(1-x*x), D))


@lru_cache(maxsize=None)
def log_bounds(q):
    assert q > 0
    k = q.numerator.bit_length()-q.denominator.bit_length()
    while q / Q(2)**k < 1:
        k -= 1
    while q / Q(2)**k > 2:
        k += 1
    lo, hi = log_unit(q/Q(2)**k)
    l2, u2 = log_unit(Q(2))
    return k, down(lo+k*(l2 if k >= 0 else u2)), up(hi+k*(u2 if k >= 0 else l2))


def atan_small(q):
    lo = sum(((-1)**i*q**(2*i+1)/Q(2*i+1) for i in range(2*ATAN_N)), Q(0))
    return lo, lo+q**(4*ATAN_N+1)/Q(4*ATAN_N+1)


@lru_cache(maxsize=None)
def atan_bounds(q):
    assert q >= 0
    if q <= Q(1, 2):
        lo, hi = atan_small(q)
    elif q <= 1:
        l, u = atan_small((1-q)/(1+q))
        lo, hi = PI_L/4-u, PI_U/4-l
    elif q <= 2:
        l, u = atan_small((q-1)/(q+1))
        lo, hi = PI_L/4+l, PI_U/4+u
    else:
        l, u = atan_small(1/q)
        lo, hi = PI_L/2-u, PI_U/2-l
    return down(lo), up(hi)


def scale(q, bounds):
    lo, hi = bounds
    return (q*lo, q*hi) if q >= 0 else (q*hi, q*lo)


def add(*bounds):
    return tuple(sum((b[j] for b in bounds), Q(0)) for j in (0, 1))


def fmt(q):
    q = Q(q)
    return str(q.numerator) if q.denominator == 1 else f"({q.numerator}/{q.denominator})"


def pair_bound(l, r, a):
    return max((l*l-a*a)**2, (r*r-a*a)**2)*((r+a)**2+22500)*(max((l-a)**2, (r-a)**2)+22500)


@lru_cache(maxsize=None)
def phase_bounds(l, r):
    c = (l+r)/2
    constant = add(*(scale(w, log_bounds(a)[1:]) for a, w in zip(CARGS, CWEIGHTS)))
    point = add(constant, scale(3*c, (PI_L, PI_U)),
                *(scale(w, add(scale(a/2, log_bounds(a*a+c*c)[1:]),
                               scale(-c, atan_bounds(c/a)))) for a, w in zip(ARGS, WEIGHTS)))
    slope = add(scale(3, (PI_L, PI_U)),
                *(scale(-w, (atan_bounds(l/a)[0], atan_bounds(r/a)[1])) for a, w in zip(ARGS, WEIGHTS)))
    B = up(max(map(abs, slope)))
    return B, up(point[1]+B*(r-l)/2)


def audit():
    records = json.loads(SOURCE.read_text())["rank_two_phase_replay"]["records"]
    passed, failed = [], []
    for k, rec in enumerate(records):
        theta, ceiling = Q(rec["theta"]), Q(rec["ceiling"])
        roots = list(map(Q, rec["roots"]))
        for j, row in enumerate(rec["cells"]):
            l, r = map(Q, row[:2])
            _, U = phase_bounds(l, r)
            total = U+theta/8*sum((log_bounds(pair_bound(l,r,a))[2] for a in roots), Q(0)) if theta else U
            margin = ceiling-total
            (passed if margin >= 0 else failed).append((k,j,str(l),str(r),str(margin)))
        print(json.dumps({"endpoint": k, "passed": len(passed), "failed": len(failed)}), flush=True)
    print(json.dumps({"exact_rational_proposal_audit": True, "lean_certificate": False,
                      "passed": len(passed), "failed": failed,
                      "min_margin": min(passed, key=lambda r:Q(r[-1]))}))


class Emitter:
    def __init__(self):
        self.lines = []
        self.logs = {}
        self.atans = {}

    def put(self, text=""):
        self.lines.append(text)

    def log(self, q):
        q = Q(q)
        if q not in self.logs:
            name = f"log_{len(self.logs)}"
            k, lo, hi = log_bounds(q)
            self.put(f"def {name} : Enclosure (Real.log ({fmt(q)} : ℚ)) := by\n"
                     f"  have h := RationalLogBounds.of_checkRounded {fmt(q)} ({k}) {LOG_N} {D}\n"
                     f"    {fmt(lo)} {fmt(hi)} (by decide +kernel)\n"
                     f"  exact ⟨{fmt(lo)}, {fmt(hi)}, h.1, h.2⟩\n")
            self.logs[q] = (name, (lo, hi))
        return self.logs[q]

    def atan(self, q):
        q = Q(q)
        if q not in self.atans:
            name = f"atan_{len(self.atans)}"
            lo, hi = atan_bounds(q)
            self.put(f"def {name} : Enclosure (Real.arctan ({fmt(q)} : ℚ)) := by\n"
                     f"  have h := RationalArctanBounds.of_check {fmt(q)} {ATAN_N}\n"
                     f"    {fmt(lo)} {fmt(hi)} (by decide +kernel)\n"
                     f"  exact ⟨{fmt(lo)}, {fmt(hi)}, h.1, h.2⟩\n")
            self.atans[q] = (name, (lo, hi))
        return self.atans[q]

    def array(self, name, typ, entries, simp):
        self.put(f"def {name} : {typ} := by")
        for entry in entries:
            self.put("  refine Fin.cases ?_ ?_")
            self.put(f"  · exact {entry}.ofRatEq (by decide +kernel)")
        self.put("  exact fun i => Fin.elim0 i")
        self.put()


def generate(first_only=True):
    records = json.loads(SOURCE.read_text())["rank_two_phase_replay"]["records"]
    assert len(records) == 16
    e = Emitter()
    e.put("-- Generated by generate_compact_phase.py from exact rational arithmetic.\n"
          "import OddZetaMixed.H158CompactPhase\n"
          "import OddZetaMixed.RationalLogBounds\n"
          "import OddZetaMixed.RationalArctanBounds\n\n"
          "noncomputable section\n"
          "set_option maxRecDepth 100000\n"
          "set_option maxHeartbeats 0\n"
          "namespace OddZetaMixed.CompactPhase.Certificates\n"
          "open Finset\n")
    e.put("def piE : Enclosure Real.pi :=\n"
          "  ⟨RationalArctanBounds.piLower, RationalArctanBounds.piUpper,\n"
          "    RationalArctanBounds.pi_sound.1, RationalArctanBounds.pi_sound.2⟩\n")
    cnames, cbounds = zip(*(e.log(q) for q in CARGS))
    e.array("constantLogs", "∀ i, Enclosure (Real.log (constantArg i : ℝ))", cnames, "constantArg")
    e.put("def constantE := constantEnclosure constantLogs\n")
    e.put('#check constantE\n')
    constant_bounds = add(*(scale(w, b) for w, b in zip(CWEIGHTS, cbounds)))
    l, r = Q(0), Q(3)
    c = (l+r)/2
    log_names, log_values = zip(*(e.log(a*a+c*c) for a in ARGS))
    atan_names, atan_values = zip(*(e.atan(c/a) for a in ARGS))
    left_names, left_values = zip(*(e.atan(l/a) for a in ARGS))
    right_names, right_values = zip(*(e.atan(r/a) for a in ARGS))
    e.array("centerLogs", f"∀ i, Enclosure (Real.log ((phaseArg i^2+({fmt(c)} : ℚ)^2 : ℚ) : ℝ))", log_names, "phaseArg")
    for name, x, names in (("centerAtans", c, atan_names), ("leftAtans", l, left_names), ("rightAtans", r, right_names)):
        e.array(name, f"∀ i, Enclosure (Real.arctan (({fmt(x)}/phaseArg i : ℚ) : ℝ))", names, "phaseArg")
    e.put(f"def centerE := phaseEnclosure {fmt(c)} constantE piE centerLogs centerAtans\n")
    e.put('#check centerE\n')
    p = add(constant_bounds, scale(3*c, (PI_L, PI_U)),
            *(scale(w, add(scale(a/2, lb), scale(-c, ab))) for a, w, lb, ab in zip(ARGS, WEIGHTS, log_values, atan_values)))
    ds = add(scale(3, (PI_L, PI_U)), *(scale(-w, (al[0], ar[1])) for w, al, ar in zip(WEIGHTS, left_values, right_values)))
    B = up(max(abs(ds[0]), abs(ds[1])))
    U = up(p[1]+B*(r-l)/2)
    defs = "centerE, phaseEnclosure, constantE, constantEnclosure, constantLogs, centerLogs, centerAtans, leftAtans, rightAtans, piE, derivativeEnclosure, Enclosure.add, Enclosure.sub, Enclosure.scale, Enclosure.sum, Enclosure.congr, xEnclosure, phaseArg, phaseWeight, constantArg, constantWeight, RationalArctanBounds.piLower, RationalArctanBounds.piUpper, Fin.sum_univ_succ"
    defs += ", " + ", ".join(name for name, _ in e.logs.values())
    defs += ", " + ", ".join(name for name, _ in e.atans.values())
    e.put(f"theorem first_phase_cell {{s : ℝ}} (hs : 0 ≤ s ∧ s ≤ 3) : h158Phase s ≤ ({fmt(U)} : ℚ) := by\n"
          f"  apply phase_enclosed_cell 0 3 {fmt(c)} {fmt(B)} {fmt(U)}\n"
          "    (by norm_num) (by norm_num) centerE piE leftAtans rightAtans\n"
          "  · decide +kernel\n"
          "  · decide +kernel\n"
          "  · decide +kernel\n"
          "  · simpa using hs\n")
    for k, rec in enumerate(records):
        roots = list(map(Q, rec["roots"]))
        theta, ceiling = Q(rec["theta"]), Q(rec["ceiling"])
        b = k//2
        if theta == 0:
            assert U <= ceiling
            e.put(f"theorem endpoint_{k}_first_cell {{s : ℝ}} (hs : 0 ≤ s ∧ s ≤ 3) :\n"
                  f"    h158PhasePotential (fun j => (h158PhaseRoots {b} j : ℝ)) {fmt(theta)} s ≤ ({fmt(ceiling)} : ℝ) := by\n"
                  "  apply potential_zero_cell_le\n"
                  "  exact (first_phase_cell hs).trans (by norm_num)\n")
            continue
        pair_names, pair_values = zip(*(e.log(pair_bound(l, r, a)) for a in roots))
        final = U+theta/8*sum((bounds[1] for bounds in pair_values), Q(0))
        assert final <= ceiling, (k, final, ceiling)
        e.array(f"pairLogs_{k}", f"∀ i, Enclosure (Real.log ((pairBound 0 3 (h158PhaseRoots {b} i) : ℚ) : ℝ))", pair_names, "pairBound, h158PhaseRoots")
        local_defs = f"pairLogs_{k}, Fin.sum_univ_succ, " + ", ".join(pair_names)
        e.put(f"theorem endpoint_{k}_first_cell {{s : ℝ}} (hs : 0 ≤ s ∧ s ≤ 3)\n"
              f"    (hpositive : ∀ j, 0 < h158AdaptivePairModulus 75 (h158PhaseRoots {b} j : ℝ) s) :\n"
              f"    h158PhasePotential (fun j => (h158PhaseRoots {b} j : ℝ)) {fmt(theta)} s ≤ ({fmt(ceiling)} : ℝ) := by\n"
              f"  have h := potential_cell_le (fun j => (h158PhaseRoots {b} j : ℝ))\n"
              f"    (theta := {fmt(theta)}) (by norm_num) (first_phase_cell hs)\n"
              f"    (fun j => (pairBound 0 3 (h158PhaseRoots {b} j) : ℝ))\n"
              f"    (fun j => ((pairLogs_{k} j).hi : ℝ)) hpositive\n"
              f"    (fun j => pair_le_pairBound 0 3 (h158PhaseRoots {b} j) (by norm_num)\n"
              f"      (by have hq := (h158PhaseRoots_bounds ({b} : Fin 8) j).1.le; exact_mod_cast hq) (by simpa using hs))\n"
              f"    (fun j => (pairLogs_{k} j).upper)\n"
              f"  have hq : ({fmt(U)} : ℚ)+{fmt(theta)}/8*∑ j, (pairLogs_{k} j).hi ≤ {fmt(ceiling)} := by decide +kernel\n"
              f"  have hreal : ((({fmt(U)} : ℚ)+{fmt(theta)}/8*∑ j, (pairLogs_{k} j).hi : ℚ) : ℝ) ≤ ({fmt(ceiling)} : ℚ) := Rat.cast_le.mpr hq\n"
              "  apply h.trans\n"
              "  push_cast at hreal\n"
              "  norm_num at hreal ⊢\n"
              "  exact hreal\n")
    e.put("theorem first_cell_endpoints (b : Fin 8) (side : Fin 2) {s : ℝ}\n"
          "    (hs : 0 ≤ s ∧ s ≤ 3) (hne : ∀ j, s ≠ (h158PhaseRoots b j : ℝ)) :\n"
          "    h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ))\n"
          "      (((b.val : ℝ)+(side.val : ℝ))/4) s ≤ (h158CompactEndpointCeiling b side : ℝ) := by\n"
          "  have hpos := h158PhaseRoots_pair_pos b hs.1 hne\n"
          "  fin_cases b <;> fin_cases side")
    for k in range(16):
        e.put(f"  · convert endpoint_{k}_first_cell hs{' hpos' if k else ''} using 1 <;>\n"
              "      norm_num [h158CompactEndpointCeiling] <;> rfl")
    e.put("\nend OddZetaMixed.CompactPhase.Certificates\n\n"
          "namespace OddZetaMixed\n\n"
          "theorem h158CompactPhase_first_cell (b : Fin 8) {theta s : ℝ}\n"
          "    (hl : (b.val : ℝ)/4 ≤ theta) (hr : theta ≤ ((b.val : ℝ)+1)/4)\n"
          "    (hs : 0 ≤ s ∧ s ≤ 3) (hne : ∀ j, s ≠ (h158PhaseRoots b j : ℝ)) :\n"
          "    h158PhasePotential (fun j => (h158PhaseRoots b j : ℝ)) theta s ≤ h158CompactCeiling b theta := by\n"
          "  apply h158CompactPhase_of_endpoints b hl hr\n"
          "  · simpa using CompactPhase.Certificates.first_cell_endpoints b 0 hs hne\n"
          "  · simpa using CompactPhase.Certificates.first_cell_endpoints b 1 hs hne\n\n"
          "end OddZetaMixed\n")
    target = PROJECT / "OddZetaMixed/H158CompactPhaseCertificates.lean"
    target.write_text("\n".join(e.lines))
    print(json.dumps({"output": str(target), "logs": len(e.logs), "atans": len(e.atans),
                      "cells": 16, "interval": [str(l), str(r)], "phase_upper": str(U),
                      "original_ceilings": True, "bytes": target.stat().st_size}))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--audit", action="store_true", help="Read-only exact-rational feasibility replay, not a Lean proof")
    args = parser.parse_args()
    audit() if args.audit else generate()
