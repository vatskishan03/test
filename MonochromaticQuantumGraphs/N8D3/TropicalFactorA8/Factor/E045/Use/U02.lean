import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E045.Monomial.M02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.UseCore

/-!
# Component-A factor 45, reduction use 2

One dependent reduction-use record, isolated after its monomial proof.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Factor045

def use02 :
    CharacterReductionUse tropicalComponentACharacter8 :=
  TropicalFactorA8.Internal.useOfReduction
    (-1 : ℤ)
    monomial02

end TropicalFactorA8.Internal.Factor045

end

end MonochromaticQuantumGraphs.N8D3
