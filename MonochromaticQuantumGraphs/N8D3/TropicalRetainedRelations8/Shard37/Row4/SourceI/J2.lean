import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row4.Data

/-! Source-I matching-2 exponent replay for first-overlap row 189. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of shifted `B_i` exponent 2 in row 189. -/
theorem tropicalOverlapSourceIExponent8_replay_row189_j2 :
    Pi.single tropicalOverlapProvenance8Row189.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row189.sourceI)
          (tropicalBaseMatching8 2) =
      tropicalOverlapSourceIExponent8Row189 2 := by
  funext k
  fin_cases k <;> decide

end

end MonochromaticQuantumGraphs.N8D3
