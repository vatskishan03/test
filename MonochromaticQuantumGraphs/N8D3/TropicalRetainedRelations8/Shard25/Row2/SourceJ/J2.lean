import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row2.Data

/-! Source-J matching-2 exponent replay for first-overlap row 127. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 2 in row 127. -/
theorem tropicalOverlapSourceJExponent8_replay_row127_j2 :
    Pi.single tropicalOverlapProvenance8Row127.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row127.sourceJ)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceJExponent8Row127 2 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
