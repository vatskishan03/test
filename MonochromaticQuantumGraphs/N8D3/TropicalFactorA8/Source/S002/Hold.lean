import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S002.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8

/-!
# Component-A source reduction 2: semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private theorem tropicalComponentASourceOriginal8_002_eq_retained :
    tropicalComponentAQuotientOriginalSource8 2 =
      tropicalRetainedRelation8
        (tropicalComponentAQuotientSourceIndex8 2) := by
  change tropicalComponentAQuotientOriginalSource8 2 = tropicalOverlapRelation8Row2
  simp [tropicalComponentAQuotientOriginalSource8, tropicalOverlapRelation8Row2,
    tropicalOverlapDegreeFiveExponent8] <;> abel

/-- Exact normalized reduction of retained source 2, preserving the
public type of the original monolithic certificate. -/
def tropicalComponentASourceReductionCertificate8_002 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 2))
      (tropicalComponentAQuotientReducedSource8 2) where
  unit := TropicalFactorA8.Internal.Source002.certificate.unit
  unit_ne_zero := TropicalFactorA8.Internal.Source002.certificate.unit_ne_zero
  reduction := {
    use := TropicalFactorA8.Internal.Source002.use
    source_eq := TropicalFactorA8.Internal.Source002.source_eq.trans
      tropicalComponentASourceOriginal8_002_eq_retained
    target_eq := TropicalFactorA8.Internal.Source002.target_eq
  }

theorem tropicalComponentASourceReduced8_002_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 2).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 2))
    (tropicalComponentAQuotientReducedSource8 2)
    tropicalComponentASourceReductionCertificate8_002 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 2))

end

end MonochromaticQuantumGraphs.N8D3
