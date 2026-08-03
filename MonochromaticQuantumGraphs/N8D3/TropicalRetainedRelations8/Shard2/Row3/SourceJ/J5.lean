import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row3.Data

/-! Source-J matching-5 exponent replay for first-overlap row 13. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 13. -/
theorem tropicalOverlapSourceJExponent8_replay_row13_j5 :
    Pi.single tropicalOverlapProvenance8Row13.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row13.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row13 5 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
