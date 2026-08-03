import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row0.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 155. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 155. -/
theorem tropicalOverlapSourceIExponent8_replay_row155 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row155.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row155.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row155 j := by
  fin_cases j
  · change
      Pi.single 7 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1425)
            0 =
        tropicalOverlapDegreeFiveExponent8 1 7 64 106 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1425) 0
      1 64 106 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 7 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1425)
            1 =
        tropicalOverlapDegreeFiveExponent8 1 7 64 114 132
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1425) 1
      1 64 114 132
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 7 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1425)
            6 =
        tropicalOverlapDegreeFiveExponent8 1 7 77 87 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1425) 6
      1 77 87 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 7 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1425)
            21 =
        tropicalOverlapDegreeFiveExponent8 7 11 43 87 138
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1425) 21
      11 43 87 138
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 7 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1425)
            24 =
        tropicalOverlapDegreeFiveExponent8 7 11 51 87 132
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1425) 24
      11 51 87 132
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 7 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1425)
            40 =
        tropicalOverlapDegreeFiveExponent8 7 19 51 77 122
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1425) 40
      19 51 77 122
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
