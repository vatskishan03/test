#!/usr/bin/env python3
"""Exact singleton quotient-class audit for Candidate 129.

Each selected false-twin class means that every signed character represented by
that quotient vertex vanishes as a factor.  Starting from those characters, the
script repeatedly reduces all 16,381 exact root relations in the augmented
integer lattice, extracts every forced ±1 binomial character, and stops only at
an exact Laurent monomial, a signed-lattice inconsistency, or a fixed point.
"""
from __future__ import annotations

from collections import Counter, defaultdict
from fractions import Fraction
from pathlib import Path
import argparse
import hashlib
import json
import sys
import time

from sympy import Matrix
from sympy.matrices.normalforms import hermite_normal_form

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import probe_candidate129 as P
import probe_candidate129_precover as PRE

EXPECTED_CLASS_SHA256 = "4ffa846a8d4001754fbf79c41a745c51c0db86e9df03ec6e19172cb47751d2d8"
TERMINAL = {"monomial", "inconsistent"}


class SignedLattice:
    def __init__(self, n, chars=()):
        self.n = n
        rows = []
        seen = set()
        for d, b in chars:
            d, b = P.normalize_char(tuple(map(int, d)), int(b) & 1)
            row = d + (b,)
            if row not in seen:
                seen.add(row)
                rows.append(row)
        rows.append((0,) * n + (2,))
        H = hermite_normal_form(Matrix(rows).T)
        self.cols = []
        self.piv = []
        for j in range(H.cols):
            col = tuple(int(H[i, j]) for i in range(H.rows))
            p = max(i for i, x in enumerate(col) if x)
            if col[p] < 0:
                col = tuple(-x for x in col)
            self.cols.append(col)
            self.piv.append(p)
        self.rank = H.cols
        self._normal_cache = {}
        self._member_cache = {}

    def normal(self, z):
        z = tuple(map(int, z))
        if z in self._normal_cache:
            return self._normal_cache[z]
        v = list(z)
        for col, p in reversed(list(zip(self.cols, self.piv))):
            h = col[p]
            q, _r = divmod(v[p], h)
            if q:
                for i, x in enumerate(col):
                    if x:
                        v[i] -= q * x
        out = tuple(v)
        self._normal_cache[z] = out
        return out

    def member(self, d, b=0):
        key = (tuple(map(int, d)), int(b) & 1)
        if key not in self._member_cache:
            self._member_cache[key] = not any(self.normal(key[0] + (key[1],)))
        return self._member_cache[key]

    def consistent(self):
        return not self.member((0,) * self.n, 1)

    def term(self, d):
        r = self.normal(tuple(map(int, d)) + (0,))
        return r[:-1], r[-1] & 1

    def fingerprint(self):
        return {
            "rank": self.rank,
            "columns": [list(c) for c in self.cols],
            "pivots": list(self.piv),
        }


def sparse_to_dense(m, n):
    z = [0] * n
    for i, e in m:
        z[int(i)] += int(e)
    return tuple(z)


def reduce_relation(rel, lat, n):
    acc = defaultdict(Fraction)
    for c, m in rel:
        key, bit = lat.term(sparse_to_dense(m, n))
        acc[key] += Fraction(c) * (-1 if bit else 1)
    terms = [(c, e) for e, c in acc.items() if c]
    if not terms:
        return ()
    terms.sort(key=lambda x: x[1])
    scale = terms[0][0]
    return tuple((c / scale, e) for c, e in terms)


def char_from_binomial(red):
    if len(red) != 2:
        return None
    c1, e1 = red[0]
    c2, e2 = red[1]
    ratio = -Fraction(c1, c2)
    if ratio not in (1, -1):
        return None
    d = tuple(e2[i] - e1[i] for i in range(len(e1)))
    return P.normalize_char(d, 0 if ratio == 1 else 1)


def unique_chars(chars):
    out = []
    seen = set()
    for ch in chars:
        ch = P.normalize_char(*ch)
        if ch not in seen:
            seen.add(ch)
            out.append(ch)
    return out


def compact_basis(chars, n):
    out = []
    lat = SignedLattice(n, [])
    for ch in unique_chars(chars):
        if not lat.member(*ch):
            out.append(ch)
            lat = SignedLattice(n, out)
            if not lat.consistent():
                break
    return out, lat


def saturate(relations, n, initial_chars, maxiter=30):
    chars, lat = compact_basis(initial_chars, n)
    history = []
    if not lat.consistent():
        return {"status": "inconsistent", "chars": chars, "lat": lat, "history": history}
    for it in range(maxiter):
        dist = Counter()
        pending = []
        seen = set()
        for ri, rel in enumerate(relations):
            rr = reduce_relation(rel, lat, n)
            dist[len(rr)] += 1
            if len(rr) == 1:
                return {
                    "status": "monomial",
                    "chars": chars,
                    "lat": lat,
                    "history": history,
                    "witness": ri,
                    "witness_relation": [
                        [[Fraction(c).numerator, Fraction(c).denominator], list(e)] for c, e in rr
                    ],
                }
            ch = char_from_binomial(rr)
            if ch is not None and ch not in seen and not lat.member(*ch):
                seen.add(ch)
                pending.append((ri, ch))
        added = []
        for ri, ch in pending:
            if not lat.member(*ch):
                chars.append(ch)
                lat = SignedLattice(n, chars)
                added.append((ri, ch))
                if not lat.consistent():
                    history.append({
                        "iteration": it,
                        "rank": lat.rank,
                        "distribution": dict(sorted(dist.items())),
                        "new_candidates": len(pending),
                        "new_independent": len(added),
                    })
                    return {
                        "status": "inconsistent",
                        "chars": chars,
                        "lat": lat,
                        "history": history,
                        "witness": ri,
                    }
        history.append({
            "iteration": it,
            "rank": lat.rank,
            "distribution": dict(sorted(dist.items())),
            "new_candidates": len(pending),
            "new_independent": len(added),
        })
        if not added:
            return {"status": "stable", "chars": chars, "lat": lat, "history": history}
    return {"status": "maxiter", "chars": chars, "lat": lat, "history": history}


def reconstruct(support):
    amps = P.amplitude_matching_sets(support)
    loc = {x: i for i, x in enumerate(support)}
    base = []
    for q, active, mons in amps:
        if all(x == q[0] for x in q):
            continue
        if len(active) == 6:
            base.append(P.canon_relation([
                (Fraction(1), tuple(sorted((loc[x], 1) for x in mon))) for mon in mons
            ]))
    base = sorted(set(base)); P.check_count("base", base)
    g1 = P.overlap_closure(base, {6}, 6, min_face=3); P.check_count("g1", g1)
    r1 = sorted(set(base) | set(g1)); P.check_count("r1", r1)
    g2 = P.overlap_closure(r1, {6}, 6, min_face=3); P.check_count("g2", g2)
    r2 = sorted(set(r1) | set(g2)); P.check_count("r2", r2)
    g3 = P.overlap_closure(r2, {4, 5, 6}, 6, min_face=2); P.check_count("g3", g3)
    r3 = sorted(set(r2) | set(g3)); P.check_count("r3", r3)
    edges = set()
    for rel in r3:
        if len(rel) == 4:
            edges.update(P.factorize_tetranomial_trivial(rel, len(support)))
    edges = sorted(edges)
    vertices = sorted({v for e in edges for v in e})
    classes, qedges = P.false_twin_classes(vertices, edges)
    got_sha = P.sha_obj([[P.ser_char(ch) for ch in C] for C in classes])
    if got_sha != EXPECTED_CLASS_SHA256:
        raise AssertionError(("class SHA", got_sha, EXPECTED_CLASS_SHA256))
    return r3, classes, qedges


def serial_char(ch):
    return P.ser_char(ch)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("support")
    ap.add_argument("output")
    ap.add_argument("--start", type=int, required=True)
    ap.add_argument("--end", type=int, required=True)
    args = ap.parse_args()
    t0 = time.time()
    support_path = Path(args.support)
    support_sha = hashlib.sha256(support_path.read_bytes()).hexdigest()
    if support_sha != P.EXPECTED_SUPPORT_SHA256:
        raise AssertionError(("support SHA", support_sha))
    support = P.parse_support(support_path)
    relations, classes, qedges = reconstruct(support)
    end = min(args.end, len(classes))
    if not 0 <= args.start <= end:
        raise AssertionError((args.start, end))
    results = []
    for ci in range(args.start, end):
        ts = time.time()
        initial, initial_lat = compact_basis(classes[ci], len(support))
        sat = saturate(relations, len(support), initial)
        row = {
            "class": ci,
            "raw_class_size": len(classes[ci]),
            "compact_input_count": len(initial),
            "input_rank": initial_lat.rank,
            "status": sat["status"],
            "final_character_count": len(sat["chars"]),
            "final_rank": sat["lat"].rank,
            "witness": sat.get("witness"),
            "history": sat["history"],
            "compact_input_characters": [serial_char(ch) for ch in initial],
            "seconds": time.time() - ts,
        }
        results.append(row)
        print("SINGLETON", ci, row["status"], "RANK", row["final_rank"], "WITNESS", row["witness"], "SEC", round(row["seconds"], 3), flush=True)
    out = {
        "schema": "mqg.n8d3.candidate129-singleton-audit.v1",
        "epistemic_status": "REPRODUCED computation if assertions pass; terminal rows are provisional until an independent manifest verifier replays their exact ancestry",
        "support_file_sha256": support_sha,
        "root_relation_set_sha256": P.sha_obj([P.ser_relation(r) for r in relations]),
        "false_twin_classes_sha256": EXPECTED_CLASS_SHA256,
        "class_range": [args.start, end],
        "results": results,
        "seconds": time.time() - t0,
    }
    Path(args.output).write_text(json.dumps(out, indent=2, sort_keys=True) + "\n")
    print("CHUNK PASS", args.start, end, Counter(r["status"] for r in results), flush=True)


if __name__ == "__main__":
    main()
