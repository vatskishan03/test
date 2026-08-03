import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row2.Data

/-! Source-I matching-3 exponent replay for first-overlap row 297. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 297. -/
theorem tropicalOverlapSourceIExponent8_replay_row297_j3 :
    Pi.single tropicalOverlapProvenance8Row297.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row297.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row297 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
