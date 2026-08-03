import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4.SourceJ.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4.SourceJ.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4.SourceJ.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4.SourceJ.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4.SourceJ.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4.SourceJ.J5

/-! Collect the six source-J exponent replays for first-overlap row 354. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_j` exponents in row 354. -/
theorem tropicalOverlapSourceJExponent8_replay_row354 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row354.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row354.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row354 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceJExponent8_replay_row354_j0
  · simpa using tropicalOverlapSourceJExponent8_replay_row354_j1
  · simpa using tropicalOverlapSourceJExponent8_replay_row354_j2
  · simpa using tropicalOverlapSourceJExponent8_replay_row354_j3
  · simpa using tropicalOverlapSourceJExponent8_replay_row354_j4
  · simpa using tropicalOverlapSourceJExponent8_replay_row354_j5

end

end MonochromaticQuantumGraphs.N8D3
