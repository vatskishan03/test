import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard1.Row1.Data

/-! Source-J matching-0 exponent replay for first-overlap row 6. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 0 in row 6. -/
theorem tropicalOverlapSourceJExponent8_replay_row6_j0 :
    Pi.single tropicalOverlapProvenance8Row6.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row6.sourceJ)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceJExponent8Row6 0 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
