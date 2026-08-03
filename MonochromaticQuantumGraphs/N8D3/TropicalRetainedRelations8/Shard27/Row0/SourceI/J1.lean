import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row0.Data

/-! Source-I matching-1 exponent replay for first-overlap row 135. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 1 in row 135. -/
theorem tropicalOverlapSourceIExponent8_replay_row135_j1 :
    Pi.single tropicalOverlapProvenance8Row135.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row135.sourceI)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceIExponent8Row135 1 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
