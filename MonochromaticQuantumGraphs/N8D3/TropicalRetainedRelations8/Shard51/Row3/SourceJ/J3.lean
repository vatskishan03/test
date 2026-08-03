import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row3.Data

/-! Source-J matching-3 exponent replay for first-overlap row 258. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 3 in row 258. -/
theorem tropicalOverlapSourceJExponent8_replay_row258_j3 :
    Pi.single tropicalOverlapProvenance8Row258.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row258.sourceJ)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceJExponent8Row258 3 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
