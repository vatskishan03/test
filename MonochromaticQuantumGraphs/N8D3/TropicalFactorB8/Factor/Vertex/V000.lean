import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core

/-!
# Row-local raw Component-B factor 0
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Vertex000

/-- Exact row-local raw factor 0. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (-1 : ℤ) +
        Pi.single (120 : Fin 144) (-1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)), signExponent := (0 : ℤ) }

end TropicalFactorB8.Internal.Vertex000

end

end MonochromaticQuantumGraphs.N8D3
