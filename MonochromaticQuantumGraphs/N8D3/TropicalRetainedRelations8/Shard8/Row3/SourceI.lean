import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row3.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 43. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 43. -/
theorem tropicalOverlapSourceIExponent8_replay_row43 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row43.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row43.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row43 j := by
  fin_cases j
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 887)
            0 =
        tropicalOverlapDegreeFiveExponent8 7 65 101 138 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 887) 0
      7 65 101 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 887)
            1 =
        tropicalOverlapDegreeFiveExponent8 7 65 111 126 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 887) 1
      7 65 111 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 887)
            6 =
        tropicalOverlapDegreeFiveExponent8 7 75 89 138 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 887) 6
      7 75 89 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 887)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 41 89 138 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 887) 21
      17 41 89 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 887)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 51 89 126 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 887) 24
      17 51 89 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 887)
            40 =
        tropicalOverlapDegreeFiveExponent8 26 51 75 119 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 887) 40
      26 51 75 119
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
