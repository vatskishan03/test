import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row3.Data

/-! Source-J matching-5 exponent replay for first-overlap row 348. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 348. -/
theorem tropicalOverlapSourceJExponent8_replay_row348_j5 :
    Pi.single tropicalOverlapProvenance8Row348.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row348.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row348 5 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
