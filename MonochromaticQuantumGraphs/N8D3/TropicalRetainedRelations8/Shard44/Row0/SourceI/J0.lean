import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row0.Data

/-! Source-I matching-0 exponent replay for first-overlap row 220. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 220. -/
theorem tropicalOverlapSourceIExponent8_replay_row220_j0 :
    Pi.single tropicalOverlapProvenance8Row220.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row220.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row220 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
