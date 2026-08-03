import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row2.SourceJ.J0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row2.SourceJ.J1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row2.SourceJ.J2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row2.SourceJ.J3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row2.SourceJ.J4
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row2.SourceJ.J5

/-! Collect the six source-J exponent replays for first-overlap row 282. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Kernel replay of all six shifted `B_j` exponents in row 282. -/
theorem tropicalOverlapSourceJExponent8_replay_row282 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row282.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row282.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row282 j := by
  fin_cases j
  · simpa using tropicalOverlapSourceJExponent8_replay_row282_j0
  · simpa using tropicalOverlapSourceJExponent8_replay_row282_j1
  · simpa using tropicalOverlapSourceJExponent8_replay_row282_j2
  · simpa using tropicalOverlapSourceJExponent8_replay_row282_j3
  · simpa using tropicalOverlapSourceJExponent8_replay_row282_j4
  · simpa using tropicalOverlapSourceJExponent8_replay_row282_j5

end

end MonochromaticQuantumGraphs.N8D3
