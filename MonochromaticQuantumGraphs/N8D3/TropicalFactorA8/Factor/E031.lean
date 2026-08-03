import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient

/-!
# Component-A raw factor edge 31

The four source terms are reduced to the exact translated product of raw
factors 8 and 33.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private def tropicalComponentAFactorEdge031Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAFactorEdge031Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAFactorEdge031Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentAFactorEdge031Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentAFactorEdge031Use8 :
    Fin 4 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAFactorEdge031Monomial008 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAFactorEdge031Monomial018 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAFactorEdge031Monomial028 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentAFactorEdge031Monomial038 }
]

private theorem tropicalComponentAFactorEdge031_source_eq :
    (∑ k : Fin 4,
      Finsupp.single (tropicalComponentAFactorEdge031Use8 k).sourceExponent
        (tropicalComponentAFactorEdge031Use8 k).coefficient) =
      tropicalComponentAQuotientRelation8 3 := by
  decide

private theorem tropicalComponentAFactorEdge031_target_eq :
    (∑ k : Fin 4,
      Finsupp.single (tropicalComponentAFactorEdge031Use8 k).targetExponent
        (signedCoefficient (tropicalComponentAFactorEdge031Use8 k).reduction.signExponent
          (tropicalComponentAFactorEdge031Use8 k).coefficient)) =
      (1 : ℤ) • LaurentPolynomial.translate (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) ((tropicalComponentARawFactor8 8).factorProductPolynomial (tropicalComponentARawFactor8 33)) := by
  decide

/-- Exact Laurent factor certificate for raw edge 31. -/
def tropicalComponentAFactorCertificate8_031 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 3)
      (tropicalComponentARawFactor8 8)
      (tropicalComponentARawFactor8 33) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ))
  reduction := {
    use := tropicalComponentAFactorEdge031Use8
    source_eq := tropicalComponentAFactorEdge031_source_eq
    target_eq := tropicalComponentAFactorEdge031_target_eq
  }

theorem tropicalComponentARawFactorEdgeProduct8_031
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentARawFactor8 8).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentARawFactor8 33).factorValue
        (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientRelation8 3)
    (tropicalComponentARawFactor8 8)
    (tropicalComponentARawFactor8 33)
    tropicalComponentAFactorCertificate8_031 hChars
    (tropicalComponentAQuotientRelations8_hold hSupport hEq hChars 3)

end

end MonochromaticQuantumGraphs.N8D3
