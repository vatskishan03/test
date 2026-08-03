import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row0.Data

/-! Source-J matching-0 exponent replay for first-overlap row 0. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 0 in row 0. -/
theorem tropicalOverlapSourceJExponent8_replay_row0_j0 :
    Pi.single tropicalOverlapProvenance8Row0.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row0.sourceJ)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceJExponent8Row0 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
