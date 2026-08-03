import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row0.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 10. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 10. -/
theorem tropicalOverlapSourceJExponent8_replay_row10 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row10.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row10.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row10 j := by
  fin_cases j
  · change
      Pi.single 85 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 941)
            0 =
        tropicalOverlapDegreeFiveExponent8 7 64 85 104 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 941) 0
      7 64 104 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 85 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 941)
            1 =
        tropicalOverlapDegreeFiveExponent8 7 64 85 114 126
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 941) 1
      7 64 114 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 85 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 941)
            6 =
        tropicalOverlapDegreeFiveExponent8 7 75 85 87 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 941) 6
      7 75 87 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 85 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 941)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 41 85 87 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 941) 21
      17 41 87 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 85 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 941)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 51 85 87 126
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 941) 24
      17 51 87 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 85 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 941)
            40 =
        tropicalOverlapDegreeFiveExponent8 25 51 75 85 122
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 941) 40
      25 51 75 122
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
