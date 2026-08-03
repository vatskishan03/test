import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core

/-!
# Row-local raw Component-B factor 48
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Vertex048

/-- Exact row-local raw factor 48. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (7 : Fin 144) (-1 : ℤ) +
        Pi.single (20 : Fin 144) (-1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ)), signExponent := (0 : ℤ) }

end TropicalFactorB8.Internal.Vertex048

end

end MonochromaticQuantumGraphs.N8D3
