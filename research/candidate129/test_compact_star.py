"""Small positive/tampering regressions for the exact, HNF-free replay."""
import copy
from fractions import Fraction
import json
from pathlib import Path
import sys
import unittest
import check_compact_star as C

HERE = Path(__file__).resolve().parent


class CompactCertificateTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.data = json.loads((HERE / "candidate129_compact_star.json").read_text())

    def replay(self, data):
        data["content_sha256"] = C.V.sha_obj({k: v for k, v in data.items() if k != "content_sha256"})
        return C.check(data, HERE / "candidate129_support.txt")

    def test_positive_without_sympy(self):
        result = self.replay(copy.deepcopy(self.data))
        self.assertEqual(result["polynomial_nodes"], 145)
        self.assertEqual(result["derived_characters"], [3, 9])
        self.assertEqual(result["hnf_calls"], 0)
        self.assertNotIn("sympy", sys.modules)

    def test_changed_amplitude(self):
        data = copy.deepcopy(self.data)
        next(n for n in data["nodes"] if n["kind"] == "amplitude")["coloring"] = 0
        with self.assertRaises(ValueError):
            self.replay(data)

    def test_changed_integer_witness(self):
        data = copy.deepcopy(self.data)
        data["endpoints"][0]["chain"][0]["reductions"][0]["coefficients"][-1] += 1
        with self.assertRaisesRegex(ValueError, "integer lattice witness"):
            self.replay(data)

    def test_missing_character_step(self):
        data = copy.deepcopy(self.data)
        data["endpoints"][1]["chain"].pop(0)
        with self.assertRaises(ValueError):
            self.replay(data)

    def test_changed_star_center(self):
        data = copy.deepcopy(self.data)
        data["center"] = data["leaves"][0]
        with self.assertRaises(ValueError):
            self.replay(data)

    def test_cyclic_derivation(self):
        data = copy.deepcopy(self.data)
        index = next(i for i, node in enumerate(data["nodes"]) if node["kind"] == "overlap")
        data["nodes"][index]["left"] = index
        with self.assertRaisesRegex(ValueError, "topologically"):
            self.replay(data)

    def test_wrong_extra_matching(self):
        data = copy.deepcopy(self.data)
        data["endpoints"][0]["flip"]["extra_matching"] = -1
        with self.assertRaisesRegex(ValueError, "single-extra-matching"):
            self.replay(data)

    def test_changed_overlap_coefficient(self):
        data = copy.deepcopy(self.data)
        node = next(n for n in data["nodes"] if n["kind"] == "overlap")
        node["polynomial"][-1][0][0] *= -1
        with self.assertRaises(ValueError):
            self.replay(data)

    def test_missing_complete_amplitude_term(self):
        data = copy.deepcopy(self.data)
        next(n for n in data["nodes"] if n["kind"] == "amplitude")["polynomial"].pop()
        with self.assertRaisesRegex(ValueError, "does not replay"):
            self.replay(data)

    def test_changed_flip_ratio_witness(self):
        data = copy.deepcopy(self.data)
        data["endpoints"][0]["ratio_witnesses"][0][-1] += 1
        with self.assertRaisesRegex(ValueError, "integer lattice witness"):
            self.replay(data)

    def test_dense_normalizer_is_translation_invariant(self):
        terms = [(Fraction(2), (0, -1, 1)), (Fraction(-3), (-1, 1, 0))]
        translated = [(7 * c, tuple(a + b for a, b in zip(e, (5, -2, 3)))) for c, e in terms]
        self.assertEqual(C.unit_normal_form(terms), C.unit_normal_form(translated))

    def test_factor_check_is_direct_not_search(self):
        old = C.V.factor_tetranomial
        C.V.factor_tetranomial = lambda *args: self.fail("factor search must not run")
        try:
            self.replay(copy.deepcopy(self.data))
        finally:
            C.V.factor_tetranomial = old

    def test_normalizer_is_not_assumed_idempotent(self):
        raw = [(Fraction(1), ((1, -1), (2, 1))),
               (Fraction(1), ((0, -1), (1, 1)))]
        once = C.V.canon_relation(raw)
        twice = C.V.canon_relation(once)
        self.assertNotEqual(once, twice)
        # Both are valid normalized payloads. Soundness comes from checking
        # the exact derivation, not from treating normalization as unique.
        self.assertEqual(C.polynomial(C.V.ser_relation(once), 3), once)
        self.assertEqual(C.polynomial(C.V.ser_relation(twice), 3), twice)


if __name__ == "__main__":
    unittest.main(verbosity=2)
