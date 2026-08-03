import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row4.Data

/-! Source-J matching-4 exponent replay for first-overlap row 229. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 4 in row 229. -/
theorem tropicalOverlapSourceJExponent8_replay_row229_j4 :
    Pi.single tropicalOverlapProvenance8Row229.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row229.sourceJ)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceJExponent8Row229 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
