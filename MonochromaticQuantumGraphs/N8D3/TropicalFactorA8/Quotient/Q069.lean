import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source

/-!
# Component-A quotient row 69

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

private def tropicalComponentAQuotient069ShiftedUse8 :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin 116) (Fin 144) :=
![
  { source := 111
      scale := (1 : ℤ)
      shift := (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ)) },
  { source := 114
      scale := (-1 : ℤ)
      shift := (0 : LaurentExponent (Fin 144)) }
]

private theorem tropicalComponentAQuotient069_shifted_eq :
    (∑ k : Fin 2, (tropicalComponentAQuotient069ShiftedUse8 k).scale •
      LaurentPolynomial.translate (tropicalComponentAQuotient069ShiftedUse8 k).shift
        (tropicalComponentAQuotientReducedSource8
          (tropicalComponentAQuotient069ShiftedUse8 k).source)) =
      tropicalComponentAQuotientIntermediate8 69 := by
  decide

/-- Exact two-source shifted combination for quotient row 69. -/
def tropicalComponentAQuotientShiftedCertificate8_069 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 69) where
  use := tropicalComponentAQuotient069ShiftedUse8
  combination_eq := tropicalComponentAQuotient069_shifted_eq

private def tropicalComponentAQuotient069Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient069Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient069Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient069Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient069Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient069Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient069Monomial068 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient069Monomial078 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient069Monomial088 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient069Monomial098 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient069Monomial108 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient069Monomial118 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient069ReductionUse8 :
    Fin 12 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient069Monomial008 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient069Monomial018 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient069Monomial028 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient069Monomial038 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient069Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient069Monomial058 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient069Monomial068 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient069Monomial078 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient069Monomial088 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient069Monomial098 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (133 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient069Monomial108 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient069Monomial118 }
]

private theorem tropicalComponentAQuotient069_source_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient069ReductionUse8 k).sourceExponent
        (tropicalComponentAQuotient069ReductionUse8 k).coefficient) = tropicalComponentAQuotientIntermediate8 69 := by
  decide

private theorem tropicalComponentAQuotient069_target_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient069ReductionUse8 k).targetExponent
        (signedCoefficient (tropicalComponentAQuotient069ReductionUse8 k).reduction.signExponent
          (tropicalComponentAQuotient069ReductionUse8 k).coefficient)) =
      (1 : ℤ) • tropicalComponentAQuotientRelation8 69 := by
  decide

/-- Exact normalized character reduction for quotient row 69. -/
def tropicalComponentAQuotientReductionCertificate8_069 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 69)
      (tropicalComponentAQuotientRelation8 69) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentAQuotient069ReductionUse8
    source_eq := tropicalComponentAQuotient069_source_eq
    target_eq := tropicalComponentAQuotient069_target_eq
  }

theorem tropicalComponentAQuotientRelation8_069_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientRelation8 69).Holds
      (tropicalSupportWeight8 W) := by
  have hintermediate :
      (tropicalComponentAQuotientIntermediate8 69).Holds
        (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 69)
      tropicalComponentAQuotientShiftedCertificate8_069
      (tropicalComponentAQuotientReducedSources8_hold hSupport hEq hChars)
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientIntermediate8 69)
    (tropicalComponentAQuotientRelation8 69)
    tropicalComponentAQuotientReductionCertificate8_069
    hChars hintermediate

end

end MonochromaticQuantumGraphs.N8D3
