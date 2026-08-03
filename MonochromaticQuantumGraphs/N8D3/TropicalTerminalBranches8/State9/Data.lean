import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.Data

/-! Shared basis and split data for survivor state 9. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBState9RawRawSource8 : Fin 17 → Fin 49 :=
![
  0, 1, 2, 3, 6, 9, 10, 15, 16, 17, 18, 19,
  20, 32, 33, 44, 45
]

def terminalBState9RawRawClass8 : Fin 17 → Fin 23 :=
![
  0, 1, 1, 2, 4, 6, 6, 9, 10, 11, 11, 12,
  12, 17, 17, 22, 22
]

def terminalBState9RawBasisSource8 :
    Fin 19 → FactorBasisSource (Fin 2) (Fin 17) :=
![
  .base 0, .base 1, .raw 0, .raw 1, .raw 2, .raw 3,
  .raw 4, .raw 5, .raw 6, .raw 7, .raw 8, .raw 9,
  .raw 10, .raw 11, .raw 12, .raw 13, .raw 14, .raw 15,
  .raw 16
]

def terminalBState9RawBasis8 : Fin 19 → SignedCharacterRow (Fin 144) :=
  fun i ↦ (terminalBState9RawBasisSource8 i).row tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 (terminalBState9RawRawSource8 r))


def terminalBState9SplitRelation0_8 : LaurentPolynomial (Fin 144) :=
  (Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144))

def terminalBState9CombinationShift0_8 : LaurentExponent (Fin 144) :=
  (Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ))


def terminalBState9SplitRelation1_8 : LaurentPolynomial (Fin 144) :=
  (Finsupp.single (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144))

def terminalBState9CombinationShift1_8 : LaurentExponent (Fin 144) :=
  (Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ))


def terminalBState9Branch0Source8 :
    Fin 21 → FactorBasisSource (Fin 19) (Fin 2) :=
![
  .base 0, .base 1, .base 2, .base 3, .base 4, .base 5,
  .base 6, .base 7, .base 8, .base 9, .base 10, .base 11,
  .base 12, .base 13, .base 14, .base 15, .base 16, .base 17,
  .base 18, .raw 0, .raw 1
]

def terminalBState9Branch0SplitRow8 :
    Fin 2 → SignedCharacterRow (Fin 144) :=
![
  terminalBSplitCharacter8 0, terminalBSplitCharacter8 1
]

def terminalBState9Branch0Basis8 :
    Fin 21 → SignedCharacterRow (Fin 144) :=
  fun i ↦ (terminalBState9Branch0Source8 i).row terminalBState9RawBasis8
    terminalBState9Branch0SplitRow8


def terminalBState9Branch1Source8 :
    Fin 20 → FactorBasisSource (Fin 19) (Fin 1) :=
![
  .base 0, .base 1, .base 2, .base 3, .base 4, .base 5,
  .base 6, .base 7, .base 8, .base 9, .base 10, .base 11,
  .base 12, .base 13, .base 14, .base 15, .base 16, .base 17,
  .base 18, .raw 0
]

def terminalBState9Branch1SplitRow8 :
    Fin 1 → SignedCharacterRow (Fin 144) :=
![
  terminalBSplitCharacter8 2
]

def terminalBState9Branch1Basis8 :
    Fin 20 → SignedCharacterRow (Fin 144) :=
  fun i ↦ (terminalBState9Branch1Source8 i).row terminalBState9RawBasis8
    terminalBState9Branch1SplitRow8

end

end MonochromaticQuantumGraphs.N8D3
