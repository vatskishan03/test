import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core

/-!
# Row-local raw Component-A factor 46
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Vertex046

/-- Exact row-local raw factor 46. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (7 : Fin 144) (-1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ)), signExponent := (0 : ℤ) }

end TropicalFactorA8.Internal.Vertex046

end

end MonochromaticQuantumGraphs.N8D3
