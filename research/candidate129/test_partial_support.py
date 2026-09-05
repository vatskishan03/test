#!/usr/bin/env python3
"""Adversarial tests of partial-support projection, not a formal proof."""
import json
from pathlib import Path
import random
import unittest
import generate_partial_support as P
import generate_lean_replay as G

HERE = Path(__file__).resolve().parent
DATA = json.loads((HERE / "candidate129_compact_star.json").read_text())


def independent_matchings(vertices):
    if not vertices:
        yield ()
        return
    u, *rest = vertices
    for v in rest:
        for matching in independent_matchings([w for w in rest if w != v]):
            yield ((u, v),) + matching


def independent_rows(code):
    colors = tuple((code // 3 ** i) % 3 for i in range(8))
    edges = {(u, v): i for i, (u, v) in enumerate((u, v) for u in range(8) for v in range(u + 1, 8))}
    return [tuple(9 * edges[(u, v)] + 3 * colors[u] + colors[v] for u, v in matching)
            for matching in independent_matchings(list(range(8)))]


class PartialSupportTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.core = P.project(DATA)
        cls.nonzero = set(cls.core["nonzero"])
        cls.zero = set(cls.core["zero"])
        cls.rows = {code: independent_rows(code) for code in G.amplitude_codes(DATA)}

    def test_partition_and_frozen_counts(self):
        sets = [set(self.core[key]) for key in ("nonzero", "zero", "free")]
        self.assertEqual(list(map(len, sets)), [75, 71, 106])
        self.assertEqual(set.union(*sets), set(range(252)))
        self.assertTrue(all(a.isdisjoint(b) for i, a in enumerate(sets) for b in sets[i + 1:]))

    def test_every_matching_independently_enumerated(self):
        self.assertEqual(len(self.rows), 60)
        for rows in self.rows.values():
            self.assertEqual(len(rows), 105)
            for row in rows:
                self.assertTrue(set(row) & self.zero or set(row) <= self.nonzero)

    def test_each_nonzero_assumption_needed_for_this_transfer(self):
        for i in self.nonzero:
            with self.subTest(coordinate=i), self.assertRaisesRegex(ValueError, "uncovered matching"):
                P.check_projection(DATA, self.nonzero - {i}, self.zero)

    def test_each_zero_assumption_needed_for_this_transfer(self):
        for i in self.zero:
            with self.subTest(coordinate=i), self.assertRaisesRegex(ValueError, "uncovered matching"):
                P.check_projection(DATA, self.nonzero, self.zero - {i})

    def test_zero_hitting_minimality_witnesses(self):
        support = set(DATA["support"])
        self.assertTrue(self.core["zero_hitting_set_is_minimum"])
        self.assertEqual(set(self.core["minimum_zero_witnesses"]), self.zero)
        for i, (code, matching) in self.core["minimum_zero_witnesses"].items():
            self.assertEqual(set(self.rows[code][matching]) - support, {i})

    def test_inconsistent_core_rejected(self):
        with self.assertRaisesRegex(ValueError, "inconsistent"):
            P.check_projection(DATA, self.nonzero | {next(iter(self.zero))}, self.zero)
        with self.assertRaisesRegex(ValueError, "inconsistent"):
            P.check_projection(DATA, self.nonzero, self.zero | {next(iter(self.nonzero))})

    def test_actual_and_filled_amplitudes_agree_with_free_coordinates(self):
        rng = random.Random(20260905)
        support = set(DATA["support"])
        for trial in range(16):
            actual = [rng.randint(-4, 4) for _ in range(252)]
            for i in self.nonzero:
                actual[i] = rng.choice((-3, -2, -1, 1, 2, 3))
            for i in self.zero:
                actual[i] = 0
            if trial < 2:
                for i in self.core["free"]:
                    actual[i] = trial
            filled = [actual[i] if i in self.nonzero else 1 if i in support else 0 for i in range(252)]
            for code, rows in self.rows.items():
                evaluate = lambda weights: sum(weights[a] * weights[b] * weights[c] * weights[d]
                                                for a, b, c, d in rows)
                self.assertEqual(evaluate(actual), evaluate(filled), (trial, code))


if __name__ == "__main__":
    unittest.main(verbosity=2)
