import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q023.Use.U00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q023.Use.U01
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q023.Use.U02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q023.Use.U03
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q023.Use.U04
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q023.Use.U05
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q023.Use.U06
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q023.Use.U07
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q023.Use.U08
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q023.Use.U09
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q023.Use.U10
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q023.Use.U11

/-!
# Component-A quotient row 23: reduction-use dispatcher
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient023

def use :
    Fin 12 → CharacterReductionUse tropicalComponentACharacter8 :=
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

end TropicalFactorA8.Internal.Quotient023

end

end MonochromaticQuantumGraphs.N8D3
