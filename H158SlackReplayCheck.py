"""Read-only independent rational replay of the compiled slack cells.

No producer is imported. Logarithms use an unrounded atanh series, arctangents
use alternating series, and pi uses Machin's identity. This is a supplementary
replay, not a replacement for Lean's proofs and not an arithmetic certificate.
"""

import ast
from fractions import Fraction as Q
from functools import lru_cache
from hashlib import sha256
import json
from pathlib import Path
import re
from time import monotonic


PROJECT = Path(__file__).resolve().parent
LEAN = PROJECT / "OddZetaMixed"
SNAPSHOTS = {}


def read_snapshot(path):
    data = path.read_bytes()
    SNAPSHOTS[path] = sha256(data).hexdigest()
    return data.decode()


def rational_literal(node):
    if isinstance(node, ast.Constant) and type(node.value) is int:
        return Q(node.value)
    if isinstance(node, ast.UnaryOp) and isinstance(node.op, ast.USub):
        return -rational_literal(node.operand)
    if isinstance(node, ast.BinOp) and isinstance(node.op, ast.Div):
        return rational_literal(node.left) / rational_literal(node.right)
    if isinstance(node, ast.List):
        return [rational_literal(item) for item in node.elts]
    raise ValueError("Not a rational table literal")


def lean_table(path, name):
    source = read_snapshot(path)
    match = re.search(r"^def " + re.escape(name) + r"\b[^\n]*:=\s*\n(.*?)\n\n",
                      source, re.M | re.S)
    assert match is not None, name
    tree = ast.parse(match[1].strip().replace("![", "["), mode="eval")
    return rational_literal(tree.body)


def add(*intervals):
    return tuple(sum((interval[i] for interval in intervals), Q(0)) for i in (0, 1))


def scale(c, interval):
    lo, hi = interval
    return (c * lo, c * hi) if c >= 0 else (c * hi, c * lo)


def log_unit(q):
    assert 1 <= q <= 2
    x = (q - 1) / (q + 1)
    terms = 24
    lower = 2 * sum((x ** (2*k+1) / (2*k+1) for k in range(terms)), Q(0))
    remainder = 2*x ** (2*terms+1) / ((2*terms+1)*(1-x*x))
    return lower, lower + remainder


@lru_cache(maxsize=None)
def logarithm(q):
    assert q > 0
    k = q.numerator.bit_length() - q.denominator.bit_length()
    reduced = q / Q(2)**k
    while reduced < 1:
        reduced *= 2
        k -= 1
    while reduced > 2:
        reduced /= 2
        k += 1
    return add(log_unit(reduced), scale(k, log_unit(Q(2))))


def atan_small(q):
    assert 0 <= q <= Q(1, 2)
    terms = 40
    lower = sum(((-1)**k * q**(2*k+1) / (2*k+1) for k in range(terms)), Q(0))
    return lower, lower + q**(2*terms+1) / (2*terms+1)


PI = add(scale(16, atan_small(Q(1, 5))), scale(-4, atan_small(Q(1, 239))))


@lru_cache(maxsize=None)
def arctangent(q):
    assert q >= 0
    if q <= Q(1, 2):
        return atan_small(q)
    if q <= 1:
        return add(scale(Q(1, 4), PI), scale(-1, atan_small((1-q)/(1+q))))
    if q <= 2:
        return add(scale(Q(1, 4), PI), atan_small((q-1)/(q+1)))
    return add(scale(Q(1, 2), PI), scale(-1, atan_small(1/q)))


COEFFICIENTS = [(Q(154), 5), (Q(4), 5)]
COEFFICIENTS += [(Q(eta-4), 1) for eta in range(48, 69)]
COEFFICIENTS += [(Q(154-eta), -1) for eta in range(48, 69)]


def phase_constant():
    return add(*(scale(158-2*b, logarithm(Q(158-2*b))) for b in range(53, 69)),
               *(scale(-2*a, logarithm(Q(a))) for a in range(48, 53)))


def phase_upper(left, right, constant):
    center = (left + right)/2
    value = add(constant, scale(3*center, PI),
                *(scale(weight, add(scale(a/2, logarithm(a*a+center*center)),
                                    scale(-center, arctangent(center/a))))
                  for a, weight in COEFFICIENTS))
    slope = add(scale(3, PI),
                *(scale(-weight, (arctangent(left/a)[0], arctangent(right/a)[1]))
                  for a, weight in COEFFICIENTS))
    return value[1] + (right-left)/2 * max(abs(slope[0]), abs(slope[1]))


def pair_upper(left, right, root):
    return (max((left*left-root*root)**2, (right*right-root*root)**2)
            * ((right+root)**2 + 4*75**2)
            * (max((left-root)**2, (right-root)**2) + 4*75**2))


def rational_floor(q, denominator=10**12):
    return str(Q(q.numerator*denominator // q.denominator, denominator))


def main():
    started = monotonic()
    roots = lean_table(LEAN / "H158PhaseTail.lean", "h158PhaseRoots")
    ceilings = lean_table(LEAN / "H158CompactPhase.lean", "h158CompactEndpointCeiling")
    assert len(roots) == len(ceilings) == 8
    assert all(len(row) == 4 and all(0 < a < 20 for a in row) for row in roots)
    assert all(len(row) == 2 for row in ceilings)
    source = PROJECT.parent.parent / "outputs/odd_zeta_global_dependency_audit_20261005.json"
    records = json.loads(read_snapshot(source))["rank_two_phase_replay"]["records"]
    assert len(records) == 16
    for b in range(8):
        for side in range(2):
            record = records[2*b+side]
            assert Q(record["theta"]) == Q(b+side, 4)
            assert list(map(Q, record["roots"])) == roots[b]
            assert Q(record["ceiling"]) == ceilings[b][side]

    atom = r"(\(-?\d+(?:/\d+)?\)|-?\d+(?:/\d+)?)"
    pattern = (r"^\s+exact potential_endpoint_cell_add_one " + atom + r"\s+" + atom
               + r"\s+" + atom + r"\s+\(by decide \+kernel\)$")
    cells = []
    for batch in range(3):
        source = read_snapshot(LEAN / f"H158CompactPhaseSlackBatch{batch:02d}.lean")
        batch_cells = [tuple(Q(value.strip("()")) for value in match)
                       for match in re.findall(pattern, source, re.M)]
        assert len(batch_cells) == 8
        cells.extend(batch_cells)
    assert cells[0][0] == 0 and cells[-1][1] == 96
    assert all(left < right for left, right, _ in cells)
    assert all(first[1] == second[0] for first, second in zip(cells, cells[1:]))

    constant = phase_constant()
    margins, phase_margins = [], []
    for index, (left, right, saved_upper) in enumerate(cells):
        upper = phase_upper(left, right, constant)
        assert upper <= saved_upper, (index, "saved phase upper is too small")
        phase_margins.append(saved_upper - upper)
        for b in range(8):
            log_sum = sum((logarithm(pair_upper(left, right, root))[1]
                           for root in roots[b]), Q(0))
            for side in range(2):
                theta = Q(b+side, 4)
                margin = ceilings[b][side] + 1 - upper - theta/8*log_sum
                assert margin > 0, (index, b, side, "slack ceiling failed")
                margins.append((margin, index, b, side))

    area = sum((sum(pair)/8 for pair in ceilings), Q(0))
    assert area == Q(-8123483, 8000)
    assert all(left <= right for left, right in ceilings)
    assert all(first[1] <= second[0] for first, second in zip(ceilings, ceilings[1:]))
    for n in range(1, 257):
        row_sum = Q(0)
        for i in range(2*n):
            theta = Q(8*(i//8), n)
            assert 0 <= theta < 2
            b = (4*theta).__floor__()
            t = 4*theta-b
            row_sum += (1-t)*ceilings[b][0] + t*ceilings[b][1] + 1
        assert row_sum <= n*(area+2), n

    for path, digest in SNAPSHOTS.items():
        assert sha256(path.read_bytes()).hexdigest() == digest, f"Source changed: {path}"
    worst, cell, bin_index, side = min(margins)
    print(json.dumps({
        "status": "passed", "shared_cells": len(cells), "endpoint_checks": len(margins),
        "saved_phase_upper_checks": len(phase_margins), "row_sum_cases": 256,
        "minimum_slack_margin_lower": rational_floor(worst),
        "minimum_saved_phase_margin_lower": rational_floor(min(phase_margins)),
        "worst_cell": cell, "worst_bin": bin_index, "worst_side": side,
        "original_ceiling_area": str(area), "slack_ceiling_area": str(area+2),
        "allowance_per_row": 1, "quadratic_allowance": 2,
        "producer_imports": False, "files_written": False,
        "replaces_lean_proof": False, "arithmetic_certificate_checked": False,
        "seconds": round(monotonic()-started, 3)
    }, indent=2))


if __name__ == "__main__":
    main()
