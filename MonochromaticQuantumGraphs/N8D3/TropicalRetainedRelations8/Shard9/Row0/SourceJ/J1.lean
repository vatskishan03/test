import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row0.Data

/-! Source-J matching-1 exponent replay for first-overlap row 45. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 1 in row 45. -/
theorem tropicalOverlapSourceJExponent8_replay_row45_j1 :
    Pi.single tropicalOverlapProvenance8Row45.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row45.sourceJ)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceJExponent8Row45 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
