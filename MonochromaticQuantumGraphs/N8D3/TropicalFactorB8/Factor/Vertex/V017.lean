import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core

/-!
# Row-local raw Component-B factor 17
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Vertex017

/-- Exact row-local raw factor 17. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (-1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ)), signExponent := (0 : ℤ) }

end TropicalFactorB8.Internal.Vertex017

end

end MonochromaticQuantumGraphs.N8D3
