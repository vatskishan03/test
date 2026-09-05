"""Producer reproducibility checks, supplementary to the Lean kernel gate."""
from fractions import Fraction
import json
from pathlib import Path
import unittest

import generate_lean_replay as G

HERE = Path(__file__).resolve().parent
LEAN = HERE.parents[1] / "MonochromaticQuantumGraphs/N8D3/Candidate129"


class LeanReplayGeneratorTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.data = json.loads((HERE / "candidate129_compact_star.json").read_text())
        G.C.check(cls.data, HERE / "candidate129_support.txt")
        cls.sources = list(G.all_sources(cls.data))

    def test_source_inventory_is_unique_and_complete(self):
        names = [name for name, _ in self.sources]
        self.assertEqual(len(names), 183)
        self.assertEqual(len(names), len(set(names)))
        self.assertEqual(len(G.amplitude_codes(self.data)), 60)
        self.assertIn("OfficialPremises", names)
        self.assertIn("Endpoint0Flip", names)
        self.assertIn("Endpoint1Flip", names)

    def test_every_generated_file_is_reproducible(self):
        for name, source in self.sources:
            with self.subTest(name=name):
                self.assertEqual((LEAN / f"{name}.lean").read_text(), source)

    def test_every_amplitude_checks_all_105_matchings(self):
        for code in G.amplitude_codes(self.data):
            source = dict(self.sources)[f"Amplitude{code}Checks"]
            for m in range(105):
                self.assertEqual(source.count(f"theorem table{code}_entry{m:03d} :"), 1)
                self.assertEqual(source.count(f"exact table{code}_entry{m:03d}"), 1)

    def test_fractional_payload_is_not_silently_truncated(self):
        with self.assertRaises(ValueError):
            G.polynomial([([1, 2], [(0, 1)])], 143)

    def test_nonunit_transform_is_rejected(self):
        with self.assertRaises(ValueError):
            G.unit_transform([(Fraction(1), (0, 0)), (Fraction(1), (1, 0))],
                             [(Fraction(1), (0, 0)), (Fraction(2), (1, 0))])


if __name__ == "__main__":
    unittest.main()
