import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row4.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 124. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 124. -/
theorem tropicalOverlapSourceIExponent8_replay_row124 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row124.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row124.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row124 j := by
  fin_cases j
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1209)
            0 =
        tropicalOverlapDegreeFiveExponent8 1 65 105 138 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1209) 0
      1 65 105 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1209)
            1 =
        tropicalOverlapDegreeFiveExponent8 1 65 114 129 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1209) 1
      1 65 114 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1209)
            6 =
        tropicalOverlapDegreeFiveExponent8 1 76 90 138 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1209) 6
      1 76 90 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1209)
            21 =
        tropicalOverlapDegreeFiveExponent8 11 42 90 138 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1209) 21
      11 42 90 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1209)
            24 =
        tropicalOverlapDegreeFiveExponent8 11 51 90 129 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1209) 24
      11 51 90 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1209)
            40 =
        tropicalOverlapDegreeFiveExponent8 20 51 76 122 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1209) 40
      20 51 76 122
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
