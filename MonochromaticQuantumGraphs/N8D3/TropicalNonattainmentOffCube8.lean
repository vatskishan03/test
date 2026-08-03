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

/-- The off-cube `45` factor. -/
def tropicalOffCubeC8 (W : WeightsN 8 3 ℂ) (e : Fin 2) : ℂ :=
  W (mkEdge 4 5 0 (tropicalCubeColor01_8 e))

/-- The off-cube `46` vector whose parallelism supplies Component A's fifth
character. -/
def tropicalOffCubeV8 (W : WeightsN 8 3 ℂ) (f : Fin 2) : ℂ :=
  W (mkEdge 4 6 0 (tropicalCubeColor12_8 f))

/-- The fixed off-cube `34` factor. -/
def tropicalOffCubeH8 (W : WeightsN 8 3 ℂ) : ℂ := W (mkEdge 3 4 2 0)

/-- The fixed off-cube `47` factor. -/
def tropicalOffCubeK8 (W : WeightsN 8 3 ℂ) : ℂ := W (mkEdge 4 7 0 1)

/-- The `04` factor occurring in the two additional possible columns. -/
def tropicalOffCubeO8 (W : WeightsN 8 3 ℂ) (a : Fin 2) : ℂ :=
  W (mkEdge 0 4 (tropicalCubeColor02_8 a) 0)

theorem pmTerm8_tropicalOffCube_matching0
    (W : WeightsN 8 3 ℂ) (a b c e f : Fin 2) :
    pmTerm8 W (tropicalOffCubeColoring8 a b c e f)
        (tropicalOffCubeMatching8 0) =
      tropicalCubeA8 W a b * tropicalCubeB8 W c *
        tropicalOffCubeC8 W e * tropicalCubeG8 W f := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 1 (tropicalCubeColor02_8 a) (tropicalCubeColor01_8 b)) *
      W (mkEdge 2 3 (tropicalCubeColor02_8 c) 2) *
      W (mkEdge 4 5 0 (tropicalCubeColor01_8 e)) *
      W (mkEdge 6 7 (tropicalCubeColor12_8 f) 1) = _
  rfl

theorem pmTerm8_tropicalOffCube_matching1
    (W : WeightsN 8 3 ℂ) (a b c e f : Fin 2) :
    pmTerm8 W (tropicalOffCubeColoring8 a b c e f)
        (tropicalOffCubeMatching8 1) =
      tropicalCubeA8 W a b * tropicalCubeB8 W c *
        tropicalOffCubeV8 W f * tropicalCubeL8 W e := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 1 (tropicalCubeColor02_8 a) (tropicalCubeColor01_8 b)) *
      W (mkEdge 2 3 (tropicalCubeColor02_8 c) 2) *
      W (mkEdge 4 6 0 (tropicalCubeColor12_8 f)) *
      W (mkEdge 5 7 (tropicalCubeColor01_8 e) 1) = _
  rfl

theorem pmTerm8_tropicalOffCube_matching6
    (W : WeightsN 8 3 ℂ) (a b c e f : Fin 2) :
    pmTerm8 W (tropicalOffCubeColoring8 a b c e f)
        (tropicalOffCubeMatching8 2) =
      tropicalCubeA8 W a b * tropicalCubeP8 W c e *
        tropicalOffCubeH8 W * tropicalCubeG8 W f := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 1 (tropicalCubeColor02_8 a) (tropicalCubeColor01_8 b)) *
      W (mkEdge 2 5 (tropicalCubeColor02_8 c) (tropicalCubeColor01_8 e)) *
      W (mkEdge 3 4 2 0) *
      W (mkEdge 6 7 (tropicalCubeColor12_8 f) 1) = _
  rfl

theorem pmTerm8_tropicalOffCube_matching21
    (W : WeightsN 8 3 ℂ) (a b c e f : Fin 2) :
    pmTerm8 W (tropicalOffCubeColoring8 a b c e f)
        (tropicalOffCubeMatching8 3) =
      tropicalCubeD8 W a c * tropicalCubeE8 W b e *
        tropicalOffCubeH8 W * tropicalCubeG8 W f := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 2 (tropicalCubeColor02_8 a) (tropicalCubeColor02_8 c)) *
      W (mkEdge 1 5 (tropicalCubeColor01_8 b) (tropicalCubeColor01_8 e)) *
      W (mkEdge 3 4 2 0) *
      W (mkEdge 6 7 (tropicalCubeColor12_8 f) 1) = _
  rfl

theorem pmTerm8_tropicalOffCube_matching24
    (W : WeightsN 8 3 ℂ) (a b c e f : Fin 2) :
    pmTerm8 W (tropicalOffCubeColoring8 a b c e f)
        (tropicalOffCubeMatching8 4) =
      tropicalCubeD8 W a c * tropicalCubeU8 W b f *
        tropicalOffCubeH8 W * tropicalCubeL8 W e := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 2 (tropicalCubeColor02_8 a) (tropicalCubeColor02_8 c)) *
      W (mkEdge 1 6 (tropicalCubeColor01_8 b) (tropicalCubeColor12_8 f)) *
      W (mkEdge 3 4 2 0) *
      W (mkEdge 5 7 (tropicalCubeColor01_8 e) 1) = _
  rfl

theorem pmTerm8_tropicalOffCube_matching40
    (W : WeightsN 8 3 ℂ) (a b c e f : Fin 2) :
    pmTerm8 W (tropicalOffCubeColoring8 a b c e f)
        (tropicalOffCubeMatching8 5) =
      tropicalCubeR8 W a * tropicalCubeU8 W b f *
        tropicalCubeP8 W c e * tropicalOffCubeK8 W := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 3 (tropicalCubeColor02_8 a) 2) *
      W (mkEdge 1 6 (tropicalCubeColor01_8 b) (tropicalCubeColor12_8 f)) *
      W (mkEdge 2 5 (tropicalCubeColor02_8 c) (tropicalCubeColor01_8 e)) *
      W (mkEdge 4 7 0 1) = _
  rfl

theorem pmTerm8_tropicalOffCube_matching51
    (W : WeightsN 8 3 ℂ) (a b c e f : Fin 2) :
    pmTerm8 W (tropicalOffCubeColoring8 a b c e f)
        (tropicalOffCubeMatching8 6) =
      tropicalOffCubeO8 W a * tropicalCubeE8 W b e *
        tropicalCubeB8 W c * tropicalCubeG8 W f := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 4 (tropicalCubeColor02_8 a) 0) *
      W (mkEdge 1 5 (tropicalCubeColor01_8 b) (tropicalCubeColor01_8 e)) *
      W (mkEdge 2 3 (tropicalCubeColor02_8 c) 2) *
      W (mkEdge 6 7 (tropicalCubeColor12_8 f) 1) = _
  rfl

theorem pmTerm8_tropicalOffCube_matching54
    (W : WeightsN 8 3 ℂ) (a b c e f : Fin 2) :
    pmTerm8 W (tropicalOffCubeColoring8 a b c e f)
        (tropicalOffCubeMatching8 7) =
      tropicalOffCubeO8 W a * tropicalCubeU8 W b f *
        tropicalCubeB8 W c * tropicalCubeL8 W e := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 4 (tropicalCubeColor02_8 a) 0) *
      W (mkEdge 1 6 (tropicalCubeColor01_8 b) (tropicalCubeColor12_8 f)) *
      W (mkEdge 2 3 (tropicalCubeColor02_8 c) 2) *
      W (mkEdge 5 7 (tropicalCubeColor01_8 e) 1) = _
  rfl

/-- The eight expanded monomials in matching-table order. -/
def tropicalOffCubeTerm8 (W : WeightsN 8 3 ℂ)
    (a b c e f : Fin 2) : Fin 8 → ℂ := ![
  tropicalCubeA8 W a b * tropicalCubeB8 W c *
    tropicalOffCubeC8 W e * tropicalCubeG8 W f,
  tropicalCubeA8 W a b * tropicalCubeB8 W c *
    tropicalOffCubeV8 W f * tropicalCubeL8 W e,
  tropicalCubeA8 W a b * tropicalCubeP8 W c e *
    tropicalOffCubeH8 W * tropicalCubeG8 W f,
  tropicalCubeD8 W a c * tropicalCubeE8 W b e *
    tropicalOffCubeH8 W * tropicalCubeG8 W f,
  tropicalCubeD8 W a c * tropicalCubeU8 W b f *
    tropicalOffCubeH8 W * tropicalCubeL8 W e,
  tropicalCubeR8 W a * tropicalCubeU8 W b f *
    tropicalCubeP8 W c e * tropicalOffCubeK8 W,
  tropicalOffCubeO8 W a * tropicalCubeE8 W b e *
    tropicalCubeB8 W c * tropicalCubeG8 W f,
  tropicalOffCubeO8 W a * tropicalCubeU8 W b f *
    tropicalCubeB8 W c * tropicalCubeL8 W e]

theorem pmTerm8_tropicalOffCube_matching
    (W : WeightsN 8 3 ℂ) (a b c e f : Fin 2) (j : Fin 8) :
    pmTerm8 W (tropicalOffCubeColoring8 a b c e f)
        (tropicalOffCubeMatching8 j) =
      tropicalOffCubeTerm8 W a b c e f j := by
  fin_cases j
  · exact pmTerm8_tropicalOffCube_matching0 W a b c e f
  · exact pmTerm8_tropicalOffCube_matching1 W a b c e f
  · exact pmTerm8_tropicalOffCube_matching6 W a b c e f
  · exact pmTerm8_tropicalOffCube_matching21 W a b c e f
  · exact pmTerm8_tropicalOffCube_matching24 W a b c e f
  · exact pmTerm8_tropicalOffCube_matching40 W a b c e f
  · exact pmTerm8_tropicalOffCube_matching51 W a b c e f
  · exact pmTerm8_tropicalOffCube_matching54 W a b c e f

/-- The official off-cube amplitude equation after expanding its eight
possible matching monomials. -/
theorem tropicalOffCubeEightIdentity8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (a b c e f : Fin 2) :
    tropicalCubeA8 W a b * tropicalCubeB8 W c *
        tropicalOffCubeC8 W e * tropicalCubeG8 W f +
    tropicalCubeA8 W a b * tropicalCubeB8 W c *
        tropicalOffCubeV8 W f * tropicalCubeL8 W e +
    tropicalCubeA8 W a b * tropicalCubeP8 W c e *
        tropicalOffCubeH8 W * tropicalCubeG8 W f +
    tropicalCubeD8 W a c * tropicalCubeE8 W b e *
        tropicalOffCubeH8 W * tropicalCubeG8 W f +
    tropicalCubeD8 W a c * tropicalCubeU8 W b f *
        tropicalOffCubeH8 W * tropicalCubeL8 W e +
    tropicalCubeR8 W a * tropicalCubeU8 W b f *
        tropicalCubeP8 W c e * tropicalOffCubeK8 W +
    tropicalOffCubeO8 W a * tropicalCubeE8 W b e *
        tropicalCubeB8 W c * tropicalCubeG8 W f +
    tropicalOffCubeO8 W a * tropicalCubeU8 W b f *
        tropicalCubeB8 W c * tropicalCubeL8 W e = 0 := by
  have hsum := tropicalOffCube_eight_sum_eq_zero hSupport hEq a b c e f
  simp_rw [pmTerm8_tropicalOffCube_matching] at hsum
  simp [tropicalOffCubeTerm8, Fin.sum_univ_succ] at hsum
  linear_combination hsum

/-- Wedge the off-cube identity with the `67` axis. -/
theorem tropicalOffCube_wedge_G8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (a b c e : Fin 2) :
    cubeDet2 (tropicalCubeG8 W) (tropicalOffCubeV8 W) *
        (tropicalCubeA8 W a b * tropicalCubeB8 W c *
          tropicalCubeL8 W e) +
      cubeDet2 (tropicalCubeG8 W) (tropicalCubeU8 W b) *
        (tropicalCubeD8 W a c * tropicalOffCubeH8 W *
            tropicalCubeL8 W e +
          tropicalCubeR8 W a * tropicalCubeP8 W c e *
            tropicalOffCubeK8 W +
          tropicalOffCubeO8 W a * tropicalCubeB8 W c *
            tropicalCubeL8 W e) = 0 := by
  have h0 := tropicalOffCubeEightIdentity8 hSupport hEq a b c e 0
  have h1 := tropicalOffCubeEightIdentity8 hSupport hEq a b c e 1
  dsimp [cubeDet2]
  linear_combination tropicalCubeG8 W 0 * h1 - tropicalCubeG8 W 1 * h0

/-- The five initial signed-character equations defining full Component A. -/
def TropicalComponentA8 (W : WeightsN 8 3 ℂ) : Prop :=
  cubeDet2 (tropicalCubeG8 W) (tropicalCubeU8 W 0) = 0 ∧
  cubeDet2 (tropicalCubeG8 W) (tropicalCubeU8 W 1) = 0 ∧
  cubeDet2 (tropicalCubeU8 W 0) (tropicalOffCubeV8 W) = 0 ∧
  cubeDet2 (tropicalCubeU8 W 0) (tropicalCubeV8 W 0) = 0 ∧
  cubeDet2 (tropicalCubeU8 W 0) (tropicalCubeV8 W 1) = 0

/-- Component B already has its complete two initial characters on the cube. -/
abbrev TropicalComponentB8 := TropicalCubeComponentB8

/-- The four cube Component A relations imply the fifth, off-cube relation. -/
theorem tropicalComponentA8_of_cube
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hCube : TropicalCubeComponentA8 W) :
    TropicalComponentA8 W := by
  rcases hCube with ⟨hGU0, hGU1, hUV0, hUV1⟩
  have hwedge := tropicalOffCube_wedge_G8 hSupport hEq 0 0 0 0
  have hproduct :
      cubeDet2 (tropicalCubeG8 W) (tropicalOffCubeV8 W) *
        (tropicalCubeA8 W 0 0 * tropicalCubeB8 W 0 *
          tropicalCubeL8 W 0) = 0 := by
    simpa [hGU0] using hwedge
  have hcoefficient :
      tropicalCubeA8 W 0 0 * tropicalCubeB8 W 0 *
        tropicalCubeL8 W 0 ≠ 0 :=
    mul_ne_zero
      (mul_ne_zero (tropicalCubeA8_ne_zero hSupport 0 0)
        (tropicalCubeB8_ne_zero hSupport 0))
      (tropicalCubeL8_ne_zero hSupport 0)
  have hGVoff :
      cubeDet2 (tropicalCubeG8 W) (tropicalOffCubeV8 W) = 0 :=
    (mul_eq_zero.mp hproduct).resolve_right hcoefficient
  have hUVoff := cubeDet2_trans_left
    (tropicalCubeG8_ne_zero hSupport 0) hGU0 hGVoff
  exact ⟨hGU0, hGU1, hUVoff, hUV0, hUV1⟩

/-- The frozen support-specific initial classification, now including all five
Component A characters. -/
theorem tropicalInitial_component_dichotomy8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    TropicalComponentA8 W ∨ TropicalComponentB8 W := by
  rcases tropicalCube_component_dichotomy8 hSupport hEq with hA | hB
  · exact Or.inl (tropicalComponentA8_of_cube hSupport hEq hA)
  · exact Or.inr hB

end

end MonochromaticQuantumGraphs.N8D3
