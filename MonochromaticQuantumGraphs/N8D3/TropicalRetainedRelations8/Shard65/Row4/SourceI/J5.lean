import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row4.Data

/-! Source-I matching-5 exponent replay for first-overlap row 329. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 5 in row 329. -/
theorem tropicalOverlapSourceIExponent8_replay_row329_j5 :
    Pi.single tropicalOverlapProvenance8Row329.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row329.sourceI)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceIExponent8Row329 5 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
