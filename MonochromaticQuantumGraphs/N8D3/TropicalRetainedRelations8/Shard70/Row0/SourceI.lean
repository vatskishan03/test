import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row0.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 350. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 350. -/
theorem tropicalOverlapSourceIExponent8_replay_row350 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row350.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row350.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row350 j := by
  fin_cases j
  · change
      Pi.single 1 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4041)
            0 =
        tropicalOverlapDegreeFiveExponent8 0 1 65 102 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4041) 0
      0 65 102 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 1 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4041)
            1 =
        tropicalOverlapDegreeFiveExponent8 0 1 65 112 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4041) 1
      0 65 112 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 1 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4041)
            6 =
        tropicalOverlapDegreeFiveExponent8 0 1 76 89 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4041) 6
      0 76 89 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 1 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4041)
            21 =
        tropicalOverlapDegreeFiveExponent8 1 11 39 89 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4041) 21
      11 39 89 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 1 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4041)
            24 =
        tropicalOverlapDegreeFiveExponent8 1 11 49 89 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4041) 24
      11 49 89 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 1 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 4041)
            40 =
        tropicalOverlapDegreeFiveExponent8 1 20 49 76 120
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 4041) 40
      20 49 76 120
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
