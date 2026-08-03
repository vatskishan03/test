import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S014.Monomial.M00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Source 14, reduction use 0
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source014

/-- One row-local reduction use, isolated after its monomial proof. -/
def use00 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (1 : ℤ)
    monomial00

end TropicalFactorB8.Internal.Source014

end

end MonochromaticQuantumGraphs.N8D3
