import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4.SourceJ.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4.SourceJ.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4.SourceJ.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4.SourceJ.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4.SourceJ.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4.SourceJ.J5

/-! Collect the six source-J exponent replays for first-overlap row 284. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_j` exponents in row 284. -/
theorem tropicalOverlapSourceJExponent8_replay_row284 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row284.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row284.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row284 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceJExponent8_replay_row284_j0
  · simpa using tropicalOverlapSourceJExponent8_replay_row284_j1
  · simpa using tropicalOverlapSourceJExponent8_replay_row284_j2
  · simpa using tropicalOverlapSourceJExponent8_replay_row284_j3
  · simpa using tropicalOverlapSourceJExponent8_replay_row284_j4
  · simpa using tropicalOverlapSourceJExponent8_replay_row284_j5

end

end MonochromaticQuantumGraphs.N8D3
