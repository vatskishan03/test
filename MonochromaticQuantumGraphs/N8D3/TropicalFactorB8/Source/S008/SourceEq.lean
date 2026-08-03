import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S008.Uses
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-!
# Source 8 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source008

/-- Sparse source-polynomial equality for source reduction 8. -/
theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourcePolynomial := by
  have hcolor : tropicalBaseColoring8 108 =
      tropicalColoringOfCode8 3069 := by rfl
  have hexp0 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3069) 0 =
        (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3069) 0 0 65 101 139
      (by decide) (by decide) (by decide) (by decide)]
  have hexp1 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3069) 1 =
        (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3069) 1 0 65 111 127
      (by decide) (by decide) (by decide) (by decide)]
  have hexp2 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3069) 6 =
        (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3069) 6 0 75 89 139
      (by decide) (by decide) (by decide) (by decide)]
  have hexp3 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3069) 21 =
        (Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3069) 21 11 38 89 139
      (by decide) (by decide) (by decide) (by decide)]
  have hexp4 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3069) 24 =
        (Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3069) 24 11 48 89 127
      (by decide) (by decide) (by decide) (by decide)]
  have hexp5 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3069) 40 =
        (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3069) 40 20 48 75 120
      (by decide) (by decide) (by decide) (by decide)]
  simp [uses, use00,
    use01,
    use02,
    use03,
    use04,
    use05,
    TropicalFactorB8.Internal.useOfReduction, sourcePolynomial,
    tropicalBaseRelation8, Fin.sum_univ_succ, hcolor, hexp0, hexp1, hexp2, hexp3, hexp4, hexp5, tropicalBaseMatching8] <;> abel

end TropicalFactorB8.Internal.Source008

end

end MonochromaticQuantumGraphs.N8D3
