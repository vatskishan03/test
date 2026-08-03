import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S049.Data
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S080.Data

/-!
# Row-local data for Component-B quotient 30
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient030

/-- The two row-local normalized source polynomials. -/
def shiftedSources : Fin 2 → LaurentPolynomial (Fin 144) :=
![
  TropicalFactorB8.Internal.Source049.reduced,
  TropicalFactorB8.Internal.Source080.reduced
]

/-- Exact two-source shifted-combination data. -/
def shiftedUse :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin 2) (Fin 144) :=
![
  { source := 0
      scale := (1 : ℤ)
      shift := (Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ)) },
  { source := 1
      scale := (-1 : ℤ)
      shift := (0 : LaurentExponent (Fin 144)) }
]

/-- Exact aggregate before the final character reduction. -/
def intermediate : LaurentPolynomial (Fin 144) :=
  (Finsupp.single (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (1 : ℤ))

/-- Exact normalized quotient relation. -/
def relation : LaurentPolynomial (Fin 144) :=
  (Finsupp.single (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)) (1 : ℤ))

end TropicalFactorB8.Internal.Quotient030

end

end MonochromaticQuantumGraphs.N8D3
