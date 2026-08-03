import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row0.SourceI.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row0.SourceI.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row0.SourceI.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row0.SourceI.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row0.SourceI.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row0.SourceI.J5

/-! Collect the six source-I exponent replays for first-overlap row 20. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_i` exponents in row 20. -/
theorem tropicalOverlapSourceIExponent8_replay_row20 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row20.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row20.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row20 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceIExponent8_replay_row20_j0
  · simpa using tropicalOverlapSourceIExponent8_replay_row20_j1
  · simpa using tropicalOverlapSourceIExponent8_replay_row20_j2
  · simpa using tropicalOverlapSourceIExponent8_replay_row20_j3
  · simpa using tropicalOverlapSourceIExponent8_replay_row20_j4
  · simpa using tropicalOverlapSourceIExponent8_replay_row20_j5

end

end MonochromaticQuantumGraphs.N8D3
