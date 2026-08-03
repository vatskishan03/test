import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row2.Data

/-! Source-I matching-1 exponent replay for first-overlap row 37. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 1 in row 37. -/
theorem tropicalOverlapSourceIExponent8_replay_row37_j1 :
    Pi.single tropicalOverlapProvenance8Row37.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row37.sourceI)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceIExponent8Row37 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
