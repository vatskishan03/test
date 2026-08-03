import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row3.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 178. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 178. -/
theorem tropicalOverlapSourceIExponent8_replay_row178 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row178.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row178.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row178 j := by
  fin_cases j
  · change
      Pi.single 87 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1587)
            0 =
        tropicalOverlapDegreeFiveExponent8 1 64 87 101 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1587) 0
      1 64 101 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 87 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1587)
            1 =
        tropicalOverlapDegreeFiveExponent8 1 64 87 112 126
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1587) 1
      1 64 112 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 87 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1587)
            6 =
        tropicalOverlapDegreeFiveExponent8 1 75 86 87 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1587) 6
      1 75 86 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 87 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1587)
            21 =
        tropicalOverlapDegreeFiveExponent8 11 41 86 87 141
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1587) 21
      11 41 86 141
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 87 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1587)
            24 =
        tropicalOverlapDegreeFiveExponent8 11 52 86 87 126
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1587) 24
      11 52 86 126
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel
  · change
      Pi.single 87 (1 : ℤ) +
          tropicalMatchingLocalExponent8
            (tropicalColoringOfCode8 1587)
            40 =
        tropicalOverlapDegreeFiveExponent8 19 52 75 87 119
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 1587) 40
      19 52 75 119
      (by decide) (by decide) (by decide) (by decide)]
    unfold tropicalOverlapDegreeFiveExponent8
    abel

end

end MonochromaticQuantumGraphs.N8D3
