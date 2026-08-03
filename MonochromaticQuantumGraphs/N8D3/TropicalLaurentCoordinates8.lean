import MonochromaticQuantumGraphs.LaurentCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalSupportCoordinates8
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentOffCube8

/-!
# Support-local Laurent coordinates for the canonical N8D3 support

The support-coordinate bridge is isolated in `TropicalSupportCoordinates8`
so its finite decoder checks compile independently.  This module adds the
five Component A and two Component B
signed characters used by the exact lattice replay.  Their semantic lemmas
are derived from the already-proved determinant components, rather than
being assumed as certificate input.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000

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
