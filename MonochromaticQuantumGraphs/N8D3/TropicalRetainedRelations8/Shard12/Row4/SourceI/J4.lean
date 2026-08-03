import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row4.Data

/-! Source-I matching-4 exponent replay for first-overlap row 64. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 4 in row 64. -/
theorem tropicalOverlapSourceIExponent8_replay_row64_j4 :
    Pi.single tropicalOverlapProvenance8Row64.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row64.sourceI)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceIExponent8Row64 4 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
