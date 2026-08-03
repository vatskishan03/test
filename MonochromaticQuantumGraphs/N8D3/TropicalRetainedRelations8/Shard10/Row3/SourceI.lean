import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row3.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 53. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 53. -/
theorem tropicalOverlapSourceIExponent8_replay_row53 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row53.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row53.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row53 j := by
  fin_cases j <;> funext k <;> fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
