import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E007.Use.U00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E007.Use.U01
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E007.Use.U02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E007.Use.U03

/-!
# Component-A factor edge 7: reduction-use dispatcher
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Factor007

def use :
    Fin 4 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  use00,
  use01,
  use02,
  use03
]

end TropicalFactorA8.Internal.Factor007

end

end MonochromaticQuantumGraphs.N8D3
