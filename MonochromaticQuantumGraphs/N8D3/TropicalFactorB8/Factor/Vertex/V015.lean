import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core

/-!
# Row-local raw Component-B factor 15
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Vertex015

/-- Exact row-local raw factor 15. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (-1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ)), signExponent := (0 : ℤ) }

end TropicalFactorB8.Internal.Vertex015

end

end MonochromaticQuantumGraphs.N8D3
