import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row3.Data

/-! Source-I matching-0 exponent replay for first-overlap row 63. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 63. -/
theorem tropicalOverlapSourceIExponent8_replay_row63_j0 :
    Pi.single tropicalOverlapProvenance8Row63.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row63.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row63 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
