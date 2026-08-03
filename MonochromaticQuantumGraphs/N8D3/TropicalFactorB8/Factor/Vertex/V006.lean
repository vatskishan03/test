import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core

/-!
# Row-local raw Component-B factor 6
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Vertex006

/-- Exact row-local raw factor 6. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (-1 : ℤ) +
        Pi.single (126 : Fin 144) (-1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)), signExponent := (0 : ℤ) }

end TropicalFactorB8.Internal.Vertex006

end

end MonochromaticQuantumGraphs.N8D3
