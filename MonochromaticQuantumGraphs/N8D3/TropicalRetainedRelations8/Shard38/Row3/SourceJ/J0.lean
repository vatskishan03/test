import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row3.Data

/-! Source-J matching-0 exponent replay for first-overlap row 193. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 0 in row 193. -/
theorem tropicalOverlapSourceJExponent8_replay_row193_j0 :
    Pi.single tropicalOverlapProvenance8Row193.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row193.sourceJ)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceJExponent8Row193 0 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
