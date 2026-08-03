import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row2.Data

/-! Source-I matching-4 exponent replay for first-overlap row 82. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 4 in row 82. -/
theorem tropicalOverlapSourceIExponent8_replay_row82_j4 :
    Pi.single tropicalOverlapProvenance8Row82.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row82.sourceI)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceIExponent8Row82 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
