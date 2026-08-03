import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row0.Data

/-! Source-I matching-5 exponent replay for first-overlap row 275. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 5 in row 275. -/
theorem tropicalOverlapSourceIExponent8_replay_row275_j5 :
    Pi.single tropicalOverlapProvenance8Row275.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row275.sourceI)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceIExponent8Row275 5 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
