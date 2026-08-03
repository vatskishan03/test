import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row4.Data

/-! Source-I matching-3 exponent replay for first-overlap row 294. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 3 in row 294. -/
theorem tropicalOverlapSourceIExponent8_replay_row294_j3 :
    Pi.single tropicalOverlapProvenance8Row294.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row294.sourceI)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceIExponent8Row294 3 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
