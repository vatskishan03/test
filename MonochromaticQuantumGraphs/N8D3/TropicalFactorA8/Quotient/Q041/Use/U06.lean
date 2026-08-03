import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q041.Monomial.M06
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.UseCore

/-!
# Component-A quotient 41, reduction use 6

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

namespace TropicalFactorA8.Internal.Quotient041

def use06 :
    CharacterReductionUse tropicalComponentACharacter8 :=
  TropicalFactorA8.Internal.useOfReduction
    (-1 : ℤ)
    monomial06

end TropicalFactorA8.Internal.Quotient041

end

end MonochromaticQuantumGraphs.N8D3
