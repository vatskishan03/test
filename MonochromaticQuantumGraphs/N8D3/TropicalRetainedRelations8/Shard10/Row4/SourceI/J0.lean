import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row4.Data

/-! Source-I matching-0 exponent replay for first-overlap row 54. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 54. -/
theorem tropicalOverlapSourceIExponent8_replay_row54_j0 :
    Pi.single tropicalOverlapProvenance8Row54.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row54.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row54 0 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
