import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S004.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8

/-!
# Source 4 semantic hold (the only retained aggregate import)
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source004

/-- Semantic hold for the row-local normalized source. -/
theorem hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    reduced.Holds (tropicalSupportWeight8 W) := by
  have hsource := tropicalBaseRelations8_hold hSupport hEq (104 : Fin 200)
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8 sourcePolynomial reduced
    tropicalComponentBSourceReductionCertificate8_004
    hChars hsource

end TropicalFactorB8.Internal.Source004

end

end MonochromaticQuantumGraphs.N8D3
