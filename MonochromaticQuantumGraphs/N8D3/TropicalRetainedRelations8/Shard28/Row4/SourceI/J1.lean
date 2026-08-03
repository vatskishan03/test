import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row4.Data

/-! Source-I matching-1 exponent replay for first-overlap row 144. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 1 in row 144. -/
theorem tropicalOverlapSourceIExponent8_replay_row144_j1 :
    Pi.single tropicalOverlapProvenance8Row144.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row144.sourceI)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceIExponent8Row144 1 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
