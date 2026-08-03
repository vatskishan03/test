import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard29.Row4.Data

/-! Source-J matching-5 exponent replay for first-overlap row 149. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 149. -/
theorem tropicalOverlapSourceJExponent8_replay_row149_j5 :
    Pi.single tropicalOverlapProvenance8Row149.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row149.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row149 5 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
