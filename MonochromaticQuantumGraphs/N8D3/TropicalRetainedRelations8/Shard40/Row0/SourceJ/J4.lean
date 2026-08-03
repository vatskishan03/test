import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row0.Data

/-! Source-J matching-4 exponent replay for first-overlap row 200. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 4 in row 200. -/
theorem tropicalOverlapSourceJExponent8_replay_row200_j4 :
    Pi.single tropicalOverlapProvenance8Row200.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row200.sourceJ)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceJExponent8Row200 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
