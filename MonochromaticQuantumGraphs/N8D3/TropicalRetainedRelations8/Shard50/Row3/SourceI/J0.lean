import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row3.Data

/-! Source-I matching-0 exponent replay for first-overlap row 253. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 253. -/
theorem tropicalOverlapSourceIExponent8_replay_row253_j0 :
    Pi.single tropicalOverlapProvenance8Row253.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row253.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row253 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
