import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row4.Data

/-! Source-I matching-1 exponent replay for first-overlap row 114. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 1 in row 114. -/
theorem tropicalOverlapSourceIExponent8_replay_row114_j1 :
    Pi.single tropicalOverlapProvenance8Row114.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row114.sourceI)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceIExponent8Row114 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
