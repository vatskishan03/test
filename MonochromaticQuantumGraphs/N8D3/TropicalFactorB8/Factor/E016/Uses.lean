import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E016.Use.U00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E016.Use.U01
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E016.Use.U02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E016.Use.U03

/-!
# Factor 16 reduction-use collector
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor016

/-- Decision-free dispatcher over row-local reduction uses. -/
def uses : Fin 4 →
    CharacterReductionUse tropicalComponentBCharacter8 :=
![
  use00,
  use01,
  use02,
  use03
]

end TropicalFactorB8.Internal.Factor016

end

end MonochromaticQuantumGraphs.N8D3
