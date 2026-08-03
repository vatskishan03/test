import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row0.Data

/-! Source-J matching-5 exponent replay for first-overlap row 270. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 270. -/
theorem tropicalOverlapSourceJExponent8_replay_row270_j5 :
    Pi.single tropicalOverlapProvenance8Row270.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row270.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row270 5 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
