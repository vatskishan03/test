import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row2.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 62. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 62. -/
theorem tropicalOverlapSourceIExponent8_replay_row62 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row62.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row62.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row62 j := by
  fin_cases j <;> funext k <;> fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
