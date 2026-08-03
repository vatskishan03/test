import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row0.Data

/-! Source-I matching-0 exponent replay for first-overlap row 225. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 225. -/
theorem tropicalOverlapSourceIExponent8_replay_row225_j0 :
    Pi.single tropicalOverlapProvenance8Row225.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row225.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row225 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
