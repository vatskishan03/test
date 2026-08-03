import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 135. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 135. -/
theorem tropicalOverlapRelation8_provenance_row135 :
    tropicalOverlapRelation8Row135 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row135 := by
  rw [tropicalOverlapRelation8_sourceCombination_row135]
  unfold tropicalOverlapSourceCombination8Row135
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row135,
    tropicalOverlapSourceJExponent8_replay_row135]

end

end MonochromaticQuantumGraphs.N8D3
