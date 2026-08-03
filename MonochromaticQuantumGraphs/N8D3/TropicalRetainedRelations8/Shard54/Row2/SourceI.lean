import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row2.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 272. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 272. -/
theorem tropicalOverlapSourceIExponent8_replay_row272 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row272.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row272.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row272 j := by
  fin_cases j
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3375)
            0 =
        tropicalOverlapDegreeFiveExponent8 0 6 59 105 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3375) 0
      0 59 105 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3375)
            1 =
        tropicalOverlapDegreeFiveExponent8 0 6 59 114 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3375) 1
      0 59 114 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3375)
            6 =
        tropicalOverlapDegreeFiveExponent8 0 6 70 90 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3375) 6
      0 70 90 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3375)
            21 =
        tropicalOverlapDegreeFiveExponent8 6 9 39 90 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3375) 21
      9 39 90 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3375)
            24 =
        tropicalOverlapDegreeFiveExponent8 6 9 48 90 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3375) 24
      9 48 90 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3375)
            40 =
        tropicalOverlapDegreeFiveExponent8 6 20 48 70 123
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3375) 40
      20 48 70 123
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
