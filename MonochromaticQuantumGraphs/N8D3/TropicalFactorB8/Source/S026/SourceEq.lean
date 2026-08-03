import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S026.Uses
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-!
# Source 26 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source026

/-- Sparse source-polynomial equality for source reduction 26. -/
theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourcePolynomial := by
  have hcolor : tropicalBaseColoring8 126 =
      tropicalColoringOfCode8 3297 := by rfl
  have hexp0 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3297) 0 =
        (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3297) 0 20 51 70 120
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp1 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3297) 1 =
        (Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3297) 1 9 51 89 130
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp2 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3297) 6 =
        (Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (42 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3297) 6 9 42 89 139
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp3 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3297) 21 =
        (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3297) 21 1 70 89 139
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp4 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3297) 24 =
        (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (130 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3297) 24 1 59 111 130
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp5 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3297) 40 =
        (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3297) 40 1 59 102 139
      (by decide) (by decide) (by decide) (by decide)]
    abel
  simp [uses, monomial00,
    monomial01,
    monomial02,
    monomial03,
    monomial04,
    monomial05, sourcePolynomial,
    tropicalBaseRelation8, Fin.sum_univ_succ, hcolor, hexp0, hexp1, hexp2, hexp3, hexp4, hexp5, tropicalBaseMatching8] <;> abel

end TropicalFactorB8.Internal.Source026

end

end MonochromaticQuantumGraphs.N8D3
