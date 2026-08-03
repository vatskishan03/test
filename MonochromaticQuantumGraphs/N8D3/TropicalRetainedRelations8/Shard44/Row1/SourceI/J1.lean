import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row1.Data

/-! Source-I matching-1 exponent replay for first-overlap row 221. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 1 in row 221. -/
theorem tropicalOverlapSourceIExponent8_replay_row221_j1 :
    Pi.single tropicalOverlapProvenance8Row221.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row221.sourceI)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceIExponent8Row221 1 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
