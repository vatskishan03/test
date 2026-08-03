import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row3.Data

/-! Source-J matching-3 exponent replay for first-overlap row 273. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 3 in row 273. -/
theorem tropicalOverlapSourceJExponent8_replay_row273_j3 :
    Pi.single tropicalOverlapProvenance8Row273.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row273.sourceJ)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceJExponent8Row273 3 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
