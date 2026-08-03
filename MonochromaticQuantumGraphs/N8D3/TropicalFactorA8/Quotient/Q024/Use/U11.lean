import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q024.Monomial.M11
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.UseCore

/-!
# Component-A quotient 24, reduction use 11

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

namespace TropicalFactorA8.Internal.Quotient024

def use11 :
    CharacterReductionUse tropicalComponentACharacter8 :=
  TropicalFactorA8.Internal.useOfReduction
    (1 : ℤ)
    monomial11

end TropicalFactorA8.Internal.Quotient024

end

end MonochromaticQuantumGraphs.N8D3
