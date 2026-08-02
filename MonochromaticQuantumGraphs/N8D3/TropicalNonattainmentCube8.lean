import MonochromaticQuantumGraphs.N8D3.TropicalBorderWeights8

/-!
# The exact six-matching Boolean cube for the N8D3 support

The canonical support has a distinguished 64-coloring cube on which precisely
six of the existing 105 perfect matchings survive.  This module defines that
cube using the repository's existing matching table and proves the reduction
from the official recursive perfect-matching sum.  No second matching table is
introduced.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

/-- The `i`th bit, read most-significant first, of a six-bit cube index. -/
def tropicalCubeBit8 (x : Fin 64) (i : Fin 6) : Nat :=
  (x.val / 2 ^ (5 - i.val)) % 2

/-- The 64 colorings on which exactly six supported matchings remain.

The free vertex-color pairs are
`(0,2),(0,1),(0,2),(1,2),(0,1),(1,2)` on vertices
`0,1,2,4,5,6`; vertices `3,7` are fixed to `2,1` respectively. -/
def tropicalCubeColoring8 (x : Fin 64) : Fin 8 → Fin 3 :=
  ![
    if tropicalCubeBit8 x 0 = 0 then 0 else 2,
    if tropicalCubeBit8 x 1 = 0 then 0 else 1,
    if tropicalCubeBit8 x 2 = 0 then 0 else 2,
    2,
    if tropicalCubeBit8 x 3 = 0 then 1 else 2,
    if tropicalCubeBit8 x 4 = 0 then 0 else 1,
    if tropicalCubeBit8 x 5 = 0 then 1 else 2,
    1
  ]

/-- Indices of the six surviving matchings in the audited 105-matching table. -/
def tropicalCubeMatching8 : Fin 6 → Fin 105 := ![0, 1, 6, 21, 24, 40]

/-- The same six matching indices as a finite subset of the existing table. -/
def tropicalCubeMatchingSet8 : Finset (Fin 105) := {0, 1, 6, 21, 24, 40}

/-- The six indices are distinct and the table function enumerates exactly the
declared finite set. -/
theorem tropicalCubeMatching8_injective : Function.Injective tropicalCubeMatching8 := by
  intro i j
  revert i j
  decide

theorem tropicalCubeMatching8_mem_iff (m : Fin 105) :
    m ∈ tropicalCubeMatchingSet8 ↔ ∃ j : Fin 6, tropicalCubeMatching8 j = m := by
  revert m
  decide

/-- Every cube coloring is nonmonochromatic, so its GHZ coordinate is zero. -/
theorem tropicalCubeColoring8_not_allEqual (x : Fin 64) :
    ¬ allEqual (tropicalCubeColoring8 x) := by
  revert x
  decide

/-- All six declared matching monomials are supported at every cube point. -/
theorem tropicalCubeMatchingSupported8 (x : Fin 64) (j : Fin 6) :
    tropicalMatchingSupported8 (tropicalCubeColoring8 x)
      (tropicalCubeMatching8 j) = true := by
  revert x j
  decide

/- No seventh matching from the audited table is supported on the cube. -/
set_option maxHeartbeats 1000000 in
set_option maxRecDepth 10000 in
theorem tropicalCubeMatchingUnsupported8
    (x : Fin 64) (m : Fin 105) (hm : m ∉ tropicalCubeMatchingSet8) :
    tropicalMatchingSupported8 (tropicalCubeColoring8 x) m = false := by
  fin_cases m <;>
  simp [tropicalCubeMatchingSet8] at hm <;>
  revert x <;>
  decide

/-- A false four-factor support conjunction exposes an unsupported factor. -/
theorem tropicalMatchingSupported8_eq_false_iff
    (q : Fin 8 → Fin 3) (m : Fin 105) :
    tropicalMatchingSupported8 q m = false ↔
      ∃ k : Fin 4,
        tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m k) = false := by
  constructor
  · intro h
    by_cases h0 :
        tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 0) = false
    · exact ⟨0, h0⟩
    by_cases h1 :
        tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 1) = false
    · exact ⟨1, h1⟩
    by_cases h2 :
        tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 2) = false
    · exact ⟨2, h2⟩
    by_cases h3 :
        tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 3) = false
    · exact ⟨3, h3⟩
    have ht0 :
        tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 0) = true := by
      cases heq : tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 0) <;>
        simp_all
    have ht1 :
        tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 1) = true := by
      cases heq : tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 1) <;>
        simp_all
    have ht2 :
        tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 2) = true := by
      cases heq : tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 2) <;>
        simp_all
    have ht3 :
        tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 3) = true := by
      cases heq : tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 3) <;>
        simp_all
    simp [tropicalMatchingSupported8, ht0, ht1, ht2, ht3] at h
  · rintro ⟨k, hk⟩
    fin_cases k <;> simp_all [tropicalMatchingSupported8]

/-- Outside the six selected columns, exact-support weights make the matching
monomial identically zero. -/
theorem pmTerm8_tropicalCube_eq_zero_of_not_mem
    {W : WeightsN 8 3 ℂ} (hW : TropicalExactSupport8 W)
    (x : Fin 64) (m : Fin 105) (hm : m ∉ tropicalCubeMatchingSet8) :
    pmTerm8 W (tropicalCubeColoring8 x) m = 0 := by
  have hs := tropicalCubeMatchingUnsupported8 x m hm
  obtain ⟨k, hk⟩ :=
    (tropicalMatchingSupported8_eq_false_iff
      (tropicalCubeColoring8 x) m).1 hs
  let edge := matchingEdges8 m k
  let officialEdge := mkEdge edge.1 edge.2
    (tropicalCubeColoring8 x edge.1) (tropicalCubeColoring8 x edge.2)
  have hedge : tropicalEdgeSupported8 officialEdge = false := by
    change tropicalEdgeSupported8
      (mkEdge (matchingEdges8 m k).1 (matchingEdges8 m k).2
        (tropicalCubeColoring8 x (matchingEdges8 m k).1)
        (tropicalCubeColoring8 x (matchingEdges8 m k).2)) = false
    rw [tropicalEdgeSupported8_mkEdge_of_lt (matchingEdges8_lt m k)]
    simpa [tropicalSupportedEntry8, tropicalMatchingCoordinate8] using hk
  have hfactor : W officialEdge = 0 := by
    by_contra hne
    have := (hW officialEdge).1 hne
    simp [hedge] at this
  unfold pmTerm8
  apply Finset.prod_eq_zero (Finset.mem_univ k)
  simpa [officialEdge, edge] using hfactor

/-- On the cube, the official recursive sum is exactly the sum of the six
surviving columns. -/
theorem pmSumN_tropicalCube_eq_sum_six
    {W : WeightsN 8 3 ℂ} (hW : TropicalExactSupport8 W) (x : Fin 64) :
    pmSumN 8 3 W (tropicalCubeColoring8 x) =
      ∑ j : Fin 6, pmTerm8 W (tropicalCubeColoring8 x)
        (tropicalCubeMatching8 j) := by
  rw [pmSumN8_eq_sum_pmTerm8]
  calc
    (∑ m : Fin 105, pmTerm8 W (tropicalCubeColoring8 x) m) =
        ∑ m ∈ tropicalCubeMatchingSet8,
          pmTerm8 W (tropicalCubeColoring8 x) m := by
      symm
      apply Finset.sum_subset (by simp [tropicalCubeMatchingSet8])
      intro m _ hm
      exact pmTerm8_tropicalCube_eq_zero_of_not_mem hW x m hm
    _ = ∑ j : Fin 6, pmTerm8 W (tropicalCubeColoring8 x)
          (tropicalCubeMatching8 j) := by
      simp [tropicalCubeMatchingSet8, tropicalCubeMatching8,
        Fin.sum_univ_succ]

/-- Every exact GHZ realization on this support would make the sum of the six
cube columns vanish at all 64 cube points. -/
theorem tropicalCube_six_sum_eq_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (x : Fin 64) :
    (∑ j : Fin 6, pmTerm8 W (tropicalCubeColoring8 x)
      (tropicalCubeMatching8 j)) = 0 := by
  rw [← pmSumN_tropicalCube_eq_sum_six hSupport]
  simpa [tropicalCubeColoring8_not_allEqual x] using
    hEq (tropicalCubeColoring8 x)

end

end MonochromaticQuantumGraphs.N8D3
