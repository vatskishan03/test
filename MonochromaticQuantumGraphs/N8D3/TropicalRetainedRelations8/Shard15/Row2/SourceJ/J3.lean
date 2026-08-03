import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row2.Data

/-! Source-J matching-3 exponent replay for first-overlap row 77. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 3 in row 77. -/
theorem tropicalOverlapSourceJExponent8_replay_row77_j3 :
    Pi.single tropicalOverlapProvenance8Row77.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row77.sourceJ)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceJExponent8Row77 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
