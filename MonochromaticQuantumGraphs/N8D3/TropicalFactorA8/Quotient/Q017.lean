import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source

/-!
# Component-A quotient row 17

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

private def tropicalComponentAQuotient017ShiftedUse8 :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin 116) (Fin 144) :=
![
  { source := 14
      scale := (1 : ℤ)
      shift := (Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ)) },
  { source := 53
      scale := (-1 : ℤ)
      shift := (0 : LaurentExponent (Fin 144)) }
]

private theorem tropicalComponentAQuotient017_shifted_eq :
    (∑ k : Fin 2, (tropicalComponentAQuotient017ShiftedUse8 k).scale •
      LaurentPolynomial.translate (tropicalComponentAQuotient017ShiftedUse8 k).shift
        (tropicalComponentAQuotientReducedSource8
          (tropicalComponentAQuotient017ShiftedUse8 k).source)) =
      tropicalComponentAQuotientIntermediate8 17 := by
  decide

/-- Exact two-source shifted combination for quotient row 17. -/
def tropicalComponentAQuotientShiftedCertificate8_017 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 17) where
  use := tropicalComponentAQuotient017ShiftedUse8
  combination_eq := tropicalComponentAQuotient017_shifted_eq

private def tropicalComponentAQuotient017Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient017Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ)) (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient017Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient017Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient017Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient017Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient017Monomial068 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient017Monomial078 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ)) (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient017Monomial088 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient017Monomial098 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient017Monomial108 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient017Monomial118 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient017ReductionUse8 :
    Fin 12 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient017Monomial008 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient017Monomial018 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient017Monomial028 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient017Monomial038 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient017Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient017Monomial058 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient017Monomial068 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient017Monomial078 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient017Monomial088 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient017Monomial098 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient017Monomial108 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient017Monomial118 }
]

private theorem tropicalComponentAQuotient017_source_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient017ReductionUse8 k).sourceExponent
        (tropicalComponentAQuotient017ReductionUse8 k).coefficient) = tropicalComponentAQuotientIntermediate8 17 := by
  decide

private theorem tropicalComponentAQuotient017_target_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient017ReductionUse8 k).targetExponent
        (signedCoefficient (tropicalComponentAQuotient017ReductionUse8 k).reduction.signExponent
          (tropicalComponentAQuotient017ReductionUse8 k).coefficient)) =
      (1 : ℤ) • tropicalComponentAQuotientRelation8 17 := by
  decide

/-- Exact normalized character reduction for quotient row 17. -/
def tropicalComponentAQuotientReductionCertificate8_017 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 17)
      (tropicalComponentAQuotientRelation8 17) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentAQuotient017ReductionUse8
    source_eq := tropicalComponentAQuotient017_source_eq
    target_eq := tropicalComponentAQuotient017_target_eq
  }

theorem tropicalComponentAQuotientRelation8_017_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientRelation8 17).Holds
      (tropicalSupportWeight8 W) := by
  have hintermediate :
      (tropicalComponentAQuotientIntermediate8 17).Holds
        (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 17)
      tropicalComponentAQuotientShiftedCertificate8_017
      (tropicalComponentAQuotientReducedSources8_hold hSupport hEq hChars)
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientIntermediate8 17)
    (tropicalComponentAQuotientRelation8 17)
    tropicalComponentAQuotientReductionCertificate8_017
    hChars hintermediate

end

end MonochromaticQuantumGraphs.N8D3
