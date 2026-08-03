import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4.Data

/-! Source-J matching-3 exponent replay for first-overlap row 284. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 3 in row 284. -/
theorem tropicalOverlapSourceJExponent8_replay_row284_j3 :
    Pi.single tropicalOverlapProvenance8Row284.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row284.sourceJ)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceJExponent8Row284 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
