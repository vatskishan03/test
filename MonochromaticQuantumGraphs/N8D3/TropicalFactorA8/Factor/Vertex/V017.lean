import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core

/-!
# Row-local raw Component-A factor 17
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Vertex017

/-- Exact row-local raw factor 17. -/
def row : SignedCharacterRow (Fin 144) :=
  { exponent := (Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (-1 : ℤ) +
        Pi.single (85 : Fin 144) (-1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (-1 : ℤ)), signExponent := (0 : ℤ) }

end TropicalFactorA8.Internal.Vertex017

end

end MonochromaticQuantumGraphs.N8D3
