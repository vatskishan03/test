import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q066.Data
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.Vertex.V044
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.Vertex.V053

/-!
# Row-local data for Component-A factor edge 66
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Factor066

/-- Exact row-local quotient
source for this edge. -/
def sourceRelation : LaurentPolynomial (Fin 144) :=
  TropicalFactorA8.Internal.Quotient066.relation

/-- Left raw-factor endpoint. -/
def leftFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorA8.Internal.Vertex044.row

/-- Right raw-factor endpoint. -/
def rightFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorA8.Internal.Vertex053.row

/-- Exact Laurent translation in the factor certificate. -/
def shift : LaurentExponent (Fin 144) :=
  (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ))

end TropicalFactorA8.Internal.Factor066

end

end MonochromaticQuantumGraphs.N8D3
