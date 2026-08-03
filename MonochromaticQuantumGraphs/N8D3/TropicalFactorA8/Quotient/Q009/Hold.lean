import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q009.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S007.Hold
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S048.Hold

/-!
# Component-A quotient row 9: exactly two source holds
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient009

theorem hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    relation.Holds (tropicalSupportWeight8 W) := by
  have hsources : ∀ s : Fin 2,
      (shiftedSources s).Holds (tropicalSupportWeight8 W) := by
    intro s
    fin_cases s
    · simpa [shiftedSources] using
        TropicalFactorA8.Internal.Source007.hold hSupport hEq hChars
    · simpa [shiftedSources] using
        TropicalFactorA8.Internal.Source048.hold hSupport hEq hChars
  have hintermediate :
      intermediate.Holds (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      shiftedSources intermediate
      tropicalComponentAQuotientShiftedCertificate8_009
      hsources
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8 intermediate relation
    tropicalComponentAQuotientReductionCertificate8_009
    hChars hintermediate

end TropicalFactorA8.Internal.Quotient009

/-- Public quotient-hold API for row 9. -/
theorem tropicalComponentAQuotientRelation8_009_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    TropicalFactorA8.Internal.Quotient009.relation.Holds (tropicalSupportWeight8 W) :=
  TropicalFactorA8.Internal.Quotient009.hold hSupport hEq hChars

end

end MonochromaticQuantumGraphs.N8D3
