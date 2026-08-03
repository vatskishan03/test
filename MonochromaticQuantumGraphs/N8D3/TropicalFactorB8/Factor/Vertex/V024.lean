import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core

/-!
# Row-local raw Component-B factor 24
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Vertex024

/-- Exact row-local raw factor 24. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (-1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (-1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ)), signExponent := (1 : ℤ) }

end TropicalFactorB8.Internal.Vertex024

end

end MonochromaticQuantumGraphs.N8D3
