import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row4.Data

/-! Source-I matching-0 exponent replay for first-overlap row 29. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 29. -/
theorem tropicalOverlapSourceIExponent8_replay_row29_j0 :
    Pi.single tropicalOverlapProvenance8Row29.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row29.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row29 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
