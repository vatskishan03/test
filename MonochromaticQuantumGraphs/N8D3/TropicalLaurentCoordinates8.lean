import MonochromaticQuantumGraphs.LaurentCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentOffCube8

/-!
# Support-local Laurent coordinates for the canonical N8D3 support

This file is the transparent boundary between the canonical certificate's
`Fin 144` coordinate order and the official `WeightsN 8 3 ℂ` coordinates.
The local order is the increasing order of the 252-bit support mask.  The
decoder below is inverse to the bundle's global coordinate convention
`9 * edgeIndex + 3 * leftColor + rightColor`.

The final tables are precisely the five Component A and two Component B
signed characters used by the exact lattice replay.  Their semantic lemmas
are derived from the already-proved determinant components, rather than
being assumed as certificate input.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000

/-- The canonical bundle's support-local to global-coordinate map.  It is the
increasing enumeration of exactly the 144 set bits in `tropicalSupportMask8`.
-/
def tropicalSupportGlobalCoordinate8 : Fin 144 → Fin 252 :=
![
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
  18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 39, 40, 41, 49, 62, 67,
  78, 79, 80, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
  101, 102, 103, 104, 105, 106, 107, 108, 117, 118, 119, 120, 121,
  122, 123, 124, 125, 129, 130, 131, 135, 136, 137, 138, 139, 140,
  141, 142, 143, 144, 155, 158, 161, 162, 163, 164, 165, 166, 167,
  168, 169, 170, 171, 172, 173, 180, 183, 186, 193, 198, 199, 200,
  201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213,
  214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 233, 234,
  235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247,
  248, 249, 250, 251
]

/-- Lexicographic inverse table for `tropicalEdgeIndex8` on physical edges. -/
def tropicalPhysicalEdgeOfIndex8 : Fin 28 → Fin 8 × Fin 8 :=
![
  (0, 1), (0, 2), (0, 3), (0, 4), (0, 5), (0, 6), (0, 7),
  (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7),
  (2, 3), (2, 4), (2, 5), (2, 6), (2, 7),
  (3, 4), (3, 5), (3, 6), (3, 7),
  (4, 5), (4, 6), (4, 7),
  (5, 6), (5, 7),
  (6, 7)
]

/-- Decode a global coordinate into the corresponding official edge record. -/
def tropicalEdgeOfGlobalCoordinate8 (x : Fin 252) : EdgeN 8 3 :=
  let edgeIndex : Fin 28 := ⟨x.val / 9, by omega⟩
  let leftColor : Fin 3 := ⟨(x.val % 9) / 3, by omega⟩
  let rightColor : Fin 3 := ⟨x.val % 3, by omega⟩
  let edge := tropicalPhysicalEdgeOfIndex8 edgeIndex
  mkEdge edge.1 edge.2 leftColor rightColor

/-- Decoding and then re-encoding a global coordinate is the identity. -/
theorem tropicalCoordinate8_edgeOfGlobalCoordinate8 (x : Fin 252) :
    let e := tropicalEdgeOfGlobalCoordinate8 x
    tropicalCoordinate8 e.u e.v e.i e.j = x := by
  revert x
  decide

/-- The decoder is also a left inverse on every canonically ordered edge. -/
theorem tropicalEdgeOfGlobalCoordinate8_coordinate8
    {u v : Fin 8} (huv : u < v) (a b : Fin 3) :
    tropicalEdgeOfGlobalCoordinate8 (tropicalCoordinate8 u v a b) =
      mkEdge u v a b := by
  revert u v a b
  decide

/-- Support lookup commutes with the global-coordinate decoder. -/
theorem tropicalEdgeSupported8_edgeOfGlobalCoordinate8 (x : Fin 252) :
    tropicalEdgeSupported8 (tropicalEdgeOfGlobalCoordinate8 x) =
      tropicalSupportCoord8 x := by
  revert x
  decide

/-- Every entry in the explicit local table is a declared support coordinate. -/
theorem tropicalSupportGlobalCoordinate8_supported (i : Fin 144) :
    tropicalSupportCoord8 (tropicalSupportGlobalCoordinate8 i) = true := by
  revert i
  decide

/-- The explicit local table contains no repeated global coordinate. -/
theorem tropicalSupportGlobalCoordinate8_injective :
    Function.Injective tropicalSupportGlobalCoordinate8 := by
  decide

/-- The local table is exactly the support mask, not merely a 144-element
subset of it. -/
theorem tropicalSupportGlobalCoordinate8_mem_iff (x : Fin 252) :
    tropicalSupportCoord8 x = true ↔
      ∃ i : Fin 144, tropicalSupportGlobalCoordinate8 i = x := by
  revert x
  decide

/-- The official edge represented by one support-local coordinate. -/
def tropicalSupportEdge8 (i : Fin 144) : EdgeN 8 3 :=
  tropicalEdgeOfGlobalCoordinate8 (tropicalSupportGlobalCoordinate8 i)

/-- Restriction of official weights to the canonical support-local order. -/
def tropicalSupportWeight8 (W : WeightsN 8 3 ℂ) : Fin 144 → ℂ :=
  fun i ↦ W (tropicalSupportEdge8 i)

/-- Exact support makes every one of the 144 local Laurent coordinates
nonzero. -/
theorem tropicalSupportWeight8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    ∀ i, tropicalSupportWeight8 W i ≠ 0 := by
  intro i
  apply (hSupport _).2
  change tropicalEdgeSupported8
    (tropicalEdgeOfGlobalCoordinate8 (tropicalSupportGlobalCoordinate8 i)) = true
  rw [tropicalEdgeSupported8_edgeOfGlobalCoordinate8]
  exact tropicalSupportGlobalCoordinate8_supported i

/-- A four-coordinate binomial character `x_a x_b = x_c x_d`, encoded as a
raw Laurent exponent row with sign exponent zero. -/
def tropicalBinomialCharacter8
    (a b c d : Fin 144) : SignedCharacterRow (Fin 144) where
  exponent :=
    (Pi.single a (1 : ℤ) + Pi.single b (1 : ℤ)) -
      (Pi.single c (1 : ℤ) + Pi.single d (1 : ℤ))
  signExponent := 0

private theorem laurentEval_piSingle
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (x : ι → ℂ) (i : ι) (n : ℤ) :
    laurentEval x (Pi.single i n) = x i ^ n := by
  classical
  simp [laurentEval, Pi.single_apply]

/-- Semantic interpretation of a raw four-coordinate binomial row. -/
theorem tropicalBinomialCharacter8_holds_iff
    (x : Fin 144 → ℂ) (hx : ∀ i, x i ≠ 0)
    (a b c d : Fin 144) :
    (tropicalBinomialCharacter8 a b c d).Holds x ↔
      x a * x b = x c * x d := by
  change
    laurentEval x
      ((Pi.single a (1 : ℤ) + Pi.single b (1 : ℤ)) -
        (Pi.single c (1 : ℤ) + Pi.single d (1 : ℤ))) = 1 ↔
      x a * x b = x c * x d
  rw [laurentEval_sub x hx, laurentEval_add x hx,
    laurentEval_add x hx]
  simp only [laurentEval_piSingle, zpow_one]
  exact div_eq_one_iff_eq (mul_ne_zero (hx c) (hx d))

/-- The exact five Component A character rows from the canonical manifest.

In global coordinate notation these are
`(100,250;101,247)`, `(103,250;104,247)`,
`(100,209;101,208)`, `(100,212;101,211)`, and
`(100,215;101,214)`.
-/
def tropicalComponentACharacter8 :
    Fin 5 → SignedCharacterRow (Fin 144) :=
![
  tropicalBinomialCharacter8 48 142 49 139,
  tropicalBinomialCharacter8 51 142 52 139,
  tropicalBinomialCharacter8 48 109 49 108,
  tropicalBinomialCharacter8 48 112 49 111,
  tropicalBinomialCharacter8 48 115 49 114
]

/-- The exact two Component B character rows from the canonical manifest.

In global coordinate notation these are `(135,238;136,235)` and
`(141,238;142,235)`.
-/
def tropicalComponentBCharacter8 :
    Fin 2 → SignedCharacterRow (Fin 144) :=
![
  tropicalBinomialCharacter8 69 130 70 127,
  tropicalBinomialCharacter8 75 130 76 127
]

/-- The support-local signed-character formulation of Component A. -/
def TropicalComponentACharacters8 (W : WeightsN 8 3 ℂ) : Prop :=
  ∀ r, (tropicalComponentACharacter8 r).Holds (tropicalSupportWeight8 W)

/-- The support-local signed-character formulation of Component B. -/
def TropicalComponentBCharacters8 (W : WeightsN 8 3 ℂ) : Prop :=
  ∀ r, (tropicalComponentBCharacter8 r).Holds (tropicalSupportWeight8 W)

/-- The determinant formulation of Component A supplies exactly the five raw
manifest character rows. -/
theorem tropicalComponentACharacters8_of_componentA8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hComponent : TropicalComponentA8 W) :
    TropicalComponentACharacters8 W := by
  rcases hComponent with ⟨h0, h1, h2, h3, h4⟩
  have hx := tropicalSupportWeight8_ne_zero hSupport
  have hr0 :
      tropicalSupportWeight8 W 48 * tropicalSupportWeight8 W 142 =
        tropicalSupportWeight8 W 49 * tropicalSupportWeight8 W 139 := by
    change
      W (mkEdge 1 6 0 1) * W (mkEdge 6 7 2 1) =
        W (mkEdge 1 6 0 2) * W (mkEdge 6 7 1 1)
    dsimp [cubeDet2, tropicalCubeG8, tropicalCubeU8,
      tropicalCubeColor12_8, tropicalCubeColor01_8] at h0
    linear_combination -h0
  have hr1 :
      tropicalSupportWeight8 W 51 * tropicalSupportWeight8 W 142 =
        tropicalSupportWeight8 W 52 * tropicalSupportWeight8 W 139 := by
    change
      W (mkEdge 1 6 1 1) * W (mkEdge 6 7 2 1) =
        W (mkEdge 1 6 1 2) * W (mkEdge 6 7 1 1)
    dsimp [cubeDet2, tropicalCubeG8, tropicalCubeU8,
      tropicalCubeColor12_8, tropicalCubeColor01_8] at h1
    linear_combination -h1
  have hr2 :
      tropicalSupportWeight8 W 48 * tropicalSupportWeight8 W 109 =
        tropicalSupportWeight8 W 49 * tropicalSupportWeight8 W 108 := by
    change
      W (mkEdge 1 6 0 1) * W (mkEdge 4 6 0 2) =
        W (mkEdge 1 6 0 2) * W (mkEdge 4 6 0 1)
    dsimp [cubeDet2, tropicalCubeU8, tropicalOffCubeV8,
      tropicalCubeColor12_8, tropicalCubeColor01_8] at h2
    linear_combination h2
  have hr3 :
      tropicalSupportWeight8 W 48 * tropicalSupportWeight8 W 112 =
        tropicalSupportWeight8 W 49 * tropicalSupportWeight8 W 111 := by
    change
      W (mkEdge 1 6 0 1) * W (mkEdge 4 6 1 2) =
        W (mkEdge 1 6 0 2) * W (mkEdge 4 6 1 1)
    dsimp [cubeDet2, tropicalCubeU8, tropicalCubeV8,
      tropicalCubeColor12_8, tropicalCubeColor01_8] at h3
    linear_combination h3
  have hr4 :
      tropicalSupportWeight8 W 48 * tropicalSupportWeight8 W 115 =
        tropicalSupportWeight8 W 49 * tropicalSupportWeight8 W 114 := by
    change
      W (mkEdge 1 6 0 1) * W (mkEdge 4 6 2 2) =
        W (mkEdge 1 6 0 2) * W (mkEdge 4 6 2 1)
    dsimp [cubeDet2, tropicalCubeU8, tropicalCubeV8,
      tropicalCubeColor12_8, tropicalCubeColor01_8] at h4
    linear_combination h4
  intro r
  fin_cases r
  · exact (tropicalBinomialCharacter8_holds_iff _ hx 48 142 49 139).2 hr0
  · exact (tropicalBinomialCharacter8_holds_iff _ hx 51 142 52 139).2 hr1
  · exact (tropicalBinomialCharacter8_holds_iff _ hx 48 109 49 108).2 hr2
  · exact (tropicalBinomialCharacter8_holds_iff _ hx 48 112 49 111).2 hr3
  · exact (tropicalBinomialCharacter8_holds_iff _ hx 48 115 49 114).2 hr4

/-- The determinant formulation of Component B supplies exactly the two raw
manifest character rows. -/
theorem tropicalComponentBCharacters8_of_componentB8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hComponent : TropicalComponentB8 W) :
    TropicalComponentBCharacters8 W := by
  rcases hComponent with ⟨h0, h1⟩
  have hx := tropicalSupportWeight8_ne_zero hSupport
  have hr0 :
      tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 130 =
        tropicalSupportWeight8 W 70 * tropicalSupportWeight8 W 127 := by
    change
      W (mkEdge 2 5 0 0) * W (mkEdge 5 7 1 1) =
        W (mkEdge 2 5 0 1) * W (mkEdge 5 7 0 1)
    dsimp [cubeDet2, tropicalCubeL8, tropicalCubeP8,
      tropicalCubeColor02_8, tropicalCubeColor01_8] at h0
    linear_combination -h0
  have hr1 :
      tropicalSupportWeight8 W 75 * tropicalSupportWeight8 W 130 =
        tropicalSupportWeight8 W 76 * tropicalSupportWeight8 W 127 := by
    change
      W (mkEdge 2 5 2 0) * W (mkEdge 5 7 1 1) =
        W (mkEdge 2 5 2 1) * W (mkEdge 5 7 0 1)
    dsimp [cubeDet2, tropicalCubeL8, tropicalCubeP8,
      tropicalCubeColor02_8, tropicalCubeColor01_8] at h1
    linear_combination -h1
  intro r
  fin_cases r
  · exact (tropicalBinomialCharacter8_holds_iff _ hx 69 130 70 127).2 hr0
  · exact (tropicalBinomialCharacter8_holds_iff _ hx 75 130 76 127).2 hr1

end

end MonochromaticQuantumGraphs.N8D3
