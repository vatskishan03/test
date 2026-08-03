import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row0.Data

/-! Source-J matching-0 exponent replay for first-overlap row 175. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 0 in row 175. -/
theorem tropicalOverlapSourceJExponent8_replay_row175_j0 :
    Pi.single tropicalOverlapProvenance8Row175.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row175.sourceJ)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceJExponent8Row175 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
