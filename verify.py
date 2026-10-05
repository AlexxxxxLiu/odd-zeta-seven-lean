"""Rebuild, audit assumptions, and run positive and rejection regressions.

This is a test runner, not a mathematical oracle. Lean checks every proof.
The full-theorem flag requires a successful no-hypothesis acceptance check.
"""

import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import tempfile
import time


ROOT = Path(__file__).resolve().parent
LEAN = Path.home()/".elan/toolchains/leanprover--lean4---v4.34.0-rc2/bin/lean"
NODE = shutil.which("node")
PNT = ROOT / "PNTDependency"


def require(condition, message="Verification condition failed"):
    if not condition:
        raise AssertionError(message)


def check_process_result(label, returncode, output, *, success=True, expected=None):
    require((returncode == 0) == success, (label, returncode, output))
    if expected:
        require(expected in output, (label, output))


def check_unconditional_acceptance(output):
    require("Axiom audit passed:" in output, "Acceptance axiom audit missing")
    require("exists_irrational_riemannZeta_seven_to_nineteen" in output,
            "Acceptance theorem signature missing")


def compile_lean(args, env):
    """Retry only an explicit memory-limit failure, never a proof error."""
    attempts = []
    outputs = []
    for memory in (8192, 12288):
        command = [str(LEAN), "-j1", f"-M{memory}", *args]
        start = time.perf_counter()
        process = subprocess.run(command, cwd=ROOT, env=env, text=True,
                                 stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=1800)
        attempts.append({"returncode": process.returncode, "command": command,
                         "elapsed_seconds": round(time.perf_counter()-start, 3)})
        outputs.append(process.stdout)
        if (process.returncode != 0 and memory == 8192 and
                "lean::memory_exception" in process.stdout):
            continue
        return process, attempts, outputs
    raise RuntimeError("Compiler retry loop exhausted without a result")


def check_unfinished_warnings(output):
    for line in output.splitlines():
        if "declaration uses `sorry`" in line:
            raise AssertionError(line)


def dependency_source_files():
    manifest = json.loads((PNT / "provenance.json").read_text())
    rows = manifest["modules"] + manifest["provenance_files"]
    paths = {PNT / row["path"] for row in rows}
    paths.update(PNT.glob("*.cjs"))
    paths.update(PNT / name for name in ("provenance.json", "lakefile.toml", "lean-toolchain"))
    return sorted(paths)


def proof_text(source):
    """Remove nested block comments, line comments and strings for a token check."""
    chars = list(source)
    i = depth = 0
    in_string = False
    while i < len(chars):
        pair = source[i:i+2]
        if depth:
            if pair == "/-":
                depth += 1
                chars[i:i+2] = "  "
                i += 2
            elif pair == "-/":
                depth -= 1
                chars[i:i+2] = "  "
                i += 2
            else:
                if chars[i] != "\n":
                    chars[i] = " "
                i += 1
        elif in_string:
            if source[i] == "\\":
                chars[i:i+2] = "  "
                i += 2
            else:
                in_string = source[i] != '"'
                chars[i] = " "
                i += 1
        elif pair == "/-":
            depth = 1
            chars[i:i+2] = "  "
            i += 2
        elif pair == "--":
            j = source.find("\n", i)
            j = len(source) if j < 0 else j
            chars[i:j] = " " * (j-i)
            i = j
        elif source[i] == '"':
            in_string = True
            chars[i] = " "
            i += 1
        else:
            i += 1
    return "".join(chars)


def project_build_order(files):
    """Order project sources before their importers, rejecting missing modules."""
    modules = {
        ".".join(p.relative_to(ROOT).with_suffix("").parts): p
        for p in files if p.is_relative_to(ROOT/"OddZetaMixed")
    }
    modules["OddZetaMixed"] = ROOT/"OddZetaMixed.lean"
    result = []
    active = set()
    done = set()

    def visit(name):
        if name in done:
            return
        require(name in modules, f"Missing project module: {name}")
        require(name not in active, f"Project import cycle through {name}")
        active.add(name)
        source = proof_text(modules[name].read_text())
        for dep in re.findall(r"^import\s+(\S+)", source, re.MULTILINE):
            if dep == "OddZetaMixed" or dep.startswith("OddZetaMixed."):
                visit(dep)
        active.remove(name)
        done.add(name)
        result.append(name)

    for name in sorted(modules):
        visit(name)
    return result


def replay_environment(build, pnt_receipt):
    """Use only newly replayed project/PNT objects and the pinned foundation."""
    pnt_paths = pnt_receipt["lean_path"]
    require(Path(pnt_paths[0]).resolve() == (PNT/".replay/build").resolve(),
            "PNT search path does not start with the fresh replay")
    env = dict(os.environ)
    env["LEAN_PATH"] = os.pathsep.join([str(build), *pnt_paths])
    env.pop("LEAN_SYSROOT", None)
    env.pop("LEAN_SRC_PATH", None)
    return env


def main():
    def lean_files():
        return sorted(ROOT.glob("*.lean")) + sorted((ROOT/"OddZetaMixed").rglob("*.lean"))

    files = lean_files()
    def input_files():
        return sorted(set(lean_files() + dependency_source_files() +
                          list(ROOT.glob("*.py")) + list((ROOT/"scripts").glob("*.py")) +
                          [ROOT/name for name in ("lakefile.toml", "lake-manifest.json",
                                                "lean-toolchain", "verify.py")]))

    inputs = input_files()
    sources = {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs}
    forbidden = re.compile(
        r"\b(sorry|admit|axiom|native_decide|unsafe|implemented_by|"
        r"skipKernelTC|addDeclWithoutChecking)\b")
    for p in files:
        clean = proof_text(p.read_text())
        require(not forbidden.search(clean), f"Untrusted token in {p.name}")
        for dep in re.findall(r"^import\s+(\S+)", clean, re.MULTILINE):
            require(dep.split(".")[0] in {"Mathlib", "Lean", "OddZetaMixed"} or (
                dep == "PNTDependency" and p == ROOT/"OddZetaMixed/PrimeWeightedRates.lean"), dep)

    dependency_manifest = json.loads((PNT / "provenance.json").read_text())
    for row in dependency_manifest["modules"]:
        p = PNT / row["path"]
        require(not re.search(r"\b(sorry|admit|axiom|native_decide)\b", proof_text(p.read_text())),
                f"Untrusted proof token in dependency {row['path']}")

    logs = []
    records = []
    compiler_env = None

    for warning in ("warning: OddZetaMixed/Bad.lean:327:8: declaration uses `sorry`",
                    "warning: src/PrimeNumberTheoremAnd/Wiener.lean:328:8: declaration uses `sorry`"):
        try:
            check_unfinished_warnings(warning)
        except AssertionError:
            pass
        else:
            raise AssertionError("Unfinished proof warning was accepted")

    def replay_pnt():
        require(NODE, "Node.js is needed for the source-backed PNT replay")
        start = time.perf_counter()
        process = subprocess.run([NODE, str(PNT/"replay.cjs")], cwd=ROOT, text=True,
                                 stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=1800)
        logs.append(f"\n=== source_backed_pnt_replay ===\n{process.stdout}")
        (ROOT/"verification.log").write_text("".join(logs))
        require(process.returncode == 0, process.stdout)
        receipt = json.loads((PNT/"replay-receipt.json").read_text())
        require(receipt["verification_status"] == "passed", "PNT replay failed")
        require(receipt["transitive_axioms_standard_only"], "PNT axiom audit failed")
        require(receipt["excluded_declarations_absent"], "PNT source-selection audit failed")
        require(receipt["admission_free_source_replay"], "PNT source replay contains an admission")
        check_unfinished_warnings(process.stdout)
        require(receipt["inputs_unchanged"], "PNT source changed during replay")
        require(receipt["audited_targets"] == 72, "Incomplete PNT target audit")
        require(len(receipt["compiled"]) == 24, "Incomplete PNT source replay")
        records.append({"label": "source_backed_pnt_replay", "returncode": 0,
                        "elapsed_seconds": round(time.perf_counter()-start, 3),
                        "expected_success": True, "audited_targets": 72})
        print("PASS source_backed_pnt_replay", flush=True)
        return receipt

    def run(label, args, success=True, expected=None):
        require(args[:2] == ["env", "lean"], "Unexpected compiler invocation")
        require(compiler_env is not None, "Compiler environment not initialized")
        start = time.perf_counter()
        process, attempts, outputs = compile_lean(args[2:], compiler_env)
        record = {"label": label, "returncode": process.returncode,
                  "elapsed_seconds": round(time.perf_counter()-start, 3),
                  "expected_success": success, "command": attempts[-1]["command"],
                  "compiler_attempts": attempts}
        records.append(record)
        logs.append(f"\n=== {label} ===\n")
        for attempt, output in zip(attempts, outputs):
            logs.append(f"--- compiler attempt {attempt['command'][2]} ---\n{output}")
        (ROOT/"verification.log").write_text("".join(logs))
        check_process_result(label, process.returncode, process.stdout,
                             success=success, expected=expected)
        if success:
            check_unfinished_warnings(process.stdout)
        print(f"PASS {label}", flush=True)
        return process.stdout

    pnt_receipt = replay_pnt()
    require(hashlib.sha256(LEAN.read_bytes()).hexdigest() == pnt_receipt["compiler_sha256"],
            "Project and PNT replay compilers differ")
    build = ROOT/".verification/build"
    if build.exists():
        shutil.rmtree(build)
    build.mkdir(parents=True)
    compiler_env = replay_environment(build, pnt_receipt)
    module_order = project_build_order(files)
    # Direct compiler calls always execute, independently of Lake build traces.
    # The search path excludes old project and old PNT artifacts entirely.
    for module in module_order:
        relative = Path(*module.split("."))
        output = (build/relative).with_suffix(".olean")
        output.parent.mkdir(parents=True, exist_ok=True)
        run("source_replay:"+module,
            ["env", "lean", "-o", str(output), str(relative.with_suffix(".lean"))])
    audit = run("transitive_axiom_audit", ["env", "lean", "AxiomAudit.lean"],
                expected="Axiom audit passed:")
    run("positive_regressions", ["env", "lean", "RegressionChecks.lean"])
    unconditional_accepted = False
    root_checks = sorted({p.name for p in ROOT.glob("*Check.lean")} |
                         {"SingletonValuationScratch.lean", "H158SmallPrimeScratch.lean"})
    for filename in root_checks:
        output = run("regression_"+Path(filename).stem, ["env", "lean", filename])
        if filename == "H158UnconditionalAcceptanceCheck.lean":
            check_unconditional_acceptance(output)
            unconditional_accepted = True

    probes = [
        ("reject_project_axiom", "namespace AuditProbe\naxiom hidden : False\n"
         "theorem endpoint : False := hidden\nend AuditProbe\n"
         "audit_project_axioms AuditProbe\n", "Unexpected axiom"),
        ("reject_unfinished_proof", "namespace AuditProbe\ntheorem endpoint : False := by sorry\n"
         "end AuditProbe\naudit_project_axioms AuditProbe\n", "Unexpected axiom sorryAx"),
        ("reject_native_trust", "namespace AuditProbe\ntheorem endpoint : (1 : Nat) = 1 := by native_decide\n"
         "end AuditProbe\naudit_project_axioms AuditProbe\n", "Unexpected axiom"),
        ("reject_false_gap", "example : (20 : Rat) < OddZetaMixed.safeDecay - OddZetaMixed.totalBudget := by\n"
         "  norm_num [OddZetaMixed.safeDecay, OddZetaMixed.totalBudget, OddZetaMixed.lowBudget,\n"
         "    OddZetaMixed.middleBudget, OddZetaMixed.highBudget]\n", "error"),
        ("reject_log_zero_negative", "example : Real.log (0 : Real) < -1 := by\n"
         "  norm_num\n", "error"),
        ("reject_omitted_ceiling_fee", "example : 2 * (Finset.range 12).sum\n"
         "    (fun i => (((2*i)/5 : Nat) : Rat)) = 46 := by\n"
         "  norm_num [Finset.sum_range_succ]\n", "error"),
        ("reject_missing_h158_inputs", "example : ∃ i : Fin 7,\n"
         "    Irrational (OddZetaMixed.sevenZetaValues i) := by\n"
         "  exact OddZetaMixed.h158_seven_irrational_of_three_inputs\n", "error"),
        ("reject_missing_global_rates", "example : ∃ i : Fin 7,\n"
         "    Irrational (OddZetaMixed.sevenZetaValues i) := by\n"
         "  exact OddZetaMixed.h158_seven_irrational_of_rate_bounds\n", "error"),
        ("reject_fixed_index_as_global_rate", "example : OddZetaMixed.H158AnalyticBound := by\n"
         "  exact OddZetaMixed.h158ClosingEdges_tendsto_zero\n", "error"),
        ("reject_support_as_global_budget", "example : OddZetaMixed.H158ArithmeticBound := by\n"
         "  exact OddZetaMixed.h158PrimitiveCost_le_prime_cutoff\n", "error"),
        ("reject_prime_rates_as_divisibility", "example : OddZetaMixed.H158ArithmeticBound := by\n"
         "  exact OddZetaMixed.h158_prime_content_three_bands_rate\n", "error"),
        ("reject_integrability_as_analytic_rate", "example : OddZetaMixed.H158AnalyticBound := by\n"
         "  exact OddZetaMixed.h158VerticalIntegrand_integrable\n", "error"),
        ("reject_transitive_admission_leak", "namespace UntrustedDependency\n"
         "theorem unproved : False := by sorry\nend UntrustedDependency\n"
         "namespace AuditProbe\ndef leaked := @UntrustedDependency.unproved\nend AuditProbe\n"
         "audit_project_axioms AuditProbe\n", "Unexpected axiom sorryAx"),
        ("reject_unfolded_allocation_as_budget", "example : OddZetaMixed.H158ArithmeticBound := by\n"
         "  exact OddZetaMixed.FormalBlockSelection.h158_primitive_cost_unfolded_allocation\n", "error"),
        ("reject_modulus_majorant_as_rate", "example : OddZetaMixed.H158AnalyticBound := by\n"
         "  exact OddZetaMixed.h158Functional_det_abs_le_modulusMoments\n", "error"),
        ("reject_finite_explicit_budget_as_rate", "example : OddZetaMixed.H158ArithmeticBound := by\n"
         "  exact OddZetaMixed.h158PrimitiveCost_le_explicit_budget\n", "error"),
        ("reject_small_prime_rate_as_global", "example : OddZetaMixed.H158ArithmeticBound := by\n"
         "  exact OddZetaMixed.H158SmallPrimeBudget.smallPrimeCost_upperQuadraticRate\n", "error"),
        ("reject_basis_rate_as_complete_analytic", "example : OddZetaMixed.H158AnalyticBound := by\n"
         "  exact OddZetaMixed.h158BasisNormalization_log_rate\n", "error"),
        ("reject_endpoint_error_as_global", "example : OddZetaMixed.H158ArithmeticBound := by\n"
         "  exact OddZetaMixed.h158_primitive_cost_unshifted_threshold\n", "error"),
        ("reject_unchecked_slot_truncation", "example :\n"
         "    OddZetaMixed.WeightedSlotThreshold.thresholdBudget (fun _ : Unit => (20 : Rat))\n"
         "      (fun _ => 1) 1 2 0 ≤ 0 := by\n"
         "  norm_num [OddZetaMixed.WeightedSlotThreshold.thresholdBudget, Finset.sum_range_succ]\n",
         "error"),
        ("reject_mixed_as_single_zeta7", "example :\n"
         "    Irrational ((riemannZeta (7 : Complex)).re) := by\n"
         "  exact OddZetaMixed.exists_irrational_riemannZeta_seven_to_nineteen\n", "error"),
    ]
    with tempfile.TemporaryDirectory(prefix="odd-zeta-lean-") as directory:
        for label, body, expected in probes:
            probe = Path(directory)/f"{label}.lean"
            probe.write_text("import OddZetaMixed\nimport OddZetaMixed.TrustAudit\n"+body)
            run(label, ["env", "lean", str(probe)], success=False, expected=expected)

    require(files == lean_files(), "Lean source inventory changed during verification")
    require(inputs == input_files(), "Proof/configuration inventory changed during verification")
    after = {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs}
    require(sources == after, "Lean sources changed during verification")
    counts = re.search(r"passed: (\d+) declarations, (\d+) theorem declarations", audit)
    result = {
        "verification_status": "passed",
        "lean_modules_and_helpers_verified": True,
        "project_source_replay": {
            "mode": "fresh isolated direct compiler calls in import order",
            "compiled_module_count": len(module_order),
            "old_project_artifacts_used": False,
            "old_pnt_artifacts_used": False,
            "lean_path": compiler_env["LEAN_PATH"].split(os.pathsep),
            "compiler_sha256": pnt_receipt["compiler_sha256"],
        },
        "full_mixed_irrationality_formalized": unconditional_accepted,
        "single_zeta7_irrationality_formalized": False,
        "full_h158_global_asymptotic_bound_formalized": unconditional_accepted,
        "unconditional_acceptance_check_passed": unconditional_accepted,
        "certified_global_rate_constants": ({
            "primitive_arithmetic_upper_rate": "1012",
            "analytic_upper_rate": "-analyticExpression + 2",
            "primitive_evaluated_determinant_eventual_bound": "exp(-n^2/2)",
            "original_sharper_named_rate_predicates_proved": False,
        } if unconditional_accepted else None),
        "allowed_axioms": ["propext", "Classical.choice", "Quot.sound"],
        "audited_declarations": int(counts[1]),
        "audited_theorem_declarations_including_auxiliaries": int(counts[2]),
        "source_theorem_statements": sum(len(re.findall(r"^theorem\s", proof_text(p.read_text()),
                                                           re.MULTILINE)) for p in files),
        "checks": records,
        "source_sha256": sources,
        "pending_instantiations": ([] if unconditional_accepted else [
            "complete concrete low/middle/high certificate replay and actual arithmetic rate1012",
            "the no-project-hypothesis final theorem and global inequality acceptance check",
        ]),
        "actual_h158_seven_coordinate_identity_formalized": True,
        "primitive_normalization_and_gauss_cost_formalized": True,
        "exact_signed_row_fee_formalized": True,
        "actual_h158_conditional_endpoint_formalized": True,
        "actual_h158_rational_gate_formalized": True,
        "actual_h158_gate_determinant_valuation_formalized": True,
        "actual_h158_gate_formal_gauss_and_scalar_valuation_formalized": True,
        "actual_h158_complex_residue_and_cutoff_identity_formalized": True,
        "actual_h158_fixed_index_closing_edges_vanish_formalized": True,
        "actual_h158_denominator_support_cutoff_57n_formalized": True,
        "actual_h158_signed_finite_prime_cost_bound_formalized": True,
        "actual_h158_full_jet_functional_and_cluster_factorization_formalized": True,
        "actual_h158_complete_residue_block_floor_formalized": True,
        "actual_h158_signed_residue_minor_floor_formalized": True,
        "actual_h158_row_scaled_factorization_formalized": True,
        "actual_h158_assembled_factorization_and_minor_transfer_formalized": True,
        "actual_h158_pairwise_reflection_jet_identities_formalized": True,
        "actual_h158_reflected_pair_and_true_central_even_floors_formalized": True,
        "actual_h158_true_central_matrix_compression_formalized": True,
        "actual_h158_full_reflection_orbit_assembly_formalized": True,
        "actual_h158_full_folded_allocation_and_signed_threshold_formalized": True,
        "actual_h158_certified_fixed_slot_truncation_formalized": True,
        "actual_h158_explicit_all_prime_finite_budget_formalized": True,
        "actual_h158_unreduced_residue_floor_formulas_formalized": True,
        "actual_h158_unconditional_main_prime_cost_40n_formalized": True,
        "actual_h158_small_prime_zero_upper_quadratic_rate_formalized": True,
        "actual_h158_divides_n_exception_zero_upper_quadratic_rate_formalized": True,
        "actual_h158_singleton_both_cutoffs_and_full_hybrid_minimum_formalized": True,
        "actual_h158_endpoint_l1_27_and_folded_threshold_charge_formalized": True,
        "actual_h158_unfolded_allocation_primitive_cost_formalized": True,
        "actual_h158_vertical_integrability_and_truncation_formalized": True,
        "actual_h158_complete_contour_representation_formalized": True,
        "actual_h158_complete_modulus_moment_determinant_majorant_formalized": True,
        "actual_h158_row_adaptive_basis_same_determinant_formalized": True,
        "actual_h158_complete_adaptive_modulus_moment_majorant_formalized": True,
        "actual_h158_uniform_contour_drift_factor_formalized": True,
        "actual_h158_basis_normalization_quadratic_rate_formalized": True,
        "rank_factorial_subquadratic_rate_formalized": True,
        "source_backed_weighted_pnt_integrated": True,
        "pnt_audited_targets": pnt_receipt["audited_targets"],
        "dependency_source_selection_checked": pnt_receipt["excluded_declarations_absent"],
        "dependency_admission_free_source_replay": pnt_receipt["admission_free_source_replay"],
        "pnt_replay_receipt_sha256": hashlib.sha256(
            (PNT/"replay-receipt.json").read_bytes()).hexdigest(),
        "remaining_actual_endpoint_inputs": ([] if unconditional_accepted else
                                            ["H158ArithmeticBound", "H158AnalyticBound"]),
        "original_sharper_rate_predicates_not_needed_by_final_theorem":
            ["H158ArithmeticBound", "H158AnalyticBound"],
    }
    (ROOT/"verification.log").write_text("".join(logs))
    (ROOT/"verification.json").write_text(json.dumps(result, indent=2)+"\n")
    print(json.dumps({k: v for k, v in result.items() if k not in {"source_sha256", "checks"}}, indent=2))


if __name__ == "__main__":
    status_file = ROOT/"verification.json"
    status_file.write_text(json.dumps({"verification_status": "running"}, indent=2)+"\n")
    try:
        main()
    except BaseException as error:
        status_file.write_text(json.dumps({"verification_status": "failed",
                                          "error": f"{type(error).__name__}: {error}"}, indent=2)+"\n")
        raise
