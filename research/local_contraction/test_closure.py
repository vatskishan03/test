#!/usr/bin/env python3
"""Exact adversarial checks; these tests are not substitutes for a Lean proof."""
from fractions import Fraction as Q
from functools import lru_cache
from itertools import product
import random
import unittest
import closure as C
import tensor_oracle as O


def from_columns(*cols):
    return tuple(tuple(Q(cols[j][i]) for j in range(3)) for i in range(3))


def pure_column(color, vector):
    return from_columns(*(vector if i == color else C.ZERO for i in range(3)))


ZERO_MATRIX = from_columns(C.ZERO, C.ZERO, C.ZERO)
DIAGONAL_GUARDS = tuple(pure_column(i, C.AXES[i]) for i in range(3))


@lru_cache(None)
def kernel(normal):
    return C.annihilator_basis((normal,))


def brute_fixed(g, normals):
    return all(C.diagonal(g, hs) == 0 for hs in product(*(kernel(n) for n in normals)))


def unlock_family():
    a = (1, 1, 0)
    return (pure_column(0, a), from_columns(C.AXES[0], a, C.ZERO),
            *DIAGONAL_GUARDS[1:], ZERO_MATRIX)


def three_step_family():
    a, b, c = (1, 1, 0), (0, 1, 1), (0, 0, 1)
    return (pure_column(0, a), from_columns(b, a, C.ZERO), from_columns(c, a, b),
            *DIAGONAL_GUARDS[1:])


class ClosureTests(unittest.TestCase):
    def test_linear_algebra(self):
        for rows in [(), ((1, 2, 3),), ((1, 1, 0), (0, 1, 1)), C.AXES,
                     ((1, 1, 0), (2, 2, 0), (0, 0, 0))]:
            basis = C.span_basis(rows)
            null = C.annihilator_basis(rows)
            self.assertEqual(len(basis) + len(null), 3)
            self.assertTrue(all(C.in_span(basis, row) for row in rows))
            self.assertTrue(all(C.dot(row, v) == 0 for row in rows for v in null))
            self.assertEqual(C.span_basis(basis), basis)

    def test_fixed_classification_exhaustive_two_slots(self):
        vectors = tuple(tuple(map(Q, v)) for v in product((-1, 0, 1), repeat=3))
        for a, b in product(vectors, repeat=2):
            for g in vectors:
                self.assertEqual(C.fixed_death(g, (a, b)), brute_fixed(g, (a, b)), (g, a, b))

    def test_fixed_random_many_slots_and_counter_witnesses(self):
        rng = random.Random(20260905)
        for m in range(3, 7):
            for _ in range(80):
                g = tuple(Q(rng.randint(-2, 2)) for _ in range(3))
                normals = tuple(tuple(Q(rng.choice((0, 0, -1, 1))) for _ in range(3)) for _ in range(m))
                actual = C.fixed_death(g, normals)
                self.assertEqual(actual, brute_fixed(g, normals), (g, normals))
                if not actual:
                    hs = C.fixed_witness(g, normals)
                    self.assertTrue(all(C.dot(n, h) == 0 for n, h in zip(normals, hs)))
                    self.assertNotEqual(C.diagonal(g, hs), 0)

    def test_two_active_pencil_exception_is_retained(self):
        g, normals = (1, 1, 0), ((1, 1, 0),) * 5
        self.assertTrue(C.fixed_death(g, normals))
        self.assertTrue(brute_fixed(g, normals))
        self.assertTrue(all(len(C.support(n)) == 2 for n in normals))
        matrices = (from_columns(C.AXES[0], C.AXES[0], C.ZERO),) * 5
        result = C.decide(matrices)
        self.assertFalse(result.universal)
        self.assertTrue(C.check_negative_certificate(matrices, result.g, result.hs))

    def test_pencil_identity_can_fail_at_an_exceptional_point(self):
        matrices = (from_columns(C.AXES[0], C.AXES[1], C.ZERO),
                    from_columns((1, 1, 0), (1, 1, 0), C.ZERO),
                    *((from_columns(C.AXES[0], C.AXES[0], C.ZERO),) * 3))
        for t in (-3, -2, 1, 2, 3):
            self.assertTrue(C.fixed_death((1, t, 0), C.normals_at(matrices, (1, t, 0))))
        g = (1, -1, 0)
        normals = C.normals_at(matrices, g)
        self.assertEqual(normals[1], C.ZERO)
        self.assertFalse(C.fixed_death(g, normals))
        self.assertNotEqual(C.diagonal(g, C.fixed_witness(g, normals)), 0)

    def test_exceptional_unlocking_requires_closure(self):
        matrices = unlock_family()
        original_seed_span = C.span_basis(((1, 1, 0),))
        self.assertFalse(any(C.in_span(original_seed_span, axis) for axis in C.AXES))
        result = C.decide(matrices)
        self.assertTrue(result.universal)
        self.assertEqual(result.closures[0].edges, (0, 1))
        g = (1, -1, 2)
        normals = C.normals_at(matrices, g)
        self.assertEqual(normals[0], C.ZERO)
        self.assertEqual(C.support(normals[1]), {0})
        self.assertTrue(O.universal_death(matrices))

    def test_three_strict_extensions_are_sometimes_needed(self):
        matrices = three_step_family()
        result = C.decide(matrices)
        self.assertTrue(result.universal)
        self.assertEqual(result.closures[0].edges, (0, 1, 2))
        self.assertFalse(C.in_span(C.span_basis(((1, 1, 0), (0, 1, 1))), C.AXES[0]))
        self.assertTrue(O.universal_death(matrices))

    def test_full_active_checks_alone_are_insufficient(self):
        matrices = tuple(pure_column(c, C.AXES[(c + 1) % 3]) for c in range(3))
        self.assertTrue(C.fixed_death((1, 2, 3), C.normals_at(matrices, (1, 2, 3))))
        self.assertFalse(C.fixed_death((1, 0, 0), C.normals_at(matrices, (1, 0, 0))))
        result = C.decide(matrices)
        self.assertFalse(result.universal)
        self.assertTrue(C.check_negative_certificate(matrices, result.g, result.hs))

    def test_positive_certificate_mutations_fail_closed(self):
        matrices = three_step_family()
        chains = [list(c.edges) for c in C.decide(matrices).closures]
        self.assertTrue(C.check_positive_certificate(matrices, chains))
        for changed in ([chains[0][:-1], *chains[1:]], [[1, 0, 2], *chains[1:]],
                        [[99], *chains[1:]], [[0, 0], *chains[1:]], chains[:2]):
            with self.assertRaises(ValueError):
                C.check_positive_certificate(matrices, changed)

    def test_negative_certificate_mutations_fail_closed(self):
        matrices = (ZERO_MATRIX,) * 3
        result = C.decide(matrices)
        self.assertFalse(result.universal)
        self.assertTrue(C.check_negative_certificate(matrices, result.g, result.hs))
        with self.assertRaises(ValueError):
            C.check_negative_certificate(matrices, C.ZERO, result.hs)
        with self.assertRaises(ValueError):
            C.check_negative_certificate(matrices, result.g, result.hs[:-1])
        with self.assertRaises(ValueError):
            C.check_negative_certificate(DIAGONAL_GUARDS, (1, 1, 1), ((1, 1, 1),) * 3)

    def test_complete_algorithm_matches_independent_tensor_oracle(self):
        rng = random.Random(314159265)
        families = [DIAGONAL_GUARDS, unlock_family(), three_step_family(), (ZERO_MATRIX,) * 3]
        for m in range(2, 6):
            for _ in range(12):
                families.append(tuple(tuple(tuple(Q(rng.choice((0, 0, -1, 1)), rng.choice((1, 2, 3)))
                                                    for _ in range(3)) for _ in range(3)) for _ in range(m)))
        for _ in range(12):
            rows = [tuple(Q(rng.randint(-2, 2)) for _ in range(3)) for _ in range(3)]
            families.append(tuple(pure_column(c, rows[c]) for c in range(3)))
        for _ in range(4):
            extra = tuple(tuple(Q(rng.randint(-2, 2)) for _ in range(3)) for _ in range(3))
            families.append((*DIAGONAL_GUARDS, extra))
        for i, matrices in enumerate(families):
            with self.subTest(case=i):
                result = C.decide(matrices)
                self.assertEqual(result.universal, O.universal_death(matrices), matrices)
                if result.universal:
                    C.check_positive_certificate(matrices, [c.edges for c in result.closures])
                else:
                    C.check_negative_certificate(matrices, result.g, result.hs)

    def test_local_acceptance_does_not_imply_global_matching_equations(self):
        # Properly 3-edge-colored K_3,3: every star passes the local criterion,
        # all three target amplitudes are one, but a forbidden amplitude is one.
        weights = {}
        for i in range(3):
            for j in range(3):
                color = (j - i) % 3
                weights[(i, j + 3)] = pure_column(color, C.AXES[color])
        for v in range(6):
            matrices = tuple(weights.get(tuple(sorted((v, u))), ZERO_MATRIX)
                             for u in range(6) if u != v)
            self.assertTrue(C.decide(matrices).universal)

        def matchings(vertices):
            if not vertices:
                yield ()
                return
            a, *rest = vertices
            for b in rest:
                for remaining in matchings([v for v in rest if v != b]):
                    yield ((a, b),) + remaining

        def amplitude(colors):
            return sum(C.scalar_product(weights.get((a, b), ZERO_MATRIX)[colors[a]][colors[b]]
                                        for a, b in matching) for matching in matchings(list(range(6))))

        self.assertEqual([amplitude((c,) * 6) for c in range(3)], [1, 1, 1])
        self.assertEqual(amplitude((0, 1, 2, 0, 2, 1)), 1)

    def test_invalid_and_inexact_inputs_rejected(self):
        for matrices in ([], [ZERO_MATRIX], [[[0]]]):
            with self.assertRaises(ValueError):
                C.decide(matrices)
        bad = [[[0.0] * 3 for _ in range(3)] for _ in range(3)]
        with self.assertRaises(TypeError):
            C.decide(bad)


if __name__ == "__main__":
    unittest.main(verbosity=2)
