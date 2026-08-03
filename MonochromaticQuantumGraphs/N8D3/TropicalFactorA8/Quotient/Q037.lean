import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source

/-!
# Component-A quotient row 37

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

private def tropicalComponentAQuotient037ShiftedUse8 :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin 116) (Fin 144) :=
![
  { source := 41
      scale := (1 : ℤ)
      shift := (Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ)) },
  { source := 42
      scale := (-1 : ℤ)
      shift := (0 : LaurentExponent (Fin 144)) }
]

private theorem tropicalComponentAQuotient037_shifted_eq :
    (∑ k : Fin 2, (tropicalComponentAQuotient037ShiftedUse8 k).scale •
      LaurentPolynomial.translate (tropicalComponentAQuotient037ShiftedUse8 k).shift
        (tropicalComponentAQuotientReducedSource8
          (tropicalComponentAQuotient037ShiftedUse8 k).source)) =
      tropicalComponentAQuotientIntermediate8 37 := by
  decide

/-- Exact two-source shifted combination for quotient row 37. -/
def tropicalComponentAQuotientShiftedCertificate8_037 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 37) where
  use := tropicalComponentAQuotient037ShiftedUse8
  combination_eq := tropicalComponentAQuotient037_shifted_eq

private def tropicalComponentAQuotient037Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient037Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ)) (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient037Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient037Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient037Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient037Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient037Monomial068 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient037Monomial078 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ)) (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient037Monomial088 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient037Monomial098 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient037Monomial108 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAQuotient037Monomial118 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAQuotient037ReductionUse8 :
    Fin 12 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient037Monomial008 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient037Monomial018 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient037Monomial028 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient037Monomial038 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient037Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient037Monomial058 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient037Monomial068 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient037Monomial078 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient037Monomial088 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (103 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient037Monomial098 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (132 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient037Monomial108 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (106 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAQuotient037Monomial118 }
]

private theorem tropicalComponentAQuotient037_source_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient037ReductionUse8 k).sourceExponent
        (tropicalComponentAQuotient037ReductionUse8 k).coefficient) = tropicalComponentAQuotientIntermediate8 37 := by
  decide

private theorem tropicalComponentAQuotient037_target_eq :
    (∑ k : Fin 12,
      Finsupp.single (tropicalComponentAQuotient037ReductionUse8 k).targetExponent
        (signedCoefficient (tropicalComponentAQuotient037ReductionUse8 k).reduction.signExponent
          (tropicalComponentAQuotient037ReductionUse8 k).coefficient)) =
      (1 : ℤ) • tropicalComponentAQuotientRelation8 37 := by
  decide

/-- Exact normalized character reduction for quotient row 37. -/
def tropicalComponentAQuotientReductionCertificate8_037 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 37)
      (tropicalComponentAQuotientRelation8 37) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentAQuotient037ReductionUse8
    source_eq := tropicalComponentAQuotient037_source_eq
    target_eq := tropicalComponentAQuotient037_target_eq
  }

theorem tropicalComponentAQuotientRelation8_037_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientRelation8 37).Holds
      (tropicalSupportWeight8 W) := by
  have hintermediate :
      (tropicalComponentAQuotientIntermediate8 37).Holds
        (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 37)
      tropicalComponentAQuotientShiftedCertificate8_037
      (tropicalComponentAQuotientReducedSources8_hold hSupport hEq hChars)
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientIntermediate8 37)
    (tropicalComponentAQuotientRelation8 37)
    tropicalComponentAQuotientReductionCertificate8_037
    hChars hintermediate

end

end MonochromaticQuantumGraphs.N8D3
