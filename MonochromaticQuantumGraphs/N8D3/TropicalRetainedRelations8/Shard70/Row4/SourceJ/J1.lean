import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4.Data

/-! Source-J matching-1 exponent replay for first-overlap row 354. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 1 in row 354. -/
theorem tropicalOverlapSourceJExponent8_replay_row354_j1 :
    Pi.single tropicalOverlapProvenance8Row354.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row354.sourceJ)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceJExponent8Row354 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
