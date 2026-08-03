import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row1.Data

/-! Source-I matching-2 exponent replay for first-overlap row 26. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 2 in row 26. -/
theorem tropicalOverlapSourceIExponent8_replay_row26_j2 :
    Pi.single tropicalOverlapProvenance8Row26.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row26.sourceI)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceIExponent8Row26 2 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
