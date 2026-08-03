import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row0.Data

/-! Source-I matching-3 exponent replay for first-overlap row 330. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 330. -/
theorem tropicalOverlapSourceIExponent8_replay_row330_j3 :
    Pi.single tropicalOverlapProvenance8Row330.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row330.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row330 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
