import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source

/-!
# Component-A quotient row 33

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

private def tropicalComponentAQuotient033ShiftedUse8 :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin 116) (Fin 144) :=
![
  { source := 34
      scale := (1 : ℤ)
      shift := (Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ)) },
  { source := 65
      scale := (-1 : ℤ)
      shift := (0 : LaurentExponent (Fin 144)) }
]

private theorem tropicalComponentAQuotient033_shifted_eq :
    (∑ k : Fin 2, (tropicalComponentAQuotient033ShiftedUse8 k).scale •
      LaurentPolynomial.translate (tropicalComponentAQuotient033ShiftedUse8 k).shift
        (tropicalComponentAQuotientReducedSource8
          (tropicalComponentAQuotient033ShiftedUse8 k).source)) =
      tropicalComponentAQuotientIntermediate8 33 := by
  decide

/-- Exact two-source shifted combination for quotient row 33. -/
def tropicalComponentAQuotientShiftedCertificate8_033 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 33) where
  use := tropicalComponentAQuotient033ShiftedUse8
  combination_eq := tropicalComponentAQuotient033_shifted_eq

private def tropicalComponentAQuotient033Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ)) (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient033Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient033Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient033Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (105 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (105 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient033Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient033Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient033Monomial068 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ)) (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient033Monomial078 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient033Monomial088 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient033Monomial098 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient033Monomial108 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (105 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (105 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient033Monomial118 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient033ReductionUse8 :
    Fin 12 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient033Monomial008 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient033Monomial018 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient033Monomial028 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (105 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (105 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient033Monomial038 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient033Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient033Monomial058 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient033Monomial068 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient033Monomial078 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient033Monomial088 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient033Monomial098 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (105 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (105 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient033Monomial108 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient033Monomial118 }
]

private theorem tropicalComponentAQuotient033_source_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient033ReductionUse8 k).sourceExponent
        (tropicalComponentAQuotient033ReductionUse8 k).coefficient) = tropicalComponentAQuotientIntermediate8 33 := by
  decide

private theorem tropicalComponentAQuotient033_target_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient033ReductionUse8 k).targetExponent
        (signedCoefficient (tropicalComponentAQuotient033ReductionUse8 k).reduction.signExponent
          (tropicalComponentAQuotient033ReductionUse8 k).coefficient)) =
      (1 : ℤ) • tropicalComponentAQuotientRelation8 33 := by
  decide

/-- Exact normalized character reduction for quotient row 33. -/
def tropicalComponentAQuotientReductionCertificate8_033 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 33)
      (tropicalComponentAQuotientRelation8 33) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentAQuotient033ReductionUse8
    source_eq := tropicalComponentAQuotient033_source_eq
    target_eq := tropicalComponentAQuotient033_target_eq
  }

theorem tropicalComponentAQuotientRelation8_033_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientRelation8 33).Holds
      (tropicalSupportWeight8 W) := by
  have hintermediate :
      (tropicalComponentAQuotientIntermediate8 33).Holds
        (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 33)
      tropicalComponentAQuotientShiftedCertificate8_033
      (tropicalComponentAQuotientReducedSources8_hold hSupport hEq hChars)
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientIntermediate8 33)
    (tropicalComponentAQuotientRelation8 33)
    tropicalComponentAQuotientReductionCertificate8_033
    hChars hintermediate

end

end MonochromaticQuantumGraphs.N8D3
