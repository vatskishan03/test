import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q062.Monomial.M06
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.UseCore

/-!
# Quotient 62, reduction use 6
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient062

/-- One row-local reduction use, isolated after its monomial proof. -/
def use06 :
    CharacterReductionUse tropicalComponentBCharacter8 :=
  TropicalFactorB8.Internal.useOfReduction
    (-1 : ℤ)
    monomial06

end TropicalFactorB8.Internal.Quotient062

end

end MonochromaticQuantumGraphs.N8D3
