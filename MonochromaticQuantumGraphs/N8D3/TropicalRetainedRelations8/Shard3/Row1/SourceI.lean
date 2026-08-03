import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row1.Data

/-! Source-I exponent replay for first-overlap row 16. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 16. -/
theorem tropicalOverlapSourceIExponent8_replay_row16 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row16.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row16.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row16 j := by
  fin_cases j <;> decide

end

end MonochromaticQuantumGraphs.N8D3
