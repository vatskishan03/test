import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row0.Data

/-! Source-J matching-1 exponent replay for first-overlap row 275. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 1 in row 275. -/
theorem tropicalOverlapSourceJExponent8_replay_row275_j1 :
    Pi.single tropicalOverlapProvenance8Row275.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row275.sourceJ)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceJExponent8Row275 1 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
