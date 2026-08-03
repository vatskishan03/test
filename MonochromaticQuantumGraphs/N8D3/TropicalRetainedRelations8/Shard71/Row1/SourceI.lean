import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row1.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 356. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 356. -/
theorem tropicalOverlapSourceIExponent8_replay_row356 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row356.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row356.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row356 j := by
  fin_cases j <;> funext k <;> fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
