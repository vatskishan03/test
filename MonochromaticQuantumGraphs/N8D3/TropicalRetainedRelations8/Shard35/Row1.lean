import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 176. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 176. -/
theorem tropicalOverlapRelation8_provenance_row176 :
    tropicalOverlapRelation8Row176 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row176 := by
  rw [tropicalOverlapRelation8_sourceCombination_row176]
  unfold tropicalOverlapSourceCombination8Row176
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row176,
    tropicalOverlapSourceJExponent8_replay_row176]

end

end MonochromaticQuantumGraphs.N8D3
