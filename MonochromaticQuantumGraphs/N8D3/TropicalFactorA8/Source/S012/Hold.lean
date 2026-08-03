import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S012.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8

/-!
# Component-A source reduction 12: semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private theorem tropicalComponentASourceOriginal8_012_eq_retained :
    tropicalComponentAQuotientOriginalSource8 12 =
      tropicalRetainedRelation8
        (tropicalComponentAQuotientSourceIndex8 12) := by
  change tropicalComponentAQuotientOriginalSource8 12 = tropicalOverlapRelation8Row18
  simp [tropicalComponentAQuotientOriginalSource8, tropicalOverlapRelation8Row18,
    tropicalOverlapDegreeFiveExponent8] <;> abel

/-- Exact normalized reduction of retained source 12, preserving the
public type of the original monolithic certificate. -/
def tropicalComponentASourceReductionCertificate8_012 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 12))
      (tropicalComponentAQuotientReducedSource8 12) where
  unit := TropicalFactorA8.Internal.Source012.certificate.unit
  unit_ne_zero := TropicalFactorA8.Internal.Source012.certificate.unit_ne_zero
  reduction := {
    use := TropicalFactorA8.Internal.Source012.use
    source_eq := TropicalFactorA8.Internal.Source012.source_eq.trans
      tropicalComponentASourceOriginal8_012_eq_retained
    target_eq := TropicalFactorA8.Internal.Source012.target_eq
  }

theorem tropicalComponentASourceReduced8_012_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 12).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 12))
    (tropicalComponentAQuotientReducedSource8 12)
    tropicalComponentASourceReductionCertificate8_012 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 12))

end

end MonochromaticQuantumGraphs.N8D3
