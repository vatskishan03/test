import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row2.Data

/-! Source-J matching-1 exponent replay for first-overlap row 227. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 1 in row 227. -/
theorem tropicalOverlapSourceJExponent8_replay_row227_j1 :
    Pi.single tropicalOverlapProvenance8Row227.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row227.sourceJ)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceJExponent8Row227 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
