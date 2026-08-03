import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row2.Data

/-! Source-I matching-0 exponent replay for first-overlap row 62. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 62. -/
theorem tropicalOverlapSourceIExponent8_replay_row62_j0 :
    Pi.single tropicalOverlapProvenance8Row62.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row62.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row62 0 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
