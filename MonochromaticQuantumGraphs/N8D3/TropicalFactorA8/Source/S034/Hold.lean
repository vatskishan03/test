import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S034.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8

/-!
# Component-A source reduction 34: semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private theorem tropicalComponentASourceOriginal8_034_eq_retained :
    tropicalComponentAQuotientOriginalSource8 34 =
      tropicalRetainedRelation8
        (tropicalComponentAQuotientSourceIndex8 34) := by
  change tropicalComponentAQuotientOriginalSource8 34 = tropicalOverlapRelation8Row86
  simp [tropicalComponentAQuotientOriginalSource8, tropicalOverlapRelation8Row86,
    tropicalOverlapDegreeFiveExponent8] <;> abel

/-- Exact normalized reduction of retained source 34, preserving the
public type of the original monolithic certificate. -/
def tropicalComponentASourceReductionCertificate8_034 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 34))
      (tropicalComponentAQuotientReducedSource8 34) where
  unit := TropicalFactorA8.Internal.Source034.certificate.unit
  unit_ne_zero := TropicalFactorA8.Internal.Source034.certificate.unit_ne_zero
  reduction := {
    use := TropicalFactorA8.Internal.Source034.use
    source_eq := TropicalFactorA8.Internal.Source034.source_eq.trans
      tropicalComponentASourceOriginal8_034_eq_retained
    target_eq := TropicalFactorA8.Internal.Source034.target_eq
  }

theorem tropicalComponentASourceReduced8_034_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 34).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 34))
    (tropicalComponentAQuotientReducedSource8 34)
    tropicalComponentASourceReductionCertificate8_034 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 34))

end

end MonochromaticQuantumGraphs.N8D3
