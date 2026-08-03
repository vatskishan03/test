import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S002.Uses
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-!
# Source 2 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source002

/-- Sparse source-polynomial equality for source reduction 2. -/
theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourcePolynomial := by
  have hcolor : tropicalBaseColoring8 102 =
      tropicalColoringOfCode8 2990 := by rfl
  have hexp0 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2990) 0 =
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2990) 0 6 65 98 139
      (by decide) (by decide) (by decide) (by decide)]
  have hexp1 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2990) 1 =
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2990) 1 6 65 108 127
      (by decide) (by decide) (by decide) (by decide)]
  have hexp2 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2990) 6 =
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2990) 6 6 75 88 139
      (by decide) (by decide) (by decide) (by decide)]
  have hexp3 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2990) 21 =
        (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2990) 21 17 38 88 139
      (by decide) (by decide) (by decide) (by decide)]
  have hexp4 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2990) 24 =
        (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2990) 24 17 48 88 127
      (by decide) (by decide) (by decide) (by decide)]
  have hexp5 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2990) 40 =
        (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2990) 40 26 48 75 117
      (by decide) (by decide) (by decide) (by decide)]
  simp [uses, use00,
    use01,
    use02,
    use03,
    use04,
    use05,
    TropicalFactorB8.Internal.useOfReduction, sourcePolynomial,
    tropicalBaseRelation8, Fin.sum_univ_succ, hcolor, hexp0, hexp1, hexp2, hexp3, hexp4, hexp5, tropicalBaseMatching8] <;> abel

end TropicalFactorB8.Internal.Source002

end

end MonochromaticQuantumGraphs.N8D3
