import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row3.Data

/-! Source-J matching-2 exponent replay for first-overlap row 88. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 2 in row 88. -/
theorem tropicalOverlapSourceJExponent8_replay_row88_j2 :
    Pi.single tropicalOverlapProvenance8Row88.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row88.sourceJ)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceJExponent8Row88 2 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
