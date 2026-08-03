import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Data

/-! Frozen Component-A terminal data for 437/65 -/

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

/-- Frozen signed rows, separated from their bounded equality replays. -/
def terminalA437_65FrozenBasisRow8 : Fin 6 → SignedCharacterRow (Fin 144) :=
  ![
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 139 ((-1) : ℤ) + Pi.single 142 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 51 (1 : ℤ) + Pi.single 52 ((-1) : ℤ) + Pi.single 139 ((-1) : ℤ) + Pi.single 142 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 108 ((-1) : ℤ) + Pi.single 109 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 111 ((-1) : ℤ) + Pi.single 112 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 114 ((-1) : ℤ) + Pi.single 115 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 138 ((-1) : ℤ) + Pi.single 141 (1 : ℤ)), signExponent := 0 }
  ]

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

/-- Frozen one-monomial target of the full source subtraction. -/
def terminalA437_65FullDifferenceReduced8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ)
  )

/-- Raw left-source face after omitting source term 8. -/
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

/-- Raw translated-right-minus-left-face polynomial. -/
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

/-- Raw left-minus-translated-right polynomial. -/
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

end

end MonochromaticQuantumGraphs.N8D3
