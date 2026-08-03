import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row0.Data

/-! Source-J matching-0 exponent replay for first-overlap row 280. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 0 in row 280. -/
theorem tropicalOverlapSourceJExponent8_replay_row280_j0 :
    Pi.single tropicalOverlapProvenance8Row280.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row280.sourceJ)
          (tropicalBaseMatching8 0) =
      tropicalOverlapSourceJExponent8Row280 0 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
