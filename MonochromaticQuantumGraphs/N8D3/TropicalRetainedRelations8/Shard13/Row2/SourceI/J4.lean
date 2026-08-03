import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row2.Data

/-! Source-I matching-4 exponent replay for first-overlap row 67. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 4 in row 67. -/
theorem tropicalOverlapSourceIExponent8_replay_row67_j4 :
    Pi.single tropicalOverlapProvenance8Row67.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row67.sourceI)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceIExponent8Row67 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
