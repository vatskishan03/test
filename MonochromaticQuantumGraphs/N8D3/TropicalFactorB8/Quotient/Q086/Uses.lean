import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Use.U00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Use.U01
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Use.U02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Use.U03
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Use.U04
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Use.U05
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Use.U06
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Use.U07
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Use.U08
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Use.U09
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Use.U10
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Use.U11

/-!
# Quotient 86 reduction-use collector
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient086

/-- Decision-free dispatcher over row-local reduction uses. -/
def uses : Fin 12 →
    CharacterReductionUse tropicalComponentBCharacter8 :=
![
  use00,
  use01,
  use02,
  use03,
  use04,
  use05,
  use06,
  use07,
  use08,
  use09,
  use10,
  use11
]

end TropicalFactorB8.Internal.Quotient086

end

end MonochromaticQuantumGraphs.N8D3
