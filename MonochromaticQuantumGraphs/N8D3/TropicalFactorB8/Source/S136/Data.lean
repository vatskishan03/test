import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row4.Data

/-!
# Row-local data for Component-B source reduction 136
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source136

/-- Global retained index represented by this row-local shard. -/
def retainedIndex : Fin 560 := 519

/-- Exact semantic source polynomial without an all-row dispatcher. -/
def sourcePolynomial : LaurentPolynomial (Fin 144) :=
  tropicalOverlapRelation8Row319

/-- Exact normalized target for source reduction 136. -/
def reduced : LaurentPolynomial (Fin 144) :=
  (Finsupp.single (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (142 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (142 : Fin 144) (1 : ℤ)) (-1 : ℤ))

end TropicalFactorB8.Internal.Source136

end

end MonochromaticQuantumGraphs.N8D3
