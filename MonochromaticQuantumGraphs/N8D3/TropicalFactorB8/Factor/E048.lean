import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient

/-!
# Component-B raw factor edge 48

The four source terms are reduced to the exact translated product of raw
factors 14 and 44.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private def tropicalComponentBFactorEdge048Monomial008 :
    MonomialReductionCertificate tropicalComponentBCharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentBWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentBFactorEdge048Monomial018 :
    MonomialReductionCertificate tropicalComponentBCharacter8
      (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentBWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentBFactorEdge048Monomial028 :
    MonomialReductionCertificate tropicalComponentBCharacter8
      (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentBWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentBFactorEdge048Monomial038 :
    MonomialReductionCertificate tropicalComponentBCharacter8
      (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentBWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentBFactorEdge048Use8 :
    Fin 4 → CharacterReductionUse tropicalComponentBCharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentBFactorEdge048Monomial008 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentBFactorEdge048Monomial018 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentBFactorEdge048Monomial028 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentBFactorEdge048Monomial038 }
]

private theorem tropicalComponentBFactorEdge048_source_eq :
    (∑ k : Fin 4,
      Finsupp.single (tropicalComponentBFactorEdge048Use8 k).sourceExponent
        (tropicalComponentBFactorEdge048Use8 k).coefficient) =
      tropicalComponentBQuotientRelation8 52 := by
  decide

private theorem tropicalComponentBFactorEdge048_target_eq :
    (∑ k : Fin 4,
      Finsupp.single (tropicalComponentBFactorEdge048Use8 k).targetExponent
        (signedCoefficient (tropicalComponentBFactorEdge048Use8 k).reduction.signExponent
          (tropicalComponentBFactorEdge048Use8 k).coefficient)) =
      (1 : ℤ) • LaurentPolynomial.translate (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) ((tropicalComponentBRawFactor8 14).factorProductPolynomial (tropicalComponentBRawFactor8 44)) := by
  decide

/-- Exact Laurent factor certificate for raw edge 48. -/
def tropicalComponentBFactorCertificate8_048 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentBCharacter8
      (tropicalComponentBQuotientRelation8 52)
      (tropicalComponentBRawFactor8 14)
      (tropicalComponentBRawFactor8 44) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
  reduction := {
    use := tropicalComponentBFactorEdge048Use8
    source_eq := tropicalComponentBFactorEdge048_source_eq
    target_eq := tropicalComponentBFactorEdge048_target_eq
  }

theorem tropicalComponentBRawFactorEdgeProduct8_048
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 14).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 44).factorValue
        (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8
    (tropicalComponentBQuotientRelation8 52)
    (tropicalComponentBRawFactor8 14)
    (tropicalComponentBRawFactor8 44)
    tropicalComponentBFactorCertificate8_048 hChars
    (tropicalComponentBQuotientRelations8_hold hSupport hEq hChars 52)

end

end MonochromaticQuantumGraphs.N8D3
