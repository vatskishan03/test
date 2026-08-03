import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard53.Row4.Data

/-! Source-J matching-0 exponent replay for first-overlap row 269. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 0 in row 269. -/
theorem tropicalOverlapSourceJExponent8_replay_row269_j0 :
    Pi.single tropicalOverlapProvenance8Row269.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row269.sourceJ)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceJExponent8Row269 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
