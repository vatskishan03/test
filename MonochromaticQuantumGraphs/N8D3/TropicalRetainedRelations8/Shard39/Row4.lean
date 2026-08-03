import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 199. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 199. -/
theorem tropicalOverlapRelation8_provenance_row199 :
    tropicalOverlapRelation8Row199 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row199 := by
  rw [tropicalOverlapRelation8_sourceCombination_row199]
  unfold tropicalOverlapSourceCombination8Row199
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row199,
    tropicalOverlapSourceJExponent8_replay_row199]

end

end MonochromaticQuantumGraphs.N8D3
