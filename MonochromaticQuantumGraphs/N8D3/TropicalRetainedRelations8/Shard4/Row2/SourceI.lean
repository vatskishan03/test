import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row2.Data

/-! Source-I exponent replay for first-overlap row 22. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 22. -/
theorem tropicalOverlapSourceIExponent8_replay_row22 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row22.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row22.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row22 j := by
  fin_cases j <;> decide

end

end MonochromaticQuantumGraphs.N8D3
