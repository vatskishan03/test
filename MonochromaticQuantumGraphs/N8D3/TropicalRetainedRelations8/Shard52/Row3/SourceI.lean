import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row3.SourceI.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row3.SourceI.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row3.SourceI.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row3.SourceI.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row3.SourceI.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row3.SourceI.J5

/-! Collect the six source-I exponent replays for first-overlap row 263. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_i` exponents in row 263. -/
theorem tropicalOverlapSourceIExponent8_replay_row263 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row263.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row263.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row263 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceIExponent8_replay_row263_j0
  · simpa using tropicalOverlapSourceIExponent8_replay_row263_j1
  · simpa using tropicalOverlapSourceIExponent8_replay_row263_j2
  · simpa using tropicalOverlapSourceIExponent8_replay_row263_j3
  · simpa using tropicalOverlapSourceIExponent8_replay_row263_j4
  · simpa using tropicalOverlapSourceIExponent8_replay_row263_j5

end

end MonochromaticQuantumGraphs.N8D3
