import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard1.Row4.Data

/-! Source-I matching-0 exponent replay for first-overlap row 9. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 9. -/
theorem tropicalOverlapSourceIExponent8_replay_row9_j0 :
    Pi.single tropicalOverlapProvenance8Row9.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row9.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row9 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
