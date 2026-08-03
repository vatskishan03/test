import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row4.SourceJ.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row4.SourceJ.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row4.SourceJ.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row4.SourceJ.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row4.SourceJ.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row4.SourceJ.J5

/-! Collect the six source-J exponent replays for first-overlap row 79. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_j` exponents in row 79. -/
theorem tropicalOverlapSourceJExponent8_replay_row79 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row79.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row79.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row79 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceJExponent8_replay_row79_j0
  · simpa using tropicalOverlapSourceJExponent8_replay_row79_j1
  · simpa using tropicalOverlapSourceJExponent8_replay_row79_j2
  · simpa using tropicalOverlapSourceJExponent8_replay_row79_j3
  · simpa using tropicalOverlapSourceJExponent8_replay_row79_j4
  · simpa using tropicalOverlapSourceJExponent8_replay_row79_j5

end

end MonochromaticQuantumGraphs.N8D3
