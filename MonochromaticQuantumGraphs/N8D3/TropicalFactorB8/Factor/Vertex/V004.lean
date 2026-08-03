import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core

/-!
# Row-local raw Component-B factor 4
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Vertex004

/-- Exact row-local raw factor 4. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (-1 : ℤ) +
        Pi.single (116 : Fin 144) (-1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)), signExponent := (0 : ℤ) }

end TropicalFactorB8.Internal.Vertex004

end

end MonochromaticQuantumGraphs.N8D3
