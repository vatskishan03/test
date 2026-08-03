import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q034.Monomial.M05
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Quotient 34, reduction use 5
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient034

/-- One row-local reduction use, isolated after its monomial proof. -/
def use05 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (-1 : ℤ)
    monomial05

end TropicalFactorB8.Internal.Quotient034

end

end MonochromaticQuantumGraphs.N8D3
