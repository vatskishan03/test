import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row2.SourceI.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row2.SourceI.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row2.SourceI.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row2.SourceI.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row2.SourceI.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row2.SourceI.J5

/-! Collect the six source-I exponent replays for first-overlap row 307. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_i` exponents in row 307. -/
theorem tropicalOverlapSourceIExponent8_replay_row307 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row307.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row307.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row307 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceIExponent8_replay_row307_j0
  · simpa using tropicalOverlapSourceIExponent8_replay_row307_j1
  · simpa using tropicalOverlapSourceIExponent8_replay_row307_j2
  · simpa using tropicalOverlapSourceIExponent8_replay_row307_j3
  · simpa using tropicalOverlapSourceIExponent8_replay_row307_j4
  · simpa using tropicalOverlapSourceIExponent8_replay_row307_j5

end

end MonochromaticQuantumGraphs.N8D3
