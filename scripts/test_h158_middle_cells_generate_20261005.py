"""Regression checks for the disjoint middle-band certificate compiler."""

import copy
from fractions import Fraction
import json
from pathlib import Path
import unittest

from h158_middle_cells_generate_20261005 import reconstruct


SOURCE = (Path(__file__).resolve().parents[3] / "outputs" /
          "odd_zeta_residue_band_certificate_20261005_4to26_reflected.json")


class MiddleCellCompilerTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.rows = json.loads(SOURCE.read_text())["cells"]

    def test_first_original_profile(self):
        c = reconstruct(self.rows[0])
        self.assertEqual((c["left"], c["right"]), (4, Fraction(109, 27)))
        self.assertEqual(c["cost"], (-80, 25))
        self.assertEqual(c["tau"], 9)
        self.assertEqual(len(c["strips"]), 44)

    def test_last_cell_includes_26(self):
        self.assertEqual(reconstruct(self.rows[-1])["right"], 26)

    def test_wrong_normalization_rejected(self):
        row = copy.deepcopy(self.rows[0])
        row["nu"] += 1
        with self.assertRaises(AssertionError):
            reconstruct(row)

    def test_wrong_histogram_rejected(self):
        row = copy.deepcopy(self.rows[0])
        row["histogram_affine"]["2"][0] = "-13"
        with self.assertRaises(AssertionError):
            reconstruct(row)

    def test_wrong_actual_threshold_rate_rejected(self):
        row = copy.deepcopy(self.rows[0])
        row["cost_affine_constant_slope"][0] = "-81"
        with self.assertRaises(AssertionError):
            reconstruct(row)

    def test_crossed_geometry_boundary_rejected(self):
        row = copy.deepcopy(self.rows[0])
        row["right"] = "9/2"
        with self.assertRaises(AssertionError):
            reconstruct(row)


if __name__ == "__main__":
    unittest.main()
