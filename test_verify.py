"""Safety regressions for the proof-source replay driver, not mathematical tests."""

from pathlib import Path
import os
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch
from types import SimpleNamespace

import verify


class SourceInventoryTests(unittest.TestCase):
    def order(self, sources):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            files = []
            for name, source in sources.items():
                path = root.joinpath(*name.split(".")).with_suffix(".lean")
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(source)
                files.append(path)
            with patch.object(verify, "ROOT", root):
                return verify.project_build_order(files)

    def test_nested_modules_before_importers(self):
        order = self.order({
            "OddZetaMixed": "import OddZetaMixed.Final\n",
            "OddZetaMixed.Final": "import OddZetaMixed.Data.Batch00\n",
            "OddZetaMixed.Data.Batch00": "import Mathlib\n",
            "OddZetaMixed.UnusedCheck": "import OddZetaMixed.Final\n",
        })
        self.assertEqual(len(order), 4)
        self.assertLess(order.index("OddZetaMixed.Data.Batch00"),
                        order.index("OddZetaMixed.Final"))
        self.assertLess(order.index("OddZetaMixed.Final"), order.index("OddZetaMixed"))
        self.assertIn("OddZetaMixed.UnusedCheck", order)

    def test_missing_dependency_rejected(self):
        with self.assertRaisesRegex(AssertionError, "Missing project module"):
            self.order({"OddZetaMixed": "import OddZetaMixed.Missing\n"})

    def test_import_cycle_rejected(self):
        with self.assertRaisesRegex(AssertionError, "import cycle"):
            self.order({"OddZetaMixed": "import OddZetaMixed.Loop\n",
                        "OddZetaMixed.Loop": "import OddZetaMixed\n"})

    def test_comment_and_string_imports_ignored(self):
        self.assertEqual(self.order({
            "OddZetaMixed": '/- /- nested -/\nimport OddZetaMixed.Missing\n-/\n'
                            '-- import OddZetaMixed.Missing\n'
                            '#eval "import OddZetaMixed.Missing"\n',
        }), ["OddZetaMixed"])

    def test_unfinished_warning_scope(self):
        for warning in (
                "warning: New.lean:1:0: declaration uses `sorry`",
                "warning: src/PrimeNumberTheoremAnd/Wiener.lean:327:8: declaration uses `sorry`",
                "warning: src/PrimeNumberTheoremAnd/Wiener.lean:346:8: declaration uses `sorry`"):
            with self.assertRaises(AssertionError):
                verify.check_unfinished_warnings(warning)
        verify.check_unfinished_warnings("warning: unused variable x")

    def test_replay_search_path_excludes_old_artifacts(self):
        receipt = {"lean_path": [str(verify.PNT/".replay/build"), "/pinned/foundation"]}
        with patch.dict(os.environ, {"LEAN_PATH": "/old/project:/old/pnt",
                                     "LEAN_SYSROOT": "/old/system", "LEAN_SRC_PATH": "/old/src"}):
            env = verify.replay_environment(Path("/fresh/project"), receipt)
        self.assertEqual(env["LEAN_PATH"].split(os.pathsep),
                         ["/fresh/project", str(verify.PNT/".replay/build"), "/pinned/foundation"])
        self.assertNotIn("LEAN_SYSROOT", env)
        self.assertNotIn("LEAN_SRC_PATH", env)

    def test_old_pnt_path_rejected(self):
        with self.assertRaises(AssertionError):
            verify.replay_environment(Path("/fresh/project"),
                                      {"lean_path": [str(verify.PNT/".lake/build/lib/lean")]})

    def test_failed_acceptance_is_rejected(self):
        with self.assertRaises(AssertionError):
            verify.check_process_result("acceptance", 1, "Axiom audit passed:")
        with self.assertRaises(AssertionError):
            verify.check_unconditional_acceptance("error: unknown identifier")

    def test_optimized_python_keeps_safety_checks(self):
        probes = [
            "verify.check_process_result('acceptance', 1, 'Axiom audit passed:')",
            "verify.check_unconditional_acceptance('error: unknown identifier')",
            "verify.require(False, 'source hash changed')",
        ]
        for probe in probes:
            with self.subTest(probe=probe):
                result = subprocess.run([sys.executable, "-O", "-c", "import verify; "+probe],
                                        cwd=verify.ROOT, text=True, capture_output=True)
                self.assertNotEqual(result.returncode, 0)
                self.assertIn("AssertionError", result.stderr)

    def test_only_explicit_memory_failure_retried(self):
        fail = SimpleNamespace(returncode=-6, stdout="lean::memory_exception: limit")
        ok = SimpleNamespace(returncode=0, stdout="checked")
        with patch.object(verify.subprocess, "run", side_effect=[fail, ok]) as run:
            result, attempts, outputs = verify.compile_lean(["Target.lean"], {})
        self.assertIs(result, ok)
        self.assertEqual([a["command"][2] for a in attempts], ["-M8192", "-M12288"])
        self.assertEqual(outputs, [fail.stdout, ok.stdout])
        self.assertEqual(run.call_count, 2)

    def test_proof_error_not_retried(self):
        fail = SimpleNamespace(returncode=1, stdout="error: unsolved goals")
        with patch.object(verify.subprocess, "run", return_value=fail) as run:
            result, attempts, _ = verify.compile_lean(["Target.lean"], {})
        self.assertIs(result, fail)
        self.assertEqual(len(attempts), 1)
        self.assertEqual(run.call_count, 1)
        with self.assertRaises(AssertionError):
            verify.check_process_result("target", result.returncode, result.stdout)

    def test_repeated_memory_failure_still_rejected(self):
        fail = SimpleNamespace(returncode=-6, stdout="lean::memory_exception: limit")
        with patch.object(verify.subprocess, "run", return_value=fail) as run:
            result, attempts, _ = verify.compile_lean(["Target.lean"], {})
        self.assertEqual(run.call_count, 2)
        self.assertEqual(len(attempts), 2)
        with self.assertRaises(AssertionError):
            verify.check_process_result("target", result.returncode, result.stdout)


if __name__ == "__main__":
    unittest.main()
