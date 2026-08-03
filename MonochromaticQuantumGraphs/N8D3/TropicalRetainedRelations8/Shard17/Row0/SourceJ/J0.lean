import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row0.Data

/-! Source-J matching-0 exponent replay for first-overlap row 85. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 0 in row 85. -/
theorem tropicalOverlapSourceJExponent8_replay_row85_j0 :
    Pi.single tropicalOverlapProvenance8Row85.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row85.sourceJ)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceJExponent8Row85 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
