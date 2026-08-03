import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row1.Data

/-! Source-J matching-1 exponent replay for first-overlap row 176. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 1 in row 176. -/
theorem tropicalOverlapSourceJExponent8_replay_row176_j1 :
    Pi.single tropicalOverlapProvenance8Row176.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row176.sourceJ)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceJExponent8Row176 1 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
