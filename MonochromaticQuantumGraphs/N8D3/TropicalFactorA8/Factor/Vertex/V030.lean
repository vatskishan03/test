import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core

/-!
# Row-local raw Component-A factor 30
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Vertex030

/-- Exact row-local raw factor 30. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (86 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (105 : Fin 144) (-1 : ℤ)), signExponent := (0 : ℤ) }

end TropicalFactorA8.Internal.Vertex030

end

end MonochromaticQuantumGraphs.N8D3
