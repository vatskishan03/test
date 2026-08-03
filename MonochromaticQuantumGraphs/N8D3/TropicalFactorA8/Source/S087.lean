import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data

/-!
# Component-A normalized source reduction 87

All six termwise character implications and both polynomial equalities are
replayed by Lean.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private def tropicalComponentASourceReduction087Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction087Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentASourceReduction087Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction087Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction087Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentASourceReduction087Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction087Use8 :
    Fin 6 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction087Monomial008 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction087Monomial018 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction087Monomial028 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction087Monomial038 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction087Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction087Monomial058 }
]

private theorem tropicalComponentASourceReduction087_source_eq :
    (∑ k : Fin 6,
      Finsupp.single (tropicalComponentASourceReduction087Use8 k).sourceExponent
        (tropicalComponentASourceReduction087Use8 k).coefficient) = tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 87) := by
  decide

private theorem tropicalComponentASourceReduction087_target_eq :
    (∑ k : Fin 6,
      Finsupp.single (tropicalComponentASourceReduction087Use8 k).targetExponent
        (signedCoefficient (tropicalComponentASourceReduction087Use8 k).reduction.signExponent
          (tropicalComponentASourceReduction087Use8 k).coefficient)) =
      (-1 : ℤ) • tropicalComponentAQuotientReducedSource8 87 := by
  decide

/-- Exact normalized reduction of retained source 87. -/
def tropicalComponentASourceReductionCertificate8_087 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 87))
      (tropicalComponentAQuotientReducedSource8 87) where
  unit := (-1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentASourceReduction087Use8
    source_eq := tropicalComponentASourceReduction087_source_eq
    target_eq := tropicalComponentASourceReduction087_target_eq
  }

theorem tropicalComponentASourceReduced8_087_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 87).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 87))
    (tropicalComponentAQuotientReducedSource8 87)
    tropicalComponentASourceReductionCertificate8_087 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 87))

end

end MonochromaticQuantumGraphs.N8D3
