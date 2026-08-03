import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row2.Data

/-! Source-J matching-5 exponent replay for first-overlap row 122. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 122. -/
theorem tropicalOverlapSourceJExponent8_replay_row122_j5 :
    Pi.single tropicalOverlapProvenance8Row122.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row122.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row122 5 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
