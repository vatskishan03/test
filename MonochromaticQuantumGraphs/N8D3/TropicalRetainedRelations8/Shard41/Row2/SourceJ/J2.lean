import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row2.Data

/-! Source-J matching-2 exponent replay for first-overlap row 207. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 2 in row 207. -/
theorem tropicalOverlapSourceJExponent8_replay_row207_j2 :
    Pi.single tropicalOverlapProvenance8Row207.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row207.sourceJ)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceJExponent8Row207 2 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
