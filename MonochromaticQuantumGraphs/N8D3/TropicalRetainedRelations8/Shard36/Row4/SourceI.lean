import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row4.SourceI.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row4.SourceI.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row4.SourceI.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row4.SourceI.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row4.SourceI.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row4.SourceI.J5

/-! Collect the six source-I exponent replays for first-overlap row 184. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_i` exponents in row 184. -/
theorem tropicalOverlapSourceIExponent8_replay_row184 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row184.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row184.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row184 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceIExponent8_replay_row184_j0
  · simpa using tropicalOverlapSourceIExponent8_replay_row184_j1
  · simpa using tropicalOverlapSourceIExponent8_replay_row184_j2
  · simpa using tropicalOverlapSourceIExponent8_replay_row184_j3
  · simpa using tropicalOverlapSourceIExponent8_replay_row184_j4
  · simpa using tropicalOverlapSourceIExponent8_replay_row184_j5

end

end MonochromaticQuantumGraphs.N8D3
