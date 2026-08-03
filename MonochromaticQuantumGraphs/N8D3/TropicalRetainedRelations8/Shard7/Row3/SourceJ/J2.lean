import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row3.Data

/-! Source-J matching-2 exponent replay for first-overlap row 38. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_j` exponent 2 in row 38. -/
theorem tropicalOverlapSourceJExponent8_replay_row38_j2 :
    Pi.single tropicalOverlapProvenance8Row38.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row38.sourceJ)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceJExponent8Row38 2 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
