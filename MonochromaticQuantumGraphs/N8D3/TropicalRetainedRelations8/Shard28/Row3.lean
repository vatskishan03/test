import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 143. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 143. -/
theorem tropicalOverlapRelation8_provenance_row143 :
    tropicalOverlapRelation8Row143 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row143 := by
  rw [tropicalOverlapRelation8_sourceCombination_row143]
  unfold tropicalOverlapSourceCombination8Row143
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row143,
    tropicalOverlapSourceJExponent8_replay_row143]

end

end MonochromaticQuantumGraphs.N8D3
