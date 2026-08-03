import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row1.Data

/-! Source-I matching-1 exponent replay for first-overlap row 321. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 1 in row 321. -/
theorem tropicalOverlapSourceIExponent8_replay_row321_j1 :
    Pi.single tropicalOverlapProvenance8Row321.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row321.sourceI)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceIExponent8Row321 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
