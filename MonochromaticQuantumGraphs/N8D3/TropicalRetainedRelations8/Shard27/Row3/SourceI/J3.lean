import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row3.Data

/-! Source-I matching-3 exponent replay for first-overlap row 138. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 138. -/
theorem tropicalOverlapSourceIExponent8_replay_row138_j3 :
    Pi.single tropicalOverlapProvenance8Row138.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row138.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row138 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
