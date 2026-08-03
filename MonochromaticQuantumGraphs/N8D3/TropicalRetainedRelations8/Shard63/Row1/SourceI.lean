import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row1.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 316. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 316. -/
theorem tropicalOverlapSourceIExponent8_replay_row316 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row316.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row316.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row316 j := by
  fin_cases j
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3722)
            0 =
        tropicalOverlapDegreeFiveExponent8 7 65 89 98 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3722) 0
      7 65 98 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3722)
            1 =
        tropicalOverlapDegreeFiveExponent8 7 65 89 109 127
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3722) 1
      7 65 109 127
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3722)
            6 =
        tropicalOverlapDegreeFiveExponent8 7 75 88 89 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3722) 6
      7 75 88 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3722)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 41 88 89 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3722) 21
      17 41 88 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3722)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 52 88 89 127
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3722) 24
      17 52 88 127
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3722)
            40 =
        tropicalOverlapDegreeFiveExponent8 26 52 75 89 117
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3722) 40
      26 52 75 117
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
