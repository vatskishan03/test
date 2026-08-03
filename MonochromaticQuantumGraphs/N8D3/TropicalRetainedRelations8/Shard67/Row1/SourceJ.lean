import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row1.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 336. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 336. -/
theorem tropicalOverlapSourceJExponent8_replay_row336 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row336.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row336.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row336 j := by
  fin_cases j
  · change
      Pi.single 88 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4106)
            0 =
        tropicalOverlapDegreeFiveExponent8 6 59 88 105 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4106) 0
      6 59 105 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 88 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4106)
            1 =
        tropicalOverlapDegreeFiveExponent8 6 59 88 115 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4106) 1
      6 59 115 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 88 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4106)
            6 =
        tropicalOverlapDegreeFiveExponent8 6 70 88 90 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4106) 6
      6 70 90 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 88 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4106)
            21 =
        tropicalOverlapDegreeFiveExponent8 15 39 88 90 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4106) 21
      15 39 90 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 88 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4106)
            24 =
        tropicalOverlapDegreeFiveExponent8 15 49 88 90 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4106) 24
      15 49 90 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 88 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4106)
            40 =
        tropicalOverlapDegreeFiveExponent8 26 49 70 88 123
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4106) 40
      26 49 70 123
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
