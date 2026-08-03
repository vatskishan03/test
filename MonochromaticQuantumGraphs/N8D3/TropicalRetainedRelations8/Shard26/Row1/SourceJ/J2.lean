import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row1.Data

/-! Source-J matching-2 exponent replay for first-overlap row 131. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 2 in row 131. -/
theorem tropicalOverlapSourceJExponent8_replay_row131_j2 :
    Pi.single tropicalOverlapProvenance8Row131.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row131.sourceJ)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceJExponent8Row131 2 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
