import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row3.Data

/-! Source-J matching-1 exponent replay for first-overlap row 93. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 1 in row 93. -/
theorem tropicalOverlapSourceJExponent8_replay_row93_j1 :
    Pi.single tropicalOverlapProvenance8Row93.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row93.sourceJ)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceJExponent8Row93 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
