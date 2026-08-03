import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S146.Use.U00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S146.Use.U01
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S146.Use.U02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S146.Use.U03
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S146.Use.U04
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S146.Use.U05

/-!
# Source 146 reduction-use collector
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source146

/-- Decision-free dispatcher over row-local reduction uses. -/
def uses : Fin 6 →
    CharacterReductionUse tropicalComponentBCharacter8 :=
![
  use00,
  use01,
  use02,
  use03,
  use04,
  use05
]

end TropicalFactorB8.Internal.Source146

end

end MonochromaticQuantumGraphs.N8D3
