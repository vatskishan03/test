import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core

/-!
# Row-local raw Component-B factor 37
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Vertex037

/-- Exact row-local raw factor 37. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (-1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ)), signExponent := (1 : ℤ) }

end TropicalFactorB8.Internal.Vertex037

end

end MonochromaticQuantumGraphs.N8D3
