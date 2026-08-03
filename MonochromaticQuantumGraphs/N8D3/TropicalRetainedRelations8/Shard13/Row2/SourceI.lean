import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row2.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 67. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 67. -/
theorem tropicalOverlapSourceIExponent8_replay_row67 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row67.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row67.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row67 j := by
  fin_cases j
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1004)
            0 =
        tropicalOverlapDegreeFiveExponent8 7 58 89 99 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1004) 0
      7 58 99 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1004)
            1 =
        tropicalOverlapDegreeFiveExponent8 7 58 89 108 129
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1004) 1
      7 58 108 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1004)
            6 =
        tropicalOverlapDegreeFiveExponent8 7 70 85 89 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1004) 6
      7 70 85 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1004)
            21 =
        tropicalOverlapDegreeFiveExponent8 15 42 85 89 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1004) 21
      15 42 85 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1004)
            24 =
        tropicalOverlapDegreeFiveExponent8 15 51 85 89 129
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1004) 24
      15 51 85 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1004)
            40 =
        tropicalOverlapDegreeFiveExponent8 25 51 70 89 116
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1004) 40
      25 51 70 116
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
