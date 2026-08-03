import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row2.Data

/-! Source-I matching-5 exponent replay for first-overlap row 317. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 5 in row 317. -/
theorem tropicalOverlapSourceIExponent8_replay_row317_j5 :
    Pi.single tropicalOverlapProvenance8Row317.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row317.sourceI)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceIExponent8Row317 5 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
