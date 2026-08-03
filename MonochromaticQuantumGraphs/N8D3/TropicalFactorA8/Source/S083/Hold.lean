import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S083.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8

/-!
# Component-A source reduction 83: semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private theorem tropicalComponentASourceOriginal8_083_eq_retained :
    tropicalComponentAQuotientOriginalSource8 83 =
      tropicalRetainedRelation8
        (tropicalComponentAQuotientSourceIndex8 83) := by
  change tropicalComponentAQuotientOriginalSource8 83 = tropicalOverlapRelation8Row235
  simp [tropicalComponentAQuotientOriginalSource8, tropicalOverlapRelation8Row235,
    tropicalOverlapDegreeFiveExponent8] <;> abel

/-- Exact normalized reduction of retained source 83, preserving the
public type of the original monolithic certificate. -/
def tropicalComponentASourceReductionCertificate8_083 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 83))
      (tropicalComponentAQuotientReducedSource8 83) where
  unit := TropicalFactorA8.Internal.Source083.certificate.unit
  unit_ne_zero := TropicalFactorA8.Internal.Source083.certificate.unit_ne_zero
  reduction := {
    use := TropicalFactorA8.Internal.Source083.use
    source_eq := TropicalFactorA8.Internal.Source083.source_eq.trans
      tropicalComponentASourceOriginal8_083_eq_retained
    target_eq := TropicalFactorA8.Internal.Source083.target_eq
  }

theorem tropicalComponentASourceReduced8_083_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 83).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 83))
    (tropicalComponentAQuotientReducedSource8 83)
    tropicalComponentASourceReductionCertificate8_083 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 83))

end

end MonochromaticQuantumGraphs.N8D3
