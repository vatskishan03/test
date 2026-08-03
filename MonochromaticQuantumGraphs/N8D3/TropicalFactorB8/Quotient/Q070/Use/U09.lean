import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q070.Monomial.M09
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Quotient 70, reduction use 9
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient070

/-- One row-local reduction use, isolated after its monomial proof. -/
def use09 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (-1 : ℤ)
    monomial09

end TropicalFactorB8.Internal.Quotient070

end

end MonochromaticQuantumGraphs.N8D3
