import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row4.Data

/-! Source-J matching-4 exponent replay for first-overlap row 224. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 4 in row 224. -/
theorem tropicalOverlapSourceJExponent8_replay_row224_j4 :
    Pi.single tropicalOverlapProvenance8Row224.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row224.sourceJ)
          (tropicalBaseMatching8 4) =
      tropicalOverlapSourceJExponent8Row224 4 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
