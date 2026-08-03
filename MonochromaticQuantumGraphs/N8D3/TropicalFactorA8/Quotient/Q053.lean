import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source

/-!
# Component-A quotient row 53

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

private def tropicalComponentAQuotient053ShiftedUse8 :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin 116) (Fin 144) :=
![
  { source := 89
      scale := (1 : ℤ)
      shift := (Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ)) },
  { source := 92
      scale := (-1 : ℤ)
      shift := (0 : LaurentExponent (Fin 144)) }
]

private theorem tropicalComponentAQuotient053_shifted_eq :
    (∑ k : Fin 2, (tropicalComponentAQuotient053ShiftedUse8 k).scale •
      LaurentPolynomial.translate (tropicalComponentAQuotient053ShiftedUse8 k).shift
        (tropicalComponentAQuotientReducedSource8
          (tropicalComponentAQuotient053ShiftedUse8 k).source)) =
      tropicalComponentAQuotientIntermediate8 53 := by
  decide

/-- Exact two-source shifted combination for quotient row 53. -/
def tropicalComponentAQuotientShiftedCertificate8_053 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 53) where
  use := tropicalComponentAQuotient053ShiftedUse8
  combination_eq := tropicalComponentAQuotient053_shifted_eq

private def tropicalComponentAQuotient053Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient053Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient053Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient053Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient053Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient053Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient053Monomial068 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient053Monomial078 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient053Monomial088 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient053Monomial098 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient053Monomial108 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient053Monomial118 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient053ReductionUse8 :
    Fin 12 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient053Monomial008 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient053Monomial018 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient053Monomial028 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient053Monomial038 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient053Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient053Monomial058 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient053Monomial068 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient053Monomial078 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient053Monomial088 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient053Monomial098 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient053Monomial108 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient053Monomial118 }
]

private theorem tropicalComponentAQuotient053_source_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient053ReductionUse8 k).sourceExponent
        (tropicalComponentAQuotient053ReductionUse8 k).coefficient) = tropicalComponentAQuotientIntermediate8 53 := by
  decide

private theorem tropicalComponentAQuotient053_target_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient053ReductionUse8 k).targetExponent
        (signedCoefficient (tropicalComponentAQuotient053ReductionUse8 k).reduction.signExponent
          (tropicalComponentAQuotient053ReductionUse8 k).coefficient)) =
      (1 : ℤ) • tropicalComponentAQuotientRelation8 53 := by
  decide

/-- Exact normalized character reduction for quotient row 53. -/
def tropicalComponentAQuotientReductionCertificate8_053 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 53)
      (tropicalComponentAQuotientRelation8 53) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentAQuotient053ReductionUse8
    source_eq := tropicalComponentAQuotient053_source_eq
    target_eq := tropicalComponentAQuotient053_target_eq
  }

theorem tropicalComponentAQuotientRelation8_053_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientRelation8 53).Holds
      (tropicalSupportWeight8 W) := by
  have hintermediate :
      (tropicalComponentAQuotientIntermediate8 53).Holds
        (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 53)
      tropicalComponentAQuotientShiftedCertificate8_053
      (tropicalComponentAQuotientReducedSources8_hold hSupport hEq hChars)
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientIntermediate8 53)
    (tropicalComponentAQuotientRelation8 53)
    tropicalComponentAQuotientReductionCertificate8_053
    hChars hintermediate

end

end MonochromaticQuantumGraphs.N8D3
