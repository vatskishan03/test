import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q036.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S059.Hold
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S070.Hold

/-!
# Quotient 36 local hold from exactly two source rows
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient036

/-- Row-local semantic hold for quotient relation 36. -/
theorem hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    relation.Holds (tropicalSupportWeight8 W) := by
  have hsources : ∀ s : Fin 2,
      (shiftedSources s).Holds (tropicalSupportWeight8 W) := by
    intro s
    fin_cases s
    · simpa [shiftedSources] using
        TropicalFactorB8.Internal.Source059.hold hSupport hEq hChars
    · simpa [shiftedSources] using
        TropicalFactorB8.Internal.Source070.hold hSupport hEq hChars
  have hintermediate :
      intermediate.Holds (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      shiftedSources intermediate
      tropicalComponentBQuotientShiftedCertificate8_036
      hsources
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8 intermediate relation
    tropicalComponentBQuotientReductionCertificate8_036
    hChars hintermediate

end TropicalFactorB8.Internal.Quotient036

end

end MonochromaticQuantumGraphs.N8D3
