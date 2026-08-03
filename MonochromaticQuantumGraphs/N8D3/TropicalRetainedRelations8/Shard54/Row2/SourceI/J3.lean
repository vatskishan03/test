import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row2.Data

/-! Source-I matching-3 exponent replay for first-overlap row 272. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 272. -/
theorem tropicalOverlapSourceIExponent8_replay_row272_j3 :
    Pi.single tropicalOverlapProvenance8Row272.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row272.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row272 3 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
