import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source

/-!
# Component-A quotient row 52

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

private def tropicalComponentAQuotient052ShiftedUse8 :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin 116) (Fin 144) :=
![
  { source := 88
      scale := (1 : ℤ)
      shift := (Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ)) },
  { source := 91
      scale := (-1 : ℤ)
      shift := (0 : LaurentExponent (Fin 144)) }
]

private theorem tropicalComponentAQuotient052_shifted_eq :
    (∑ k : Fin 2, (tropicalComponentAQuotient052ShiftedUse8 k).scale •
      LaurentPolynomial.translate (tropicalComponentAQuotient052ShiftedUse8 k).shift
        (tropicalComponentAQuotientReducedSource8
          (tropicalComponentAQuotient052ShiftedUse8 k).source)) =
      tropicalComponentAQuotientIntermediate8 52 := by
  decide

/-- Exact two-source shifted combination for quotient row 52. -/
def tropicalComponentAQuotientShiftedCertificate8_052 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 52) where
  use := tropicalComponentAQuotient052ShiftedUse8
  combination_eq := tropicalComponentAQuotient052_shifted_eq

private def tropicalComponentAQuotient052Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient052Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient052Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient052Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient052Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient052Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (42 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (42 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient052Monomial068 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient052Monomial078 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient052Monomial088 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient052Monomial098 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient052Monomial108 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient052Monomial118 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (42 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (42 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient052ReductionUse8 :
    Fin 12 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient052Monomial008 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient052Monomial018 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient052Monomial028 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (-1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient052Monomial038 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient052Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (42 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (42 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient052Monomial058 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient052Monomial068 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient052Monomial078 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient052Monomial088 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient052Monomial098 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient052Monomial108 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (42 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (42 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient052Monomial118 }
]

private theorem tropicalComponentAQuotient052_source_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient052ReductionUse8 k).sourceExponent
        (tropicalComponentAQuotient052ReductionUse8 k).coefficient) = tropicalComponentAQuotientIntermediate8 52 := by
  decide

private theorem tropicalComponentAQuotient052_target_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient052ReductionUse8 k).targetExponent
        (signedCoefficient (tropicalComponentAQuotient052ReductionUse8 k).reduction.signExponent
          (tropicalComponentAQuotient052ReductionUse8 k).coefficient)) =
      (1 : ℤ) • tropicalComponentAQuotientRelation8 52 := by
  decide

/-- Exact normalized character reduction for quotient row 52. -/
def tropicalComponentAQuotientReductionCertificate8_052 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 52)
      (tropicalComponentAQuotientRelation8 52) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentAQuotient052ReductionUse8
    source_eq := tropicalComponentAQuotient052_source_eq
    target_eq := tropicalComponentAQuotient052_target_eq
  }

theorem tropicalComponentAQuotientRelation8_052_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientRelation8 52).Holds
      (tropicalSupportWeight8 W) := by
  have hintermediate :
      (tropicalComponentAQuotientIntermediate8 52).Holds
        (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 52)
      tropicalComponentAQuotientShiftedCertificate8_052
      (tropicalComponentAQuotientReducedSources8_hold hSupport hEq hChars)
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientIntermediate8 52)
    (tropicalComponentAQuotientRelation8 52)
    tropicalComponentAQuotientReductionCertificate8_052
    hChars hintermediate

end

end MonochromaticQuantumGraphs.N8D3
