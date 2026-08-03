import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row3.Data

/-! Source-I matching-3 exponent replay for first-overlap row 353. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 353. -/
theorem tropicalOverlapSourceIExponent8_replay_row353_j3 :
    Pi.single tropicalOverlapProvenance8Row353.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row353.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row353 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
