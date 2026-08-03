import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source

/-!
# Component-A quotient row 65

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

private def tropicalComponentAQuotient065ShiftedUse8 :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin 116) (Fin 144) :=
![
  { source := 104
      scale := (1 : ℤ)
      shift := (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ)) },
  { source := 109
      scale := (-1 : ℤ)
      shift := (0 : LaurentExponent (Fin 144)) }
]

private theorem tropicalComponentAQuotient065_shifted_eq :
    (∑ k : Fin 2, (tropicalComponentAQuotient065ShiftedUse8 k).scale •
      LaurentPolynomial.translate (tropicalComponentAQuotient065ShiftedUse8 k).shift
        (tropicalComponentAQuotientReducedSource8
          (tropicalComponentAQuotient065ShiftedUse8 k).source)) =
      tropicalComponentAQuotientIntermediate8 65 := by
  decide

/-- Exact two-source shifted combination for quotient row 65. -/
def tropicalComponentAQuotientShiftedCertificate8_065 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 65) where
  use := tropicalComponentAQuotient065ShiftedUse8
  combination_eq := tropicalComponentAQuotient065_shifted_eq

private def tropicalComponentAQuotient065Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient065Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient065Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient065Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (100 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (100 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient065Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient065Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient065Monomial068 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient065Monomial078 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient065Monomial088 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient065Monomial098 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (100 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (100 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient065Monomial108 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient065Monomial118 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient065ReductionUse8 :
    Fin 12 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient065Monomial008 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient065Monomial018 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient065Monomial028 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (100 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (100 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient065Monomial038 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient065Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient065Monomial058 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient065Monomial068 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient065Monomial078 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient065Monomial088 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (100 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (100 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient065Monomial098 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient065Monomial108 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient065Monomial118 }
]

private theorem tropicalComponentAQuotient065_source_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient065ReductionUse8 k).sourceExponent
        (tropicalComponentAQuotient065ReductionUse8 k).coefficient) = tropicalComponentAQuotientIntermediate8 65 := by
  decide

private theorem tropicalComponentAQuotient065_target_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient065ReductionUse8 k).targetExponent
        (signedCoefficient (tropicalComponentAQuotient065ReductionUse8 k).reduction.signExponent
          (tropicalComponentAQuotient065ReductionUse8 k).coefficient)) =
      (1 : ℤ) • tropicalComponentAQuotientRelation8 65 := by
  decide

/-- Exact normalized character reduction for quotient row 65. -/
def tropicalComponentAQuotientReductionCertificate8_065 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 65)
      (tropicalComponentAQuotientRelation8 65) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentAQuotient065ReductionUse8
    source_eq := tropicalComponentAQuotient065_source_eq
    target_eq := tropicalComponentAQuotient065_target_eq
  }

theorem tropicalComponentAQuotientRelation8_065_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientRelation8 65).Holds
      (tropicalSupportWeight8 W) := by
  have hintermediate :
      (tropicalComponentAQuotientIntermediate8 65).Holds
        (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 65)
      tropicalComponentAQuotientShiftedCertificate8_065
      (tropicalComponentAQuotientReducedSources8_hold hSupport hEq hChars)
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientIntermediate8 65)
    (tropicalComponentAQuotientRelation8 65)
    tropicalComponentAQuotientReductionCertificate8_065
    hChars hintermediate

end

end MonochromaticQuantumGraphs.N8D3
