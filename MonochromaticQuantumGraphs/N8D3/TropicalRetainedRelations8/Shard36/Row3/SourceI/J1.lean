import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row3.Data

/-! Source-I matching-1 exponent replay for first-overlap row 183. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 1 in row 183. -/
theorem tropicalOverlapSourceIExponent8_replay_row183_j1 :
    Pi.single tropicalOverlapProvenance8Row183.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row183.sourceI)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceIExponent8Row183 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
