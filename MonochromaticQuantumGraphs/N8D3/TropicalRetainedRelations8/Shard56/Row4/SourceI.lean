import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 284. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 284. -/
theorem tropicalOverlapSourceIExponent8_replay_row284 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row284.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row284.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row284 j := by
  fin_cases j
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3458)
            0 =
        tropicalOverlapDegreeFiveExponent8 6 59 90 100 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3458) 0
      6 59 100 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3458)
            1 =
        tropicalOverlapDegreeFiveExponent8 6 59 90 108 133
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3458) 1
      6 59 108 133
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3458)
            6 =
        tropicalOverlapDegreeFiveExponent8 6 71 88 90 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3458) 6
      6 71 88 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3458)
            21 =
        tropicalOverlapDegreeFiveExponent8 15 40 88 90 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3458) 21
      15 40 88 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3458)
            24 =
        tropicalOverlapDegreeFiveExponent8 15 48 88 90 133
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3458) 24
      15 48 88 133
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3458)
            40 =
        tropicalOverlapDegreeFiveExponent8 26 48 71 90 117
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3458) 40
      26 48 71 117
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
