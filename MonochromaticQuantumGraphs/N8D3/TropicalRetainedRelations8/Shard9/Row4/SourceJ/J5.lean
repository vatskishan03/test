import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row4.Data

/-! Source-J matching-5 exponent replay for first-overlap row 49. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 5 in row 49. -/
theorem tropicalOverlapSourceJExponent8_replay_row49_j5 :
    Pi.single tropicalOverlapProvenance8Row49.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row49.sourceJ)
          (tropicalBaseMatching8 5) =
      tropicalOverlapSourceJExponent8Row49 5 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
