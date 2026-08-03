import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard30.Row3.Data

/-! Source-J matching-2 exponent replay for first-overlap row 153. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 2 in row 153. -/
theorem tropicalOverlapSourceJExponent8_replay_row153_j2 :
    Pi.single tropicalOverlapProvenance8Row153.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row153.sourceJ)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceJExponent8Row153 2 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
