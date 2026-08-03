import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S047.Data
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S051.Data

/-!
# Row-local data for Component-B quotient 26
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient026

/-- The two row-local normalized source polynomials. -/
def shiftedSources : Fin 2 → LaurentPolynomial (Fin 144) :=
![
  TropicalFactorB8.Internal.Source047.reduced,
  TropicalFactorB8.Internal.Source051.reduced
]

/-- Exact two-source shifted-combination data. -/
def shiftedUse :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin 2) (Fin 144) :=
![
  { source := 0,
      scale := (1 : ℤ),
      shift := (Pi.single (86 : Fin 144) (-1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ)) },
  { source := 1,
      scale := (-1 : ℤ),
      shift := (0 : LaurentExponent (Fin 144)) }
]

/-- Exact aggregate before the final character reduction. -/
def intermediate : LaurentPolynomial (Fin 144) :=
  (Finsupp.single (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (-1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (-1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (-1 : ℤ))

/-- Exact normalized quotient relation. -/
def relation : LaurentPolynomial (Fin 144) :=
  (Finsupp.single (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (-1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (-1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (1 : ℤ))

end TropicalFactorB8.Internal.Quotient026

end

end MonochromaticQuantumGraphs.N8D3
