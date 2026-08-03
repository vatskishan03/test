import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row3.Data

/-! Source-I matching-5 exponent replay for first-overlap row 198. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 5 in row 198. -/
theorem tropicalOverlapSourceIExponent8_replay_row198_j5 :
    Pi.single tropicalOverlapProvenance8Row198.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row198.sourceI)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceIExponent8Row198 5 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
