import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient

/-!
# Component-B raw factor edge 43

The four source terms are reduced to the exact translated product of raw
factors 11 and 33.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private def tropicalComponentBFactorEdge043Monomial008 :
    MonomialReductionCertificate tropicalComponentBCharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentBFactorEdge043Monomial018 :
    MonomialReductionCertificate tropicalComponentBCharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentBFactorEdge043Monomial028 :
    MonomialReductionCertificate tropicalComponentBCharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentBFactorEdge043Monomial038 :
    MonomialReductionCertificate tropicalComponentBCharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentBFactorEdge043Use8 :
    Fin 4 → CharacterReductionUse tropicalComponentBCharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentBFactorEdge043Monomial008 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentBFactorEdge043Monomial018 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentBFactorEdge043Monomial028 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentBFactorEdge043Monomial038 }
]

private theorem tropicalComponentBFactorEdge043_source_eq :
    (∑ k : Fin 4,
      Finsupp.single (tropicalComponentBFactorEdge043Use8 k).sourceExponent
        (tropicalComponentBFactorEdge043Use8 k).coefficient) =
      tropicalComponentBQuotientRelation8 30 := by
  decide

private theorem tropicalComponentBFactorEdge043_target_eq :
    (∑ k : Fin 4,
      Finsupp.single (tropicalComponentBFactorEdge043Use8 k).targetExponent
        (signedCoefficient (tropicalComponentBFactorEdge043Use8 k).reduction.signExponent
          (tropicalComponentBFactorEdge043Use8 k).coefficient)) =
      (1 : ℤ) • LaurentPolynomial.translate (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) ((tropicalComponentBRawFactor8 11).factorProductPolynomial (tropicalComponentBRawFactor8 33)) := by
  decide

/-- Exact Laurent factor certificate for raw edge 43. -/
def tropicalComponentBFactorCertificate8_043 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentBCharacter8
      (tropicalComponentBQuotientRelation8 30)
      (tropicalComponentBRawFactor8 11)
      (tropicalComponentBRawFactor8 33) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
  reduction := {
    use := tropicalComponentBFactorEdge043Use8
    source_eq := tropicalComponentBFactorEdge043_source_eq
    target_eq := tropicalComponentBFactorEdge043_target_eq
  }

theorem tropicalComponentBRawFactorEdgeProduct8_043
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 11).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 33).factorValue
        (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8
    (tropicalComponentBQuotientRelation8 30)
    (tropicalComponentBRawFactor8 11)
    (tropicalComponentBRawFactor8 33)
    tropicalComponentBFactorCertificate8_043 hChars
    (tropicalComponentBQuotientRelations8_hold hSupport hEq hChars 30)

end

end MonochromaticQuantumGraphs.N8D3
