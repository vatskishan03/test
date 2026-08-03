import MonochromaticQuantumGraphs.LaurentPolynomialCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Coordinates
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch0Derivative8

/-!
# Eight official terminal source rows for N8D3

Only the eight coloring codes and their six-to-nine active matching indices
are stored.  Every Laurent monomial is reconstructed from `matchingEdges8`.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Official indices in the 1,605-row terminal EqSystem table. -/
def tropicalTerminalOfficialIndex8 : Fin 8 → Fin 1605 :=
  ![65, 73, 74, 75, 77, 437, 874, 1213]

/-- Little-endian ternary coloring codes of the eight required rows. -/
def tropicalTerminalColoringCode8 : Fin 8 → Fin 6561 :=
  ![733, 756, 758, 759, 761, 1462, 2917, 3646]

/-- Reconstruct one official terminal coloring from its ternary code. -/
def tropicalTerminalColoring8 (r : Fin 8) : Fin 8 → Fin 3 :=
  tropicalColoringOfCode8 (tropicalTerminalColoringCode8 r)

/-- Precisely the supported official matching columns at each source row. -/
def tropicalTerminalMatchingSet8 : Fin 8 → Finset (Fin 105) :=
  ![
    {0, 1, 6, 21, 24, 25, 40, 69, 84},
    {0, 1, 6, 21, 24, 40, 43, 51, 54},
    {0, 1, 6, 21, 24, 40, 43},
    {0, 1, 6, 21, 24, 40, 51, 54},
    {0, 1, 6, 21, 24, 40},
    {0, 1, 6, 21, 24, 25, 40, 69},
    {0, 1, 6, 21, 24, 25, 40, 69, 84},
    {0, 1, 6, 21, 24, 25, 40, 69}
  ]

/-- A terminal source relation reconstructed from the existing matching table. -/
def tropicalTerminalRelation8 (r : Fin 8) : LaurentPolynomial (Fin 144) :=
  ∑ m ∈ tropicalTerminalMatchingSet8 r,
    Finsupp.single
      (tropicalMatchingLocalExponent8 (tropicalTerminalColoring8 r) m) 1

/-- Independently generated sparse expansions used by the certificate shards. -/
def tropicalTerminalExplicitRelation8 : Fin 8 → LaurentPolynomial (Fin 144) :=
  ![
    (
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ)
  ),
    (
    Finsupp.single (Pi.single 0 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 0 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 0 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 9 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 9 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 19 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 19 (1 : ℤ) + Pi.single 56 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 108 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 27 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 27 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ)
  ),
    (
    Finsupp.single (Pi.single 6 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 6 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 6 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 15 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 15 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 25 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 25 (1 : ℤ) + Pi.single 56 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 108 (1 : ℤ)) (1 : ℤ)
  ),
    (
    Finsupp.single (Pi.single 1 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 1 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 1 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 9 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 9 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 19 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 27 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 27 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ)
  ),
    (
    Finsupp.single (Pi.single 7 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 7 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 7 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 15 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 15 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 25 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ)
  ),
    (
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 141 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 141 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 141 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (1 : ℤ)
  ),
    (
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ)
  ),
    (
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 142 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 142 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 142 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 21 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ) +
    Finsupp.single (Pi.single 28 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (1 : ℤ)
  )
  ]

end

end MonochromaticQuantumGraphs.N8D3
