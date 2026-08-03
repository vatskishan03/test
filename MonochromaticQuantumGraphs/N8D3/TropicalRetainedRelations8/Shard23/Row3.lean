import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 118. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 118. -/
theorem tropicalOverlapRelation8_provenance_row118 :
    tropicalOverlapRelation8Row118 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row118 := by
  rw [tropicalOverlapRelation8_sourceCombination_row118]
  unfold tropicalOverlapSourceCombination8Row118
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row118,
    tropicalOverlapSourceJExponent8_replay_row118]

end

end MonochromaticQuantumGraphs.N8D3
