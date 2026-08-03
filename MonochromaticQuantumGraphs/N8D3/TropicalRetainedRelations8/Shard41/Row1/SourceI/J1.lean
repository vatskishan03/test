import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row1.Data

/-! Source-I matching-1 exponent replay for first-overlap row 206. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 1 in row 206. -/
theorem tropicalOverlapSourceIExponent8_replay_row206_j1 :
    Pi.single tropicalOverlapProvenance8Row206.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row206.sourceI)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceIExponent8Row206 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
