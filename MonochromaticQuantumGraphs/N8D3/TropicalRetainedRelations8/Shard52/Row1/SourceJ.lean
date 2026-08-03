import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row1.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 261. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 261. -/
theorem tropicalOverlapSourceJExponent8_replay_row261 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row261.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row261.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row261 j := by
  fin_cases j
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4023)
            0 =
        tropicalOverlapDegreeFiveExponent8 0 59 102 139 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4023) 0
      0 59 102 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4023)
            1 =
        tropicalOverlapDegreeFiveExponent8 0 59 112 130 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4023) 1
      0 59 112 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4023)
            6 =
        tropicalOverlapDegreeFiveExponent8 0 70 89 139 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4023) 6
      0 70 89 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4023)
            21 =
        tropicalOverlapDegreeFiveExponent8 9 39 89 139 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4023) 21
      9 39 89 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4023)
            24 =
        tropicalOverlapDegreeFiveExponent8 9 49 89 130 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4023) 24
      9 49 89 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 139 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4023)
            40 =
        tropicalOverlapDegreeFiveExponent8 20 49 70 120 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4023) 40
      20 49 70 120
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
