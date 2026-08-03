import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row2.Data

/-! Source-I matching-3 exponent replay for first-overlap row 47. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 47. -/
theorem tropicalOverlapSourceIExponent8_replay_row47_j3 :
    Pi.single tropicalOverlapProvenance8Row47.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row47.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row47 3 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
