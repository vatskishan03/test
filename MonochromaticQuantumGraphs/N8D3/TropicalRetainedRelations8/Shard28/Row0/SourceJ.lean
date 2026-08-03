import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row0.SourceJ.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row0.SourceJ.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row0.SourceJ.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row0.SourceJ.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row0.SourceJ.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row0.SourceJ.J5

/-! Collect the six source-J exponent replays for first-overlap row 140. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_j` exponents in row 140. -/
theorem tropicalOverlapSourceJExponent8_replay_row140 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row140.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row140.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row140 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceJExponent8_replay_row140_j0
  · simpa using tropicalOverlapSourceJExponent8_replay_row140_j1
  · simpa using tropicalOverlapSourceJExponent8_replay_row140_j2
  · simpa using tropicalOverlapSourceJExponent8_replay_row140_j3
  · simpa using tropicalOverlapSourceJExponent8_replay_row140_j4
  · simpa using tropicalOverlapSourceJExponent8_replay_row140_j5

end

end MonochromaticQuantumGraphs.N8D3
