import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row4.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 69. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 69. -/
theorem tropicalOverlapSourceIExponent8_replay_row69 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row69.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row69.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row69 j := by
  fin_cases j <;> funext k <;> fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
