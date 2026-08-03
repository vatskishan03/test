import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row4.Data

/-! Source-I matching-5 exponent replay for first-overlap row 314. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 5 in row 314. -/
theorem tropicalOverlapSourceIExponent8_replay_row314_j5 :
    Pi.single tropicalOverlapProvenance8Row314.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row314.sourceI)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceIExponent8Row314 5 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
