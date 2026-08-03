import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row2.Data

/-! Source-J matching-5 exponent replay for first-overlap row 202. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 202. -/
theorem tropicalOverlapSourceJExponent8_replay_row202_j5 :
    Pi.single tropicalOverlapProvenance8Row202.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row202.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row202 5 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
