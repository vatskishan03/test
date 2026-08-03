import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row2.Data

/-! Source-I matching-3 exponent replay for first-overlap row 247. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 247. -/
theorem tropicalOverlapSourceIExponent8_replay_row247_j3 :
    Pi.single tropicalOverlapProvenance8Row247.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row247.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row247 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
