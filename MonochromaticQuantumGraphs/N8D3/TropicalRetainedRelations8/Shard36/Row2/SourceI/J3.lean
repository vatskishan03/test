import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row2.Data

/-! Source-I matching-3 exponent replay for first-overlap row 182. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 182. -/
theorem tropicalOverlapSourceIExponent8_replay_row182_j3 :
    Pi.single tropicalOverlapProvenance8Row182.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row182.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row182 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
