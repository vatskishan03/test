import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row4.Data

/-! Source-J matching-5 exponent replay for first-overlap row 139. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 139. -/
theorem tropicalOverlapSourceJExponent8_replay_row139_j5 :
    Pi.single tropicalOverlapProvenance8Row139.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row139.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row139 5 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
