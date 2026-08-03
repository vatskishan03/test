import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row0.Data

/-! Source-J matching-3 exponent replay for first-overlap row 245. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 3 in row 245. -/
theorem tropicalOverlapSourceJExponent8_replay_row245_j3 :
    Pi.single tropicalOverlapProvenance8Row245.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row245.sourceJ)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceJExponent8Row245 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
