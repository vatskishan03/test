import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row1.Data

/-! Source-J matching-5 exponent replay for first-overlap row 261. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 261. -/
theorem tropicalOverlapSourceJExponent8_replay_row261_j5 :
    Pi.single tropicalOverlapProvenance8Row261.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row261.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row261 5 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
