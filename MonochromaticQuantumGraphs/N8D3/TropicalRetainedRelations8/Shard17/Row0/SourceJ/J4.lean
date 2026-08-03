import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row0.Data

/-! Source-J matching-4 exponent replay for first-overlap row 85. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 4 in row 85. -/
theorem tropicalOverlapSourceJExponent8_replay_row85_j4 :
    Pi.single tropicalOverlapProvenance8Row85.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row85.sourceJ)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceJExponent8Row85 4 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
