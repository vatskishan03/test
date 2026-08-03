import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard47.Row3.Data

/-! Source-J matching-5 exponent replay for first-overlap row 238. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 238. -/
theorem tropicalOverlapSourceJExponent8_replay_row238_j5 :
    Pi.single tropicalOverlapProvenance8Row238.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row238.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row238 5 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
