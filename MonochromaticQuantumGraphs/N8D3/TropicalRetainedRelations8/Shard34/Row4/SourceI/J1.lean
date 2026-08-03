import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row4.Data

/-! Source-I matching-1 exponent replay for first-overlap row 174. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 1 in row 174. -/
theorem tropicalOverlapSourceIExponent8_replay_row174_j1 :
    Pi.single tropicalOverlapProvenance8Row174.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row174.sourceI)
          (tropicalBaseMatching8 1) =
      tropicalOverlapSourceIExponent8Row174 1 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
