import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row3.Data

/-! Source-I matching-0 exponent replay for first-overlap row 73. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 73. -/
theorem tropicalOverlapSourceIExponent8_replay_row73_j0 :
    Pi.single tropicalOverlapProvenance8Row73.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row73.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row73 0 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
