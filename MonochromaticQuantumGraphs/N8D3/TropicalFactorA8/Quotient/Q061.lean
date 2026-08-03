import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source

/-!
# Component-A quotient row 61

This module separately replays its exact shifted combination, twelve monomial
implications, and normalized quotient reduction.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private def tropicalComponentAQuotient061ShiftedUse8 :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin 116) (Fin 144) :=
![
  { source := 102
      scale := (1 : ℤ)
      shift := (Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ)) },
  { source := 105
      scale := (-1 : ℤ)
      shift := (0 : LaurentExponent (Fin 144)) }
]

private theorem tropicalComponentAQuotient061_shifted_eq :
    (∑ k : Fin 2, (tropicalComponentAQuotient061ShiftedUse8 k).scale •
      LaurentPolynomial.translate (tropicalComponentAQuotient061ShiftedUse8 k).shift
        (tropicalComponentAQuotientReducedSource8
          (tropicalComponentAQuotient061ShiftedUse8 k).source)) =
      tropicalComponentAQuotientIntermediate8 61 := by
  decide

/-- Exact two-source shifted combination for quotient row 61. -/
def tropicalComponentAQuotientShiftedCertificate8_061 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 61) where
  use := tropicalComponentAQuotient061ShiftedUse8
  combination_eq := tropicalComponentAQuotient061_shifted_eq

private def tropicalComponentAQuotient061Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentAQuotient061Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentAQuotient061Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentAQuotient061Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentAQuotient061Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentAQuotient061Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (43 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (43 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentAQuotient061Monomial068 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentAQuotient061Monomial078 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentAQuotient061Monomial088 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentAQuotient061Monomial098 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentAQuotient061Monomial108 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentAQuotient061Monomial118 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (43 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (43 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentAQuotient061ReductionUse8 :
    Fin 12 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient061Monomial008 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient061Monomial018 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient061Monomial028 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient061Monomial038 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient061Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (43 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (43 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient061Monomial058 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient061Monomial068 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient061Monomial078 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient061Monomial088 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient061Monomial098 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient061Monomial108 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (43 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (43 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient061Monomial118 }
]

private theorem tropicalComponentAQuotient061_source_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient061ReductionUse8 k).sourceExponent
        (tropicalComponentAQuotient061ReductionUse8 k).coefficient) = tropicalComponentAQuotientIntermediate8 61 := by
  decide

private theorem tropicalComponentAQuotient061_target_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient061ReductionUse8 k).targetExponent
        (signedCoefficient (tropicalComponentAQuotient061ReductionUse8 k).reduction.signExponent
          (tropicalComponentAQuotient061ReductionUse8 k).coefficient)) =
      (1 : ℤ) • tropicalComponentAQuotientRelation8 61 := by
  decide

/-- Exact normalized character reduction for quotient row 61. -/
def tropicalComponentAQuotientReductionCertificate8_061 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 61)
      (tropicalComponentAQuotientRelation8 61) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentAQuotient061ReductionUse8
    source_eq := tropicalComponentAQuotient061_source_eq
    target_eq := tropicalComponentAQuotient061_target_eq
  }

theorem tropicalComponentAQuotientRelation8_061_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientRelation8 61).Holds
      (tropicalSupportWeight8 W) := by
  have hintermediate :
      (tropicalComponentAQuotientIntermediate8 61).Holds
        (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 61)
      tropicalComponentAQuotientShiftedCertificate8_061
      (tropicalComponentAQuotientReducedSources8_hold hSupport hEq hChars)
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientIntermediate8 61)
    (tropicalComponentAQuotientRelation8 61)
    tropicalComponentAQuotientReductionCertificate8_061
    hChars hintermediate

end

end MonochromaticQuantumGraphs.N8D3
