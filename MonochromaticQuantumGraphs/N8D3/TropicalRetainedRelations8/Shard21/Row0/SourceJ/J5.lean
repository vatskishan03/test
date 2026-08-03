import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row0.Data

/-! Source-J matching-5 exponent replay for first-overlap row 105. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 105. -/
theorem tropicalOverlapSourceJExponent8_replay_row105_j5 :
    Pi.single tropicalOverlapProvenance8Row105.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row105.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row105 5 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
