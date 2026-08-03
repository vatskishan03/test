import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row1.Data

/-! Source-J matching-1 exponent replay for first-overlap row 121. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 1 in row 121. -/
theorem tropicalOverlapSourceJExponent8_replay_row121_j1 :
    Pi.single tropicalOverlapProvenance8Row121.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row121.sourceJ)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceJExponent8Row121 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
