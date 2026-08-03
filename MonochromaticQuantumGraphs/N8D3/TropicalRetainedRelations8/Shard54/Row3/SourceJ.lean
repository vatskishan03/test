import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row3.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 273. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 273. -/
theorem tropicalOverlapSourceJExponent8_replay_row273 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row273.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row273.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row273 j := by
  fin_cases j
  · change
      Pi.single 0 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3378)
            0 =
        tropicalOverlapDegreeFiveExponent8 0 1 59 105 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3378) 0
      1 59 105 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 0 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3378)
            1 =
        tropicalOverlapDegreeFiveExponent8 0 1 59 114 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3378) 1
      1 59 114 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 0 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3378)
            6 =
        tropicalOverlapDegreeFiveExponent8 0 1 70 90 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3378) 6
      1 70 90 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 0 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3378)
            21 =
        tropicalOverlapDegreeFiveExponent8 0 9 42 90 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3378) 21
      9 42 90 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 0 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3378)
            24 =
        tropicalOverlapDegreeFiveExponent8 0 9 51 90 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3378) 24
      9 51 90 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 0 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3378)
            40 =
        tropicalOverlapDegreeFiveExponent8 0 20 51 70 123
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3378) 40
      20 51 70 123
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
