import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row3.SourceI.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row3.SourceI.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row3.SourceI.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row3.SourceI.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row3.SourceI.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row3.SourceI.J5

/-! Collect the six source-I exponent replays for first-overlap row 73. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_i` exponents in row 73. -/
theorem tropicalOverlapSourceIExponent8_replay_row73 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row73.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row73.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row73 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceIExponent8_replay_row73_j0
  · simpa using tropicalOverlapSourceIExponent8_replay_row73_j1
  · simpa using tropicalOverlapSourceIExponent8_replay_row73_j2
  · simpa using tropicalOverlapSourceIExponent8_replay_row73_j3
  · simpa using tropicalOverlapSourceIExponent8_replay_row73_j4
  · simpa using tropicalOverlapSourceIExponent8_replay_row73_j5

end

end MonochromaticQuantumGraphs.N8D3
