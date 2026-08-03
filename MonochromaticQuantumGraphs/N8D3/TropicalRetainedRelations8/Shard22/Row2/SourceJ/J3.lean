import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row2.Data

/-! Source-J matching-3 exponent replay for first-overlap row 112. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 3 in row 112. -/
theorem tropicalOverlapSourceJExponent8_replay_row112_j3 :
    Pi.single tropicalOverlapProvenance8Row112.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row112.sourceJ)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceJExponent8Row112 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
