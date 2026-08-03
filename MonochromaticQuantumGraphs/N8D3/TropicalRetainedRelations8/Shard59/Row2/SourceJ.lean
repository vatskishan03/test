import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row2.SourceJ.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row2.SourceJ.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row2.SourceJ.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row2.SourceJ.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row2.SourceJ.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row2.SourceJ.J5

/-! Collect the six source-J exponent replays for first-overlap row 297. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_j` exponents in row 297. -/
theorem tropicalOverlapSourceJExponent8_replay_row297 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row297.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row297.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row297 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceJExponent8_replay_row297_j0
  · simpa using tropicalOverlapSourceJExponent8_replay_row297_j1
  · simpa using tropicalOverlapSourceJExponent8_replay_row297_j2
  · simpa using tropicalOverlapSourceJExponent8_replay_row297_j3
  · simpa using tropicalOverlapSourceJExponent8_replay_row297_j4
  · simpa using tropicalOverlapSourceJExponent8_replay_row297_j5

end

end MonochromaticQuantumGraphs.N8D3
