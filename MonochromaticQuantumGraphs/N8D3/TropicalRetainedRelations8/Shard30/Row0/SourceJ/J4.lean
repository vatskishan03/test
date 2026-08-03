import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard30.Row0.Data

/-! Source-J matching-4 exponent replay for first-overlap row 150. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 4 in row 150. -/
theorem tropicalOverlapSourceJExponent8_replay_row150_j4 :
    Pi.single tropicalOverlapProvenance8Row150.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row150.sourceJ)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceJExponent8Row150 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
