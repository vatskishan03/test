import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row3.Data

/-! Source-I matching-2 exponent replay for first-overlap row 303. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 2 in row 303. -/
theorem tropicalOverlapSourceIExponent8_replay_row303_j2 :
    Pi.single tropicalOverlapProvenance8Row303.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row303.sourceI)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceIExponent8Row303 2 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
