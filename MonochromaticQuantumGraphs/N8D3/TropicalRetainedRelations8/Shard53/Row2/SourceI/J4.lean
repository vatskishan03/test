import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard53.Row2.Data

/-! Source-I matching-4 exponent replay for first-overlap row 267. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 4 in row 267. -/
theorem tropicalOverlapSourceIExponent8_replay_row267_j4 :
    Pi.single tropicalOverlapProvenance8Row267.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row267.sourceI)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceIExponent8Row267 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
