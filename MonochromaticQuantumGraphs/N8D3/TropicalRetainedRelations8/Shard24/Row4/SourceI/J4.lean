import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row4.Data

/-! Source-I matching-4 exponent replay for first-overlap row 124. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 4 in row 124. -/
theorem tropicalOverlapSourceIExponent8_replay_row124_j4 :
    Pi.single tropicalOverlapProvenance8Row124.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row124.sourceI)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceIExponent8Row124 4 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
