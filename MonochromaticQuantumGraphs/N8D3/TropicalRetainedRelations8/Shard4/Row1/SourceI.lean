import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row1.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 21. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 21. -/
theorem tropicalOverlapSourceIExponent8_replay_row21 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row21.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row21.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row21 j := by
  fin_cases j
  · change
      Pi.single 87 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 840)
            0 =
        tropicalOverlapDegreeFiveExponent8 1 58 87 101 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 840) 0
      1 58 101 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 87 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 840)
            1 =
        tropicalOverlapDegreeFiveExponent8 1 58 87 111 126
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 840) 1
      1 58 111 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 87 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 840)
            6 =
        tropicalOverlapDegreeFiveExponent8 1 69 86 87 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 840) 6
      1 69 86 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 87 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 840)
            21 =
        tropicalOverlapDegreeFiveExponent8 9 41 86 87 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 840) 21
      9 41 86 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 87 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 840)
            24 =
        tropicalOverlapDegreeFiveExponent8 9 51 86 87 126
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 840) 24
      9 51 86 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 87 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 840)
            40 =
        tropicalOverlapDegreeFiveExponent8 19 51 69 87 119
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 840) 40
      19 51 69 119
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
