import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row1.Data

/-! Source-I matching-2 exponent replay for first-overlap row 351. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 2 in row 351. -/
theorem tropicalOverlapSourceIExponent8_replay_row351_j2 :
    Pi.single tropicalOverlapProvenance8Row351.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row351.sourceI)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceIExponent8Row351 2 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
