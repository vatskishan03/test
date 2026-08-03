import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row4.Data

/-! Source-J matching-4 exponent replay for first-overlap row 39. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 4 in row 39. -/
theorem tropicalOverlapSourceJExponent8_replay_row39_j4 :
    Pi.single tropicalOverlapProvenance8Row39.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row39.sourceJ)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceJExponent8Row39 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
