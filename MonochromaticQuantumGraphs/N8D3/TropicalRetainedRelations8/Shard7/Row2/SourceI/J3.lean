import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row2.Data

/-! Source-I matching-3 exponent replay for first-overlap row 37. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 37. -/
theorem tropicalOverlapSourceIExponent8_replay_row37_j3 :
    Pi.single tropicalOverlapProvenance8Row37.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row37.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row37 3 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
