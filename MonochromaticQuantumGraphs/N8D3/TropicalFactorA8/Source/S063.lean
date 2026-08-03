import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data

/-!
# Component-A normalized source reduction 63

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

private def tropicalComponentASourceReduction063Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction063Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (109 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentASourceReduction063Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (105 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction063Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (115 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (1 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentASourceReduction063Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentASourceReduction063Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ)) (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentASourceReduction063Use8 :
    Fin 6 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction063Monomial008 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (109 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction063Monomial018 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (105 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (105 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction063Monomial028 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (115 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction063Monomial038 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction063Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction063Monomial058 }
]

private theorem tropicalComponentASourceReduction063_source_eq :
    (∑ k : Fin 6,
      Finsupp.single (tropicalComponentASourceReduction063Use8 k).sourceExponent
        (tropicalComponentASourceReduction063Use8 k).coefficient) = tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 63) := by
  decide

private theorem tropicalComponentASourceReduction063_target_eq :
    (∑ k : Fin 6,
      Finsupp.single (tropicalComponentASourceReduction063Use8 k).targetExponent
        (signedCoefficient (tropicalComponentASourceReduction063Use8 k).reduction.signExponent
          (tropicalComponentASourceReduction063Use8 k).coefficient)) =
      (-1 : ℤ) • tropicalComponentAQuotientReducedSource8 63 := by
  decide

/-- Exact normalized reduction of retained source 63. -/
def tropicalComponentASourceReductionCertificate8_063 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 63))
      (tropicalComponentAQuotientReducedSource8 63) where
  unit := (-1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentASourceReduction063Use8
    source_eq := tropicalComponentASourceReduction063_source_eq
    target_eq := tropicalComponentASourceReduction063_target_eq
  }

theorem tropicalComponentASourceReduced8_063_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 63).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 63))
    (tropicalComponentAQuotientReducedSource8 63)
    tropicalComponentASourceReductionCertificate8_063 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 63))

end

end MonochromaticQuantumGraphs.N8D3
