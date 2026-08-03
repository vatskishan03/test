import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row1.SourceJ.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row1.SourceJ.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row1.SourceJ.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row1.SourceJ.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row1.SourceJ.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row1.SourceJ.J5

/-! Collect the six source-J exponent replays for first-overlap row 16. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_j` exponents in row 16. -/
theorem tropicalOverlapSourceJExponent8_replay_row16 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row16.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row16.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row16 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceJExponent8_replay_row16_j0
  · simpa using tropicalOverlapSourceJExponent8_replay_row16_j1
  · simpa using tropicalOverlapSourceJExponent8_replay_row16_j2
  · simpa using tropicalOverlapSourceJExponent8_replay_row16_j3
  · simpa using tropicalOverlapSourceJExponent8_replay_row16_j4
  · simpa using tropicalOverlapSourceJExponent8_replay_row16_j5

end

end MonochromaticQuantumGraphs.N8D3
