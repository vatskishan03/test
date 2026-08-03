import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S015.Monomial.M02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.UseCore

/-!
# Component-A source 15, reduction use 2

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

namespace TropicalFactorA8.Internal.Source015

def use02 :
    CharacterReductionUse tropicalComponentACharacter8 :=
  TropicalFactorA8.Internal.useOfReduction
    (-1 : ℤ)
    monomial02

end TropicalFactorA8.Internal.Source015

end

end MonochromaticQuantumGraphs.N8D3
