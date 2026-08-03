import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row0.SourceJ.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row0.SourceJ.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row0.SourceJ.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row0.SourceJ.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row0.SourceJ.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row0.SourceJ.J5

/-! Collect the six source-J exponent replays for first-overlap row 160. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_j` exponents in row 160. -/
theorem tropicalOverlapSourceJExponent8_replay_row160 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row160.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row160.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row160 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceJExponent8_replay_row160_j0
  · simpa using tropicalOverlapSourceJExponent8_replay_row160_j1
  · simpa using tropicalOverlapSourceJExponent8_replay_row160_j2
  · simpa using tropicalOverlapSourceJExponent8_replay_row160_j3
  · simpa using tropicalOverlapSourceJExponent8_replay_row160_j4
  · simpa using tropicalOverlapSourceJExponent8_replay_row160_j5

end

end MonochromaticQuantumGraphs.N8D3
