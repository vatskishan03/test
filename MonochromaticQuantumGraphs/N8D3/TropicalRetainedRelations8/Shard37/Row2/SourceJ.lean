import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row2.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 187. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 187. -/
theorem tropicalOverlapSourceJExponent8_replay_row187 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row187.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row187.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row187 j := by
  fin_cases j <;> funext k <;> fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
