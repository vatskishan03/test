import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S029.Uses
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-!
# Source 29 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source029

/-- Sparse source-polynomial equality for source reduction 29. -/
theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourcePolynomial := by
  have hcolor : tropicalBaseColoring8 129 =
      tropicalColoringOfCode8 3314 := by rfl
  have hexp0 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3314) 0 =
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3314) 0 6 65 102 139
      (by decide) (by decide) (by decide) (by decide)]
  have hexp1 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3314) 1 =
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3314) 1 6 65 111 130
      (by decide) (by decide) (by decide) (by decide)]
  have hexp2 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3314) 6 =
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3314) 6 6 76 89 139
      (by decide) (by decide) (by decide) (by decide)]
  have hexp3 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3314) 21 =
        (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3314) 21 17 39 89 139
      (by decide) (by decide) (by decide) (by decide)]
  have hexp4 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3314) 24 =
        (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3314) 24 17 48 89 130
      (by decide) (by decide) (by decide) (by decide)]
  have hexp5 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3314) 40 =
        (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3314) 40 26 48 76 120
      (by decide) (by decide) (by decide) (by decide)]
  simp [uses, use00,
    use01,
    use02,
    use03,
    use04,
    use05,
    TropicalFactorB8.Internal.useOfReduction, sourcePolynomial,
    tropicalBaseRelation8, Fin.sum_univ_succ, hcolor, hexp0, hexp1, hexp2, hexp3, hexp4, hexp5, tropicalBaseMatching8] <;> abel

end TropicalFactorB8.Internal.Source029

end

end MonochromaticQuantumGraphs.N8D3
