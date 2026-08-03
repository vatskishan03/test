import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row1.Data

/-! Source-J matching-2 exponent replay for first-overlap row 126. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 2 in row 126. -/
theorem tropicalOverlapSourceJExponent8_replay_row126_j2 :
    Pi.single tropicalOverlapProvenance8Row126.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row126.sourceJ)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceJExponent8Row126 2 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
