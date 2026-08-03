import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S105.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8

/-!
# Component-A source reduction 105: semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private theorem tropicalComponentASourceOriginal8_105_eq_retained :
    tropicalComponentAQuotientOriginalSource8 105 =
      tropicalRetainedRelation8
        (tropicalComponentAQuotientSourceIndex8 105) := by
  change tropicalComponentAQuotientOriginalSource8 105 = tropicalOverlapRelation8Row287
  simp [tropicalComponentAQuotientOriginalSource8, tropicalOverlapRelation8Row287,
    tropicalOverlapDegreeFiveExponent8] <;> abel

/-- Exact normalized reduction of retained source 105, preserving the
public type of the original monolithic certificate. -/
def tropicalComponentASourceReductionCertificate8_105 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 105))
      (tropicalComponentAQuotientReducedSource8 105) where
  unit := TropicalFactorA8.Internal.Source105.certificate.unit
  unit_ne_zero := TropicalFactorA8.Internal.Source105.certificate.unit_ne_zero
  reduction := {
    use := TropicalFactorA8.Internal.Source105.use
    source_eq := TropicalFactorA8.Internal.Source105.source_eq.trans
      tropicalComponentASourceOriginal8_105_eq_retained
    target_eq := TropicalFactorA8.Internal.Source105.target_eq
  }

theorem tropicalComponentASourceReduced8_105_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 105).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 105))
    (tropicalComponentAQuotientReducedSource8 105)
    tropicalComponentASourceReductionCertificate8_105 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 105))

end

end MonochromaticQuantumGraphs.N8D3
