import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row2.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 72. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 72. -/
theorem tropicalOverlapSourceIExponent8_replay_row72 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row72.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row72.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row72 j := by
  fin_cases j
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1022)
            0 =
        tropicalOverlapDegreeFiveExponent8 7 64 86 99 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1022) 0
      7 64 99 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1022)
            1 =
        tropicalOverlapDegreeFiveExponent8 7 64 86 108 129
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1022) 1
      7 64 108 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1022)
            6 =
        tropicalOverlapDegreeFiveExponent8 7 76 85 86 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1022) 6
      7 76 85 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1022)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 42 85 86 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1022) 21
      17 42 85 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1022)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 51 85 86 129
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1022) 24
      17 51 85 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1022)
            40 =
        tropicalOverlapDegreeFiveExponent8 25 51 76 86 116
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1022) 40
      25 51 76 116
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
