import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row0.SourceI.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row0.SourceI.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row0.SourceI.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row0.SourceI.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row0.SourceI.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row0.SourceI.J5

/-! Collect the six source-I exponent replays for first-overlap row 295. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_i` exponents in row 295. -/
theorem tropicalOverlapSourceIExponent8_replay_row295 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row295.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row295.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row295 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceIExponent8_replay_row295_j0
  · simpa using tropicalOverlapSourceIExponent8_replay_row295_j1
  · simpa using tropicalOverlapSourceIExponent8_replay_row295_j2
  · simpa using tropicalOverlapSourceIExponent8_replay_row295_j3
  · simpa using tropicalOverlapSourceIExponent8_replay_row295_j4
  · simpa using tropicalOverlapSourceIExponent8_replay_row295_j5

end

end MonochromaticQuantumGraphs.N8D3
