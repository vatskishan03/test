import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row4.Data

/-! Source-J matching-0 exponent replay for first-overlap row 359. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 0 in row 359. -/
theorem tropicalOverlapSourceJExponent8_replay_row359_j0 :
    Pi.single tropicalOverlapProvenance8Row359.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row359.sourceJ)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceJExponent8Row359 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
