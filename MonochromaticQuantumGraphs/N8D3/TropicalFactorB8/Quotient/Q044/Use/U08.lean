import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q044.Monomial.M08
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Quotient 44, reduction use 8
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient044

/-- One row-local reduction use, isolated after its monomial proof. -/
def use08 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (-1 : ℤ)
    monomial08

end TropicalFactorB8.Internal.Quotient044

end

end MonochromaticQuantumGraphs.N8D3
