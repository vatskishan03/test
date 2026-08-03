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
  fin_cases j <;> funext k <;> fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
