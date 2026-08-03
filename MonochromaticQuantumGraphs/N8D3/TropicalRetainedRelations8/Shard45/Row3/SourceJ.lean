import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row3.Data

/-! Coordinatewise source-J exponent replay for first-overlap row 228. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all six shifted `B_j` exponents in row 228. -/
theorem tropicalOverlapSourceJExponent8_replay_row228 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row228.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row228.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row228 j := by
  fin_cases j <;> funext k <;> fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
