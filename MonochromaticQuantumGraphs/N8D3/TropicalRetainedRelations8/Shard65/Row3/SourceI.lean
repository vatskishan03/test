import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row3.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 328. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 328. -/
theorem tropicalOverlapSourceIExponent8_replay_row328 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row328.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row328.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row328 j := by
  fin_cases j
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3861)
            0 =
        tropicalOverlapDegreeFiveExponent8 0 6 59 104 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3861) 0
      0 59 104 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3861)
            1 =
        tropicalOverlapDegreeFiveExponent8 0 6 59 115 127
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3861) 1
      0 59 115 127
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3861)
            6 =
        tropicalOverlapDegreeFiveExponent8 0 6 69 90 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3861) 6
      0 69 90 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3861)
            21 =
        tropicalOverlapDegreeFiveExponent8 6 9 38 90 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3861) 21
      9 38 90 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3861)
            24 =
        tropicalOverlapDegreeFiveExponent8 6 9 49 90 127
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3861) 24
      9 49 90 127
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3861)
            40 =
        tropicalOverlapDegreeFiveExponent8 6 20 49 69 123
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3861) 40
      20 49 69 123
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
