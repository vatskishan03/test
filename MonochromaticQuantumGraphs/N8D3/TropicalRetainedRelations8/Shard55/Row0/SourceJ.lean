import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row0.Data

/-! Source-J exponent replay for first-overlap row 275. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 275. -/
theorem tropicalOverlapSourceJExponent8_replay_row275 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row275.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row275.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row275 j := by
  fin_cases j <;> decide

end

end MonochromaticQuantumGraphs.N8D3
