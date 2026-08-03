import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row0.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 105. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 105. -/
theorem tropicalOverlapSourceJExponent8_replay_row105 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row105.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row105.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row105 j := by
  fin_cases j
  · change
      Pi.single 138 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1859)
            0 =
        tropicalOverlapDegreeFiveExponent8 7 65 102 138 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1859) 0
      7 65 102 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 138 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1859)
            1 =
        tropicalOverlapDegreeFiveExponent8 7 65 112 129 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1859) 1
      7 65 112 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 138 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1859)
            6 =
        tropicalOverlapDegreeFiveExponent8 7 76 89 138 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1859) 6
      7 76 89 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 138 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1859)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 42 89 138 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1859) 21
      17 42 89 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 138 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1859)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 52 89 129 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1859) 24
      17 52 89 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 138 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1859)
            40 =
        tropicalOverlapDegreeFiveExponent8 26 52 76 119 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1859) 40
      26 52 76 119
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
