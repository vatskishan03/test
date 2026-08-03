import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row4.Data

/-! Source-J matching-4 exponent replay for first-overlap row 14. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 4 in row 14. -/
theorem tropicalOverlapSourceJExponent8_replay_row14_j4 :
    Pi.single tropicalOverlapProvenance8Row14.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row14.sourceJ)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceJExponent8Row14 4 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
