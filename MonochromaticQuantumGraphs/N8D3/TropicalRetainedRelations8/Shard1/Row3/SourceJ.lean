import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard1.Row3.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 8. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 8. -/
theorem tropicalOverlapSourceJExponent8_replay_row8 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row8.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row8.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row8 j := by
  fin_cases j
  · change
      Pi.single 85 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 860)
            0 =
        tropicalOverlapDegreeFiveExponent8 7 64 85 101 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 860) 0
      7 64 101 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 85 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 860)
            1 =
        tropicalOverlapDegreeFiveExponent8 7 64 85 111 126
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 860) 1
      7 64 111 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 85 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 860)
            6 =
        tropicalOverlapDegreeFiveExponent8 7 75 85 86 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 860) 6
      7 75 86 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 85 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 860)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 41 85 86 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 860) 21
      17 41 86 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 85 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 860)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 51 85 86 126
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 860) 24
      17 51 86 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 85 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 860)
            40 =
        tropicalOverlapDegreeFiveExponent8 25 51 75 85 119
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 860) 40
      25 51 75 119
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
