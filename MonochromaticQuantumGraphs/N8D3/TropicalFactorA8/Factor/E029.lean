import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient

/-!
# Component-A raw factor edge 29

The four source terms are reduced to the exact translated product of raw
factors 6 and 36.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private def tropicalComponentAFactorEdge029Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAFactorEdge029Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAFactorEdge029Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAFactorEdge029Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAFactorEdge029Use8 :
    Fin 4 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAFactorEdge029Monomial008 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAFactorEdge029Monomial018 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAFactorEdge029Monomial028 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAFactorEdge029Monomial038 }
]

private theorem tropicalComponentAFactorEdge029_source_eq :
    (∑ k : Fin 4,
      Finsupp.single (tropicalComponentAFactorEdge029Use8 k).sourceExponent
        (tropicalComponentAFactorEdge029Use8 k).coefficient) =
      tropicalComponentAQuotientRelation8 2 := by
  decide

private theorem tropicalComponentAFactorEdge029_target_eq :
    (∑ k : Fin 4,
      Finsupp.single (tropicalComponentAFactorEdge029Use8 k).targetExponent
        (signedCoefficient (tropicalComponentAFactorEdge029Use8 k).reduction.signExponent
          (tropicalComponentAFactorEdge029Use8 k).coefficient)) =
      (1 : ℤ) • LaurentPolynomial.translate (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) ((tropicalComponentARawFactor8 6).factorProductPolynomial (tropicalComponentARawFactor8 36)) := by
  decide

/-- Exact Laurent factor certificate for raw edge 29. -/
def tropicalComponentAFactorCertificate8_029 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 2)
      (tropicalComponentARawFactor8 6)
      (tropicalComponentARawFactor8 36) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
  reduction := {
    use := tropicalComponentAFactorEdge029Use8
    source_eq := tropicalComponentAFactorEdge029_source_eq
    target_eq := tropicalComponentAFactorEdge029_target_eq
  }

theorem tropicalComponentARawFactorEdgeProduct8_029
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentARawFactor8 6).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentARawFactor8 36).factorValue
        (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientRelation8 2)
    (tropicalComponentARawFactor8 6)
    (tropicalComponentARawFactor8 36)
    tropicalComponentAFactorCertificate8_029 hChars
    (tropicalComponentAQuotientRelations8_hold hSupport hEq hChars 2)

end

end MonochromaticQuantumGraphs.N8D3
