import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row4.Data

/-! Source-I matching-2 exponent replay for first-overlap row 69. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 2 in row 69. -/
theorem tropicalOverlapSourceIExponent8_replay_row69_j2 :
    Pi.single tropicalOverlapProvenance8Row69.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row69.sourceI)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceIExponent8Row69 2 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
