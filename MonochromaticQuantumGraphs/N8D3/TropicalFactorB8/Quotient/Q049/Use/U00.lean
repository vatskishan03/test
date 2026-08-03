import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q049.Monomial.M00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Quotient 49, reduction use 0
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient049

/-- One row-local reduction use, isolated after its monomial proof. -/
def use00 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (1 : ℤ)
    monomial00

end TropicalFactorB8.Internal.Quotient049

end

end MonochromaticQuantumGraphs.N8D3
