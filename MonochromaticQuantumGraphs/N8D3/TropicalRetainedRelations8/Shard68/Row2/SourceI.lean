import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row2.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 342. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 342. -/
theorem tropicalOverlapSourceIExponent8_replay_row342 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row342.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row342.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row342 j := by
  fin_cases j
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3965)
            0 =
        tropicalOverlapDegreeFiveExponent8 7 65 89 99 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3965) 0
      7 65 99 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3965)
            1 =
        tropicalOverlapDegreeFiveExponent8 7 65 89 109 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3965) 1
      7 65 109 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3965)
            6 =
        tropicalOverlapDegreeFiveExponent8 7 76 88 89 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3965) 6
      7 76 88 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3965)
            21 =
        tropicalOverlapDegreeFiveExponent8 17 42 88 89 142
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3965) 21
      17 42 88 142
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3965)
            24 =
        tropicalOverlapDegreeFiveExponent8 17 52 88 89 130
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3965) 24
      17 52 88 130
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 89 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3965)
            40 =
        tropicalOverlapDegreeFiveExponent8 26 52 76 89 117
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3965) 40
      26 52 76 117
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
