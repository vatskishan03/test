import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row2.Data

/-! Source-J matching-4 exponent replay for first-overlap row 297. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 4 in row 297. -/
theorem tropicalOverlapSourceJExponent8_replay_row297_j4 :
    Pi.single tropicalOverlapProvenance8Row297.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row297.sourceJ)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceJExponent8Row297 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
