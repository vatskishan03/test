import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row1.SourceI.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row1.SourceI.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row1.SourceI.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row1.SourceI.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row1.SourceI.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row1.SourceI.J5

/-! Collect the six source-I exponent replays for first-overlap row 36. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_i` exponents in row 36. -/
theorem tropicalOverlapSourceIExponent8_replay_row36 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row36.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row36.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row36 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceIExponent8_replay_row36_j0
  · simpa using tropicalOverlapSourceIExponent8_replay_row36_j1
  · simpa using tropicalOverlapSourceIExponent8_replay_row36_j2
  · simpa using tropicalOverlapSourceIExponent8_replay_row36_j3
  · simpa using tropicalOverlapSourceIExponent8_replay_row36_j4
  · simpa using tropicalOverlapSourceIExponent8_replay_row36_j5

end

end MonochromaticQuantumGraphs.N8D3
