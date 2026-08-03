import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row4.Data

/-! Source-I matching-5 exponent replay for first-overlap row 309. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 5 in row 309. -/
theorem tropicalOverlapSourceIExponent8_replay_row309_j5 :
    Pi.single tropicalOverlapProvenance8Row309.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row309.sourceI)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceIExponent8Row309 5 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
