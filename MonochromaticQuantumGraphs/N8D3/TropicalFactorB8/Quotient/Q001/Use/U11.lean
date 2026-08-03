import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q001.Monomial.M11
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Quotient 1, reduction use 11
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient001

/-- One row-local reduction use, isolated after its monomial proof. -/
def use11 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (-1 : ℤ)
    monomial11

end TropicalFactorB8.Internal.Quotient001

end

end MonochromaticQuantumGraphs.N8D3
