import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row3.Data

/-! Source-I matching-3 exponent replay for first-overlap row 98. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 98. -/
theorem tropicalOverlapSourceIExponent8_replay_row98_j3 :
    Pi.single tropicalOverlapProvenance8Row98.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row98.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row98 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
