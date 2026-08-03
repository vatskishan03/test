import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard20.Row1.Data

/-! Source-I matching-4 exponent replay for first-overlap row 101. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 4 in row 101. -/
theorem tropicalOverlapSourceIExponent8_replay_row101_j4 :
    Pi.single tropicalOverlapProvenance8Row101.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row101.sourceI)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceIExponent8Row101 4 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
