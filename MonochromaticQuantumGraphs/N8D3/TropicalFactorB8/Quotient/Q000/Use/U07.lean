import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q000.Monomial.M07
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Quotient 0, reduction use 7
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient000

/-- One row-local reduction use, isolated after its monomial proof. -/
def use07 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (-1 : ℤ)
    monomial07

end TropicalFactorB8.Internal.Quotient000

end

end MonochromaticQuantumGraphs.N8D3
