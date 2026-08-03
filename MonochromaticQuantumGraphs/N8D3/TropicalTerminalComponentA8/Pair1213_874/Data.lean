import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Data

/-! Frozen Component-A terminal data for 1213/874 -/

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

/-- Frozen signed rows, separated from their bounded equality replays. -/
def terminalA1213_874FrozenBasisRow8 : Fin 31 → SignedCharacterRow (Fin 144) :=
  ![
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
  ]

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

/-- Frozen one-monomial target of the full source subtraction. -/
def terminalA1213_874FullDifferenceReduced8 : LaurentPolynomial (Fin 144) :=
  (
    Finsupp.single (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ)
  )

/-- Raw left-source face after omitting source term 8. -/
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

/-- Raw translated-right-minus-left-face polynomial. -/
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

/-- Raw left-minus-translated-right polynomial. -/
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

end

end MonochromaticQuantumGraphs.N8D3
