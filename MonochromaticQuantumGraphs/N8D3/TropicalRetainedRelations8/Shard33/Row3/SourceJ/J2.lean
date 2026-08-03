import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row3.Data

/-! Source-J matching-2 exponent replay for first-overlap row 168. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 2 in row 168. -/
theorem tropicalOverlapSourceJExponent8_replay_row168_j2 :
    Pi.single tropicalOverlapProvenance8Row168.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row168.sourceJ)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceJExponent8Row168 2 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
