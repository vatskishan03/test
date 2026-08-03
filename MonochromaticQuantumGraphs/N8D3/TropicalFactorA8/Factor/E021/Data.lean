import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q056.Data
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.Vertex.V002
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.Vertex.V048

/-!
# Row-local data for Component-A factor edge 21
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Factor021

/-- Exact row-local quotient
source for this edge. -/
def sourceRelation : LaurentPolynomial (Fin 144) :=
  TropicalFactorA8.Internal.Quotient056.relation

/-- Left raw-factor endpoint. -/
def leftFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorA8.Internal.Vertex002.row

/-- Right raw-factor endpoint. -/
def rightFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorA8.Internal.Vertex048.row

/-- Exact Laurent translation in the factor certificate. -/
def shift : LaurentExponent (Fin 144) :=
  (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))

end TropicalFactorA8.Internal.Factor021

end

end MonochromaticQuantumGraphs.N8D3
