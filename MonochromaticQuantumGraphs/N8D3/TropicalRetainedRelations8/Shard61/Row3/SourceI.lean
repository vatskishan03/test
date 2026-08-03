import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row3.SourceI.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row3.SourceI.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row3.SourceI.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row3.SourceI.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row3.SourceI.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row3.SourceI.J5

/-! Collect the six source-I exponent replays for first-overlap row 308. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_i` exponents in row 308. -/
theorem tropicalOverlapSourceIExponent8_replay_row308 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row308.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row308.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row308 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceIExponent8_replay_row308_j0
  · simpa using tropicalOverlapSourceIExponent8_replay_row308_j1
  · simpa using tropicalOverlapSourceIExponent8_replay_row308_j2
  · simpa using tropicalOverlapSourceIExponent8_replay_row308_j3
  · simpa using tropicalOverlapSourceIExponent8_replay_row308_j4
  · simpa using tropicalOverlapSourceIExponent8_replay_row308_j5

end

end MonochromaticQuantumGraphs.N8D3
