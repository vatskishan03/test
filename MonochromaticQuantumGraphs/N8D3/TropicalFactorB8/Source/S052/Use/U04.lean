import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S052.Monomial.M04
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Source 52, reduction use 4
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source052

/-- One row-local reduction use, isolated after its monomial proof. -/
def use04 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (1 : ℤ)
    monomial04

end TropicalFactorB8.Internal.Source052

end

end MonochromaticQuantumGraphs.N8D3
