import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S037.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8

/-!
# Component-A source reduction 37: semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private theorem tropicalComponentASourceOriginal8_037_eq_retained :
    tropicalComponentAQuotientOriginalSource8 37 =
      tropicalRetainedRelation8
        (tropicalComponentAQuotientSourceIndex8 37) := by
  change tropicalComponentAQuotientOriginalSource8 37 = tropicalOverlapRelation8Row129
  simp [tropicalComponentAQuotientOriginalSource8, tropicalOverlapRelation8Row129,
    tropicalOverlapDegreeFiveExponent8] <;> abel

/-- Exact normalized reduction of retained source 37, preserving the
public type of the original monolithic certificate. -/
def tropicalComponentASourceReductionCertificate8_037 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 37))
      (tropicalComponentAQuotientReducedSource8 37) where
  unit := TropicalFactorA8.Internal.Source037.certificate.unit
  unit_ne_zero := TropicalFactorA8.Internal.Source037.certificate.unit_ne_zero
  reduction := {
    use := TropicalFactorA8.Internal.Source037.use
    source_eq := TropicalFactorA8.Internal.Source037.source_eq.trans
      tropicalComponentASourceOriginal8_037_eq_retained
    target_eq := TropicalFactorA8.Internal.Source037.target_eq
  }

theorem tropicalComponentASourceReduced8_037_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 37).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 37))
    (tropicalComponentAQuotientReducedSource8 37)
    tropicalComponentASourceReductionCertificate8_037 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 37))

end

end MonochromaticQuantumGraphs.N8D3
