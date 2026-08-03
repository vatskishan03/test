import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row2.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 217. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 217. -/
theorem tropicalOverlapSourceJExponent8_replay_row217 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row217.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row217.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row217 j := by
  fin_cases j
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3719)
            0 =
        tropicalOverlapDegreeFiveExponent8 6 65 98 139 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3719) 0
      6 65 98 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3719)
            1 =
        tropicalOverlapDegreeFiveExponent8 6 65 109 127 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3719) 1
      6 65 109 127
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3719)
            6 =
        tropicalOverlapDegreeFiveExponent8 6 75 88 139 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3719) 6
      6 75 88 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3719)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 38 88 139 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3719) 21
      17 38 88 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3719)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 49 88 127 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3719) 24
      17 49 88 127
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3719)
            40 =
        tropicalOverlapDegreeFiveExponent8 26 49 75 117 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3719) 40
      26 49 75 117
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
