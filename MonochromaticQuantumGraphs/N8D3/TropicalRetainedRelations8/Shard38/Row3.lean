import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 193. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 193. -/
theorem tropicalOverlapRelation8_provenance_row193 :
    tropicalOverlapRelation8Row193 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row193 := by
  rw [tropicalOverlapRelation8_sourceCombination_row193]
  unfold tropicalOverlapSourceCombination8Row193
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row193,
    tropicalOverlapSourceJExponent8_replay_row193]

end

end MonochromaticQuantumGraphs.N8D3
