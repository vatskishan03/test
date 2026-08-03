import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row2.Data

/-! Source-J matching-5 exponent replay for first-overlap row 347. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 347. -/
theorem tropicalOverlapSourceJExponent8_replay_row347_j5 :
    Pi.single tropicalOverlapProvenance8Row347.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row347.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row347 5 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
