import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S067.Use.U00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S067.Use.U01
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S067.Use.U02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S067.Use.U03
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S067.Use.U04
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S067.Use.U05

/-!
# Component-A source reduction 67: use dispatcher
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Source067

def use :
    Fin 6 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  use00,
  use01,
  use02,
  use03,
  use04,
  use05
]

end TropicalFactorA8.Internal.Source067

end

end MonochromaticQuantumGraphs.N8D3
