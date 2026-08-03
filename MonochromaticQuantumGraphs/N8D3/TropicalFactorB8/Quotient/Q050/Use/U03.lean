import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q050.Monomial.M03
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Quotient 50, reduction use 3
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient050

/-- One row-local reduction use, isolated after its monomial proof. -/
def use03 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (1 : ℤ)
    monomial03

end TropicalFactorB8.Internal.Quotient050

end

end MonochromaticQuantumGraphs.N8D3
