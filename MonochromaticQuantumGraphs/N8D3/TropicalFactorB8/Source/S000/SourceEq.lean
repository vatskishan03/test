import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S000.Uses
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-!
# Source 0 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source000

/-- Sparse source-polynomial equality for source reduction 0. -/
theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourcePolynomial := by
  have hcolor : tropicalBaseColoring8 100 =
      tropicalColoringOfCode8 2972 := by rfl
  have hexp0 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2972) 0 =
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2972) 0 6 59 98 139
      (by decide) (by decide) (by decide) (by decide)]
  have hexp1 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2972) 1 =
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2972) 1 6 59 108 127
      (by decide) (by decide) (by decide) (by decide)]
  have hexp2 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2972) 6 =
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2972) 6 6 69 88 139
      (by decide) (by decide) (by decide) (by decide)]
  have hexp3 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2972) 21 =
        (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2972) 21 15 38 88 139
      (by decide) (by decide) (by decide) (by decide)]
  have hexp4 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2972) 24 =
        (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2972) 24 15 48 88 127
      (by decide) (by decide) (by decide) (by decide)]
  have hexp5 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2972) 40 =
        (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2972) 40 26 48 69 117
      (by decide) (by decide) (by decide) (by decide)]
  simp [uses, use00,
    use01,
    use02,
    use03,
    use04,
    use05,
    TropicalFactorB8.Internal.useOfReduction, sourcePolynomial,
    tropicalBaseRelation8, Fin.sum_univ_succ, hcolor, hexp0, hexp1, hexp2, hexp3, hexp4, hexp5, tropicalBaseMatching8] <;> abel

end TropicalFactorB8.Internal.Source000

end

end MonochromaticQuantumGraphs.N8D3
