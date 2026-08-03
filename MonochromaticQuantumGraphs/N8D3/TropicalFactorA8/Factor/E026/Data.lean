import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q032.Data
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.Vertex.V005
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.Vertex.V034

/-!
# Row-local data for Component-A factor edge 26
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Factor026

/-- Exact row-local quotient
source for this edge. -/
def sourceRelation : LaurentPolynomial (Fin 144) :=
  TropicalFactorA8.Internal.Quotient032.relation

/-- Left raw-factor endpoint. -/
def leftFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorA8.Internal.Vertex005.row

/-- Right raw-factor endpoint. -/
def rightFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorA8.Internal.Vertex034.row

/-- Exact Laurent translation in the factor certificate. -/
def shift : LaurentExponent (Fin 144) :=
  (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (87 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))

end TropicalFactorA8.Internal.Factor026

end

end MonochromaticQuantumGraphs.N8D3
