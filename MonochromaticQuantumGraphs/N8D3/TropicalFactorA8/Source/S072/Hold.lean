import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S072.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8

/-!
# Component-A source reduction 72: semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private theorem tropicalComponentASourceOriginal8_072_eq_retained :
    tropicalComponentAQuotientOriginalSource8 72 =
      tropicalRetainedRelation8
        (tropicalComponentAQuotientSourceIndex8 72) := by
  change tropicalComponentAQuotientOriginalSource8 72 = tropicalOverlapRelation8Row216
  simp [tropicalComponentAQuotientOriginalSource8, tropicalOverlapRelation8Row216,
    tropicalOverlapDegreeFiveExponent8] <;> abel

/-- Exact normalized reduction of retained source 72, preserving the
public type of the original monolithic certificate. -/
def tropicalComponentASourceReductionCertificate8_072 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 72))
      (tropicalComponentAQuotientReducedSource8 72) where
  unit := TropicalFactorA8.Internal.Source072.certificate.unit
  unit_ne_zero := TropicalFactorA8.Internal.Source072.certificate.unit_ne_zero
  reduction := {
    use := TropicalFactorA8.Internal.Source072.use
    source_eq := TropicalFactorA8.Internal.Source072.source_eq.trans
      tropicalComponentASourceOriginal8_072_eq_retained
    target_eq := TropicalFactorA8.Internal.Source072.target_eq
  }

theorem tropicalComponentASourceReduced8_072_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 72).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 72))
    (tropicalComponentAQuotientReducedSource8 72)
    tropicalComponentASourceReductionCertificate8_072 hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 72))

end

end MonochromaticQuantumGraphs.N8D3
