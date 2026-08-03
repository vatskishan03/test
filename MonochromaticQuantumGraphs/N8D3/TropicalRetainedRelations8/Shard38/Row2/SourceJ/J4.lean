import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row2.Data

/-! Source-J matching-4 exponent replay for first-overlap row 192. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 4 in row 192. -/
theorem tropicalOverlapSourceJExponent8_replay_row192_j4 :
    Pi.single tropicalOverlapProvenance8Row192.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row192.sourceJ)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceJExponent8Row192 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
