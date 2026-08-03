import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 298. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 298. -/
theorem tropicalOverlapRelation8_provenance_row298 :
    tropicalOverlapRelation8Row298 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row298 := by
  rw [tropicalOverlapRelation8_sourceCombination_row298]
  unfold tropicalOverlapSourceCombination8Row298
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row298,
    tropicalOverlapSourceJExponent8_replay_row298]

end

end MonochromaticQuantumGraphs.N8D3
