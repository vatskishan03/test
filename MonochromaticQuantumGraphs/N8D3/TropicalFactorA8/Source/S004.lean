import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data

/-!
# Component-A normalized source reduction 4

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

private def tropicalComponentASourceReduction004Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction004Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction004Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction004Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction004Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ)) (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction004Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction004Use8 :
    Fin 6 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction004Monomial008 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction004Monomial018 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction004Monomial028 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction004Monomial038 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (122 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction004Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction004Monomial058 }
]

private theorem tropicalComponentASourceReduction004_source_eq :
    (∑ k : Fin 6,
      Finsupp.single (tropicalComponentASourceReduction004Use8 k).sourceExponent
        (tropicalComponentASourceReduction004Use8 k).coefficient) = tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 4) := by
  decide

private theorem tropicalComponentASourceReduction004_target_eq :
    (∑ k : Fin 6,
      Finsupp.single (tropicalComponentASourceReduction004Use8 k).targetExponent
        (signedCoefficient (tropicalComponentASourceReduction004Use8 k).reduction.signExponent
          (tropicalComponentASourceReduction004Use8 k).coefficient)) =
      (-1 : ℤ) • tropicalComponentAQuotientReducedSource8 4 := by
  decide

/-- Exact normalized reduction of retained source 4. -/
def tropicalComponentASourceReductionCertificate8_004 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 4))
      (tropicalComponentAQuotientReducedSource8 4) where
  unit := (-1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentASourceReduction004Use8
    source_eq := tropicalComponentASourceReduction004_source_eq
    target_eq := tropicalComponentASourceReduction004_target_eq
  }

theorem tropicalComponentASourceReduced8_004_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 4).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 4))
    (tropicalComponentAQuotientReducedSource8 4)
    tropicalComponentASourceReductionCertificate8_004 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 4))

end

end MonochromaticQuantumGraphs.N8D3
