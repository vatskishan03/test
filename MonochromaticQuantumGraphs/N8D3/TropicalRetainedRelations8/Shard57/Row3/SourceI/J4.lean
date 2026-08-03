import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row3.Data

/-! Source-I matching-4 exponent replay for first-overlap row 288. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 4 in row 288. -/
theorem tropicalOverlapSourceIExponent8_replay_row288_j4 :
    Pi.single tropicalOverlapProvenance8Row288.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row288.sourceI)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceIExponent8Row288 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
