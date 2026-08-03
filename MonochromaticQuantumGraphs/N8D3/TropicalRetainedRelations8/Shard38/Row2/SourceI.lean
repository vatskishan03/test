import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row2.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 192. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 192. -/
theorem tropicalOverlapSourceIExponent8_replay_row192 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row192.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row192.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row192 j := by
  fin_cases j
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1751)
            0 =
        tropicalOverlapDegreeFiveExponent8 7 64 86 99 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1751) 0
      7 64 99 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1751)
            1 =
        tropicalOverlapDegreeFiveExponent8 7 64 86 109 129
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1751) 1
      7 64 109 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1751)
            6 =
        tropicalOverlapDegreeFiveExponent8 7 76 85 86 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1751) 6
      7 76 85 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1751)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 42 85 86 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1751) 21
      17 42 85 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1751)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 52 85 86 129
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1751) 24
      17 52 85 129
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1751)
            40 =
        tropicalOverlapDegreeFiveExponent8 25 52 76 86 116
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1751) 40
      25 52 76 116
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
