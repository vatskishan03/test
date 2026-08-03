import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row2.Data

/-! Source-J matching-0 exponent replay for first-overlap row 57. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 0 in row 57. -/
theorem tropicalOverlapSourceJExponent8_replay_row57_j0 :
    Pi.single tropicalOverlapProvenance8Row57.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row57.sourceJ)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceJExponent8Row57 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
