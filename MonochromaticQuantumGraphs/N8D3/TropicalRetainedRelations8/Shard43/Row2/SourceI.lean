import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row2.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 217. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 217. -/
theorem tropicalOverlapSourceIExponent8_replay_row217 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row217.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row217.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row217 j := by
  fin_cases j
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 2990)
            0 =
        tropicalOverlapDegreeFiveExponent8 6 65 98 139 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2990) 0
      6 65 98 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 2990)
            1 =
        tropicalOverlapDegreeFiveExponent8 6 65 108 127 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2990) 1
      6 65 108 127
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 2990)
            6 =
        tropicalOverlapDegreeFiveExponent8 6 75 88 139 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2990) 6
      6 75 88 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 2990)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 38 88 139 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2990) 21
      17 38 88 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 2990)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 48 88 127 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2990) 24
      17 48 88 127
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 2990)
            40 =
        tropicalOverlapDegreeFiveExponent8 26 48 75 117 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2990) 40
      26 48 75 117
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
