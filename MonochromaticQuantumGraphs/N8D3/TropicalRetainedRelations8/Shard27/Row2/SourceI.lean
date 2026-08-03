import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row2.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 137. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 137. -/
theorem tropicalOverlapSourceIExponent8_replay_row137 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row137.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row137.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row137 j := by
  fin_cases j
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1265)
            0 =
        tropicalOverlapDegreeFiveExponent8 7 64 90 100 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1265) 0
      7 64 100 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1265)
            1 =
        tropicalOverlapDegreeFiveExponent8 7 64 90 108 132
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1265) 1
      7 64 108 132
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1265)
            6 =
        tropicalOverlapDegreeFiveExponent8 7 77 85 90 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1265) 6
      7 77 85 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1265)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 43 85 90 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1265) 21
      17 43 85 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1265)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 51 85 90 132
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1265) 24
      17 51 85 132
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1265)
            40 =
        tropicalOverlapDegreeFiveExponent8 25 51 77 90 116
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1265) 40
      25 51 77 116
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
