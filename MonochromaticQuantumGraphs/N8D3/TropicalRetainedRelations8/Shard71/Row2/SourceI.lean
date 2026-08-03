import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row2.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 357. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 357. -/
theorem tropicalOverlapSourceIExponent8_replay_row357 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row357.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row357.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row357 j := by
  fin_cases j <;> funext k <;> fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
