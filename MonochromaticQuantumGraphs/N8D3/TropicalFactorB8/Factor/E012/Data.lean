import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q045.Data
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.Vertex.V001
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.Vertex.V027

/-!
# Row-local data for Component-B factor edge 12
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor012

/-- Exact row-local quotient source for this edge. -/
def sourceRelation : LaurentPolynomial (Fin 144) :=
  TropicalFactorB8.Internal.Quotient045.relation

/-- Left raw factor endpoint. -/
def leftFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorB8.Internal.Vertex001.row

/-- Right raw factor endpoint. -/
def rightFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorB8.Internal.Vertex027.row

/-- Exact Laurent translation in the factor certificate. -/
def shift : LaurentExponent (Fin 144) :=
  (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))

end TropicalFactorB8.Internal.Factor012

end

end MonochromaticQuantumGraphs.N8D3
