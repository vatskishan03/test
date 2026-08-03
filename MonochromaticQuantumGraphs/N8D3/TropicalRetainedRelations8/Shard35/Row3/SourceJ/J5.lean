import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row3.Data

/-! Source-J matching-5 exponent replay for first-overlap row 178. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 178. -/
theorem tropicalOverlapSourceJExponent8_replay_row178_j5 :
    Pi.single tropicalOverlapProvenance8Row178.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row178.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row178 5 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
