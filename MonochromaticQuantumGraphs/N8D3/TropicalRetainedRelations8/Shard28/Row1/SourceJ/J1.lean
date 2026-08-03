import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row1.Data

/-! Source-J matching-1 exponent replay for first-overlap row 141. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 1 in row 141. -/
theorem tropicalOverlapSourceJExponent8_replay_row141_j1 :
    Pi.single tropicalOverlapProvenance8Row141.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row141.sourceJ)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceJExponent8Row141 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
