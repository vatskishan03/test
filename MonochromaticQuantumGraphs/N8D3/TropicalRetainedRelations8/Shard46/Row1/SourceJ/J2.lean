import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row1.Data

/-! Source-J matching-2 exponent replay for first-overlap row 231. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 2 in row 231. -/
theorem tropicalOverlapSourceJExponent8_replay_row231_j2 :
    Pi.single tropicalOverlapProvenance8Row231.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row231.sourceJ)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceJExponent8Row231 2 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
