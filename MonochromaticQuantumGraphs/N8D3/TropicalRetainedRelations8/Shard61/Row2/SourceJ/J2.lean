import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row2.Data

/-! Source-J matching-2 exponent replay for first-overlap row 307. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 2 in row 307. -/
theorem tropicalOverlapSourceJExponent8_replay_row307_j2 :
    Pi.single tropicalOverlapProvenance8Row307.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row307.sourceJ)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceJExponent8Row307 2 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
