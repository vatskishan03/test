import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S099.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8

/-!
# Component-A source reduction 99: semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private theorem tropicalComponentASourceOriginal8_099_eq_retained :
    tropicalComponentAQuotientOriginalSource8 99 =
      tropicalRetainedRelation8
        (tropicalComponentAQuotientSourceIndex8 99) := by
  change tropicalComponentAQuotientOriginalSource8 99 = tropicalOverlapRelation8Row269
  simp [tropicalComponentAQuotientOriginalSource8, tropicalOverlapRelation8Row269,
    tropicalOverlapDegreeFiveExponent8] <;> abel

/-- Exact normalized reduction of retained source 99, preserving the
public type of the original monolithic certificate. -/
def tropicalComponentASourceReductionCertificate8_099 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 99))
      (tropicalComponentAQuotientReducedSource8 99) where
  unit := TropicalFactorA8.Internal.Source099.certificate.unit
  unit_ne_zero := TropicalFactorA8.Internal.Source099.certificate.unit_ne_zero
  reduction := {
    use := TropicalFactorA8.Internal.Source099.use
    source_eq := TropicalFactorA8.Internal.Source099.source_eq.trans
      tropicalComponentASourceOriginal8_099_eq_retained
    target_eq := TropicalFactorA8.Internal.Source099.target_eq
  }

theorem tropicalComponentASourceReduced8_099_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 99).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 99))
    (tropicalComponentAQuotientReducedSource8 99)
    tropicalComponentASourceReductionCertificate8_099 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 99))

end

end MonochromaticQuantumGraphs.N8D3
