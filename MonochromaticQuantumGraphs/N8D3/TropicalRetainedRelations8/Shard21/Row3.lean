import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 108. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 108. -/
theorem tropicalOverlapRelation8_provenance_row108 :
    tropicalOverlapRelation8Row108 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row108 := by
  rw [tropicalOverlapRelation8_sourceCombination_row108]
  unfold tropicalOverlapSourceCombination8Row108
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row108,
    tropicalOverlapSourceJExponent8_replay_row108]

end

end MonochromaticQuantumGraphs.N8D3
