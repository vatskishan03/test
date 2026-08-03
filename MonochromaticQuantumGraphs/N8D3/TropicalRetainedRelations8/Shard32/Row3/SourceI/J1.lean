import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row3.Data

/-! Source-I matching-1 exponent replay for first-overlap row 163. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 1 in row 163. -/
theorem tropicalOverlapSourceIExponent8_replay_row163_j1 :
    Pi.single tropicalOverlapProvenance8Row163.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row163.sourceI)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceIExponent8Row163 1 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
