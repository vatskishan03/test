import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q050.Monomial.M01
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.UseCore

/-!
# Component-A quotient 50, reduction use 1

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

namespace TropicalFactorA8.Internal.Quotient050

def use01 :
    CharacterReductionUse tropicalComponentACharacter8 :=
  TropicalFactorA8.Internal.useOfReduction
    (-1 : ℤ)
    monomial01

end TropicalFactorA8.Internal.Quotient050

end

end MonochromaticQuantumGraphs.N8D3
