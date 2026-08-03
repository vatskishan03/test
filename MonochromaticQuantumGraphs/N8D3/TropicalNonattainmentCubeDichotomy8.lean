import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentCube8
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentCubeDichotomyAlgebra8

/-!
# Support-specific six-matching cube dichotomy

This module connects the official six surviving perfect-matching monomials on
the canonical Boolean cube to the abstract six-term algebraic identity.  All
matching indices come from `matchingEdges8`; no second matching table is
introduced.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

/-- The two colors `0,2`, used on cube vertices `0` and `2`. -/
def tropicalCubeColor02_8 : Fin 2 → Fin 3 := ![0, 2]

/-- The two colors `0,1`, used on cube vertices `1` and `5`. -/
def tropicalCubeColor01_8 : Fin 2 → Fin 3 := ![0, 1]

/-- The two colors `1,2`, used on cube vertices `4` and `6`. -/
def tropicalCubeColor12_8 : Fin 2 → Fin 3 := ![1, 2]

/-- The cube coloring written directly in terms of its six Boolean axes. -/
def tropicalCubeColoringBits8
    (a b c d e f : Fin 2) : Fin 8 → Fin 3 :=
  ![tropicalCubeColor02_8 a, tropicalCubeColor01_8 b,
    tropicalCubeColor02_8 c, 2, tropicalCubeColor12_8 d,
    tropicalCubeColor01_8 e, tropicalCubeColor12_8 f, 1]

/-- Big-endian packing of the six Boolean axes into the existing cube index. -/
def tropicalCubeIndex8 (a b c d e f : Fin 2) : Fin 64 :=
  ⟨32 * a.val + 16 * b.val + 8 * c.val + 4 * d.val + 2 * e.val + f.val,
    by omega⟩

/-- The direct and packed descriptions of the 64 cube colorings agree. -/
theorem tropicalCubeColoring8_index
    (a b c d e f : Fin 2) :
    tropicalCubeColoring8 (tropicalCubeIndex8 a b c d e f) =
      tropicalCubeColoringBits8 a b c d e f := by
  revert a b c d e f
  decide

/-- The `01` factor shared by the first three surviving matchings. -/
def tropicalCubeA8 (W : WeightsN 8 3 ℂ) (a b : Fin 2) : ℂ :=
  W (mkEdge 0 1 (tropicalCubeColor02_8 a) (tropicalCubeColor01_8 b))

/-- The `23` factor shared by the first two surviving matchings. -/
def tropicalCubeB8 (W : WeightsN 8 3 ℂ) (c : Fin 2) : ℂ :=
  W (mkEdge 2 3 (tropicalCubeColor02_8 c) 2)

/-- The `45` factor in matching zero. -/
def tropicalCubeC8 (W : WeightsN 8 3 ℂ) (d e : Fin 2) : ℂ :=
  W (mkEdge 4 5 (tropicalCubeColor12_8 d) (tropicalCubeColor01_8 e))

/-- The `67` factor shared by matchings zero, six, and twenty-one. -/
def tropicalCubeG8 (W : WeightsN 8 3 ℂ) (f : Fin 2) : ℂ :=
  W (mkEdge 6 7 (tropicalCubeColor12_8 f) 1)

/-- The `46` factor in matching one. -/
def tropicalCubeV8 (W : WeightsN 8 3 ℂ) (d f : Fin 2) : ℂ :=
  W (mkEdge 4 6 (tropicalCubeColor12_8 d) (tropicalCubeColor12_8 f))

/-- The `57` factor shared by matchings one and twenty-four. -/
def tropicalCubeL8 (W : WeightsN 8 3 ℂ) (e : Fin 2) : ℂ :=
  W (mkEdge 5 7 (tropicalCubeColor01_8 e) 1)

/-- The `25` factor shared by matchings six and forty. -/
def tropicalCubeP8 (W : WeightsN 8 3 ℂ) (c e : Fin 2) : ℂ :=
  W (mkEdge 2 5 (tropicalCubeColor02_8 c) (tropicalCubeColor01_8 e))

/-- The `34` factor shared by matchings six, twenty-one, and twenty-four. -/
def tropicalCubeH8 (W : WeightsN 8 3 ℂ) (d : Fin 2) : ℂ :=
  W (mkEdge 3 4 2 (tropicalCubeColor12_8 d))

/-- The `02` factor shared by matchings twenty-one and twenty-four. -/
def tropicalCubeD8 (W : WeightsN 8 3 ℂ) (a c : Fin 2) : ℂ :=
  W (mkEdge 0 2 (tropicalCubeColor02_8 a) (tropicalCubeColor02_8 c))

/-- The `15` factor in matching twenty-one. -/
def tropicalCubeE8 (W : WeightsN 8 3 ℂ) (b e : Fin 2) : ℂ :=
  W (mkEdge 1 5 (tropicalCubeColor01_8 b) (tropicalCubeColor01_8 e))

/-- The `16` factor shared by matchings twenty-four and forty. -/
def tropicalCubeU8 (W : WeightsN 8 3 ℂ) (b f : Fin 2) : ℂ :=
  W (mkEdge 1 6 (tropicalCubeColor01_8 b) (tropicalCubeColor12_8 f))

/-- The `03` factor in matching forty. -/
def tropicalCubeR8 (W : WeightsN 8 3 ℂ) (a : Fin 2) : ℂ :=
  W (mkEdge 0 3 (tropicalCubeColor02_8 a) 2)

/-- The `47` factor in matching forty. -/
def tropicalCubeK8 (W : WeightsN 8 3 ℂ) (d : Fin 2) : ℂ :=
  W (mkEdge 4 7 (tropicalCubeColor12_8 d) 1)

/-- Bounded first-column expansion against the audited matching table. -/
theorem pmTerm8_tropicalCubeBits_matching0
    (W : WeightsN 8 3 ℂ) (a b c d e f : Fin 2) :
    pmTerm8 W (tropicalCubeColoringBits8 a b c d e f)
        (tropicalCubeMatching8 0) =
      tropicalCubeA8 W a b * tropicalCubeB8 W c *
        tropicalCubeC8 W d e * tropicalCubeG8 W f := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 1 (tropicalCubeColor02_8 a) (tropicalCubeColor01_8 b)) *
      W (mkEdge 2 3 (tropicalCubeColor02_8 c) 2) *
      W (mkEdge 4 5 (tropicalCubeColor12_8 d) (tropicalCubeColor01_8 e)) *
      W (mkEdge 6 7 (tropicalCubeColor12_8 f) 1) = _
  rfl

/-- Expansion of matching one against the audited matching table. -/
theorem pmTerm8_tropicalCubeBits_matching1
    (W : WeightsN 8 3 ℂ) (a b c d e f : Fin 2) :
    pmTerm8 W (tropicalCubeColoringBits8 a b c d e f)
        (tropicalCubeMatching8 1) =
      tropicalCubeA8 W a b * tropicalCubeB8 W c *
        tropicalCubeV8 W d f * tropicalCubeL8 W e := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 1 (tropicalCubeColor02_8 a) (tropicalCubeColor01_8 b)) *
      W (mkEdge 2 3 (tropicalCubeColor02_8 c) 2) *
      W (mkEdge 4 6 (tropicalCubeColor12_8 d) (tropicalCubeColor12_8 f)) *
      W (mkEdge 5 7 (tropicalCubeColor01_8 e) 1) = _
  rfl

/-- Expansion of matching six against the audited matching table. -/
theorem pmTerm8_tropicalCubeBits_matching6
    (W : WeightsN 8 3 ℂ) (a b c d e f : Fin 2) :
    pmTerm8 W (tropicalCubeColoringBits8 a b c d e f)
        (tropicalCubeMatching8 2) =
      tropicalCubeA8 W a b * tropicalCubeP8 W c e *
        tropicalCubeH8 W d * tropicalCubeG8 W f := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 1 (tropicalCubeColor02_8 a) (tropicalCubeColor01_8 b)) *
      W (mkEdge 2 5 (tropicalCubeColor02_8 c) (tropicalCubeColor01_8 e)) *
      W (mkEdge 3 4 2 (tropicalCubeColor12_8 d)) *
      W (mkEdge 6 7 (tropicalCubeColor12_8 f) 1) = _
  rfl

/-- Expansion of matching twenty-one against the audited matching table. -/
theorem pmTerm8_tropicalCubeBits_matching21
    (W : WeightsN 8 3 ℂ) (a b c d e f : Fin 2) :
    pmTerm8 W (tropicalCubeColoringBits8 a b c d e f)
        (tropicalCubeMatching8 3) =
      tropicalCubeD8 W a c * tropicalCubeE8 W b e *
        tropicalCubeH8 W d * tropicalCubeG8 W f := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 2 (tropicalCubeColor02_8 a) (tropicalCubeColor02_8 c)) *
      W (mkEdge 1 5 (tropicalCubeColor01_8 b) (tropicalCubeColor01_8 e)) *
      W (mkEdge 3 4 2 (tropicalCubeColor12_8 d)) *
      W (mkEdge 6 7 (tropicalCubeColor12_8 f) 1) = _
  rfl

/-- Expansion of matching twenty-four against the audited matching table. -/
theorem pmTerm8_tropicalCubeBits_matching24
    (W : WeightsN 8 3 ℂ) (a b c d e f : Fin 2) :
    pmTerm8 W (tropicalCubeColoringBits8 a b c d e f)
        (tropicalCubeMatching8 4) =
      tropicalCubeD8 W a c * tropicalCubeU8 W b f *
        tropicalCubeH8 W d * tropicalCubeL8 W e := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 2 (tropicalCubeColor02_8 a) (tropicalCubeColor02_8 c)) *
      W (mkEdge 1 6 (tropicalCubeColor01_8 b) (tropicalCubeColor12_8 f)) *
      W (mkEdge 3 4 2 (tropicalCubeColor12_8 d)) *
      W (mkEdge 5 7 (tropicalCubeColor01_8 e) 1) = _
  rfl

/-- Expansion of matching forty against the audited matching table. -/
theorem pmTerm8_tropicalCubeBits_matching40
    (W : WeightsN 8 3 ℂ) (a b c d e f : Fin 2) :
    pmTerm8 W (tropicalCubeColoringBits8 a b c d e f)
        (tropicalCubeMatching8 5) =
      tropicalCubeR8 W a * tropicalCubeU8 W b f *
        tropicalCubeP8 W c e * tropicalCubeK8 W d := by
  simp only [pmTerm8, Fin.prod_univ_four]
  change
    W (mkEdge 0 3 (tropicalCubeColor02_8 a) 2) *
      W (mkEdge 1 6 (tropicalCubeColor01_8 b) (tropicalCubeColor12_8 f)) *
      W (mkEdge 2 5 (tropicalCubeColor02_8 c) (tropicalCubeColor01_8 e)) *
      W (mkEdge 4 7 (tropicalCubeColor12_8 d) 1) = _
  rfl

/-- The official `EqSystemN 8 3` equations on the 64 cube colorings are
exactly the abstract six-term identity. -/
theorem tropicalCubeSixIdentity8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    CubeSixIdentity
      (tropicalCubeA8 W) (tropicalCubeD8 W) (tropicalCubeC8 W)
      (tropicalCubeE8 W) (tropicalCubeP8 W) (tropicalCubeU8 W)
      (tropicalCubeV8 W) (tropicalCubeB8 W) (tropicalCubeG8 W)
      (tropicalCubeH8 W) (tropicalCubeK8 W) (tropicalCubeL8 W)
      (tropicalCubeR8 W) := by
  intro a b c d e f
  have hsum := tropicalCube_six_sum_eq_zero hSupport hEq
    (tropicalCubeIndex8 a b c d e f)
  rw [tropicalCubeColoring8_index] at hsum
  simp only [Fin.sum_univ_succ, Finset.univ_eq_empty,
    Finset.sum_empty] at hsum
  have hidx1 : Fin.succ (0 : Fin 5) = (1 : Fin 6) := by decide
  have hidx2 : Fin.succ (Fin.succ (0 : Fin 4)) = (2 : Fin 6) := by decide
  have hidx3 :
      Fin.succ (Fin.succ (Fin.succ (0 : Fin 3))) = (3 : Fin 6) := by
    decide
  have hidx4 :
      Fin.succ (Fin.succ (Fin.succ (Fin.succ (0 : Fin 2)))) =
        (4 : Fin 6) := by
    decide
  have hidx5 :
      Fin.succ (Fin.succ (Fin.succ (Fin.succ (Fin.succ (0 : Fin 1))))) =
        (5 : Fin 6) := by
    decide
  rw [hidx1, hidx2, hidx3, hidx4, hidx5] at hsum
  rw [pmTerm8_tropicalCubeBits_matching0,
    pmTerm8_tropicalCubeBits_matching1,
    pmTerm8_tropicalCubeBits_matching6,
    pmTerm8_tropicalCubeBits_matching21,
    pmTerm8_tropicalCubeBits_matching24,
    pmTerm8_tropicalCubeBits_matching40] at hsum
  linear_combination hsum

/-- Every `01` factor used as a coefficient in the cube dichotomy is nonzero
under exact support. -/
theorem tropicalCubeA8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (a b : Fin 2) : tropicalCubeA8 W a b ≠ 0 := by
  apply (hSupport _).2
  rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
  revert a b
  decide

/-- Every `23` coefficient in the cube dichotomy is nonzero. -/
theorem tropicalCubeB8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (c : Fin 2) : tropicalCubeB8 W c ≠ 0 := by
  apply (hSupport _).2
  rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
  revert c
  decide

/-- Both `57` entries on the cube are nonzero. -/
theorem tropicalCubeL8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (e : Fin 2) : tropicalCubeL8 W e ≠ 0 := by
  apply (hSupport _).2
  rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
  revert e
  decide

/-- Both `03` coefficients on the cube are nonzero. -/
theorem tropicalCubeR8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (a : Fin 2) : tropicalCubeR8 W a ≠ 0 := by
  apply (hSupport _).2
  rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
  revert a
  decide

/-- Both `47` coefficients on the cube are nonzero. -/
theorem tropicalCubeK8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (d : Fin 2) : tropicalCubeK8 W d ≠ 0 := by
  apply (hSupport _).2
  rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
  revert d
  decide

/-- Both entries of the `67` reference axis are nonzero. -/
theorem tropicalCubeG8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (f : Fin 2) : tropicalCubeG8 W f ≠ 0 := by
  apply (hSupport _).2
  rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
  revert f
  decide

/-- The four determinant relations defining the cube part of Component A.
The separate off-cube argument supplies the fifth relation. -/
def TropicalCubeComponentA8 (W : WeightsN 8 3 ℂ) : Prop :=
  cubeDet2 (tropicalCubeG8 W) (tropicalCubeU8 W 0) = 0 ∧
  cubeDet2 (tropicalCubeG8 W) (tropicalCubeU8 W 1) = 0 ∧
  cubeDet2 (tropicalCubeU8 W 0) (tropicalCubeV8 W 0) = 0 ∧
  cubeDet2 (tropicalCubeU8 W 0) (tropicalCubeV8 W 1) = 0

/-- The two determinant relations defining Component B. -/
def TropicalCubeComponentB8 (W : WeightsN 8 3 ℂ) : Prop :=
  cubeDet2 (tropicalCubeL8 W) (tropicalCubeP8 W 0) = 0 ∧
  cubeDet2 (tropicalCubeL8 W) (tropicalCubeP8 W 1) = 0

/-- Every exact GHZ realization on the canonical support lies in the frozen
Component A/Component B split. -/
theorem tropicalCube_component_dichotomy8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    TropicalCubeComponentA8 W ∨ TropicalCubeComponentB8 W := by
  have hSix := tropicalCubeSixIdentity8 hSupport hEq
  have hDichotomy := cubeSixIdentity_component_dichotomy hSix
    (tropicalCubeA8_ne_zero hSupport)
    (tropicalCubeB8_ne_zero hSupport)
    (tropicalCubeL8_ne_zero hSupport)
    (tropicalCubeR8_ne_zero hSupport)
    (tropicalCubeK8_ne_zero hSupport)
  rcases hDichotomy with ⟨hGU, hGV⟩ | hLP
  · left
    refine ⟨hGU 0, hGU 1, ?_, ?_⟩
    · exact cubeDet2_trans_left (tropicalCubeG8_ne_zero hSupport 0)
        (hGU 0) (hGV 0)
    · exact cubeDet2_trans_left (tropicalCubeG8_ne_zero hSupport 0)
        (hGU 0) (hGV 1)
  · right
    exact ⟨hLP 0, hLP 1⟩

end

end MonochromaticQuantumGraphs.N8D3
