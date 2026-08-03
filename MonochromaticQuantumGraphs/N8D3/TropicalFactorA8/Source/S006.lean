import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data

/-!
# Component-A normalized source reduction 6

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

private def tropicalComponentASourceReduction006Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction006Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (109 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (1 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentASourceReduction006Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction006Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (1 : ℤ),
      (-1 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentASourceReduction006Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction006Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (1 : ℤ),
      (-1 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentASourceReduction006Use8 :
    Fin 6 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction006Monomial008 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (109 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction006Monomial018 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction006Monomial028 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction006Monomial038 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction006Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction006Monomial058 }
]

private theorem tropicalComponentASourceReduction006_source_eq :
    (∑ k : Fin 6,
      Finsupp.single (tropicalComponentASourceReduction006Use8 k).sourceExponent
        (tropicalComponentASourceReduction006Use8 k).coefficient) = tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 6) := by
  decide

private theorem tropicalComponentASourceReduction006_target_eq :
    (∑ k : Fin 6,
      Finsupp.single (tropicalComponentASourceReduction006Use8 k).targetExponent
        (signedCoefficient (tropicalComponentASourceReduction006Use8 k).reduction.signExponent
          (tropicalComponentASourceReduction006Use8 k).coefficient)) =
      (-1 : ℤ) • tropicalComponentAQuotientReducedSource8 6 := by
  decide

/-- Exact normalized reduction of retained source 6. -/
def tropicalComponentASourceReductionCertificate8_006 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 6))
      (tropicalComponentAQuotientReducedSource8 6) where
  unit := (-1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentASourceReduction006Use8
    source_eq := tropicalComponentASourceReduction006_source_eq
    target_eq := tropicalComponentASourceReduction006_target_eq
  }

theorem tropicalComponentASourceReduced8_006_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 6).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 6))
    (tropicalComponentAQuotientReducedSource8 6)
    tropicalComponentASourceReductionCertificate8_006 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 6))

end

end MonochromaticQuantumGraphs.N8D3
