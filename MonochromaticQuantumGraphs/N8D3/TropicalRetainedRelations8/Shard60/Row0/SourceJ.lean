import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row0.Data

/-! Source-J exponent replay for first-overlap row 300. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 300. -/
theorem tropicalOverlapSourceJExponent8_replay_row300 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row300.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row300.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row300 j := by
  fin_cases j <;> decide

end

end MonochromaticQuantumGraphs.N8D3
