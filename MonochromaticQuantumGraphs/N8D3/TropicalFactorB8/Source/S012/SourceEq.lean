import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S012.Uses
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-!
# Source 12 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source012

/-- Sparse source-polynomial equality for source reduction 12. -/
theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourcePolynomial := by
  have hcolor : tropicalBaseColoring8 112 =
      tropicalColoringOfCode8 3132 := by rfl
  have hexp0 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3132) 0 =
        (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3132) 0 20 48 69 123
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp1 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3132) 1 =
        (Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3132) 1 9 48 90 127
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp2 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3132) 6 =
        (Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3132) 6 9 38 90 139
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp3 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3132) 21 =
        (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3132) 21 0 69 90 139
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp4 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3132) 24 =
        (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3132) 24 0 59 114 127
      (by decide) (by decide) (by decide) (by decide)]
    abel
  have hexp5 :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 3132) 40 =
        (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3132) 40 0 59 104 139
      (by decide) (by decide) (by decide) (by decide)]
    abel
  simp [uses, monomial00,
    monomial01,
    monomial02,
    monomial03,
    monomial04,
    monomial05, sourcePolynomial,
    tropicalBaseRelation8, Fin.sum_univ_succ, hcolor, hexp0, hexp1, hexp2, hexp3, hexp4, hexp5, tropicalBaseMatching8] <;> abel

end TropicalFactorB8.Internal.Source012

end

end MonochromaticQuantumGraphs.N8D3
