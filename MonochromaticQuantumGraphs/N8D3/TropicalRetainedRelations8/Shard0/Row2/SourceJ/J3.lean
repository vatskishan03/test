import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row2.Data

/-! Source-J matching-3 exponent replay for first-overlap row 2. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 3 in row 2. -/
theorem tropicalOverlapSourceJExponent8_replay_row2_j3 :
    Pi.single tropicalOverlapProvenance8Row2.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row2.sourceJ)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceJExponent8Row2 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
