"""Check identity with the accepted record; this does not replace Lean replay."""

import hashlib
import json
from pathlib import Path
import re
import sys


ROOT = Path(__file__).resolve().parents[1]
AUDIT = ROOT / "audit/2026-10-06"
FOUNDATIONS = {"propext", "Classical.choice", "Quot.sound"}


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def checked_path(root, relative):
    path = Path(relative)
    require(bool(relative) and not path.is_absolute() and ".." not in path.parts,
            "Unsafe recorded path: " + relative)
    candidate = root / path
    require(candidate.is_file() and not candidate.is_symlink(),
            "Missing regular file: " + relative)
    require(candidate.resolve().is_relative_to(root.resolve()),
            "Recorded path escapes root: " + relative)
    return candidate


def check_evidence():
    listed = set()
    for line in (AUDIT / "SHA256SUMS").read_text().splitlines():
        wanted, relative = line.split(maxsplit=1)
        relative = relative.lstrip("*")
        require(re.fullmatch(r"[0-9a-f]{64}", wanted), "Invalid checksum")
        require(relative not in listed, "Duplicate evidence path: " + relative)
        listed.add(relative)
        require(digest(checked_path(AUDIT, relative)) == wanted,
                "Evidence checksum mismatch: " + relative)
    actual = {str(p.relative_to(AUDIT)) for p in AUDIT.rglob("*")
              if p.is_file() and p != AUDIT / "SHA256SUMS"}
    require(listed == actual, "Evidence inventory differs from checksums")


def main():
    check_evidence()
    receipt_path = AUDIT / "verification.json"
    receipt = json.loads(receipt_path.read_text())
    require(receipt["verification_status"] == "passed", "Replay was not accepted")
    for key in ("full_mixed_irrationality_formalized",
                "full_h158_global_asymptotic_bound_formalized",
                "unconditional_acceptance_check_passed",
                "dependency_source_selection_checked",
                "dependency_admission_free_source_replay"):
        require(receipt[key] is True, "Missing recorded acceptance: " + key)
    require(receipt["single_zeta7_irrationality_formalized"] is False,
            "Unexpected single-value claim")
    require(not receipt["pending_instantiations"], "Pending instantiations remain")
    require(not receipt["remaining_actual_endpoint_inputs"], "Endpoint has missing inputs")
    require(set(receipt["allowed_axioms"]) == FOUNDATIONS, "Unexpected permitted axiom")
    require(receipt["project_source_replay"]["old_project_artifacts_used"] is False,
            "Replay reused old project artifacts")
    expected = receipt["source_sha256"]
    require(bool(expected), "Empty input inventory")
    for relative, wanted in expected.items():
        require(digest(checked_path(ROOT, relative)) == wanted,
                "Changed accepted input: " + relative)

    # Match the input inventory used by the frozen verifier, not just its hashes.
    sys.path.insert(0, str(ROOT))
    import verify
    lean = list(ROOT.glob("*.lean")) + list((ROOT / "OddZetaMixed").rglob("*.lean"))
    inputs = set(lean + verify.dependency_source_files() + list(ROOT.glob("*.py")) +
                 list((ROOT / "scripts").glob("*.py")) +
                 [ROOT / name for name in ("lakefile.toml", "lake-manifest.json",
                                           "lean-toolchain", "verify.py")])
    require({str(p.relative_to(ROOT)) for p in inputs} == set(expected),
            "Frozen verifier input inventory changed")
    require(digest(AUDIT / "pnt-replay-receipt.json") ==
            receipt["pnt_replay_receipt_sha256"], "PNT receipt does not match main receipt")
    pnt = json.loads((AUDIT / "pnt-replay-receipt.json").read_text())
    require(pnt["verification_status"] == "passed", "PNT replay was not accepted")
    for key in ("transitive_axioms_standard_only", "excluded_declarations_absent",
                "admission_free_source_replay", "inputs_unchanged"):
        require(pnt[key] is True, "Missing PNT acceptance: " + key)
    require(pnt["old_pnt_artifacts_used"] is False, "Replay reused old PNT artifacts")
    require(all(set(axioms) <= FOUNDATIONS for axioms in pnt["target_axioms"].values()),
            "Unexpected PNT axiom")
    for relative, wanted in pnt["input_sha256"].items():
        require(expected.get("PNTDependency/" + relative) == wanted,
                "PNT input does not match main receipt: " + relative)
    print(f"PASS: all {len(expected)} accepted inputs and the recorded evidence match.")
    print("Recorded result: at least one of zeta(7),...,zeta(19) is irrational.")
    print("This is an integrity check, not a new full Lean replay.")


if __name__ == "__main__":
    main()
