import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q086.Data
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.Vertex.V000
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.Vertex.V048

/-!
# Row-local data for Component-B factor edge 9
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor009

/-- Exact row-local quotient source for this edge. -/
def sourceRelation : LaurentPolynomial (Fin 144) :=
  TropicalFactorB8.Internal.Quotient086.relation

/-- Left raw factor endpoint. -/
def leftFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorB8.Internal.Vertex000.row

/-- Right raw factor endpoint. -/
def rightFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorB8.Internal.Vertex048.row

/-- Exact Laurent translation in the factor certificate. -/
def shift : LaurentExponent (Fin 144) :=
  (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ))

end TropicalFactorB8.Internal.Factor009

end

end MonochromaticQuantumGraphs.N8D3
