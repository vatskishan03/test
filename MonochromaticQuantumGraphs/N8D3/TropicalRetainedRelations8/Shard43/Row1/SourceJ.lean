import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row1.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 216. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 216. -/
theorem tropicalOverlapSourceJExponent8_replay_row216 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row216.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row216.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row216 j := by
  fin_cases j
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 2993)
            0 =
        tropicalOverlapDegreeFiveExponent8 6 7 65 98 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2993) 0
      7 65 98 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 2993)
            1 =
        tropicalOverlapDegreeFiveExponent8 6 7 65 108 127
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2993) 1
      7 65 108 127
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 2993)
            6 =
        tropicalOverlapDegreeFiveExponent8 6 7 75 88 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2993) 6
      7 75 88 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 2993)
            21 =
        tropicalOverlapDegreeFiveExponent8 6 17 41 88 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2993) 21
      17 41 88 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 2993)
            24 =
        tropicalOverlapDegreeFiveExponent8 6 17 51 88 127
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2993) 24
      17 51 88 127
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 6 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 2993)
            40 =
        tropicalOverlapDegreeFiveExponent8 6 26 51 75 117
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 2993) 40
      26 51 75 117
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
