import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core

/-!
# Row-local raw Component-A factor 7
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Vertex007

/-- Exact row-local raw factor 7. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (-1 : ℤ) +
        Pi.single (99 : Fin 144) (-1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ)), signExponent := (0 : ℤ) }

end TropicalFactorA8.Internal.Vertex007

end

end MonochromaticQuantumGraphs.N8D3
