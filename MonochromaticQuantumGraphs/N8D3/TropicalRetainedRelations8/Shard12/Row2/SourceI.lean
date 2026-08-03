import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row2.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 62. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 62. -/
theorem tropicalOverlapSourceIExponent8_replay_row62 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row62.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row62.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row62 j := by
  fin_cases j
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 968)
            0 =
        tropicalOverlapDegreeFiveExponent8 7 65 104 138 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 968) 0
      7 65 104 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 968)
            1 =
        tropicalOverlapDegreeFiveExponent8 7 65 114 126 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 968) 1
      7 65 114 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 968)
            6 =
        tropicalOverlapDegreeFiveExponent8 7 75 90 138 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 968) 6
      7 75 90 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 968)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 41 90 138 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 968) 21
      17 41 90 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 968)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 51 90 126 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 968) 24
      17 51 90 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 968)
            40 =
        tropicalOverlapDegreeFiveExponent8 26 51 75 122 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 968) 40
      26 51 75 122
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
