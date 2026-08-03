import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S106.Monomial.M05
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.UseCore

/-!
# Component-A source 106, reduction use 5

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

namespace TropicalFactorA8.Internal.Source106

def use05 :
    CharacterReductionUse tropicalComponentACharacter8 :=
  TropicalFactorA8.Internal.useOfReduction
    (-1 : ℤ)
    monomial05

end TropicalFactorA8.Internal.Source106

end

end MonochromaticQuantumGraphs.N8D3
