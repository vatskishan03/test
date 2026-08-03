import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q002.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S002.Hold
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S044.Hold

/-!
# Component-A quotient row 2: exactly two source holds
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient002

theorem hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    relation.Holds (tropicalSupportWeight8 W) := by
  have hsources : ∀ s : Fin 2,
      (shiftedSources s).Holds (tropicalSupportWeight8 W) := by
    intro s
    fin_cases s
    · simpa [shiftedSources] using
        TropicalFactorA8.Internal.Source002.hold hSupport hEq hChars
    · simpa [shiftedSources] using
        TropicalFactorA8.Internal.Source044.hold hSupport hEq hChars
  have hintermediate :
      intermediate.Holds (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      shiftedSources intermediate
      tropicalComponentAQuotientShiftedCertificate8_002
      hsources
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8 intermediate relation
    tropicalComponentAQuotientReductionCertificate8_002
    hChars hintermediate

end TropicalFactorA8.Internal.Quotient002

/-- Public quotient-hold API for row 2. -/
theorem tropicalComponentAQuotientRelation8_002_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    TropicalFactorA8.Internal.Quotient002.relation.Holds (tropicalSupportWeight8 W) :=
  TropicalFactorA8.Internal.Quotient002.hold hSupport hEq hChars

end

end MonochromaticQuantumGraphs.N8D3
