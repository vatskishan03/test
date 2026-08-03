import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row4.Data

/-! Source-I matching-3 exponent replay for first-overlap row 174. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 174. -/
theorem tropicalOverlapSourceIExponent8_replay_row174_j3 :
    Pi.single tropicalOverlapProvenance8Row174.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row174.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row174 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
