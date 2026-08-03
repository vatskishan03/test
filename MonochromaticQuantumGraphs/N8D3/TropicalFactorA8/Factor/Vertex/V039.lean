import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core

/-!
# Row-local raw Component-A factor 39
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Vertex039

/-- Exact row-local raw factor 39. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (-1 : ℤ) +
        Pi.single (71 : Fin 144) (-1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ)), signExponent := (0 : ℤ) }

end TropicalFactorA8.Internal.Vertex039

end

end MonochromaticQuantumGraphs.N8D3
