import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row4.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 89. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 89. -/
theorem tropicalOverlapSourceIExponent8_replay_row89 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row89.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row89.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row89 j := by
  fin_cases j
  · change
      Pi.single 141 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1101)
            0 =
        tropicalOverlapDegreeFiveExponent8 1 64 102 138 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1101) 0
      1 64 102 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 141 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1101)
            1 =
        tropicalOverlapDegreeFiveExponent8 1 64 111 129 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1101) 1
      1 64 111 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 141 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1101)
            6 =
        tropicalOverlapDegreeFiveExponent8 1 76 86 138 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1101) 6
      1 76 86 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 141 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1101)
            21 =
        tropicalOverlapDegreeFiveExponent8 11 42 86 138 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1101) 21
      11 42 86 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 141 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1101)
            24 =
        tropicalOverlapDegreeFiveExponent8 11 51 86 129 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1101) 24
      11 51 86 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 141 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1101)
            40 =
        tropicalOverlapDegreeFiveExponent8 19 51 76 119 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1101) 40
      19 51 76 119
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
