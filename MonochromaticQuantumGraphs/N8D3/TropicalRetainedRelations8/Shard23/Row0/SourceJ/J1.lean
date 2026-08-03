import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row0.Data

/-! Source-J matching-1 exponent replay for first-overlap row 115. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 1 in row 115. -/
theorem tropicalOverlapSourceJExponent8_replay_row115_j1 :
    Pi.single tropicalOverlapProvenance8Row115.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row115.sourceJ)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceJExponent8Row115 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
