import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S001.Uses
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-!
# Source 1 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source001

/-- Sparse source-polynomial equality for source reduction 1. -/
theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourcePolynomial := by
  have hcolor : tropicalBaseColoring8 101 =
      tropicalColoringOfCode8 2975 := by rfl
  have hexp0 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2975) 0 =
        (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2975) 0 26 51 69 117
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp1 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2975) 1 =
        (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2975) 1 15 51 88 127
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp2 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2975) 6 =
        (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2975) 6 15 41 88 139
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp3 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2975) 21 =
        (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2975) 21 7 69 88 139
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp4 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2975) 24 =
        (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2975) 24 7 59 108 127
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp5 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 2975) 40 =
        (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2975) 40 7 59 98 139
      (by decide) (by decide) (by decide) (by decide)]
    abel
  simp [uses, monomial00,
    monomial01,
    monomial02,
    monomial03,
    monomial04,
    monomial05, sourcePolynomial,
    tropicalBaseRelation8, Fin.sum_univ_succ, hcolor, hexp0, hexp1, hexp2, hexp3, hexp4, hexp5, tropicalBaseMatching8] <;> abel

end TropicalFactorB8.Internal.Source001

end

end MonochromaticQuantumGraphs.N8D3
