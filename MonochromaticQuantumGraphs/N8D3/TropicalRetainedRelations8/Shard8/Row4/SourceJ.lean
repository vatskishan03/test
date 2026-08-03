import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row4.SourceJ.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row4.SourceJ.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row4.SourceJ.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row4.SourceJ.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row4.SourceJ.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row4.SourceJ.J5

/-! Collect the six source-J exponent replays for first-overlap row 44. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_j` exponents in row 44. -/
theorem tropicalOverlapSourceJExponent8_replay_row44 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row44.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row44.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row44 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceJExponent8_replay_row44_j0
  · simpa using tropicalOverlapSourceJExponent8_replay_row44_j1
  · simpa using tropicalOverlapSourceJExponent8_replay_row44_j2
  · simpa using tropicalOverlapSourceJExponent8_replay_row44_j3
  · simpa using tropicalOverlapSourceJExponent8_replay_row44_j4
  · simpa using tropicalOverlapSourceJExponent8_replay_row44_j5

end

end MonochromaticQuantumGraphs.N8D3
