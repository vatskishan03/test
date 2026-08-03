import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S048.Monomial.M02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Source 48, reduction use 2
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source048

/-- One row-local reduction use, isolated after its monomial proof. -/
def use02 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (-1 : ℤ)
    monomial02

end TropicalFactorB8.Internal.Source048

end

end MonochromaticQuantumGraphs.N8D3
