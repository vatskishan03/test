import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data

/-!
# Component-A normalized source reduction 56

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

private def tropicalComponentASourceReduction056Monomial008 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction056Monomial018 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (112 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (1 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentASourceReduction056Monomial028 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
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

private def tropicalComponentASourceReduction056Monomial038 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (112 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (1 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
]
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }

private def tropicalComponentASourceReduction056Monomial048 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentASourceReduction056Monomial058 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) where
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

private def tropicalComponentASourceReduction056Use8 :
    Fin 6 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction056Monomial008 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (112 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction056Monomial018 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction056Monomial028 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (112 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction056Monomial038 },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction056Monomial048 },
  { coefficient := (-1 : ℤ)
      sourceExponent := (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
      reduction := tropicalComponentASourceReduction056Monomial058 }
]

private theorem tropicalComponentASourceReduction056_source_eq :
    (∑ k : Fin 6,
      Finsupp.single (tropicalComponentASourceReduction056Use8 k).sourceExponent
        (tropicalComponentASourceReduction056Use8 k).coefficient) = tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 56) := by
  decide

private theorem tropicalComponentASourceReduction056_target_eq :
    (∑ k : Fin 6,
      Finsupp.single (tropicalComponentASourceReduction056Use8 k).targetExponent
        (signedCoefficient (tropicalComponentASourceReduction056Use8 k).reduction.signExponent
          (tropicalComponentASourceReduction056Use8 k).coefficient)) =
      (-1 : ℤ) • tropicalComponentAQuotientReducedSource8 56 := by
  decide

/-- Exact normalized reduction of retained source 56. -/
def tropicalComponentASourceReductionCertificate8_056 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 56))
      (tropicalComponentAQuotientReducedSource8 56) where
  unit := (-1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := tropicalComponentASourceReduction056Use8
    source_eq := tropicalComponentASourceReduction056_source_eq
    target_eq := tropicalComponentASourceReduction056_target_eq
  }

theorem tropicalComponentASourceReduced8_056_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 56).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 56))
    (tropicalComponentAQuotientReducedSource8 56)
    tropicalComponentASourceReductionCertificate8_056 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 56))

end

end MonochromaticQuantumGraphs.N8D3
