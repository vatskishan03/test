import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row2.SourceJ.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row2.SourceJ.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row2.SourceJ.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row2.SourceJ.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row2.SourceJ.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row2.SourceJ.J5

/-! Collect the six source-J exponent replays for first-overlap row 302. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_j` exponents in row 302. -/
theorem tropicalOverlapSourceJExponent8_replay_row302 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row302.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row302.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row302 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceJExponent8_replay_row302_j0
  · simpa using tropicalOverlapSourceJExponent8_replay_row302_j1
  · simpa using tropicalOverlapSourceJExponent8_replay_row302_j2
  · simpa using tropicalOverlapSourceJExponent8_replay_row302_j3
  · simpa using tropicalOverlapSourceJExponent8_replay_row302_j4
  · simpa using tropicalOverlapSourceJExponent8_replay_row302_j5

end

end MonochromaticQuantumGraphs.N8D3
