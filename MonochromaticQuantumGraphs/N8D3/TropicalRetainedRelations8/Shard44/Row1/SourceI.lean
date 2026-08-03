import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row1.SourceI.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row1.SourceI.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row1.SourceI.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row1.SourceI.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row1.SourceI.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row1.SourceI.J5

/-! Collect the six source-I exponent replays for first-overlap row 221. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_i` exponents in row 221. -/
theorem tropicalOverlapSourceIExponent8_replay_row221 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row221.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row221.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row221 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceIExponent8_replay_row221_j0
  · simpa using tropicalOverlapSourceIExponent8_replay_row221_j1
  · simpa using tropicalOverlapSourceIExponent8_replay_row221_j2
  · simpa using tropicalOverlapSourceIExponent8_replay_row221_j3
  · simpa using tropicalOverlapSourceIExponent8_replay_row221_j4
  · simpa using tropicalOverlapSourceIExponent8_replay_row221_j5

end

end MonochromaticQuantumGraphs.N8D3
