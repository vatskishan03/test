import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row0.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 300. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 300. -/
theorem tropicalOverlapSourceIExponent8_replay_row300 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row300.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row300.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row300 j := by
  fin_cases j
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3555)
            0 =
        tropicalOverlapDegreeFiveExponent8 0 65 90 103 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3555) 0
      0 65 103 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3555)
            1 =
        tropicalOverlapDegreeFiveExponent8 0 65 90 111 133
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3555) 1
      0 65 111 133
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3555)
            6 =
        tropicalOverlapDegreeFiveExponent8 0 77 89 90 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3555) 6
      0 77 89 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3555)
            21 =
        tropicalOverlapDegreeFiveExponent8 11 40 89 90 139
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3555) 21
      11 40 89 139
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3555)
            24 =
        tropicalOverlapDegreeFiveExponent8 11 48 89 90 133
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3555) 24
      11 48 89 133
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 90 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 3555)
            40 =
        tropicalOverlapDegreeFiveExponent8 20 48 77 90 120
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 3555) 40
      20 48 77 120
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
