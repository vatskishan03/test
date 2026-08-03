import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row3.Data

/-! Source-J matching-0 exponent replay for first-overlap row 343. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 0 in row 343. -/
theorem tropicalOverlapSourceJExponent8_replay_row343_j0 :
    Pi.single tropicalOverlapProvenance8Row343.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row343.sourceJ)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceJExponent8Row343 0 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
