import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard47.Row2.Data

/-! Source-J matching-3 exponent replay for first-overlap row 237. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 3 in row 237. -/
theorem tropicalOverlapSourceJExponent8_replay_row237_j3 :
    Pi.single tropicalOverlapProvenance8Row237.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row237.sourceJ)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceJExponent8Row237 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
