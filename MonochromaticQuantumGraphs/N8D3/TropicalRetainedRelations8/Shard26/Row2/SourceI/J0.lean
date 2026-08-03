import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row2.Data

/-! Source-I matching-0 exponent replay for first-overlap row 132. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 132. -/
theorem tropicalOverlapSourceIExponent8_replay_row132_j0 :
    Pi.single tropicalOverlapProvenance8Row132.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row132.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row132 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
