import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row2.Data

/-! Coordinatewise source-I exponent replay for first-overlap row 37. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_i` exponents in row 37. -/
theorem tropicalOverlapSourceIExponent8_replay_row37 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row37.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row37.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row37 j := by
  fin_cases j <;> funext k <;> fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
