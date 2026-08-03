import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S088.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8

/-!
# Component-A source reduction 88: semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private theorem tropicalComponentASourceOriginal8_088_eq_retained :
    tropicalComponentAQuotientOriginalSource8 88 =
      tropicalRetainedRelation8
        (tropicalComponentAQuotientSourceIndex8 88) := by
  change tropicalComponentAQuotientOriginalSource8 88 = tropicalOverlapRelation8Row246
  simp [tropicalComponentAQuotientOriginalSource8, tropicalOverlapRelation8Row246,
    tropicalOverlapDegreeFiveExponent8] <;> abel

/-- Exact normalized reduction of retained source 88, preserving the
public type of the original monolithic certificate. -/
def tropicalComponentASourceReductionCertificate8_088 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 88))
      (tropicalComponentAQuotientReducedSource8 88) where
  unit := TropicalFactorA8.Internal.Source088.certificate.unit
  unit_ne_zero := TropicalFactorA8.Internal.Source088.certificate.unit_ne_zero
  reduction := {
    use := TropicalFactorA8.Internal.Source088.use
    source_eq := TropicalFactorA8.Internal.Source088.source_eq.trans
      tropicalComponentASourceOriginal8_088_eq_retained
    target_eq := TropicalFactorA8.Internal.Source088.target_eq
  }

theorem tropicalComponentASourceReduced8_088_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 88).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 88))
    (tropicalComponentAQuotientReducedSource8 88)
    tropicalComponentASourceReductionCertificate8_088 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 88))

end

end MonochromaticQuantumGraphs.N8D3
