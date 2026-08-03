import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row1.Data

/-! Source-J matching-4 exponent replay for first-overlap row 216. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 4 in row 216. -/
theorem tropicalOverlapSourceJExponent8_replay_row216_j4 :
    Pi.single tropicalOverlapProvenance8Row216.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row216.sourceJ)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceJExponent8Row216 4 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
