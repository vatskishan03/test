import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row4.Data

/-! Source-J matching-1 exponent replay for first-overlap row 119. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 1 in row 119. -/
theorem tropicalOverlapSourceJExponent8_replay_row119_j1 :
    Pi.single tropicalOverlapProvenance8Row119.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row119.sourceJ)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceJExponent8Row119 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
