import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row3.Data

/-! Source-I exponent replay for first-overlap row 263. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 263. -/
theorem tropicalOverlapSourceIExponent8_replay_row263 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row263.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row263.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row263 j := by
  fin_cases j <;> decide

end

end MonochromaticQuantumGraphs.N8D3
