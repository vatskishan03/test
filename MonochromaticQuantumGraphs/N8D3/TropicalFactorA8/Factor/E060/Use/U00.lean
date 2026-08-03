import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E060.Monomial.M00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.UseCore

/-!
# Component-A factor 60, reduction use 0

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

namespace TropicalFactorA8.Internal.Factor060

def use00 :
    CharacterReductionUse tropicalComponentACharacter8 :=
  TropicalFactorA8.Internal.useOfReduction
    (1 : ℤ)
    monomial00

end TropicalFactorA8.Internal.Factor060

end

end MonochromaticQuantumGraphs.N8D3
