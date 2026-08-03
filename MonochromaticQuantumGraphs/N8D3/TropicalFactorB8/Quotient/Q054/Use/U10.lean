import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q054.Monomial.M10
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Quotient 54, reduction use 10
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient054

/-- One row-local reduction use, isolated after its monomial proof. -/
def use10 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (1 : ℤ)
    monomial10

end TropicalFactorB8.Internal.Quotient054

end

end MonochromaticQuantumGraphs.N8D3
