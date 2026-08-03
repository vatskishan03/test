import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row3.Data

/-! Source-I matching-1 exponent replay for first-overlap row 108. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 1 in row 108. -/
theorem tropicalOverlapSourceIExponent8_replay_row108_j1 :
    Pi.single tropicalOverlapProvenance8Row108.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row108.sourceI)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceIExponent8Row108 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
