import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row2.Data

/-! Source-I exponent replay for first-overlap row 122. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 122. -/
theorem tropicalOverlapSourceIExponent8_replay_row122 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row122.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row122.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row122 j := by
  fin_cases j <;> decide

end

end MonochromaticQuantumGraphs.N8D3
