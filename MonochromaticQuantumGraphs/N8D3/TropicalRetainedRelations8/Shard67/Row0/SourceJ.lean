import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row0.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 335. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 335. -/
theorem tropicalOverlapSourceJExponent8_replay_row335 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row335.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row335.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row335 j := by
  fin_cases j
  · change
      Pi.single 88 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4025)
            0 =
        tropicalOverlapDegreeFiveExponent8 6 59 88 102 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4025) 0
      6 59 102 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 88 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4025)
            1 =
        tropicalOverlapDegreeFiveExponent8 6 59 88 112 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4025) 1
      6 59 112 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 88 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4025)
            6 =
        tropicalOverlapDegreeFiveExponent8 6 70 88 89 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4025) 6
      6 70 89 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 88 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4025)
            21 =
        tropicalOverlapDegreeFiveExponent8 15 39 88 89 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4025) 21
      15 39 89 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 88 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4025)
            24 =
        tropicalOverlapDegreeFiveExponent8 15 49 88 89 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4025) 24
      15 49 89 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 88 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4025)
            40 =
        tropicalOverlapDegreeFiveExponent8 26 49 70 88 120
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4025) 40
      26 49 70 120
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
