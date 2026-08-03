import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E051.Monomial.M03
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Factor 51, reduction use 3
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor051

/-- One row-local reduction use, isolated after its monomial proof. -/
def use03 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (1 : ℤ)
    monomial03

end TropicalFactorB8.Internal.Factor051

end

end MonochromaticQuantumGraphs.N8D3
