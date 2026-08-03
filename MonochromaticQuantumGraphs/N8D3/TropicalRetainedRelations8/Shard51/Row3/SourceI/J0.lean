import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row3.Data

/-! Source-I matching-0 exponent replay for first-overlap row 258. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 258. -/
theorem tropicalOverlapSourceIExponent8_replay_row258_j0 :
    Pi.single tropicalOverlapProvenance8Row258.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row258.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row258 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
