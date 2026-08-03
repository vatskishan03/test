import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row4.Data

/-! Source-J matching-4 exponent replay for first-overlap row 219. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 4 in row 219. -/
theorem tropicalOverlapSourceJExponent8_replay_row219_j4 :
    Pi.single tropicalOverlapProvenance8Row219.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row219.sourceJ)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceJExponent8Row219 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
