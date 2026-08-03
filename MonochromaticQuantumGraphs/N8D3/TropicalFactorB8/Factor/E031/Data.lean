import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q020.Data
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.Vertex.V006
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.Vertex.V011

/-!
# Row-local data for Component-B factor edge 31
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor031

/-- Exact row-local quotient source for this edge. -/
def sourceRelation : LaurentPolynomial (Fin 144) :=
  TropicalFactorB8.Internal.Quotient020.relation

/-- Left raw factor endpoint. -/
def leftFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorB8.Internal.Vertex006.row

/-- Right raw factor endpoint. -/
def rightFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorB8.Internal.Vertex011.row

/-- Exact Laurent translation in the factor certificate. -/
def shift : LaurentExponent (Fin 144) :=
  (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))

end TropicalFactorB8.Internal.Factor031

end

end MonochromaticQuantumGraphs.N8D3
