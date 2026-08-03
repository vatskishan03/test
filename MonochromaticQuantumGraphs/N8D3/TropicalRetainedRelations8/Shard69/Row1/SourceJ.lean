import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row1.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 346. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 346. -/
theorem tropicalOverlapSourceJExponent8_replay_row346 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row346.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row346.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row346 j := by
  fin_cases j
  · change
      Pi.single 0 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4028)
            0 =
        tropicalOverlapDegreeFiveExponent8 0 7 59 102 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4028) 0
      7 59 102 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 0 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4028)
            1 =
        tropicalOverlapDegreeFiveExponent8 0 7 59 112 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4028) 1
      7 59 112 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 0 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4028)
            6 =
        tropicalOverlapDegreeFiveExponent8 0 7 70 89 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4028) 6
      7 70 89 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 0 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4028)
            21 =
        tropicalOverlapDegreeFiveExponent8 0 15 42 89 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4028) 21
      15 42 89 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 0 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4028)
            24 =
        tropicalOverlapDegreeFiveExponent8 0 15 52 89 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4028) 24
      15 52 89 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 0 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4028)
            40 =
        tropicalOverlapDegreeFiveExponent8 0 26 52 70 120
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4028) 40
      26 52 70 120
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
