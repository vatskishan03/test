import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row3.Data

/-! Source-I matching-1 exponent replay for first-overlap row 203. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 1 in row 203. -/
theorem tropicalOverlapSourceIExponent8_replay_row203_j1 :
    Pi.single tropicalOverlapProvenance8Row203.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row203.sourceI)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceIExponent8Row203 1 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
