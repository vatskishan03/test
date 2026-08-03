import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentCubeDichotomy8

/-!
# The Component A off-cube slice

The fifth initial Component A character comes from the slice obtained by
fixing vertex four to color zero while retaining the other five relevant cube
axes.  At most eight columns of the existing 105-matching table survive on
this slice.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

/-- The five-axis coloring slice with vertex four fixed to the off-cube color
zero. -/
def tropicalOffCubeColoring8
    (a b c e f : Fin 2) : Fin 8 → Fin 3 :=
  ![tropicalCubeColor02_8 a, tropicalCubeColor01_8 b,
    tropicalCubeColor02_8 c, 2, 0, tropicalCubeColor01_8 e,
    tropicalCubeColor12_8 f, 1]

/-- The eight possible surviving columns on the off-cube slice.  Depending on
the coloring, columns `51` and `54` may themselves vanish. -/
def tropicalOffCubeMatching8 : Fin 8 → Fin 105 :=
  ![0, 1, 6, 21, 24, 40, 51, 54]

/-- The same eight possible columns as a finite subset of the existing table. -/
def tropicalOffCubeMatchingSet8 : Finset (Fin 105) :=
  {0, 1, 6, 21, 24, 40, 51, 54}

theorem tropicalOffCubeMatching8_injective :
    Function.Injective tropicalOffCubeMatching8 := by
  intro i j
  revert i j
  decide

theorem tropicalOffCubeMatching8_mem_iff (m : Fin 105) :
    m ∈ tropicalOffCubeMatchingSet8 ↔
      ∃ j : Fin 8, tropicalOffCubeMatching8 j = m := by
  revert m
  decide

/-- Every coloring on this slice is nonmonochromatic. -/
theorem tropicalOffCubeColoring8_not_allEqual (a b c e f : Fin 2) :
    ¬ allEqual (tropicalOffCubeColoring8 a b c e f) := by
  revert a b c e f
  decide

/-- Bounded regression: table column two is absent throughout the slice. -/
theorem tropicalOffCubeMatching2_unsupported8 (a b c e f : Fin 2) :
    tropicalMatchingSupported8 (tropicalOffCubeColoring8 a b c e f) 2 =
      false := by
  revert a b c e f
  decide

/- No column outside the declared eight can survive on the slice. -/
set_option maxHeartbeats 1000000 in
set_option maxRecDepth 10000 in
theorem tropicalOffCubeMatchingUnsupported8
    (a b c e f : Fin 2) (m : Fin 105)
    (hm : m ∉ tropicalOffCubeMatchingSet8) :
    tropicalMatchingSupported8 (tropicalOffCubeColoring8 a b c e f) m =
      false := by
  fin_cases m <;>
  simp [tropicalOffCubeMatchingSet8] at hm <;>
  revert a b c e f <;>
  decide

/-- Exact-support weights kill a matching monomial whenever its certificate
support conjunction is false. -/
theorem pmTerm8_eq_zero_of_tropicalMatchingUnsupported8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (q : Fin 8 → Fin 3) (m : Fin 105)
    (hs : tropicalMatchingSupported8 q m = false) :
    pmTerm8 W q m = 0 := by
  obtain ⟨k, hk⟩ :=
    (tropicalMatchingSupported8_eq_false_iff q m).1 hs
  let edge := matchingEdges8 m k
  let officialEdge := mkEdge edge.1 edge.2 (q edge.1) (q edge.2)
  have hedge : tropicalEdgeSupported8 officialEdge = false := by
    change tropicalEdgeSupported8
      (mkEdge (matchingEdges8 m k).1 (matchingEdges8 m k).2
        (q (matchingEdges8 m k).1) (q (matchingEdges8 m k).2)) = false
    rw [tropicalEdgeSupported8_mkEdge_of_lt (matchingEdges8_lt m k)]
    simpa [tropicalSupportedEntry8, tropicalMatchingCoordinate8] using hk
  have hfactor : W officialEdge = 0 := by
    by_contra hne
    have := (hSupport officialEdge).1 hne
    simp [hedge] at this
  unfold pmTerm8
  apply Finset.prod_eq_zero (Finset.mem_univ k)
  simpa [officialEdge, edge] using hfactor

/-- On the off-cube slice the official recursive sum is exactly the sum of the
eight possible surviving columns. -/
theorem pmSumN_tropicalOffCube_eq_sum_eight
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (a b c e f : Fin 2) :
    pmSumN 8 3 W (tropicalOffCubeColoring8 a b c e f) =
      ∑ j : Fin 8,
        pmTerm8 W (tropicalOffCubeColoring8 a b c e f)
          (tropicalOffCubeMatching8 j) := by
  rw [pmSumN8_eq_sum_pmTerm8]
  calc
    (∑ m : Fin 105, pmTerm8 W (tropicalOffCubeColoring8 a b c e f) m) =
        ∑ m ∈ tropicalOffCubeMatchingSet8,
          pmTerm8 W (tropicalOffCubeColoring8 a b c e f) m := by
      symm
      apply Finset.sum_subset (by simp [tropicalOffCubeMatchingSet8])
      intro m _ hm
      apply pmTerm8_eq_zero_of_tropicalMatchingUnsupported8 hSupport
      exact tropicalOffCubeMatchingUnsupported8 a b c e f m hm
    _ = ∑ j : Fin 8,
          pmTerm8 W (tropicalOffCubeColoring8 a b c e f)
            (tropicalOffCubeMatching8 j) := by
      simp [tropicalOffCubeMatchingSet8, tropicalOffCubeMatching8,
        Fin.sum_univ_succ]

/-- Every exact GHZ realization makes the eight-column off-cube sum vanish. -/
theorem tropicalOffCube_eight_sum_eq_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (a b c e f : Fin 2) :
    (∑ j : Fin 8,
      pmTerm8 W (tropicalOffCubeColoring8 a b c e f)
        (tropicalOffCubeMatching8 j)) = 0 := by
  rw [← pmSumN_tropicalOffCube_eq_sum_eight hSupport]
  simpa [tropicalOffCubeColoring8_not_allEqual a b c e f] using
    hEq (tropicalOffCubeColoring8 a b c e f)

end

end MonochromaticQuantumGraphs.N8D3
