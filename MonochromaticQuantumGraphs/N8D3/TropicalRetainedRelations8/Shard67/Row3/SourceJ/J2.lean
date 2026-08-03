import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row3.Data

/-! Source-J matching-2 exponent replay for first-overlap row 338. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 2 in row 338. -/
theorem tropicalOverlapSourceJExponent8_replay_row338_j2 :
    Pi.single tropicalOverlapProvenance8Row338.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row338.sourceJ)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceJExponent8Row338 2 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
