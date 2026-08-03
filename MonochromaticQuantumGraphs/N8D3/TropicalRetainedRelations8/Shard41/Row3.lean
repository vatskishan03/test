import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 208. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 208. -/
theorem tropicalOverlapRelation8_provenance_row208 :
    tropicalOverlapRelation8Row208 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row208 := by
  rw [tropicalOverlapRelation8_sourceCombination_row208]
  unfold tropicalOverlapSourceCombination8Row208
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row208,
    tropicalOverlapSourceJExponent8_replay_row208]

end

end MonochromaticQuantumGraphs.N8D3
