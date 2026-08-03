import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core

/-!
# Row-local raw Component-A factor 52
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Vertex052

/-- Exact row-local raw factor 52. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (7 : Fin 144) (-1 : ℤ) +
        Pi.single (19 : Fin 144) (-1 : ℤ) +
        Pi.single (25 : Fin 144) (1 : ℤ)), signExponent := (0 : ℤ) }

end TropicalFactorA8.Internal.Vertex052

end

end MonochromaticQuantumGraphs.N8D3
