import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row1.Data

/-! Source-J matching-3 exponent replay for first-overlap row 111. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 3 in row 111. -/
theorem tropicalOverlapSourceJExponent8_replay_row111_j3 :
    Pi.single tropicalOverlapProvenance8Row111.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row111.sourceJ)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceJExponent8Row111 3 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
