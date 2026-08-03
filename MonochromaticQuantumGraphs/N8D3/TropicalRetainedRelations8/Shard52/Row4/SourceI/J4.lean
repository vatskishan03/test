import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row4.Data

/-! Source-I matching-4 exponent replay for first-overlap row 264. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 4 in row 264. -/
theorem tropicalOverlapSourceIExponent8_replay_row264_j4 :
    Pi.single tropicalOverlapProvenance8Row264.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row264.sourceI)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceIExponent8Row264 4 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
