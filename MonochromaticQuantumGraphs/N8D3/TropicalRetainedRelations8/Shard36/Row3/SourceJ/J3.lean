import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row3.Data

/-! Source-J matching-3 exponent replay for first-overlap row 183. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 3 in row 183. -/
theorem tropicalOverlapSourceJExponent8_replay_row183_j3 :
    Pi.single tropicalOverlapProvenance8Row183.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row183.sourceJ)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceJExponent8Row183 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
