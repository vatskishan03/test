import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard29.Row1.Data

/-! Source-I exponent replay for first-overlap row 146. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 146. -/
theorem tropicalOverlapSourceIExponent8_replay_row146 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row146.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row146.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row146 j := by
  fin_cases j <;> decide

end

end MonochromaticQuantumGraphs.N8D3
