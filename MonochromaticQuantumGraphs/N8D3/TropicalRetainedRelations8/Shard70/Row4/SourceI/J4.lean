import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4.Data

/-! Source-I matching-4 exponent replay for first-overlap row 354. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 4 in row 354. -/
theorem tropicalOverlapSourceIExponent8_replay_row354_j4 :
    Pi.single tropicalOverlapProvenance8Row354.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row354.sourceI)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceIExponent8Row354 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
