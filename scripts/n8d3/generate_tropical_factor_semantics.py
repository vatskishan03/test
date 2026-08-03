#!/usr/bin/env python3
"""Generate exact factor-semantics data for the N=8,D=3 non-attainment proof.

This is a deliberately fail-closed translator for the recovered exact Laurent
engine.  The engine is not imported until its byte length and SHA-256 have
been checked.  The canonical six-matching support is likewise checked before
any computation starts.

The retained research pipeline is:

* 200 six-term base relations;
* 360 sparse translated-face relations, giving the authoritative 560 rows;
* component saturation of those 560 rows;
* quotient overlap with ``min_face=2`` and ``source_min=3``;
* factor saturation after appending the 70 (A) or 88 (B) quotient rows;
* direct tetranomial factorization, false-twin compression, and exhaustive
  minimal-cover enumeration;
* exact terminal dispatch for all 54 Component-A and 288 Component-B covers;
* the three residual Component-B states, their two-row split factor graph,
  both minimal covers, and all six derivative-implication tables.

An additional 68-row second overlap closure is recomputed only as a regression
check.  It is explicitly not supplied to either component factor pipeline.

Certificate objects mirror the current Lean structures: every normalized or
factor certificate contains a `CharacterReductionCertificate` with `use`,
`source_eq`, and `target_eq`; every use contains `coefficient`,
`sourceExponent`, `targetExponent`, and a `MonomialReductionCertificate`.
Python generates finite data; it is not a proof oracle.  Every relation,
signed-character implication, factorization, and cover used by the theorem
must still be replayed by Lean's kernel.
"""

from __future__ import annotations

import argparse
from collections import Counter
from fractions import Fraction
import hashlib
import importlib.util
import io
from itertools import combinations, permutations, product
import json
from math import gcd
from pathlib import Path
import pickle
from types import ModuleType
from typing import Any, Iterable, Sequence
import zipfile


ROOT = Path(__file__).resolve().parents[2]
SUPPORT_PATH = (
    ROOT
    / "certificates/n8d3/tropical_nonattainment/tropical_border/support_144.txt"
)
OUTPUT_DIR = (
    ROOT
    / "certificates/n8d3/tropical_nonattainment/factor_semantics"
)

SUPPORT_SHA256 = "16bcc5dbb023bc4ed522633b462a81fa0d5dca6722aeac54e6bdc3dc2f44fbe1"
ENGINE_SHA256 = "75f55ccc4fa1f46e8b1ab1a22e489e2d93ff8370c4b8a8faca8deb0d02c749d0"
ENGINE_SIZE = 25_736
SYMPY_VERSION = "1.14.0"
HANDOFF_ZIP_SHA256 = "df8d76ed377a8c63f4517951556fb00a2860e1da5dde36dcf834f9aca14e2e15"
A_COMPLETE_SHA256 = "f4264471fa00e06608a749b1020f29a0711a6cd271f52ab3d731fbfa86a82222"
B_RESIDUAL_SHA256 = "dfcf6f64749c73687d4920633df888ae9589d31cfbcc873d93b5463e99504b58"

HANDOFF_PREFIX = "monochromatic_quantum_graphs_codex_handoff/finite_nonattainment"
BRANCH_STATE_SHA256 = {
    "B_state3_branch0.pkl": "b5ae9901ae526ee69fa95aa569f4b5b4ab839b9c53a9d236433e5df88bb49ac6",
    "B_state3_branch1.pkl": "0fad334566f902c2da65d324656c96a54ca27903ba2f5a04e3b69857e8476741",
    "B_state9_branch0.pkl": "9e42e8095d2d7a9f30d8a51045bc933bbb247bc8b96ea7b92f05fb3d31f1024f",
    "B_state9_branch1.pkl": "bd854b72af03089f6bb329816fd97b2ced0df1860adf4c7eeed283986e72503c",
    "B_state15_branch0.pkl": "18379887b5ffe3a43d3f248cf4c0afb3ae58bc14dbb6a0e6dee005d52cecea21",
    "B_state15_branch1.pkl": "1879f0618b3f2895d137d6ad3da885cf335c992f8e1e518af750d0242ad8b34f",
}
SCHEMA_VERSION = 2

BASE_COUNT = 200
FIRST_OVERLAP_COUNT = 360
FACTOR_PIPELINE_RELATION_COUNT = 560
UNUSED_SECOND_OVERLAP_COUNT = 68
EXPECTED_ACTIVE_MATCHINGS = (0, 1, 6, 21, 24, 40)

COMPONENT_EXPECTATIONS = {
    "A": {
        "initial_character_count": 5,
        "initial_rank": 6,
        "initial_distribution": {0: 20, 6: 540},
        "quotient_count": 70,
        "quotient_pairs": 2516,
        "factor_distribution": {0: 20, 4: 70, 6: 540},
        "raw_edges": 68,
        "raw_vertices": 59,
        "classes": 15,
        "class_edges": 12,
        "local_cover_counts": [9, 2, 3],
        "global_covers": 54,
    },
    "B": {
        "initial_character_count": 2,
        "initial_rank": 3,
        "initial_distribution": {6: 560},
        "quotient_count": 88,
        "quotient_pairs": 492,
        "factor_distribution": {4: 88, 6: 560},
        "raw_edges": 59,
        "raw_vertices": 49,
        "classes": 23,
        "class_edges": 21,
        "local_cover_counts": [16, 3, 3, 2],
        "global_covers": 288,
    },
}


def fail(message: str) -> None:
    raise SystemExit(message)


def sha256(raw: bytes) -> str:
    return hashlib.sha256(raw).hexdigest()


def load_engine(path: Path) -> ModuleType:
    raw = path.read_bytes()
    if len(raw) != ENGINE_SIZE:
        fail(f"recovered engine size mismatch: {len(raw)} != {ENGINE_SIZE}")
    digest = sha256(raw)
    if digest != ENGINE_SHA256:
        fail(f"recovered engine SHA-256 mismatch: {digest}")

    spec = importlib.util.spec_from_file_location("mqg_exact_engine_pinned", path)
    if spec is None or spec.loader is None:
        fail(f"cannot load recovered engine from {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)

    import sympy

    if sympy.__version__ != SYMPY_VERSION:
        fail(
            "SymPy version mismatch: "
            f"{sympy.__version__} != pinned {SYMPY_VERSION}"
        )
    if len(module.PMS) != 105:
        fail(f"recovered engine perfect-matching count changed: {len(module.PMS)}")
    return module


def fraction_json(value: Fraction) -> list[int]:
    value = Fraction(value)
    return [value.numerator, value.denominator]


def exponent_json(exponent: Sequence[int], support: Sequence[int]) -> list[dict[str, int]]:
    return [
        {"local": i, "global": support[i], "exp": int(value)}
        for i, value in enumerate(exponent)
        if value
    ]


def sparse_monomial_json(
    monomial: Iterable[tuple[int, int]], support: Sequence[int]
) -> list[dict[str, int]]:
    return [
        {"local": int(i), "global": support[int(i)], "exp": int(value)}
        for i, value in monomial
    ]


def character_json(character: tuple[Sequence[int], int], support: Sequence[int]) -> dict[str, Any]:
    exponent, bit = character
    return {"bit": int(bit), "row": exponent_json(exponent, support)}


def relation_json(
    relation: Iterable[tuple[Fraction, Sequence[int]]],
    support: Sequence[int],
    *,
    dense: bool,
) -> list[dict[str, Any]]:
    return [
        {
            "coef": fraction_json(coefficient),
            "monomial": (
                exponent_json(monomial, support)
                if dense
                else sparse_monomial_json(monomial, support)
            ),
        }
        for coefficient, monomial in relation
    ]


def integer_coefficient(value: Fraction, context: str) -> int:
    """Return the exact integer carried by a Lean `ℤ` certificate field."""
    value = Fraction(value)
    if value.denominator != 1:
        fail(f"{context} is not integral: {value}")
    return int(value)


def lean_polynomial_json(
    relation: Iterable[tuple[Fraction, Sequence[int]]],
    support: Sequence[int],
) -> list[dict[str, Any]]:
    """Canonical sparse payload for a `LaurentPolynomial` equality side."""
    polynomial = polynomial_dictionary(relation)
    return [
        {
            "coefficient": integer_coefficient(
                coefficient, "Lean Laurent-polynomial coefficient"
            ),
            "exponent": exponent_json(exponent, support),
        }
        for exponent, coefficient in sorted(polynomial.items())
    ]


def polynomial_equality_json(
    lhs: Iterable[tuple[Fraction, Sequence[int]]],
    rhs: Iterable[tuple[Fraction, Sequence[int]]],
    support: Sequence[int],
    context: str,
) -> dict[str, Any]:
    """Emit both exact sides of a kernel-replayed sparse-polynomial equality."""
    lhs = tuple((Fraction(c), tuple(map(int, e))) for c, e in lhs)
    rhs = tuple((Fraction(c), tuple(map(int, e))) for c, e in rhs)
    if polynomial_dictionary(lhs) != polynomial_dictionary(rhs):
        fail(f"{context} failed before serialization")
    return {
        "lhs": lean_polynomial_json(lhs, support),
        "rhs": lean_polynomial_json(rhs, support),
    }


def signed_character_row_json(
    exponent: Sequence[int], sign_exponent: int, support: Sequence[int]
) -> dict[str, Any]:
    """JSON mirror of `SignedCharacterRow` using the Lean field names."""
    return {
        "exponent": exponent_json(exponent, support),
        "signExponent": int(sign_exponent),
    }


def coloring_json(engine: ModuleType, code: int) -> list[int]:
    return list(engine.decode_coloring(code))


def global_source_json(index: int) -> dict[str, Any]:
    if not 0 <= index < FACTOR_PIPELINE_RELATION_COUNT:
        fail(f"global source index outside retained 560-row pipeline: {index}")
    if index < BASE_COUNT:
        return {"kind": "base", "index": index, "combined_index": index}
    return {
        "kind": "first_overlap",
        "index": index - BASE_COUNT,
        "combined_index": index,
    }


def factor_source_json(index: int, quotient_count: int) -> dict[str, Any]:
    if index < FACTOR_PIPELINE_RELATION_COUNT:
        return global_source_json(index)
    quotient_index = index - FACTOR_PIPELINE_RELATION_COUNT
    if not 0 <= quotient_index < quotient_count:
        fail(f"factor source index outside component input: {index}")
    return {
        "kind": "quotient",
        "index": quotient_index,
        "combined_index": index,
    }


def coord(engine: ModuleType, u: int, v: int, a: int, b: int) -> int:
    if u > v:
        u, v = v, u
        a, b = b, a
    return engine.EIDX[u][v] * 9 + 3 * a + b


def make_character(
    engine: ModuleType,
    support: Sequence[int],
    lhs: Sequence[int],
    rhs: Sequence[int],
) -> tuple[tuple[int, ...], int]:
    locations = {value: i for i, value in enumerate(support)}
    missing = sorted((set(lhs) | set(rhs)) - set(locations))
    if missing:
        fail(f"component character uses unsupported coordinates: {missing}")
    exponent = [0] * len(support)
    for value in lhs:
        exponent[locations[value]] += 1
    for value in rhs:
        exponent[locations[value]] -= 1
    return engine.normalize_char(tuple(exponent), 0)


def raw_character(
    support: Sequence[int], lhs: Sequence[int], rhs: Sequence[int], sign: int = 0
) -> tuple[tuple[int, ...], int]:
    locations = {value: i for i, value in enumerate(support)}
    missing = sorted((set(lhs) | set(rhs)) - set(locations))
    if missing:
        fail(f"raw character uses unsupported coordinates: {missing}")
    exponent = [0] * len(support)
    for value in lhs:
        exponent[locations[value]] += 1
    for value in rhs:
        exponent[locations[value]] -= 1
    return tuple(exponent), int(sign)


def component_characters(
    engine: ModuleType, support: Sequence[int]
) -> dict[str, tuple[tuple[tuple[int, ...], int], ...]]:
    c = lambda u, v, a, b: coord(engine, u, v, a, b)
    raw = {
        "A": (
            ((c(1, 6, 0, 1), c(6, 7, 2, 1)), (c(1, 6, 0, 2), c(6, 7, 1, 1))),
            ((c(1, 6, 1, 1), c(6, 7, 2, 1)), (c(1, 6, 1, 2), c(6, 7, 1, 1))),
            ((c(1, 6, 0, 1), c(4, 6, 0, 2)), (c(1, 6, 0, 2), c(4, 6, 0, 1))),
            ((c(1, 6, 0, 1), c(4, 6, 1, 2)), (c(1, 6, 0, 2), c(4, 6, 1, 1))),
            ((c(1, 6, 0, 1), c(4, 6, 2, 2)), (c(1, 6, 0, 2), c(4, 6, 2, 1))),
        ),
        "B": (
            ((c(2, 5, 0, 0), c(5, 7, 1, 1)), (c(2, 5, 0, 1), c(5, 7, 0, 1))),
            ((c(2, 5, 2, 0), c(5, 7, 1, 1)), (c(2, 5, 2, 1), c(5, 7, 0, 1))),
        ),
    }
    return {
        name: tuple(make_character(engine, support, lhs, rhs) for lhs, rhs in rows)
        for name, rows in raw.items()
    }


def derivative_characters(
    engine: ModuleType, support: Sequence[int]
) -> dict[int, tuple[tuple[tuple[int, ...], int], ...]]:
    c = lambda u, v, a, b: coord(engine, u, v, a, b)
    branch0 = (
        raw_character(
            support,
            (c(2, 5, 0, 0), c(5, 7, 1, 1)),
            (c(2, 5, 0, 1), c(5, 7, 0, 1)),
        ),
        raw_character(
            support,
            (c(2, 5, 0, 0), c(5, 7, 1, 0)),
            (c(2, 5, 0, 1), c(5, 7, 0, 0)),
        ),
        raw_character(
            support,
            (c(2, 5, 0, 0), c(4, 5, 0, 1)),
            (c(2, 5, 0, 1), c(4, 5, 0, 0)),
        ),
        raw_character(
            support,
            (c(1, 5, 0, 0), c(2, 5, 0, 1)),
            (c(1, 5, 0, 1), c(2, 5, 0, 0)),
        ),
    )
    branch1 = (
        raw_character(
            support,
            (c(2, 5, 0, 0), c(0, 2, 2, 2)),
            (c(2, 5, 2, 0), c(0, 2, 2, 0)),
        ),
        raw_character(
            support,
            (c(2, 5, 0, 0), c(2, 5, 2, 2)),
            (c(2, 5, 2, 0), c(2, 5, 0, 2)),
        ),
        raw_character(
            support,
            (c(2, 5, 0, 0), c(0, 2, 0, 2)),
            (c(2, 5, 2, 0), c(0, 2, 0, 0)),
        ),
        raw_character(
            support,
            (c(2, 5, 0, 0), c(2, 5, 2, 1)),
            (c(2, 5, 2, 0), c(2, 5, 0, 1)),
        ),
        raw_character(
            support,
            (c(2, 5, 0, 0), c(2, 3, 2, 2)),
            (c(2, 5, 2, 0), c(2, 3, 0, 2)),
        ),
    )
    return {0: branch0, 1: branch1}


def counter_dict(values: Iterable[int]) -> dict[int, int]:
    return dict(sorted(Counter(values).items()))


def canonical_json_bytes(value: Any) -> bytes:
    return (json.dumps(value, indent=2, sort_keys=True) + "\n").encode()


class RestrictedResearchUnpickler(pickle.Unpickler):
    """Load the recovered pure-data state pickles without arbitrary globals."""

    def find_class(self, module: str, name: str) -> Any:
        if module == "collections" and name == "Counter":
            return Counter
        raise pickle.UnpicklingError(f"forbidden pickle global: {module}.{name}")


def load_research_inputs(
    handoff_zip: Path, branch_state_dir: Path
) -> dict[str, Any]:
    zip_raw = handoff_zip.read_bytes()
    if sha256(zip_raw) != HANDOFF_ZIP_SHA256:
        fail(f"canonical handoff ZIP SHA-256 mismatch: {sha256(zip_raw)}")
    with zipfile.ZipFile(io.BytesIO(zip_raw)) as archive:
        a_raw = archive.read(f"{HANDOFF_PREFIX}/component_A/A_complete.json")
        b_raw = archive.read(f"{HANDOFF_PREFIX}/component_B/B_residual_complete.json")
        bundled_branch0 = archive.read(
            f"{HANDOFF_PREFIX}/branches/B_state3_branch0.pkl"
        )
    if sha256(a_raw) != A_COMPLETE_SHA256:
        fail("A_complete.json SHA-256 mismatch inside canonical handoff")
    if sha256(b_raw) != B_RESIDUAL_SHA256:
        fail("B_residual_complete.json SHA-256 mismatch inside canonical handoff")

    branch_states = {}
    for filename, expected_digest in BRANCH_STATE_SHA256.items():
        path = branch_state_dir / filename
        raw = path.read_bytes()
        digest = sha256(raw)
        if digest != expected_digest:
            fail(f"supplemental branch-state SHA-256 mismatch for {filename}: {digest}")
        if filename == "B_state3_branch0.pkl" and raw != bundled_branch0:
            fail("supplemental C3-0 state differs from canonical bundled state")
        state = RestrictedResearchUnpickler(io.BytesIO(raw)).load()
        if not isinstance(state, dict):
            fail(f"supplemental branch state is not a dictionary: {filename}")
        branch_states[filename] = state

    return {
        "handoff_zip_sha256": HANDOFF_ZIP_SHA256,
        "a_complete": json.loads(a_raw),
        "b_residual": json.loads(b_raw),
        "branch_states": branch_states,
    }


def extended_gcd(a: int, b: int) -> tuple[int, int, int]:
    """Return x,y,g with x*a+y*b=g>=0, matching the HNF convention."""
    aa, bb = abs(a), abs(b)
    old_r, r = aa, bb
    old_s, s = 1, 0
    old_t, t = 0, 1
    while r:
        q = old_r // r
        old_r, r = r, old_r - q * r
        old_s, s = s, old_s - q * s
        old_t, t = t, old_t - q * t
    x = old_s if a >= 0 else -old_s
    y = old_t if b >= 0 else -old_t
    g = old_r
    if a != 0 and b % a == 0:
        y = 0
        x = -1 if a < 0 else 1
        g = abs(a)
    if x * a + y * b != g:
        fail("internal extended-gcd replay failed")
    return x, y, g


def add_integer_columns(
    matrix: list[list[int]], i: int, j: int, a: int, b: int, c: int, d: int
) -> None:
    for row in matrix:
        old_i = row[i]
        row[i] = a * old_i + b * row[j]
        row[j] = c * old_i + d * row[j]


def column_hnf_with_transform(
    columns: Sequence[Sequence[int]],
) -> tuple[list[tuple[int, ...]], list[tuple[int, ...]]]:
    """Column HNF plus exact original-column coordinates for every HNF column."""
    if not columns:
        return [], []
    row_count = len(columns[0])
    if any(len(column) != row_count for column in columns):
        fail("integer-lattice columns have inconsistent dimensions")
    column_count = len(columns)
    matrix = [
        [int(columns[column][row]) for column in range(column_count)]
        for row in range(row_count)
    ]
    transform = [
        [1 if row == column else 0 for column in range(column_count)]
        for row in range(column_count)
    ]
    k = column_count
    for i in range(row_count - 1, -1, -1):
        if k == 0:
            break
        k -= 1
        for j in range(k - 1, -1, -1):
            if matrix[i][j] == 0:
                continue
            u, v, divisor = extended_gcd(matrix[i][k], matrix[i][j])
            if divisor == 0:
                fail("zero divisor in column-HNF replay")
            r = matrix[i][k] // divisor
            s = matrix[i][j] // divisor
            add_integer_columns(matrix, k, j, u, v, -s, r)
            add_integer_columns(transform, k, j, u, v, -s, r)
        pivot = matrix[i][k]
        if pivot < 0:
            add_integer_columns(matrix, k, k, -1, 0, -1, 0)
            add_integer_columns(transform, k, k, -1, 0, -1, 0)
            pivot = -pivot
        if pivot == 0:
            k += 1
        else:
            for j in range(k + 1, column_count):
                quotient = matrix[i][j] // pivot
                add_integer_columns(matrix, j, k, 1, -quotient, 0, 1)
                add_integer_columns(transform, j, k, 1, -quotient, 0, 1)

    hnf_columns = [
        tuple(matrix[row][column] for row in range(row_count))
        for column in range(k, column_count)
    ]
    transform_columns = [
        tuple(transform[row][column] for row in range(column_count))
        for column in range(k, column_count)
    ]
    for hnf_column, transform_column in zip(hnf_columns, transform_columns):
        replay = tuple(
            sum(columns[j][i] * transform_column[j] for j in range(column_count))
            for i in range(row_count)
        )
        if replay != hnf_column:
            fail("column-HNF transformation replay failed")
    return hnf_columns, transform_columns


class IntegerLatticeWitnessSolver:
    """Produce exact coefficients in raw signed-character rows plus parity 2."""

    def __init__(self, characters: Sequence[tuple[Sequence[int], int]]):
        self.characters = tuple(
            (tuple(map(int, exponent)), int(bit)) for exponent, bit in characters
        )
        if not self.characters:
            fail("integer witness solver requires at least one character row")
        self.dimension = len(self.characters[0][0])
        if any(len(exponent) != self.dimension for exponent, _bit in self.characters):
            fail("signed-character dimensions differ")
        parity = (0,) * self.dimension + (2,)
        self.columns = [exponent + (bit,) for exponent, bit in self.characters]
        self.columns.append(parity)
        self.hnf_columns, self.transform_columns = column_hnf_with_transform(
            self.columns
        )
        self.pivots = []
        for column in self.hnf_columns:
            nonzero = [i for i, value in enumerate(column) if value]
            if not nonzero:
                fail("zero column survived column-HNF replay")
            pivot = max(nonzero)
            if column[pivot] <= 0:
                fail("column-HNF pivot is not positive")
            self.pivots.append(pivot)
        self.cache: dict[tuple[tuple[int, ...], int], dict[str, Any]] = {}

    def solve(self, exponent: Sequence[int], sign_parity: int) -> dict[str, Any]:
        exponent = tuple(map(int, exponent))
        sign_parity = int(sign_parity)
        key = (exponent, sign_parity)
        if key in self.cache:
            return self.cache[key]
        target = exponent + (sign_parity,)
        value = list(target)
        hnf_coefficients = [0] * len(self.hnf_columns)
        for index in range(len(self.hnf_columns) - 1, -1, -1):
            column = self.hnf_columns[index]
            pivot = self.pivots[index]
            quotient, _remainder = divmod(value[pivot], column[pivot])
            hnf_coefficients[index] = quotient
            if quotient:
                for row, entry in enumerate(column):
                    value[row] -= quotient * entry
        if any(value):
            fail("requested signed row is not in the exact integer lattice")
        original_coefficients = [0] * len(self.columns)
        for hnf_index, quotient in enumerate(hnf_coefficients):
            if not quotient:
                continue
            transform = self.transform_columns[hnf_index]
            for original_index, coefficient in enumerate(transform):
                original_coefficients[original_index] += quotient * coefficient
        replay = tuple(
            sum(
                original_coefficients[column] * self.columns[column][row]
                for column in range(len(self.columns))
            )
            for row in range(self.dimension + 1)
        )
        if replay != target:
            fail("integer signed-character coefficient replay failed")
        character_coefficients = original_coefficients[:-1]
        parity_generator_coefficient = original_coefficients[-1]
        sign_sum = sum(
            coefficient * character[1]
            for coefficient, character in zip(character_coefficients, self.characters)
        )
        even_correction = -parity_generator_coefficient
        if sign_sum != sign_parity + 2 * even_correction:
            fail("signed-character even correction failed")
        result = {
            "character_coefficients": [
                [i, coefficient]
                for i, coefficient in enumerate(character_coefficients)
                if coefficient
            ],
            "sign_parity": sign_parity,
            "even_correction": even_correction,
            "parity_generator": {"exponent": [], "sign_exponent": 2},
            "parity_generator_coefficient": parity_generator_coefficient,
            "exact_sign_sum": sign_sum,
        }
        self.cache[key] = result
        return result


def dense_relation(
    engine: ModuleType,
    relation: Sequence[tuple[Fraction, Sequence[int]]],
    dimension: int,
    *,
    already_dense: bool,
) -> tuple[tuple[Fraction, tuple[int, ...]], ...]:
    return tuple(
        (
            Fraction(coefficient),
            tuple(map(int, monomial))
            if already_dense
            else engine.sm_dense(monomial, dimension),
        )
        for coefficient, monomial in relation
    )


def polynomial_dictionary(
    relation: Iterable[tuple[Fraction, Sequence[int]]]
) -> dict[tuple[int, ...], Fraction]:
    result: dict[tuple[int, ...], Fraction] = {}
    for coefficient, exponent in relation:
        exponent = tuple(map(int, exponent))
        result[exponent] = result.get(exponent, Fraction(0)) + Fraction(coefficient)
    return {exponent: coefficient for exponent, coefficient in result.items() if coefficient}


def translate_dense_relation(
    relation: Iterable[tuple[Fraction, Sequence[int]]],
    scalar: Fraction,
    shift: Sequence[int],
) -> list[tuple[Fraction, tuple[int, ...]]]:
    shift = tuple(map(int, shift))
    return [
        (
            Fraction(scalar) * Fraction(coefficient),
            tuple(int(exponent[i]) + shift[i] for i in range(len(shift))),
        )
        for coefficient, exponent in relation
    ]


def implication_certificate_json(
    solver: IntegerLatticeWitnessSolver,
    witness: dict[str, Any],
    target_exponent: Sequence[int],
    target_sign_exponent: int,
    support: Sequence[int],
) -> dict[str, Any]:
    """JSON mirror of `SignedCharacterRow.ImplicationCertificate`.

    The coefficient vector is dense and its last coordinate is the coefficient
    of `parityGenerator`, exactly matching `withParityGenerator chars`.
    `combination_eq` carries both integer rows of the equality Lean must replay.
    """
    target_exponent = tuple(map(int, target_exponent))
    target_sign_exponent = int(target_sign_exponent)
    coefficients = [0] * (len(solver.characters) + 1)
    for character_index, coefficient in witness["character_coefficients"]:
        coefficients[int(character_index)] = int(coefficient)
    coefficients[-1] = int(witness["parity_generator_coefficient"])

    replay_exponent = tuple(
        sum(
            coefficients[j] * solver.characters[j][0][i]
            for j in range(len(solver.characters))
        )
        for i in range(solver.dimension)
    )
    replay_sign_exponent = sum(
        coefficients[j] * solver.characters[j][1]
        for j in range(len(solver.characters))
    ) + 2 * coefficients[-1]
    if replay_exponent != target_exponent:
        fail("implication certificate exponent combination_eq failed")
    if replay_sign_exponent != target_sign_exponent:
        fail("implication certificate sign combination_eq failed")
    if witness["sign_parity"] != target_sign_exponent:
        fail("implication witness target sign changed before serialization")

    target = signed_character_row_json(
        target_exponent, target_sign_exponent, support
    )
    return {
        "coeff": coefficients,
        "combination_eq": {
            "lhs": signed_character_row_json(
                replay_exponent, replay_sign_exponent, support
            ),
            "rhs": target,
        },
    }


def monomial_reduction_certificate(
    lattice: Any,
    solver: IntegerLatticeWitnessSolver,
    source: Sequence[int],
    representative: Sequence[int],
    sign_parity: int,
    support: Sequence[int],
) -> dict[str, Any]:
    """JSON mirror of `MonomialReductionCertificate`."""
    source = tuple(map(int, source))
    representative = tuple(map(int, representative))
    difference = tuple(source[i] - representative[i] for i in range(len(source)))
    if not lattice.member(difference, sign_parity):
        fail("engine lattice rejected an emitted monomial reduction")
    witness = solver.solve(difference, sign_parity)
    return {
        "signExponent": int(sign_parity),
        "implication": implication_certificate_json(
            solver, witness, difference, sign_parity, support
        ),
    }


def character_reduction_certificate_json(
    uses: Sequence[dict[str, Any]],
    source: Sequence[tuple[Fraction, Sequence[int]]],
    target: Sequence[tuple[Fraction, Sequence[int]]],
    support: Sequence[int],
) -> dict[str, Any]:
    """JSON mirror of `CharacterReductionCertificate` with explicit equalities."""
    source_lhs = []
    target_lhs = []
    for use in uses:
        coefficient = int(use["coefficient"])
        source_exponent = tuple(
            next(
                int(row["exp"])
                for row in use["sourceExponent"]
                if int(row["local"]) == i
            )
            if any(int(row["local"]) == i for row in use["sourceExponent"])
            else 0
            for i in range(len(support))
        )
        target_exponent = tuple(
            next(
                int(row["exp"])
                for row in use["targetExponent"]
                if int(row["local"]) == i
            )
            if any(int(row["local"]) == i for row in use["targetExponent"])
            else 0
            for i in range(len(support))
        )
        sign_exponent = int(use["reduction"]["signExponent"])
        signed_coefficient = coefficient if sign_exponent % 2 == 0 else -coefficient
        source_lhs.append((Fraction(coefficient), source_exponent))
        target_lhs.append((Fraction(signed_coefficient), target_exponent))
    return {
        "use": list(uses),
        "source_eq": polynomial_equality_json(
            source_lhs, source, support, "CharacterReductionCertificate.source_eq"
        ),
        "target_eq": polynomial_equality_json(
            target_lhs, target, support, "CharacterReductionCertificate.target_eq"
        ),
    }


def relation_reduction_certificate(
    engine: ModuleType,
    relation: Sequence[tuple[Fraction, Sequence[int]]],
    characters: Sequence[Any],
    lattice: Any,
    support: Sequence[int],
    *,
    already_dense: bool,
    expected_target: Sequence[tuple[Fraction, Sequence[int]]] | None = None,
    solver: IntegerLatticeWitnessSolver | None = None,
) -> dict[str, Any]:
    dense = dense_relation(
        engine, relation, len(support), already_dense=already_dense
    )
    if any(coefficient.denominator != 1 for coefficient, _exponent in dense):
        fail("Laurent source relation contains a nonintegral coefficient")
    if solver is None:
        solver = IntegerLatticeWitnessSolver(characters)
    elif solver.characters != tuple(
        (tuple(map(int, exponent)), int(bit)) for exponent, bit in characters
    ):
        fail("relation reduction received a solver for different characters")
    aggregate: dict[tuple[int, ...], Fraction] = {}
    uses = []
    for term_index, (coefficient, exponent) in enumerate(dense):
        representative, sign_parity = lattice.term(exponent)
        certificate = monomial_reduction_certificate(
            lattice,
            solver,
            exponent,
            representative,
            sign_parity,
            support,
        )
        semantic_coefficient = coefficient * (-1 if sign_parity else 1)
        aggregate[representative] = (
            aggregate.get(representative, Fraction(0)) + semantic_coefficient
        )
        uses.append(
            {
                "coefficient": integer_coefficient(
                    coefficient,
                    f"CharacterReductionUse coefficient at term {term_index}",
                ),
                "sourceExponent": exponent_json(exponent, support),
                "targetExponent": exponent_json(representative, support),
                "reduction": certificate,
            }
        )
    aggregate = {
        exponent: coefficient
        for exponent, coefficient in aggregate.items()
        if coefficient
    }
    aggregate_items = tuple(
        (coefficient, exponent)
        for exponent, coefficient in sorted(aggregate.items())
    )
    if aggregate_items:
        normalization_unit = aggregate_items[0][0]
        target = tuple(
            (coefficient / normalization_unit, exponent)
            for coefficient, exponent in aggregate_items
        )
    else:
        normalization_unit = Fraction(1)
        target = ()
    engine_source = (
        tuple(
            (Fraction(coefficient), engine.dense_sm(tuple(map(int, exponent))))
            for coefficient, exponent in relation
        )
        if already_dense
        else relation
    )
    engine_target = engine.reduce_relation_dense(
        engine_source, lattice, len(support)
    )
    if target != engine_target:
        fail("independent relation aggregate differs from recovered engine reduction")
    if expected_target is not None:
        expected_dense = tuple(
            (Fraction(coefficient), tuple(map(int, exponent)))
            for coefficient, exponent in expected_target
        )
        if target != expected_dense:
            fail("relation reduction differs from its declared target")
    if normalization_unit.denominator != 1:
        fail("relation reduction has a nonintegral normalization unit")
    if any(
        coefficient.denominator != 1
        for coefficient, _exponent in aggregate_items + target
    ):
        fail("Laurent reduction contains a nonintegral target coefficient")
    replay_target = {
        exponent: normalization_unit * coefficient for coefficient, exponent in target
    }
    if replay_target != aggregate:
        fail("aggregate target equality failed")
    return {
        "unit": integer_coefficient(
            normalization_unit, "NormalizedCharacterReductionCertificate.unit"
        ),
        "unit_ne_zero": normalization_unit != 0,
        "reduction": character_reduction_certificate_json(
            uses, dense, aggregate_items, support
        ),
        "provenance": {
            "basis_character_count": len(characters),
            "normalized_target": lean_polynomial_json(target, support),
        },
    }


def exact_two_source_uses(
    engine: ModuleType,
    source_i: Sequence[Any],
    source_j: Sequence[Any],
    scalar: Fraction,
    shift: Sequence[tuple[int, int]],
    target: Sequence[Any],
    support: Sequence[int],
) -> list[dict[str, Any]]:
    raw = engine.rel_mul_shift(source_i, scalar, shift)
    raw += [(-coefficient, monomial) for coefficient, monomial in source_j]
    aggregate: dict[Any, Fraction] = {}
    for coefficient, monomial in raw:
        aggregate[monomial] = aggregate.get(monomial, Fraction(0)) + coefficient
    aggregate = {monomial: coefficient for monomial, coefficient in aggregate.items() if coefficient}
    common = engine.monomial_gcd(list(aggregate))
    shifted = {
        engine.sm_sub(monomial, common): coefficient
        for monomial, coefficient in aggregate.items()
    }
    first = sorted(shifted.items())[0]
    normalization = first[1]
    source_i_scale = Fraction(scalar) / normalization
    source_j_scale = Fraction(-1) / normalization
    if source_i_scale.denominator != 1 or source_j_scale.denominator != 1:
        fail("translated relation requires a nonintegral source scale")
    source_i_shift = engine.sm_sub(shift, common)
    source_j_shift = engine.sm_sub((), common)
    uses = [
        {
            "source_index": None,
            "integer_scale": int(source_i_scale),
            "shift": sparse_monomial_json(source_i_shift, support),
        },
        {
            "source_index": None,
            "integer_scale": int(source_j_scale),
            "shift": sparse_monomial_json(source_j_shift, support),
        },
    ]
    replay = engine.rel_mul_shift(source_i, source_i_scale, source_i_shift)
    replay += engine.rel_mul_shift(source_j, source_j_scale, source_j_shift)
    target_dense = dense_relation(engine, target, len(support), already_dense=False)
    replay_dense = dense_relation(
        engine, engine.canon_relation(replay), len(support), already_dense=False
    )
    if replay_dense != target_dense:
        fail("translated relation exact source-use replay failed")
    if polynomial_dictionary(
        dense_relation(engine, replay, len(support), already_dense=False)
    ) != polynomial_dictionary(target_dense):
        fail("translated relation is only canonically, not exactly, equal to target")
    return uses


def factor_polynomial_terms(
    left: tuple[Sequence[int], int], right: tuple[Sequence[int], int]
) -> list[tuple[str, Fraction, tuple[int, ...]]]:
    left_exponent, left_bit = left
    right_exponent, right_bit = right
    left_exponent = tuple(map(int, left_exponent))
    right_exponent = tuple(map(int, right_exponent))
    epsilon_left = -1 if int(left_bit) % 2 else 1
    epsilon_right = -1 if int(right_bit) % 2 else 1
    zero = (0,) * len(left_exponent)
    return [
        (
            "sum",
            Fraction(1),
            tuple(left_exponent[i] + right_exponent[i] for i in range(len(zero))),
        ),
        ("left", Fraction(-epsilon_right), left_exponent),
        ("right", Fraction(-epsilon_left), right_exponent),
        ("constant", Fraction(epsilon_left * epsilon_right), zero),
    ]


def exact_factor_certificate(
    relation: Sequence[tuple[Fraction, Sequence[int]]],
    left: tuple[Sequence[int], int],
    right: tuple[Sequence[int], int],
    characters: Sequence[Any],
    lattice: Any,
    support: Sequence[int],
    solver: IntegerLatticeWitnessSolver | None = None,
) -> dict[str, Any]:
    source = tuple(
        (Fraction(coefficient), tuple(map(int, exponent)))
        for coefficient, exponent in relation
    )
    if len(source) != 4:
        fail("factor certificate source is not a tetranomial")
    factor_terms = factor_polynomial_terms(left, right)
    if solver is None:
        solver = IntegerLatticeWitnessSolver(characters)
    elif solver.characters != tuple(
        (tuple(map(int, exponent)), int(bit)) for exponent, bit in characters
    ):
        fail("factor certificate received a solver for different characters")
    candidates = []
    for permutation in permutations(range(4)):
        anchor_target = factor_terms[permutation[0]]
        shift = tuple(
            source[0][1][i] - anchor_target[2][i]
            for i in range(len(support))
        )
        unit = source[0][0] / anchor_target[1]
        if not unit or unit.denominator != 1:
            continue
        uses = []
        valid = True
        aggregate: dict[tuple[int, ...], Fraction] = {}
        for source_index, target_index in enumerate(permutation):
            source_coefficient, source_exponent = source[source_index]
            target_kind, target_coefficient, target_exponent = factor_terms[target_index]
            translated_target = tuple(
                target_exponent[i] + shift[i] for i in range(len(support))
            )
            difference = tuple(
                source_exponent[i] - translated_target[i]
                for i in range(len(support))
            )
            even = lattice.member(difference, 0)
            odd = lattice.member(difference, 1)
            if even and odd:
                fail("factor term difference is both even and odd")
            if not (even or odd):
                valid = False
                break
            parity = 1 if odd else 0
            semantic_coefficient = source_coefficient * (-1 if parity else 1)
            if semantic_coefficient != unit * target_coefficient:
                valid = False
                break
            certificate = monomial_reduction_certificate(
                lattice,
                solver,
                source_exponent,
                translated_target,
                parity,
                support,
            )
            aggregate[translated_target] = (
                aggregate.get(translated_target, Fraction(0)) + semantic_coefficient
            )
            uses.append(
                {
                    "coefficient": integer_coefficient(
                        source_coefficient,
                        f"factor CharacterReductionUse coefficient at term {source_index}",
                    ),
                    "sourceExponent": exponent_json(source_exponent, support),
                    "targetExponent": exponent_json(translated_target, support),
                    "reduction": certificate,
                }
            )
        if not valid:
            continue
        expected = polynomial_dictionary(
            translate_dense_relation(
                [(coefficient, exponent) for _kind, coefficient, exponent in factor_terms],
                unit,
                shift,
            )
        )
        if aggregate != expected:
            fail("factor certificate aggregate does not equal shifted factor polynomial")
        candidates.append((permutation, shift, unit, uses))
    if not candidates:
        fail("could not produce an exact factor-polynomial certificate")
    permutation, shift, unit, uses = min(
        candidates, key=lambda item: (item[0], item[1], item[2])
    )
    if unit.denominator != 1 or unit == 0:
        fail("factor certificate unit is not a nonzero integer")
    translated_factor = tuple(
        translate_dense_relation(
            [
                (coefficient, exponent)
                for _kind, coefficient, exponent in factor_terms
            ],
            unit,
            shift,
        )
    )
    return {
        "unit": int(unit),
        "unit_ne_zero": True,
        "shift": exponent_json(shift, support),
        "reduction": character_reduction_certificate_json(
            uses, source, translated_factor, support
        ),
        "provenance": {
            "basis_character_count": len(characters),
            "left_endpoint": character_json(left, support),
            "right_endpoint": character_json(right, support),
            "left_epsilon": -1 if int(left[1]) % 2 else 1,
            "right_epsilon": -1 if int(right[1]) % 2 else 1,
            "factor_polynomial": [
                {
                    "term_index": index,
                    "kind": kind,
                    "coefficient": integer_coefficient(
                        coefficient, "factor-polynomial coefficient"
                    ),
                    "monomial": exponent_json(exponent, support),
                }
                for index, (kind, coefficient, exponent) in enumerate(factor_terms)
            ],
            "source_to_factor_term_permutation": list(permutation),
        },
    }


def official_relation_records(
    engine: ModuleType, support: Sequence[int]
) -> list[dict[str, Any]]:
    locations = {value: i for i, value in enumerate(support)}
    records = []
    for coloring_code, (coloring, active, monomials) in enumerate(
        engine.amplitude_matching_sets(support)
    ):
        terms = [
            (
                Fraction(1),
                tuple(sorted((locations[value], 1) for value in monomial)),
            )
            for monomial in monomials
        ]
        monochromatic = all(value == coloring[0] for value in coloring)
        # The recovered terminal system uses the exact official
        # nonmonochromatic EqSystem rows having six through nine active
        # perfect matchings.  There are 1,605 such colorings for this support.
        if monochromatic or not 6 <= len(terms) <= 9:
            continue
        relation = engine.canon_relation(terms)
        if relation:
            records.append(
                {
                    "official_relation_index": len(records),
                    "coloring_code": coloring_code,
                    "coloring": tuple(coloring),
                    "active_matching_indices": tuple(active),
                    "monochromatic": monochromatic,
                    "relation": relation,
                }
            )
    if len(records) != 1605:
        fail(f"official terminal relation count changed: {len(records)}")
    return records


def official_source_json(record: dict[str, Any], support: Sequence[int]) -> dict[str, Any]:
    return {
        "kind": "official_eq_system",
        "official_relation_index": record["official_relation_index"],
        "coloring_code": record["coloring_code"],
        "coloring": list(record["coloring"]),
        "active_matching_indices": list(record["active_matching_indices"]),
        "monochromatic": record["monochromatic"],
        "relation": relation_json(record["relation"], support, dense=False),
    }


def terminal_relation_table(
    official_records: Sequence[dict[str, Any]],
    quotient: Sequence[dict[str, Any]],
    support: Sequence[int],
    *,
    minimum_official_terms: int | None,
    extra_sparse_relations: Sequence[Any] = (),
) -> tuple[list[Any], list[dict[str, Any]]]:
    selected_records = [
        record
        for record in official_records
        if minimum_official_terms is None
        or len(record["relation"]) >= minimum_official_terms
    ]
    relations = [record["relation"] for record in selected_records]
    sources = [official_source_json(record, support) for record in selected_records]
    for relation_index, relation in enumerate(extra_sparse_relations):
        relations.append(relation)
        sources.append(
            {
                **global_source_json(relation_index),
                "relation": relation_json(relation, support, dense=False),
            }
        )
    for quotient_index, item in enumerate(quotient):
        relations.append(item["red"])
        sources.append(
            {
                "kind": "component_quotient",
                "quotient_index": quotient_index,
                "relation": relation_json(item["red"], support, dense=True),
            }
        )
    return relations, sources


def normalize_character_list(engine: ModuleType, characters: Sequence[Any]) -> list[Any]:
    result = []
    seen = set()
    for character in characters:
        normalized = engine.normalize_char(*character)
        if normalized not in seen:
            seen.add(normalized)
            result.append(normalized)
    return result


def saturation_with_certificates(
    engine: ModuleType,
    relations: Sequence[Any],
    relation_sources: Sequence[dict[str, Any]],
    support: Sequence[int],
    base_characters: Sequence[Any],
    *,
    maxiter: int = 50,
    find_nested_flag: bool = True,
) -> dict[str, Any]:
    if len(relations) != len(relation_sources):
        fail("terminal relation/source table lengths differ")
    characters = normalize_character_list(engine, base_characters)
    seen = set(characters)
    derivations = []
    history = []
    for iteration in range(maxiter):
        lattice = engine.SignedLattice(len(support), characters)
        if not lattice.consistent():
            solver = IntegerLatticeWitnessSolver(characters)
            contradiction = solver.solve((0,) * len(support), 1)
            return {
                "status": "inconsistent",
                "chars": characters,
                "lat": lattice,
                "history": history,
                "derived_character_certificates": derivations,
                "inconsistency_certificate": contradiction,
            }
        reduced = []
        new = []
        for relation_index, relation in enumerate(relations):
            sparse_relation = (
                tuple(
                    (Fraction(coefficient), engine.dense_sm(tuple(map(int, exponent))))
                    for coefficient, exponent in relation
                )
                if relation_sources[relation_index]["kind"] == "component_quotient"
                else relation
            )
            row = engine.reduce_relation_dense(
                sparse_relation, lattice, len(support)
            )
            reduced.append(row)
            if len(row) == 1:
                solver = IntegerLatticeWitnessSolver(characters)
                terminal_certificate = relation_reduction_certificate(
                    engine,
                    relation,
                    characters,
                    lattice,
                    support,
                    already_dense=(
                        relation_sources[relation_index]["kind"]
                        == "component_quotient"
                    ),
                    expected_target=row,
                    solver=solver,
                )
                return {
                    "status": "monomial",
                    "chars": characters,
                    "lat": lattice,
                    "red": reduced,
                    "witness": relation_index,
                    "history": history,
                    "derived_character_certificates": derivations,
                    "monomial_certificate": {
                        "relation_index": relation_index,
                        "relation_source": relation_sources[relation_index],
                        "reduction": terminal_certificate,
                    },
                }
            character = engine.char_from_binomial(row)
            if (
                character is not None
                and not lattice.member(*character)
                and character not in seen
            ):
                seen.add(character)
                new.append((character, relation_index, row))
        history.append(
            {
                "iteration": iteration,
                "rank": lattice.rank,
                "reduced_term_distribution": counter_dict(map(len, reduced)),
                "new_character_count": len(new),
            }
        )
        if not new:
            witness = (
                engine.find_nested(reduced, lattice) if find_nested_flag else None
            )
            return {
                "status": "nested" if witness is not None else "stable",
                "chars": characters,
                "lat": lattice,
                "red": reduced,
                "witness": witness,
                "history": history,
                "derived_character_certificates": derivations,
            }

        prior_characters = list(characters)
        solver = IntegerLatticeWitnessSolver(prior_characters)
        prior_count = len(prior_characters)
        for character, relation_index, row in new:
            reduction = relation_reduction_certificate(
                engine,
                relations[relation_index],
                prior_characters,
                lattice,
                support,
                already_dense=(
                    relation_sources[relation_index]["kind"]
                    == "component_quotient"
                ),
                expected_target=row,
                solver=solver,
            )
            ratio = -Fraction(row[0][0], row[1][0])
            if ratio not in (1, -1):
                fail("derived binomial character has nonunit coefficient ratio")
            raw_difference = tuple(
                row[1][1][i] - row[0][1][i] for i in range(len(support))
            )
            normalized_difference, normalized_bit = character
            orientation = 1 if normalized_difference != raw_difference else 0
            if orientation and normalized_difference != tuple(-x for x in raw_difference):
                fail("derived character normalization is not an orientation reversal")
            expected_bit = 0 if ratio == 1 else 1
            if normalized_bit != expected_bit:
                fail("derived character sign bit changed during normalization")
            derivations.append(
                {
                    "iteration": iteration,
                    "prior_character_count": prior_count,
                    "new_character_index": len(characters),
                    "new_character": character_json(character, support),
                    "source_relation_index": relation_index,
                    "source_relation": relation_sources[relation_index],
                    "source_reduction": reduction,
                    "binomial_ratio": int(ratio),
                    "orientation_reversed": bool(orientation),
                }
            )
            characters.append(character)
    fail("terminal saturation exceeded its pinned iteration bound")


def history_signature(result: dict[str, Any]) -> list[list[Any]]:
    return [
        [
            row["rank"],
            {str(key): value for key, value in row["reduced_term_distribution"].items()},
            row["new_character_count"],
        ]
        for row in result["history"]
    ]


def nested_face_certificate(
    engine: ModuleType,
    result: dict[str, Any],
    relations: Sequence[Any],
    relation_sources: Sequence[dict[str, Any]],
    support: Sequence[int],
    expected_witness: dict[str, Any] | None,
) -> dict[str, Any]:
    if result["status"] != "nested":
        fail("nested-face certificate requested from non-nested saturation")
    right_index, left_index, omitted_index = result["witness"]
    if expected_witness is not None:
        if (
            right_index != expected_witness["a"]
            or left_index != expected_witness["b"]
            or omitted_index != expected_witness["omit"]
        ):
            fail("replayed nested witness indices differ from canonical artifact")
    characters = result["chars"]
    lattice = result["lat"]
    solver = IntegerLatticeWitnessSolver(characters)
    left_reduction = relation_reduction_certificate(
        engine,
        relations[left_index],
        characters,
        lattice,
        support,
        already_dense=(relation_sources[left_index]["kind"] == "component_quotient"),
        expected_target=result["red"][left_index],
        solver=solver,
    )
    right_reduction = relation_reduction_certificate(
        engine,
        relations[right_index],
        characters,
        lattice,
        support,
        already_dense=(relation_sources[right_index]["kind"] == "component_quotient"),
        expected_target=result["red"][right_index],
        solver=solver,
    )
    left = result["red"][left_index]
    right = result["red"][right_index]
    omitted_coefficient, omitted_exponent = left[omitted_index]
    if omitted_coefficient == 0:
        fail("nested witness omitted coefficient is zero")
    face = tuple(term for index, term in enumerate(left) if index != omitted_index)
    transform = engine.find_dense_face_transform(face, right, lattice)
    if transform is None:
        fail("nested witness faces have no signed-lattice transform")
    scalar, shift = transform
    if Fraction(scalar).denominator != 1:
        fail("nested face scalar is nonintegral")
    if expected_witness is not None:
        expected_scalar = Fraction(expected_witness["scalar"])
        expected_shift = tuple(
            (int(index), int(exponent)) for index, exponent in expected_witness["shift"]
        )
        if scalar != expected_scalar or engine.dense_sm(shift) != expected_shift:
            fail("replayed nested face transform differs from canonical artifact")
    pairing_relation = translate_dense_relation(face, scalar, shift)
    pairing_relation += translate_dense_relation(
        right, Fraction(-1), (0,) * len(support)
    )
    pairing_reduction = relation_reduction_certificate(
        engine,
        pairing_relation,
        characters,
        lattice,
        support,
        already_dense=True,
        expected_target=(),
        solver=solver,
    )
    return {
        "left_relation_index": left_index,
        "left_relation_source": relation_sources[left_index],
        "right_relation_index": right_index,
        "right_relation_source": relation_sources[right_index],
        "omitted_term_index": omitted_index,
        "omitted_coefficient": fraction_json(omitted_coefficient),
        "omitted_exponent": exponent_json(omitted_exponent, support),
        "omitted_coefficient_nonzero": True,
        "face_integer_scalar": int(scalar),
        "face_translation_shift": exponent_json(shift, support),
        "left_relation_reduction": left_reduction,
        "right_relation_reduction": right_reduction,
        "paired_face_reduction_to_zero": pairing_reduction,
        "full_reduction_is_omitted_plus_shifted_right": True,
    }


def derive_binomial_character(
    engine: ModuleType,
    relation: Sequence[Any],
    relation_source: dict[str, Any],
    support: Sequence[int],
    characters: list[Any],
    *,
    already_dense: bool,
) -> dict[str, Any]:
    lattice = engine.SignedLattice(len(support), characters)
    sparse_relation = (
        tuple(
            (Fraction(coefficient), engine.dense_sm(tuple(map(int, exponent))))
            for coefficient, exponent in relation
        )
        if already_dense
        else relation
    )
    reduced = engine.reduce_relation_dense(sparse_relation, lattice, len(support))
    character = engine.char_from_binomial(reduced)
    if character is None:
        fail("declared derivation source does not reduce to a signed binomial")
    if lattice.member(*character):
        fail("declared derivation source only reproduces an existing character")
    solver = IntegerLatticeWitnessSolver(characters)
    reduction = relation_reduction_certificate(
        engine,
        relation,
        characters,
        lattice,
        support,
        already_dense=already_dense,
        expected_target=reduced,
        solver=solver,
    )
    ratio = -Fraction(reduced[0][0], reduced[1][0])
    if ratio not in (1, -1):
        fail("declared binomial derivation has a nonunit ratio")
    raw_difference = tuple(
        reduced[1][1][i] - reduced[0][1][i] for i in range(len(support))
    )
    orientation_reversed = character[0] != raw_difference
    if orientation_reversed and character[0] != tuple(-x for x in raw_difference):
        fail("declared binomial derivation has invalid normalized orientation")
    certificate = {
        "prior_character_count": len(characters),
        "new_character_index": len(characters),
        "new_character": character_json(character, support),
        "source_relation": relation_source,
        "source_reduction": reduction,
        "binomial_ratio": int(ratio),
        "orientation_reversed": orientation_reversed,
    }
    characters.append(character)
    return certificate


def direct_nested_face_certificate(
    engine: ModuleType,
    relations: Sequence[Any],
    relation_sources: Sequence[dict[str, Any]],
    support: Sequence[int],
    characters: Sequence[Any],
    *,
    right_index: int,
    left_index: int,
    omitted_index: int,
    expected_right_terms: int,
    expected_left_terms: int,
    expected_scalar: int | None = None,
    expected_shift: Sequence[tuple[int, int]] | None = None,
) -> dict[str, Any]:
    lattice = engine.SignedLattice(len(support), characters)
    solver = IntegerLatticeWitnessSolver(characters)

    def reduce_at(index: int) -> tuple[Any, dict[str, Any]]:
        already_dense = relation_sources[index]["kind"] == "component_quotient"
        relation = relations[index]
        sparse_relation = (
            tuple(
                (Fraction(coefficient), engine.dense_sm(tuple(map(int, exponent))))
                for coefficient, exponent in relation
            )
            if already_dense
            else relation
        )
        reduced = engine.reduce_relation_dense(
            sparse_relation, lattice, len(support)
        )
        certificate = relation_reduction_certificate(
            engine,
            relation,
            characters,
            lattice,
            support,
            already_dense=already_dense,
            expected_target=reduced,
            solver=solver,
        )
        return reduced, certificate

    right, right_reduction = reduce_at(right_index)
    left, left_reduction = reduce_at(left_index)
    if len(right) != expected_right_terms or len(left) != expected_left_terms:
        fail(
            "direct nested source term counts changed: "
            f"right={len(right)} left={len(left)}"
        )
    if not 0 <= omitted_index < len(left):
        fail("direct nested omitted index is outside the left relation")
    omitted_coefficient, omitted_exponent = left[omitted_index]
    if omitted_coefficient == 0:
        fail("direct nested omitted coefficient is zero")
    face = tuple(term for index, term in enumerate(left) if index != omitted_index)
    transform = engine.find_dense_face_transform(face, right, lattice)
    if transform is None:
        fail("direct nested faces have no exact signed-lattice transform")
    scalar, shift = transform
    if Fraction(scalar).denominator != 1 or scalar == 0:
        fail("direct nested face scalar is not a nonzero integer")
    if expected_scalar is not None and scalar != expected_scalar:
        fail("direct nested face scalar changed")
    if expected_shift is not None and engine.dense_sm(shift) != tuple(expected_shift):
        fail(
            "direct nested face shift changed: "
            f"{engine.dense_sm(shift)} != {tuple(expected_shift)}"
        )
    pairing = translate_dense_relation(face, scalar, shift)
    pairing += translate_dense_relation(right, Fraction(-1), (0,) * len(support))
    pairing_reduction = relation_reduction_certificate(
        engine,
        pairing,
        characters,
        lattice,
        support,
        already_dense=True,
        expected_target=(),
        solver=solver,
    )
    return {
        "basis_character_count": len(characters),
        "right_relation_index": right_index,
        "right_relation_source": relation_sources[right_index],
        "left_relation_index": left_index,
        "left_relation_source": relation_sources[left_index],
        "omitted_term_index": omitted_index,
        "omitted_coefficient": fraction_json(omitted_coefficient),
        "omitted_exponent": exponent_json(omitted_exponent, support),
        "omitted_coefficient_nonzero": True,
        "face_integer_scalar": int(scalar),
        "face_translation_shift": exponent_json(shift, support),
        "right_relation_reduction": right_reduction,
        "left_relation_reduction": left_reduction,
        "paired_face_reduction_to_zero": pairing_reduction,
        "full_reduction_is_omitted_plus_shifted_right": True,
    }


def discover_direct_nested_parameters(
    engine: ModuleType,
    relations: Sequence[Any],
    relation_sources: Sequence[dict[str, Any]],
    support: Sequence[int],
    characters: Sequence[Any],
    *,
    right_index: int,
    left_index: int,
) -> list[dict[str, Any]]:
    """Enumerate exact omitted-face transforms for one pinned source pair.

    This is used only to fail with a readable diagnostic if a recovered source
    pair changes.  Production artifact generation still pins and verifies the
    unique omitted index, integer scalar, and Laurent shift.
    """
    lattice = engine.SignedLattice(len(support), characters)

    def reduce_at(index: int) -> Any:
        relation = relations[index]
        if relation_sources[index]["kind"] == "component_quotient":
            relation = tuple(
                (Fraction(coefficient), engine.dense_sm(tuple(map(int, exponent))))
                for coefficient, exponent in relation
            )
        return engine.reduce_relation_dense(relation, lattice, len(support))

    right = reduce_at(right_index)
    left = reduce_at(left_index)
    candidates = []
    for omitted_index in range(len(left)):
        face = tuple(
            term for index, term in enumerate(left) if index != omitted_index
        )
        transform = engine.find_dense_face_transform(face, right, lattice)
        if transform is None:
            continue
        scalar, shift = transform
        if Fraction(scalar).denominator != 1:
            fail("discovered direct nested scalar is nonintegral")
        candidates.append(
            {
                "right_terms": len(right),
                "left_terms": len(left),
                "omitted_index": omitted_index,
                "integer_scalar": int(scalar),
                "shift": list(engine.dense_sm(shift)),
            }
        )
    return candidates


def raw_source_nested_face_certificate(
    engine: ModuleType,
    relations: Sequence[Any],
    relation_sources: Sequence[dict[str, Any]],
    support: Sequence[int],
    characters: Sequence[Any],
    *,
    right_index: int,
    left_index: int,
    omitted_source_term_index: int,
    expected_right_source_terms: int,
    expected_left_source_terms: int,
    expected_scalar: int,
    expected_shift: Sequence[tuple[int, int]],
) -> dict[str, Any]:
    """Replay the handoff's raw-source nested-face convention exactly.

    The historical witness omits a term in the *raw left source equation* and
    translates the complete smaller/right source equation onto the remaining
    left face.  This is deliberately distinct from omitting a sorted quotient
    normal-form term and from translating the left face toward the right row.
    """
    lattice = engine.SignedLattice(len(support), characters)
    solver = IntegerLatticeWitnessSolver(characters)

    def source_dense(index: int) -> tuple[tuple[Fraction, tuple[int, ...]], ...]:
        return dense_relation(
            engine,
            relations[index],
            len(support),
            already_dense=(relation_sources[index]["kind"] == "component_quotient"),
        )

    right = source_dense(right_index)
    left = source_dense(left_index)
    if (
        len(right) != expected_right_source_terms
        or len(left) != expected_left_source_terms
    ):
        fail(
            "raw nested source term counts changed: "
            f"right={len(right)} left={len(left)}"
        )
    if not 0 <= omitted_source_term_index < len(left):
        fail("raw nested omitted source-term index is outside the left relation")
    omitted_coefficient, omitted_exponent = left[omitted_source_term_index]
    if omitted_coefficient == 0:
        fail("raw nested omitted source coefficient is zero")
    left_face = tuple(
        term
        for index, term in enumerate(left)
        if index != omitted_source_term_index
    )
    transform = engine.find_dense_face_transform(right, left_face, lattice)
    if transform is None:
        fail("raw right source does not translate onto the declared left face")
    scalar, shift = transform
    expected_shift = tuple((int(i), int(e)) for i, e in expected_shift)
    if (
        Fraction(scalar).denominator != 1
        or scalar == 0
        or scalar != expected_scalar
        or engine.dense_sm(shift) != expected_shift
    ):
        fail(
            "raw historical nested transform changed: "
            f"scalar={scalar} shift={engine.dense_sm(shift)}"
        )

    right_reduced = engine.reduce_dense_terms(right, lattice)
    left_reduced = engine.reduce_dense_terms(left, lattice)
    right_reduction = relation_reduction_certificate(
        engine,
        relations[right_index],
        characters,
        lattice,
        support,
        already_dense=(relation_sources[right_index]["kind"] == "component_quotient"),
        expected_target=right_reduced,
        solver=solver,
    )
    left_reduction = relation_reduction_certificate(
        engine,
        relations[left_index],
        characters,
        lattice,
        support,
        already_dense=(relation_sources[left_index]["kind"] == "component_quotient"),
        expected_target=left_reduced,
        solver=solver,
    )

    def source_to_reduced_map(
        dense_source: Sequence[tuple[Fraction, Sequence[int]]],
        reduced: Sequence[tuple[Fraction, Sequence[int]]],
    ) -> list[int]:
        representative_index = {
            tuple(map(int, exponent)): index
            for index, (_coefficient, exponent) in enumerate(reduced)
        }
        mapping = []
        for _coefficient, exponent in dense_source:
            representative, _sign = lattice.term(exponent)
            if representative not in representative_index:
                fail("raw source term disappeared or collided in nested row reduction")
            mapping.append(representative_index[representative])
        if len(set(mapping)) != len(mapping):
            fail("raw nested source terms collide in quotient normal form")
        return mapping

    right_source_to_reduced = source_to_reduced_map(right, right_reduced)
    left_source_to_reduced = source_to_reduced_map(left, left_reduced)

    shifted_right = translate_dense_relation(right, scalar, shift)
    paired_face = shifted_right + translate_dense_relation(
        left_face, Fraction(-1), (0,) * len(support)
    )
    paired_face_reduction = relation_reduction_certificate(
        engine,
        paired_face,
        characters,
        lattice,
        support,
        already_dense=True,
        expected_target=(),
        solver=solver,
    )
    full_difference = list(left) + translate_dense_relation(
        right, -scalar, shift
    )
    full_reduced = engine.reduce_dense_terms(full_difference, lattice)
    if len(full_reduced) != 1:
        fail("raw nested source subtraction does not leave one Laurent monomial")
    full_reduction = relation_reduction_certificate(
        engine,
        full_difference,
        characters,
        lattice,
        support,
        already_dense=True,
        expected_target=full_reduced,
        solver=solver,
    )
    return {
        "basis_character_count": len(characters),
        "convention": "translate_raw_right_source_to_raw_left_face",
        "right_relation_index": right_index,
        "right_relation_source": relation_sources[right_index],
        "left_relation_index": left_index,
        "left_relation_source": relation_sources[left_index],
        "right_source_term_count": len(right),
        "left_source_term_count": len(left),
        "right_source_to_reduced_term_index": right_source_to_reduced,
        "left_source_to_reduced_term_index": left_source_to_reduced,
        "omitted_source_term_index": omitted_source_term_index,
        "omitted_reduced_term_index": left_source_to_reduced[
            omitted_source_term_index
        ],
        "omitted_coefficient": fraction_json(omitted_coefficient),
        "omitted_exponent": exponent_json(omitted_exponent, support),
        "omitted_coefficient_nonzero": True,
        "face_integer_scalar": int(scalar),
        "right_to_left_face_translation_shift": exponent_json(shift, support),
        "right_relation_reduction": right_reduction,
        "left_relation_reduction": left_reduction,
        "translated_right_minus_left_face_reduces_to_zero": paired_face_reduction,
        "left_minus_translated_right_reduction": full_reduction,
        "full_subtraction_has_exactly_one_reduced_monomial": True,
    }


def class_character_basis(
    engine: ModuleType,
    factor: dict[str, Any],
    base_characters: Sequence[Any],
    selected_classes: Sequence[int],
) -> list[Any]:
    classes = factor["classes"]
    if any(not 0 <= class_index < len(classes) for class_index in selected_classes):
        fail("selected factor class is outside the class table")
    rows = list(base_characters)
    for class_index in selected_classes:
        rows.extend(classes[class_index])
    return normalize_character_list(engine, rows)


def class_character_basis_with_sources(
    engine: ModuleType,
    factor: dict[str, Any],
    base_characters: Sequence[Any],
    selected_classes: Sequence[int],
    support: Sequence[int],
) -> tuple[list[Any], list[dict[str, Any]]]:
    """Build a normalized basis and preserve every exact source of each row."""
    classes = factor["classes"]
    if any(not 0 <= class_index < len(classes) for class_index in selected_classes):
        fail("selected factor class is outside the class table")
    raw_vertex_id = {
        character: vertex_id
        for vertex_id, character in enumerate(factor["vertices"])
    }
    ordered: list[tuple[Any, dict[str, Any]]] = [
        (
            character,
            {"kind": "component_base_character", "base_character_index": index},
        )
        for index, character in enumerate(base_characters)
    ]
    for class_index in selected_classes:
        for character in classes[class_index]:
            ordered.append(
                (
                    character,
                    {
                        "kind": "raw_factor_vertex",
                        "raw_factor_vertex_id": raw_vertex_id[character],
                        "class_id": class_index,
                    },
                )
            )
    characters: list[Any] = []
    position: dict[Any, int] = {}
    source_rows: list[list[dict[str, Any]]] = []
    for character, source in ordered:
        normalized = engine.normalize_char(*character)
        if normalized not in position:
            position[normalized] = len(characters)
            characters.append(normalized)
            source_rows.append([])
        source_rows[position[normalized]].append(source)
    mapping = [
        {
            "character_index": index,
            "character": character_json(character, support),
            "sources": source_rows[index],
        }
        for index, character in enumerate(characters)
    ]
    return characters, mapping


def recovered_history_signature(history: Sequence[Any]) -> list[list[Any]]:
    result = []
    for row in history:
        if not isinstance(row, (tuple, list)) or len(row) != 3:
            fail("recovered history row does not have three fields")
        rank, distribution, new_count = row
        result.append(
            [
                int(rank),
                {
                    str(int(key)): int(value)
                    for key, value in sorted(dict(distribution).items())
                },
                int(new_count),
            ]
        )
    return result


def terminal_result_summary(
    result: dict[str, Any], support: Sequence[int]
) -> dict[str, Any]:
    return {
        "status": result["status"],
        "rank": result["lat"].rank,
        "character_count": len(result["chars"]),
        "characters": [character_json(character, support) for character in result["chars"]],
        "history": history_signature(result),
        "derived_character_certificates": result["derived_character_certificates"],
    }


def brute_minimal_vertex_covers(
    vertices: Sequence[int], edges: Sequence[tuple[int, int]]
) -> list[tuple[int, ...]]:
    """Independent exhaustive replay for each small quotient-graph component."""
    vertices = tuple(vertices)
    edges = tuple(sorted(set(tuple(sorted(edge)) for edge in edges)))
    covers = []
    for mask in range(1 << len(vertices)):
        selected = {vertices[i] for i in range(len(vertices)) if mask & (1 << i)}
        if not all(a in selected or b in selected for a, b in edges):
            continue
        if any(
            all(a in selected - {v} or b in selected - {v} for a, b in edges)
            for v in selected
        ):
            continue
        covers.append(tuple(sorted(selected)))
    return sorted(covers)


def audit_factorizations(
    engine: ModuleType,
    reduced_relations: Sequence[Sequence[tuple[Fraction, Sequence[int]]]],
    lattice: Any,
) -> tuple[set[Any], dict[Any, dict[str, Any]], dict[str, int]]:
    """Replay the engine factor test and apply the signed-lattice parity.

    The recovered engine computes the quotient-parallelogram parity but its
    coefficient test does not use that bit.  We therefore compare its output
    row-by-row against the parity-correct coefficient condition and reject any
    engine-accepted odd parallelogram, even if the same graph edge also has an
    independent even witness.
    """
    all_engine_edges: set[Any] = set()
    all_audited_edges: set[Any] = set()
    first_witness: dict[Any, dict[str, Any]] = {}
    counts: Counter[str] = Counter()

    for relation_index, red in enumerate(reduced_relations):
        if len(red) != 4:
            continue
        counts["tetranomial_rows"] += 1
        row_engine = set(engine.factorize_tetranomial(red, lattice))
        row_replayed_engine: set[Any] = set()
        row_audited: set[Any] = set()
        n = len(red[0][1])

        for i in range(4):
            others = [x for x in range(4) if x != i]
            for jj, kk in combinations(range(len(others)), 2):
                j, k = others[jj], others[kk]
                ell = next(x for x in others if x not in (j, k))
                ci, ei = red[i]
                cj, ej = red[j]
                ck, ek = red[k]
                cl, el = red[ell]
                dpar = tuple(ei[t] + el[t] - ej[t] - ek[t] for t in range(n))
                even = lattice.member(dpar, 0)
                odd = lattice.member(dpar, 1)
                if even and odd:
                    fail("signed lattice declares a parallelogram both even and odd")
                if not (even or odd):
                    continue
                counts["lattice_related_partitions"] += 1
                counts["even_partitions" if even else "odd_partitions"] += 1

                a = -Fraction(cj, ci)
                b = -Fraction(ck, ci)
                if a not in (1, -1) or b not in (1, -1):
                    continue
                f = tuple(ej[t] - ei[t] for t in range(n))
                g = tuple(ek[t] - ei[t] for t in range(n))
                chf = engine.normalize_char(f, 0 if a == 1 else 1)
                chg = engine.normalize_char(g, 0 if b == 1 else 1)
                if chf == chg:
                    continue
                edge = tuple(sorted((chf, chg)))

                engine_coefficient_ok = ci * cl == cj * ck
                parity_sign = -1 if odd else 1
                audited_coefficient_ok = ci * cl == cj * ck * parity_sign
                if engine_coefficient_ok:
                    counts["engine_accepted_occurrences"] += 1
                    row_replayed_engine.add(edge)
                    if odd:
                        counts["engine_accepted_odd_occurrences"] += 1
                    first_witness.setdefault(
                        edge,
                        {
                            "relation_index": relation_index,
                            "term_indices": [i, j, k, ell],
                            "parallelogram_parity": 1 if odd else 0,
                            "parallelogram": dpar,
                        },
                    )
                if audited_coefficient_ok:
                    counts["parity_correct_accepted_occurrences"] += 1
                    row_audited.add(edge)

        if row_engine != row_replayed_engine:
            fail(
                "failed to reproduce recovered engine factorization on row "
                f"{relation_index}"
            )
        if row_engine != row_audited:
            fail(
                "recovered engine factorization disagrees with signed-parity "
                f"audit on row {relation_index}"
            )
        all_engine_edges.update(row_engine)
        all_audited_edges.update(row_audited)

    if counts["engine_accepted_odd_occurrences"] != 0:
        fail(
            "recovered engine accepted an odd quotient parallelogram: "
            f"{counts['engine_accepted_odd_occurrences']} occurrences"
        )
    if all_engine_edges != all_audited_edges:
        fail("aggregate factor graph disagrees with signed-parity audit")
    if set(first_witness) != all_engine_edges:
        fail("not every raw factor edge has an explicit audited witness")
    return all_engine_edges, first_witness, dict(sorted(counts.items()))


def validate_false_twin_graph(
    vertices: Sequence[Any],
    edges: Sequence[tuple[Any, Any]],
    classes: Sequence[Sequence[Any]],
    class_edges: Sequence[tuple[int, int]],
) -> list[dict[str, int]]:
    raw_edges = set(tuple(sorted(edge)) for edge in edges)
    class_of = {vertex: i for i, row in enumerate(classes) for vertex in row}
    if len(class_of) != len(vertices) or set(class_of) != set(vertices):
        fail("false-twin classes do not partition raw factor vertices")
    if any(class_of[a] == class_of[b] for a, b in raw_edges):
        fail("raw factor graph contains an edge inside a false-twin class")

    adjacency = {vertex: set() for vertex in vertices}
    for left, right in raw_edges:
        adjacency[left].add(right)
        adjacency[right].add(left)
    class_neighborhoods = []
    for class_index, row in enumerate(classes):
        if not row:
            fail(f"false-twin class {class_index} is empty")
        neighborhood = frozenset(adjacency[row[0]])
        if any(frozenset(adjacency[vertex]) != neighborhood for vertex in row):
            fail(f"false-twin class {class_index} contains unequal neighborhoods")
        class_neighborhoods.append(neighborhood)
    if len(set(class_neighborhoods)) != len(class_neighborhoods):
        fail("false-twin partition is not maximal: equal neighborhoods were split")

    derived_class_edges = sorted(
        {
            tuple(sorted((class_of[left], class_of[right])))
            for left, right in raw_edges
        }
    )
    if list(class_edges) != derived_class_edges:
        fail("quotient class-edge table differs from the raw adjacency quotient")

    expected = set()
    audits = []
    for left, right in class_edges:
        cross = {
            tuple(sorted((a, b)))
            for a in classes[left]
            for b in classes[right]
        }
        expected.update(cross)
        audits.append(
            {
                "left_class": int(left),
                "right_class": int(right),
                "complete_bipartite_raw_edges": len(cross),
            }
        )
    if raw_edges != expected:
        fail(
            "class graph is not an exact complete-bipartite expansion: "
            f"missing={len(expected - raw_edges)} extra={len(raw_edges - expected)}"
        )
    return audits


def validate_graph_components(
    class_count: int,
    class_edges: Sequence[tuple[int, int]],
    components: Sequence[Sequence[int]],
) -> None:
    """Independently replay the connected-component partition."""
    adjacency = {vertex: set() for vertex in range(class_count)}
    for left, right in class_edges:
        if not (0 <= left < class_count and 0 <= right < class_count):
            fail("class edge has an endpoint outside the class table")
        adjacency[left].add(right)
        adjacency[right].add(left)
    active = {vertex for vertex, neighbors in adjacency.items() if neighbors}
    flattened = [vertex for component in components for vertex in component]
    if len(flattened) != len(set(flattened)) or set(flattened) != active:
        fail("component table does not partition the nonisolated class vertices")
    for component in components:
        component_set = set(component)
        if not component_set:
            fail("component table contains an empty component")
        reached = {component[0]}
        frontier = [component[0]]
        while frontier:
            vertex = frontier.pop()
            for neighbor in adjacency[vertex] & component_set:
                if neighbor not in reached:
                    reached.add(neighbor)
                    frontier.append(neighbor)
        if reached != component_set:
            fail("component table contains a disconnected component")
        if any(
            neighbor not in component_set
            for vertex in component_set
            for neighbor in adjacency[vertex]
        ):
            fail("class edge crosses two declared graph components")


def build_component(
    engine: ModuleType,
    name: str,
    support: Sequence[int],
    retained_relations: Sequence[Any],
    characters: Sequence[Any],
) -> dict[str, Any]:
    expected = COMPONENT_EXPECTATIONS[name]
    if len(characters) != expected["initial_character_count"]:
        fail(f"component {name} initial character count changed")

    saturated = engine.saturate(
        retained_relations,
        len(support),
        base_chars=characters,
        maxiter=20,
        find_nested_flag=True,
    )
    if saturated["status"] != "stable":
        fail(f"component {name} initial saturation is {saturated['status']}")
    initial_distribution = counter_dict(map(len, saturated["red"]))
    if saturated["lat"].rank != expected["initial_rank"]:
        fail(f"component {name} initial lattice rank changed")
    if len(saturated["chars"]) != expected["initial_character_count"]:
        fail(f"component {name} initial saturation added characters")
    if initial_distribution != expected["initial_distribution"]:
        fail(
            f"component {name} initial reduced distribution changed: "
            f"{initial_distribution}"
        )

    quotient, stats, candidate_pairs = engine.quotient_overlap_dense_spanning(
        saturated["red"],
        saturated["lat"],
        min_face=2,
        max_output=4,
        source_min=3,
        source_max=6,
        roots=1,
    )
    if len(quotient) != expected["quotient_count"]:
        fail(f"component {name} quotient row count changed: {len(quotient)}")
    if counter_dict(len(item["red"]) for item in quotient) != {4: len(quotient)}:
        fail(f"component {name} quotient output is not entirely tetranomial")
    if dict(stats) != {4: len(quotient)}:
        fail(f"component {name} quotient statistics changed: {dict(stats)}")
    if candidate_pairs != expected["quotient_pairs"]:
        fail(f"component {name} quotient candidate-pair count changed")

    initial_solver = IntegerLatticeWitnessSolver(saturated["chars"])
    referenced_sources = sorted(
        {
            source
            for item in quotient
            for source in (item["provenance"][0], item["provenance"][2])
        }
    )
    expected_source_count = 116 if name == "A" else 147
    if len(referenced_sources) != expected_source_count:
        fail(
            f"component {name} unique quotient-source count changed: "
            f"{len(referenced_sources)}"
        )
    source_reduction_id = {
        source_index: reduction_index
        for reduction_index, source_index in enumerate(referenced_sources)
    }
    quotient_source_reductions = []
    for reduction_index, source_index in enumerate(referenced_sources):
        quotient_source_reductions.append(
            {
                "reduction_id": reduction_index,
                "relation_source": global_source_json(source_index),
                "certificate": relation_reduction_certificate(
                    engine,
                    retained_relations[source_index],
                    saturated["chars"],
                    saturated["lat"],
                    support,
                    already_dense=False,
                    expected_target=saturated["red"][source_index],
                    solver=initial_solver,
                ),
            }
        )

    quotient_sparse = [engine.dense_relation_to_sparse(item["red"]) for item in quotient]
    factor_input = list(retained_relations) + quotient_sparse
    factor = engine.build_factor_cover_data(factor_input, len(support), characters)
    factor_saturation = factor["saturation"]
    if factor_saturation["status"] != "stable":
        fail(f"component {name} factor saturation is {factor_saturation['status']}")
    factor_distribution = counter_dict(map(len, factor_saturation["red"]))
    if factor_distribution != expected["factor_distribution"]:
        fail(
            f"component {name} factor reduced distribution changed: "
            f"{factor_distribution}"
        )
    if len(factor_saturation["chars"]) != expected["initial_character_count"]:
        fail(f"component {name} factor saturation added characters")
    if factor_saturation["lat"].rank != expected["initial_rank"]:
        fail(f"component {name} factor lattice rank changed")
    if any(
        factor_saturation["red"][FACTOR_PIPELINE_RELATION_COUNT + index]
        != item["red"]
        for index, item in enumerate(quotient)
    ):
        fail(
            f"component {name} appended quotient rows changed during "
            "factor saturation"
        )

    audited_edges, audited_witnesses, parity_counts = audit_factorizations(
        engine, factor_saturation["red"], factor_saturation["lat"]
    )
    engine_edges = set(factor["edges"])
    if engine_edges != audited_edges:
        fail(f"component {name} raw edges changed after parity audit")

    vertices = factor["vertices"]
    classes = factor["classes"]
    class_edges = factor["qedges"]
    components = factor["components"]
    local_covers = factor["local_covers"]
    global_covers = factor["global_covers"]
    metrics = {
        "raw_edges": len(engine_edges),
        "raw_vertices": len(vertices),
        "classes": len(classes),
        "class_edges": len(class_edges),
        "local_cover_counts": [len(rows) for rows in local_covers],
        "global_covers": len(global_covers),
    }
    for key, value in metrics.items():
        if value != expected[key]:
            fail(f"component {name} {key} changed: {value} != {expected[key]}")

    class_edge_audit = validate_false_twin_graph(
        vertices, factor["edges"], classes, class_edges
    )
    validate_graph_components(len(classes), class_edges, components)
    for component, covers in zip(components, local_covers):
        component_edges = [
            edge for edge in class_edges if edge[0] in component and edge[1] in component
        ]
        brute = brute_minimal_vertex_covers(component, component_edges)
        if list(covers) != brute:
            fail(f"component {name} minimal-cover table failed independent replay")
    recombined = [
        tuple(sorted(sum((tuple(row) for row in rows), ())))
        for rows in product(*local_covers)
    ]
    if list(global_covers) != recombined:
        fail(f"component {name} global cover table is not the Cartesian product")
    if any(
        not all(left in cover or right in cover for left, right in class_edges)
        for cover in global_covers
    ):
        fail(f"component {name} global table contains a non-cover")

    vertex_id = {vertex: i for i, vertex in enumerate(vertices)}
    raw_edges = [[vertex_id[a], vertex_id[b]] for a, b in factor["edges"]]

    quotient_rows = []
    for row_index, item in enumerate(quotient):
        source_i, face_i, source_j, face_j = item["provenance"]
        if Fraction(item["mu"]).denominator != 1:
            fail(f"component {name} quotient source scale is nonintegral")
        source_combination = translate_dense_relation(
            saturated["red"][source_i], item["mu"], item["shift"]
        )
        source_combination += translate_dense_relation(
            saturated["red"][source_j],
            Fraction(-1),
            (0,) * len(support),
        )
        combination_reduction = relation_reduction_certificate(
            engine,
            source_combination,
            saturated["chars"],
            saturated["lat"],
            support,
            already_dense=True,
            expected_target=item["red"],
            solver=initial_solver,
        )
        quotient_rows.append(
            {
                "row_index": row_index,
                "quotient_relation": relation_json(item["red"], support, dense=True),
                "provenance": {
                    "source_i": global_source_json(source_i),
                    "source_i_face_indices": list(face_i),
                    "source_j": global_source_json(source_j),
                    "source_j_face_indices": list(face_j),
                    "scalar": fraction_json(item["mu"]),
                    "shift": exponent_json(item["shift"], support),
                },
                "source_reduction_ids": [
                    source_reduction_id[source_i],
                    source_reduction_id[source_j],
                ],
                "exact_source_uses": [
                    {
                        "source_reduction_id": source_reduction_id[source_i],
                        "integer_scale": int(item["mu"]),
                        "shift": exponent_json(item["shift"], support),
                    },
                    {
                        "source_reduction_id": source_reduction_id[source_j],
                        "integer_scale": -1,
                        "shift": [],
                    },
                ],
                "combination_reduction": combination_reduction,
            }
        )

    edge_witnesses = []
    for a, b in factor["edges"]:
        edge = (a, b)
        witness = audited_witnesses[edge]
        relation_index = witness["relation_index"]
        if factor["edge_witness"][edge] != relation_index:
            fail(f"component {name} edge witness ordering changed")
        relation_source = factor_source_json(relation_index, len(quotient))
        if relation_source["kind"] != "quotient":
            fail(f"component {name} factor edge is not sourced by a quotient row")
        factor_certificate = exact_factor_certificate(
            factor_saturation["red"][relation_index],
            a,
            b,
            factor_saturation["chars"],
            factor_saturation["lat"],
            support,
            solver=initial_solver,
        )
        edge_witnesses.append(
            {
                "left_vertex": vertex_id[a],
                "right_vertex": vertex_id[b],
                "relation_index": relation_index,
                "relation_source": relation_source,
                "source_quotient_index": relation_source["index"],
                "term_indices": witness["term_indices"],
                "parallelogram_parity": witness["parallelogram_parity"],
                "parallelogram": exponent_json(witness["parallelogram"], support),
                "reduced_relation": relation_json(
                    factor_saturation["red"][relation_index], support, dense=True
                ),
                "factor_certificate": factor_certificate,
            }
        )

    data = {
        "schema_version": SCHEMA_VERSION,
        "component": name,
        "pipeline": {
            "retained_relation_count": len(retained_relations),
            "quotient_parameters": {
                "min_face": 2,
                "max_output": 4,
                "source_min": 3,
                "source_max": 6,
                "roots": 1,
            },
            "factor_input_count": len(factor_input),
            "unused_second_overlap_relations_in_factor_input": 0,
        },
        "base_characters": [character_json(row, support) for row in characters],
        "initial_saturation": {
            "status": saturated["status"],
            "rank": saturated["lat"].rank,
            "character_count": len(saturated["chars"]),
            "reduced_term_distribution": initial_distribution,
        },
        "quotient": {
            "count": len(quotient_rows),
            "unique_source_reduction_count": len(quotient_source_reductions),
            "source_reductions": quotient_source_reductions,
            "candidate_pairs": candidate_pairs,
            "term_distribution": counter_dict(
                len(item["red"]) for item in quotient
            ),
            "rows": quotient_rows,
        },
        "factor_saturation": {
            "status": factor_saturation["status"],
            "rank": factor_saturation["lat"].rank,
            "character_count": len(factor_saturation["chars"]),
            "reduced_term_distribution": factor_distribution,
            "all_appended_quotient_rows_replay_exactly": True,
        },
        "factor": {
            "vertices": [
                {"id": i, **character_json(vertex, support)}
                for i, vertex in enumerate(vertices)
            ],
            "raw_edges": raw_edges,
            "edge_witnesses": edge_witnesses,
            "classes": [
                {
                    "class_id": class_index,
                    "vertex_ids": [vertex_id[vertex] for vertex in row],
                }
                for class_index, row in enumerate(classes)
            ],
            "class_edges": [list(edge) for edge in class_edges],
            "class_edge_complete_bipartite_audit": class_edge_audit,
            "components": [list(row) for row in components],
            "local_covers": [
                [list(row) for row in table] for table in local_covers
            ],
            "global_covers": [list(row) for row in global_covers],
            "metrics": metrics,
            "parity_audit": {
                **parity_counts,
                "all_engine_accepted_factor_witnesses_even": True,
                "engine_edge_set_equals_parity_correct_edge_set": True,
            },
            "false_twin_audit": {
                "classes_partition_vertices": True,
                "members_have_identical_raw_neighborhoods": True,
                "classes_are_maximal_by_raw_neighborhood": True,
                "class_edges_are_exact_raw_adjacency_quotient": True,
                "raw_graph_is_exact_complete_bipartite_expansion": True,
            },
            "cover_audit": {
                "components_partition_nonisolated_classes": True,
                "components_are_connected_and_have_no_cross_edges": True,
                "local_tables_equal_independent_exhaustive_enumeration": True,
                "global_table_is_cartesian_product": True,
                "every_global_row_is_a_vertex_cover": True,
            },
        },
    }
    internal = {
        "initial_saturation": saturated,
        "quotient": quotient,
        "quotient_sparse": quotient_sparse,
        "factor": factor,
        "factor_input": factor_input,
        "characters": tuple(characters),
    }
    return data, internal


def build_terminal_semantics(
    engine: ModuleType,
    support: Sequence[int],
    retained_relations: Sequence[Any],
    base_characters: dict[str, Sequence[Any]],
    component_data: dict[str, dict[str, Any]],
    component_internal: dict[str, dict[str, Any]],
    research_inputs: dict[str, Any],
) -> dict[str, dict[str, Any]]:
    """Generate exact terminal, dispatch, split, and implication witnesses."""
    official_records = official_relation_records(engine, support)
    if len(official_records) != 1605:
        fail("official terminal relation count changed after exact regeneration")

    # Component A's historical terminal table is exactly the 1,605 official
    # rows with at least six terms followed by the 70 quotient rows.
    a_relations, a_sources = terminal_relation_table(
        official_records,
        component_internal["A"]["quotient"],
        support,
        minimum_official_terms=6,
    )
    if len(a_relations) != 1675 or len(a_sources) != 1675:
        fail("component A terminal table size changed")
    if (
        a_sources[1213]["coloring_code"] != 3646
        or a_sources[874]["coloring_code"] != 2917
    ):
        fail("component A universal source coloring codes changed")

    a_factor = component_internal["A"]["factor"]
    a_covers = list(a_factor["global_covers"])
    a_recovered = research_inputs["a_complete"]
    if len(a_recovered) != 54 or len(a_covers) != 54:
        fail("component A canonical cover count changed")
    expected_a_witnesses = Counter(
        {
            (1213, 874, 8, "1", ((139, 1), (142, -1))): 27,
            (437, 65, 8, "1", ((138, 1), (141, -1))): 27,
        }
    )
    recovered_a_witnesses: Counter[Any] = Counter()
    for cover_index, (cover, row) in enumerate(zip(a_covers, a_recovered)):
        if row.get("i") != cover_index or tuple(row.get("cover", ())) != tuple(cover):
            fail(f"component A recovered cover row changed at index {cover_index}")
        if row.get("status") != "nested" or row.get("w") is None:
            fail(f"component A recovered row is not nested at index {cover_index}")
        witness = row["w"]
        recovered_a_witnesses[
            (
                witness["a"],
                witness["b"],
                witness["omit"],
                witness["scalar"],
                tuple(tuple(item) for item in witness["shift"]),
            )
        ] += 1
    if recovered_a_witnesses != expected_a_witnesses:
        fail(f"component A recovered witness census changed: {recovered_a_witnesses}")

    a_family_configs = {
        "historical_pair_1213_874": {
            "selected_class": 2,
            "right_index": 1213,
            "left_index": 874,
            "expected_shift": ((139, 1), (142, -1)),
        },
        "historical_pair_437_65": {
            "selected_class": 7,
            "right_index": 437,
            "left_index": 65,
            "expected_shift": ((138, 1), (141, -1)),
        },
    }
    a_family_certificates = {}
    for family, config in a_family_configs.items():
        basis, basis_sources = class_character_basis_with_sources(
            engine,
            a_factor,
            base_characters["A"],
            (config["selected_class"],),
            support,
        )
        certificate = raw_source_nested_face_certificate(
            engine,
            a_relations,
            a_sources,
            support,
            basis,
            right_index=config["right_index"],
            left_index=config["left_index"],
            omitted_source_term_index=8,
            expected_right_source_terms=8,
            expected_left_source_terms=9,
            expected_scalar=1,
            expected_shift=config["expected_shift"],
        )
        if (
            certificate["right_source_to_reduced_term_index"]
            != list(range(7, -1, -1))
            or certificate["left_source_to_reduced_term_index"]
            != list(range(8, -1, -1))
            or certificate["omitted_reduced_term_index"] != 0
        ):
            fail(f"component A {family} raw-to-reduced term mapping changed")
        a_family_certificates[family] = {
            "required_selected_class_id": config["selected_class"],
            "initial_basis_sources": basis_sources,
            "nested_face_contradiction": certificate,
        }

    a_dispatch = []
    for cover_index, (cover, recovered) in enumerate(zip(a_covers, a_recovered)):
        witness_pair = (recovered["w"]["a"], recovered["w"]["b"])
        if witness_pair == (1213, 874):
            family = "historical_pair_1213_874"
            required_class = 2
        elif witness_pair == (437, 65):
            family = "historical_pair_437_65"
            required_class = 7
        else:
            fail(f"component A recovered witness family changed at {cover_index}")
        if required_class not in cover:
            fail(
                f"component A cover {cover_index} lacks its witness-family class "
                f"{required_class}"
            )
        a_dispatch.append(
            {
                "cover_index": cover_index,
                "selected_class_ids": list(cover),
                "destination": family,
                "required_selected_class_id": required_class,
            }
        )
    a_terminal = {
        "schema_version": SCHEMA_VERSION,
        "component": "A",
        "canonical_research_input": {
            "filename": "A_complete.json",
            "sha256": A_COMPLETE_SHA256,
            "record_count": len(a_recovered),
            "all_records_match_regenerated_cover_rows": True,
            "status_distribution": {"nested": 54},
            "witness_census": [
                {
                    "right_relation_index": key[0],
                    "left_relation_index": key[1],
                    "omitted_term_index": key[2],
                    "scalar": key[3],
                    "shift": [list(item) for item in key[4]],
                    "records": count,
                }
                for key, count in sorted(recovered_a_witnesses.items())
            ],
        },
        "terminal_table": {
            "official_minimum_terms": 6,
            "official_relation_count": 1605,
            "component_quotient_count": 70,
            "total_relation_count": len(a_relations),
        },
        "historical_cover_family_certificates": a_family_certificates,
        "cover_dispatch": a_dispatch,
        "all_54_covers_follow_the_canonical_27_plus_27_dispatch": True,
    }

    # Component B's historical terminal table is the 1,605 official rows,
    # then the retained 560-row sparse closure, then its 88 quotient rows.
    b_relations, b_sources = terminal_relation_table(
        official_records,
        component_internal["B"]["quotient"],
        support,
        minimum_official_terms=None,
        extra_sparse_relations=retained_relations,
    )
    if len(b_relations) != 2253 or len(b_sources) != 2253:
        fail("component B terminal table size changed")
    b_factor = component_internal["B"]["factor"]
    b_covers = list(b_factor["global_covers"])
    if len(b_covers) != 288:
        fail("component B regenerated cover count changed")

    dispatch_counts: Counter[str] = Counter()
    dispatch_rows = []
    for cover_index, cover in enumerate(b_covers):
        cover_set = set(cover)
        if 7 in cover_set:
            destination = "singleton_class_7"
        elif {8, 17} <= cover_set:
            destination = "core_classes_8_17"
        elif 14 in cover_set:
            destination = "singleton_class_14"
        elif 19 in cover_set:
            destination = "singleton_class_19"
        else:
            destination = "survivor"
        dispatch_counts[destination] += 1
        dispatch_rows.append(
            {
                "cover_index": cover_index,
                "selected_class_ids": list(cover),
                "destination": destination,
            }
        )
    expected_dispatch_counts = {
        "singleton_class_7": 192,
        "core_classes_8_17": 48,
        "singleton_class_14": 36,
        "singleton_class_19": 9,
        "survivor": 3,
    }
    if dict(dispatch_counts) != expected_dispatch_counts:
        fail(f"component B dispatch census changed: {dict(dispatch_counts)}")
    survivor_indices = [
        row["cover_index"] for row in dispatch_rows if row["destination"] == "survivor"
    ]
    if survivor_indices != [3, 9, 15]:
        fail(f"component B survivor indices changed: {survivor_indices}")

    residual_indices = [
        row["cover_index"]
        for row in dispatch_rows
        if row["destination"]
        in ("singleton_class_14", "singleton_class_19", "survivor")
    ]
    if residual_indices != list(range(3, 288, 6)):
        fail("component B residual 48-cover index table changed")
    b_recovered = research_inputs["b_residual"]
    if len(b_recovered) != 48:
        fail("component B recovered residual record count changed")
    recovered_by_index = {row.get("i"): row for row in b_recovered}
    if sorted(recovered_by_index) != residual_indices:
        fail("component B recovered residual indices changed")
    for cover_index in residual_indices:
        recovered = recovered_by_index[cover_index]
        if tuple(recovered.get("cover", ())) != tuple(b_covers[cover_index]):
            fail(f"component B recovered cover changed at index {cover_index}")
        destination = dispatch_rows[cover_index]["destination"]
        if destination == "survivor":
            if recovered.get("status") != "stable" or recovered.get("w") is not None:
                fail(f"component B survivor artifact changed at index {cover_index}")
        else:
            expected_witness = {
                "a": 75,
                "b": 73,
                "omit": 6,
                "scalar": "1",
                "shift": [[0, 1], [1, -1]],
            }
            if recovered.get("status") != "nested" or recovered.get("w") != expected_witness:
                fail(f"component B nested artifact changed at index {cover_index}")

    core_configs = {
        "singleton_class_7": {
            "selected_classes": (7,),
            "derivations": (("first_overlap", 0), ("first_overlap", 19), ("first_overlap", 45)),
            "nested": {
                "right_index": 437,
                "left_index": 65,
                "omitted_index": 0,
                "expected_right_terms": 8,
                "expected_left_terms": 9,
                "expected_scalar": 1,
                "expected_shift": ((51, -1), (52, 1)),
            },
        },
        "core_classes_8_17": {
            "selected_classes": (8, 17),
            "derivations": (
                ("first_overlap", 18),
                ("first_overlap", 30),
                ("first_overlap", 211),
                ("first_overlap", 225),
                ("first_overlap", 239),
                ("quotient", 0),
                ("quotient", 4),
                ("quotient", 12),
                ("quotient", 42),
            ),
            "nested": {
                "right_index": 1213,
                "left_index": 874,
                "omitted_index": 0,
                "expected_right_terms": 8,
                "expected_left_terms": 9,
                "expected_scalar": 1,
                "expected_shift": ((48, -1), (49, 1)),
            },
        },
        "singleton_class_14": {
            "selected_classes": (14,),
            "derivations": (("first_overlap", 210), ("first_overlap", 246), ("first_overlap", 282)),
            "nested": {
                "right_index": 77,
                "left_index": 74,
                "omitted_index": 0,
                "expected_right_terms": 6,
                "expected_left_terms": 7,
                "expected_scalar": 1,
                "expected_shift": ((6, -1), (7, 1)),
            },
        },
        "singleton_class_19": {
            "selected_classes": (19,),
            "derivations": (("first_overlap", 223), ("first_overlap", 259), ("first_overlap", 293)),
            "nested": {
                "right_index": 75,
                "left_index": 73,
                "omitted_index": 2,
                "expected_right_terms": 8,
                "expected_left_terms": 9,
                "expected_scalar": 1,
                "expected_shift": ((0, -1), (1, 1)),
            },
        },
    }
    b_core_certificates = {}
    for destination, config in core_configs.items():
        characters, initial_basis_sources = class_character_basis_with_sources(
            engine,
            b_factor,
            base_characters["B"],
            config["selected_classes"],
            support,
        )
        initial_character_count = len(characters)
        derivations = []
        for source_kind, source_index in config["derivations"]:
            if source_kind == "first_overlap":
                combined_index = BASE_COUNT + source_index
                relation = retained_relations[combined_index]
                source = global_source_json(combined_index)
                already_dense = False
            elif source_kind == "quotient":
                relation = component_internal["B"]["quotient"][source_index]["red"]
                source = {
                    "kind": "component_quotient",
                    "quotient_index": source_index,
                    "relation": relation_json(relation, support, dense=True),
                }
                already_dense = True
            else:
                fail(f"unknown B-core derivation source kind: {source_kind}")
            derivations.append(
                derive_binomial_character(
                    engine,
                    relation,
                    source,
                    support,
                    characters,
                    already_dense=already_dense,
                )
            )

        nested_config = config["nested"]
        candidates = discover_direct_nested_parameters(
            engine,
            b_relations,
            b_sources,
            support,
            characters,
            right_index=nested_config["right_index"],
            left_index=nested_config["left_index"],
        )
        expected_candidate = {
            "right_terms": nested_config["expected_right_terms"],
            "left_terms": nested_config["expected_left_terms"],
            "omitted_index": nested_config["omitted_index"],
            "integer_scalar": nested_config["expected_scalar"],
            "shift": (
                list(nested_config["expected_shift"])
                if nested_config["expected_shift"] is not None
                else candidates[0]["shift"] if len(candidates) == 1 else None
            ),
        }
        if candidates != [expected_candidate]:
            fail(f"component B {destination} nested transform changed: {candidates}")
        nested = direct_nested_face_certificate(
            engine,
            b_relations,
            b_sources,
            support,
            characters,
            **nested_config,
        )
        b_core_certificates[destination] = {
            "selected_class_ids": list(config["selected_classes"]),
            "initial_character_count": initial_character_count,
            "initial_characters": [
                character_json(character, support)
                for character in characters[:initial_character_count]
            ],
            "initial_basis_sources": initial_basis_sources,
            "derived_character_certificates": derivations,
            "final_character_count": len(characters),
            "nested_face_contradiction": nested,
            "discovered_transform_regression": candidates[0],
        }

    branch_states = research_inputs["branch_states"]
    survivor_parent_results = {}
    survivor_initial_bases = {}
    survivor_initial_basis_sources = {}
    survivor_rows = []
    for state in survivor_indices:
        recovered = recovered_by_index[state]
        initial_basis, initial_basis_sources = class_character_basis_with_sources(
            engine,
            b_factor,
            base_characters["B"],
            b_covers[state],
            support,
        )
        result = saturation_with_certificates(
            engine,
            b_relations,
            b_sources,
            support,
            initial_basis,
            maxiter=50,
            find_nested_flag=True,
        )
        if result["status"] != "stable":
            fail(f"component B survivor C{state} no longer saturates stably")
        actual_history = history_signature(result)
        recovered_history = recovered_history_signature(recovered["hist"])
        history_without_redundant_count = [list(row) for row in recovered_history]
        history_without_redundant_count[0] = list(history_without_redundant_count[0])
        history_without_redundant_count[0][2] -= 1
        if (
            result["lat"].rank != recovered["rank"]
            or len(result["chars"]) + 1 != recovered["nchars"]
            or actual_history != history_without_redundant_count
        ):
            fail(
                f"component B survivor replay differs beyond the pinned redundant "
                f"character count at C{state}: actual_rank={result['lat'].rank} "
                f"expected_rank={recovered['rank']} actual_chars={len(result['chars'])} "
                f"expected_chars={recovered['nchars']} actual_history={actual_history} "
                f"expected_adjusted_history={history_without_redundant_count}"
            )
        survivor_parent_results[state] = result
        survivor_initial_bases[state] = initial_basis
        survivor_initial_basis_sources[state] = initial_basis_sources
        survivor_rows.append(
            {
                "state": state,
                "cover": list(b_covers[state]),
                "initial_character_count": len(initial_basis),
                "initial_basis_sources": initial_basis_sources,
                "saturation": terminal_result_summary(result, support),
                "recovered_artifact_character_count": recovered["nchars"],
                "recovered_artifact_first_iteration_new_count_includes_one_redundant_row": True,
            }
        )

    b_terminal = {
        "schema_version": SCHEMA_VERSION,
        "component": "B",
        "canonical_research_input": {
            "filename": "B_residual_complete.json",
            "sha256": B_RESIDUAL_SHA256,
            "record_count": len(b_recovered),
            "residual_cover_indices": residual_indices,
            "nested_records": 45,
            "stable_records": 3,
            "all_records_match_regenerated_cover_rows": True,
        },
        "terminal_table": {
            "official_minimum_terms": None,
            "official_eq_system_relation_count": 1605,
            "retained_sparse_relation_count": 560,
            "pre_quotient_relation_count": 2165,
            "component_quotient_count": 88,
            "total_relation_count": len(b_relations),
        },
        "cover_dispatch_counts": dict(dispatch_counts),
        "cover_dispatch": dispatch_rows,
        "core_elimination_certificates": b_core_certificates,
        "survivor_indices": survivor_indices,
        "survivors": survivor_rows,
        "all_288_covers_dispatched": True,
    }

    derivative_targets = derivative_characters(engine, support)
    branch_rows = []
    second_quotient_expectations = {
        3: {"count": 58, "factor_rows": [48, 53]},
        9: {"count": 37, "factor_rows": [27, 32]},
        15: {"count": 34, "factor_rows": [24, 29]},
    }

    def split_character(entries: Sequence[tuple[int, int]]) -> Any:
        exponent = [0] * len(support)
        for local_index, coefficient in entries:
            exponent[local_index] += coefficient
        return engine.normalize_char(tuple(exponent), 0)

    split_leaves = (
        split_character(((69, 1), (70, -1), (98, -1), (99, 1))),
        split_character(((38, 1), (39, -1), (69, -1), (70, 1))),
    )
    split_center = split_character(((9, 1), (11, -1), (59, -1), (65, 1)))
    expected_split_edges = {
        tuple(sorted((split_leaves[0], split_center))),
        tuple(sorted((split_leaves[1], split_center))),
    }
    canonical_split_eliminants = None

    for state in survivor_indices:
        audit_parent = survivor_parent_results[state]
        split_basis = survivor_initial_bases[state]
        split_basis_sources = survivor_initial_basis_sources[state]
        if len(split_basis) != 19:
            fail(f"survivor C{state} raw cover basis no longer has 19 characters")
        split_lattice = engine.SignedLattice(len(support), split_basis)
        if split_lattice.rank != 13:
            fail(f"survivor C{state} raw cover basis rank changed")
        split_solver = IntegerLatticeWitnessSolver(split_basis)
        expectation = second_quotient_expectations[state]
        second_quotient, second_stats, second_candidate_pairs = (
            engine.quotient_overlap_dense_spanning(
                audit_parent["red"],
                audit_parent["lat"],
                min_face=2,
                max_output=4,
                source_min=4,
                source_max=4,
                roots=1,
            )
        )
        if (
            len(second_quotient) != expectation["count"]
            or dict(second_stats) != {4: expectation["count"]}
            or any(len(item["red"]) != 4 for item in second_quotient)
        ):
            fail(f"survivor C{state} second quotient census changed")

        emitted_second_indices = expectation["factor_rows"]
        referenced_parent_sources = sorted(
            {
                source_index
                for item in (second_quotient[index] for index in emitted_second_indices)
                for source_index in (item["provenance"][0], item["provenance"][2])
            }
        )
        if referenced_parent_sources != [2165, 2167]:
            fail(f"survivor C{state} split sources changed: {referenced_parent_sources}")
        source_reduction_id = {
            source_index: reduction_id
            for reduction_id, source_index in enumerate(referenced_parent_sources)
        }
        source_reductions = []
        for reduction_id, source_index in enumerate(referenced_parent_sources):
            source_relation = b_relations[source_index]
            source_reduced = engine.reduce_dense_terms(source_relation, split_lattice)
            source_reductions.append(
                {
                    "reduction_id": reduction_id,
                    "relation_index": source_index,
                    "relation_source": b_sources[source_index],
                    "certificate": relation_reduction_certificate(
                        engine,
                        source_relation,
                        split_basis,
                        split_lattice,
                        support,
                        already_dense=True,
                        expected_target=source_reduced,
                        solver=split_solver,
                    ),
                }
            )

        second_quotient_rows = []
        for quotient_index in emitted_second_indices:
            item = second_quotient[quotient_index]
            source_i, face_i, source_j, face_j = item["provenance"]
            mu = Fraction(item["mu"])
            if mu.denominator != 1 or mu == 0:
                fail(f"survivor C{state} second quotient has a noninteger scale")
            combination = translate_dense_relation(
                b_relations[source_i], mu, item["shift"]
            )
            combination += translate_dense_relation(
                b_relations[source_j], Fraction(-1), (0,) * len(support)
            )
            direct_reduced = engine.reduce_dense_terms(combination, split_lattice)
            if direct_reduced != item["red"]:
                fail(
                    f"survivor C{state} raw-cover eliminant differs from the "
                    f"pinned second quotient row {quotient_index}"
                )
            combination_reduction = relation_reduction_certificate(
                engine,
                combination,
                split_basis,
                split_lattice,
                support,
                already_dense=True,
                expected_target=direct_reduced,
                solver=split_solver,
            )
            second_quotient_rows.append(
                {
                    "quotient_index": quotient_index,
                    "relation": relation_json(item["red"], support, dense=True),
                    "provenance": {
                        "source_i_index": source_i,
                        "source_i": b_sources[source_i],
                        "source_i_face_indices": list(face_i),
                        "source_j_index": source_j,
                        "source_j": b_sources[source_j],
                        "source_j_face_indices": list(face_j),
                        "integer_scalar": int(mu),
                        "shift": exponent_json(item["shift"], support),
                    },
                    "source_reduction_ids": [
                        source_reduction_id[source_i],
                        source_reduction_id[source_j],
                    ],
                    "combination_reduction": combination_reduction,
                }
            )

        second_red = [item["red"] for item in second_quotient]
        emitted_relations = tuple(
            second_quotient[index]["red"] for index in expectation["factor_rows"]
        )
        if canonical_split_eliminants is None:
            canonical_split_eliminants = emitted_relations
        elif emitted_relations != canonical_split_eliminants:
            fail("the two survivor split eliminants changed between C3/C9/C15")
        audit_edges, audit_edge_witnesses, _audit_factor_parity = audit_factorizations(
            engine, second_red, audit_parent["lat"]
        )
        audit_factor_rows = sorted(
            witness["relation_index"] for witness in audit_edge_witnesses.values()
        )
        if audit_edges != expected_split_edges or audit_factor_rows != expectation["factor_rows"]:
            fail(f"survivor C{state} full second-quotient factor audit changed")
        direct_red = [
            second_quotient[index]["red"] for index in expectation["factor_rows"]
        ]
        split_edges, split_edge_witnesses, split_parity_audit = audit_factorizations(
            engine, direct_red, split_lattice
        )
        if split_edges != expected_split_edges:
            fail(f"survivor C{state} second-stage factor graph changed")
        split_vertices = sorted({character for edge in split_edges for character in edge})
        if set(split_vertices) != {*split_leaves, split_center}:
            fail(f"survivor C{state} split vertex table changed")
        split_classes, split_class_edges = engine.false_twin_classes(
            split_vertices, sorted(split_edges)
        )
        if (
            len(split_classes) != 2
            or set(split_classes[0]) != set(split_leaves)
            or tuple(split_classes[1]) != (split_center,)
            or split_class_edges != [(0, 1)]
        ):
            fail(f"survivor C{state} false-twin split changed")
        validate_false_twin_graph(
            split_vertices, sorted(split_edges), split_classes, split_class_edges
        )
        split_components = engine.graph_components(2, split_class_edges)
        validate_graph_components(2, split_class_edges, split_components)
        split_covers = engine.minimal_vertex_covers((0, 1), split_class_edges)
        if split_components != [(0, 1)] or split_covers != [(0,), (1,)]:
            fail(f"survivor C{state} split cover table changed")
        direct_factor_rows = sorted(
            witness["relation_index"] for witness in split_edge_witnesses.values()
        )
        if direct_factor_rows != [0, 1]:
            fail(f"survivor C{state} direct split factor rows changed")

        expected_factor_provenance = (
            (2165, (0, 1), 2167, (0, 1), ((9, -1), (11, 1))),
            (2165, (2, 3), 2167, (2, 3), ((59, -1), (65, 1))),
        )
        expected_factor_shifts = (
            ((6, 1), (9, -1), (11, 1), (59, 1), (69, -1), (70, 1), (98, 1), (139, 1)),
            ((0, -1), (6, 1), (11, 1), (39, 1), (88, 1), (139, 1)),
        )
        split_factor_certificates = []
        for direct_index, (
            expected_row,
            expected_provenance,
            expected_factor_shift,
        ) in enumerate(
            zip(
                expectation["factor_rows"],
                expected_factor_provenance,
                expected_factor_shifts,
            )
        ):
            item = second_quotient[expected_row]
            source_i, face_i, source_j, face_j = item["provenance"]
            actual_provenance = (
                source_i,
                tuple(face_i),
                source_j,
                tuple(face_j),
                tuple(engine.dense_sm(item["shift"])),
            )
            if Fraction(item["mu"]) != 1 or actual_provenance != expected_provenance:
                fail(
                    f"survivor C{state} split quotient provenance changed at "
                    f"row {expected_row}: {actual_provenance}"
                )
            matching_edges = [
                edge
                for edge, witness in split_edge_witnesses.items()
                if witness["relation_index"] == direct_index
            ]
            if len(matching_edges) != 1:
                fail(f"survivor C{state} split row does not witness one edge")
            left_endpoint, right_endpoint = matching_edges[0]
            factor_certificate = exact_factor_certificate(
                item["red"],
                left_endpoint,
                right_endpoint,
                split_basis,
                split_lattice,
                support,
                solver=split_solver,
            )
            if (
                factor_certificate["unit"] != 1
                or factor_certificate["provenance"]
                ["source_to_factor_term_permutation"]
                != [3, 1, 2, 0]
                or [
                    (row["local"], row["exp"])
                    for row in factor_certificate["shift"]
                ]
                != list(expected_factor_shift)
            ):
                fail(
                    f"survivor C{state} exact factor certificate changed at "
                    f"second quotient row {expected_row}"
                )
            split_factor_certificates.append(
                {
                    "second_quotient_index": expected_row,
                    "factor_edge": [
                        character_json(left_endpoint, support),
                        character_json(right_endpoint, support),
                    ],
                    "factor_certificate": factor_certificate,
                }
            )

        generated_branches = []
        for branch in (0, 1):
            selected_class_id = branch
            selected_characters = list(split_classes[selected_class_id])
            if any(split_lattice.member(*character) for character in selected_characters):
                fail(f"survivor C{state} split character was already implied")
            branch_characters = normalize_character_list(
                engine, list(split_basis) + selected_characters
            )
            expected_character_count = 21 if branch == 0 else 20
            if (
                len(branch_characters) != expected_character_count
                or branch_characters[: len(split_basis)] != split_basis
            ):
                fail(f"survivor C{state}-{branch} compact branch basis changed")
            branch_lattice = engine.SignedLattice(len(support), branch_characters)
            expected_branch_rank = 15 if branch == 0 else 14
            if branch_lattice.rank != expected_branch_rank:
                fail(f"survivor C{state}-{branch} compact branch rank changed")
            recovered = branch_states[f"B_state{state}_branch{branch}.pkl"]
            if (
                recovered.get("state") != state
                or recovered.get("branch") != branch
                or tuple(recovered.get("selected", ())) != (branch,)
                or recovered.get("status") != "stable"
                or recovered.get("w") is not None
            ):
                fail(f"recovered branch metadata changed at C{state}-{branch}")
            solver = IntegerLatticeWitnessSolver(branch_characters)
            implication_certificates = []
            for target_index, target in enumerate(derivative_targets[branch]):
                exponent, bit = target
                if not branch_lattice.member(exponent, bit):
                    fail(
                        f"derivative target {target_index} is not implied in "
                        f"C{state}-{branch}"
                    )
                implication = solver.solve(exponent, bit)
                if (
                    implication["sign_parity"] != 0
                    or implication["even_correction"] != 0
                    or implication["parity_generator_coefficient"] != 0
                ):
                    fail(
                        f"compact derivative implication has a nontrivial sign "
                        f"correction at C{state}-{branch}/{target_index}"
                    )
                implication_certificates.append(
                    {
                        "target_index": target_index,
                        "target_character": character_json(target, support),
                        "implication_certificate": implication_certificate_json(
                            solver, implication, exponent, bit, support
                        ),
                    }
                )
            if branch == 0:
                middle_index = {3: 8, 9: 6, 15: 5}[state]
                expected_implications = [
                    [[0, 1]],
                    [[middle_index, 1]],
                    [[19, 1]],
                    [[20, 1]],
                ]
            else:
                if state == 3:
                    expected_implications = [
                        [[9, -1]],
                        [[11, -1], [13, 1]],
                        [[11, -1]],
                        [[0, 1], [1, -1]],
                        [[11, -1], [19, 1]],
                    ]
                elif state == 9:
                    expected_implications = [
                        [[9, -1]],
                        [[12, -1], [14, 1]],
                        [[12, -1], [13, -1], [14, 1]],
                        [[0, 1], [1, -1]],
                        [[12, -1], [13, -1], [14, 1], [19, 1]],
                    ]
                else:
                    expected_implications = [
                        [[9, -1], [11, -1], [13, 1]],
                        [[11, -1], [13, 1]],
                        [[11, -1], [12, -1], [13, 1]],
                        [[0, 1], [1, -1]],
                        [[11, -1], [12, -1], [13, 1], [19, 1]],
                    ]
            actual_implications = [
                [
                    [index, coefficient]
                    for index, coefficient in enumerate(
                        row["implication_certificate"]["coeff"][:-1]
                    )
                    if coefficient
                ]
                for row in implication_certificates
            ]
            if actual_implications != expected_implications:
                fail(
                    f"compact derivative coefficients changed at C{state}-{branch}: "
                    f"{actual_implications}"
                )
            generated_branches.append(
                {
                    "branch": branch,
                    "source_pickle": f"B_state{state}_branch{branch}.pkl",
                    "source_pickle_sha256": BRANCH_STATE_SHA256[
                        f"B_state{state}_branch{branch}.pkl"
                    ],
                    "selected_false_twin_class_id": selected_class_id,
                    "selected_factor_endpoints": [
                        character_json(character, support)
                        for character in selected_characters
                    ],
                    "selected_basis_sources": [
                        {
                            "kind": "survivor_second_stage_factor_vertex",
                            "split_vertex_id": split_vertices.index(character),
                            "split_class_id": selected_class_id,
                        }
                        for character in selected_characters
                    ],
                    "compact_basis_character_count": len(branch_characters),
                    "compact_basis_rank": branch_lattice.rank,
                    "compact_basis_characters": [
                        character_json(character, support)
                        for character in branch_characters
                    ],
                    "no_post_split_saturation_required": True,
                    "source_pickle_is_hash_audited_but_not_used_as_proof": True,
                    "source_pickle_reported_rank": recovered.get("rank"),
                    "source_pickle_reported_character_count": len(
                        recovered.get("chars", [])
                    ),
                    "derivative_character_implications": implication_certificates,
                    "all_derivative_targets_implied": True,
                }
            )
        branch_rows.append(
            {
                "state": state,
                "parent_cover": list(b_covers[state]),
                "raw_cover_basis_character_count": len(split_basis),
                "raw_cover_basis_rank": split_lattice.rank,
                "raw_cover_basis_sources": split_basis_sources,
                "second_quotient": {
                    "parameters": {
                        "min_face": 2,
                        "max_output": 4,
                        "source_min": 4,
                        "source_max": 4,
                        "roots": 1,
                    },
                    "count": len(second_quotient),
                    "candidate_pairs": second_candidate_pairs,
                    "all_rows_sha256": sha256(
                        canonical_json_bytes(
                            [
                                relation_json(item["red"], support, dense=True)
                                for item in second_quotient
                            ]
                        )
                    ),
                    "unique_raw_cover_basis_source_reduction_count": len(
                        source_reductions
                    ),
                    "raw_cover_basis_source_reductions": source_reductions,
                    "only_semantically_required_eliminants_emitted": True,
                    "emitted_rows": second_quotient_rows,
                },
                "split_factor_graph": {
                    "vertices": [
                        {"vertex_id": index, **character_json(character, support)}
                        for index, character in enumerate(split_vertices)
                    ],
                    "raw_edges": [
                        [split_vertices.index(left), split_vertices.index(right)]
                        for left, right in sorted(split_edges)
                    ],
                    "classes": [
                        [split_vertices.index(character) for character in row]
                        for row in split_classes
                    ],
                    "class_edges": [list(edge) for edge in split_class_edges],
                    "minimal_class_covers": [list(cover) for cover in split_covers],
                    "parity_audit": split_parity_audit,
                    "factor_certificates": split_factor_certificates,
                },
                "branches": generated_branches,
            }
        )

    branches_terminal = {
        "schema_version": SCHEMA_VERSION,
        "scope": "component B survivor split and derivative implications",
        "source_handoff_zip_sha256": research_inputs["handoff_zip_sha256"],
        "states": branch_rows,
        "state_count": 3,
        "branch_count": 6,
        "all_source_pickles_hash_audited_but_not_used_as_proof": True,
        "all_branches_use_only_raw_19_character_cover_bases_plus_selected_factor_class": True,
        "all_split_factors_replayed_exactly": True,
        "all_branch_derivative_characters_have_integer_implication_witnesses": True,
    }
    return {
        "terminal_component_A_semantics.json": a_terminal,
        "terminal_component_B_semantics.json": b_terminal,
        "terminal_branches_semantics.json": branches_terminal,
    }


def build_artifacts(
    engine: ModuleType,
    engine_path: Path,
    research_inputs: dict[str, Any],
) -> dict[str, bytes]:
    support_raw = SUPPORT_PATH.read_bytes()
    support_digest = sha256(support_raw)
    if support_digest != SUPPORT_SHA256:
        fail(f"canonical support SHA-256 mismatch: {support_digest}")
    support = engine.parse_support(SUPPORT_PATH)
    if support != sorted(support) or len(support) != 144 or len(set(support)) != 144:
        fail("canonical support is not a sorted 144-element set")
    if not all(0 <= value < 252 for value in support):
        fail("canonical support coordinate outside [0,252)")

    support2, equations, distribution = engine.base_relations(support, 6, 6)
    if support2 != support:
        fail("recovered engine changed canonical support ordering")
    if len(equations) != BASE_COUNT:
        fail(f"base relation count changed: {len(equations)}")
    if any(len(row) != 6 for _code, _active, row in equations):
        fail("base relation table is not entirely six-term")
    if any(tuple(active) != EXPECTED_ACTIVE_MATCHINGS for _code, active, _row in equations):
        fail("base relation active-matching core changed")
    base = [row for _code, _active, row in equations]

    first_overlap, first_group_stats = engine.overlap_closure_spanning(
        base,
        {6},
        6,
        min_face=3,
        per_group_roots=1,
    )
    if len(first_overlap) != FIRST_OVERLAP_COUNT:
        fail(f"first overlap count changed: {len(first_overlap)}")
    if counter_dict(map(len, first_overlap)) != {6: FIRST_OVERLAP_COUNT}:
        fail("first overlap table is not entirely six-term")
    retained_relations = base + list(first_overlap)
    if len(retained_relations) != FACTOR_PIPELINE_RELATION_COUNT:
        fail("retained factor-pipeline relation count changed")

    second_overlap, second_group_stats = engine.overlap_closure_spanning(
        retained_relations,
        {4, 5, 6},
        4,
        min_face=2,
        per_group_roots=1,
    )
    if len(second_overlap) != UNUSED_SECOND_OVERLAP_COUNT:
        fail(f"unused second overlap regression changed: {len(second_overlap)}")
    if counter_dict(map(len, second_overlap)) != {4: UNUSED_SECOND_OVERLAP_COUNT}:
        fail("unused second overlap regression is not entirely four-term")
    second_regression_rows = []
    for index, row in enumerate(second_overlap):
        source_i, face_i, source_j, face_j, scalar, shift = second_overlap[row]
        second_regression_rows.append(
            {
                "index": index,
                "relation": relation_json(row, support, dense=False),
                "provenance": {
                    "source_i": global_source_json(source_i),
                    "source_i_face_indices": list(face_i),
                    "source_j": global_source_json(source_j),
                    "source_j_face_indices": list(face_j),
                    "scalar": fraction_json(scalar),
                    "shift": sparse_monomial_json(shift, support),
                },
            }
        )
    second_regression_digest = sha256(canonical_json_bytes(second_regression_rows))

    base_rows = []
    for index, (code, active, relation) in enumerate(equations):
        base_rows.append(
            {
                "index": index,
                "source_coloring_code": code,
                "source_coloring": coloring_json(engine, code),
                "active_matching_indices": list(active),
                "relation": relation_json(relation, support, dense=False),
            }
        )
    first_rows = []
    for index, row in enumerate(first_overlap):
        source_i, face_i, source_j, face_j, scalar, shift = first_overlap[row]
        exact_uses = exact_two_source_uses(
            engine,
            base[source_i],
            base[source_j],
            scalar,
            shift,
            row,
            support,
        )
        exact_uses[0]["source_index"] = source_i
        exact_uses[1]["source_index"] = source_j
        first_rows.append(
            {
                "index": index,
                "combined_index": BASE_COUNT + index,
                "relation": relation_json(row, support, dense=False),
                "provenance": {
                    "source_i": global_source_json(source_i),
                    "source_i_face_indices": list(face_i),
                    "source_j": global_source_json(source_j),
                    "source_j_face_indices": list(face_j),
                    "scalar": fraction_json(scalar),
                    "shift": sparse_monomial_json(shift, support),
                },
                "exact_source_uses": exact_uses,
                "exact_target_equality_replayed": True,
            }
        )

    global_data = {
        "schema_version": SCHEMA_VERSION,
        "support": {
            "path": str(SUPPORT_PATH.relative_to(ROOT)),
            "sha256": SUPPORT_SHA256,
            "size": len(support),
        },
        "base": {
            "count": len(base_rows),
            "term_distribution": counter_dict(map(len, base)),
            "all_active_matching_indices": list(EXPECTED_ACTIVE_MATCHINGS),
            "nonmonochromatic_active_count_distribution": dict(
                sorted(distribution.items())
            ),
            "rows": base_rows,
        },
        "first_overlap": {
            "parameters": {
                "source_sizes": [6],
                "max_output": 6,
                "min_face": 3,
                "per_group_roots": 1,
            },
            "count": len(first_rows),
            "term_distribution": counter_dict(map(len, first_overlap)),
            "group_stats": dict(sorted(first_group_stats.items())),
            "rows": first_rows,
        },
        "retained_factor_pipeline": {
            "relation_count": len(retained_relations),
            "term_distribution": counter_dict(map(len, retained_relations)),
        },
        "unused_second_overlap_regression": {
            "used_by_component_factor_pipeline": False,
            "parameters": {
                "source_sizes": [4, 5, 6],
                "max_output": 4,
                "min_face": 2,
                "per_group_roots": 1,
            },
            "count": len(second_overlap),
            "term_distribution": counter_dict(map(len, second_overlap)),
            "group_stats": dict(sorted(second_group_stats.items())),
            "canonical_rows_sha256": second_regression_digest,
        },
    }

    characters = component_characters(engine, support)
    component_results = {
        name: build_component(
            engine, name, support, retained_relations, characters[name]
        )
        for name in ("A", "B")
    }
    component_data = {name: result[0] for name, result in component_results.items()}
    component_internal = {name: result[1] for name, result in component_results.items()}
    terminal_data = build_terminal_semantics(
        engine,
        support,
        retained_relations,
        characters,
        component_data,
        component_internal,
        research_inputs,
    )

    manifest = {
        "schema_version": SCHEMA_VERSION,
        "scope": "N=8,D=3 canonical six-matching support factor semantics",
        "inputs": {
            "support_path": str(SUPPORT_PATH.relative_to(ROOT)),
            "support_sha256": SUPPORT_SHA256,
            "support_size": len(support),
            "recovered_engine_filename": engine_path.name,
            "recovered_engine_sha256": ENGINE_SHA256,
            "recovered_engine_size": ENGINE_SIZE,
            "sympy_version": SYMPY_VERSION,
            "canonical_handoff_zip_sha256": HANDOFF_ZIP_SHA256,
            "component_A_research_sha256": A_COMPLETE_SHA256,
            "component_B_research_sha256": B_RESIDUAL_SHA256,
            "branch_state_sha256": BRANCH_STATE_SHA256,
        },
        "retained_pipeline": {
            "base_relations": BASE_COUNT,
            "first_overlap_relations": FIRST_OVERLAP_COUNT,
            "factor_pipeline_relations": FACTOR_PIPELINE_RELATION_COUNT,
            "second_overlap_relations_used": 0,
        },
        "unused_regression": {
            "second_overlap_relations": UNUSED_SECOND_OVERLAP_COUNT,
            "canonical_rows_sha256": second_regression_digest,
        },
        "components": {
            name: {
                "quotient_rows": data["quotient"]["count"],
                **data["factor"]["metrics"],
                "all_engine_accepted_factor_witnesses_even": data["factor"]
                ["parity_audit"]
                ["all_engine_accepted_factor_witnesses_even"],
            }
            for name, data in component_data.items()
        },
        "trust_boundary": {
            "python_output_is_proof": False,
            "lean_kernel_replay_required": True,
            "arbitrary_quotient_normal_form_multiplication_trusted": False,
            "integer_character_coefficients_replayed_exactly": True,
            "signed_implications_include_even_parity_correction": True,
            "lean_replay_must_append_the_parity_generator_row_0_2": True,
        },
    }

    artifacts = {
        "generation_manifest.json": canonical_json_bytes(manifest),
        "global_relations.json": canonical_json_bytes(global_data),
        "component_A_factor_semantics.json": canonical_json_bytes(component_data["A"]),
        "component_B_factor_semantics.json": canonical_json_bytes(component_data["B"]),
    }
    artifacts.update(
        {name: canonical_json_bytes(data) for name, data in terminal_data.items()}
    )
    return artifacts


def checksum_bytes(artifacts: dict[str, bytes]) -> bytes:
    return "".join(
        f"{sha256(raw)}  {name}\n" for name, raw in sorted(artifacts.items())
    ).encode()


def audit_serialized_certificate_schema(artifacts: dict[str, bytes]) -> None:
    """Fail closed on the exact Lean-facing certificate schema.

    This is deliberately independent of the constructors above: it reparses
    the final bytes, checks that no legacy adapter-shaped certificate survived,
    and replays the sparse source/target equality payloads from every `use`.
    """
    values = [json.loads(raw) for raw in artifacts.values()]
    dictionaries: list[dict[str, Any]] = []

    def collect(value: Any) -> None:
        if isinstance(value, dict):
            dictionaries.append(value)
            for child in value.values():
                collect(child)
        elif isinstance(value, list):
            for child in value:
                collect(child)

    for value in values:
        collect(value)

    forbidden_legacy_keys = {
        "term_reductions",
        "monomial_reduction",
        "semantic_coefficient",
        "normalization_unit",
        "nonzero_integer_unit",
        "translation_shift",
        "integer_implication",
    }
    legacy = sorted(
        {
            key
            for row in dictionaries
            for key in row
            if key in forbidden_legacy_keys
        }
    )
    if legacy:
        fail(f"legacy certificate adapter keys survived serialization: {legacy}")

    reduction_keys = {"use", "source_eq", "target_eq"}
    use_keys = {"coefficient", "sourceExponent", "targetExponent", "reduction"}
    monomial_keys = {"signExponent", "implication"}
    implication_keys = {"coeff", "combination_eq"}
    equality_keys = {"lhs", "rhs"}

    reductions = [row for row in dictionaries if set(row) == reduction_keys]
    uses = [row for row in dictionaries if set(row) == use_keys]
    implications = [row for row in dictionaries if set(row) == implication_keys]
    outer_certificates = [
        row
        for row in dictionaries
        if {"unit", "unit_ne_zero", "reduction"} <= set(row)
        and isinstance(row["reduction"], dict)
        and set(row["reduction"]) == reduction_keys
    ]
    if (len(reductions), len(uses), len(implications), len(outer_certificates)) != (
        609,
        4432,
        4459,
        609,
    ):
        fail(
            "Lean-facing certificate census changed: "
            f"reductions={len(reductions)} uses={len(uses)} "
            f"implications={len(implications)} outer={len(outer_certificates)}"
        )

    def dense_exponent(rows: Any, context: str) -> tuple[int, ...]:
        if not isinstance(rows, list):
            fail(f"{context} is not a sparse exponent list")
        result = [0] * 144
        seen = set()
        for row in rows:
            if not isinstance(row, dict) or set(row) != {"local", "global", "exp"}:
                fail(f"{context} has a malformed exponent entry")
            local = row["local"]
            exponent = row["exp"]
            if not isinstance(local, int) or not 0 <= local < 144 or local in seen:
                fail(f"{context} has an invalid or repeated local coordinate")
            if not isinstance(row["global"], int) or not isinstance(exponent, int):
                fail(f"{context} exponent data is not integral")
            if exponent == 0:
                fail(f"{context} contains an explicit zero exponent")
            seen.add(local)
            result[local] = exponent
        return tuple(result)

    def canonical_lean_terms(
        relation: Iterable[tuple[int, tuple[int, ...]]]
    ) -> list[tuple[int, tuple[int, ...]]]:
        aggregate: dict[tuple[int, ...], int] = {}
        for coefficient, exponent in relation:
            aggregate[exponent] = aggregate.get(exponent, 0) + coefficient
        return sorted(
            (coefficient, exponent)
            for exponent, coefficient in aggregate.items()
            if coefficient
        )

    def decoded_polynomial(rows: Any, context: str) -> list[tuple[int, tuple[int, ...]]]:
        if not isinstance(rows, list):
            fail(f"{context} is not a Laurent-polynomial term list")
        result = []
        for row in rows:
            if not isinstance(row, dict) or set(row) != {"coefficient", "exponent"}:
                fail(f"{context} has a malformed Laurent-polynomial term")
            if not isinstance(row["coefficient"], int):
                fail(f"{context} has a nonintegral coefficient")
            result.append(
                (
                    row["coefficient"],
                    dense_exponent(row["exponent"], f"{context}.exponent"),
                )
            )
        return canonical_lean_terms(result)

    for reduction_index, reduction in enumerate(reductions):
        if not isinstance(reduction["use"], list):
            fail("CharacterReductionCertificate.use is not a finite table")
        source_terms = []
        target_terms = []
        for use_index, use in enumerate(reduction["use"]):
            if not isinstance(use, dict) or set(use) != use_keys:
                fail("CharacterReductionUse fields do not match the Lean API")
            coefficient = use["coefficient"]
            if not isinstance(coefficient, int):
                fail("CharacterReductionUse.coefficient is not an integer")
            source_exponent = dense_exponent(
                use["sourceExponent"],
                f"reduction {reduction_index} use {use_index} sourceExponent",
            )
            target_exponent = dense_exponent(
                use["targetExponent"],
                f"reduction {reduction_index} use {use_index} targetExponent",
            )
            monomial = use["reduction"]
            if not isinstance(monomial, dict) or set(monomial) != monomial_keys:
                fail("MonomialReductionCertificate fields do not match the Lean API")
            sign_exponent = monomial["signExponent"]
            if not isinstance(sign_exponent, int):
                fail("MonomialReductionCertificate.signExponent is not integral")
            implication = monomial["implication"]
            if not isinstance(implication, dict) or set(implication) != implication_keys:
                fail("ImplicationCertificate fields do not match the Lean API")
            source_terms.append((coefficient, source_exponent))
            target_terms.append(
                (
                    coefficient if sign_exponent % 2 == 0 else -coefficient,
                    target_exponent,
                )
            )

        for field, expected in (
            ("source_eq", canonical_lean_terms(source_terms)),
            ("target_eq", canonical_lean_terms(target_terms)),
        ):
            equality = reduction[field]
            if not isinstance(equality, dict) or set(equality) != equality_keys:
                fail(f"CharacterReductionCertificate.{field} payload is malformed")
            lhs = decoded_polynomial(equality["lhs"], f"{field}.lhs")
            rhs = decoded_polynomial(equality["rhs"], f"{field}.rhs")
            if lhs != expected or rhs != expected:
                fail(f"CharacterReductionCertificate.{field} replay failed")

    for implication in implications:
        if (
            not isinstance(implication["coeff"], list)
            or not implication["coeff"]
            or not all(isinstance(value, int) for value in implication["coeff"])
        ):
            fail("ImplicationCertificate.coeff is not a nonempty integer vector")
        equality = implication["combination_eq"]
        if not isinstance(equality, dict) or set(equality) != equality_keys:
            fail("ImplicationCertificate.combination_eq payload is malformed")
        for side in ("lhs", "rhs"):
            row = equality[side]
            if not isinstance(row, dict) or set(row) != {"exponent", "signExponent"}:
                fail("SignedCharacterRow equality side does not match the Lean API")
            dense_exponent(row["exponent"], f"combination_eq.{side}.exponent")
            if not isinstance(row["signExponent"], int):
                fail("combination_eq sign exponent is not integral")
        if equality["lhs"] != equality["rhs"]:
            fail("serialized ImplicationCertificate.combination_eq is false")

    for certificate in outer_certificates:
        if (
            not isinstance(certificate["unit"], int)
            or certificate["unit"] == 0
            or certificate["unit_ne_zero"] is not True
        ):
            fail("serialized normalized/factor certificate has a zero unit")
        provenance = certificate.get("provenance")
        if not isinstance(provenance, dict):
            fail("serialized normalized/factor certificate lacks provenance")
        basis_count = provenance.get("basis_character_count")
        if not isinstance(basis_count, int) or basis_count <= 0:
            fail("serialized certificate has no positive basis-character count")
        for use in certificate["reduction"]["use"]:
            if len(use["reduction"]["implication"]["coeff"]) != basis_count + 1:
                fail("ImplicationCertificate coefficient-vector arity changed")


def write_or_check(artifacts: dict[str, bytes], check: bool) -> None:
    checksums = checksum_bytes(artifacts)
    unexpected = sorted(
        path.name
        for path in OUTPUT_DIR.glob("*.json")
        if path.name not in artifacts
    )
    if unexpected:
        fail(f"unexpected JSON files in generated directory: {unexpected}")
    if check:
        for name, expected in artifacts.items():
            path = OUTPUT_DIR / name
            if not path.exists():
                fail(f"missing generated artifact: {path}")
            actual = path.read_bytes()
            if actual != expected:
                fail(
                    f"generated artifact differs: {name}; "
                    f"actual={sha256(actual)} expected={sha256(expected)}"
                )
        checksum_path = OUTPUT_DIR / "SHA256SUMS"
        if not checksum_path.exists() or checksum_path.read_bytes() != checksums:
            fail("factor-semantics SHA256SUMS differs from deterministic output")
        return

    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    for name, raw in artifacts.items():
        (OUTPUT_DIR / name).write_bytes(raw)
    (OUTPUT_DIR / "SHA256SUMS").write_bytes(checksums)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--engine",
        required=True,
        type=Path,
        help="path to recovered mqg_exact_engine.py (exact SHA-256 is enforced)",
    )
    parser.add_argument(
        "--handoff-zip",
        required=True,
        type=Path,
        help="canonical monochromatic_quantum_graphs_codex_handoff.zip",
    )
    parser.add_argument(
        "--branch-state-dir",
        required=True,
        type=Path,
        help="directory containing all six pinned B_state*_branch*.pkl files",
    )
    parser.add_argument(
        "--check",
        action="store_true",
        help="recompute and byte-compare all checked-in generated artifacts",
    )
    args = parser.parse_args()

    engine_path = args.engine.resolve()
    engine = load_engine(engine_path)
    research_inputs = load_research_inputs(
        args.handoff_zip.resolve(), args.branch_state_dir.resolve()
    )
    artifacts = build_artifacts(engine, engine_path, research_inputs)
    audit_serialized_certificate_schema(artifacts)
    write_or_check(artifacts, args.check)

    action = "checked" if args.check else "wrote"
    print(
        f"{action} factor semantics: base=200 first=360 retained=560 "
        "unused_second=68 A=70/68/59/15/54 B=88/59/49/23/288 "
        "terminal=A54+B288 branches=6"
    )
    for name, raw in sorted(artifacts.items()):
        print(f"{sha256(raw)}  {name}")


if __name__ == "__main__":
    main()
