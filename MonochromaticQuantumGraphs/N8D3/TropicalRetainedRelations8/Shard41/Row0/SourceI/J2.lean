import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row0.Data

/-! Source-I matching-2 exponent replay for first-overlap row 205. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 2 in row 205. -/
theorem tropicalOverlapSourceIExponent8_replay_row205_j2 :
    Pi.single tropicalOverlapProvenance8Row205.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row205.sourceI)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceIExponent8Row205 2 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
