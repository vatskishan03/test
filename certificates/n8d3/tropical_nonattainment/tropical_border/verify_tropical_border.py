#!/usr/bin/env python3
"""Standalone exact verifier for the N=8, D=3 tropical-border certificate.

Uses integer arithmetic only. No third-party dependencies.
"""
from __future__ import annotations
from collections import Counter
from itertools import product
from pathlib import Path
import json

N = 8
D = 3

EDGES = []
EIDX = [[-1] * N for _ in range(N)]
for u in range(N):
    for v in range(u + 1, N):
        EIDX[u][v] = EIDX[v][u] = len(EDGES)
        EDGES.append((u, v))


def gen_pm(vertices, current, out):
    if not vertices:
        out.append(tuple(sorted(current)))
        return
    a = vertices[0]
    for i in range(1, len(vertices)):
        b = vertices[i]
        rem = vertices[1:i] + vertices[i + 1 :]
        gen_pm(rem, current + [EIDX[a][b]], out)


PMS = []
gen_pm(list(range(N)), [], PMS)
PMS = sorted(set(PMS))
assert len(PMS) == 105


def coord(u: int, v: int, a: int, b: int) -> int:
    if u > v:
        u, v, a, b = v, u, b, a
    return EIDX[u][v] * 9 + 3 * a + b


def decode_coord(x: int):
    ei, ab = divmod(x, 9)
    a, b = divmod(ab, 3)
    u, v = EDGES[ei]
    return {"index": x, "edge": [u, v], "colors": [a, b], "name": f"w{u}{v}^{a}{b}"}


def parse_support(path: Path):
    vals = []
    for line in path.read_text().splitlines():
        s = line.strip()
        if s.isdigit():
            vals.append(int(s))
    return vals


def matching_coords(pm, coloring):
    result = []
    for ei in pm:
        u, v = EDGES[ei]
        result.append(ei * 9 + 3 * coloring[u] + coloring[v])
    return tuple(sorted(result))


def main():
    here = Path(__file__).resolve().parent
    support_list = parse_support(here / "support_144.txt")
    support = set(support_list)
    assert len(support_list) == 144
    assert len(support) == 144
    assert all(0 <= x < 252 for x in support)

    positive_names = [
        (0, 1, 2, 2),
        (0, 4, 0, 0),
        (0, 6, 1, 1),
        (1, 2, 1, 1),
        (1, 7, 0, 0),
        (2, 6, 0, 0),
        (2, 7, 2, 2),
        (3, 4, 2, 2),
        (3, 5, 0, 0),
        (4, 5, 1, 1),
        (5, 6, 2, 2),
    ]
    zero_names = [(0, 1, 0, 0), (3, 7, 1, 1)]
    positive = {coord(*x) for x in positive_names}
    zero = {coord(*x) for x in zero_names}
    required = positive | zero
    assert required <= support, sorted(required - support)

    valuation = {x: (1 if x in positive else 0 if x in zero else -1) for x in support}

    target_pairs = [
        [(0, 4), (1, 7), (2, 6), (3, 5)],
        [(0, 6), (1, 2), (3, 7), (4, 5)],
        [(0, 1), (2, 7), (3, 4), (5, 6)],
    ]
    target_pms = []
    target_details = []
    target_rates = []
    for c, pairs in enumerate(target_pairs):
        pm_edges = tuple(sorted(EIDX[u][v] for u, v in pairs))
        pm_index = PMS.index(pm_edges)
        target_pms.append(pm_index)
        coloring = (c,) * N
        coords = matching_coords(PMS[pm_index], coloring)
        assert all(x in support for x in coords)
        rate = sum(valuation[x] for x in coords)
        target_rates.append(rate)
        target_details.append(
            {
                "color": c,
                "pm_index": pm_index,
                "edges": [list(EDGES[ei]) for ei in PMS[pm_index]],
                "coords": [decode_coord(x) for x in coords],
                "valuation_sum": rate,
            }
        )
    assert target_rates == [4, 3, 4], target_rates

    total_supported_monomials = 0
    checked_inequalities = 0
    margin_distribution = Counter()
    violations = []
    monochromatic_competitors = 0
    nonmonochromatic_monomials = 0

    for coloring in product(range(D), repeat=N):
        mono = len(set(coloring)) == 1
        c0 = coloring[0]
        for pm_index, pm in enumerate(PMS):
            coords = matching_coords(pm, coloring)
            if not all(x in support for x in coords):
                continue
            total_supported_monomials += 1
            if mono and pm_index == target_pms[c0]:
                continue
            if mono:
                monochromatic_competitors += 1
            else:
                nonmonochromatic_monomials += 1
            value = sum(valuation[x] for x in coords)
            margin = target_rates[c0] - value
            checked_inequalities += 1
            margin_distribution[margin] += 1
            if margin < 1:
                violations.append(
                    {
                        "coloring": list(coloring),
                        "pm_index": pm_index,
                        "coords": list(coords),
                        "value": value,
                        "target_rate": target_rates[c0],
                        "margin": margin,
                    }
                )

    assert not violations, violations[:5]
    assert min(margin_distribution) == 1

    manifest = {
        "theorem_scope": "N=8, D=3 tropical border certificate",
        "support_size": len(support),
        "support_indices": sorted(support),
        "support_decoded": [decode_coord(x) for x in sorted(support)],
        "valuation": {
            "positive_indices": sorted(positive),
            "zero_indices": sorted(zero),
            "default_on_other_supported_entries": -1,
            "positive_decoded": [decode_coord(x) for x in sorted(positive)],
            "zero_decoded": [decode_coord(x) for x in sorted(zero)],
        },
        "targets": target_details,
        "target_rates": target_rates,
        "verification": {
            "perfect_matchings": len(PMS),
            "colorings": D**N,
            "total_supported_monomials": total_supported_monomials,
            "excluded_selected_target_monomials": 3,
            "checked_inequalities": checked_inequalities,
            "monochromatic_competitors": monochromatic_competitors,
            "nonmonochromatic_monomials": nonmonochromatic_monomials,
            "minimum_margin": min(margin_distribution),
            "margin_distribution": {str(k): v for k, v in sorted(margin_distribution.items())},
            "violations": len(violations),
        },
    }
    (here / "certificate_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")

    print("EXACT TROPICAL BORDER CERTIFICATE: PASS")
    print(f"support entries: {len(support)}")
    print(f"perfect matchings: {len(PMS)}")
    print(f"colorings: {D**N}")
    print(f"target PM indices: {target_pms}")
    print(f"target valuation sums: {target_rates}")
    print(f"total supported matching monomials: {total_supported_monomials}")
    print(f"selected target monomials excluded: 3")
    print(f"checked inequalities: {checked_inequalities}")
    print(f"  monochromatic competitors: {monochromatic_competitors}")
    print(f"  nonmonochromatic monomials: {nonmonochromatic_monomials}")
    print(f"minimum strict margin: {min(margin_distribution)}")
    print(f"margin distribution: {dict(sorted(margin_distribution.items()))}")
    print(f"violations: {len(violations)}")


if __name__ == "__main__":
    main()
