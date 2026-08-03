import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row0.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 280. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 280. -/
theorem tropicalOverlapSourceIExponent8_replay_row280 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row280.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row280.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row280 j := by
  fin_cases j
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3393)
            0 =
        tropicalOverlapDegreeFiveExponent8 0 65 105 139 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3393) 0
      0 65 105 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3393)
            1 =
        tropicalOverlapDegreeFiveExponent8 0 65 114 130 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3393) 1
      0 65 114 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3393)
            6 =
        tropicalOverlapDegreeFiveExponent8 0 76 90 139 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3393) 6
      0 76 90 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3393)
            21 =
        tropicalOverlapDegreeFiveExponent8 11 39 90 139 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3393) 21
      11 39 90 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3393)
            24 =
        tropicalOverlapDegreeFiveExponent8 11 48 90 130 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3393) 24
      11 48 90 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 142 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3393)
            40 =
        tropicalOverlapDegreeFiveExponent8 20 48 76 123 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3393) 40
      20 48 76 123
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
