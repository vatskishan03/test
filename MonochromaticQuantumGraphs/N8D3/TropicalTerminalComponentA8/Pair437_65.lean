import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Data

/-!
# Frozen Component-A terminal family 437/65

The basis contains the five Component-A characters followed only by raw
factor rows from false-twin class 7.  All source tags and exact row
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
def terminalA437_65RawFactorId8 : Fin 1 → Fin 59 :=
  ![36]

/-- Explicit base/raw source tag of every frozen normalized basis row. -/
def terminalA437_65BasisSource8 :
    Fin 6 → FactorBasisSource (Fin 5) (Fin 1) :=
  ![.base 0, .base 1, .base 2, .base 3, .base 4, .raw 0]

/-- Interpret the basis provenance through the official Factor-A rows. -/
def terminalA437_65BasisRow8 : Fin 6 → SignedCharacterRow (Fin 144) :=
  fun i ↦ (terminalA437_65BasisSource8 i).row
    tropicalComponentACharacter8
    (fun r ↦ tropicalComponentARawFactor8 (terminalA437_65RawFactorId8 r))

/-- The provenance interpretation is exactly the frozen signed-row basis. -/
theorem terminalA437_65BasisRow8_eq_frozen (i : Fin 6) :
    terminalA437_65BasisRow8 i = ![
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 139 ((-1) : ℤ) + Pi.single 142 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 51 (1 : ℤ) + Pi.single 52 ((-1) : ℤ) + Pi.single 139 ((-1) : ℤ) + Pi.single 142 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 108 ((-1) : ℤ) + Pi.single 109 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 111 ((-1) : ℤ) + Pi.single 112 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 114 ((-1) : ℤ) + Pi.single 115 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 138 ((-1) : ℤ) + Pi.single 141 (1 : ℤ)), signExponent := 0 }
  ] i := by
  revert i
  decide

/-- Every provenance-tagged raw row is a member of class 7. -/
theorem terminalA437_65RawFactorId8_mem (r : Fin 1) :
    terminalA437_65RawFactorId8 r ∈ tropicalComponentAClassMembers8 7 := by
  revert r
  decide

/-- An all-zero class supplies exactly the declared terminal basis. -/
theorem terminalA437_65BasisRow8_holds
    {W : WeightsN 8 3 ℂ}
    (hChars : TropicalComponentACharacters8 W)
    (hzero : AllZeroInClass tropicalComponentAClassMembers8
      (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 7) :
    ∀ i, (terminalA437_65BasisRow8 i).Holds (tropicalSupportWeight8 W) := by
  have hraw : ∀ r : Fin 1,
      (tropicalComponentARawFactor8 (terminalA437_65RawFactorId8 r)).Holds
        (tropicalSupportWeight8 W) := by
    intro r
    exact rawCharacter_holds_of_allZeroInClass
      (tropicalSupportWeight8 W) tropicalComponentAClassMembers8
      tropicalComponentARawFactor8 hzero (terminalA437_65RawFactorId8_mem r)
  intro i
  exact FactorBasisSource.row_holds
    (tropicalSupportWeight8 W) tropicalComponentACharacter8
    (fun r ↦ tropicalComponentARawFactor8 (terminalA437_65RawFactorId8 r))
    hChars hraw (terminalA437_65BasisSource8 i)

/-- Frozen normalized left target. -/
def terminalA437_65LeftReduced8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ)
  )

/-- Frozen normalized right target. -/
def terminalA437_65RightReduced8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ)
  )

/-- Frozen one-monomial target of full source subtraction. -/
def terminalA437_65FullDifferenceReduced8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ)
  )

/-- The eight raw left-source terms after omitting source term 8. -/
def terminalA437_65LeftFace8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ)
  )

/-- Raw translated-right-minus-left-face polynomial from the JSON certificate. -/
def terminalA437_65PairingSource8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 126 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) ((-1) : ℤ)
  )

/-- Raw left-minus-translated-right polynomial from the JSON certificate. -/
def terminalA437_65FullDifferenceSource8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 126 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) ((-1) : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ)
  )

/-- Explicit normalized reduction from the frozen terminal semantics. -/
def terminalA437_65LeftReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 9)
      terminalA437_65BasisRow8 tropicalTerminalRelation65_8 terminalA437_65LeftReduced8 :=
{ unit := 1
  unit_ne_zero := by norm_num
  reduction :=
  { use := ![
      { coefficient := 1
        sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        targetExponent := (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } }
    ]
    source_eq := by rw [tropicalTerminalRelation65_8_explicit]; decide
    target_eq := by decide }
}

/-- Explicit normalized reduction from the frozen terminal semantics. -/
def terminalA437_65RightReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 8)
      terminalA437_65BasisRow8 tropicalTerminalRelation437_8 terminalA437_65RightReduced8 :=
{ unit := 1
  unit_ne_zero := by norm_num
  reduction :=
  { use := ![
      { coefficient := 1
        sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 141 (1 : ℤ))
        targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 1] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 1, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 141 (1 : ℤ))
        targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 1] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 141 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 1] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![1, (-1), 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![1, (-1), 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![1, (-1), 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![1, (-1), 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } }
    ]
    source_eq := by rw [tropicalTerminalRelation437_8_explicit]; decide
    target_eq := by decide }
}

/-- Exact sparse character reduction from the frozen terminal semantics. -/
def terminalA437_65PairingReduction8 :
    CharacterReductionCertificate (κ := Fin 16)
      terminalA437_65BasisRow8 terminalA437_65PairingSource8 0 :=
{ use := ![
    { coefficient := 1
      sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ))
      targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![0, 0, 0, 0, 0, 0] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 126 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
      targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![0, 0, 1, 0, 0, (-1)] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
      targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![0, 0, 0, 0, 0, 0] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
      targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![0, 0, 0, 0, 0, 0] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
      targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![1, (-1), 0, 0, 0, (-1)] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
      targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![1, (-1), 0, 0, 0, (-1)] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
      targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![1, (-1), 0, 0, 0, (-1)] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := 1
      sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
      targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![1, (-1), 0, 0, 0, (-1)] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ))
      targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![0, 0, 0, 0, 0, 0] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ))
      targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![0, 0, 0, 0, 0, 0] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
      targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![0, 0, 0, 0, 0, 0] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
      targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![0, 0, 0, 0, 0, 0] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ))
      targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![0, 0, 0, 0, 0, 0] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ))
      targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![0, 0, 0, 0, 0, 0] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ))
      targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![0, 0, 0, 0, 0, 0] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } },
    { coefficient := (-1)
      sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
      targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
      reduction :=
        { signExponent := 0
          implication := { coeff := fun
            | .inl i => ![0, 0, 0, 0, 0, 0] i
            | .inr _ => 0
          combination_eq := by
            apply SignedCharacterRow.ext <;> decide } } }
  ]
  source_eq := by decide
  target_eq := by decide }

/-- Explicit normalized reduction from the frozen terminal semantics. -/
def terminalA437_65FullDifferenceReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 17)
      terminalA437_65BasisRow8 terminalA437_65FullDifferenceSource8 terminalA437_65FullDifferenceReduced8 :=
{ unit := 1
  unit_ne_zero := by norm_num
  reduction :=
  { use := ![
      { coefficient := 1
        sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := 1
        sourceExponent := (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        targetExponent := (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 126 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
        targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 1, 0, 0, (-1)] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![0, 0, 0, 0, 0, 0] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![1, (-1), 0, 0, 0, (-1)] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
        targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![1, (-1), 0, 0, 0, (-1)] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
        targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![1, (-1), 0, 0, 0, (-1)] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } },
      { coefficient := (-1)
        sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
        targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        reduction :=
          { signExponent := 0
            implication := { coeff := fun
              | .inl i => ![1, (-1), 0, 0, 0, (-1)] i
              | .inr _ => 0
            combination_eq := by
              apply SignedCharacterRow.ext <;> decide } } }
    ]
    source_eq := by decide
    target_eq := by decide }
}

/-- The pairing polynomial has exactly the frozen raw-source interpretation. -/
theorem terminalA437_65PairingSource8_eq :
    terminalA437_65PairingSource8 =
      (1 : ℤ) • LaurentPolynomial.translate (Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
        tropicalTerminalRelation437_8 - terminalA437_65LeftFace8 := by
  rw [tropicalTerminalRelation437_8_explicit]
  decide

/-- The full subtraction likewise records both official source equations. -/
theorem terminalA437_65FullDifferenceSource8_eq :
    terminalA437_65FullDifferenceSource8 = tropicalTerminalRelation65_8 -
      (1 : ℤ) • LaurentPolynomial.translate (Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
        tropicalTerminalRelation437_8 := by
  rw [tropicalTerminalRelation65_8_explicit,
    tropicalTerminalRelation437_8_explicit]
  decide

/-- Complete frozen raw-source nested-face certificate. -/
def terminalA437_65NestedFace8 :
    TropicalTerminalRawNestedFaceCertificate8 (κ := Fin 16)
      terminalA437_65BasisRow8 tropicalTerminalRelation65_8 tropicalTerminalRelation437_8 :=
{ omittedExponent := (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
  omittedCoefficient := 1
  omittedCoefficient_ne_zero := by norm_num
  face := terminalA437_65LeftFace8
  faceScalar := 1
  faceScalar_ne_zero := by norm_num
  faceShift := (Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
  left_eq := by
    rw [tropicalTerminalRelation65_8_explicit]
    decide
  pairingSource := terminalA437_65PairingSource8
  pairingSource_eq := terminalA437_65PairingSource8_eq
  pairingReduction := terminalA437_65PairingReduction8
}

/-- The selected all-zero class triggers this historical nested-face family. -/
theorem terminalA437_65_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W)
    (hzero : AllZeroInClass tropicalComponentAClassMembers8
      (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 7) : False := by
  exact false_of_tropicalTerminalRawNestedFaceCertificate8
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    terminalA437_65BasisRow8 tropicalTerminalRelation65_8 tropicalTerminalRelation437_8 terminalA437_65NestedFace8
    (terminalA437_65BasisRow8_holds hChars hzero)
    (tropicalTerminalRelation65_8_hold hSupport hEq)
    (tropicalTerminalRelation437_8_hold hSupport hEq)

end

end MonochromaticQuantumGraphs.N8D3
