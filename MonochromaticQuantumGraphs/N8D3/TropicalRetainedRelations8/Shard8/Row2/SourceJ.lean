import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row2.Data

/-! Source-J exponent replay for first-overlap row 42. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 42. -/
theorem tropicalOverlapSourceJExponent8_replay_row42 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row42.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row42.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row42 j := by
  fin_cases j <;> decide

end

end MonochromaticQuantumGraphs.N8D3
