import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Data

/-!
# Frozen Component-A terminal family 1213/874

The basis contains the five Component-A characters followed only by raw
factor rows from false-twin class 2.  All source tags and exact row
identities are checked before the nested-face replay.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Raw-factor IDs appearing in the frozen basis provenance. -/
def terminalA1213_874RawFactorId8 : Fin 26 → Fin 59 :=
  ![
    3, 4, 6, 7, 9, 10, 12, 13, 14, 15,
    16, 17, 18, 19, 20, 21, 25, 26, 27, 28,
    29, 30, 31, 32, 50, 51
  ]

/-- Explicit base/raw source tag of every frozen normalized basis row. -/
def terminalA1213_874BasisSource8 :
    Fin 31 → FactorBasisSource (Fin 5) (Fin 26) :=
  ![
    .base 0, .base 1, .base 2, .base 3, .base 4, .raw 0,
    .raw 1, .raw 2, .raw 3, .raw 4, .raw 5, .raw 6,
    .raw 7, .raw 8, .raw 9, .raw 10, .raw 11, .raw 12,
    .raw 13, .raw 14, .raw 15, .raw 16, .raw 17, .raw 18,
    .raw 19, .raw 20, .raw 21, .raw 22, .raw 23, .raw 24,
    .raw 25
  ]

/-- Interpret the basis provenance through the official Factor-A rows. -/
def terminalA1213_874BasisRow8 : Fin 31 → SignedCharacterRow (Fin 144) :=
  fun i ↦ (terminalA1213_874BasisSource8 i).row
    tropicalComponentACharacter8
    (fun r ↦ tropicalComponentARawFactor8 (terminalA1213_874RawFactorId8 r))

/-- The provenance interpretation is exactly the frozen signed-row basis. -/
theorem terminalA1213_874BasisRow8_eq_frozen (i : Fin 31) :
    terminalA1213_874BasisRow8 i = ![
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 139 ((-1) : ℤ) + Pi.single 142 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 51 (1 : ℤ) + Pi.single 52 ((-1) : ℤ) + Pi.single 139 ((-1) : ℤ) + Pi.single 142 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 108 ((-1) : ℤ) + Pi.single 109 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 111 ((-1) : ℤ) + Pi.single 112 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 114 ((-1) : ℤ) + Pi.single 115 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 86 (1 : ℤ) + Pi.single 87 ((-1) : ℤ) + Pi.single 101 ((-1) : ℤ) + Pi.single 104 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 86 (1 : ℤ) + Pi.single 87 ((-1) : ℤ) + Pi.single 102 ((-1) : ℤ) + Pi.single 105 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 85 (1 : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 98 ((-1) : ℤ) + Pi.single 101 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 85 (1 : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 99 ((-1) : ℤ) + Pi.single 102 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 85 (1 : ℤ) + Pi.single 87 ((-1) : ℤ) + Pi.single 98 ((-1) : ℤ) + Pi.single 104 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 85 (1 : ℤ) + Pi.single 87 ((-1) : ℤ) + Pi.single 99 ((-1) : ℤ) + Pi.single 105 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 75 (1 : ℤ) + Pi.single 76 ((-1) : ℤ) + Pi.single 126 ((-1) : ℤ) + Pi.single 129 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 69 (1 : ℤ) + Pi.single 70 ((-1) : ℤ) + Pi.single 126 ((-1) : ℤ) + Pi.single 129 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 99 (1 : ℤ) + Pi.single 105 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 104 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 89 (1 : ℤ) + Pi.single 99 (1 : ℤ) + Pi.single 102 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 89 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 101 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 88 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 102 (1 : ℤ) + Pi.single 105 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 101 (1 : ℤ) + Pi.single 104 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 89 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 99 (1 : ℤ) + Pi.single 105 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 104 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 89 (1 : ℤ) + Pi.single 99 (1 : ℤ) + Pi.single 102 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 89 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 101 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 88 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 102 (1 : ℤ) + Pi.single 105 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 101 (1 : ℤ) + Pi.single 104 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 89 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 1 (1 : ℤ) + Pi.single 7 ((-1) : ℤ) + Pi.single 9 ((-1) : ℤ) + Pi.single 15 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 1 (1 : ℤ) + Pi.single 7 ((-1) : ℤ) + Pi.single 11 ((-1) : ℤ) + Pi.single 17 (1 : ℤ)), signExponent := 0 }
  ] i := by
  revert i
  decide

/-- Every provenance-tagged raw row is a member of class 2. -/
theorem terminalA1213_874RawFactorId8_mem (r : Fin 26) :
    terminalA1213_874RawFactorId8 r ∈ tropicalComponentAClassMembers8 2 := by
  revert r
  decide

/-- An all-zero class supplies exactly the declared terminal basis. -/
theorem terminalA1213_874BasisRow8_holds
    {W : WeightsN 8 3 ℂ}
    (hChars : TropicalComponentACharacters8 W)
    (hzero : AllZeroInClass tropicalComponentAClassMembers8
      (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 2) :
    ∀ i, (terminalA1213_874BasisRow8 i).Holds (tropicalSupportWeight8 W) := by
  have hraw : ∀ r : Fin 26,
      (tropicalComponentARawFactor8 (terminalA1213_874RawFactorId8 r)).Holds
        (tropicalSupportWeight8 W) := by
    intro r
    exact rawCharacter_holds_of_allZeroInClass
      (tropicalSupportWeight8 W) tropicalComponentAClassMembers8
      tropicalComponentARawFactor8 hzero (terminalA1213_874RawFactorId8_mem r)
  intro i
  exact FactorBasisSource.row_holds
    (tropicalSupportWeight8 W) tropicalComponentACharacter8
    (fun r ↦ tropicalComponentARawFactor8 (terminalA1213_874RawFactorId8 r))
    hChars hraw (terminalA1213_874BasisSource8 i)

/-- Frozen normalized left target. -/
def terminalA1213_874LeftReduced8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (1 : ℤ)
  )

/-- Frozen normalized right target. -/
def terminalA1213_874RightReduced8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (1 : ℤ)
  )

/-- Frozen one-monomial target of full source subtraction. -/
def terminalA1213_874FullDifferenceReduced8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ)
  )

/-- The eight raw left-source terms after omitting source term 8. -/
def terminalA1213_874LeftFace8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ)
  )

/-- Raw translated-right-minus-left-face polynomial from the JSON certificate. -/
def terminalA1213_874PairingSource8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 127 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ)) ((-1) : ℤ)
  )

/-- Raw left-minus-translated-right polynomial from the JSON certificate. -/
def terminalA1213_874FullDifferenceSource8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 127 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (1 : ℤ)
  )

/-- Explicit normalized reduction from the frozen terminal semantics. -/
def terminalA1213_874LeftReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 9)
      terminalA1213_874BasisRow8 tropicalTerminalRelation874_8 terminalA1213_874LeftReduced8 :=
{ unit := 1
  unit_ne_zero := by norm_num
  reduction :=
  { use := ![
      { coefficient := 1
        sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        targetExponent := (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } }
    ]
    source_eq := by rw [tropicalTerminalRelation874_8_explicit]; decide
    target_eq := by decide }
}

/-- Explicit normalized reduction from the frozen terminal semantics. -/
def terminalA1213_874RightReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 8)
      terminalA1213_874BasisRow8 tropicalTerminalRelation1213_8 terminalA1213_874RightReduced8 :=
{ unit := 1
  unit_ne_zero := by norm_num
  reduction :=
  { use := ![
      { coefficient := 1
        sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 142 (1 : ℤ))
        targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              1, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 1, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 142 (1 : ℤ))
        targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              1, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 142 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              1, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } }
    ]
    source_eq := by rw [tropicalTerminalRelation1213_8_explicit]; decide
    target_eq := by decide }
}

/-- Exact sparse character reduction from the frozen terminal semantics. -/
def terminalA1213_874PairingReduction8 :
    CharacterReductionCertificate (κ := Fin 16)
      terminalA1213_874BasisRow8 terminalA1213_874PairingSource8 0 :=
{ use := ![
    { coefficient := 1
      sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
      targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 127 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
      targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            (-1), 0, 1, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
      targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
      targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
      targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            (-1), 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
      targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            (-1), 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
      targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            (-1), 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
      targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            (-1), 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
      targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ))
      targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
      targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
      targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ))
      targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ))
      targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ))
      targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
      targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0,
            0
          ] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } }
  ]
  source_eq := by decide
  target_eq := by decide }

/-- Explicit normalized reduction from the frozen terminal semantics. -/
def terminalA1213_874FullDifferenceReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 17)
      terminalA1213_874BasisRow8 terminalA1213_874FullDifferenceSource8 terminalA1213_874FullDifferenceReduced8 :=
{ unit := 1
  unit_ne_zero := by norm_num
  reduction :=
  { use := ![
      { coefficient := 1
        sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        targetExponent := (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 127 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
        targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              (-1), 0, 1, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              (-1), 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              (-1), 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
        targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              (-1), 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
        targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![
              (-1), 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0,
              0
            ] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } }
    ]
    source_eq := by decide
    target_eq := by decide }
}

/-- The pairing polynomial has exactly the frozen raw-source interpretation. -/
theorem terminalA1213_874PairingSource8_eq :
    terminalA1213_874PairingSource8 =
      (1 : ℤ) • LaurentPolynomial.translate (Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
        tropicalTerminalRelation1213_8 - terminalA1213_874LeftFace8 := by
  rw [tropicalTerminalRelation1213_8_explicit]
  decide

/-- The full subtraction likewise records both official source equations. -/
theorem terminalA1213_874FullDifferenceSource8_eq :
    terminalA1213_874FullDifferenceSource8 = tropicalTerminalRelation874_8 -
      (1 : ℤ) • LaurentPolynomial.translate (Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
        tropicalTerminalRelation1213_8 := by
  rw [tropicalTerminalRelation874_8_explicit,
    tropicalTerminalRelation1213_8_explicit]
  decide

/-- Complete frozen raw-source nested-face certificate. -/
def terminalA1213_874NestedFace8 :
    TropicalTerminalRawNestedFaceCertificate8 (κ := Fin 16)
      terminalA1213_874BasisRow8 tropicalTerminalRelation874_8 tropicalTerminalRelation1213_8 :=
{ omittedExponent := (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
  omittedCoefficient := 1
  omittedCoefficient_ne_zero := by norm_num
  face := terminalA1213_874LeftFace8
  faceScalar := 1
  faceScalar_ne_zero := by norm_num
  faceShift := (Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
  left_eq := by
    rw [tropicalTerminalRelation874_8_explicit]
    decide
  pairingSource := terminalA1213_874PairingSource8
  pairingSource_eq := terminalA1213_874PairingSource8_eq
  pairingReduction := terminalA1213_874PairingReduction8
}

/-- The selected all-zero class triggers this historical nested-face family. -/
theorem terminalA1213_874_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W)
    (hzero : AllZeroInClass tropicalComponentAClassMembers8
      (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 2) : False := by
  exact false_of_tropicalTerminalRawNestedFaceCertificate8
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    terminalA1213_874BasisRow8 tropicalTerminalRelation874_8 tropicalTerminalRelation1213_8 terminalA1213_874NestedFace8
    (terminalA1213_874BasisRow8_holds hChars hzero)
    (tropicalTerminalRelation874_8_hold hSupport hEq)
    (tropicalTerminalRelation1213_8_hold hSupport hEq)

end

end MonochromaticQuantumGraphs.N8D3
