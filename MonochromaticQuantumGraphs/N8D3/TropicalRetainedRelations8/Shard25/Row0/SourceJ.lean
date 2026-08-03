import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row0.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 125. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 125. -/
theorem tropicalOverlapSourceJExponent8_replay_row125 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row125.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row125.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row125 j := by
  fin_cases j
  · change
      Pi.single 138 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1940)
            0 =
        tropicalOverlapDegreeFiveExponent8 7 65 105 138 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1940) 0
      7 65 105 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 138 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1940)
            1 =
        tropicalOverlapDegreeFiveExponent8 7 65 115 129 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1940) 1
      7 65 115 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 138 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1940)
            6 =
        tropicalOverlapDegreeFiveExponent8 7 76 90 138 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1940) 6
      7 76 90 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 138 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1940)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 42 90 138 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1940) 21
      17 42 90 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 138 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1940)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 52 90 129 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1940) 24
      17 52 90 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 138 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1940)
            40 =
        tropicalOverlapDegreeFiveExponent8 26 52 76 122 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1940) 40
      26 52 76 122
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
