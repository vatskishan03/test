import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row3.Data

/-! Source-J matching-3 exponent replay for first-overlap row 38. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 3 in row 38. -/
theorem tropicalOverlapSourceJExponent8_replay_row38_j3 :
    Pi.single tropicalOverlapProvenance8Row38.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row38.sourceJ)
          (tropicalBaseMatching8 3) =
      tropicalOverlapSourceJExponent8Row38 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
