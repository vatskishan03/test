import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row1.Data

/-! Source-I matching-0 exponent replay for first-overlap row 126. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 126. -/
theorem tropicalOverlapSourceIExponent8_replay_row126_j0 :
    Pi.single tropicalOverlapProvenance8Row126.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row126.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row126 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
