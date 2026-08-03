import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row1.Data

/-! Source-I matching-3 exponent replay for first-overlap row 271. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 271. -/
theorem tropicalOverlapSourceIExponent8_replay_row271_j3 :
    Pi.single tropicalOverlapProvenance8Row271.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row271.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row271 3 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
