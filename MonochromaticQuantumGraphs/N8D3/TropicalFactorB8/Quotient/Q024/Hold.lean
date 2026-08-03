import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q024.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S046.Hold
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S064.Hold

/-!
# Quotient 24 local hold from exactly two source rows
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient024

/-- Row-local semantic hold for quotient relation 24. -/
theorem hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    relation.Holds (tropicalSupportWeight8 W) := by
  have hsources : ∀ s : Fin 2,
      (shiftedSources s).Holds (tropicalSupportWeight8 W) := by
    intro s
    fin_cases s
    · simpa [shiftedSources] using
        TropicalFactorB8.Internal.Source046.hold hSupport hEq hChars
    · simpa [shiftedSources] using
        TropicalFactorB8.Internal.Source064.hold hSupport hEq hChars
  have hintermediate :
      intermediate.Holds (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      shiftedSources intermediate
      tropicalComponentBQuotientShiftedCertificate8_024
      hsources
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8 intermediate relation
    tropicalComponentBQuotientReductionCertificate8_024
    hChars hintermediate

end TropicalFactorB8.Internal.Quotient024

end

end MonochromaticQuantumGraphs.N8D3
