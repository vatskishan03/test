#!/usr/bin/env python3
"""Exact target-orbit census for (N,D)=(8,3).

No third-party dependencies. Enumerates all 105 perfect matchings of K8,
all 198,485 multisets of three target matchings, and quotient orbits under
adjacent vertex transpositions (which generate S8). Sorting each triple
quotients the S3 color action.
"""

from __future__ import annotations

from collections import defaultdict
from itertools import combinations_with_replacement, permutations
import json
from math import prod
from pathlib import Path

Edge = tuple[int, int]
Matching = tuple[Edge, ...]
Triple = tuple[int, int, int]


def perfect_matchings(vertices: tuple[int, ...]) -> list[Matching]:
    if not vertices:
        return [()]
    vertex = vertices[0]
    output: list[Matching] = []
    for index in range(1, len(vertices)):
        partner = vertices[index]
        rest = vertices[1:index] + vertices[index + 1 :]
        for matching in perfect_matchings(rest):
            edge = (min(vertex, partner), max(vertex, partner))
            output.append(tuple(sorted((edge,) + matching)))
    return output


def permute_matching(matching: Matching, permutation: tuple[int, ...]) -> Matching:
    return tuple(
        sorted(
            (min(permutation[left], permutation[right]),
             max(permutation[left], permutation[right]))
            for left, right in matching
        )
    )


class UnionFind:
    def __init__(self, size: int) -> None:
        self.parent = list(range(size))
        self.rank = [0] * size

    def find(self, value: int) -> int:
        while self.parent[value] != value:
            self.parent[value] = self.parent[self.parent[value]]
            value = self.parent[value]
        return value

    def union(self, left: int, right: int) -> None:
        left_root, right_root = self.find(left), self.find(right)
        if left_root == right_root:
            return
        if self.rank[left_root] < self.rank[right_root]:
            left_root, right_root = right_root, left_root
        self.parent[right_root] = left_root
        if self.rank[left_root] == self.rank[right_root]:
            self.rank[left_root] += 1


def mate_rows(matchings: list[Matching]) -> list[tuple[int, ...]]:
    rows: list[tuple[int, ...]] = []
    for matching in matchings:
        mate = [-1] * 8
        for left, right in matching:
            mate[left] = right
            mate[right] = left
        assert all(value >= 0 for value in mate)
        rows.append(tuple(mate))
    return rows


def local_plan_count(
    target: Triple, vertex: int, mates: list[tuple[int, ...]]
) -> int:
    neighbors = [neighbor for neighbor in range(8) if neighbor != vertex]
    target_mates = [mates[target[color]][vertex] for color in range(3)]
    count = 0
    for plan in permutations(neighbors, 3):
        compatible = all(
            plan[witness_color] != target_mates[target_color]
            or witness_color == target_color
            for target_color in range(3)
            for witness_color in range(3)
        )
        count += int(compatible)
    return count


def pair_cycle_type(first: Matching, second: Matching) -> tuple[int, ...]:
    adjacency: dict[int, list[int]] = defaultdict(list)
    for matching in (first, second):
        for left, right in matching:
            adjacency[left].append(right)
            adjacency[right].append(left)
    seen: set[int] = set()
    lengths: list[int] = []
    for start in range(8):
        if start in seen:
            continue
        stack = [start]
        component: list[int] = []
        while stack:
            vertex = stack.pop()
            if vertex in seen:
                continue
            seen.add(vertex)
            component.append(vertex)
            stack.extend(
                neighbor for neighbor in adjacency[vertex] if neighbor not in seen
            )
        lengths.append(len(component))
    return tuple(sorted(lengths))


def main(output: Path) -> None:
    matchings = perfect_matchings(tuple(range(8)))
    assert len(matchings) == 105
    matching_index = {matching: index for index, matching in enumerate(matchings)}
    mates = mate_rows(matchings)

    generators: list[tuple[int, ...]] = []
    for position in range(7):
        permutation = list(range(8))
        permutation[position], permutation[position + 1] = (
            permutation[position + 1],
            permutation[position],
        )
        generators.append(tuple(permutation))

    actions = [
        [matching_index[permute_matching(matching, permutation)] for matching in matchings]
        for permutation in generators
    ]

    triples = list(combinations_with_replacement(range(105), 3))
    assert len(triples) == 198_485
    triple_index = {triple: index for index, triple in enumerate(triples)}
    union_find = UnionFind(len(triples))
    for triple_number, triple in enumerate(triples):
        for action in actions:
            image = tuple(sorted(action[matching] for matching in triple))
            union_find.union(triple_number, triple_index[image])

    orbit_members: dict[int, list[Triple]] = defaultdict(list)
    for index, triple in enumerate(triples):
        orbit_members[union_find.find(index)].append(triple)

    representatives = sorted(
        (min(members), len(members)) for members in orbit_members.values()
    )
    assert len(representatives) == 31
    assert sum(size for _, size in representatives) == len(triples)

    records = []
    for representative, orbit_size in representatives:
        plan_counts = [
            local_plan_count(representative, vertex, mates) for vertex in range(8)
        ]
        assert all(count > 0 for count in plan_counts)
        selected = [matchings[index] for index in representative]
        records.append(
            {
                "representative": representative,
                "orbit_size": orbit_size,
                "matchings": selected,
                "pair_cycle_types": [
                    pair_cycle_type(selected[0], selected[1]),
                    pair_cycle_type(selected[0], selected[2]),
                    pair_cycle_type(selected[1], selected[2]),
                ],
                "local_plan_counts": plan_counts,
                "plan_product": prod(plan_counts),
            }
        )

    payload = {
        "matching_count": 105,
        "sorted_target_triple_count": 198_485,
        "orbit_count": 31,
        "all_orbits_locally_axis_feasible": True,
        "orbits": records,
    }
    output.write_text(json.dumps(payload, indent=2) + "\n")


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--output", type=Path, default=Path("n8d3-target-orbits.json")
    )
    arguments = parser.parse_args()
    main(arguments.output)
