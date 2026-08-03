import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row2.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 177. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 177. -/
theorem tropicalOverlapSourceJExponent8_replay_row177 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row177.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row177.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row177 j := by
  fin_cases j
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1614)
            0 =
        tropicalOverlapDegreeFiveExponent8 1 65 86 101 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1614) 0
      1 65 101 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1614)
            1 =
        tropicalOverlapDegreeFiveExponent8 1 65 86 112 126
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1614) 1
      1 65 112 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1614)
            6 =
        tropicalOverlapDegreeFiveExponent8 1 75 86 89 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1614) 6
      1 75 89 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1614)
            21 =
        tropicalOverlapDegreeFiveExponent8 11 41 86 89 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1614) 21
      11 41 89 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1614)
            24 =
        tropicalOverlapDegreeFiveExponent8 11 52 86 89 126
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1614) 24
      11 52 89 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 86 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1614)
            40 =
        tropicalOverlapDegreeFiveExponent8 20 52 75 86 119
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1614) 40
      20 52 75 119
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
