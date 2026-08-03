import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row0.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 185. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 185. -/
theorem tropicalOverlapSourceIExponent8_replay_row185 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row185.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row185.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row185 j := by
  fin_cases j
  · change
      Pi.single 7 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1695)
            0 =
        tropicalOverlapDegreeFiveExponent8 1 7 65 104 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1695) 0
      1 65 104 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 7 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1695)
            1 =
        tropicalOverlapDegreeFiveExponent8 1 7 65 115 126
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1695) 1
      1 65 115 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 7 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1695)
            6 =
        tropicalOverlapDegreeFiveExponent8 1 7 75 90 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1695) 6
      1 75 90 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 7 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1695)
            21 =
        tropicalOverlapDegreeFiveExponent8 7 11 41 90 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1695) 21
      11 41 90 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 7 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1695)
            24 =
        tropicalOverlapDegreeFiveExponent8 7 11 52 90 126
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1695) 24
      11 52 90 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 7 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1695)
            40 =
        tropicalOverlapDegreeFiveExponent8 7 20 52 75 122
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1695) 40
      20 52 75 122
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
