import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row2.Data

/-! Source-J matching-1 exponent replay for first-overlap row 327. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 1 in row 327. -/
theorem tropicalOverlapSourceJExponent8_replay_row327_j1 :
    Pi.single tropicalOverlapProvenance8Row327.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row327.sourceJ)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceJExponent8Row327 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
