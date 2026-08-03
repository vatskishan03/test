import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row0.Data

/-! Source-I matching-0 exponent replay for first-overlap row 50. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 0 in row 50. -/
theorem tropicalOverlapSourceIExponent8_replay_row50_j0 :
    Pi.single tropicalOverlapProvenance8Row50.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row50.sourceI)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceIExponent8Row50 0 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
